.class Lcom/haima/hmcp/model/KeyboardInputModel$KeyboardDirectionTimer;
.super Landroid/os/CountDownTimer;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/haima/hmcp/model/KeyboardInputModel;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "KeyboardDirectionTimer"
.end annotation


# instance fields
.field private coord:Lcom/haima/hmcp/beans/PointCoord;

.field private i:I

.field private keyboardX:I

.field private keyboardY:I

.field private listener:Lcom/haima/hmcp/listeners/KeyboardDirectionTimerListener;

.field private rx:F

.field private ry:F

.field final synthetic this$0:Lcom/haima/hmcp/model/KeyboardInputModel;


# direct methods
.method public constructor <init>(Lcom/haima/hmcp/model/KeyboardInputModel;JJLcom/haima/hmcp/beans/PointCoord;IIFF)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/haima/hmcp/model/KeyboardInputModel$KeyboardDirectionTimer;->this$0:Lcom/haima/hmcp/model/KeyboardInputModel;

    .line 2
    .line 3
    invoke-direct {p0, p2, p3, p4, p5}, Landroid/os/CountDownTimer;-><init>(JJ)V

    .line 4
    .line 5
    .line 6
    const/4 p1, 0x0

    .line 7
    iput p1, p0, Lcom/haima/hmcp/model/KeyboardInputModel$KeyboardDirectionTimer;->i:I

    .line 8
    .line 9
    iput-object p6, p0, Lcom/haima/hmcp/model/KeyboardInputModel$KeyboardDirectionTimer;->coord:Lcom/haima/hmcp/beans/PointCoord;

    .line 10
    .line 11
    iput p7, p0, Lcom/haima/hmcp/model/KeyboardInputModel$KeyboardDirectionTimer;->keyboardX:I

    .line 12
    .line 13
    iput p8, p0, Lcom/haima/hmcp/model/KeyboardInputModel$KeyboardDirectionTimer;->keyboardY:I

    .line 14
    .line 15
    iput p9, p0, Lcom/haima/hmcp/model/KeyboardInputModel$KeyboardDirectionTimer;->rx:F

    .line 16
    .line 17
    iput p10, p0, Lcom/haima/hmcp/model/KeyboardInputModel$KeyboardDirectionTimer;->ry:F

    .line 18
    .line 19
    invoke-static {}, Lcom/haima/hmcp/model/KeyboardInputModel;->access$000()Ljava/lang/String;

    .line 20
    .line 21
    .line 22
    move-result-object p1

    .line 23
    new-instance p2, Ljava/lang/StringBuilder;

    .line 24
    .line 25
    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    .line 26
    .line 27
    .line 28
    const-string p3, "==KeyboardDirectionTimer = "

    .line 29
    .line 30
    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 31
    .line 32
    .line 33
    invoke-virtual {p2, p9}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 34
    .line 35
    .line 36
    const-string p3, "   "

    .line 37
    .line 38
    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 39
    .line 40
    .line 41
    invoke-virtual {p2, p10}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 42
    .line 43
    .line 44
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 45
    .line 46
    .line 47
    move-result-object p2

    .line 48
    invoke-static {p1, p2}, Lcom/haima/hmcp/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 49
    .line 50
    .line 51
    return-void
.end method

.method private updatePoint(FF)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/haima/hmcp/model/KeyboardInputModel$KeyboardDirectionTimer;->listener:Lcom/haima/hmcp/listeners/KeyboardDirectionTimerListener;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-interface {v0, p1, p2}, Lcom/haima/hmcp/listeners/KeyboardDirectionTimerListener;->onUpdatePoint(FF)V

    .line 6
    .line 7
    .line 8
    :cond_0
    return-void
.end method


# virtual methods
.method public onFinish()V
    .locals 2

    .line 1
    const-wide/16 v0, 0x0

    .line 2
    .line 3
    invoke-virtual {p0, v0, v1}, Lcom/haima/hmcp/model/KeyboardInputModel$KeyboardDirectionTimer;->onTick(J)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public onTick(J)V
    .locals 7

    .line 1
    iget p1, p0, Lcom/haima/hmcp/model/KeyboardInputModel$KeyboardDirectionTimer;->keyboardX:I

    .line 2
    .line 3
    if-nez p1, :cond_0

    .line 4
    .line 5
    iget p2, p0, Lcom/haima/hmcp/model/KeyboardInputModel$KeyboardDirectionTimer;->keyboardY:I

    .line 6
    .line 7
    if-nez p2, :cond_0

    .line 8
    .line 9
    return-void

    .line 10
    :cond_0
    iget p2, p0, Lcom/haima/hmcp/model/KeyboardInputModel$KeyboardDirectionTimer;->i:I

    .line 11
    .line 12
    const/4 v0, 0x1

    .line 13
    add-int/2addr p2, v0

    .line 14
    iput p2, p0, Lcom/haima/hmcp/model/KeyboardInputModel$KeyboardDirectionTimer;->i:I

    .line 15
    .line 16
    iget v1, p0, Lcom/haima/hmcp/model/KeyboardInputModel$KeyboardDirectionTimer;->rx:F

    .line 17
    .line 18
    const/4 v2, 0x0

    .line 19
    const v3, 0x3cf5c28f    # 0.03f

    .line 20
    .line 21
    .line 22
    const v4, 0x3d4ccccd    # 0.05f

    .line 23
    .line 24
    .line 25
    cmpl-float v1, v1, v2

    .line 26
    .line 27
    if-nez v1, :cond_1

    .line 28
    .line 29
    iget v1, p0, Lcom/haima/hmcp/model/KeyboardInputModel$KeyboardDirectionTimer;->ry:F

    .line 30
    .line 31
    cmpl-float v1, v1, v2

    .line 32
    .line 33
    if-nez v1, :cond_1

    .line 34
    .line 35
    iget-object v0, p0, Lcom/haima/hmcp/model/KeyboardInputModel$KeyboardDirectionTimer;->coord:Lcom/haima/hmcp/beans/PointCoord;

    .line 36
    .line 37
    iget v1, v0, Lcom/haima/hmcp/beans/PointCoord;->x:F

    .line 38
    .line 39
    int-to-float p1, p1

    .line 40
    iget v2, v0, Lcom/haima/hmcp/beans/PointCoord;->rx:F

    .line 41
    .line 42
    mul-float p1, p1, v2

    .line 43
    .line 44
    int-to-float v2, p2

    .line 45
    mul-float v2, v2, v3

    .line 46
    .line 47
    add-float/2addr v2, v4

    .line 48
    mul-float p1, p1, v2

    .line 49
    .line 50
    int-to-float v2, p2

    .line 51
    mul-float p1, p1, v2

    .line 52
    .line 53
    add-float/2addr v1, p1

    .line 54
    iget p1, v0, Lcom/haima/hmcp/beans/PointCoord;->y:F

    .line 55
    .line 56
    iget v2, p0, Lcom/haima/hmcp/model/KeyboardInputModel$KeyboardDirectionTimer;->keyboardY:I

    .line 57
    .line 58
    int-to-float v2, v2

    .line 59
    iget v0, v0, Lcom/haima/hmcp/beans/PointCoord;->ry:F

    .line 60
    .line 61
    mul-float v2, v2, v0

    .line 62
    .line 63
    int-to-float v0, p2

    .line 64
    mul-float v0, v0, v3

    .line 65
    .line 66
    add-float/2addr v0, v4

    .line 67
    mul-float v2, v2, v0

    .line 68
    .line 69
    int-to-float p2, p2

    .line 70
    mul-float v2, v2, p2

    .line 71
    .line 72
    add-float/2addr p1, v2

    .line 73
    invoke-direct {p0, v1, p1}, Lcom/haima/hmcp/model/KeyboardInputModel$KeyboardDirectionTimer;->updatePoint(FF)V

    .line 74
    .line 75
    .line 76
    goto :goto_0

    .line 77
    :cond_1
    int-to-float p1, p1

    .line 78
    iget p2, p0, Lcom/haima/hmcp/model/KeyboardInputModel$KeyboardDirectionTimer;->keyboardY:I

    .line 79
    .line 80
    int-to-float p2, p2

    .line 81
    invoke-static {p1, p2}, Lcom/haima/hmcp/utils/TrackBallUtil;->getPCdistence(FF)[Ljava/lang/String;

    .line 82
    .line 83
    .line 84
    move-result-object p1

    .line 85
    iget p2, p0, Lcom/haima/hmcp/model/KeyboardInputModel$KeyboardDirectionTimer;->rx:F

    .line 86
    .line 87
    iget-object v1, p0, Lcom/haima/hmcp/model/KeyboardInputModel$KeyboardDirectionTimer;->coord:Lcom/haima/hmcp/beans/PointCoord;

    .line 88
    .line 89
    iget v1, v1, Lcom/haima/hmcp/beans/PointCoord;->x:F

    .line 90
    .line 91
    const/4 v2, 0x0

    .line 92
    aget-object v2, p1, v2

    .line 93
    .line 94
    invoke-static {v2}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    .line 95
    .line 96
    .line 97
    move-result v2

    .line 98
    iget-object v5, p0, Lcom/haima/hmcp/model/KeyboardInputModel$KeyboardDirectionTimer;->coord:Lcom/haima/hmcp/beans/PointCoord;

    .line 99
    .line 100
    iget v6, v5, Lcom/haima/hmcp/beans/PointCoord;->rx:F

    .line 101
    .line 102
    mul-float v2, v2, v6

    .line 103
    .line 104
    add-float/2addr v1, v2

    .line 105
    iget v2, p0, Lcom/haima/hmcp/model/KeyboardInputModel$KeyboardDirectionTimer;->rx:F

    .line 106
    .line 107
    sub-float/2addr v1, v2

    .line 108
    iget v2, p0, Lcom/haima/hmcp/model/KeyboardInputModel$KeyboardDirectionTimer;->i:I

    .line 109
    .line 110
    int-to-float v6, v2

    .line 111
    mul-float v6, v6, v3

    .line 112
    .line 113
    add-float/2addr v6, v4

    .line 114
    mul-float v1, v1, v6

    .line 115
    .line 116
    int-to-float v2, v2

    .line 117
    mul-float v1, v1, v2

    .line 118
    .line 119
    add-float/2addr p2, v1

    .line 120
    iget v1, p0, Lcom/haima/hmcp/model/KeyboardInputModel$KeyboardDirectionTimer;->ry:F

    .line 121
    .line 122
    iget v2, v5, Lcom/haima/hmcp/beans/PointCoord;->y:F

    .line 123
    .line 124
    aget-object p1, p1, v0

    .line 125
    .line 126
    invoke-static {p1}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    .line 127
    .line 128
    .line 129
    move-result p1

    .line 130
    iget-object v0, p0, Lcom/haima/hmcp/model/KeyboardInputModel$KeyboardDirectionTimer;->coord:Lcom/haima/hmcp/beans/PointCoord;

    .line 131
    .line 132
    iget v0, v0, Lcom/haima/hmcp/beans/PointCoord;->ry:F

    .line 133
    .line 134
    mul-float p1, p1, v0

    .line 135
    .line 136
    add-float/2addr v2, p1

    .line 137
    iget p1, p0, Lcom/haima/hmcp/model/KeyboardInputModel$KeyboardDirectionTimer;->ry:F

    .line 138
    .line 139
    sub-float/2addr v2, p1

    .line 140
    iget p1, p0, Lcom/haima/hmcp/model/KeyboardInputModel$KeyboardDirectionTimer;->i:I

    .line 141
    .line 142
    int-to-float v0, p1

    .line 143
    mul-float v0, v0, v3

    .line 144
    .line 145
    add-float/2addr v0, v4

    .line 146
    mul-float v2, v2, v0

    .line 147
    .line 148
    int-to-float p1, p1

    .line 149
    mul-float v2, v2, p1

    .line 150
    .line 151
    add-float/2addr v1, v2

    .line 152
    invoke-direct {p0, p2, v1}, Lcom/haima/hmcp/model/KeyboardInputModel$KeyboardDirectionTimer;->updatePoint(FF)V

    .line 153
    .line 154
    .line 155
    :goto_0
    new-instance p1, Lcom/haima/hmcp/beans/FPoint;

    .line 156
    .line 157
    iget-object p2, p0, Lcom/haima/hmcp/model/KeyboardInputModel$KeyboardDirectionTimer;->this$0:Lcom/haima/hmcp/model/KeyboardInputModel;

    .line 158
    .line 159
    invoke-static {p2}, Lcom/haima/hmcp/model/KeyboardInputModel;->access$100(Lcom/haima/hmcp/model/KeyboardInputModel;)F

    .line 160
    .line 161
    .line 162
    move-result p2

    .line 163
    iget-object v0, p0, Lcom/haima/hmcp/model/KeyboardInputModel$KeyboardDirectionTimer;->this$0:Lcom/haima/hmcp/model/KeyboardInputModel;

    .line 164
    .line 165
    invoke-static {v0}, Lcom/haima/hmcp/model/KeyboardInputModel;->access$200(Lcom/haima/hmcp/model/KeyboardInputModel;)F

    .line 166
    .line 167
    .line 168
    move-result v0

    .line 169
    invoke-direct {p1, p2, v0}, Lcom/haima/hmcp/beans/FPoint;-><init>(FF)V

    .line 170
    .line 171
    .line 172
    const/4 p2, 0x3

    .line 173
    invoke-virtual {p0, p2, p1}, Lcom/haima/hmcp/model/KeyboardInputModel$KeyboardDirectionTimer;->sendMotionEvent(ILcom/haima/hmcp/beans/FPoint;)V

    .line 174
    .line 175
    .line 176
    return-void
.end method

.method protected sendMotionEvent(ILcom/haima/hmcp/beans/FPoint;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/haima/hmcp/model/KeyboardInputModel$KeyboardDirectionTimer;->listener:Lcom/haima/hmcp/listeners/KeyboardDirectionTimerListener;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-interface {v0, p1, p2}, Lcom/haima/hmcp/listeners/KeyboardDirectionTimerListener;->onEvent(ILcom/haima/hmcp/beans/FPoint;)V

    .line 6
    .line 7
    .line 8
    :cond_0
    return-void
.end method

.method public setListener(Lcom/haima/hmcp/listeners/KeyboardDirectionTimerListener;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/haima/hmcp/model/KeyboardInputModel$KeyboardDirectionTimer;->listener:Lcom/haima/hmcp/listeners/KeyboardDirectionTimerListener;

    .line 2
    .line 3
    return-void
.end method
