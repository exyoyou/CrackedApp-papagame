.class public Lcom/byazt/xyr/sp;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Lcom/byazt/zqa/c;
    c = {
        0x0,
        0x1,
        0x219,
        0x5b
    }
.end annotation


# instance fields
.field public a:J

.field public volatile c:Z

.field public final da:Lcom/byazt/ogz/t;

.field public final gt:Ljava/lang/String;

.field public final i:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lorg/json/JSONObject;",
            ">;"
        }
    .end annotation
.end field

.field public m:I

.field public volatile my:Landroid/hardware/SensorEventListener;

.field public n:Z

.field public nu:I

.field public qy:[F

.field public rh:I

.field public rl:[F

.field public sl:I

.field public sp:J

.field public t:I

.field public volatile tt:Z

.field public volatile u:Lorg/json/JSONArray;

.field public uj:Landroid/view/View;

.field public volatile ve:Z

.field public volatile x:Lorg/json/JSONObject;

.field public volatile yp:Lorg/json/JSONArray;

.field public volatile z:Lorg/json/JSONArray;


# direct methods
.method public constructor <init>(Lcom/byazt/ete/ic;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    const-wide/16 v0, -0x1

    .line 5
    .line 6
    iput-wide v0, p0, Lcom/byazt/xyr/sp;->a:J

    .line 7
    .line 8
    iput-wide v0, p0, Lcom/byazt/xyr/sp;->sp:J

    .line 9
    .line 10
    new-instance v0, Ljava/util/ArrayList;

    .line 11
    .line 12
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 13
    .line 14
    .line 15
    iput-object v0, p0, Lcom/byazt/xyr/sp;->i:Ljava/util/List;

    .line 16
    .line 17
    invoke-virtual {p1}, Lcom/byazt/ete/ic;->zm()Ljava/lang/String;

    .line 18
    .line 19
    .line 20
    move-result-object v0

    .line 21
    iput-object v0, p0, Lcom/byazt/xyr/sp;->gt:Ljava/lang/String;

    .line 22
    .line 23
    invoke-static {}, Lcom/byazt/omf/gt;->tt()Lcom/byazt/ogz/sl;

    .line 24
    .line 25
    .line 26
    move-result-object v0

    .line 27
    invoke-virtual {v0}, Lcom/byazt/ogz/sl;->hl()Lcom/byazt/ogz/t;

    .line 28
    .line 29
    .line 30
    move-result-object v0

    .line 31
    iput-object v0, p0, Lcom/byazt/xyr/sp;->da:Lcom/byazt/ogz/t;

    .line 32
    .line 33
    invoke-virtual {p1}, Lcom/byazt/ete/ic;->ij()Lcom/byazt/dj/tt;

    .line 34
    .line 35
    .line 36
    move-result-object p1

    .line 37
    if-eqz v0, :cond_1

    .line 38
    .line 39
    if-eqz p1, :cond_1

    .line 40
    .line 41
    invoke-virtual {p1}, Lcom/byazt/dj/tt;->gt()I

    .line 42
    .line 43
    .line 44
    move-result p1

    .line 45
    invoke-virtual {v0, p1}, Lcom/byazt/ogz/t;->c(I)Z

    .line 46
    .line 47
    .line 48
    move-result v1

    .line 49
    iput-boolean v1, p0, Lcom/byazt/xyr/sp;->c:Z

    .line 50
    .line 51
    invoke-virtual {v0, p1}, Lcom/byazt/ogz/t;->tt(I)Z

    .line 52
    .line 53
    .line 54
    move-result v1

    .line 55
    iput-boolean v1, p0, Lcom/byazt/xyr/sp;->tt:Z

    .line 56
    .line 57
    invoke-virtual {v0, p1}, Lcom/byazt/ogz/t;->ve(I)Z

    .line 58
    .line 59
    .line 60
    move-result p1

    .line 61
    if-eqz p1, :cond_0

    .line 62
    .line 63
    invoke-direct {p0}, Lcom/byazt/xyr/sp;->tt()Z

    .line 64
    .line 65
    .line 66
    move-result p1

    .line 67
    if-eqz p1, :cond_0

    .line 68
    .line 69
    const/4 p1, 0x1

    .line 70
    goto :goto_0

    .line 71
    :cond_0
    const/4 p1, 0x0

    .line 72
    :goto_0
    iput-boolean p1, p0, Lcom/byazt/xyr/sp;->ve:Z

    .line 73
    .line 74
    :cond_1
    return-void
.end method

.method private c(Landroid/view/ViewGroup;FF)Landroid/view/View;
    .locals 4

    .line 31
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    const/4 v1, 0x0

    :goto_0
    if-ltz v0, :cond_4

    .line 32
    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 33
    invoke-virtual {v2}, Landroid/view/View;->getVisibility()I

    move-result v3

    if-nez v3, :cond_3

    .line 34
    invoke-direct {p0, p2, p3, v2}, Lcom/byazt/xyr/sp;->c(FFLandroid/view/View;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 35
    instance-of v3, v2, Landroid/view/ViewGroup;

    if-eqz v3, :cond_2

    .line 36
    move-object v1, v2

    check-cast v1, Landroid/view/ViewGroup;

    invoke-direct {p0, v1, p2, p3}, Lcom/byazt/xyr/sp;->c(Landroid/view/ViewGroup;FF)Landroid/view/View;

    move-result-object v1

    if-nez v1, :cond_0

    goto :goto_1

    :cond_0
    move-object v2, v1

    .line 37
    :goto_1
    invoke-virtual {v2}, Landroid/view/View;->isClickable()Z

    move-result v1

    if-eqz v1, :cond_1

    return-object v2

    :cond_1
    move-object v1, v2

    goto :goto_2

    .line 38
    :cond_2
    invoke-virtual {v2}, Landroid/view/View;->isClickable()Z

    move-result v3

    if-eqz v3, :cond_3

    return-object v2

    :cond_3
    :goto_2
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_4
    return-object v1
.end method

.method private c(Ljava/util/List;I)Lorg/json/JSONArray;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lorg/json/JSONObject;",
            ">;I)",
            "Lorg/json/JSONArray;"
        }
    .end annotation

    .line 24
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_4

    .line 25
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x0

    if-le v0, p2, :cond_0

    .line 26
    div-int v2, v0, p2

    add-int/lit8 v2, v2, -0x1

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    .line 27
    :goto_0
    new-instance v3, Lorg/json/JSONArray;

    invoke-direct {v3}, Lorg/json/JSONArray;-><init>()V

    if-lez v2, :cond_2

    :cond_1
    :goto_1
    if-ge v1, p2, :cond_3

    add-int/lit8 v1, v1, 0x1

    mul-int v4, v1, v2

    add-int/lit8 v4, v4, -0x1

    if-ge v4, v0, :cond_1

    .line 28
    invoke-interface {p1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v3, v4}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    goto :goto_1

    .line 29
    :cond_2
    invoke-static {v0, p2}, Ljava/lang/Math;->min(II)I

    move-result p2

    :goto_2
    if-ge v1, p2, :cond_3

    .line 30
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v3, v0}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_3
    return-object v3

    :cond_4
    const/4 p1, 0x0

    return-object p1
.end method

.method private c(Landroid/view/MotionEvent;)Lorg/json/JSONObject;
    .locals 7

    const-string v0, "%.2f"

    .line 41
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    :try_start_0
    const-string v2, "nums"

    .line 42
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v3

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v2, "x"

    const/4 v3, 0x1

    new-array v4, v3, [Ljava/lang/Object;

    .line 43
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v5

    invoke-static {v5}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v5

    const/4 v6, 0x0

    aput-object v5, v4, v6

    invoke-static {v0, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v2, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v2, "y"

    new-array v3, v3, [Ljava/lang/Object;

    .line 44
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v4

    invoke-static {v4}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v4

    aput-object v4, v3, v6

    invoke-static {v0, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v2, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v0, "ts"

    .line 45
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getEventTime()J

    move-result-wide v2

    iget-wide v4, p0, Lcom/byazt/xyr/sp;->a:J

    sub-long/2addr v2, v4

    invoke-virtual {v1, v0, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 46
    invoke-static {p1}, Lcom/byazt/nr/m;->c(Ljava/lang/Throwable;)V

    :goto_0
    return-object v1
.end method

.method private c(Landroid/hardware/SensorEvent;)V
    .locals 6

    .line 57
    iget-object v0, p1, Landroid/hardware/SensorEvent;->sensor:Landroid/hardware/Sensor;

    invoke-virtual {v0}, Landroid/hardware/Sensor;->getType()I

    move-result v0

    .line 58
    iget-wide v1, p0, Lcom/byazt/xyr/sp;->sp:J

    const-wide/16 v3, 0x0

    cmp-long v5, v1, v3

    if-gez v5, :cond_0

    .line 59
    iget-wide v1, p1, Landroid/hardware/SensorEvent;->timestamp:J

    iput-wide v1, p0, Lcom/byazt/xyr/sp;->sp:J

    :cond_0
    const/4 v1, 0x4

    if-eq v0, v1, :cond_3

    const/16 v1, 0xa

    if-eq v0, v1, :cond_2

    const/16 v1, 0xf

    if-eq v0, v1, :cond_1

    goto :goto_0

    .line 60
    :cond_1
    iget v0, p0, Lcom/byazt/xyr/sp;->rh:I

    iget v1, p0, Lcom/byazt/xyr/sp;->sl:I

    if-ge v0, v1, :cond_4

    add-int/lit8 v0, v0, 0x1

    .line 61
    iput v0, p0, Lcom/byazt/xyr/sp;->rh:I

    .line 62
    iget-object v0, p0, Lcom/byazt/xyr/sp;->z:Lorg/json/JSONArray;

    invoke-direct {p0, v0, p1}, Lcom/byazt/xyr/sp;->c(Lorg/json/JSONArray;Landroid/hardware/SensorEvent;)V

    goto :goto_0

    .line 63
    :cond_2
    iget v0, p0, Lcom/byazt/xyr/sp;->m:I

    iget v1, p0, Lcom/byazt/xyr/sp;->sl:I

    if-ge v0, v1, :cond_4

    add-int/lit8 v0, v0, 0x1

    .line 64
    iput v0, p0, Lcom/byazt/xyr/sp;->m:I

    .line 65
    iget-object v0, p0, Lcom/byazt/xyr/sp;->u:Lorg/json/JSONArray;

    invoke-direct {p0, v0, p1}, Lcom/byazt/xyr/sp;->tt(Lorg/json/JSONArray;Landroid/hardware/SensorEvent;)V

    goto :goto_0

    .line 66
    :cond_3
    iget v0, p0, Lcom/byazt/xyr/sp;->nu:I

    iget v1, p0, Lcom/byazt/xyr/sp;->sl:I

    if-ge v0, v1, :cond_4

    add-int/lit8 v0, v0, 0x1

    .line 67
    iput v0, p0, Lcom/byazt/xyr/sp;->nu:I

    .line 68
    iget-object v0, p0, Lcom/byazt/xyr/sp;->yp:Lorg/json/JSONArray;

    invoke-direct {p0, v0, p1}, Lcom/byazt/xyr/sp;->tt(Lorg/json/JSONArray;Landroid/hardware/SensorEvent;)V

    .line 69
    :cond_4
    :goto_0
    iget p1, p0, Lcom/byazt/xyr/sp;->m:I

    iget v0, p0, Lcom/byazt/xyr/sp;->sl:I

    if-lt p1, v0, :cond_5

    iget p1, p0, Lcom/byazt/xyr/sp;->nu:I

    if-lt p1, v0, :cond_5

    iget p1, p0, Lcom/byazt/xyr/sp;->rh:I

    if-lt p1, v0, :cond_5

    .line 70
    invoke-virtual {p0}, Lcom/byazt/xyr/sp;->c()V

    :cond_5
    return-void
.end method

.method public static synthetic c(Lcom/byazt/xyr/sp;Landroid/hardware/SensorEvent;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/byazt/xyr/sp;->c(Landroid/hardware/SensorEvent;)V

    return-void
.end method

.method public static synthetic c(Lcom/byazt/xyr/sp;Lcom/byazt/xj/ve;)V
    .locals 0

    .line 2
    invoke-direct {p0, p1}, Lcom/byazt/xyr/sp;->tt(Lcom/byazt/xj/ve;)V

    return-void
.end method

.method private c(Lorg/json/JSONArray;Landroid/hardware/SensorEvent;)V
    .locals 9

    if-eqz p1, :cond_2

    if-eqz p2, :cond_2

    .line 71
    iget-object v0, p0, Lcom/byazt/xyr/sp;->rl:[F

    if-eqz v0, :cond_2

    iget-object v1, p0, Lcom/byazt/xyr/sp;->qy:[F

    if-nez v1, :cond_0

    goto/16 :goto_1

    .line 72
    :cond_0
    iget-object v1, p2, Landroid/hardware/SensorEvent;->values:[F

    if-eqz v1, :cond_2

    array-length v2, v1

    const/4 v3, 0x4

    if-ge v2, v3, :cond_1

    goto/16 :goto_1

    .line 73
    :cond_1
    invoke-static {v0, v1}, Landroid/hardware/SensorManager;->getRotationMatrixFromVector([F[F)V

    .line 74
    iget-object v0, p0, Lcom/byazt/xyr/sp;->rl:[F

    iget-object v1, p0, Lcom/byazt/xyr/sp;->qy:[F

    invoke-static {v0, v1}, Landroid/hardware/SensorManager;->getOrientation([F[F)[F

    .line 75
    iget-object v0, p0, Lcom/byazt/xyr/sp;->qy:[F

    const/4 v1, 0x0

    aget v0, v0, v1

    float-to-double v0, v0

    invoke-static {v0, v1}, Ljava/lang/Math;->toDegrees(D)D

    move-result-wide v0

    double-to-float v0, v0

    .line 76
    iget-object v1, p0, Lcom/byazt/xyr/sp;->qy:[F

    const/4 v2, 0x1

    aget v1, v1, v2

    float-to-double v1, v1

    invoke-static {v1, v2}, Ljava/lang/Math;->toDegrees(D)D

    move-result-wide v1

    double-to-float v1, v1

    .line 77
    iget-object v2, p0, Lcom/byazt/xyr/sp;->qy:[F

    const/4 v3, 0x2

    aget v2, v2, v3

    float-to-double v2, v2

    invoke-static {v2, v3}, Ljava/lang/Math;->toDegrees(D)D

    move-result-wide v2

    double-to-float v2, v2

    const/high16 v3, 0x43b40000    # 360.0f

    add-float/2addr v0, v3

    rem-float/2addr v0, v3

    const/high16 v4, 0x42b40000    # 90.0f

    .line 78
    invoke-static {v4, v1}, Ljava/lang/Math;->min(FF)F

    move-result v1

    const/high16 v4, -0x3d4c0000    # -90.0f

    invoke-static {v4, v1}, Ljava/lang/Math;->max(FF)F

    move-result v1

    add-float/2addr v2, v3

    rem-float/2addr v2, v3

    .line 79
    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3}, Lorg/json/JSONObject;-><init>()V

    :try_start_0
    const-string v4, "pitch"

    float-to-double v5, v1

    const-wide/high16 v7, 0x4059000000000000L    # 100.0

    mul-double v5, v5, v7

    .line 80
    invoke-static {v5, v6}, Ljava/lang/Math;->round(D)J

    move-result-wide v5

    long-to-double v5, v5

    div-double/2addr v5, v7

    invoke-virtual {v3, v4, v5, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;D)Lorg/json/JSONObject;

    const-string v1, "roll"

    float-to-double v4, v2

    mul-double v4, v4, v7

    .line 81
    invoke-static {v4, v5}, Ljava/lang/Math;->round(D)J

    move-result-wide v4

    long-to-double v4, v4

    div-double/2addr v4, v7

    invoke-virtual {v3, v1, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;D)Lorg/json/JSONObject;

    const-string v1, "yaw"

    float-to-double v4, v0

    mul-double v4, v4, v7

    .line 82
    invoke-static {v4, v5}, Ljava/lang/Math;->round(D)J

    move-result-wide v4

    long-to-double v4, v4

    div-double/2addr v4, v7

    invoke-virtual {v3, v1, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;D)Lorg/json/JSONObject;

    const-string v0, "ts"

    .line 83
    iget-wide v1, p2, Landroid/hardware/SensorEvent;->timestamp:J

    iget-wide v4, p0, Lcom/byazt/xyr/sp;->sp:J

    sub-long/2addr v1, v4

    const-wide/32 v4, 0xf4240

    div-long/2addr v1, v4

    invoke-virtual {v3, v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p2

    .line 84
    invoke-static {p2}, Lcom/byazt/nr/m;->c(Ljava/lang/Throwable;)V

    .line 85
    :goto_0
    invoke-virtual {p1, v3}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    :cond_2
    :goto_1
    return-void
.end method

.method private c(FFLandroid/view/View;)Z
    .locals 1

    .line 39
    invoke-virtual {p3}, Landroid/view/View;->getLeft()I

    move-result v0

    int-to-float v0, v0

    cmpl-float v0, p1, v0

    if-ltz v0, :cond_0

    invoke-virtual {p3}, Landroid/view/View;->getRight()I

    move-result v0

    int-to-float v0, v0

    cmpg-float p1, p1, v0

    if-gtz p1, :cond_0

    invoke-virtual {p3}, Landroid/view/View;->getTop()I

    move-result p1

    int-to-float p1, p1

    cmpl-float p1, p2, p1

    if-ltz p1, :cond_0

    .line 40
    invoke-virtual {p3}, Landroid/view/View;->getBottom()I

    move-result p1

    int-to-float p1, p1

    cmpg-float p1, p2, p1

    if-gtz p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method private tt(Lcom/byazt/xj/ve;)V
    .locals 2

    .line 5
    :try_start_0
    new-instance v0, Lcom/byazt/xyr/c;

    invoke-direct {v0, p1}, Lcom/byazt/xyr/c;-><init>(Lcom/byazt/xj/ve;)V

    invoke-virtual {v0}, Lcom/byazt/xyr/c;->c()Lorg/json/JSONObject;

    move-result-object p1

    .line 6
    iget-object v0, p0, Lcom/byazt/xyr/sp;->gt:Ljava/lang/String;

    const/4 v1, 0x0

    invoke-static {v0, v1, p1}, Lcom/byazt/rgb/tt;->c(Ljava/lang/String;ILjava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 7
    invoke-static {p1}, Lcom/byazt/nr/m;->c(Ljava/lang/Throwable;)V

    return-void
.end method

.method private tt(Lorg/json/JSONArray;Landroid/hardware/SensorEvent;)V
    .locals 6

    if-eqz p1, :cond_1

    if-nez p2, :cond_0

    goto :goto_1

    .line 8
    :cond_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    :try_start_0
    const-string v1, "x"

    .line 9
    iget-object v2, p2, Landroid/hardware/SensorEvent;->values:[F

    const/4 v3, 0x0

    aget v2, v2, v3

    float-to-double v2, v2

    const-wide/high16 v4, 0x4059000000000000L    # 100.0

    mul-double v2, v2, v4

    invoke-static {v2, v3}, Ljava/lang/Math;->round(D)J

    move-result-wide v2

    long-to-double v2, v2

    div-double/2addr v2, v4

    invoke-virtual {v0, v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;D)Lorg/json/JSONObject;

    const-string v1, "y"

    .line 10
    iget-object v2, p2, Landroid/hardware/SensorEvent;->values:[F

    const/4 v3, 0x1

    aget v2, v2, v3

    float-to-double v2, v2

    mul-double v2, v2, v4

    invoke-static {v2, v3}, Ljava/lang/Math;->round(D)J

    move-result-wide v2

    long-to-double v2, v2

    div-double/2addr v2, v4

    invoke-virtual {v0, v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;D)Lorg/json/JSONObject;

    const-string v1, "z"

    .line 11
    iget-object v2, p2, Landroid/hardware/SensorEvent;->values:[F

    const/4 v3, 0x2

    aget v2, v2, v3

    float-to-double v2, v2

    mul-double v2, v2, v4

    invoke-static {v2, v3}, Ljava/lang/Math;->round(D)J

    move-result-wide v2

    long-to-double v2, v2

    div-double/2addr v2, v4

    invoke-virtual {v0, v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;D)Lorg/json/JSONObject;

    const-string v1, "ts"

    .line 12
    iget-wide v2, p2, Landroid/hardware/SensorEvent;->timestamp:J

    iget-wide v4, p0, Lcom/byazt/xyr/sp;->sp:J

    sub-long/2addr v2, v4

    const-wide/32 v4, 0xf4240

    div-long/2addr v2, v4

    invoke-virtual {v0, v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p2

    .line 13
    invoke-static {p2}, Lcom/byazt/nr/m;->c(Ljava/lang/Throwable;)V

    .line 14
    :goto_0
    invoke-virtual {p1, v0}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    :cond_1
    :goto_1
    return-void
.end method

.method private tt()Z
    .locals 4

    .line 1
    invoke-static {}, Lcom/byazt/omf/gt;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/byazt/nr/n;->c(Landroid/content/Context;)Lcom/byazt/nr/n;

    move-result-object v0

    const/16 v1, 0xa

    .line 2
    invoke-virtual {v0, v1}, Lcom/byazt/nr/n;->c(I)Landroid/hardware/Sensor;

    move-result-object v1

    const/4 v2, 0x4

    .line 3
    invoke-virtual {v0, v2}, Lcom/byazt/nr/n;->c(I)Landroid/hardware/Sensor;

    move-result-object v2

    const/16 v3, 0xf

    .line 4
    invoke-virtual {v0, v3}, Lcom/byazt/nr/n;->c(I)Landroid/hardware/Sensor;

    move-result-object v0

    if-eqz v1, :cond_0

    if-eqz v2, :cond_0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method private uj()V
    .locals 4

    .line 1
    iget-boolean v0, p0, Lcom/byazt/xyr/sp;->ve:Z

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    iget-object v0, p0, Lcom/byazt/xyr/sp;->my:Landroid/hardware/SensorEventListener;

    .line 6
    .line 7
    if-nez v0, :cond_0

    .line 8
    .line 9
    new-instance v0, Lorg/json/JSONArray;

    .line 10
    .line 11
    invoke-direct {v0}, Lorg/json/JSONArray;-><init>()V

    .line 12
    .line 13
    .line 14
    iput-object v0, p0, Lcom/byazt/xyr/sp;->u:Lorg/json/JSONArray;

    .line 15
    .line 16
    new-instance v0, Lorg/json/JSONArray;

    .line 17
    .line 18
    invoke-direct {v0}, Lorg/json/JSONArray;-><init>()V

    .line 19
    .line 20
    .line 21
    iput-object v0, p0, Lcom/byazt/xyr/sp;->yp:Lorg/json/JSONArray;

    .line 22
    .line 23
    new-instance v0, Lorg/json/JSONArray;

    .line 24
    .line 25
    invoke-direct {v0}, Lorg/json/JSONArray;-><init>()V

    .line 26
    .line 27
    .line 28
    iput-object v0, p0, Lcom/byazt/xyr/sp;->z:Lorg/json/JSONArray;

    .line 29
    .line 30
    const/16 v0, 0x9

    .line 31
    .line 32
    new-array v0, v0, [F

    .line 33
    .line 34
    iput-object v0, p0, Lcom/byazt/xyr/sp;->rl:[F

    .line 35
    .line 36
    const/4 v0, 0x3

    .line 37
    new-array v0, v0, [F

    .line 38
    .line 39
    iput-object v0, p0, Lcom/byazt/xyr/sp;->qy:[F

    .line 40
    .line 41
    iget-object v0, p0, Lcom/byazt/xyr/sp;->da:Lcom/byazt/ogz/t;

    .line 42
    .line 43
    invoke-virtual {v0}, Lcom/byazt/ogz/t;->tt()I

    .line 44
    .line 45
    .line 46
    move-result v0

    .line 47
    iput v0, p0, Lcom/byazt/xyr/sp;->sl:I

    .line 48
    .line 49
    iget-object v0, p0, Lcom/byazt/xyr/sp;->da:Lcom/byazt/ogz/t;

    .line 50
    .line 51
    invoke-virtual {v0}, Lcom/byazt/ogz/t;->ve()I

    .line 52
    .line 53
    .line 54
    move-result v0

    .line 55
    iput v0, p0, Lcom/byazt/xyr/sp;->t:I

    .line 56
    .line 57
    new-instance v0, Lcom/byazt/xyr/sp$1;

    .line 58
    .line 59
    invoke-direct {v0, p0}, Lcom/byazt/xyr/sp$1;-><init>(Lcom/byazt/xyr/sp;)V

    .line 60
    .line 61
    .line 62
    iput-object v0, p0, Lcom/byazt/xyr/sp;->my:Landroid/hardware/SensorEventListener;

    .line 63
    .line 64
    invoke-static {}, Lcom/byazt/omf/gt;->getContext()Landroid/content/Context;

    .line 65
    .line 66
    .line 67
    move-result-object v0

    .line 68
    invoke-static {v0}, Lcom/byazt/nr/n;->c(Landroid/content/Context;)Lcom/byazt/nr/n;

    .line 69
    .line 70
    .line 71
    move-result-object v0

    .line 72
    iget-object v1, p0, Lcom/byazt/xyr/sp;->my:Landroid/hardware/SensorEventListener;

    .line 73
    .line 74
    const/16 v2, 0xa

    .line 75
    .line 76
    invoke-virtual {v0, v2}, Lcom/byazt/nr/n;->c(I)Landroid/hardware/Sensor;

    .line 77
    .line 78
    .line 79
    move-result-object v2

    .line 80
    iget v3, p0, Lcom/byazt/xyr/sp;->t:I

    .line 81
    .line 82
    invoke-virtual {v0, v1, v2, v3}, Lcom/byazt/nr/n;->c(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;I)Z

    .line 83
    .line 84
    .line 85
    iget-object v1, p0, Lcom/byazt/xyr/sp;->my:Landroid/hardware/SensorEventListener;

    .line 86
    .line 87
    const/4 v2, 0x4

    .line 88
    invoke-virtual {v0, v2}, Lcom/byazt/nr/n;->c(I)Landroid/hardware/Sensor;

    .line 89
    .line 90
    .line 91
    move-result-object v2

    .line 92
    iget v3, p0, Lcom/byazt/xyr/sp;->t:I

    .line 93
    .line 94
    invoke-virtual {v0, v1, v2, v3}, Lcom/byazt/nr/n;->c(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;I)Z

    .line 95
    .line 96
    .line 97
    iget-object v1, p0, Lcom/byazt/xyr/sp;->my:Landroid/hardware/SensorEventListener;

    .line 98
    .line 99
    const/16 v2, 0xf

    .line 100
    .line 101
    invoke-virtual {v0, v2}, Lcom/byazt/nr/n;->c(I)Landroid/hardware/Sensor;

    .line 102
    .line 103
    .line 104
    move-result-object v2

    .line 105
    iget v3, p0, Lcom/byazt/xyr/sp;->t:I

    .line 106
    .line 107
    invoke-virtual {v0, v1, v2, v3}, Lcom/byazt/nr/n;->c(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;I)Z

    .line 108
    .line 109
    .line 110
    :cond_0
    return-void
.end method

.method private ve()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/byazt/xyr/sp;->gt:Ljava/lang/String;

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    invoke-static {v0, v1}, Lcom/byazt/rgb/tt;->uj(Ljava/lang/String;I)Ljava/lang/Object;

    .line 5
    .line 6
    .line 7
    move-result-object v0

    .line 8
    instance-of v2, v0, Lorg/json/JSONArray;

    .line 9
    .line 10
    if-eqz v2, :cond_0

    .line 11
    .line 12
    check-cast v0, Lorg/json/JSONArray;

    .line 13
    .line 14
    iget-object v1, p0, Lcom/byazt/xyr/sp;->x:Lorg/json/JSONObject;

    .line 15
    .line 16
    invoke-virtual {v0, v1}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    .line 17
    .line 18
    .line 19
    goto :goto_0

    .line 20
    :cond_0
    new-instance v0, Lorg/json/JSONArray;

    .line 21
    .line 22
    invoke-direct {v0}, Lorg/json/JSONArray;-><init>()V

    .line 23
    .line 24
    .line 25
    iget-object v2, p0, Lcom/byazt/xyr/sp;->x:Lorg/json/JSONObject;

    .line 26
    .line 27
    invoke-virtual {v0, v2}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    .line 28
    .line 29
    .line 30
    iget-object v2, p0, Lcom/byazt/xyr/sp;->gt:Ljava/lang/String;

    .line 31
    .line 32
    invoke-static {v2, v1, v0}, Lcom/byazt/rgb/tt;->c(Ljava/lang/String;ILjava/lang/Object;)V

    .line 33
    .line 34
    .line 35
    :goto_0
    const/4 v0, 0x0

    .line 36
    iput-object v0, p0, Lcom/byazt/xyr/sp;->x:Lorg/json/JSONObject;

    .line 37
    .line 38
    return-void
.end method


# virtual methods
.method public c()V
    .locals 3

    .line 47
    iget-object v0, p0, Lcom/byazt/xyr/sp;->my:Landroid/hardware/SensorEventListener;

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    .line 48
    iput-object v0, p0, Lcom/byazt/xyr/sp;->my:Landroid/hardware/SensorEventListener;

    .line 49
    invoke-static {}, Lcom/byazt/omf/gt;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/byazt/nr/n;->c(Landroid/content/Context;)Lcom/byazt/nr/n;

    move-result-object v0

    .line 50
    iget-object v1, p0, Lcom/byazt/xyr/sp;->my:Landroid/hardware/SensorEventListener;

    invoke-virtual {v0, v1}, Lcom/byazt/nr/n;->c(Landroid/hardware/SensorEventListener;)V

    .line 51
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    const-string v1, "accelerometer"

    .line 52
    iget-object v2, p0, Lcom/byazt/xyr/sp;->u:Lorg/json/JSONArray;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "gyro"

    .line 53
    iget-object v2, p0, Lcom/byazt/xyr/sp;->yp:Lorg/json/JSONArray;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "device"

    .line 54
    iget-object v2, p0, Lcom/byazt/xyr/sp;->z:Lorg/json/JSONArray;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 55
    iget-object v1, p0, Lcom/byazt/xyr/sp;->gt:Ljava/lang/String;

    const/4 v2, 0x2

    invoke-static {v1, v2, v0}, Lcom/byazt/rgb/tt;->c(Ljava/lang/String;ILjava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    .line 56
    invoke-static {v0}, Lcom/byazt/nr/m;->c(Ljava/lang/Throwable;)V

    :cond_0
    return-void
.end method

.method public c(Landroid/view/ViewGroup;Landroid/view/MotionEvent;Z)V
    .locals 3

    .line 3
    iget-boolean v0, p0, Lcom/byazt/xyr/sp;->c:Z

    if-eqz v0, :cond_6

    .line 4
    :try_start_0
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-eqz v0, :cond_5

    const/4 v1, 0x1

    if-eq v0, v1, :cond_1

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    const/4 v1, 0x3

    if-eq v0, v1, :cond_1

    goto :goto_0

    .line 5
    :cond_0
    iget-object p1, p0, Lcom/byazt/xyr/sp;->i:Ljava/util/List;

    invoke-direct {p0, p2}, Lcom/byazt/xyr/sp;->c(Landroid/view/MotionEvent;)Lorg/json/JSONObject;

    move-result-object p2

    invoke-interface {p1, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void

    .line 6
    :cond_1
    iget-object v0, p0, Lcom/byazt/xyr/sp;->uj:Landroid/view/View;

    if-eqz v0, :cond_2

    .line 7
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    invoke-direct {p0, p1, v1, v2}, Lcom/byazt/xyr/sp;->c(Landroid/view/ViewGroup;FF)Landroid/view/View;

    move-result-object p1

    .line 8
    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    iget-boolean p1, p0, Lcom/byazt/xyr/sp;->n:Z

    if-eqz p1, :cond_2

    if-nez p3, :cond_4

    .line 9
    :cond_2
    iget-object p1, p0, Lcom/byazt/xyr/sp;->x:Lorg/json/JSONObject;

    if-eqz p1, :cond_3

    .line 10
    iget-object p1, p0, Lcom/byazt/xyr/sp;->x:Lorg/json/JSONObject;

    const-string p3, "ended"

    invoke-direct {p0, p2}, Lcom/byazt/xyr/sp;->c(Landroid/view/MotionEvent;)Lorg/json/JSONObject;

    move-result-object p2

    invoke-virtual {p1, p3, p2}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 11
    iget-object p1, p0, Lcom/byazt/xyr/sp;->x:Lorg/json/JSONObject;

    const-string p2, "moves"

    iget-object p3, p0, Lcom/byazt/xyr/sp;->i:Ljava/util/List;

    iget-object v0, p0, Lcom/byazt/xyr/sp;->da:Lcom/byazt/ogz/t;

    .line 12
    invoke-virtual {v0}, Lcom/byazt/ogz/t;->c()I

    move-result v0

    .line 13
    invoke-direct {p0, p3, v0}, Lcom/byazt/xyr/sp;->c(Ljava/util/List;I)Lorg/json/JSONArray;

    move-result-object p3

    invoke-virtual {p1, p2, p3}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 14
    :cond_3
    invoke-direct {p0}, Lcom/byazt/xyr/sp;->ve()V

    :cond_4
    :goto_0
    return-void

    .line 15
    :cond_5
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    invoke-direct {p0, p1, v0, v1}, Lcom/byazt/xyr/sp;->c(Landroid/view/ViewGroup;FF)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/byazt/xyr/sp;->uj:Landroid/view/View;

    .line 16
    iput-boolean p3, p0, Lcom/byazt/xyr/sp;->n:Z

    .line 17
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getEventTime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/byazt/xyr/sp;->a:J

    .line 18
    new-instance p1, Lorg/json/JSONObject;

    invoke-direct {p1}, Lorg/json/JSONObject;-><init>()V

    iput-object p1, p0, Lcom/byazt/xyr/sp;->x:Lorg/json/JSONObject;

    .line 19
    iget-object p1, p0, Lcom/byazt/xyr/sp;->x:Lorg/json/JSONObject;

    const-string p3, "began"

    .line 20
    invoke-direct {p0, p2}, Lcom/byazt/xyr/sp;->c(Landroid/view/MotionEvent;)Lorg/json/JSONObject;

    move-result-object p2

    .line 21
    invoke-virtual {p1, p3, p2}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 22
    iget-object p1, p0, Lcom/byazt/xyr/sp;->i:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->clear()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 23
    invoke-static {p1}, Lcom/byazt/nr/m;->c(Ljava/lang/Throwable;)V

    :cond_6
    return-void
.end method

.method public c(Lcom/byazt/xj/ve;)V
    .locals 3

    .line 86
    invoke-direct {p0}, Lcom/byazt/xyr/sp;->uj()V

    .line 87
    iget-boolean v0, p0, Lcom/byazt/xyr/sp;->tt:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    .line 88
    iput-boolean v0, p0, Lcom/byazt/xyr/sp;->tt:Z

    .line 89
    invoke-virtual {p1}, Lcom/byazt/xj/ve;->i()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 90
    invoke-virtual {v0}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v1

    new-instance v2, Lcom/byazt/xyr/sp$2;

    invoke-direct {v2, p0, v0, p1}, Lcom/byazt/xyr/sp$2;-><init>(Lcom/byazt/xyr/sp;Landroid/view/View;Lcom/byazt/xj/ve;)V

    .line 91
    invoke-virtual {v1, v2}, Landroid/view/ViewTreeObserver;->addOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    :cond_0
    return-void
.end method
