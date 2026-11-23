.class Lcom/aggmoread/sdk/z/a/u/q$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/hardware/SensorEventListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/aggmoread/sdk/z/a/u/q;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/aggmoread/sdk/z/a/u/q;


# direct methods
.method constructor <init>(Lcom/aggmoread/sdk/z/a/u/q;)V
    .locals 0

    iput-object p1, p0, Lcom/aggmoread/sdk/z/a/u/q$a;->a:Lcom/aggmoread/sdk/z/a/u/q;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAccuracyChanged(Landroid/hardware/Sensor;I)V
    .locals 0

    return-void
.end method

.method public onSensorChanged(Landroid/hardware/SensorEvent;)V
    .locals 9

    iget-object v0, p1, Landroid/hardware/SensorEvent;->sensor:Landroid/hardware/Sensor;

    invoke-virtual {v0}, Landroid/hardware/Sensor;->getType()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_3

    :try_start_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iget-object v0, p0, Lcom/aggmoread/sdk/z/a/u/q$a;->a:Lcom/aggmoread/sdk/z/a/u/q;

    invoke-static {v0}, Lcom/aggmoread/sdk/z/a/u/q;->a(Lcom/aggmoread/sdk/z/a/u/q;)J

    move-result-wide v4

    sub-long v4, v2, v4

    const-wide/16 v6, 0x10

    cmp-long v0, v4, v6

    if-gez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/aggmoread/sdk/z/a/u/q$a;->a:Lcom/aggmoread/sdk/z/a/u/q;

    invoke-static {v0, v2, v3}, Lcom/aggmoread/sdk/z/a/u/q;->a(Lcom/aggmoread/sdk/z/a/u/q;J)J

    iget-object v0, p0, Lcom/aggmoread/sdk/z/a/u/q$a;->a:Lcom/aggmoread/sdk/z/a/u/q;

    invoke-static {v0}, Lcom/aggmoread/sdk/z/a/u/q;->b(Lcom/aggmoread/sdk/z/a/u/q;)J

    move-result-wide v4

    sub-long v4, v2, v4

    iget-object v0, p0, Lcom/aggmoread/sdk/z/a/u/q$a;->a:Lcom/aggmoread/sdk/z/a/u/q;

    invoke-static {v0}, Lcom/aggmoread/sdk/z/a/u/q;->d(Lcom/aggmoread/sdk/z/a/u/q;)J

    move-result-wide v6

    cmp-long v0, v4, v6

    if-lez v0, :cond_1

    iget-object v0, p0, Lcom/aggmoread/sdk/z/a/u/q$a;->a:Lcom/aggmoread/sdk/z/a/u/q;

    invoke-static {v0, v1}, Lcom/aggmoread/sdk/z/a/u/q;->a(Lcom/aggmoread/sdk/z/a/u/q;I)I

    :cond_1
    iget-object p1, p1, Landroid/hardware/SensorEvent;->values:[F

    iget-object v0, p0, Lcom/aggmoread/sdk/z/a/u/q$a;->a:Lcom/aggmoread/sdk/z/a/u/q;

    invoke-static {v0}, Lcom/aggmoread/sdk/z/a/u/q;->g(Lcom/aggmoread/sdk/z/a/u/q;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/aggmoread/sdk/z/a/u/q$a;->a:Lcom/aggmoread/sdk/z/a/u/q;

    invoke-static {v0, p1}, Lcom/aggmoread/sdk/z/a/u/q;->a(Lcom/aggmoread/sdk/z/a/u/q;[F)D

    move-result-wide v4

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/aggmoread/sdk/z/a/u/q$a;->a:Lcom/aggmoread/sdk/z/a/u/q;

    invoke-static {v0, p1}, Lcom/aggmoread/sdk/z/a/u/q;->b(Lcom/aggmoread/sdk/z/a/u/q;[F)D

    move-result-wide v4

    :goto_0
    iget-object v0, p0, Lcom/aggmoread/sdk/z/a/u/q$a;->a:Lcom/aggmoread/sdk/z/a/u/q;

    iget-wide v6, v0, Lcom/aggmoread/sdk/z/a/u/q;->d:D

    cmpl-double v8, v4, v6

    if-ltz v8, :cond_4

    invoke-static {v0, v2, v3}, Lcom/aggmoread/sdk/z/a/u/q;->b(Lcom/aggmoread/sdk/z/a/u/q;J)J

    iget-object v0, p0, Lcom/aggmoread/sdk/z/a/u/q$a;->a:Lcom/aggmoread/sdk/z/a/u/q;

    invoke-static {v0}, Lcom/aggmoread/sdk/z/a/u/q;->f(Lcom/aggmoread/sdk/z/a/u/q;)I

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "shake result = "

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v4, v5}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const-string v4, ", shakeCount "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/aggmoread/sdk/z/a/u/q$a;->a:Lcom/aggmoread/sdk/z/a/u/q;

    invoke-static {v4}, Lcom/aggmoread/sdk/z/a/u/q;->e(Lcom/aggmoread/sdk/z/a/u/q;)I

    move-result v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ", shakeThreshold2 "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/aggmoread/sdk/z/a/u/q$a;->a:Lcom/aggmoread/sdk/z/a/u/q;

    iget-wide v4, v4, Lcom/aggmoread/sdk/z/a/u/q;->d:D

    invoke-virtual {v0, v4, v5}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/aggmoread/sdk/z/c/a/a/e/e;->a(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/aggmoread/sdk/z/a/u/q$a;->a:Lcom/aggmoread/sdk/z/a/u/q;

    invoke-static {v0}, Lcom/aggmoread/sdk/z/a/u/q;->e(Lcom/aggmoread/sdk/z/a/u/q;)I

    move-result v0

    iget-object v4, p0, Lcom/aggmoread/sdk/z/a/u/q$a;->a:Lcom/aggmoread/sdk/z/a/u/q;

    invoke-static {v4}, Lcom/aggmoread/sdk/z/a/u/q;->h(Lcom/aggmoread/sdk/z/a/u/q;)I

    move-result v4

    if-lt v0, v4, :cond_4

    iget-object v0, p0, Lcom/aggmoread/sdk/z/a/u/q$a;->a:Lcom/aggmoread/sdk/z/a/u/q;

    invoke-static {v0, v1}, Lcom/aggmoread/sdk/z/a/u/q;->a(Lcom/aggmoread/sdk/z/a/u/q;I)I

    iget-object v0, p0, Lcom/aggmoread/sdk/z/a/u/q$a;->a:Lcom/aggmoread/sdk/z/a/u/q;

    const-wide/16 v4, 0x0

    invoke-static {v0, v4, v5}, Lcom/aggmoread/sdk/z/a/u/q;->b(Lcom/aggmoread/sdk/z/a/u/q;J)J

    iget-object v0, p0, Lcom/aggmoread/sdk/z/a/u/q$a;->a:Lcom/aggmoread/sdk/z/a/u/q;

    invoke-static {v0}, Lcom/aggmoread/sdk/z/a/u/q;->i(Lcom/aggmoread/sdk/z/a/u/q;)J

    move-result-wide v0

    sub-long v0, v2, v0

    iget-object v4, p0, Lcom/aggmoread/sdk/z/a/u/q$a;->a:Lcom/aggmoread/sdk/z/a/u/q;

    invoke-static {v4}, Lcom/aggmoread/sdk/z/a/u/q;->j(Lcom/aggmoread/sdk/z/a/u/q;)J

    move-result-wide v4

    cmp-long v6, v0, v4

    if-ltz v6, :cond_4

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "\u89e6\u53d1\u6447\u4e00\u6447 "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/aggmoread/sdk/z/a/u/q$a;->a:Lcom/aggmoread/sdk/z/a/u/q;

    iget-object v1, v1, Lcom/aggmoread/sdk/z/a/u/q;->k:Lcom/aggmoread/sdk/z/a/u/q$b;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/aggmoread/sdk/z/c/a/a/e/e;->a(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/aggmoread/sdk/z/a/u/q$a;->a:Lcom/aggmoread/sdk/z/a/u/q;

    invoke-static {v0, v2, v3}, Lcom/aggmoread/sdk/z/a/u/q;->c(Lcom/aggmoread/sdk/z/a/u/q;J)J

    iget-object v0, p0, Lcom/aggmoread/sdk/z/a/u/q$a;->a:Lcom/aggmoread/sdk/z/a/u/q;

    iget-object v0, v0, Lcom/aggmoread/sdk/z/a/u/q;->k:Lcom/aggmoread/sdk/z/a/u/q$b;

    if-eqz v0, :cond_4

    invoke-interface {v0, p1}, Lcom/aggmoread/sdk/z/a/u/q$b;->a([F)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

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

    invoke-static {p1}, Lcom/aggmoread/sdk/z/c/a/a/e/e;->a(Ljava/lang/String;)V

    goto :goto_1

    :cond_3
    iget-object v0, p1, Landroid/hardware/SensorEvent;->sensor:Landroid/hardware/Sensor;

    invoke-virtual {v0}, Landroid/hardware/Sensor;->getType()I

    move-result v0

    const/16 v3, 0x9

    if-ne v0, v3, :cond_4

    iget-object p1, p1, Landroid/hardware/SensorEvent;->values:[F

    aget v0, p1, v1

    aget v3, p1, v2

    const/4 v4, 0x2

    aget p1, p1, v4

    iget-object v5, p0, Lcom/aggmoread/sdk/z/a/u/q$a;->a:Lcom/aggmoread/sdk/z/a/u/q;

    invoke-static {v5}, Lcom/aggmoread/sdk/z/a/u/q;->c(Lcom/aggmoread/sdk/z/a/u/q;)[F

    move-result-object v5

    aput v0, v5, v1

    iget-object v0, p0, Lcom/aggmoread/sdk/z/a/u/q$a;->a:Lcom/aggmoread/sdk/z/a/u/q;

    invoke-static {v0}, Lcom/aggmoread/sdk/z/a/u/q;->c(Lcom/aggmoread/sdk/z/a/u/q;)[F

    move-result-object v0

    aput v3, v0, v2

    iget-object v0, p0, Lcom/aggmoread/sdk/z/a/u/q$a;->a:Lcom/aggmoread/sdk/z/a/u/q;

    invoke-static {v0}, Lcom/aggmoread/sdk/z/a/u/q;->c(Lcom/aggmoread/sdk/z/a/u/q;)[F

    move-result-object v0

    aput p1, v0, v4

    :cond_4
    :goto_1
    return-void
.end method
