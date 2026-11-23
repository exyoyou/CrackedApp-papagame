.class Lcom/aggmoread/sdk/z/a/u/t$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/hardware/SensorEventListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/aggmoread/sdk/z/a/u/t;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/aggmoread/sdk/z/a/u/t;


# direct methods
.method constructor <init>(Lcom/aggmoread/sdk/z/a/u/t;)V
    .locals 0

    iput-object p1, p0, Lcom/aggmoread/sdk/z/a/u/t$a;->a:Lcom/aggmoread/sdk/z/a/u/t;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAccuracyChanged(Landroid/hardware/Sensor;I)V
    .locals 0

    return-void
.end method

.method public onSensorChanged(Landroid/hardware/SensorEvent;)V
    .locals 10

    iget-object v0, p0, Lcom/aggmoread/sdk/z/a/u/t$a;->a:Lcom/aggmoread/sdk/z/a/u/t;

    invoke-static {v0}, Lcom/aggmoread/sdk/z/a/u/t;->a(Lcom/aggmoread/sdk/z/a/u/t;)Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/aggmoread/sdk/z/a/u/t$a;->a:Lcom/aggmoread/sdk/z/a/u/t;

    invoke-static {v0}, Lcom/aggmoread/sdk/z/a/u/t;->b(Lcom/aggmoread/sdk/z/a/u/t;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p1, Landroid/hardware/SensorEvent;->sensor:Landroid/hardware/Sensor;

    invoke-virtual {v0}, Landroid/hardware/Sensor;->getType()I

    move-result v0

    const/4 v1, 0x4

    if-eq v0, v1, :cond_0

    goto/16 :goto_0

    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/aggmoread/sdk/z/a/u/t$a;->a:Lcom/aggmoread/sdk/z/a/u/t;

    invoke-static {v0}, Lcom/aggmoread/sdk/z/a/u/t;->c(Lcom/aggmoread/sdk/z/a/u/t;)J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-eqz v4, :cond_1

    iget-wide v0, p1, Landroid/hardware/SensorEvent;->timestamp:J

    iget-object v2, p0, Lcom/aggmoread/sdk/z/a/u/t$a;->a:Lcom/aggmoread/sdk/z/a/u/t;

    invoke-static {v2}, Lcom/aggmoread/sdk/z/a/u/t;->c(Lcom/aggmoread/sdk/z/a/u/t;)J

    move-result-wide v2

    sub-long v2, v0, v2

    long-to-float v2, v2

    const v3, 0x3089705f    # 1.0E-9f

    mul-float v2, v2, v3

    iget-object v3, p0, Lcom/aggmoread/sdk/z/a/u/t$a;->a:Lcom/aggmoread/sdk/z/a/u/t;

    invoke-static {v3, v0, v1}, Lcom/aggmoread/sdk/z/a/u/t;->a(Lcom/aggmoread/sdk/z/a/u/t;J)J

    iget-object v0, p0, Lcom/aggmoread/sdk/z/a/u/t$a;->a:Lcom/aggmoread/sdk/z/a/u/t;

    invoke-static {v0}, Lcom/aggmoread/sdk/z/a/u/t;->d(Lcom/aggmoread/sdk/z/a/u/t;)D

    move-result-wide v0

    iget-object p1, p1, Landroid/hardware/SensorEvent;->values:[F

    iget-object v3, p0, Lcom/aggmoread/sdk/z/a/u/t$a;->a:Lcom/aggmoread/sdk/z/a/u/t;

    invoke-static {v3, p1}, Lcom/aggmoread/sdk/z/a/u/t;->a(Lcom/aggmoread/sdk/z/a/u/t;[F)[F

    const/4 v3, 0x0

    aget v4, p1, v3

    mul-float v4, v4, v2

    float-to-double v4, v4

    invoke-static {v4, v5}, Ljava/lang/Double;->isNaN(D)Z

    add-double/2addr v0, v4

    iget-object v4, p0, Lcom/aggmoread/sdk/z/a/u/t$a;->a:Lcom/aggmoread/sdk/z/a/u/t;

    invoke-static {v4, v0, v1}, Lcom/aggmoread/sdk/z/a/u/t;->a(Lcom/aggmoread/sdk/z/a/u/t;D)D

    iget-object v4, p0, Lcom/aggmoread/sdk/z/a/u/t$a;->a:Lcom/aggmoread/sdk/z/a/u/t;

    invoke-static {v4}, Lcom/aggmoread/sdk/z/a/u/t;->e(Lcom/aggmoread/sdk/z/a/u/t;)D

    move-result-wide v4

    const/4 v6, 0x1

    aget v7, p1, v6

    mul-float v7, v7, v2

    float-to-double v7, v7

    invoke-static {v7, v8}, Ljava/lang/Double;->isNaN(D)Z

    iget-object v9, p0, Lcom/aggmoread/sdk/z/a/u/t$a;->a:Lcom/aggmoread/sdk/z/a/u/t;

    add-double/2addr v4, v7

    invoke-static {v9, v4, v5}, Lcom/aggmoread/sdk/z/a/u/t;->b(Lcom/aggmoread/sdk/z/a/u/t;D)D

    iget-object v4, p0, Lcom/aggmoread/sdk/z/a/u/t$a;->a:Lcom/aggmoread/sdk/z/a/u/t;

    invoke-static {v4}, Lcom/aggmoread/sdk/z/a/u/t;->f(Lcom/aggmoread/sdk/z/a/u/t;)D

    move-result-wide v4

    const/4 v7, 0x2

    aget p1, p1, v7

    mul-float p1, p1, v2

    float-to-double v8, p1

    invoke-static {v8, v9}, Ljava/lang/Double;->isNaN(D)Z

    iget-object p1, p0, Lcom/aggmoread/sdk/z/a/u/t$a;->a:Lcom/aggmoread/sdk/z/a/u/t;

    add-double/2addr v4, v8

    invoke-static {p1, v4, v5}, Lcom/aggmoread/sdk/z/a/u/t;->c(Lcom/aggmoread/sdk/z/a/u/t;D)D

    iget-object p1, p0, Lcom/aggmoread/sdk/z/a/u/t$a;->a:Lcom/aggmoread/sdk/z/a/u/t;

    invoke-static {p1}, Lcom/aggmoread/sdk/z/a/u/t;->g(Lcom/aggmoread/sdk/z/a/u/t;)[I

    move-result-object p1

    iget-object v2, p0, Lcom/aggmoread/sdk/z/a/u/t$a;->a:Lcom/aggmoread/sdk/z/a/u/t;

    invoke-static {v0, v1}, Ljava/lang/Math;->toDegrees(D)D

    move-result-wide v0

    double-to-int v0, v0

    rem-int/lit16 v0, v0, 0x168

    invoke-virtual {v2, v0}, Lcom/aggmoread/sdk/z/a/u/t;->d(I)I

    move-result v0

    aput v0, p1, v3

    iget-object p1, p0, Lcom/aggmoread/sdk/z/a/u/t$a;->a:Lcom/aggmoread/sdk/z/a/u/t;

    invoke-static {p1}, Lcom/aggmoread/sdk/z/a/u/t;->g(Lcom/aggmoread/sdk/z/a/u/t;)[I

    move-result-object p1

    iget-object v0, p0, Lcom/aggmoread/sdk/z/a/u/t$a;->a:Lcom/aggmoread/sdk/z/a/u/t;

    invoke-static {v0}, Lcom/aggmoread/sdk/z/a/u/t;->e(Lcom/aggmoread/sdk/z/a/u/t;)D

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Math;->toDegrees(D)D

    move-result-wide v1

    double-to-int v1, v1

    rem-int/lit16 v1, v1, 0x168

    invoke-virtual {v0, v1}, Lcom/aggmoread/sdk/z/a/u/t;->d(I)I

    move-result v0

    aput v0, p1, v6

    iget-object p1, p0, Lcom/aggmoread/sdk/z/a/u/t$a;->a:Lcom/aggmoread/sdk/z/a/u/t;

    invoke-static {p1}, Lcom/aggmoread/sdk/z/a/u/t;->g(Lcom/aggmoread/sdk/z/a/u/t;)[I

    move-result-object p1

    iget-object v0, p0, Lcom/aggmoread/sdk/z/a/u/t$a;->a:Lcom/aggmoread/sdk/z/a/u/t;

    invoke-static {v0}, Lcom/aggmoread/sdk/z/a/u/t;->f(Lcom/aggmoread/sdk/z/a/u/t;)D

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Math;->toDegrees(D)D

    move-result-wide v1

    double-to-int v1, v1

    rem-int/lit16 v1, v1, 0x168

    invoke-virtual {v0, v1}, Lcom/aggmoread/sdk/z/a/u/t;->d(I)I

    move-result v0

    aput v0, p1, v7

    iget-object p1, p0, Lcom/aggmoread/sdk/z/a/u/t$a;->a:Lcom/aggmoread/sdk/z/a/u/t;

    invoke-static {p1}, Lcom/aggmoread/sdk/z/a/u/t;->h(Lcom/aggmoread/sdk/z/a/u/t;)V

    return-void

    :cond_1
    iget-object v0, p0, Lcom/aggmoread/sdk/z/a/u/t$a;->a:Lcom/aggmoread/sdk/z/a/u/t;

    iget-wide v1, p1, Landroid/hardware/SensorEvent;->timestamp:J

    invoke-static {v0, v1, v2}, Lcom/aggmoread/sdk/z/a/u/t;->a(Lcom/aggmoread/sdk/z/a/u/t;J)J
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "shake err "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "tw_svTAG"

    invoke-static {v0, p1}, Lcom/aggmoread/sdk/z/a/d;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    :goto_0
    return-void
.end method
