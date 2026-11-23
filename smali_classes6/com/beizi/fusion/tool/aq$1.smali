.class Lcom/beizi/fusion/tool/aq$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/hardware/SensorEventListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/beizi/fusion/tool/aq;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/beizi/fusion/tool/aq;


# direct methods
.method constructor <init>(Lcom/beizi/fusion/tool/aq;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/beizi/fusion/tool/aq$1;->a:Lcom/beizi/fusion/tool/aq;

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
    :try_start_0
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
    if-ne v0, v1, :cond_3

    .line 15
    .line 16
    iget-object v0, p0, Lcom/beizi/fusion/tool/aq$1;->a:Lcom/beizi/fusion/tool/aq;

    .line 17
    .line 18
    invoke-static {v0}, Lcom/beizi/fusion/tool/aq;->a(Lcom/beizi/fusion/tool/aq;)Z

    .line 19
    .line 20
    .line 21
    move-result v0

    .line 22
    if-nez v0, :cond_2

    .line 23
    .line 24
    iget-object v0, p0, Lcom/beizi/fusion/tool/aq$1;->a:Lcom/beizi/fusion/tool/aq;

    .line 25
    .line 26
    invoke-static {v0, p1}, Lcom/beizi/fusion/tool/aq;->a(Lcom/beizi/fusion/tool/aq;Landroid/hardware/SensorEvent;)V

    .line 27
    .line 28
    .line 29
    goto :goto_0

    .line 30
    :cond_2
    iget-object v0, p0, Lcom/beizi/fusion/tool/aq$1;->a:Lcom/beizi/fusion/tool/aq;

    .line 31
    .line 32
    invoke-static {v0, p1}, Lcom/beizi/fusion/tool/aq;->b(Lcom/beizi/fusion/tool/aq;Landroid/hardware/SensorEvent;)V

    .line 33
    .line 34
    .line 35
    goto :goto_0

    .line 36
    :cond_3
    const/4 v1, 0x2

    .line 37
    if-ne v0, v1, :cond_4

    .line 38
    .line 39
    iget-object v0, p0, Lcom/beizi/fusion/tool/aq$1;->a:Lcom/beizi/fusion/tool/aq;

    .line 40
    .line 41
    iget-object p1, p1, Landroid/hardware/SensorEvent;->values:[F

    .line 42
    .line 43
    invoke-virtual {p1}, [F->clone()Ljava/lang/Object;

    .line 44
    .line 45
    .line 46
    move-result-object p1

    .line 47
    check-cast p1, [F

    .line 48
    .line 49
    invoke-static {v0, p1}, Lcom/beizi/fusion/tool/aq;->a(Lcom/beizi/fusion/tool/aq;[F)[F

    .line 50
    .line 51
    .line 52
    goto :goto_0

    .line 53
    :cond_4
    const/4 v1, 0x4

    .line 54
    if-ne v0, v1, :cond_6

    .line 55
    .line 56
    iget-object v0, p0, Lcom/beizi/fusion/tool/aq$1;->a:Lcom/beizi/fusion/tool/aq;

    .line 57
    .line 58
    invoke-static {v0}, Lcom/beizi/fusion/tool/aq;->a(Lcom/beizi/fusion/tool/aq;)Z

    .line 59
    .line 60
    .line 61
    move-result v0

    .line 62
    if-nez v0, :cond_5

    .line 63
    .line 64
    iget-object v0, p0, Lcom/beizi/fusion/tool/aq$1;->a:Lcom/beizi/fusion/tool/aq;

    .line 65
    .line 66
    invoke-static {v0, p1}, Lcom/beizi/fusion/tool/aq;->c(Lcom/beizi/fusion/tool/aq;Landroid/hardware/SensorEvent;)V

    .line 67
    .line 68
    .line 69
    goto :goto_0

    .line 70
    :cond_5
    iget-object v0, p0, Lcom/beizi/fusion/tool/aq$1;->a:Lcom/beizi/fusion/tool/aq;

    .line 71
    .line 72
    invoke-static {v0, p1}, Lcom/beizi/fusion/tool/aq;->d(Lcom/beizi/fusion/tool/aq;Landroid/hardware/SensorEvent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 73
    .line 74
    .line 75
    goto :goto_0

    .line 76
    :catch_0
    move-exception p1

    .line 77
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 78
    .line 79
    .line 80
    :cond_6
    :goto_0
    return-void
.end method
