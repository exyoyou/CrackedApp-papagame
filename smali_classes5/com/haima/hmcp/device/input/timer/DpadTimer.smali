.class public Lcom/haima/hmcp/device/input/timer/DpadTimer;
.super Lcom/haima/hmcp/widgets/CountDownTimer;
.source "SourceFile"


# instance fields
.field private coord:Lcom/haima/hmcp/beans/PointCoord;

.field private final deviceInputSend:Lcom/haima/hmcp/device/input/send/DeviceInputSend;

.field private dpadPoint:Lcom/haima/hmcp/beans/FPoint;

.field private i:I

.field private keycode:I


# direct methods
.method public constructor <init>(JJILcom/haima/hmcp/beans/PointCoord;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/haima/hmcp/widgets/CountDownTimer;-><init>(JJ)V

    .line 2
    .line 3
    .line 4
    const/4 p1, 0x0

    .line 5
    iput p1, p0, Lcom/haima/hmcp/device/input/timer/DpadTimer;->i:I

    .line 6
    .line 7
    invoke-static {}, Lcom/haima/hmcp/device/input/send/DeviceInputSend;->getInstance()Lcom/haima/hmcp/device/input/send/DeviceInputSend;

    .line 8
    .line 9
    .line 10
    move-result-object p1

    .line 11
    iput-object p1, p0, Lcom/haima/hmcp/device/input/timer/DpadTimer;->deviceInputSend:Lcom/haima/hmcp/device/input/send/DeviceInputSend;

    .line 12
    .line 13
    invoke-virtual {p1}, Lcom/haima/hmcp/device/input/send/DeviceInputSend;->getScreenOrientation()Lcom/haima/hmcp/enums/ScreenOrientation;

    .line 14
    .line 15
    .line 16
    move-result-object p1

    .line 17
    sget-object p2, Lcom/haima/hmcp/enums/ScreenOrientation;->PORTRAIT:Lcom/haima/hmcp/enums/ScreenOrientation;

    .line 18
    .line 19
    if-ne p1, p2, :cond_0

    .line 20
    .line 21
    packed-switch p5, :pswitch_data_0

    .line 22
    .line 23
    .line 24
    goto :goto_0

    .line 25
    :pswitch_0
    const/16 p1, 0x13

    .line 26
    .line 27
    iput p1, p0, Lcom/haima/hmcp/device/input/timer/DpadTimer;->keycode:I

    .line 28
    .line 29
    goto :goto_0

    .line 30
    :pswitch_1
    const/16 p1, 0x14

    .line 31
    .line 32
    iput p1, p0, Lcom/haima/hmcp/device/input/timer/DpadTimer;->keycode:I

    .line 33
    .line 34
    goto :goto_0

    .line 35
    :pswitch_2
    const/16 p1, 0x16

    .line 36
    .line 37
    iput p1, p0, Lcom/haima/hmcp/device/input/timer/DpadTimer;->keycode:I

    .line 38
    .line 39
    goto :goto_0

    .line 40
    :pswitch_3
    const/16 p1, 0x15

    .line 41
    .line 42
    iput p1, p0, Lcom/haima/hmcp/device/input/timer/DpadTimer;->keycode:I

    .line 43
    .line 44
    goto :goto_0

    .line 45
    :cond_0
    iput p5, p0, Lcom/haima/hmcp/device/input/timer/DpadTimer;->keycode:I

    .line 46
    .line 47
    :goto_0
    iput-object p6, p0, Lcom/haima/hmcp/device/input/timer/DpadTimer;->coord:Lcom/haima/hmcp/beans/PointCoord;

    .line 48
    .line 49
    return-void

    .line 50
    nop

    .line 51
    :pswitch_data_0
    .packed-switch 0x13
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method public getDpadPoint()Lcom/haima/hmcp/beans/FPoint;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/haima/hmcp/device/input/timer/DpadTimer;->dpadPoint:Lcom/haima/hmcp/beans/FPoint;

    .line 2
    .line 3
    return-object v0
.end method

.method public onFinish()V
    .locals 0

    return-void
.end method

.method public onTick(J)V
    .locals 6

    .line 1
    iget p1, p0, Lcom/haima/hmcp/device/input/timer/DpadTimer;->i:I

    .line 2
    .line 3
    add-int/lit8 p1, p1, 0x1

    .line 4
    .line 5
    iput p1, p0, Lcom/haima/hmcp/device/input/timer/DpadTimer;->i:I

    .line 6
    .line 7
    const/4 p2, 0x4

    .line 8
    invoke-static {p1, p2}, Ljava/lang/Math;->min(II)I

    .line 9
    .line 10
    .line 11
    move-result p1

    .line 12
    iput p1, p0, Lcom/haima/hmcp/device/input/timer/DpadTimer;->i:I

    .line 13
    .line 14
    iget p2, p0, Lcom/haima/hmcp/device/input/timer/DpadTimer;->keycode:I

    .line 15
    .line 16
    const/high16 v0, 0x3e800000    # 0.25f

    .line 17
    .line 18
    const/high16 v1, -0x41800000    # -0.25f

    .line 19
    .line 20
    const/4 v2, 0x3

    .line 21
    packed-switch p2, :pswitch_data_0

    .line 22
    .line 23
    .line 24
    goto :goto_0

    .line 25
    :pswitch_0
    iget-object p2, p0, Lcom/haima/hmcp/device/input/timer/DpadTimer;->deviceInputSend:Lcom/haima/hmcp/device/input/send/DeviceInputSend;

    .line 26
    .line 27
    new-instance v1, Lcom/haima/hmcp/beans/FPoint;

    .line 28
    .line 29
    iget-object v3, p0, Lcom/haima/hmcp/device/input/timer/DpadTimer;->coord:Lcom/haima/hmcp/beans/PointCoord;

    .line 30
    .line 31
    iget v4, v3, Lcom/haima/hmcp/beans/PointCoord;->x:F

    .line 32
    .line 33
    iget v5, v3, Lcom/haima/hmcp/beans/PointCoord;->rx:F

    .line 34
    .line 35
    int-to-float p1, p1

    .line 36
    mul-float p1, p1, v0

    .line 37
    .line 38
    mul-float v5, v5, p1

    .line 39
    .line 40
    add-float/2addr v4, v5

    .line 41
    iget p1, v3, Lcom/haima/hmcp/beans/PointCoord;->y:F

    .line 42
    .line 43
    invoke-direct {v1, v4, p1}, Lcom/haima/hmcp/beans/FPoint;-><init>(FF)V

    .line 44
    .line 45
    .line 46
    iput-object v1, p0, Lcom/haima/hmcp/device/input/timer/DpadTimer;->dpadPoint:Lcom/haima/hmcp/beans/FPoint;

    .line 47
    .line 48
    invoke-virtual {p2, v2, v1}, Lcom/haima/hmcp/device/input/send/DeviceInputSend;->sendMotionEvent(ILcom/haima/hmcp/beans/FPoint;)V

    .line 49
    .line 50
    .line 51
    goto :goto_0

    .line 52
    :pswitch_1
    iget-object p2, p0, Lcom/haima/hmcp/device/input/timer/DpadTimer;->deviceInputSend:Lcom/haima/hmcp/device/input/send/DeviceInputSend;

    .line 53
    .line 54
    new-instance v0, Lcom/haima/hmcp/beans/FPoint;

    .line 55
    .line 56
    iget-object v3, p0, Lcom/haima/hmcp/device/input/timer/DpadTimer;->coord:Lcom/haima/hmcp/beans/PointCoord;

    .line 57
    .line 58
    iget v4, v3, Lcom/haima/hmcp/beans/PointCoord;->x:F

    .line 59
    .line 60
    iget v5, v3, Lcom/haima/hmcp/beans/PointCoord;->rx:F

    .line 61
    .line 62
    int-to-float p1, p1

    .line 63
    mul-float p1, p1, v1

    .line 64
    .line 65
    mul-float v5, v5, p1

    .line 66
    .line 67
    add-float/2addr v4, v5

    .line 68
    iget p1, v3, Lcom/haima/hmcp/beans/PointCoord;->y:F

    .line 69
    .line 70
    invoke-direct {v0, v4, p1}, Lcom/haima/hmcp/beans/FPoint;-><init>(FF)V

    .line 71
    .line 72
    .line 73
    iput-object v0, p0, Lcom/haima/hmcp/device/input/timer/DpadTimer;->dpadPoint:Lcom/haima/hmcp/beans/FPoint;

    .line 74
    .line 75
    invoke-virtual {p2, v2, v0}, Lcom/haima/hmcp/device/input/send/DeviceInputSend;->sendMotionEvent(ILcom/haima/hmcp/beans/FPoint;)V

    .line 76
    .line 77
    .line 78
    goto :goto_0

    .line 79
    :pswitch_2
    iget-object p2, p0, Lcom/haima/hmcp/device/input/timer/DpadTimer;->deviceInputSend:Lcom/haima/hmcp/device/input/send/DeviceInputSend;

    .line 80
    .line 81
    new-instance v1, Lcom/haima/hmcp/beans/FPoint;

    .line 82
    .line 83
    iget-object v3, p0, Lcom/haima/hmcp/device/input/timer/DpadTimer;->coord:Lcom/haima/hmcp/beans/PointCoord;

    .line 84
    .line 85
    iget v4, v3, Lcom/haima/hmcp/beans/PointCoord;->x:F

    .line 86
    .line 87
    iget v5, v3, Lcom/haima/hmcp/beans/PointCoord;->y:F

    .line 88
    .line 89
    iget v3, v3, Lcom/haima/hmcp/beans/PointCoord;->ry:F

    .line 90
    .line 91
    int-to-float p1, p1

    .line 92
    mul-float p1, p1, v0

    .line 93
    .line 94
    mul-float v3, v3, p1

    .line 95
    .line 96
    add-float/2addr v5, v3

    .line 97
    invoke-direct {v1, v4, v5}, Lcom/haima/hmcp/beans/FPoint;-><init>(FF)V

    .line 98
    .line 99
    .line 100
    iput-object v1, p0, Lcom/haima/hmcp/device/input/timer/DpadTimer;->dpadPoint:Lcom/haima/hmcp/beans/FPoint;

    .line 101
    .line 102
    invoke-virtual {p2, v2, v1}, Lcom/haima/hmcp/device/input/send/DeviceInputSend;->sendMotionEvent(ILcom/haima/hmcp/beans/FPoint;)V

    .line 103
    .line 104
    .line 105
    goto :goto_0

    .line 106
    :pswitch_3
    iget-object p2, p0, Lcom/haima/hmcp/device/input/timer/DpadTimer;->deviceInputSend:Lcom/haima/hmcp/device/input/send/DeviceInputSend;

    .line 107
    .line 108
    new-instance v0, Lcom/haima/hmcp/beans/FPoint;

    .line 109
    .line 110
    iget-object v3, p0, Lcom/haima/hmcp/device/input/timer/DpadTimer;->coord:Lcom/haima/hmcp/beans/PointCoord;

    .line 111
    .line 112
    iget v4, v3, Lcom/haima/hmcp/beans/PointCoord;->x:F

    .line 113
    .line 114
    iget v5, v3, Lcom/haima/hmcp/beans/PointCoord;->y:F

    .line 115
    .line 116
    iget v3, v3, Lcom/haima/hmcp/beans/PointCoord;->ry:F

    .line 117
    .line 118
    int-to-float p1, p1

    .line 119
    mul-float p1, p1, v1

    .line 120
    .line 121
    mul-float v3, v3, p1

    .line 122
    .line 123
    add-float/2addr v5, v3

    .line 124
    invoke-direct {v0, v4, v5}, Lcom/haima/hmcp/beans/FPoint;-><init>(FF)V

    .line 125
    .line 126
    .line 127
    iput-object v0, p0, Lcom/haima/hmcp/device/input/timer/DpadTimer;->dpadPoint:Lcom/haima/hmcp/beans/FPoint;

    .line 128
    .line 129
    invoke-virtual {p2, v2, v0}, Lcom/haima/hmcp/device/input/send/DeviceInputSend;->sendMotionEvent(ILcom/haima/hmcp/beans/FPoint;)V

    .line 130
    .line 131
    .line 132
    :goto_0
    return-void

    .line 133
    :pswitch_data_0
    .packed-switch 0x13
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
