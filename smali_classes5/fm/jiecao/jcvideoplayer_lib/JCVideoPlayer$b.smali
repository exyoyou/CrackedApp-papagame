.class public Lfm/jiecao/jcvideoplayer_lib/JCVideoPlayer$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/hardware/SensorEventListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lfm/jiecao/jcvideoplayer_lib/JCVideoPlayer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "b"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method


# virtual methods
.method public onAccuracyChanged(Landroid/hardware/Sensor;I)V
    .locals 0

    return-void
.end method

.method public onSensorChanged(Landroid/hardware/SensorEvent;)V
    .locals 5

    .line 1
    iget-object p1, p1, Landroid/hardware/SensorEvent;->values:[F

    .line 2
    .line 3
    const/4 v0, 0x0

    .line 4
    aget v0, p1, v0

    .line 5
    .line 6
    const/4 v1, 0x1

    .line 7
    aget v1, p1, v1

    .line 8
    .line 9
    const/4 v2, 0x2

    .line 10
    aget p1, p1, v2

    .line 11
    .line 12
    const/high16 p1, -0x3e900000    # -15.0f

    .line 13
    .line 14
    cmpl-float p1, v0, p1

    .line 15
    .line 16
    if-lez p1, :cond_0

    .line 17
    .line 18
    const/high16 p1, -0x3ee00000    # -10.0f

    .line 19
    .line 20
    cmpg-float p1, v0, p1

    .line 21
    .line 22
    if-ltz p1, :cond_1

    .line 23
    .line 24
    :cond_0
    const/high16 p1, 0x41700000    # 15.0f

    .line 25
    .line 26
    cmpg-float p1, v0, p1

    .line 27
    .line 28
    if-gez p1, :cond_3

    .line 29
    .line 30
    const/high16 p1, 0x41200000    # 10.0f

    .line 31
    .line 32
    cmpl-float p1, v0, p1

    .line 33
    .line 34
    if-lez p1, :cond_3

    .line 35
    .line 36
    :cond_1
    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    .line 37
    .line 38
    .line 39
    move-result p1

    .line 40
    float-to-double v1, p1

    .line 41
    const-wide/high16 v3, 0x3ff8000000000000L    # 1.5

    .line 42
    .line 43
    cmpg-double p1, v1, v3

    .line 44
    .line 45
    if-gez p1, :cond_3

    .line 46
    .line 47
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 48
    .line 49
    .line 50
    move-result-wide v1

    .line 51
    sget-wide v3, Lfm/jiecao/jcvideoplayer_lib/JCVideoPlayer;->c2:J

    .line 52
    .line 53
    sub-long/2addr v1, v3

    .line 54
    const-wide/16 v3, 0x7d0

    .line 55
    .line 56
    cmp-long p1, v1, v3

    .line 57
    .line 58
    if-lez p1, :cond_3

    .line 59
    .line 60
    invoke-static {}, Lfm/jiecao/jcvideoplayer_lib/f;->b()Lfm/jiecao/jcvideoplayer_lib/JCVideoPlayer;

    .line 61
    .line 62
    .line 63
    move-result-object p1

    .line 64
    if-eqz p1, :cond_2

    .line 65
    .line 66
    invoke-static {}, Lfm/jiecao/jcvideoplayer_lib/f;->b()Lfm/jiecao/jcvideoplayer_lib/JCVideoPlayer;

    .line 67
    .line 68
    .line 69
    move-result-object p1

    .line 70
    invoke-virtual {p1, v0}, Lfm/jiecao/jcvideoplayer_lib/JCVideoPlayer;->b(F)V

    .line 71
    .line 72
    .line 73
    :cond_2
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 74
    .line 75
    .line 76
    move-result-wide v0

    .line 77
    sput-wide v0, Lfm/jiecao/jcvideoplayer_lib/JCVideoPlayer;->c2:J

    .line 78
    .line 79
    :cond_3
    return-void
.end method
