.class Lcom/haima/hmcp/model/JoystickInputModel$TrackBallRMoveThread;
.super Ljava/lang/Thread;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/haima/hmcp/model/JoystickInputModel;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "TrackBallRMoveThread"
.end annotation


# instance fields
.field private final TRACK_BALL_R_MOVE_THREAD_TAG:Ljava/lang/String;

.field private isSend:Z

.field private listener:Lcom/haima/hmcp/model/JoystickInputModel$TrackBallRMoveThreadListener;

.field private mx:F

.field private my:F

.field private rz:F

.field final synthetic this$0:Lcom/haima/hmcp/model/JoystickInputModel;

.field private x:F

.field private y:F

.field private z:F


# direct methods
.method public constructor <init>(Lcom/haima/hmcp/model/JoystickInputModel;FF)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/haima/hmcp/model/JoystickInputModel$TrackBallRMoveThread;->this$0:Lcom/haima/hmcp/model/JoystickInputModel;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    .line 4
    .line 5
    .line 6
    const-class p1, Lcom/haima/hmcp/model/JoystickInputModel$TrackBallRMoveThread;

    .line 7
    .line 8
    invoke-virtual {p1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    .line 9
    .line 10
    .line 11
    move-result-object p1

    .line 12
    iput-object p1, p0, Lcom/haima/hmcp/model/JoystickInputModel$TrackBallRMoveThread;->TRACK_BALL_R_MOVE_THREAD_TAG:Ljava/lang/String;

    .line 13
    .line 14
    const/4 p1, 0x1

    .line 15
    iput-boolean p1, p0, Lcom/haima/hmcp/model/JoystickInputModel$TrackBallRMoveThread;->isSend:Z

    .line 16
    .line 17
    iput p2, p0, Lcom/haima/hmcp/model/JoystickInputModel$TrackBallRMoveThread;->mx:F

    .line 18
    .line 19
    iput p3, p0, Lcom/haima/hmcp/model/JoystickInputModel$TrackBallRMoveThread;->my:F

    .line 20
    .line 21
    iput p2, p0, Lcom/haima/hmcp/model/JoystickInputModel$TrackBallRMoveThread;->x:F

    .line 22
    .line 23
    iput p3, p0, Lcom/haima/hmcp/model/JoystickInputModel$TrackBallRMoveThread;->y:F

    .line 24
    .line 25
    return-void
.end method

.method private chooseNo(F)F
    .locals 1

    .line 1
    const/high16 v0, 0x3f800000    # 1.0f

    .line 2
    .line 3
    invoke-static {p1, v0}, Ljava/lang/Math;->min(FF)F

    .line 4
    .line 5
    .line 6
    move-result p1

    .line 7
    const/4 v0, 0x0

    .line 8
    invoke-static {p1, v0}, Ljava/lang/Math;->max(FF)F

    .line 9
    .line 10
    .line 11
    move-result p1

    .line 12
    return p1
.end method

.method private getMoveSpeed()F
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/haima/hmcp/model/JoystickInputModel$TrackBallRMoveThread;->listener:Lcom/haima/hmcp/model/JoystickInputModel$TrackBallRMoveThreadListener;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-interface {v0}, Lcom/haima/hmcp/model/JoystickInputModel$TrackBallRMoveThreadListener;->onMoveSpeed()F

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    return v0

    .line 10
    :cond_0
    iget-object v0, p0, Lcom/haima/hmcp/model/JoystickInputModel$TrackBallRMoveThread;->TRACK_BALL_R_MOVE_THREAD_TAG:Ljava/lang/String;

    .line 11
    .line 12
    const-string v1, "getMoveSpeed fail"

    .line 13
    .line 14
    invoke-static {v0, v1}, Lcom/haima/hmcp/utils/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 15
    .line 16
    .line 17
    const v0, 0x3d23d70a    # 0.04f

    .line 18
    .line 19
    .line 20
    return v0
.end method

.method private isMorePointIsRun()Z
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/haima/hmcp/model/JoystickInputModel$TrackBallRMoveThread;->listener:Lcom/haima/hmcp/model/JoystickInputModel$TrackBallRMoveThreadListener;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-interface {v0}, Lcom/haima/hmcp/model/JoystickInputModel$TrackBallRMoveThreadListener;->onMorePointIsRun()Z

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    return v0

    .line 10
    :cond_0
    iget-object v0, p0, Lcom/haima/hmcp/model/JoystickInputModel$TrackBallRMoveThread;->TRACK_BALL_R_MOVE_THREAD_TAG:Ljava/lang/String;

    .line 11
    .line 12
    const-string v1, "isMorePointIsRun fail"

    .line 13
    .line 14
    invoke-static {v0, v1}, Lcom/haima/hmcp/utils/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 15
    .line 16
    .line 17
    const/4 v0, 0x0

    .line 18
    return v0
.end method

.method private putMapModeEvent(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/haima/hmcp/model/JoystickInputModel$TrackBallRMoveThread;->listener:Lcom/haima/hmcp/model/JoystickInputModel$TrackBallRMoveThreadListener;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-interface {v0, p1, p2}, Lcom/haima/hmcp/model/JoystickInputModel$TrackBallRMoveThreadListener;->onPutMapModeEvent(Ljava/lang/String;Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    goto :goto_0

    .line 9
    :cond_0
    iget-object p1, p0, Lcom/haima/hmcp/model/JoystickInputModel$TrackBallRMoveThread;->TRACK_BALL_R_MOVE_THREAD_TAG:Ljava/lang/String;

    .line 10
    .line 11
    const-string p2, "putMapModeEvent fail"

    .line 12
    .line 13
    invoke-static {p1, p2}, Lcom/haima/hmcp/utils/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 14
    .line 15
    .line 16
    :goto_0
    return-void
.end method

.method private removeMapModeEvent(Ljava/lang/String;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/haima/hmcp/model/JoystickInputModel$TrackBallRMoveThread;->listener:Lcom/haima/hmcp/model/JoystickInputModel$TrackBallRMoveThreadListener;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-interface {v0, p1}, Lcom/haima/hmcp/model/JoystickInputModel$TrackBallRMoveThreadListener;->onRemoveMapModeEvent(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    goto :goto_0

    .line 9
    :cond_0
    iget-object p1, p0, Lcom/haima/hmcp/model/JoystickInputModel$TrackBallRMoveThread;->TRACK_BALL_R_MOVE_THREAD_TAG:Ljava/lang/String;

    .line 10
    .line 11
    const-string v0, "removeMapModeEvent fail"

    .line 12
    .line 13
    invoke-static {p1, v0}, Lcom/haima/hmcp/utils/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 14
    .line 15
    .line 16
    :goto_0
    return-void
.end method

.method private sendMotionEvent(ILcom/haima/hmcp/beans/FPoint;)Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/haima/hmcp/model/JoystickInputModel$TrackBallRMoveThread;->listener:Lcom/haima/hmcp/model/JoystickInputModel$TrackBallRMoveThreadListener;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-interface {v0, p1, p2}, Lcom/haima/hmcp/model/JoystickInputModel$TrackBallRMoveThreadListener;->onSendMotionEvent(ILcom/haima/hmcp/beans/FPoint;)Z

    .line 6
    .line 7
    .line 8
    move-result p1

    .line 9
    return p1

    .line 10
    :cond_0
    invoke-static {}, Lcom/haima/hmcp/model/JoystickInputModel;->access$900()Ljava/lang/String;

    .line 11
    .line 12
    .line 13
    move-result-object p1

    .line 14
    const-string p2, "sendMotionEvent fail"

    .line 15
    .line 16
    invoke-static {p1, p2}, Lcom/haima/hmcp/utils/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 17
    .line 18
    .line 19
    const/4 p1, 0x0

    .line 20
    return p1
.end method


# virtual methods
.method public run()V
    .locals 11

    .line 1
    invoke-super {p0}, Ljava/lang/Thread;->run()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Ljava/lang/StringBuilder;

    .line 5
    .line 6
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 7
    .line 8
    .line 9
    iget v1, p0, Lcom/haima/hmcp/model/JoystickInputModel$TrackBallRMoveThread;->x:F

    .line 10
    .line 11
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 12
    .line 13
    .line 14
    const-string v1, ""

    .line 15
    .line 16
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 17
    .line 18
    .line 19
    iget v1, p0, Lcom/haima/hmcp/model/JoystickInputModel$TrackBallRMoveThread;->y:F

    .line 20
    .line 21
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 22
    .line 23
    .line 24
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 25
    .line 26
    .line 27
    move-result-object v0

    .line 28
    const-string v1, "trackBallRMove"

    .line 29
    .line 30
    invoke-direct {p0, v1, v0}, Lcom/haima/hmcp/model/JoystickInputModel$TrackBallRMoveThread;->putMapModeEvent(Ljava/lang/String;Ljava/lang/String;)V

    .line 31
    .line 32
    .line 33
    :goto_0
    iget-boolean v0, p0, Lcom/haima/hmcp/model/JoystickInputModel$TrackBallRMoveThread;->isSend:Z

    .line 34
    .line 35
    const/4 v2, 0x2

    .line 36
    const-string v3, ":"

    .line 37
    .line 38
    const-string v4, " , "

    .line 39
    .line 40
    const-string v5, "sendMotionEvent"

    .line 41
    .line 42
    const/4 v6, 0x3

    .line 43
    if-eqz v0, :cond_2

    .line 44
    .line 45
    invoke-direct {p0}, Lcom/haima/hmcp/model/JoystickInputModel$TrackBallRMoveThread;->isMorePointIsRun()Z

    .line 46
    .line 47
    .line 48
    move-result v0

    .line 49
    if-nez v0, :cond_2

    .line 50
    .line 51
    iget v0, p0, Lcom/haima/hmcp/model/JoystickInputModel$TrackBallRMoveThread;->x:F

    .line 52
    .line 53
    invoke-direct {p0}, Lcom/haima/hmcp/model/JoystickInputModel$TrackBallRMoveThread;->getMoveSpeed()F

    .line 54
    .line 55
    .line 56
    move-result v7

    .line 57
    iget v8, p0, Lcom/haima/hmcp/model/JoystickInputModel$TrackBallRMoveThread;->z:F

    .line 58
    .line 59
    mul-float v7, v7, v8

    .line 60
    .line 61
    add-float/2addr v0, v7

    .line 62
    invoke-direct {p0, v0}, Lcom/haima/hmcp/model/JoystickInputModel$TrackBallRMoveThread;->chooseNo(F)F

    .line 63
    .line 64
    .line 65
    move-result v0

    .line 66
    iput v0, p0, Lcom/haima/hmcp/model/JoystickInputModel$TrackBallRMoveThread;->x:F

    .line 67
    .line 68
    iget v0, p0, Lcom/haima/hmcp/model/JoystickInputModel$TrackBallRMoveThread;->y:F

    .line 69
    .line 70
    invoke-direct {p0}, Lcom/haima/hmcp/model/JoystickInputModel$TrackBallRMoveThread;->getMoveSpeed()F

    .line 71
    .line 72
    .line 73
    move-result v7

    .line 74
    iget v8, p0, Lcom/haima/hmcp/model/JoystickInputModel$TrackBallRMoveThread;->rz:F

    .line 75
    .line 76
    mul-float v7, v7, v8

    .line 77
    .line 78
    add-float/2addr v0, v7

    .line 79
    invoke-direct {p0, v0}, Lcom/haima/hmcp/model/JoystickInputModel$TrackBallRMoveThread;->chooseNo(F)F

    .line 80
    .line 81
    .line 82
    move-result v0

    .line 83
    iput v0, p0, Lcom/haima/hmcp/model/JoystickInputModel$TrackBallRMoveThread;->y:F

    .line 84
    .line 85
    iget v7, p0, Lcom/haima/hmcp/model/JoystickInputModel$TrackBallRMoveThread;->x:F

    .line 86
    .line 87
    const/4 v8, 0x0

    .line 88
    cmpg-float v9, v7, v8

    .line 89
    .line 90
    if-lez v9, :cond_1

    .line 91
    .line 92
    const/high16 v9, 0x3f800000    # 1.0f

    .line 93
    .line 94
    cmpl-float v10, v7, v9

    .line 95
    .line 96
    if-gez v10, :cond_1

    .line 97
    .line 98
    cmpg-float v8, v0, v8

    .line 99
    .line 100
    if-lez v8, :cond_1

    .line 101
    .line 102
    cmpl-float v8, v0, v9

    .line 103
    .line 104
    if-ltz v8, :cond_0

    .line 105
    .line 106
    goto :goto_1

    .line 107
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    .line 108
    .line 109
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 110
    .line 111
    .line 112
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 113
    .line 114
    .line 115
    iget v2, p0, Lcom/haima/hmcp/model/JoystickInputModel$TrackBallRMoveThread;->x:F

    .line 116
    .line 117
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 118
    .line 119
    .line 120
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 121
    .line 122
    .line 123
    iget v2, p0, Lcom/haima/hmcp/model/JoystickInputModel$TrackBallRMoveThread;->y:F

    .line 124
    .line 125
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 126
    .line 127
    .line 128
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 129
    .line 130
    .line 131
    move-result-object v0

    .line 132
    invoke-static {v5, v0}, Lcom/haima/hmcp/utils/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 133
    .line 134
    .line 135
    new-instance v0, Lcom/haima/hmcp/beans/FPoint;

    .line 136
    .line 137
    iget v2, p0, Lcom/haima/hmcp/model/JoystickInputModel$TrackBallRMoveThread;->x:F

    .line 138
    .line 139
    iget v3, p0, Lcom/haima/hmcp/model/JoystickInputModel$TrackBallRMoveThread;->y:F

    .line 140
    .line 141
    invoke-direct {v0, v2, v3}, Lcom/haima/hmcp/beans/FPoint;-><init>(FF)V

    .line 142
    .line 143
    .line 144
    invoke-direct {p0, v6, v0}, Lcom/haima/hmcp/model/JoystickInputModel$TrackBallRMoveThread;->sendMotionEvent(ILcom/haima/hmcp/beans/FPoint;)Z

    .line 145
    .line 146
    .line 147
    goto :goto_2

    .line 148
    :cond_1
    :goto_1
    new-instance v3, Lcom/haima/hmcp/beans/FPoint;

    .line 149
    .line 150
    invoke-direct {v3, v7, v0}, Lcom/haima/hmcp/beans/FPoint;-><init>(FF)V

    .line 151
    .line 152
    .line 153
    invoke-direct {p0, v6, v3}, Lcom/haima/hmcp/model/JoystickInputModel$TrackBallRMoveThread;->sendMotionEvent(ILcom/haima/hmcp/beans/FPoint;)Z

    .line 154
    .line 155
    .line 156
    new-instance v0, Lcom/haima/hmcp/beans/FPoint;

    .line 157
    .line 158
    iget v3, p0, Lcom/haima/hmcp/model/JoystickInputModel$TrackBallRMoveThread;->x:F

    .line 159
    .line 160
    iget v7, p0, Lcom/haima/hmcp/model/JoystickInputModel$TrackBallRMoveThread;->y:F

    .line 161
    .line 162
    invoke-direct {v0, v3, v7}, Lcom/haima/hmcp/beans/FPoint;-><init>(FF)V

    .line 163
    .line 164
    .line 165
    invoke-direct {p0, v2, v0}, Lcom/haima/hmcp/model/JoystickInputModel$TrackBallRMoveThread;->sendMotionEvent(ILcom/haima/hmcp/beans/FPoint;)Z

    .line 166
    .line 167
    .line 168
    iget v0, p0, Lcom/haima/hmcp/model/JoystickInputModel$TrackBallRMoveThread;->mx:F

    .line 169
    .line 170
    iput v0, p0, Lcom/haima/hmcp/model/JoystickInputModel$TrackBallRMoveThread;->x:F

    .line 171
    .line 172
    iget v0, p0, Lcom/haima/hmcp/model/JoystickInputModel$TrackBallRMoveThread;->my:F

    .line 173
    .line 174
    iput v0, p0, Lcom/haima/hmcp/model/JoystickInputModel$TrackBallRMoveThread;->y:F

    .line 175
    .line 176
    new-instance v0, Ljava/lang/StringBuilder;

    .line 177
    .line 178
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 179
    .line 180
    .line 181
    const-string v2, "x<=0||x>=1||y<=0||y>=1:"

    .line 182
    .line 183
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 184
    .line 185
    .line 186
    iget v2, p0, Lcom/haima/hmcp/model/JoystickInputModel$TrackBallRMoveThread;->x:F

    .line 187
    .line 188
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 189
    .line 190
    .line 191
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 192
    .line 193
    .line 194
    iget v2, p0, Lcom/haima/hmcp/model/JoystickInputModel$TrackBallRMoveThread;->y:F

    .line 195
    .line 196
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 197
    .line 198
    .line 199
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 200
    .line 201
    .line 202
    move-result-object v0

    .line 203
    invoke-static {v5, v0}, Lcom/haima/hmcp/utils/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 204
    .line 205
    .line 206
    new-instance v0, Lcom/haima/hmcp/beans/FPoint;

    .line 207
    .line 208
    iget v2, p0, Lcom/haima/hmcp/model/JoystickInputModel$TrackBallRMoveThread;->x:F

    .line 209
    .line 210
    iget v3, p0, Lcom/haima/hmcp/model/JoystickInputModel$TrackBallRMoveThread;->y:F

    .line 211
    .line 212
    invoke-direct {v0, v2, v3}, Lcom/haima/hmcp/beans/FPoint;-><init>(FF)V

    .line 213
    .line 214
    .line 215
    const/4 v2, 0x1

    .line 216
    invoke-direct {p0, v2, v0}, Lcom/haima/hmcp/model/JoystickInputModel$TrackBallRMoveThread;->sendMotionEvent(ILcom/haima/hmcp/beans/FPoint;)Z

    .line 217
    .line 218
    .line 219
    iget v0, p0, Lcom/haima/hmcp/model/JoystickInputModel$TrackBallRMoveThread;->x:F

    .line 220
    .line 221
    invoke-direct {p0}, Lcom/haima/hmcp/model/JoystickInputModel$TrackBallRMoveThread;->getMoveSpeed()F

    .line 222
    .line 223
    .line 224
    move-result v2

    .line 225
    iget v3, p0, Lcom/haima/hmcp/model/JoystickInputModel$TrackBallRMoveThread;->z:F

    .line 226
    .line 227
    mul-float v2, v2, v3

    .line 228
    .line 229
    add-float/2addr v0, v2

    .line 230
    invoke-direct {p0, v0}, Lcom/haima/hmcp/model/JoystickInputModel$TrackBallRMoveThread;->chooseNo(F)F

    .line 231
    .line 232
    .line 233
    move-result v0

    .line 234
    iput v0, p0, Lcom/haima/hmcp/model/JoystickInputModel$TrackBallRMoveThread;->x:F

    .line 235
    .line 236
    iget v0, p0, Lcom/haima/hmcp/model/JoystickInputModel$TrackBallRMoveThread;->y:F

    .line 237
    .line 238
    invoke-direct {p0}, Lcom/haima/hmcp/model/JoystickInputModel$TrackBallRMoveThread;->getMoveSpeed()F

    .line 239
    .line 240
    .line 241
    move-result v2

    .line 242
    iget v3, p0, Lcom/haima/hmcp/model/JoystickInputModel$TrackBallRMoveThread;->rz:F

    .line 243
    .line 244
    mul-float v2, v2, v3

    .line 245
    .line 246
    add-float/2addr v0, v2

    .line 247
    invoke-direct {p0, v0}, Lcom/haima/hmcp/model/JoystickInputModel$TrackBallRMoveThread;->chooseNo(F)F

    .line 248
    .line 249
    .line 250
    move-result v0

    .line 251
    iput v0, p0, Lcom/haima/hmcp/model/JoystickInputModel$TrackBallRMoveThread;->y:F

    .line 252
    .line 253
    new-instance v2, Lcom/haima/hmcp/beans/FPoint;

    .line 254
    .line 255
    iget v3, p0, Lcom/haima/hmcp/model/JoystickInputModel$TrackBallRMoveThread;->x:F

    .line 256
    .line 257
    invoke-direct {v2, v3, v0}, Lcom/haima/hmcp/beans/FPoint;-><init>(FF)V

    .line 258
    .line 259
    .line 260
    invoke-direct {p0, v6, v2}, Lcom/haima/hmcp/model/JoystickInputModel$TrackBallRMoveThread;->sendMotionEvent(ILcom/haima/hmcp/beans/FPoint;)Z

    .line 261
    .line 262
    .line 263
    :goto_2
    const-wide/16 v2, 0x50

    .line 264
    .line 265
    :try_start_0
    invoke-static {v2, v3}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 266
    .line 267
    .line 268
    goto/16 :goto_0

    .line 269
    .line 270
    :catch_0
    move-exception v0

    .line 271
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 272
    .line 273
    .line 274
    goto/16 :goto_0

    .line 275
    .line 276
    :cond_2
    new-instance v0, Ljava/lang/StringBuilder;

    .line 277
    .line 278
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 279
    .line 280
    .line 281
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 282
    .line 283
    .line 284
    iget v3, p0, Lcom/haima/hmcp/model/JoystickInputModel$TrackBallRMoveThread;->x:F

    .line 285
    .line 286
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 287
    .line 288
    .line 289
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 290
    .line 291
    .line 292
    iget v3, p0, Lcom/haima/hmcp/model/JoystickInputModel$TrackBallRMoveThread;->y:F

    .line 293
    .line 294
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 295
    .line 296
    .line 297
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 298
    .line 299
    .line 300
    move-result-object v0

    .line 301
    invoke-static {v5, v0}, Lcom/haima/hmcp/utils/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 302
    .line 303
    .line 304
    invoke-direct {p0}, Lcom/haima/hmcp/model/JoystickInputModel$TrackBallRMoveThread;->isMorePointIsRun()Z

    .line 305
    .line 306
    .line 307
    move-result v0

    .line 308
    if-nez v0, :cond_3

    .line 309
    .line 310
    new-instance v0, Lcom/haima/hmcp/beans/FPoint;

    .line 311
    .line 312
    iget v3, p0, Lcom/haima/hmcp/model/JoystickInputModel$TrackBallRMoveThread;->x:F

    .line 313
    .line 314
    iget v4, p0, Lcom/haima/hmcp/model/JoystickInputModel$TrackBallRMoveThread;->y:F

    .line 315
    .line 316
    invoke-direct {v0, v3, v4}, Lcom/haima/hmcp/beans/FPoint;-><init>(FF)V

    .line 317
    .line 318
    .line 319
    invoke-direct {p0, v6, v0}, Lcom/haima/hmcp/model/JoystickInputModel$TrackBallRMoveThread;->sendMotionEvent(ILcom/haima/hmcp/beans/FPoint;)Z

    .line 320
    .line 321
    .line 322
    new-instance v0, Lcom/haima/hmcp/beans/FPoint;

    .line 323
    .line 324
    iget v3, p0, Lcom/haima/hmcp/model/JoystickInputModel$TrackBallRMoveThread;->x:F

    .line 325
    .line 326
    iget v4, p0, Lcom/haima/hmcp/model/JoystickInputModel$TrackBallRMoveThread;->y:F

    .line 327
    .line 328
    invoke-direct {v0, v3, v4}, Lcom/haima/hmcp/beans/FPoint;-><init>(FF)V

    .line 329
    .line 330
    .line 331
    invoke-direct {p0, v2, v0}, Lcom/haima/hmcp/model/JoystickInputModel$TrackBallRMoveThread;->sendMotionEvent(ILcom/haima/hmcp/beans/FPoint;)Z

    .line 332
    .line 333
    .line 334
    invoke-direct {p0, v1}, Lcom/haima/hmcp/model/JoystickInputModel$TrackBallRMoveThread;->removeMapModeEvent(Ljava/lang/String;)V

    .line 335
    .line 336
    .line 337
    :cond_3
    return-void
.end method

.method public setIsSend(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/haima/hmcp/model/JoystickInputModel$TrackBallRMoveThread;->isSend:Z

    .line 2
    .line 3
    return-void
.end method

.method public setListener(Lcom/haima/hmcp/model/JoystickInputModel$TrackBallRMoveThreadListener;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/haima/hmcp/model/JoystickInputModel$TrackBallRMoveThread;->listener:Lcom/haima/hmcp/model/JoystickInputModel$TrackBallRMoveThreadListener;

    .line 2
    .line 3
    return-void
.end method

.method public setMoveSp(Lcom/haima/hmcp/enums/ScreenOrientation;FF)V
    .locals 1

    .line 1
    sget-object v0, Lcom/haima/hmcp/enums/ScreenOrientation;->PORTRAIT:Lcom/haima/hmcp/enums/ScreenOrientation;

    .line 2
    .line 3
    if-ne p1, v0, :cond_0

    .line 4
    .line 5
    iput p3, p0, Lcom/haima/hmcp/model/JoystickInputModel$TrackBallRMoveThread;->z:F

    .line 6
    .line 7
    neg-float p1, p2

    .line 8
    iput p1, p0, Lcom/haima/hmcp/model/JoystickInputModel$TrackBallRMoveThread;->rz:F

    .line 9
    .line 10
    goto :goto_0

    .line 11
    :cond_0
    iput p2, p0, Lcom/haima/hmcp/model/JoystickInputModel$TrackBallRMoveThread;->z:F

    .line 12
    .line 13
    iput p3, p0, Lcom/haima/hmcp/model/JoystickInputModel$TrackBallRMoveThread;->rz:F

    .line 14
    .line 15
    :goto_0
    return-void
.end method
