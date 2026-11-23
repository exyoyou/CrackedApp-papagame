.class public Lcom/haima/hmcp/model/InputOpModel;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final HM_INPUT_OP_TAG:Ljava/lang/String; = "HmInputOp-->"

.field private static final TAG:Ljava/lang/String; = "InputOpModel"


# instance fields
.field protected hmInputMappings:Lcom/haima/hmcp/beans/HmInputMappings;

.field protected hmInputOpDirection:Lcom/haima/hmcp/beans/PointCoord;

.field protected inputOpViewMoveX:F

.field protected inputOpViewMoveY:F

.field protected inputOpViewOffset:F

.field private keyboardX:I

.field private keyboardY:I

.field private listener:Lcom/haima/hmcp/listeners/InputOpModelListener;

.field protected oriInputOpViewX:F

.field protected oriInputOpViewY:F


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x0

    .line 5
    iput-object v0, p0, Lcom/haima/hmcp/model/InputOpModel;->hmInputOpDirection:Lcom/haima/hmcp/beans/PointCoord;

    .line 6
    .line 7
    const v0, 0x3ba3d70a    # 0.005f

    .line 8
    .line 9
    .line 10
    iput v0, p0, Lcom/haima/hmcp/model/InputOpModel;->inputOpViewOffset:F

    .line 11
    .line 12
    const/4 v0, 0x0

    .line 13
    iput v0, p0, Lcom/haima/hmcp/model/InputOpModel;->oriInputOpViewX:F

    .line 14
    .line 15
    iput v0, p0, Lcom/haima/hmcp/model/InputOpModel;->oriInputOpViewY:F

    .line 16
    .line 17
    iput v0, p0, Lcom/haima/hmcp/model/InputOpModel;->inputOpViewMoveX:F

    .line 18
    .line 19
    iput v0, p0, Lcom/haima/hmcp/model/InputOpModel;->inputOpViewMoveY:F

    .line 20
    .line 21
    const/4 v0, 0x0

    .line 22
    iput v0, p0, Lcom/haima/hmcp/model/InputOpModel;->keyboardX:I

    .line 23
    .line 24
    iput v0, p0, Lcom/haima/hmcp/model/InputOpModel;->keyboardY:I

    .line 25
    .line 26
    return-void
.end method

.method private processDirectionHmInputOp(Lcom/haima/hmcp/beans/HmInputOp;Lcom/haima/hmcp/beans/HmInputMappingContent;Lcom/haima/hmcp/listeners/HmInputOpListener;)V
    .locals 10

    .line 1
    if-nez p2, :cond_1

    .line 2
    .line 3
    sget-object p2, Lcom/haima/hmcp/model/InputOpModel;->TAG:Ljava/lang/String;

    .line 4
    .line 5
    new-instance v0, Ljava/lang/StringBuilder;

    .line 6
    .line 7
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 8
    .line 9
    .line 10
    const-string v1, "HmInputOp-->processDirectionHmInputOp: process fail, not config. HmInputOp = "

    .line 11
    .line 12
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 13
    .line 14
    .line 15
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 16
    .line 17
    .line 18
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 19
    .line 20
    .line 21
    move-result-object v0

    .line 22
    invoke-static {p2, v0}, Lcom/haima/hmcp/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 23
    .line 24
    .line 25
    if-eqz p3, :cond_0

    .line 26
    .line 27
    const-string p2, "input op value is not config"

    .line 28
    .line 29
    invoke-interface {p3, p1, p2}, Lcom/haima/hmcp/listeners/HmInputOpListener;->onSendFail(Lcom/haima/hmcp/beans/HmInputOp;Ljava/lang/String;)V

    .line 30
    .line 31
    .line 32
    :cond_0
    return-void

    .line 33
    :cond_1
    iget-object v0, p0, Lcom/haima/hmcp/model/InputOpModel;->hmInputOpDirection:Lcom/haima/hmcp/beans/PointCoord;

    .line 34
    .line 35
    if-nez v0, :cond_2

    .line 36
    .line 37
    return-void

    .line 38
    :cond_2
    iget v1, v0, Lcom/haima/hmcp/beans/PointCoord;->rx:F

    .line 39
    .line 40
    const/4 v2, 0x0

    .line 41
    cmpl-float v1, v1, v2

    .line 42
    .line 43
    if-nez v1, :cond_3

    .line 44
    .line 45
    sget v1, Lcom/haima/hmcp/Constants;->KEYBOARD_RX:F

    .line 46
    .line 47
    iput v1, v0, Lcom/haima/hmcp/beans/PointCoord;->rx:F

    .line 48
    .line 49
    :cond_3
    iget v1, v0, Lcom/haima/hmcp/beans/PointCoord;->ry:F

    .line 50
    .line 51
    cmpl-float v1, v1, v2

    .line 52
    .line 53
    if-nez v1, :cond_4

    .line 54
    .line 55
    sget v1, Lcom/haima/hmcp/Constants;->KEYBOARD_RY:F

    .line 56
    .line 57
    iput v1, v0, Lcom/haima/hmcp/beans/PointCoord;->ry:F

    .line 58
    .line 59
    :cond_4
    iget v1, p1, Lcom/haima/hmcp/beans/HmInputOp;->actionType:I

    .line 60
    .line 61
    iget p2, p2, Lcom/haima/hmcp/beans/HmInputMappingContent;->direction:I

    .line 62
    .line 63
    const/4 v3, 0x0

    .line 64
    const/4 v4, 0x3

    .line 65
    const/4 v5, 0x2

    .line 66
    const/4 v6, 0x1

    .line 67
    if-eq p2, v6, :cond_8

    .line 68
    .line 69
    if-eq p2, v5, :cond_7

    .line 70
    .line 71
    if-eq p2, v4, :cond_6

    .line 72
    .line 73
    const/4 v7, 0x4

    .line 74
    if-eq p2, v7, :cond_5

    .line 75
    .line 76
    goto :goto_2

    .line 77
    :cond_5
    if-ne v1, v6, :cond_9

    .line 78
    .line 79
    mul-int/lit8 p2, v1, 0x2

    .line 80
    .line 81
    rsub-int/lit8 p2, p2, 0x3

    .line 82
    .line 83
    goto :goto_0

    .line 84
    :cond_6
    if-ne v1, v6, :cond_9

    .line 85
    .line 86
    mul-int/lit8 p2, v1, 0x2

    .line 87
    .line 88
    rsub-int/lit8 p2, p2, 0x3

    .line 89
    .line 90
    goto :goto_1

    .line 91
    :cond_7
    if-ne v1, v6, :cond_9

    .line 92
    .line 93
    mul-int/lit8 p2, v1, 0x2

    .line 94
    .line 95
    sub-int/2addr p2, v4

    .line 96
    :goto_0
    add-int/2addr p2, v3

    .line 97
    goto :goto_3

    .line 98
    :cond_8
    if-ne v1, v6, :cond_9

    .line 99
    .line 100
    mul-int/lit8 p2, v1, 0x2

    .line 101
    .line 102
    sub-int/2addr p2, v4

    .line 103
    :goto_1
    add-int/2addr p2, v3

    .line 104
    move v7, p2

    .line 105
    const/4 p2, 0x0

    .line 106
    goto :goto_4

    .line 107
    :cond_9
    :goto_2
    const/4 p2, 0x0

    .line 108
    :goto_3
    const/4 v7, 0x0

    .line 109
    :goto_4
    iget v8, p0, Lcom/haima/hmcp/model/InputOpModel;->keyboardX:I

    .line 110
    .line 111
    if-nez v8, :cond_a

    .line 112
    .line 113
    iget v8, p0, Lcom/haima/hmcp/model/InputOpModel;->keyboardY:I

    .line 114
    .line 115
    if-nez v8, :cond_a

    .line 116
    .line 117
    invoke-direct {p0, v1, v0}, Lcom/haima/hmcp/model/InputOpModel;->sendMotionEvent(ILcom/haima/hmcp/beans/PointCoord;)V

    .line 118
    .line 119
    .line 120
    :cond_a
    sget-object v0, Lcom/haima/hmcp/model/InputOpModel;->TAG:Ljava/lang/String;

    .line 121
    .line 122
    new-instance v8, Ljava/lang/StringBuilder;

    .line 123
    .line 124
    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    .line 125
    .line 126
    .line 127
    const-string v9, "HmInputOp-->processDirectionHmInputOp: keyboardX = "

    .line 128
    .line 129
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 130
    .line 131
    .line 132
    iget v9, p0, Lcom/haima/hmcp/model/InputOpModel;->keyboardX:I

    .line 133
    .line 134
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 135
    .line 136
    .line 137
    const-string v9, ", keyboardY = "

    .line 138
    .line 139
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 140
    .line 141
    .line 142
    iget v9, p0, Lcom/haima/hmcp/model/InputOpModel;->keyboardY:I

    .line 143
    .line 144
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 145
    .line 146
    .line 147
    const-string v9, ", tmpx = "

    .line 148
    .line 149
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 150
    .line 151
    .line 152
    invoke-virtual {v8, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 153
    .line 154
    .line 155
    const-string v9, ", tmpy = "

    .line 156
    .line 157
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 158
    .line 159
    .line 160
    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 161
    .line 162
    .line 163
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 164
    .line 165
    .line 166
    move-result-object v8

    .line 167
    invoke-static {v0, v8}, Lcom/haima/hmcp/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 168
    .line 169
    .line 170
    iget v8, p0, Lcom/haima/hmcp/model/InputOpModel;->keyboardX:I

    .line 171
    .line 172
    add-int/2addr v8, p2

    .line 173
    iput v8, p0, Lcom/haima/hmcp/model/InputOpModel;->keyboardX:I

    .line 174
    .line 175
    iget p2, p0, Lcom/haima/hmcp/model/InputOpModel;->keyboardY:I

    .line 176
    .line 177
    add-int/2addr p2, v7

    .line 178
    iput p2, p0, Lcom/haima/hmcp/model/InputOpModel;->keyboardY:I

    .line 179
    .line 180
    if-ne v1, v6, :cond_b

    .line 181
    .line 182
    iget-object v1, p0, Lcom/haima/hmcp/model/InputOpModel;->hmInputOpDirection:Lcom/haima/hmcp/beans/PointCoord;

    .line 183
    .line 184
    invoke-static {v1, v8, p2, v2, v2}, Lcom/haima/hmcp/widgets/TouchUtil;->getDirectionPoint(Lcom/haima/hmcp/beans/PointCoord;IIFF)[F

    .line 185
    .line 186
    .line 187
    move-result-object p2

    .line 188
    if-eqz p2, :cond_c

    .line 189
    .line 190
    new-instance v1, Lcom/haima/hmcp/beans/PointCoord;

    .line 191
    .line 192
    invoke-direct {v1}, Lcom/haima/hmcp/beans/PointCoord;-><init>()V

    .line 193
    .line 194
    .line 195
    aget v2, p2, v3

    .line 196
    .line 197
    iput v2, v1, Lcom/haima/hmcp/beans/PointCoord;->x:F

    .line 198
    .line 199
    aget p2, p2, v6

    .line 200
    .line 201
    iput p2, v1, Lcom/haima/hmcp/beans/PointCoord;->y:F

    .line 202
    .line 203
    invoke-direct {p0, v4, v1}, Lcom/haima/hmcp/model/InputOpModel;->sendMotionEvent(ILcom/haima/hmcp/beans/PointCoord;)V

    .line 204
    .line 205
    .line 206
    goto :goto_5

    .line 207
    :cond_b
    if-ne v1, v5, :cond_c

    .line 208
    .line 209
    iput v3, p0, Lcom/haima/hmcp/model/InputOpModel;->keyboardY:I

    .line 210
    .line 211
    iput v3, p0, Lcom/haima/hmcp/model/InputOpModel;->keyboardX:I

    .line 212
    .line 213
    iget-object p2, p0, Lcom/haima/hmcp/model/InputOpModel;->hmInputOpDirection:Lcom/haima/hmcp/beans/PointCoord;

    .line 214
    .line 215
    invoke-direct {p0, v4, p2}, Lcom/haima/hmcp/model/InputOpModel;->sendMotionEvent(ILcom/haima/hmcp/beans/PointCoord;)V

    .line 216
    .line 217
    .line 218
    iget-object p2, p0, Lcom/haima/hmcp/model/InputOpModel;->hmInputOpDirection:Lcom/haima/hmcp/beans/PointCoord;

    .line 219
    .line 220
    invoke-direct {p0, v5, p2}, Lcom/haima/hmcp/model/InputOpModel;->sendMotionEvent(ILcom/haima/hmcp/beans/PointCoord;)V

    .line 221
    .line 222
    .line 223
    :cond_c
    :goto_5
    if-eqz p3, :cond_d

    .line 224
    .line 225
    invoke-interface {p3, p1}, Lcom/haima/hmcp/listeners/HmInputOpListener;->onSendSuccess(Lcom/haima/hmcp/beans/HmInputOp;)V

    .line 226
    .line 227
    .line 228
    :cond_d
    new-instance p2, Ljava/lang/StringBuilder;

    .line 229
    .line 230
    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    .line 231
    .line 232
    .line 233
    const-string p3, "HmInputOp-->processDirectionHmInputOp: process success. HmInputOp = "

    .line 234
    .line 235
    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 236
    .line 237
    .line 238
    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 239
    .line 240
    .line 241
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 242
    .line 243
    .line 244
    move-result-object p1

    .line 245
    invoke-static {v0, p1}, Lcom/haima/hmcp/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 246
    .line 247
    .line 248
    return-void
.end method

.method private processHmInputOp(Lcom/haima/hmcp/beans/HmInputOp;Lcom/haima/hmcp/beans/HmInputMappingContent;Lcom/haima/hmcp/listeners/HmInputOpListener;)V
    .locals 3

    .line 1
    if-nez p2, :cond_1

    .line 2
    .line 3
    sget-object p2, Lcom/haima/hmcp/model/InputOpModel;->TAG:Ljava/lang/String;

    .line 4
    .line 5
    new-instance v0, Ljava/lang/StringBuilder;

    .line 6
    .line 7
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 8
    .line 9
    .line 10
    const-string v1, "HmInputOp-->processHmInputOp: process fail, not config. HmInputOp = "

    .line 11
    .line 12
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 13
    .line 14
    .line 15
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 16
    .line 17
    .line 18
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 19
    .line 20
    .line 21
    move-result-object v0

    .line 22
    invoke-static {p2, v0}, Lcom/haima/hmcp/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 23
    .line 24
    .line 25
    if-eqz p3, :cond_0

    .line 26
    .line 27
    const-string p2, "input op value is not config"

    .line 28
    .line 29
    invoke-interface {p3, p1, p2}, Lcom/haima/hmcp/listeners/HmInputOpListener;->onSendFail(Lcom/haima/hmcp/beans/HmInputOp;Ljava/lang/String;)V

    .line 30
    .line 31
    .line 32
    :cond_0
    return-void

    .line 33
    :cond_1
    new-instance v0, Lcom/haima/hmcp/beans/PointCoord;

    .line 34
    .line 35
    invoke-direct {v0}, Lcom/haima/hmcp/beans/PointCoord;-><init>()V

    .line 36
    .line 37
    .line 38
    iget-wide v1, p2, Lcom/haima/hmcp/beans/HmInputMappingContent;->posX:D

    .line 39
    .line 40
    double-to-float v1, v1

    .line 41
    iput v1, v0, Lcom/haima/hmcp/beans/PointCoord;->x:F

    .line 42
    .line 43
    iget-wide v1, p2, Lcom/haima/hmcp/beans/HmInputMappingContent;->posY:D

    .line 44
    .line 45
    double-to-float p2, v1

    .line 46
    iput p2, v0, Lcom/haima/hmcp/beans/PointCoord;->y:F

    .line 47
    .line 48
    iget p2, p1, Lcom/haima/hmcp/beans/HmInputOp;->actionType:I

    .line 49
    .line 50
    invoke-direct {p0, p2, v0}, Lcom/haima/hmcp/model/InputOpModel;->sendKeyboardEvent(ILcom/haima/hmcp/beans/PointCoord;)V

    .line 51
    .line 52
    .line 53
    if-eqz p3, :cond_2

    .line 54
    .line 55
    invoke-interface {p3, p1}, Lcom/haima/hmcp/listeners/HmInputOpListener;->onSendSuccess(Lcom/haima/hmcp/beans/HmInputOp;)V

    .line 56
    .line 57
    .line 58
    :cond_2
    sget-object p2, Lcom/haima/hmcp/model/InputOpModel;->TAG:Ljava/lang/String;

    .line 59
    .line 60
    new-instance p3, Ljava/lang/StringBuilder;

    .line 61
    .line 62
    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    .line 63
    .line 64
    .line 65
    const-string v0, "HmInputOp-->processHmInputOp: process success. HmInputOp = "

    .line 66
    .line 67
    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 68
    .line 69
    .line 70
    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 71
    .line 72
    .line 73
    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 74
    .line 75
    .line 76
    move-result-object p1

    .line 77
    invoke-static {p2, p1}, Lcom/haima/hmcp/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 78
    .line 79
    .line 80
    return-void
.end method

.method private processHmInputView(Lcom/haima/hmcp/beans/HmInputOp;Lcom/haima/hmcp/beans/HmInputMappingContent;Lcom/haima/hmcp/listeners/HmInputOpListener;)V
    .locals 17

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move-object/from16 v1, p1

    .line 4
    .line 5
    move-object/from16 v2, p2

    .line 6
    .line 7
    move-object/from16 v3, p3

    .line 8
    .line 9
    if-nez v2, :cond_1

    .line 10
    .line 11
    sget-object v2, Lcom/haima/hmcp/model/InputOpModel;->TAG:Ljava/lang/String;

    .line 12
    .line 13
    new-instance v4, Ljava/lang/StringBuilder;

    .line 14
    .line 15
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 16
    .line 17
    .line 18
    const-string v5, "HmInputOp-->processHmInputView: process fail, not config. HmInputOp = "

    .line 19
    .line 20
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 21
    .line 22
    .line 23
    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 24
    .line 25
    .line 26
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 27
    .line 28
    .line 29
    move-result-object v4

    .line 30
    invoke-static {v2, v4}, Lcom/haima/hmcp/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 31
    .line 32
    .line 33
    if-eqz v3, :cond_0

    .line 34
    .line 35
    const-string v2, "input op value is not config"

    .line 36
    .line 37
    invoke-interface {v3, v1, v2}, Lcom/haima/hmcp/listeners/HmInputOpListener;->onSendFail(Lcom/haima/hmcp/beans/HmInputOp;Ljava/lang/String;)V

    .line 38
    .line 39
    .line 40
    :cond_0
    return-void

    .line 41
    :cond_1
    iget v4, v2, Lcom/haima/hmcp/beans/HmInputMappingContent;->type:I

    .line 42
    .line 43
    const/4 v5, 0x3

    .line 44
    if-eq v4, v5, :cond_3

    .line 45
    .line 46
    sget-object v4, Lcom/haima/hmcp/model/InputOpModel;->TAG:Ljava/lang/String;

    .line 47
    .line 48
    const-string v5, "HmInputOp-->processHmInputView: process fail, is not view type"

    .line 49
    .line 50
    invoke-static {v4, v5}, Lcom/haima/hmcp/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 51
    .line 52
    .line 53
    if-eqz v3, :cond_2

    .line 54
    .line 55
    new-instance v4, Ljava/lang/StringBuilder;

    .line 56
    .line 57
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 58
    .line 59
    .line 60
    const-string v5, "require type is 3, but find type is "

    .line 61
    .line 62
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 63
    .line 64
    .line 65
    iget v2, v2, Lcom/haima/hmcp/beans/HmInputMappingContent;->type:I

    .line 66
    .line 67
    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 68
    .line 69
    .line 70
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 71
    .line 72
    .line 73
    move-result-object v2

    .line 74
    invoke-interface {v3, v1, v2}, Lcom/haima/hmcp/listeners/HmInputOpListener;->onSendFail(Lcom/haima/hmcp/beans/HmInputOp;Ljava/lang/String;)V

    .line 75
    .line 76
    .line 77
    :cond_2
    return-void

    .line 78
    :cond_3
    sget-object v4, Lcom/haima/hmcp/model/InputOpModel;->TAG:Ljava/lang/String;

    .line 79
    .line 80
    new-instance v6, Ljava/lang/StringBuilder;

    .line 81
    .line 82
    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    .line 83
    .line 84
    .line 85
    const-string v7, "HmInputOp-->processHmInputView: hmInputOp = "

    .line 86
    .line 87
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 88
    .line 89
    .line 90
    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 91
    .line 92
    .line 93
    const-string v7, ", hmInputMappingContent = "

    .line 94
    .line 95
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 96
    .line 97
    .line 98
    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 99
    .line 100
    .line 101
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 102
    .line 103
    .line 104
    move-result-object v6

    .line 105
    invoke-static {v4, v6}, Lcom/haima/hmcp/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 106
    .line 107
    .line 108
    iget v6, v2, Lcom/haima/hmcp/beans/HmInputMappingContent;->viewState:I

    .line 109
    .line 110
    const/4 v7, 0x0

    .line 111
    const/4 v8, 0x1

    .line 112
    if-ne v6, v8, :cond_4

    .line 113
    .line 114
    iget-wide v5, v2, Lcom/haima/hmcp/beans/HmInputMappingContent;->posX:D

    .line 115
    .line 116
    double-to-float v5, v5

    .line 117
    iput v5, v0, Lcom/haima/hmcp/model/InputOpModel;->inputOpViewMoveX:F

    .line 118
    .line 119
    iput v5, v0, Lcom/haima/hmcp/model/InputOpModel;->oriInputOpViewX:F

    .line 120
    .line 121
    iget-wide v5, v2, Lcom/haima/hmcp/beans/HmInputMappingContent;->posY:D

    .line 122
    .line 123
    double-to-float v5, v5

    .line 124
    iput v5, v0, Lcom/haima/hmcp/model/InputOpModel;->inputOpViewMoveY:F

    .line 125
    .line 126
    iput v5, v0, Lcom/haima/hmcp/model/InputOpModel;->oriInputOpViewY:F

    .line 127
    .line 128
    new-instance v5, Lcom/haima/hmcp/beans/PointCoord;

    .line 129
    .line 130
    invoke-direct {v5}, Lcom/haima/hmcp/beans/PointCoord;-><init>()V

    .line 131
    .line 132
    .line 133
    iget v6, v0, Lcom/haima/hmcp/model/InputOpModel;->inputOpViewMoveX:F

    .line 134
    .line 135
    iput v6, v5, Lcom/haima/hmcp/beans/PointCoord;->x:F

    .line 136
    .line 137
    iget v6, v0, Lcom/haima/hmcp/model/InputOpModel;->inputOpViewMoveY:F

    .line 138
    .line 139
    iput v6, v5, Lcom/haima/hmcp/beans/PointCoord;->y:F

    .line 140
    .line 141
    invoke-direct {v0, v8, v5}, Lcom/haima/hmcp/model/InputOpModel;->sendKeyboardEvent(ILcom/haima/hmcp/beans/PointCoord;)V

    .line 142
    .line 143
    .line 144
    goto/16 :goto_2

    .line 145
    .line 146
    :cond_4
    const/4 v9, 0x2

    .line 147
    if-ne v6, v9, :cond_5

    .line 148
    .line 149
    new-instance v6, Lcom/haima/hmcp/beans/PointCoord;

    .line 150
    .line 151
    invoke-direct {v6}, Lcom/haima/hmcp/beans/PointCoord;-><init>()V

    .line 152
    .line 153
    .line 154
    iget v10, v0, Lcom/haima/hmcp/model/InputOpModel;->inputOpViewMoveX:F

    .line 155
    .line 156
    iput v10, v6, Lcom/haima/hmcp/beans/PointCoord;->x:F

    .line 157
    .line 158
    iget v10, v0, Lcom/haima/hmcp/model/InputOpModel;->inputOpViewMoveY:F

    .line 159
    .line 160
    iput v10, v6, Lcom/haima/hmcp/beans/PointCoord;->y:F

    .line 161
    .line 162
    invoke-direct {v0, v5, v6}, Lcom/haima/hmcp/model/InputOpModel;->sendKeyboardEvent(ILcom/haima/hmcp/beans/PointCoord;)V

    .line 163
    .line 164
    .line 165
    invoke-direct {v0, v9, v6}, Lcom/haima/hmcp/model/InputOpModel;->sendKeyboardEvent(ILcom/haima/hmcp/beans/PointCoord;)V

    .line 166
    .line 167
    .line 168
    iput v7, v0, Lcom/haima/hmcp/model/InputOpModel;->inputOpViewMoveX:F

    .line 169
    .line 170
    iput v7, v0, Lcom/haima/hmcp/model/InputOpModel;->inputOpViewMoveY:F

    .line 171
    .line 172
    goto/16 :goto_2

    .line 173
    .line 174
    :cond_5
    iget v6, v0, Lcom/haima/hmcp/model/InputOpModel;->inputOpViewMoveX:F

    .line 175
    .line 176
    iget v10, v0, Lcom/haima/hmcp/model/InputOpModel;->inputOpViewMoveY:F

    .line 177
    .line 178
    iget v11, v2, Lcom/haima/hmcp/beans/HmInputMappingContent;->direction:I

    .line 179
    .line 180
    const/4 v12, 0x4

    .line 181
    if-eq v11, v8, :cond_9

    .line 182
    .line 183
    if-eq v11, v9, :cond_8

    .line 184
    .line 185
    if-eq v11, v5, :cond_7

    .line 186
    .line 187
    if-eq v11, v12, :cond_6

    .line 188
    .line 189
    goto :goto_0

    .line 190
    :cond_6
    iget v13, v0, Lcom/haima/hmcp/model/InputOpModel;->inputOpViewOffset:F

    .line 191
    .line 192
    add-float/2addr v6, v13

    .line 193
    goto :goto_0

    .line 194
    :cond_7
    iget v13, v0, Lcom/haima/hmcp/model/InputOpModel;->inputOpViewOffset:F

    .line 195
    .line 196
    add-float/2addr v10, v13

    .line 197
    goto :goto_0

    .line 198
    :cond_8
    iget v13, v0, Lcom/haima/hmcp/model/InputOpModel;->inputOpViewOffset:F

    .line 199
    .line 200
    sub-float/2addr v6, v13

    .line 201
    goto :goto_0

    .line 202
    :cond_9
    iget v13, v0, Lcom/haima/hmcp/model/InputOpModel;->inputOpViewOffset:F

    .line 203
    .line 204
    sub-float/2addr v10, v13

    .line 205
    :goto_0
    invoke-virtual {v0, v6, v10}, Lcom/haima/hmcp/model/InputOpModel;->isOverLimit(FF)Z

    .line 206
    .line 207
    .line 208
    move-result v13

    .line 209
    if-eqz v13, :cond_e

    .line 210
    .line 211
    const-string v13, "HmInputOp-->processHmInputView: x or y point is over limit"

    .line 212
    .line 213
    invoke-static {v4, v13}, Lcom/haima/hmcp/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 214
    .line 215
    .line 216
    sget-object v13, Ljava/util/Locale;->CHINA:Ljava/util/Locale;

    .line 217
    .line 218
    new-array v14, v9, [Ljava/lang/Object;

    .line 219
    .line 220
    invoke-static {v6}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 221
    .line 222
    .line 223
    move-result-object v6

    .line 224
    const/4 v15, 0x0

    .line 225
    aput-object v6, v14, v15

    .line 226
    .line 227
    invoke-static {v10}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 228
    .line 229
    .line 230
    move-result-object v6

    .line 231
    aput-object v6, v14, v8

    .line 232
    .line 233
    const-string v6, "HmInputOp-->processHmInputView: move point [%.4f, %.4f] is over limit "

    .line 234
    .line 235
    invoke-static {v13, v6, v14}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 236
    .line 237
    .line 238
    move-result-object v6

    .line 239
    invoke-static {v4, v6}, Lcom/haima/hmcp/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 240
    .line 241
    .line 242
    new-instance v6, Lcom/haima/hmcp/beans/PointCoord;

    .line 243
    .line 244
    invoke-direct {v6}, Lcom/haima/hmcp/beans/PointCoord;-><init>()V

    .line 245
    .line 246
    .line 247
    iget v10, v0, Lcom/haima/hmcp/model/InputOpModel;->inputOpViewMoveX:F

    .line 248
    .line 249
    iput v10, v6, Lcom/haima/hmcp/beans/PointCoord;->x:F

    .line 250
    .line 251
    iget v10, v0, Lcom/haima/hmcp/model/InputOpModel;->inputOpViewMoveY:F

    .line 252
    .line 253
    iput v10, v6, Lcom/haima/hmcp/beans/PointCoord;->y:F

    .line 254
    .line 255
    invoke-direct {v0, v9, v6}, Lcom/haima/hmcp/model/InputOpModel;->sendKeyboardEvent(ILcom/haima/hmcp/beans/PointCoord;)V

    .line 256
    .line 257
    .line 258
    sget-object v6, Ljava/util/Locale;->CHINA:Ljava/util/Locale;

    .line 259
    .line 260
    new-array v10, v9, [Ljava/lang/Object;

    .line 261
    .line 262
    iget v13, v0, Lcom/haima/hmcp/model/InputOpModel;->inputOpViewMoveX:F

    .line 263
    .line 264
    invoke-static {v13}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 265
    .line 266
    .line 267
    move-result-object v13

    .line 268
    aput-object v13, v10, v15

    .line 269
    .line 270
    iget v13, v0, Lcom/haima/hmcp/model/InputOpModel;->inputOpViewMoveY:F

    .line 271
    .line 272
    invoke-static {v13}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 273
    .line 274
    .line 275
    move-result-object v13

    .line 276
    aput-object v13, v10, v8

    .line 277
    .line 278
    const-string v13, "HmInputOp-->processHmInputView: up point = [%.4f, %.4f]"

    .line 279
    .line 280
    invoke-static {v6, v13, v10}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 281
    .line 282
    .line 283
    move-result-object v6

    .line 284
    invoke-static {v4, v6}, Lcom/haima/hmcp/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 285
    .line 286
    .line 287
    iget v6, v0, Lcom/haima/hmcp/model/InputOpModel;->oriInputOpViewX:F

    .line 288
    .line 289
    iget v10, v0, Lcom/haima/hmcp/model/InputOpModel;->oriInputOpViewY:F

    .line 290
    .line 291
    new-instance v13, Lcom/haima/hmcp/beans/PointCoord;

    .line 292
    .line 293
    invoke-direct {v13}, Lcom/haima/hmcp/beans/PointCoord;-><init>()V

    .line 294
    .line 295
    .line 296
    iput v6, v13, Lcom/haima/hmcp/beans/PointCoord;->x:F

    .line 297
    .line 298
    iput v10, v13, Lcom/haima/hmcp/beans/PointCoord;->y:F

    .line 299
    .line 300
    invoke-direct {v0, v8, v13}, Lcom/haima/hmcp/model/InputOpModel;->sendKeyboardEvent(ILcom/haima/hmcp/beans/PointCoord;)V

    .line 301
    .line 302
    .line 303
    sget-object v13, Ljava/util/Locale;->CHINA:Ljava/util/Locale;

    .line 304
    .line 305
    new-array v14, v9, [Ljava/lang/Object;

    .line 306
    .line 307
    invoke-static {v6}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 308
    .line 309
    .line 310
    move-result-object v16

    .line 311
    aput-object v16, v14, v15

    .line 312
    .line 313
    invoke-static {v10}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 314
    .line 315
    .line 316
    move-result-object v15

    .line 317
    aput-object v15, v14, v8

    .line 318
    .line 319
    const-string v15, "HmInputOp-->processHmInputView: down point [%.4f, %.4f]"

    .line 320
    .line 321
    invoke-static {v13, v15, v14}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 322
    .line 323
    .line 324
    move-result-object v13

    .line 325
    invoke-static {v4, v13}, Lcom/haima/hmcp/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 326
    .line 327
    .line 328
    if-eq v11, v8, :cond_d

    .line 329
    .line 330
    if-eq v11, v9, :cond_c

    .line 331
    .line 332
    if-eq v11, v5, :cond_b

    .line 333
    .line 334
    if-eq v11, v12, :cond_a

    .line 335
    .line 336
    goto :goto_1

    .line 337
    :cond_a
    iget v9, v0, Lcom/haima/hmcp/model/InputOpModel;->inputOpViewOffset:F

    .line 338
    .line 339
    add-float/2addr v6, v9

    .line 340
    goto :goto_1

    .line 341
    :cond_b
    iget v9, v0, Lcom/haima/hmcp/model/InputOpModel;->inputOpViewOffset:F

    .line 342
    .line 343
    add-float/2addr v10, v9

    .line 344
    goto :goto_1

    .line 345
    :cond_c
    iget v9, v0, Lcom/haima/hmcp/model/InputOpModel;->inputOpViewOffset:F

    .line 346
    .line 347
    sub-float/2addr v6, v9

    .line 348
    goto :goto_1

    .line 349
    :cond_d
    iget v9, v0, Lcom/haima/hmcp/model/InputOpModel;->inputOpViewOffset:F

    .line 350
    .line 351
    sub-float/2addr v10, v9

    .line 352
    :cond_e
    :goto_1
    new-instance v9, Lcom/haima/hmcp/beans/PointCoord;

    .line 353
    .line 354
    invoke-direct {v9}, Lcom/haima/hmcp/beans/PointCoord;-><init>()V

    .line 355
    .line 356
    .line 357
    iput v6, v0, Lcom/haima/hmcp/model/InputOpModel;->inputOpViewMoveX:F

    .line 358
    .line 359
    iput v6, v9, Lcom/haima/hmcp/beans/PointCoord;->x:F

    .line 360
    .line 361
    iput v10, v0, Lcom/haima/hmcp/model/InputOpModel;->inputOpViewMoveY:F

    .line 362
    .line 363
    iput v10, v9, Lcom/haima/hmcp/beans/PointCoord;->y:F

    .line 364
    .line 365
    invoke-direct {v0, v5, v9}, Lcom/haima/hmcp/model/InputOpModel;->sendKeyboardEvent(ILcom/haima/hmcp/beans/PointCoord;)V

    .line 366
    .line 367
    .line 368
    :goto_2
    iget v2, v2, Lcom/haima/hmcp/beans/HmInputMappingContent;->viewState:I

    .line 369
    .line 370
    const-string v5, "HmInputOp-->processHmInputView: process success. HmInputOp = "

    .line 371
    .line 372
    if-ne v2, v8, :cond_10

    .line 373
    .line 374
    iget v2, v0, Lcom/haima/hmcp/model/InputOpModel;->inputOpViewMoveX:F

    .line 375
    .line 376
    cmpl-float v2, v2, v7

    .line 377
    .line 378
    if-nez v2, :cond_10

    .line 379
    .line 380
    iget v2, v0, Lcom/haima/hmcp/model/InputOpModel;->inputOpViewMoveY:F

    .line 381
    .line 382
    cmpl-float v2, v2, v7

    .line 383
    .line 384
    if-nez v2, :cond_10

    .line 385
    .line 386
    if-eqz v3, :cond_f

    .line 387
    .line 388
    const-string v2, "view off"

    .line 389
    .line 390
    invoke-interface {v3, v1, v2}, Lcom/haima/hmcp/listeners/HmInputOpListener;->onSendFail(Lcom/haima/hmcp/beans/HmInputOp;Ljava/lang/String;)V

    .line 391
    .line 392
    .line 393
    :cond_f
    new-instance v2, Ljava/lang/StringBuilder;

    .line 394
    .line 395
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 396
    .line 397
    .line 398
    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 399
    .line 400
    .line 401
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 402
    .line 403
    .line 404
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 405
    .line 406
    .line 407
    move-result-object v1

    .line 408
    invoke-static {v4, v1}, Lcom/haima/hmcp/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 409
    .line 410
    .line 411
    goto :goto_3

    .line 412
    :cond_10
    if-eqz v3, :cond_11

    .line 413
    .line 414
    invoke-interface {v3, v1}, Lcom/haima/hmcp/listeners/HmInputOpListener;->onSendSuccess(Lcom/haima/hmcp/beans/HmInputOp;)V

    .line 415
    .line 416
    .line 417
    :cond_11
    new-instance v2, Ljava/lang/StringBuilder;

    .line 418
    .line 419
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 420
    .line 421
    .line 422
    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 423
    .line 424
    .line 425
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 426
    .line 427
    .line 428
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 429
    .line 430
    .line 431
    move-result-object v1

    .line 432
    invoke-static {v4, v1}, Lcom/haima/hmcp/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 433
    .line 434
    .line 435
    :goto_3
    return-void
.end method

.method private sendKeyboardEvent(ILcom/haima/hmcp/beans/PointCoord;)V
    .locals 3

    .line 1
    if-nez p2, :cond_0

    .line 2
    .line 3
    sget-object p1, Lcom/haima/hmcp/model/InputOpModel;->TAG:Ljava/lang/String;

    .line 4
    .line 5
    const-string p2, "sendKeyboardEvent fail, cause pointCoord is null"

    .line 6
    .line 7
    invoke-static {p1, p2}, Lcom/haima/hmcp/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 8
    .line 9
    .line 10
    return-void

    .line 11
    :cond_0
    iget-object v0, p0, Lcom/haima/hmcp/model/InputOpModel;->listener:Lcom/haima/hmcp/listeners/InputOpModelListener;

    .line 12
    .line 13
    if-eqz v0, :cond_1

    .line 14
    .line 15
    new-instance v1, Lcom/haima/hmcp/beans/FPoint;

    .line 16
    .line 17
    iget v2, p2, Lcom/haima/hmcp/beans/PointCoord;->x:F

    .line 18
    .line 19
    iget p2, p2, Lcom/haima/hmcp/beans/PointCoord;->y:F

    .line 20
    .line 21
    invoke-direct {v1, v2, p2}, Lcom/haima/hmcp/beans/FPoint;-><init>(FF)V

    .line 22
    .line 23
    .line 24
    const/4 p2, 0x1

    .line 25
    invoke-interface {v0, p1, v1, p2}, Lcom/haima/hmcp/listeners/InputOpModelListener;->onInputOpEvent(ILcom/haima/hmcp/beans/FPoint;Z)V

    .line 26
    .line 27
    .line 28
    :cond_1
    return-void
.end method

.method private sendMotionEvent(ILcom/haima/hmcp/beans/PointCoord;)V
    .locals 3

    .line 1
    if-nez p2, :cond_0

    .line 2
    .line 3
    sget-object p1, Lcom/haima/hmcp/model/InputOpModel;->TAG:Ljava/lang/String;

    .line 4
    .line 5
    const-string p2, "sendMotionEvent fail, cause pointCoord is null"

    .line 6
    .line 7
    invoke-static {p1, p2}, Lcom/haima/hmcp/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 8
    .line 9
    .line 10
    return-void

    .line 11
    :cond_0
    iget-object v0, p0, Lcom/haima/hmcp/model/InputOpModel;->listener:Lcom/haima/hmcp/listeners/InputOpModelListener;

    .line 12
    .line 13
    if-eqz v0, :cond_1

    .line 14
    .line 15
    new-instance v1, Lcom/haima/hmcp/beans/FPoint;

    .line 16
    .line 17
    iget v2, p2, Lcom/haima/hmcp/beans/PointCoord;->x:F

    .line 18
    .line 19
    iget p2, p2, Lcom/haima/hmcp/beans/PointCoord;->y:F

    .line 20
    .line 21
    invoke-direct {v1, v2, p2}, Lcom/haima/hmcp/beans/FPoint;-><init>(FF)V

    .line 22
    .line 23
    .line 24
    const/4 p2, 0x0

    .line 25
    invoke-interface {v0, p1, v1, p2}, Lcom/haima/hmcp/listeners/InputOpModelListener;->onInputOpEvent(ILcom/haima/hmcp/beans/FPoint;Z)V

    .line 26
    .line 27
    .line 28
    :cond_1
    return-void
.end method


# virtual methods
.method public hasMapping()Z
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/haima/hmcp/model/InputOpModel;->hmInputMappings:Lcom/haima/hmcp/beans/HmInputMappings;

    .line 2
    .line 3
    if-eqz v0, :cond_1

    .line 4
    .line 5
    iget-object v0, p0, Lcom/haima/hmcp/model/InputOpModel;->hmInputOpDirection:Lcom/haima/hmcp/beans/PointCoord;

    .line 6
    .line 7
    if-nez v0, :cond_0

    .line 8
    .line 9
    goto :goto_0

    .line 10
    :cond_0
    const/4 v0, 0x1

    .line 11
    return v0

    .line 12
    :cond_1
    :goto_0
    sget-object v0, Lcom/haima/hmcp/model/InputOpModel;->TAG:Ljava/lang/String;

    .line 13
    .line 14
    const-string v1, "HmInputOp-->setButtonMappingMode: GAMEPAD_MODE_INPUT_OP fail, not config"

    .line 15
    .line 16
    invoke-static {v0, v1}, Lcom/haima/hmcp/utils/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 17
    .line 18
    .line 19
    const/4 v0, 0x0

    .line 20
    return v0
.end method

.method protected isInputOpDirection(Lcom/haima/hmcp/beans/HmInputMappingContent;)Z
    .locals 3

    .line 1
    const/4 v0, 0x0

    .line 2
    if-eqz p1, :cond_1

    .line 3
    .line 4
    iget v1, p1, Lcom/haima/hmcp/beans/HmInputMappingContent;->value:I

    .line 5
    .line 6
    const/16 v2, 0x378

    .line 7
    .line 8
    if-ne v1, v2, :cond_0

    .line 9
    .line 10
    goto :goto_0

    .line 11
    :cond_0
    iget p1, p1, Lcom/haima/hmcp/beans/HmInputMappingContent;->type:I

    .line 12
    .line 13
    const/4 v1, 0x2

    .line 14
    if-ne p1, v1, :cond_1

    .line 15
    .line 16
    const/4 v0, 0x1

    .line 17
    :cond_1
    :goto_0
    return v0
.end method

.method protected isInputOpView(Lcom/haima/hmcp/beans/HmInputMappingContent;)Z
    .locals 2

    .line 1
    const/4 v0, 0x0

    .line 2
    if-nez p1, :cond_0

    .line 3
    .line 4
    return v0

    .line 5
    :cond_0
    iget p1, p1, Lcom/haima/hmcp/beans/HmInputMappingContent;->type:I

    .line 6
    .line 7
    const/4 v1, 0x3

    .line 8
    if-ne p1, v1, :cond_1

    .line 9
    .line 10
    const/4 v0, 0x1

    .line 11
    :cond_1
    return v0
.end method

.method protected isOverLimit(FF)Z
    .locals 2

    const/4 v0, 0x0

    cmpg-float v1, p1, v0

    if-lez v1, :cond_1

    const/high16 v1, 0x3f800000    # 1.0f

    cmpl-float p1, p1, v1

    if-gez p1, :cond_1

    cmpg-float p1, p2, v0

    if-lez p1, :cond_1

    cmpl-float p1, p2, v1

    if-ltz p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    :goto_1
    return p1
.end method

.method public sendInputOp(Ljava/util/ArrayList;Lcom/haima/hmcp/listeners/HmInputOpListener;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/haima/hmcp/beans/HmInputOp;",
            ">;",
            "Lcom/haima/hmcp/listeners/HmInputOpListener;",
            ")V"
        }
    .end annotation

    .line 1
    const/4 v0, 0x0

    .line 2
    if-eqz p1, :cond_a

    .line 3
    .line 4
    invoke-virtual {p1}, Ljava/util/ArrayList;->isEmpty()Z

    .line 5
    .line 6
    .line 7
    move-result v1

    .line 8
    if-eqz v1, :cond_0

    .line 9
    .line 10
    goto/16 :goto_2

    .line 11
    .line 12
    :cond_0
    iget-object v1, p0, Lcom/haima/hmcp/model/InputOpModel;->hmInputMappings:Lcom/haima/hmcp/beans/HmInputMappings;

    .line 13
    .line 14
    if-eqz v1, :cond_8

    .line 15
    .line 16
    iget-object v1, v1, Lcom/haima/hmcp/beans/HmInputMappings;->mapping:Ljava/util/HashMap;

    .line 17
    .line 18
    if-nez v1, :cond_1

    .line 19
    .line 20
    goto/16 :goto_1

    .line 21
    .line 22
    :cond_1
    sget-object v0, Lcom/haima/hmcp/model/InputOpModel;->TAG:Ljava/lang/String;

    .line 23
    .line 24
    new-instance v1, Ljava/lang/StringBuilder;

    .line 25
    .line 26
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 27
    .line 28
    .line 29
    const-string v2, "HmInputOp-->sendInputOp: ops "

    .line 30
    .line 31
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 32
    .line 33
    .line 34
    invoke-virtual {p1}, Ljava/util/ArrayList;->toArray()[Ljava/lang/Object;

    .line 35
    .line 36
    .line 37
    move-result-object v2

    .line 38
    invoke-static {v2}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    .line 39
    .line 40
    .line 41
    move-result-object v2

    .line 42
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 43
    .line 44
    .line 45
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 46
    .line 47
    .line 48
    move-result-object v1

    .line 49
    invoke-static {v0, v1}, Lcom/haima/hmcp/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 50
    .line 51
    .line 52
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 53
    .line 54
    .line 55
    move-result-object p1

    .line 56
    :cond_2
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 57
    .line 58
    .line 59
    move-result v0

    .line 60
    if-eqz v0, :cond_7

    .line 61
    .line 62
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 63
    .line 64
    .line 65
    move-result-object v0

    .line 66
    check-cast v0, Lcom/haima/hmcp/beans/HmInputOp;

    .line 67
    .line 68
    if-nez v0, :cond_3

    .line 69
    .line 70
    if-eqz p2, :cond_2

    .line 71
    .line 72
    const-string v1, "HmInputOp is null"

    .line 73
    .line 74
    invoke-interface {p2, v0, v1}, Lcom/haima/hmcp/listeners/HmInputOpListener;->onSendFail(Lcom/haima/hmcp/beans/HmInputOp;Ljava/lang/String;)V

    .line 75
    .line 76
    .line 77
    goto :goto_0

    .line 78
    :cond_3
    iget v1, v0, Lcom/haima/hmcp/beans/HmInputOp;->value:I

    .line 79
    .line 80
    const/16 v2, 0x378

    .line 81
    .line 82
    if-ne v1, v2, :cond_4

    .line 83
    .line 84
    if-eqz p2, :cond_2

    .line 85
    .line 86
    new-instance v1, Ljava/lang/StringBuilder;

    .line 87
    .line 88
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 89
    .line 90
    .line 91
    const-string v2, "not support input op value: "

    .line 92
    .line 93
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 94
    .line 95
    .line 96
    iget v2, v0, Lcom/haima/hmcp/beans/HmInputOp;->value:I

    .line 97
    .line 98
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 99
    .line 100
    .line 101
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 102
    .line 103
    .line 104
    move-result-object v1

    .line 105
    invoke-interface {p2, v0, v1}, Lcom/haima/hmcp/listeners/HmInputOpListener;->onSendFail(Lcom/haima/hmcp/beans/HmInputOp;Ljava/lang/String;)V

    .line 106
    .line 107
    .line 108
    goto :goto_0

    .line 109
    :cond_4
    iget-object v2, p0, Lcom/haima/hmcp/model/InputOpModel;->hmInputMappings:Lcom/haima/hmcp/beans/HmInputMappings;

    .line 110
    .line 111
    iget-object v2, v2, Lcom/haima/hmcp/beans/HmInputMappings;->mapping:Ljava/util/HashMap;

    .line 112
    .line 113
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 114
    .line 115
    .line 116
    move-result-object v1

    .line 117
    invoke-virtual {v2, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 118
    .line 119
    .line 120
    move-result-object v1

    .line 121
    check-cast v1, Lcom/haima/hmcp/beans/HmInputMappingContent;

    .line 122
    .line 123
    invoke-virtual {p0, v1}, Lcom/haima/hmcp/model/InputOpModel;->isInputOpDirection(Lcom/haima/hmcp/beans/HmInputMappingContent;)Z

    .line 124
    .line 125
    .line 126
    move-result v2

    .line 127
    if-eqz v2, :cond_5

    .line 128
    .line 129
    invoke-direct {p0, v0, v1, p2}, Lcom/haima/hmcp/model/InputOpModel;->processDirectionHmInputOp(Lcom/haima/hmcp/beans/HmInputOp;Lcom/haima/hmcp/beans/HmInputMappingContent;Lcom/haima/hmcp/listeners/HmInputOpListener;)V

    .line 130
    .line 131
    .line 132
    goto :goto_0

    .line 133
    :cond_5
    invoke-virtual {p0, v1}, Lcom/haima/hmcp/model/InputOpModel;->isInputOpView(Lcom/haima/hmcp/beans/HmInputMappingContent;)Z

    .line 134
    .line 135
    .line 136
    move-result v2

    .line 137
    if-eqz v2, :cond_6

    .line 138
    .line 139
    iget-object v2, p0, Lcom/haima/hmcp/model/InputOpModel;->hmInputMappings:Lcom/haima/hmcp/beans/HmInputMappings;

    .line 140
    .line 141
    iget-wide v2, v2, Lcom/haima/hmcp/beans/HmInputMappings;->viewMoveOffset:D

    .line 142
    .line 143
    double-to-float v2, v2

    .line 144
    iput v2, p0, Lcom/haima/hmcp/model/InputOpModel;->inputOpViewOffset:F

    .line 145
    .line 146
    invoke-direct {p0, v0, v1, p2}, Lcom/haima/hmcp/model/InputOpModel;->processHmInputView(Lcom/haima/hmcp/beans/HmInputOp;Lcom/haima/hmcp/beans/HmInputMappingContent;Lcom/haima/hmcp/listeners/HmInputOpListener;)V

    .line 147
    .line 148
    .line 149
    goto :goto_0

    .line 150
    :cond_6
    invoke-direct {p0, v0, v1, p2}, Lcom/haima/hmcp/model/InputOpModel;->processHmInputOp(Lcom/haima/hmcp/beans/HmInputOp;Lcom/haima/hmcp/beans/HmInputMappingContent;Lcom/haima/hmcp/listeners/HmInputOpListener;)V

    .line 151
    .line 152
    .line 153
    goto :goto_0

    .line 154
    :cond_7
    return-void

    .line 155
    :cond_8
    :goto_1
    if-eqz p2, :cond_9

    .line 156
    .line 157
    const-string p1, "not config hm input op mapping"

    .line 158
    .line 159
    invoke-interface {p2, v0, p1}, Lcom/haima/hmcp/listeners/HmInputOpListener;->onSendFail(Lcom/haima/hmcp/beans/HmInputOp;Ljava/lang/String;)V

    .line 160
    .line 161
    .line 162
    :cond_9
    sget-object p1, Lcom/haima/hmcp/model/InputOpModel;->TAG:Ljava/lang/String;

    .line 163
    .line 164
    const-string p2, "HmInputOp-->sendInputOp: fail, cause is not config hm input mapping"

    .line 165
    .line 166
    invoke-static {p1, p2}, Lcom/haima/hmcp/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 167
    .line 168
    .line 169
    return-void

    .line 170
    :cond_a
    :goto_2
    sget-object p1, Lcom/haima/hmcp/model/InputOpModel;->TAG:Ljava/lang/String;

    .line 171
    .line 172
    const-string v1, "HmInputOp-->sendInputOp: inputOps is null or empty"

    .line 173
    .line 174
    invoke-static {p1, v1}, Lcom/haima/hmcp/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 175
    .line 176
    .line 177
    if-eqz p2, :cond_b

    .line 178
    .line 179
    const-string p1, "no HmInputOp can be send"

    .line 180
    .line 181
    invoke-interface {p2, v0, p1}, Lcom/haima/hmcp/listeners/HmInputOpListener;->onSendFail(Lcom/haima/hmcp/beans/HmInputOp;Ljava/lang/String;)V

    .line 182
    .line 183
    .line 184
    :cond_b
    return-void
.end method

.method public setConfig(Ljava/util/HashMap;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 1
    const-string v0, "HmInputOp-->onReceiveMetaInfos: hm input op not config"

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    if-nez p1, :cond_0

    .line 5
    .line 6
    sget-object p1, Lcom/haima/hmcp/model/InputOpModel;->TAG:Ljava/lang/String;

    .line 7
    .line 8
    invoke-static {p1, v0}, Lcom/haima/hmcp/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    iput-object v1, p0, Lcom/haima/hmcp/model/InputOpModel;->hmInputMappings:Lcom/haima/hmcp/beans/HmInputMappings;

    .line 12
    .line 13
    iput-object v1, p0, Lcom/haima/hmcp/model/InputOpModel;->hmInputOpDirection:Lcom/haima/hmcp/beans/PointCoord;

    .line 14
    .line 15
    return-void

    .line 16
    :cond_0
    const-string v2, "key_input_op_mapping_content"

    .line 17
    .line 18
    invoke-virtual {p1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 19
    .line 20
    .line 21
    move-result-object p1

    .line 22
    check-cast p1, Ljava/lang/String;

    .line 23
    .line 24
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 25
    .line 26
    .line 27
    move-result v2

    .line 28
    if-nez v2, :cond_1

    .line 29
    .line 30
    sget-object v0, Lcom/haima/hmcp/model/InputOpModel;->TAG:Ljava/lang/String;

    .line 31
    .line 32
    new-instance v1, Ljava/lang/StringBuilder;

    .line 33
    .line 34
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 35
    .line 36
    .line 37
    const-string v2, "HmInputOp-->onReceiveMetaInfos: hm input op config = "

    .line 38
    .line 39
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 40
    .line 41
    .line 42
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 43
    .line 44
    .line 45
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 46
    .line 47
    .line 48
    move-result-object v1

    .line 49
    invoke-static {v0, v1}, Lcom/haima/hmcp/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 50
    .line 51
    .line 52
    invoke-static {p1}, Lcom/haima/hmcp/utils/ButtonMappingUtil;->getHmInputOpMappings(Ljava/lang/String;)Lcom/haima/hmcp/beans/HmInputMappings;

    .line 53
    .line 54
    .line 55
    move-result-object p1

    .line 56
    iput-object p1, p0, Lcom/haima/hmcp/model/InputOpModel;->hmInputMappings:Lcom/haima/hmcp/beans/HmInputMappings;

    .line 57
    .line 58
    new-instance p1, Ljava/lang/StringBuilder;

    .line 59
    .line 60
    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    .line 61
    .line 62
    .line 63
    const-string v1, "HmInputOp-->onReceiveMetaInfos: parsed hm input op config = "

    .line 64
    .line 65
    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 66
    .line 67
    .line 68
    iget-object v1, p0, Lcom/haima/hmcp/model/InputOpModel;->hmInputMappings:Lcom/haima/hmcp/beans/HmInputMappings;

    .line 69
    .line 70
    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 71
    .line 72
    .line 73
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 74
    .line 75
    .line 76
    move-result-object p1

    .line 77
    invoke-static {v0, p1}, Lcom/haima/hmcp/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 78
    .line 79
    .line 80
    iget-object p1, p0, Lcom/haima/hmcp/model/InputOpModel;->hmInputMappings:Lcom/haima/hmcp/beans/HmInputMappings;

    .line 81
    .line 82
    invoke-static {p1}, Lcom/haima/hmcp/utils/ButtonMappingUtil;->getHmInputOpDirection(Lcom/haima/hmcp/beans/HmInputMappings;)Lcom/haima/hmcp/beans/PointCoord;

    .line 83
    .line 84
    .line 85
    move-result-object p1

    .line 86
    iput-object p1, p0, Lcom/haima/hmcp/model/InputOpModel;->hmInputOpDirection:Lcom/haima/hmcp/beans/PointCoord;

    .line 87
    .line 88
    new-instance p1, Ljava/lang/StringBuilder;

    .line 89
    .line 90
    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    .line 91
    .line 92
    .line 93
    const-string v1, "HmInputOp-->onReceiveMetaInfos: get hm input op direction = "

    .line 94
    .line 95
    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 96
    .line 97
    .line 98
    iget-object v1, p0, Lcom/haima/hmcp/model/InputOpModel;->hmInputOpDirection:Lcom/haima/hmcp/beans/PointCoord;

    .line 99
    .line 100
    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 101
    .line 102
    .line 103
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 104
    .line 105
    .line 106
    move-result-object p1

    .line 107
    invoke-static {v0, p1}, Lcom/haima/hmcp/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 108
    .line 109
    .line 110
    goto :goto_0

    .line 111
    :cond_1
    sget-object p1, Lcom/haima/hmcp/model/InputOpModel;->TAG:Ljava/lang/String;

    .line 112
    .line 113
    invoke-static {p1, v0}, Lcom/haima/hmcp/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 114
    .line 115
    .line 116
    iput-object v1, p0, Lcom/haima/hmcp/model/InputOpModel;->hmInputMappings:Lcom/haima/hmcp/beans/HmInputMappings;

    .line 117
    .line 118
    iput-object v1, p0, Lcom/haima/hmcp/model/InputOpModel;->hmInputOpDirection:Lcom/haima/hmcp/beans/PointCoord;

    .line 119
    .line 120
    :goto_0
    return-void
.end method

.method public setListener(Lcom/haima/hmcp/listeners/InputOpModelListener;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/haima/hmcp/model/InputOpModel;->listener:Lcom/haima/hmcp/listeners/InputOpModelListener;

    .line 2
    .line 3
    return-void
.end method
