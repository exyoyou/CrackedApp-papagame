.class public Lcom/byazt/gf/uj;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/hardware/SensorEventListener;


# annotations
.annotation runtime Lcom/byazt/zqa/c;
    c = {
        0x0,
        0x1,
        0x392,
        0xf
    }
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/byazt/gf/uj$c;
    }
.end annotation


# static fields
.field public static volatile c:Lcom/byazt/gf/uj;


# instance fields
.field public final a:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation
.end field

.field public final da:I

.field public volatile gt:I

.field public final i:I

.field public m:J

.field public volatile my:Lcom/byazt/gf/uj$c;

.field public final n:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation
.end field

.field public volatile nu:Z

.field public volatile rh:Ljava/util/concurrent/atomic/AtomicInteger;

.field public final sl:I

.field public final sp:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation
.end field

.field public final t:I

.field public volatile tt:Z

.field public final u:I

.field public final uj:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation
.end field

.field public final ve:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation
.end field

.field public final x:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation
.end field

.field public yp:Landroid/hardware/Sensor;

.field public z:Landroid/hardware/Sensor;


# direct methods
.method private constructor <init>()V
    .locals 5

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x0

    .line 5
    iput-boolean v0, p0, Lcom/byazt/gf/uj;->tt:Z

    .line 6
    .line 7
    new-instance v1, Ljava/util/ArrayList;

    .line 8
    .line 9
    const/4 v2, 0x1

    .line 10
    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    .line 11
    .line 12
    .line 13
    iput-object v1, p0, Lcom/byazt/gf/uj;->ve:Ljava/util/List;

    .line 14
    .line 15
    new-instance v1, Ljava/util/ArrayList;

    .line 16
    .line 17
    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    .line 18
    .line 19
    .line 20
    iput-object v1, p0, Lcom/byazt/gf/uj;->uj:Ljava/util/List;

    .line 21
    .line 22
    new-instance v1, Ljava/util/ArrayList;

    .line 23
    .line 24
    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    .line 25
    .line 26
    .line 27
    iput-object v1, p0, Lcom/byazt/gf/uj;->n:Ljava/util/List;

    .line 28
    .line 29
    new-instance v1, Ljava/util/ArrayList;

    .line 30
    .line 31
    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    .line 32
    .line 33
    .line 34
    iput-object v1, p0, Lcom/byazt/gf/uj;->a:Ljava/util/List;

    .line 35
    .line 36
    new-instance v1, Ljava/util/ArrayList;

    .line 37
    .line 38
    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    .line 39
    .line 40
    .line 41
    iput-object v1, p0, Lcom/byazt/gf/uj;->sp:Ljava/util/List;

    .line 42
    .line 43
    new-instance v1, Ljava/util/ArrayList;

    .line 44
    .line 45
    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    .line 46
    .line 47
    .line 48
    iput-object v1, p0, Lcom/byazt/gf/uj;->x:Ljava/util/List;

    .line 49
    .line 50
    iput v0, p0, Lcom/byazt/gf/uj;->i:I

    .line 51
    .line 52
    iput v2, p0, Lcom/byazt/gf/uj;->da:I

    .line 53
    .line 54
    const/4 v1, 0x2

    .line 55
    iput v1, p0, Lcom/byazt/gf/uj;->sl:I

    .line 56
    .line 57
    const/16 v3, 0x10

    .line 58
    .line 59
    iput v3, p0, Lcom/byazt/gf/uj;->t:I

    .line 60
    .line 61
    const/16 v3, 0x20

    .line 62
    .line 63
    iput v3, p0, Lcom/byazt/gf/uj;->u:I

    .line 64
    .line 65
    const/4 v3, 0x0

    .line 66
    iput-object v3, p0, Lcom/byazt/gf/uj;->yp:Landroid/hardware/Sensor;

    .line 67
    .line 68
    iput-object v3, p0, Lcom/byazt/gf/uj;->z:Landroid/hardware/Sensor;

    .line 69
    .line 70
    const-wide/16 v3, 0x0

    .line 71
    .line 72
    iput-wide v3, p0, Lcom/byazt/gf/uj;->m:J

    .line 73
    .line 74
    iput-boolean v0, p0, Lcom/byazt/gf/uj;->nu:Z

    .line 75
    .line 76
    new-instance v3, Ljava/util/concurrent/atomic/AtomicInteger;

    .line 77
    .line 78
    invoke-direct {v3, v0}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    .line 79
    .line 80
    .line 81
    iput-object v3, p0, Lcom/byazt/gf/uj;->rh:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 82
    .line 83
    iput v0, p0, Lcom/byazt/gf/uj;->gt:I

    .line 84
    .line 85
    invoke-static {}, Lcom/byazt/qi/a;->ve()Landroid/content/Context;

    .line 86
    .line 87
    .line 88
    move-result-object v0

    .line 89
    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    .line 90
    .line 91
    .line 92
    move-result-object v0

    .line 93
    const-string v3, "sensor"

    .line 94
    .line 95
    invoke-virtual {v0, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 96
    .line 97
    .line 98
    move-result-object v0

    .line 99
    check-cast v0, Landroid/hardware/SensorManager;

    .line 100
    .line 101
    if-eqz v0, :cond_0

    .line 102
    .line 103
    :try_start_0
    invoke-virtual {v0, v2}, Landroid/hardware/SensorManager;->getDefaultSensor(I)Landroid/hardware/Sensor;

    .line 104
    .line 105
    .line 106
    move-result-object v2

    .line 107
    iput-object v2, p0, Lcom/byazt/gf/uj;->yp:Landroid/hardware/Sensor;

    .line 108
    .line 109
    invoke-virtual {v0, v1}, Landroid/hardware/SensorManager;->getDefaultSensor(I)Landroid/hardware/Sensor;

    .line 110
    .line 111
    .line 112
    move-result-object v0

    .line 113
    iput-object v0, p0, Lcom/byazt/gf/uj;->z:Landroid/hardware/Sensor;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 114
    .line 115
    :catch_0
    :cond_0
    return-void
.end method

.method public static synthetic a(Lcom/byazt/gf/uj;)Ljava/util/List;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/byazt/gf/uj;->x:Ljava/util/List;

    return-object p0
.end method

.method private declared-synchronized a()V
    .locals 2

    monitor-enter p0

    .line 2
    :try_start_0
    iget-boolean v0, p0, Lcom/byazt/gf/uj;->tt:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/byazt/gf/uj;->ve:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_0

    iget-object v0, p0, Lcom/byazt/gf/uj;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    .line 3
    iput-boolean v0, p0, Lcom/byazt/gf/uj;->tt:Z

    .line 4
    invoke-direct {p0}, Lcom/byazt/gf/uj;->n()V

    .line 5
    new-instance v0, Lcom/byazt/gf/uj$1;

    const-string v1, "har"

    invoke-direct {v0, p0, v1}, Lcom/byazt/gf/uj$1;-><init>(Lcom/byazt/gf/uj;Ljava/lang/String;)V

    invoke-static {v0}, Lcom/byazt/bwm/n;->tt(Lcom/byazt/bwm/sp;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    .line 6
    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/byazt/gf/uj;->rh:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v0

    const/4 v1, 0x3

    if-le v0, v1, :cond_1

    .line 7
    invoke-direct {p0}, Lcom/byazt/gf/uj;->n()V

    .line 8
    invoke-direct {p0}, Lcom/byazt/gf/uj;->sp()V

    const/4 v0, 0x0

    .line 9
    iput-boolean v0, p0, Lcom/byazt/gf/uj;->nu:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 10
    :cond_1
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public static c()Lcom/byazt/gf/uj;
    .locals 2

    .line 4
    sget-object v0, Lcom/byazt/gf/uj;->c:Lcom/byazt/gf/uj;

    if-nez v0, :cond_1

    .line 5
    const-class v0, Lcom/byazt/gf/uj;

    monitor-enter v0

    .line 6
    :try_start_0
    sget-object v1, Lcom/byazt/gf/uj;->c:Lcom/byazt/gf/uj;

    if-nez v1, :cond_0

    .line 7
    new-instance v1, Lcom/byazt/gf/uj;

    invoke-direct {v1}, Lcom/byazt/gf/uj;-><init>()V

    sput-object v1, Lcom/byazt/gf/uj;->c:Lcom/byazt/gf/uj;

    .line 8
    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 9
    :cond_1
    :goto_0
    sget-object v0, Lcom/byazt/gf/uj;->c:Lcom/byazt/gf/uj;

    return-object v0
.end method

.method public static synthetic c(Lcom/byazt/gf/uj;)Ljava/util/List;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/byazt/gf/uj;->ve:Ljava/util/List;

    return-object p0
.end method

.method public static synthetic c(Lcom/byazt/gf/uj;[F)V
    .locals 0

    .line 2
    invoke-direct {p0, p1}, Lcom/byazt/gf/uj;->c([F)V

    return-void
.end method

.method private c([F)V
    .locals 4

    .line 11
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/byazt/gf/uj;->m:J

    .line 12
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    const-string v1, "t"

    .line 13
    invoke-virtual {p0}, Lcom/byazt/gf/uj;->uj()J

    move-result-wide v2

    invoke-virtual {v0, v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    const-string v1, "val"

    .line 14
    new-instance v2, Lorg/json/JSONArray;

    invoke-direct {v2, p1}, Lorg/json/JSONArray;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 15
    invoke-static {}, Lcom/byazt/gf/tt;->c()Lcom/byazt/gf/tt;

    move-result-object p1

    const-string v1, "sp_angle"

    invoke-virtual {p1, v0, v1}, Lcom/byazt/gf/tt;->c(Lorg/json/JSONObject;Ljava/lang/String;)V

    .line 16
    invoke-static {}, Lcom/byazt/gf/tt;->c()Lcom/byazt/gf/tt;

    move-result-object p1

    invoke-static {}, Lcom/byazt/qi/a;->ve()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/byazt/nr/rh;->ve(Landroid/content/Context;)I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/byazt/gf/tt;->c(I)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 17
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v0
.end method

.method public static synthetic c(Lcom/byazt/gf/uj;Z)Z
    .locals 0

    .line 3
    iput-boolean p1, p0, Lcom/byazt/gf/uj;->nu:Z

    return p1
.end method

.method public static synthetic n(Lcom/byazt/gf/uj;)Ljava/util/List;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/byazt/gf/uj;->sp:Ljava/util/List;

    return-object p0
.end method

.method private n()V
    .locals 2

    .line 2
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    iput-object v0, p0, Lcom/byazt/gf/uj;->rh:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 3
    invoke-static {}, Lcom/byazt/qi/a;->ve()Landroid/content/Context;

    move-result-object v0

    .line 4
    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "sensor"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/SensorManager;

    if-eqz v0, :cond_1

    .line 5
    iget-object v1, p0, Lcom/byazt/gf/uj;->yp:Landroid/hardware/Sensor;

    if-eqz v1, :cond_0

    .line 6
    invoke-virtual {v0, p0, v1}, Landroid/hardware/SensorManager;->unregisterListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;)V

    .line 7
    :cond_0
    iget-object v1, p0, Lcom/byazt/gf/uj;->z:Landroid/hardware/Sensor;

    if-eqz v1, :cond_1

    .line 8
    invoke-virtual {v0, p0, v1}, Landroid/hardware/SensorManager;->unregisterListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;)V

    :cond_1
    return-void
.end method

.method public static synthetic sp(Lcom/byazt/gf/uj;)Lcom/byazt/gf/uj$c;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/byazt/gf/uj;->my:Lcom/byazt/gf/uj$c;

    return-object p0
.end method

.method private sp()V
    .locals 1

    .line 2
    iget-object v0, p0, Lcom/byazt/gf/uj;->ve:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 3
    iget-object v0, p0, Lcom/byazt/gf/uj;->uj:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 4
    iget-object v0, p0, Lcom/byazt/gf/uj;->n:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 5
    iget-object v0, p0, Lcom/byazt/gf/uj;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 6
    iget-object v0, p0, Lcom/byazt/gf/uj;->sp:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 7
    iget-object v0, p0, Lcom/byazt/gf/uj;->x:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    return-void
.end method

.method public static synthetic tt(Lcom/byazt/gf/uj;)Ljava/util/List;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/byazt/gf/uj;->uj:Ljava/util/List;

    return-object p0
.end method

.method public static synthetic uj(Lcom/byazt/gf/uj;)Ljava/util/List;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/byazt/gf/uj;->a:Ljava/util/List;

    return-object p0
.end method

.method public static synthetic ve(Lcom/byazt/gf/uj;)Ljava/util/List;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/byazt/gf/uj;->n:Ljava/util/List;

    return-object p0
.end method

.method public static synthetic x(Lcom/byazt/gf/uj;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/byazt/gf/uj;->sp()V

    .line 2
    .line 3
    .line 4
    return-void
.end method


# virtual methods
.method public c(Lcom/byazt/gf/uj$c;)V
    .locals 0

    .line 10
    iput-object p1, p0, Lcom/byazt/gf/uj;->my:Lcom/byazt/gf/uj$c;

    return-void
.end method

.method public onAccuracyChanged(Landroid/hardware/Sensor;I)V
    .locals 0

    return-void
.end method

.method public onSensorChanged(Landroid/hardware/SensorEvent;)V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/byazt/gf/uj;->rh:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    .line 4
    .line 5
    .line 6
    if-eqz p1, :cond_6

    .line 7
    .line 8
    iget-object v0, p1, Landroid/hardware/SensorEvent;->sensor:Landroid/hardware/Sensor;

    .line 9
    .line 10
    if-nez v0, :cond_0

    .line 11
    .line 12
    goto/16 :goto_1

    .line 13
    .line 14
    :cond_0
    invoke-virtual {v0}, Landroid/hardware/Sensor;->getType()I

    .line 15
    .line 16
    .line 17
    move-result v0

    .line 18
    iget-object v1, p1, Landroid/hardware/SensorEvent;->values:[F

    .line 19
    .line 20
    if-eqz v1, :cond_6

    .line 21
    .line 22
    array-length v1, v1

    .line 23
    const/4 v2, 0x3

    .line 24
    if-ge v1, v2, :cond_1

    .line 25
    .line 26
    goto :goto_1

    .line 27
    :cond_1
    const/4 v1, 0x0

    .line 28
    const/4 v2, 0x2

    .line 29
    const/4 v3, 0x1

    .line 30
    if-eq v0, v3, :cond_4

    .line 31
    .line 32
    if-eq v0, v2, :cond_2

    .line 33
    .line 34
    goto :goto_0

    .line 35
    :cond_2
    iget-object v0, p0, Lcom/byazt/gf/uj;->a:Ljava/util/List;

    .line 36
    .line 37
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 38
    .line 39
    .line 40
    move-result v0

    .line 41
    if-gtz v0, :cond_3

    .line 42
    .line 43
    iget-object v0, p0, Lcom/byazt/gf/uj;->a:Ljava/util/List;

    .line 44
    .line 45
    iget-object v4, p1, Landroid/hardware/SensorEvent;->values:[F

    .line 46
    .line 47
    aget v1, v4, v1

    .line 48
    .line 49
    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 50
    .line 51
    .line 52
    move-result-object v1

    .line 53
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 54
    .line 55
    .line 56
    iget-object v0, p0, Lcom/byazt/gf/uj;->sp:Ljava/util/List;

    .line 57
    .line 58
    iget-object v1, p1, Landroid/hardware/SensorEvent;->values:[F

    .line 59
    .line 60
    aget v1, v1, v3

    .line 61
    .line 62
    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 63
    .line 64
    .line 65
    move-result-object v1

    .line 66
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 67
    .line 68
    .line 69
    iget-object v0, p0, Lcom/byazt/gf/uj;->x:Ljava/util/List;

    .line 70
    .line 71
    iget-object p1, p1, Landroid/hardware/SensorEvent;->values:[F

    .line 72
    .line 73
    aget p1, p1, v2

    .line 74
    .line 75
    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 76
    .line 77
    .line 78
    move-result-object p1

    .line 79
    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 80
    .line 81
    .line 82
    return-void

    .line 83
    :cond_3
    invoke-direct {p0}, Lcom/byazt/gf/uj;->a()V

    .line 84
    .line 85
    .line 86
    :goto_0
    return-void

    .line 87
    :cond_4
    iget-object v0, p0, Lcom/byazt/gf/uj;->ve:Ljava/util/List;

    .line 88
    .line 89
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 90
    .line 91
    .line 92
    move-result v0

    .line 93
    if-gtz v0, :cond_5

    .line 94
    .line 95
    iget-object v0, p0, Lcom/byazt/gf/uj;->ve:Ljava/util/List;

    .line 96
    .line 97
    iget-object v4, p1, Landroid/hardware/SensorEvent;->values:[F

    .line 98
    .line 99
    aget v1, v4, v1

    .line 100
    .line 101
    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 102
    .line 103
    .line 104
    move-result-object v1

    .line 105
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 106
    .line 107
    .line 108
    iget-object v0, p0, Lcom/byazt/gf/uj;->uj:Ljava/util/List;

    .line 109
    .line 110
    iget-object v1, p1, Landroid/hardware/SensorEvent;->values:[F

    .line 111
    .line 112
    aget v1, v1, v3

    .line 113
    .line 114
    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 115
    .line 116
    .line 117
    move-result-object v1

    .line 118
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 119
    .line 120
    .line 121
    iget-object v0, p0, Lcom/byazt/gf/uj;->n:Ljava/util/List;

    .line 122
    .line 123
    iget-object p1, p1, Landroid/hardware/SensorEvent;->values:[F

    .line 124
    .line 125
    aget p1, p1, v2

    .line 126
    .line 127
    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 128
    .line 129
    .line 130
    move-result-object p1

    .line 131
    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 132
    .line 133
    .line 134
    return-void

    .line 135
    :cond_5
    invoke-direct {p0}, Lcom/byazt/gf/uj;->a()V

    .line 136
    .line 137
    .line 138
    :cond_6
    :goto_1
    return-void
.end method

.method public declared-synchronized tt()Z
    .locals 6

    monitor-enter p0

    const/4 v0, 0x0

    .line 2
    :try_start_0
    iput v0, p0, Lcom/byazt/gf/uj;->gt:I

    .line 3
    iget-boolean v1, p0, Lcom/byazt/gf/uj;->nu:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_0

    .line 4
    monitor-exit p0

    return v0

    .line 5
    :cond_0
    :try_start_1
    iget-object v1, p0, Lcom/byazt/gf/uj;->yp:Landroid/hardware/Sensor;

    if-eqz v1, :cond_4

    iget-object v1, p0, Lcom/byazt/gf/uj;->z:Landroid/hardware/Sensor;

    if-eqz v1, :cond_4

    .line 6
    iput-boolean v0, p0, Lcom/byazt/gf/uj;->nu:Z

    .line 7
    invoke-static {}, Lcom/byazt/qi/a;->ve()Landroid/content/Context;

    move-result-object v1

    .line 8
    invoke-virtual {v1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "sensor"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/hardware/SensorManager;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    const/4 v2, 0x1

    if-eqz v1, :cond_3

    const/16 v3, 0x20

    .line 9
    :try_start_2
    iget-object v4, p0, Lcom/byazt/gf/uj;->yp:Landroid/hardware/Sensor;

    invoke-virtual {v1, p0, v4, v2}, Landroid/hardware/SensorManager;->registerListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;I)Z

    move-result v4

    .line 10
    iget-object v5, p0, Lcom/byazt/gf/uj;->z:Landroid/hardware/Sensor;

    invoke-virtual {v1, p0, v5, v2}, Landroid/hardware/SensorManager;->registerListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;I)Z

    move-result v1

    if-eqz v4, :cond_2

    if-nez v1, :cond_1

    goto :goto_0

    .line 11
    :cond_1
    iput-boolean v2, p0, Lcom/byazt/gf/uj;->nu:Z

    .line 12
    iput-boolean v0, p0, Lcom/byazt/gf/uj;->tt:Z

    goto :goto_3

    .line 13
    :cond_2
    :goto_0
    iget v0, p0, Lcom/byazt/gf/uj;->gt:I

    or-int/2addr v0, v3

    iput v0, p0, Lcom/byazt/gf/uj;->gt:I

    .line 14
    invoke-direct {p0}, Lcom/byazt/gf/uj;->n()V

    .line 15
    invoke-direct {p0}, Lcom/byazt/gf/uj;->sp()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_3

    .line 16
    :catch_0
    :try_start_3
    iget v0, p0, Lcom/byazt/gf/uj;->gt:I

    const/16 v2, 0x20

    goto :goto_2

    .line 17
    :cond_3
    iget v0, p0, Lcom/byazt/gf/uj;->gt:I

    goto :goto_2

    .line 18
    :cond_4
    iget v1, p0, Lcom/byazt/gf/uj;->gt:I

    iget-object v2, p0, Lcom/byazt/gf/uj;->yp:Landroid/hardware/Sensor;

    if-nez v2, :cond_5

    const/4 v2, 0x2

    goto :goto_1

    :cond_5
    const/4 v2, 0x0

    :goto_1
    or-int/2addr v1, v2

    iput v1, p0, Lcom/byazt/gf/uj;->gt:I

    .line 19
    iget v1, p0, Lcom/byazt/gf/uj;->gt:I

    iget-object v2, p0, Lcom/byazt/gf/uj;->z:Landroid/hardware/Sensor;

    if-nez v2, :cond_6

    const/16 v0, 0x10

    move v0, v1

    const/16 v2, 0x10

    goto :goto_2

    :cond_6
    move v0, v1

    const/4 v2, 0x0

    :goto_2
    or-int/2addr v0, v2

    iput v0, p0, Lcom/byazt/gf/uj;->gt:I

    .line 20
    :goto_3
    iget-boolean v0, p0, Lcom/byazt/gf/uj;->nu:Z
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public uj()J
    .locals 2

    .line 2
    iget-wide v0, p0, Lcom/byazt/gf/uj;->m:J

    return-wide v0
.end method

.method public ve()Z
    .locals 1

    .line 2
    iget-boolean v0, p0, Lcom/byazt/gf/uj;->nu:Z

    return v0
.end method
