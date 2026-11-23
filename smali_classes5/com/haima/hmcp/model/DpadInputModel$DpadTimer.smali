.class Lcom/haima/hmcp/model/DpadInputModel$DpadTimer;
.super Lcom/haima/hmcp/widgets/CountDownTimer;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/haima/hmcp/model/DpadInputModel;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "DpadTimer"
.end annotation


# instance fields
.field private coord:Lcom/haima/hmcp/beans/PointCoord;

.field private i:I

.field private keycode:I

.field private listener:Lcom/haima/hmcp/listeners/DpadTimerListener;

.field final synthetic this$0:Lcom/haima/hmcp/model/DpadInputModel;


# direct methods
.method public constructor <init>(Lcom/haima/hmcp/model/DpadInputModel;JJILcom/haima/hmcp/beans/PointCoord;Lcom/haima/hmcp/enums/ScreenOrientation;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/haima/hmcp/model/DpadInputModel$DpadTimer;->this$0:Lcom/haima/hmcp/model/DpadInputModel;

    .line 2
    .line 3
    invoke-direct {p0, p2, p3, p4, p5}, Lcom/haima/hmcp/widgets/CountDownTimer;-><init>(JJ)V

    .line 4
    .line 5
    .line 6
    const/4 p1, 0x0

    .line 7
    iput p1, p0, Lcom/haima/hmcp/model/DpadInputModel$DpadTimer;->i:I

    .line 8
    .line 9
    sget-object p1, Lcom/haima/hmcp/enums/ScreenOrientation;->PORTRAIT:Lcom/haima/hmcp/enums/ScreenOrientation;

    .line 10
    .line 11
    if-ne p8, p1, :cond_0

    .line 12
    .line 13
    packed-switch p6, :pswitch_data_0

    .line 14
    .line 15
    .line 16
    goto :goto_0

    .line 17
    :pswitch_0
    const/16 p1, 0x13

    .line 18
    .line 19
    iput p1, p0, Lcom/haima/hmcp/model/DpadInputModel$DpadTimer;->keycode:I

    .line 20
    .line 21
    goto :goto_0

    .line 22
    :pswitch_1
    const/16 p1, 0x14

    .line 23
    .line 24
    iput p1, p0, Lcom/haima/hmcp/model/DpadInputModel$DpadTimer;->keycode:I

    .line 25
    .line 26
    goto :goto_0

    .line 27
    :pswitch_2
    const/16 p1, 0x16

    .line 28
    .line 29
    iput p1, p0, Lcom/haima/hmcp/model/DpadInputModel$DpadTimer;->keycode:I

    .line 30
    .line 31
    goto :goto_0

    .line 32
    :pswitch_3
    const/16 p1, 0x15

    .line 33
    .line 34
    iput p1, p0, Lcom/haima/hmcp/model/DpadInputModel$DpadTimer;->keycode:I

    .line 35
    .line 36
    goto :goto_0

    .line 37
    :cond_0
    iput p6, p0, Lcom/haima/hmcp/model/DpadInputModel$DpadTimer;->keycode:I

    .line 38
    .line 39
    :goto_0
    iput-object p7, p0, Lcom/haima/hmcp/model/DpadInputModel$DpadTimer;->coord:Lcom/haima/hmcp/beans/PointCoord;

    .line 40
    .line 41
    return-void

    .line 42
    nop

    .line 43
    :pswitch_data_0
    .packed-switch 0x13
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private updateDpadPoint(Lcom/haima/hmcp/beans/FPoint;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/haima/hmcp/model/DpadInputModel$DpadTimer;->listener:Lcom/haima/hmcp/listeners/DpadTimerListener;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-interface {v0, p1}, Lcom/haima/hmcp/listeners/DpadTimerListener;->onUpdateDpadPoint(Lcom/haima/hmcp/beans/FPoint;)V

    .line 6
    .line 7
    .line 8
    :cond_0
    return-void
.end method


# virtual methods
.method public onFinish()V
    .locals 0

    return-void
.end method

.method public onTick(J)V
    .locals 6

    .line 1
    iget p1, p0, Lcom/haima/hmcp/model/DpadInputModel$DpadTimer;->i:I

    .line 2
    .line 3
    add-int/lit8 p1, p1, 0x1

    .line 4
    .line 5
    iput p1, p0, Lcom/haima/hmcp/model/DpadInputModel$DpadTimer;->i:I

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
    iput p1, p0, Lcom/haima/hmcp/model/DpadInputModel$DpadTimer;->i:I

    .line 13
    .line 14
    iget p2, p0, Lcom/haima/hmcp/model/DpadInputModel$DpadTimer;->keycode:I

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
    const/4 v1, 0x0

    .line 25
    goto :goto_1

    .line 26
    :pswitch_0
    iget-object p2, p0, Lcom/haima/hmcp/model/DpadInputModel$DpadTimer;->this$0:Lcom/haima/hmcp/model/DpadInputModel;

    .line 27
    .line 28
    new-instance v1, Lcom/haima/hmcp/beans/FPoint;

    .line 29
    .line 30
    iget-object v3, p0, Lcom/haima/hmcp/model/DpadInputModel$DpadTimer;->coord:Lcom/haima/hmcp/beans/PointCoord;

    .line 31
    .line 32
    iget v4, v3, Lcom/haima/hmcp/beans/PointCoord;->x:F

    .line 33
    .line 34
    iget v5, v3, Lcom/haima/hmcp/beans/PointCoord;->rx:F

    .line 35
    .line 36
    int-to-float p1, p1

    .line 37
    mul-float p1, p1, v0

    .line 38
    .line 39
    mul-float v5, v5, p1

    .line 40
    .line 41
    add-float/2addr v4, v5

    .line 42
    iget p1, v3, Lcom/haima/hmcp/beans/PointCoord;->y:F

    .line 43
    .line 44
    invoke-direct {v1, v4, p1}, Lcom/haima/hmcp/beans/FPoint;-><init>(FF)V

    .line 45
    .line 46
    .line 47
    invoke-static {p2, v2, v1}, Lcom/haima/hmcp/model/DpadInputModel;->access$100(Lcom/haima/hmcp/model/DpadInputModel;ILcom/haima/hmcp/beans/FPoint;)V

    .line 48
    .line 49
    .line 50
    goto :goto_1

    .line 51
    :pswitch_1
    iget-object p2, p0, Lcom/haima/hmcp/model/DpadInputModel$DpadTimer;->this$0:Lcom/haima/hmcp/model/DpadInputModel;

    .line 52
    .line 53
    new-instance v0, Lcom/haima/hmcp/beans/FPoint;

    .line 54
    .line 55
    iget-object v3, p0, Lcom/haima/hmcp/model/DpadInputModel$DpadTimer;->coord:Lcom/haima/hmcp/beans/PointCoord;

    .line 56
    .line 57
    iget v4, v3, Lcom/haima/hmcp/beans/PointCoord;->x:F

    .line 58
    .line 59
    iget v5, v3, Lcom/haima/hmcp/beans/PointCoord;->rx:F

    .line 60
    .line 61
    int-to-float p1, p1

    .line 62
    mul-float p1, p1, v1

    .line 63
    .line 64
    mul-float v5, v5, p1

    .line 65
    .line 66
    add-float/2addr v4, v5

    .line 67
    iget p1, v3, Lcom/haima/hmcp/beans/PointCoord;->y:F

    .line 68
    .line 69
    invoke-direct {v0, v4, p1}, Lcom/haima/hmcp/beans/FPoint;-><init>(FF)V

    .line 70
    .line 71
    .line 72
    invoke-static {p2, v2, v0}, Lcom/haima/hmcp/model/DpadInputModel;->access$100(Lcom/haima/hmcp/model/DpadInputModel;ILcom/haima/hmcp/beans/FPoint;)V

    .line 73
    .line 74
    .line 75
    goto :goto_0

    .line 76
    :pswitch_2
    iget-object p2, p0, Lcom/haima/hmcp/model/DpadInputModel$DpadTimer;->this$0:Lcom/haima/hmcp/model/DpadInputModel;

    .line 77
    .line 78
    new-instance v1, Lcom/haima/hmcp/beans/FPoint;

    .line 79
    .line 80
    iget-object v3, p0, Lcom/haima/hmcp/model/DpadInputModel$DpadTimer;->coord:Lcom/haima/hmcp/beans/PointCoord;

    .line 81
    .line 82
    iget v4, v3, Lcom/haima/hmcp/beans/PointCoord;->x:F

    .line 83
    .line 84
    iget v5, v3, Lcom/haima/hmcp/beans/PointCoord;->y:F

    .line 85
    .line 86
    iget v3, v3, Lcom/haima/hmcp/beans/PointCoord;->ry:F

    .line 87
    .line 88
    int-to-float p1, p1

    .line 89
    mul-float p1, p1, v0

    .line 90
    .line 91
    mul-float v3, v3, p1

    .line 92
    .line 93
    add-float/2addr v5, v3

    .line 94
    invoke-direct {v1, v4, v5}, Lcom/haima/hmcp/beans/FPoint;-><init>(FF)V

    .line 95
    .line 96
    .line 97
    invoke-static {p2, v2, v1}, Lcom/haima/hmcp/model/DpadInputModel;->access$100(Lcom/haima/hmcp/model/DpadInputModel;ILcom/haima/hmcp/beans/FPoint;)V

    .line 98
    .line 99
    .line 100
    goto :goto_1

    .line 101
    :pswitch_3
    iget-object p2, p0, Lcom/haima/hmcp/model/DpadInputModel$DpadTimer;->this$0:Lcom/haima/hmcp/model/DpadInputModel;

    .line 102
    .line 103
    new-instance v0, Lcom/haima/hmcp/beans/FPoint;

    .line 104
    .line 105
    iget-object v3, p0, Lcom/haima/hmcp/model/DpadInputModel$DpadTimer;->coord:Lcom/haima/hmcp/beans/PointCoord;

    .line 106
    .line 107
    iget v4, v3, Lcom/haima/hmcp/beans/PointCoord;->x:F

    .line 108
    .line 109
    iget v5, v3, Lcom/haima/hmcp/beans/PointCoord;->y:F

    .line 110
    .line 111
    iget v3, v3, Lcom/haima/hmcp/beans/PointCoord;->ry:F

    .line 112
    .line 113
    int-to-float p1, p1

    .line 114
    mul-float p1, p1, v1

    .line 115
    .line 116
    mul-float v3, v3, p1

    .line 117
    .line 118
    add-float/2addr v5, v3

    .line 119
    invoke-direct {v0, v4, v5}, Lcom/haima/hmcp/beans/FPoint;-><init>(FF)V

    .line 120
    .line 121
    .line 122
    invoke-static {p2, v2, v0}, Lcom/haima/hmcp/model/DpadInputModel;->access$100(Lcom/haima/hmcp/model/DpadInputModel;ILcom/haima/hmcp/beans/FPoint;)V

    .line 123
    .line 124
    .line 125
    :goto_0
    move-object v1, v0

    .line 126
    :goto_1
    invoke-direct {p0, v1}, Lcom/haima/hmcp/model/DpadInputModel$DpadTimer;->updateDpadPoint(Lcom/haima/hmcp/beans/FPoint;)V

    .line 127
    .line 128
    .line 129
    return-void

    .line 130
    nop

    .line 131
    :pswitch_data_0
    .packed-switch 0x13
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public setListener(Lcom/haima/hmcp/listeners/DpadTimerListener;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/haima/hmcp/model/DpadInputModel$DpadTimer;->listener:Lcom/haima/hmcp/listeners/DpadTimerListener;

    .line 2
    .line 3
    return-void
.end method
