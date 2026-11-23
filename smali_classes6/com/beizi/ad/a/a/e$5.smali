.class Lcom/beizi/ad/a/a/e$5;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/hardware/SensorEventListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/beizi/ad/a/a/e;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/beizi/ad/a/a/e;


# direct methods
.method constructor <init>(Lcom/beizi/ad/a/a/e;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/beizi/ad/a/a/e$5;->a:Lcom/beizi/ad/a/a/e;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public onAccuracyChanged(Landroid/hardware/Sensor;I)V
    .locals 0

    return-void
.end method

.method public onSensorChanged(Landroid/hardware/SensorEvent;)V
    .locals 2

    .line 1
    if-nez p1, :cond_0

    .line 2
    .line 3
    return-void

    .line 4
    :cond_0
    iget-object v0, p1, Landroid/hardware/SensorEvent;->sensor:Landroid/hardware/Sensor;

    .line 5
    .line 6
    if-nez v0, :cond_1

    .line 7
    .line 8
    return-void

    .line 9
    :cond_1
    invoke-virtual {v0}, Landroid/hardware/Sensor;->getType()I

    .line 10
    .line 11
    .line 12
    move-result v0

    .line 13
    const/4 v1, 0x1

    .line 14
    if-ne v0, v1, :cond_2

    .line 15
    .line 16
    iget-object v0, p0, Lcom/beizi/ad/a/a/e$5;->a:Lcom/beizi/ad/a/a/e;

    .line 17
    .line 18
    invoke-static {v0, p1}, Lcom/beizi/ad/a/a/e;->a(Lcom/beizi/ad/a/a/e;Landroid/hardware/SensorEvent;)V

    .line 19
    .line 20
    .line 21
    goto :goto_0

    .line 22
    :cond_2
    const/4 v1, 0x4

    .line 23
    if-ne v0, v1, :cond_3

    .line 24
    .line 25
    iget-object v0, p0, Lcom/beizi/ad/a/a/e$5;->a:Lcom/beizi/ad/a/a/e;

    .line 26
    .line 27
    invoke-static {v0, p1}, Lcom/beizi/ad/a/a/e;->b(Lcom/beizi/ad/a/a/e;Landroid/hardware/SensorEvent;)V

    .line 28
    .line 29
    .line 30
    :cond_3
    :goto_0
    return-void
.end method
