.class Ltv/haima/ijk/media/player/IjkMediaPlayer$EventHandler;
.super Landroid/os/Handler;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ltv/haima/ijk/media/player/IjkMediaPlayer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "EventHandler"
.end annotation


# instance fields
.field private final mWeakPlayer:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Ltv/haima/ijk/media/player/IjkMediaPlayer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ltv/haima/ijk/media/player/IjkMediaPlayer;Landroid/os/Looper;)V
    .locals 0

    .line 1
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 2
    .line 3
    .line 4
    new-instance p2, Ljava/lang/ref/WeakReference;

    .line 5
    .line 6
    invoke-direct {p2, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    .line 7
    .line 8
    .line 9
    iput-object p2, p0, Ltv/haima/ijk/media/player/IjkMediaPlayer$EventHandler;->mWeakPlayer:Ljava/lang/ref/WeakReference;

    .line 10
    .line 11
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 9

    .line 1
    iget-object v0, p0, Ltv/haima/ijk/media/player/IjkMediaPlayer$EventHandler;->mWeakPlayer:Ljava/lang/ref/WeakReference;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Ltv/haima/ijk/media/player/IjkMediaPlayer;

    .line 8
    .line 9
    if-eqz v0, :cond_14

    .line 10
    .line 11
    invoke-static {v0}, Ltv/haima/ijk/media/player/IjkMediaPlayer;->access$100(Ltv/haima/ijk/media/player/IjkMediaPlayer;)J

    .line 12
    .line 13
    .line 14
    move-result-wide v1

    .line 15
    const-wide/16 v3, 0x0

    .line 16
    .line 17
    cmp-long v5, v1, v3

    .line 18
    .line 19
    if-nez v5, :cond_0

    .line 20
    .line 21
    goto/16 :goto_4

    .line 22
    .line 23
    :cond_0
    iget v1, p1, Landroid/os/Message;->what:I

    .line 24
    .line 25
    if-eqz v1, :cond_13

    .line 26
    .line 27
    const/4 v2, 0x1

    .line 28
    if-eq v1, v2, :cond_12

    .line 29
    .line 30
    const/4 v5, 0x2

    .line 31
    const/4 v6, 0x0

    .line 32
    if-eq v1, v5, :cond_11

    .line 33
    .line 34
    const/4 v5, 0x3

    .line 35
    if-eq v1, v5, :cond_d

    .line 36
    .line 37
    const/4 v3, 0x4

    .line 38
    if-eq v1, v3, :cond_c

    .line 39
    .line 40
    const/4 v3, 0x5

    .line 41
    if-eq v1, v3, :cond_a

    .line 42
    .line 43
    const/16 v3, 0x63

    .line 44
    .line 45
    if-eq v1, v3, :cond_8

    .line 46
    .line 47
    const/16 v2, 0x64

    .line 48
    .line 49
    if-eq v1, v2, :cond_6

    .line 50
    .line 51
    const/16 v2, 0xc8

    .line 52
    .line 53
    if-eq v1, v2, :cond_2

    .line 54
    .line 55
    const/16 v2, 0x2711

    .line 56
    .line 57
    if-eq v1, v2, :cond_1

    .line 58
    .line 59
    invoke-static {}, Ltv/haima/ijk/media/player/IjkMediaPlayer;->access$000()Ljava/lang/String;

    .line 60
    .line 61
    .line 62
    move-result-object v0

    .line 63
    new-instance v1, Ljava/lang/StringBuilder;

    .line 64
    .line 65
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 66
    .line 67
    .line 68
    const-string v2, "Unknown message type "

    .line 69
    .line 70
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 71
    .line 72
    .line 73
    iget p1, p1, Landroid/os/Message;->what:I

    .line 74
    .line 75
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 76
    .line 77
    .line 78
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 79
    .line 80
    .line 81
    move-result-object p1

    .line 82
    invoke-static {v0, p1}, Ltv/haima/ijk/media/player/pragma/DebugLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 83
    .line 84
    .line 85
    goto/16 :goto_3

    .line 86
    .line 87
    :cond_1
    iget v1, p1, Landroid/os/Message;->arg1:I

    .line 88
    .line 89
    invoke-static {v0, v1}, Ltv/haima/ijk/media/player/IjkMediaPlayer;->access$502(Ltv/haima/ijk/media/player/IjkMediaPlayer;I)I

    .line 90
    .line 91
    .line 92
    iget p1, p1, Landroid/os/Message;->arg2:I

    .line 93
    .line 94
    invoke-static {v0, p1}, Ltv/haima/ijk/media/player/IjkMediaPlayer;->access$602(Ltv/haima/ijk/media/player/IjkMediaPlayer;I)I

    .line 95
    .line 96
    .line 97
    invoke-static {v0}, Ltv/haima/ijk/media/player/IjkMediaPlayer;->access$300(Ltv/haima/ijk/media/player/IjkMediaPlayer;)I

    .line 98
    .line 99
    .line 100
    move-result p1

    .line 101
    invoke-static {v0}, Ltv/haima/ijk/media/player/IjkMediaPlayer;->access$400(Ltv/haima/ijk/media/player/IjkMediaPlayer;)I

    .line 102
    .line 103
    .line 104
    move-result v1

    .line 105
    invoke-static {v0}, Ltv/haima/ijk/media/player/IjkMediaPlayer;->access$500(Ltv/haima/ijk/media/player/IjkMediaPlayer;)I

    .line 106
    .line 107
    .line 108
    move-result v2

    .line 109
    invoke-static {v0}, Ltv/haima/ijk/media/player/IjkMediaPlayer;->access$600(Ltv/haima/ijk/media/player/IjkMediaPlayer;)I

    .line 110
    .line 111
    .line 112
    move-result v3

    .line 113
    invoke-virtual {v0, p1, v1, v2, v3}, Ltv/haima/ijk/media/player/AbstractMediaPlayer;->notifyOnVideoSizeChanged(IIII)V

    .line 114
    .line 115
    .line 116
    goto/16 :goto_3

    .line 117
    .line 118
    :cond_2
    iget v1, p1, Landroid/os/Message;->arg1:I

    .line 119
    .line 120
    const-string v2, "Info: MEDIA_INFO_VIDEO_RENDERING_START\n"

    .line 121
    .line 122
    if-eq v1, v5, :cond_4

    .line 123
    .line 124
    const/16 v3, 0x2717

    .line 125
    .line 126
    if-eq v1, v3, :cond_3

    .line 127
    .line 128
    goto :goto_0

    .line 129
    :cond_3
    invoke-static {}, Ltv/haima/ijk/media/player/IjkMediaPlayer;->access$000()Ljava/lang/String;

    .line 130
    .line 131
    .line 132
    move-result-object v1

    .line 133
    invoke-static {v1, v2}, Ltv/haima/ijk/media/player/pragma/DebugLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 134
    .line 135
    .line 136
    goto :goto_0

    .line 137
    :cond_4
    invoke-static {}, Ltv/haima/ijk/media/player/IjkMediaPlayer;->access$000()Ljava/lang/String;

    .line 138
    .line 139
    .line 140
    move-result-object v1

    .line 141
    invoke-static {v1, v2}, Ltv/haima/ijk/media/player/pragma/DebugLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 142
    .line 143
    .line 144
    invoke-virtual {v0}, Ltv/haima/ijk/media/player/IjkMediaPlayer;->getFirstFrameRenderedCallback()Ltv/haima/ijk/media/player/ijkFrameRenderingStartedCallback;

    .line 145
    .line 146
    .line 147
    move-result-object v1

    .line 148
    if-eqz v1, :cond_5

    .line 149
    .line 150
    invoke-virtual {v0}, Ltv/haima/ijk/media/player/IjkMediaPlayer;->getFirstFrameRenderedCallback()Ltv/haima/ijk/media/player/ijkFrameRenderingStartedCallback;

    .line 151
    .line 152
    .line 153
    move-result-object v1

    .line 154
    invoke-interface {v1}, Ltv/haima/ijk/media/player/ijkFrameRenderingStartedCallback;->FrameRenderingStarted()V

    .line 155
    .line 156
    .line 157
    :cond_5
    :goto_0
    iget v1, p1, Landroid/os/Message;->arg1:I

    .line 158
    .line 159
    iget p1, p1, Landroid/os/Message;->arg2:I

    .line 160
    .line 161
    invoke-virtual {v0, v1, p1}, Ltv/haima/ijk/media/player/AbstractMediaPlayer;->notifyOnInfo(II)Z

    .line 162
    .line 163
    .line 164
    return-void

    .line 165
    :cond_6
    invoke-static {}, Ltv/haima/ijk/media/player/IjkMediaPlayer;->access$000()Ljava/lang/String;

    .line 166
    .line 167
    .line 168
    move-result-object v1

    .line 169
    new-instance v2, Ljava/lang/StringBuilder;

    .line 170
    .line 171
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 172
    .line 173
    .line 174
    const-string v3, "Error ("

    .line 175
    .line 176
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 177
    .line 178
    .line 179
    iget v3, p1, Landroid/os/Message;->arg1:I

    .line 180
    .line 181
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 182
    .line 183
    .line 184
    const-string v3, ","

    .line 185
    .line 186
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 187
    .line 188
    .line 189
    iget v3, p1, Landroid/os/Message;->arg2:I

    .line 190
    .line 191
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 192
    .line 193
    .line 194
    const-string v3, ")"

    .line 195
    .line 196
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 197
    .line 198
    .line 199
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 200
    .line 201
    .line 202
    move-result-object v2

    .line 203
    invoke-static {v1, v2}, Ltv/haima/ijk/media/player/pragma/DebugLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 204
    .line 205
    .line 206
    iget v1, p1, Landroid/os/Message;->arg1:I

    .line 207
    .line 208
    iget p1, p1, Landroid/os/Message;->arg2:I

    .line 209
    .line 210
    invoke-virtual {v0, v1, p1}, Ltv/haima/ijk/media/player/AbstractMediaPlayer;->notifyOnError(II)Z

    .line 211
    .line 212
    .line 213
    move-result p1

    .line 214
    if-nez p1, :cond_7

    .line 215
    .line 216
    invoke-virtual {v0}, Ltv/haima/ijk/media/player/AbstractMediaPlayer;->notifyOnCompletion()V

    .line 217
    .line 218
    .line 219
    :cond_7
    invoke-static {v0, v6}, Ltv/haima/ijk/media/player/IjkMediaPlayer;->access$200(Ltv/haima/ijk/media/player/IjkMediaPlayer;Z)V

    .line 220
    .line 221
    .line 222
    return-void

    .line 223
    :cond_8
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 224
    .line 225
    if-nez v1, :cond_9

    .line 226
    .line 227
    const/4 p1, 0x0

    .line 228
    invoke-virtual {v0, p1}, Ltv/haima/ijk/media/player/AbstractMediaPlayer;->notifyOnTimedText(Ltv/haima/ijk/media/player/IjkTimedText;)V

    .line 229
    .line 230
    .line 231
    goto :goto_1

    .line 232
    :cond_9
    new-instance v1, Ltv/haima/ijk/media/player/IjkTimedText;

    .line 233
    .line 234
    new-instance v3, Landroid/graphics/Rect;

    .line 235
    .line 236
    invoke-direct {v3, v6, v6, v2, v2}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 237
    .line 238
    .line 239
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 240
    .line 241
    check-cast p1, Ljava/lang/String;

    .line 242
    .line 243
    invoke-direct {v1, v3, p1}, Ltv/haima/ijk/media/player/IjkTimedText;-><init>(Landroid/graphics/Rect;Ljava/lang/String;)V

    .line 244
    .line 245
    .line 246
    invoke-virtual {v0, v1}, Ltv/haima/ijk/media/player/AbstractMediaPlayer;->notifyOnTimedText(Ltv/haima/ijk/media/player/IjkTimedText;)V

    .line 247
    .line 248
    .line 249
    :goto_1
    return-void

    .line 250
    :cond_a
    iget v1, p1, Landroid/os/Message;->arg1:I

    .line 251
    .line 252
    invoke-static {v0, v1}, Ltv/haima/ijk/media/player/IjkMediaPlayer;->access$302(Ltv/haima/ijk/media/player/IjkMediaPlayer;I)I

    .line 253
    .line 254
    .line 255
    iget p1, p1, Landroid/os/Message;->arg2:I

    .line 256
    .line 257
    invoke-static {v0, p1}, Ltv/haima/ijk/media/player/IjkMediaPlayer;->access$402(Ltv/haima/ijk/media/player/IjkMediaPlayer;I)I

    .line 258
    .line 259
    .line 260
    invoke-virtual {v0}, Ltv/haima/ijk/media/player/IjkMediaPlayer;->getUseSurfaceTextureFlag()Z

    .line 261
    .line 262
    .line 263
    move-result p1

    .line 264
    if-eqz p1, :cond_b

    .line 265
    .line 266
    invoke-static {v0}, Ltv/haima/ijk/media/player/IjkMediaPlayer;->access$300(Ltv/haima/ijk/media/player/IjkMediaPlayer;)I

    .line 267
    .line 268
    .line 269
    move-result p1

    .line 270
    invoke-static {v0}, Ltv/haima/ijk/media/player/IjkMediaPlayer;->access$400(Ltv/haima/ijk/media/player/IjkMediaPlayer;)I

    .line 271
    .line 272
    .line 273
    move-result v1

    .line 274
    invoke-virtual {v0, p1, v1}, Ltv/haima/ijk/media/player/IjkMediaPlayer;->setTextureSize(II)V

    .line 275
    .line 276
    .line 277
    :cond_b
    invoke-static {v0}, Ltv/haima/ijk/media/player/IjkMediaPlayer;->access$300(Ltv/haima/ijk/media/player/IjkMediaPlayer;)I

    .line 278
    .line 279
    .line 280
    move-result p1

    .line 281
    invoke-static {v0}, Ltv/haima/ijk/media/player/IjkMediaPlayer;->access$400(Ltv/haima/ijk/media/player/IjkMediaPlayer;)I

    .line 282
    .line 283
    .line 284
    move-result v1

    .line 285
    invoke-static {v0}, Ltv/haima/ijk/media/player/IjkMediaPlayer;->access$500(Ltv/haima/ijk/media/player/IjkMediaPlayer;)I

    .line 286
    .line 287
    .line 288
    move-result v2

    .line 289
    invoke-static {v0}, Ltv/haima/ijk/media/player/IjkMediaPlayer;->access$600(Ltv/haima/ijk/media/player/IjkMediaPlayer;)I

    .line 290
    .line 291
    .line 292
    move-result v3

    .line 293
    invoke-virtual {v0, p1, v1, v2, v3}, Ltv/haima/ijk/media/player/AbstractMediaPlayer;->notifyOnVideoSizeChanged(IIII)V

    .line 294
    .line 295
    .line 296
    return-void

    .line 297
    :cond_c
    invoke-virtual {v0}, Ltv/haima/ijk/media/player/AbstractMediaPlayer;->notifyOnSeekComplete()V

    .line 298
    .line 299
    .line 300
    return-void

    .line 301
    :cond_d
    iget p1, p1, Landroid/os/Message;->arg1:I

    .line 302
    .line 303
    int-to-long v1, p1

    .line 304
    cmp-long p1, v1, v3

    .line 305
    .line 306
    if-gez p1, :cond_e

    .line 307
    .line 308
    move-wide v1, v3

    .line 309
    :cond_e
    invoke-virtual {v0}, Ltv/haima/ijk/media/player/IjkMediaPlayer;->getDuration()J

    .line 310
    .line 311
    .line 312
    move-result-wide v5

    .line 313
    const-wide/16 v7, 0x64

    .line 314
    .line 315
    cmp-long p1, v5, v3

    .line 316
    .line 317
    if-lez p1, :cond_f

    .line 318
    .line 319
    mul-long v1, v1, v7

    .line 320
    .line 321
    div-long v3, v1, v5

    .line 322
    .line 323
    :cond_f
    cmp-long p1, v3, v7

    .line 324
    .line 325
    if-ltz p1, :cond_10

    .line 326
    .line 327
    goto :goto_2

    .line 328
    :cond_10
    move-wide v7, v3

    .line 329
    :goto_2
    long-to-int p1, v7

    .line 330
    invoke-virtual {v0, p1}, Ltv/haima/ijk/media/player/AbstractMediaPlayer;->notifyOnBufferingUpdate(I)V

    .line 331
    .line 332
    .line 333
    return-void

    .line 334
    :cond_11
    invoke-static {v0, v6}, Ltv/haima/ijk/media/player/IjkMediaPlayer;->access$200(Ltv/haima/ijk/media/player/IjkMediaPlayer;Z)V

    .line 335
    .line 336
    .line 337
    invoke-virtual {v0}, Ltv/haima/ijk/media/player/AbstractMediaPlayer;->notifyOnCompletion()V

    .line 338
    .line 339
    .line 340
    return-void

    .line 341
    :cond_12
    invoke-virtual {v0}, Ltv/haima/ijk/media/player/AbstractMediaPlayer;->notifyOnPrepared()V

    .line 342
    .line 343
    .line 344
    :cond_13
    :goto_3
    return-void

    .line 345
    :cond_14
    :goto_4
    invoke-static {}, Ltv/haima/ijk/media/player/IjkMediaPlayer;->access$000()Ljava/lang/String;

    .line 346
    .line 347
    .line 348
    move-result-object p1

    .line 349
    const-string v0, "IjkMediaPlayer went away with unhandled events"

    .line 350
    .line 351
    invoke-static {p1, v0}, Ltv/haima/ijk/media/player/pragma/DebugLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 352
    .line 353
    .line 354
    return-void
.end method
