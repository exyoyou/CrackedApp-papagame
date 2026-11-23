.class public Lcom/haima/hmcp/device/input/thread/TrackBallRightMoveThread;
.super Ljava/lang/Thread;
.source "SourceFile"


# instance fields
.field private isSend:Z

.field private mDeviceInputSend:Lcom/haima/hmcp/device/input/send/DeviceInputSend;

.field private morePointIsRun:Z

.field private moveSpeed:F

.field private mx:F

.field private my:F

.field private rz:F

.field private x:F

.field private y:F

.field private z:F


# direct methods
.method public constructor <init>(FFZF)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x1

    .line 5
    iput-boolean v0, p0, Lcom/haima/hmcp/device/input/thread/TrackBallRightMoveThread;->isSend:Z

    .line 6
    .line 7
    iput-boolean p3, p0, Lcom/haima/hmcp/device/input/thread/TrackBallRightMoveThread;->morePointIsRun:Z

    .line 8
    .line 9
    iput p4, p0, Lcom/haima/hmcp/device/input/thread/TrackBallRightMoveThread;->moveSpeed:F

    .line 10
    .line 11
    iput p1, p0, Lcom/haima/hmcp/device/input/thread/TrackBallRightMoveThread;->mx:F

    .line 12
    .line 13
    iput p2, p0, Lcom/haima/hmcp/device/input/thread/TrackBallRightMoveThread;->my:F

    .line 14
    .line 15
    iput p1, p0, Lcom/haima/hmcp/device/input/thread/TrackBallRightMoveThread;->x:F

    .line 16
    .line 17
    iput p2, p0, Lcom/haima/hmcp/device/input/thread/TrackBallRightMoveThread;->y:F

    .line 18
    .line 19
    invoke-static {}, Lcom/haima/hmcp/device/input/send/DeviceInputSend;->getInstance()Lcom/haima/hmcp/device/input/send/DeviceInputSend;

    .line 20
    .line 21
    .line 22
    move-result-object p1

    .line 23
    iput-object p1, p0, Lcom/haima/hmcp/device/input/thread/TrackBallRightMoveThread;->mDeviceInputSend:Lcom/haima/hmcp/device/input/send/DeviceInputSend;

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


# virtual methods
.method public run()V
    .locals 11

    .line 1
    iget-object v0, p0, Lcom/haima/hmcp/device/input/thread/TrackBallRightMoveThread;->mDeviceInputSend:Lcom/haima/hmcp/device/input/send/DeviceInputSend;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/haima/hmcp/device/input/send/DeviceInputSend;->getMapModeEventMap()Ljava/util/concurrent/ConcurrentHashMap;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    new-instance v1, Ljava/lang/StringBuilder;

    .line 8
    .line 9
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 10
    .line 11
    .line 12
    iget v2, p0, Lcom/haima/hmcp/device/input/thread/TrackBallRightMoveThread;->x:F

    .line 13
    .line 14
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 15
    .line 16
    .line 17
    const-string v2, ""

    .line 18
    .line 19
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 20
    .line 21
    .line 22
    iget v2, p0, Lcom/haima/hmcp/device/input/thread/TrackBallRightMoveThread;->y:F

    .line 23
    .line 24
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 25
    .line 26
    .line 27
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 28
    .line 29
    .line 30
    move-result-object v1

    .line 31
    const-string v2, "trackBallRMove"

    .line 32
    .line 33
    invoke-virtual {v0, v2, v1}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 34
    .line 35
    .line 36
    :goto_0
    iget-boolean v0, p0, Lcom/haima/hmcp/device/input/thread/TrackBallRightMoveThread;->isSend:Z

    .line 37
    .line 38
    const/4 v1, 0x2

    .line 39
    const-string v3, ":"

    .line 40
    .line 41
    const/4 v4, 0x3

    .line 42
    const-string v5, " , "

    .line 43
    .line 44
    const-string v6, "sendMotionEvent"

    .line 45
    .line 46
    if-eqz v0, :cond_2

    .line 47
    .line 48
    iget-boolean v0, p0, Lcom/haima/hmcp/device/input/thread/TrackBallRightMoveThread;->morePointIsRun:Z

    .line 49
    .line 50
    if-nez v0, :cond_2

    .line 51
    .line 52
    iget v0, p0, Lcom/haima/hmcp/device/input/thread/TrackBallRightMoveThread;->x:F

    .line 53
    .line 54
    iget v7, p0, Lcom/haima/hmcp/device/input/thread/TrackBallRightMoveThread;->moveSpeed:F

    .line 55
    .line 56
    iget v8, p0, Lcom/haima/hmcp/device/input/thread/TrackBallRightMoveThread;->z:F

    .line 57
    .line 58
    mul-float v7, v7, v8

    .line 59
    .line 60
    add-float/2addr v0, v7

    .line 61
    invoke-direct {p0, v0}, Lcom/haima/hmcp/device/input/thread/TrackBallRightMoveThread;->chooseNo(F)F

    .line 62
    .line 63
    .line 64
    move-result v0

    .line 65
    iput v0, p0, Lcom/haima/hmcp/device/input/thread/TrackBallRightMoveThread;->x:F

    .line 66
    .line 67
    iget v0, p0, Lcom/haima/hmcp/device/input/thread/TrackBallRightMoveThread;->y:F

    .line 68
    .line 69
    iget v7, p0, Lcom/haima/hmcp/device/input/thread/TrackBallRightMoveThread;->moveSpeed:F

    .line 70
    .line 71
    iget v8, p0, Lcom/haima/hmcp/device/input/thread/TrackBallRightMoveThread;->rz:F

    .line 72
    .line 73
    mul-float v7, v7, v8

    .line 74
    .line 75
    add-float/2addr v0, v7

    .line 76
    invoke-direct {p0, v0}, Lcom/haima/hmcp/device/input/thread/TrackBallRightMoveThread;->chooseNo(F)F

    .line 77
    .line 78
    .line 79
    move-result v0

    .line 80
    iput v0, p0, Lcom/haima/hmcp/device/input/thread/TrackBallRightMoveThread;->y:F

    .line 81
    .line 82
    iget v7, p0, Lcom/haima/hmcp/device/input/thread/TrackBallRightMoveThread;->x:F

    .line 83
    .line 84
    const/4 v8, 0x0

    .line 85
    cmpg-float v9, v7, v8

    .line 86
    .line 87
    if-lez v9, :cond_1

    .line 88
    .line 89
    const/high16 v9, 0x3f800000    # 1.0f

    .line 90
    .line 91
    cmpl-float v10, v7, v9

    .line 92
    .line 93
    if-gez v10, :cond_1

    .line 94
    .line 95
    cmpg-float v8, v0, v8

    .line 96
    .line 97
    if-lez v8, :cond_1

    .line 98
    .line 99
    cmpl-float v8, v0, v9

    .line 100
    .line 101
    if-ltz v8, :cond_0

    .line 102
    .line 103
    goto :goto_1

    .line 104
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    .line 105
    .line 106
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 107
    .line 108
    .line 109
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 110
    .line 111
    .line 112
    iget v1, p0, Lcom/haima/hmcp/device/input/thread/TrackBallRightMoveThread;->x:F

    .line 113
    .line 114
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 115
    .line 116
    .line 117
    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 118
    .line 119
    .line 120
    iget v1, p0, Lcom/haima/hmcp/device/input/thread/TrackBallRightMoveThread;->y:F

    .line 121
    .line 122
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 123
    .line 124
    .line 125
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 126
    .line 127
    .line 128
    move-result-object v0

    .line 129
    invoke-static {v6, v0}, Lcom/haima/hmcp/utils/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 130
    .line 131
    .line 132
    goto :goto_2

    .line 133
    :cond_1
    :goto_1
    iget-object v3, p0, Lcom/haima/hmcp/device/input/thread/TrackBallRightMoveThread;->mDeviceInputSend:Lcom/haima/hmcp/device/input/send/DeviceInputSend;

    .line 134
    .line 135
    new-instance v8, Lcom/haima/hmcp/beans/FPoint;

    .line 136
    .line 137
    invoke-direct {v8, v7, v0}, Lcom/haima/hmcp/beans/FPoint;-><init>(FF)V

    .line 138
    .line 139
    .line 140
    invoke-virtual {v3, v4, v8}, Lcom/haima/hmcp/device/input/send/DeviceInputSend;->sendMotionEvent(ILcom/haima/hmcp/beans/FPoint;)V

    .line 141
    .line 142
    .line 143
    iget-object v0, p0, Lcom/haima/hmcp/device/input/thread/TrackBallRightMoveThread;->mDeviceInputSend:Lcom/haima/hmcp/device/input/send/DeviceInputSend;

    .line 144
    .line 145
    new-instance v3, Lcom/haima/hmcp/beans/FPoint;

    .line 146
    .line 147
    iget v7, p0, Lcom/haima/hmcp/device/input/thread/TrackBallRightMoveThread;->x:F

    .line 148
    .line 149
    iget v8, p0, Lcom/haima/hmcp/device/input/thread/TrackBallRightMoveThread;->y:F

    .line 150
    .line 151
    invoke-direct {v3, v7, v8}, Lcom/haima/hmcp/beans/FPoint;-><init>(FF)V

    .line 152
    .line 153
    .line 154
    invoke-virtual {v0, v1, v3}, Lcom/haima/hmcp/device/input/send/DeviceInputSend;->sendMotionEvent(ILcom/haima/hmcp/beans/FPoint;)V

    .line 155
    .line 156
    .line 157
    iget v0, p0, Lcom/haima/hmcp/device/input/thread/TrackBallRightMoveThread;->mx:F

    .line 158
    .line 159
    iput v0, p0, Lcom/haima/hmcp/device/input/thread/TrackBallRightMoveThread;->x:F

    .line 160
    .line 161
    iget v0, p0, Lcom/haima/hmcp/device/input/thread/TrackBallRightMoveThread;->my:F

    .line 162
    .line 163
    iput v0, p0, Lcom/haima/hmcp/device/input/thread/TrackBallRightMoveThread;->y:F

    .line 164
    .line 165
    new-instance v0, Ljava/lang/StringBuilder;

    .line 166
    .line 167
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 168
    .line 169
    .line 170
    const-string v1, "x<=0||x>=1||y<=0||y>=1:"

    .line 171
    .line 172
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 173
    .line 174
    .line 175
    iget v1, p0, Lcom/haima/hmcp/device/input/thread/TrackBallRightMoveThread;->x:F

    .line 176
    .line 177
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 178
    .line 179
    .line 180
    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 181
    .line 182
    .line 183
    iget v1, p0, Lcom/haima/hmcp/device/input/thread/TrackBallRightMoveThread;->y:F

    .line 184
    .line 185
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 186
    .line 187
    .line 188
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 189
    .line 190
    .line 191
    move-result-object v0

    .line 192
    invoke-static {v6, v0}, Lcom/haima/hmcp/utils/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 193
    .line 194
    .line 195
    iget-object v0, p0, Lcom/haima/hmcp/device/input/thread/TrackBallRightMoveThread;->mDeviceInputSend:Lcom/haima/hmcp/device/input/send/DeviceInputSend;

    .line 196
    .line 197
    new-instance v1, Lcom/haima/hmcp/beans/FPoint;

    .line 198
    .line 199
    iget v3, p0, Lcom/haima/hmcp/device/input/thread/TrackBallRightMoveThread;->x:F

    .line 200
    .line 201
    iget v5, p0, Lcom/haima/hmcp/device/input/thread/TrackBallRightMoveThread;->y:F

    .line 202
    .line 203
    invoke-direct {v1, v3, v5}, Lcom/haima/hmcp/beans/FPoint;-><init>(FF)V

    .line 204
    .line 205
    .line 206
    const/4 v3, 0x1

    .line 207
    invoke-virtual {v0, v3, v1}, Lcom/haima/hmcp/device/input/send/DeviceInputSend;->sendMotionEvent(ILcom/haima/hmcp/beans/FPoint;)V

    .line 208
    .line 209
    .line 210
    iget v0, p0, Lcom/haima/hmcp/device/input/thread/TrackBallRightMoveThread;->x:F

    .line 211
    .line 212
    iget v1, p0, Lcom/haima/hmcp/device/input/thread/TrackBallRightMoveThread;->moveSpeed:F

    .line 213
    .line 214
    iget v3, p0, Lcom/haima/hmcp/device/input/thread/TrackBallRightMoveThread;->z:F

    .line 215
    .line 216
    mul-float v1, v1, v3

    .line 217
    .line 218
    add-float/2addr v0, v1

    .line 219
    invoke-direct {p0, v0}, Lcom/haima/hmcp/device/input/thread/TrackBallRightMoveThread;->chooseNo(F)F

    .line 220
    .line 221
    .line 222
    move-result v0

    .line 223
    iput v0, p0, Lcom/haima/hmcp/device/input/thread/TrackBallRightMoveThread;->x:F

    .line 224
    .line 225
    iget v0, p0, Lcom/haima/hmcp/device/input/thread/TrackBallRightMoveThread;->y:F

    .line 226
    .line 227
    iget v1, p0, Lcom/haima/hmcp/device/input/thread/TrackBallRightMoveThread;->moveSpeed:F

    .line 228
    .line 229
    iget v3, p0, Lcom/haima/hmcp/device/input/thread/TrackBallRightMoveThread;->rz:F

    .line 230
    .line 231
    mul-float v1, v1, v3

    .line 232
    .line 233
    add-float/2addr v0, v1

    .line 234
    invoke-direct {p0, v0}, Lcom/haima/hmcp/device/input/thread/TrackBallRightMoveThread;->chooseNo(F)F

    .line 235
    .line 236
    .line 237
    move-result v0

    .line 238
    iput v0, p0, Lcom/haima/hmcp/device/input/thread/TrackBallRightMoveThread;->y:F

    .line 239
    .line 240
    :goto_2
    iget-object v0, p0, Lcom/haima/hmcp/device/input/thread/TrackBallRightMoveThread;->mDeviceInputSend:Lcom/haima/hmcp/device/input/send/DeviceInputSend;

    .line 241
    .line 242
    new-instance v1, Lcom/haima/hmcp/beans/FPoint;

    .line 243
    .line 244
    iget v3, p0, Lcom/haima/hmcp/device/input/thread/TrackBallRightMoveThread;->x:F

    .line 245
    .line 246
    iget v5, p0, Lcom/haima/hmcp/device/input/thread/TrackBallRightMoveThread;->y:F

    .line 247
    .line 248
    invoke-direct {v1, v3, v5}, Lcom/haima/hmcp/beans/FPoint;-><init>(FF)V

    .line 249
    .line 250
    .line 251
    invoke-virtual {v0, v4, v1}, Lcom/haima/hmcp/device/input/send/DeviceInputSend;->sendMotionEvent(ILcom/haima/hmcp/beans/FPoint;)V

    .line 252
    .line 253
    .line 254
    const-wide/16 v0, 0x50

    .line 255
    .line 256
    :try_start_0
    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 257
    .line 258
    .line 259
    goto/16 :goto_0

    .line 260
    .line 261
    :catch_0
    move-exception v0

    .line 262
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 263
    .line 264
    .line 265
    goto/16 :goto_0

    .line 266
    .line 267
    :cond_2
    new-instance v0, Ljava/lang/StringBuilder;

    .line 268
    .line 269
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 270
    .line 271
    .line 272
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 273
    .line 274
    .line 275
    iget v3, p0, Lcom/haima/hmcp/device/input/thread/TrackBallRightMoveThread;->x:F

    .line 276
    .line 277
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 278
    .line 279
    .line 280
    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 281
    .line 282
    .line 283
    iget v3, p0, Lcom/haima/hmcp/device/input/thread/TrackBallRightMoveThread;->y:F

    .line 284
    .line 285
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 286
    .line 287
    .line 288
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 289
    .line 290
    .line 291
    move-result-object v0

    .line 292
    invoke-static {v6, v0}, Lcom/haima/hmcp/utils/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 293
    .line 294
    .line 295
    iget-boolean v0, p0, Lcom/haima/hmcp/device/input/thread/TrackBallRightMoveThread;->morePointIsRun:Z

    .line 296
    .line 297
    if-nez v0, :cond_3

    .line 298
    .line 299
    iget-object v0, p0, Lcom/haima/hmcp/device/input/thread/TrackBallRightMoveThread;->mDeviceInputSend:Lcom/haima/hmcp/device/input/send/DeviceInputSend;

    .line 300
    .line 301
    new-instance v3, Lcom/haima/hmcp/beans/FPoint;

    .line 302
    .line 303
    iget v5, p0, Lcom/haima/hmcp/device/input/thread/TrackBallRightMoveThread;->x:F

    .line 304
    .line 305
    iget v6, p0, Lcom/haima/hmcp/device/input/thread/TrackBallRightMoveThread;->y:F

    .line 306
    .line 307
    invoke-direct {v3, v5, v6}, Lcom/haima/hmcp/beans/FPoint;-><init>(FF)V

    .line 308
    .line 309
    .line 310
    invoke-virtual {v0, v4, v3}, Lcom/haima/hmcp/device/input/send/DeviceInputSend;->sendMotionEvent(ILcom/haima/hmcp/beans/FPoint;)V

    .line 311
    .line 312
    .line 313
    iget-object v0, p0, Lcom/haima/hmcp/device/input/thread/TrackBallRightMoveThread;->mDeviceInputSend:Lcom/haima/hmcp/device/input/send/DeviceInputSend;

    .line 314
    .line 315
    new-instance v3, Lcom/haima/hmcp/beans/FPoint;

    .line 316
    .line 317
    iget v4, p0, Lcom/haima/hmcp/device/input/thread/TrackBallRightMoveThread;->x:F

    .line 318
    .line 319
    iget v5, p0, Lcom/haima/hmcp/device/input/thread/TrackBallRightMoveThread;->y:F

    .line 320
    .line 321
    invoke-direct {v3, v4, v5}, Lcom/haima/hmcp/beans/FPoint;-><init>(FF)V

    .line 322
    .line 323
    .line 324
    invoke-virtual {v0, v1, v3}, Lcom/haima/hmcp/device/input/send/DeviceInputSend;->sendMotionEvent(ILcom/haima/hmcp/beans/FPoint;)V

    .line 325
    .line 326
    .line 327
    iget-object v0, p0, Lcom/haima/hmcp/device/input/thread/TrackBallRightMoveThread;->mDeviceInputSend:Lcom/haima/hmcp/device/input/send/DeviceInputSend;

    .line 328
    .line 329
    invoke-virtual {v0}, Lcom/haima/hmcp/device/input/send/DeviceInputSend;->getMapModeEventMap()Ljava/util/concurrent/ConcurrentHashMap;

    .line 330
    .line 331
    .line 332
    move-result-object v0

    .line 333
    invoke-virtual {v0, v2}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 334
    .line 335
    .line 336
    :cond_3
    return-void
.end method

.method public setIsSend(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/haima/hmcp/device/input/thread/TrackBallRightMoveThread;->isSend:Z

    .line 2
    .line 3
    return-void
.end method

.method public setMoveSp(FF)V
    .locals 2

    .line 1
    invoke-static {}, Lcom/haima/hmcp/device/input/send/DeviceInputSend;->getInstance()Lcom/haima/hmcp/device/input/send/DeviceInputSend;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0}, Lcom/haima/hmcp/device/input/send/DeviceInputSend;->getScreenOrientation()Lcom/haima/hmcp/enums/ScreenOrientation;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    sget-object v1, Lcom/haima/hmcp/enums/ScreenOrientation;->PORTRAIT:Lcom/haima/hmcp/enums/ScreenOrientation;

    .line 10
    .line 11
    if-ne v0, v1, :cond_0

    .line 12
    .line 13
    iput p2, p0, Lcom/haima/hmcp/device/input/thread/TrackBallRightMoveThread;->z:F

    .line 14
    .line 15
    neg-float p1, p1

    .line 16
    iput p1, p0, Lcom/haima/hmcp/device/input/thread/TrackBallRightMoveThread;->rz:F

    .line 17
    .line 18
    goto :goto_0

    .line 19
    :cond_0
    iput p1, p0, Lcom/haima/hmcp/device/input/thread/TrackBallRightMoveThread;->z:F

    .line 20
    .line 21
    iput p2, p0, Lcom/haima/hmcp/device/input/thread/TrackBallRightMoveThread;->rz:F

    .line 22
    .line 23
    :goto_0
    return-void
.end method
