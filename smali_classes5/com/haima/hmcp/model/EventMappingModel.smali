.class public Lcom/haima/hmcp/model/EventMappingModel;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final MOVE_SPEED_DEFAULT:F = 0.04f

.field private static final TAG:Ljava/lang/String; = "EventMappingModel"


# instance fields
.field private buttonMappingUtil:Lcom/haima/hmcp/utils/ButtonMappingUtil;

.field private keyboardEventMap:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap<",
            "Ljava/lang/Integer;",
            "Lcom/haima/hmcp/beans/PointCoord;",
            ">;"
        }
    .end annotation
.end field

.field private listener:Lcom/haima/hmcp/listeners/EventMappingModelListener;

.field protected mCurrentButtonMappings:Lcom/haima/hmcp/beans/ButtonMappings;

.field private mMetaMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mappingEventMap:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap<",
            "Ljava/lang/Integer;",
            "Lcom/haima/hmcp/beans/PointCoord;",
            ">;"
        }
    .end annotation
.end field

.field private mappingVersion:Ljava/lang/String;

.field protected nativeDpadGame:Z


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
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    .line 5
    .line 6
    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    .line 7
    .line 8
    .line 9
    iput-object v0, p0, Lcom/haima/hmcp/model/EventMappingModel;->mappingEventMap:Ljava/util/concurrent/ConcurrentHashMap;

    .line 10
    .line 11
    new-instance v0, Ljava/util/HashMap;

    .line 12
    .line 13
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 14
    .line 15
    .line 16
    iput-object v0, p0, Lcom/haima/hmcp/model/EventMappingModel;->mMetaMap:Ljava/util/HashMap;

    .line 17
    .line 18
    return-void
.end method

.method private initButtonMappings(Ljava/lang/String;)V
    .locals 4

    .line 1
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    invoke-direct {p0}, Lcom/haima/hmcp/model/EventMappingModel;->isNativeDpadGame()Z

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    if-nez v0, :cond_0

    .line 12
    .line 13
    return-void

    .line 14
    :cond_0
    const/4 v0, 0x4

    .line 15
    invoke-direct {p0, v0}, Lcom/haima/hmcp/model/EventMappingModel;->setInputMode(I)V

    .line 16
    .line 17
    .line 18
    new-instance v1, Lcom/haima/hmcp/utils/ButtonMappingUtil;

    .line 19
    .line 20
    invoke-direct {v1}, Lcom/haima/hmcp/utils/ButtonMappingUtil;-><init>()V

    .line 21
    .line 22
    .line 23
    iput-object v1, p0, Lcom/haima/hmcp/model/EventMappingModel;->buttonMappingUtil:Lcom/haima/hmcp/utils/ButtonMappingUtil;

    .line 24
    .line 25
    invoke-virtual {v1, p1}, Lcom/haima/hmcp/utils/ButtonMappingUtil;->initButtonMappings(Ljava/lang/String;)Lcom/haima/hmcp/utils/ButtonMappingUtil;

    .line 26
    .line 27
    .line 28
    iget-object v1, p0, Lcom/haima/hmcp/model/EventMappingModel;->buttonMappingUtil:Lcom/haima/hmcp/utils/ButtonMappingUtil;

    .line 29
    .line 30
    invoke-virtual {v1}, Lcom/haima/hmcp/utils/ButtonMappingUtil;->getVersion()Ljava/lang/String;

    .line 31
    .line 32
    .line 33
    move-result-object v1

    .line 34
    iput-object v1, p0, Lcom/haima/hmcp/model/EventMappingModel;->mappingVersion:Ljava/lang/String;

    .line 35
    .line 36
    iget-object v1, p0, Lcom/haima/hmcp/model/EventMappingModel;->buttonMappingUtil:Lcom/haima/hmcp/utils/ButtonMappingUtil;

    .line 37
    .line 38
    invoke-virtual {v1}, Lcom/haima/hmcp/utils/ButtonMappingUtil;->isJoypad2Dpad()Z

    .line 39
    .line 40
    .line 41
    move-result v1

    .line 42
    if-nez v1, :cond_2

    .line 43
    .line 44
    iget-object v1, p0, Lcom/haima/hmcp/model/EventMappingModel;->buttonMappingUtil:Lcom/haima/hmcp/utils/ButtonMappingUtil;

    .line 45
    .line 46
    invoke-virtual {v1}, Lcom/haima/hmcp/utils/ButtonMappingUtil;->isKeyoard2Dpad()Z

    .line 47
    .line 48
    .line 49
    move-result v1

    .line 50
    if-nez v1, :cond_2

    .line 51
    .line 52
    invoke-direct {p0}, Lcom/haima/hmcp/model/EventMappingModel;->isNativeDpadGame()Z

    .line 53
    .line 54
    .line 55
    move-result v1

    .line 56
    if-eqz v1, :cond_1

    .line 57
    .line 58
    goto :goto_0

    .line 59
    :cond_1
    invoke-direct {p0, v0}, Lcom/haima/hmcp/model/EventMappingModel;->setInputMode(I)V

    .line 60
    .line 61
    .line 62
    goto :goto_1

    .line 63
    :cond_2
    :goto_0
    const/4 v0, 0x5

    .line 64
    invoke-direct {p0, v0}, Lcom/haima/hmcp/model/EventMappingModel;->setInputMode(I)V

    .line 65
    .line 66
    .line 67
    :goto_1
    iget-object v0, p0, Lcom/haima/hmcp/model/EventMappingModel;->mappingVersion:Ljava/lang/String;

    .line 68
    .line 69
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 70
    .line 71
    .line 72
    move-result v0

    .line 73
    if-eqz v0, :cond_3

    .line 74
    .line 75
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 76
    .line 77
    .line 78
    move-result p1

    .line 79
    if-nez p1, :cond_3

    .line 80
    .line 81
    iget-object p1, p0, Lcom/haima/hmcp/model/EventMappingModel;->buttonMappingUtil:Lcom/haima/hmcp/utils/ButtonMappingUtil;

    .line 82
    .line 83
    invoke-virtual {p1}, Lcom/haima/hmcp/utils/ButtonMappingUtil;->getButtonMapping()Lcom/haima/hmcp/beans/ButtonMappings;

    .line 84
    .line 85
    .line 86
    move-result-object p1

    .line 87
    invoke-virtual {p0, p1}, Lcom/haima/hmcp/model/EventMappingModel;->setButtonMapping(Lcom/haima/hmcp/beans/ButtonMappings;)V

    .line 88
    .line 89
    .line 90
    goto/16 :goto_3

    .line 91
    .line 92
    :cond_3
    iget-object p1, p0, Lcom/haima/hmcp/model/EventMappingModel;->mappingEventMap:Ljava/util/concurrent/ConcurrentHashMap;

    .line 93
    .line 94
    invoke-virtual {p1}, Ljava/util/concurrent/ConcurrentHashMap;->clear()V

    .line 95
    .line 96
    .line 97
    sget-object p1, Lcom/haima/hmcp/model/EventMappingModel;->TAG:Ljava/lang/String;

    .line 98
    .line 99
    new-instance v0, Ljava/lang/StringBuilder;

    .line 100
    .line 101
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 102
    .line 103
    .line 104
    const-string v1, "onReceiveMetaInfos initButtonMappings isKeyoard2Dpad:"

    .line 105
    .line 106
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 107
    .line 108
    .line 109
    iget-object v1, p0, Lcom/haima/hmcp/model/EventMappingModel;->buttonMappingUtil:Lcom/haima/hmcp/utils/ButtonMappingUtil;

    .line 110
    .line 111
    invoke-virtual {v1}, Lcom/haima/hmcp/utils/ButtonMappingUtil;->isKeyoard2Dpad()Z

    .line 112
    .line 113
    .line 114
    move-result v1

    .line 115
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 116
    .line 117
    .line 118
    const-string v1, " isJoypad2Dpad:"

    .line 119
    .line 120
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 121
    .line 122
    .line 123
    iget-object v1, p0, Lcom/haima/hmcp/model/EventMappingModel;->buttonMappingUtil:Lcom/haima/hmcp/utils/ButtonMappingUtil;

    .line 124
    .line 125
    invoke-virtual {v1}, Lcom/haima/hmcp/utils/ButtonMappingUtil;->isJoypad2Dpad()Z

    .line 126
    .line 127
    .line 128
    move-result v1

    .line 129
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 130
    .line 131
    .line 132
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 133
    .line 134
    .line 135
    move-result-object v0

    .line 136
    invoke-static {p1, v0}, Lcom/haima/hmcp/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 137
    .line 138
    .line 139
    iget-object v0, p0, Lcom/haima/hmcp/model/EventMappingModel;->buttonMappingUtil:Lcom/haima/hmcp/utils/ButtonMappingUtil;

    .line 140
    .line 141
    invoke-virtual {v0}, Lcom/haima/hmcp/utils/ButtonMappingUtil;->isKeyoard2Dpad()Z

    .line 142
    .line 143
    .line 144
    move-result v0

    .line 145
    if-eqz v0, :cond_4

    .line 146
    .line 147
    iget-object v0, p0, Lcom/haima/hmcp/model/EventMappingModel;->buttonMappingUtil:Lcom/haima/hmcp/utils/ButtonMappingUtil;

    .line 148
    .line 149
    invoke-virtual {v0}, Lcom/haima/hmcp/utils/ButtonMappingUtil;->isJoypad2Dpad()Z

    .line 150
    .line 151
    .line 152
    move-result v0

    .line 153
    if-eqz v0, :cond_4

    .line 154
    .line 155
    iget-object v0, p0, Lcom/haima/hmcp/model/EventMappingModel;->buttonMappingUtil:Lcom/haima/hmcp/utils/ButtonMappingUtil;

    .line 156
    .line 157
    invoke-virtual {v0}, Lcom/haima/hmcp/utils/ButtonMappingUtil;->getMappingEventMap()Ljava/util/concurrent/ConcurrentHashMap;

    .line 158
    .line 159
    .line 160
    move-result-object v0

    .line 161
    iput-object v0, p0, Lcom/haima/hmcp/model/EventMappingModel;->mappingEventMap:Ljava/util/concurrent/ConcurrentHashMap;

    .line 162
    .line 163
    goto :goto_2

    .line 164
    :cond_4
    iget-object v0, p0, Lcom/haima/hmcp/model/EventMappingModel;->buttonMappingUtil:Lcom/haima/hmcp/utils/ButtonMappingUtil;

    .line 165
    .line 166
    invoke-virtual {v0}, Lcom/haima/hmcp/utils/ButtonMappingUtil;->isJoypad2Dpad()Z

    .line 167
    .line 168
    .line 169
    move-result v0

    .line 170
    if-nez v0, :cond_5

    .line 171
    .line 172
    iget-object v0, p0, Lcom/haima/hmcp/model/EventMappingModel;->mappingEventMap:Ljava/util/concurrent/ConcurrentHashMap;

    .line 173
    .line 174
    new-instance v1, Lcom/haima/hmcp/utils/ButtonMappingUtil;

    .line 175
    .line 176
    invoke-direct {v1}, Lcom/haima/hmcp/utils/ButtonMappingUtil;-><init>()V

    .line 177
    .line 178
    .line 179
    iget-object v2, p0, Lcom/haima/hmcp/model/EventMappingModel;->mMetaMap:Ljava/util/HashMap;

    .line 180
    .line 181
    const-string v3, "default_gamepad_dpad_map_content"

    .line 182
    .line 183
    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 184
    .line 185
    .line 186
    move-result-object v2

    .line 187
    check-cast v2, Ljava/lang/String;

    .line 188
    .line 189
    invoke-virtual {v1, v2}, Lcom/haima/hmcp/utils/ButtonMappingUtil;->initButtonMappings(Ljava/lang/String;)Lcom/haima/hmcp/utils/ButtonMappingUtil;

    .line 190
    .line 191
    .line 192
    move-result-object v1

    .line 193
    invoke-virtual {v1}, Lcom/haima/hmcp/utils/ButtonMappingUtil;->getMappingEventMap()Ljava/util/concurrent/ConcurrentHashMap;

    .line 194
    .line 195
    .line 196
    move-result-object v1

    .line 197
    invoke-virtual {v0, v1}, Ljava/util/concurrent/ConcurrentHashMap;->putAll(Ljava/util/Map;)V

    .line 198
    .line 199
    .line 200
    :cond_5
    iget-object v0, p0, Lcom/haima/hmcp/model/EventMappingModel;->buttonMappingUtil:Lcom/haima/hmcp/utils/ButtonMappingUtil;

    .line 201
    .line 202
    invoke-virtual {v0}, Lcom/haima/hmcp/utils/ButtonMappingUtil;->isKeyoard2Dpad()Z

    .line 203
    .line 204
    .line 205
    move-result v0

    .line 206
    if-nez v0, :cond_6

    .line 207
    .line 208
    iget-object v0, p0, Lcom/haima/hmcp/model/EventMappingModel;->mappingEventMap:Ljava/util/concurrent/ConcurrentHashMap;

    .line 209
    .line 210
    new-instance v1, Lcom/haima/hmcp/utils/ButtonMappingUtil;

    .line 211
    .line 212
    invoke-direct {v1}, Lcom/haima/hmcp/utils/ButtonMappingUtil;-><init>()V

    .line 213
    .line 214
    .line 215
    iget-object v2, p0, Lcom/haima/hmcp/model/EventMappingModel;->mMetaMap:Ljava/util/HashMap;

    .line 216
    .line 217
    const-string v3, "default_keyboard_dpad_map_content"

    .line 218
    .line 219
    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 220
    .line 221
    .line 222
    move-result-object v2

    .line 223
    check-cast v2, Ljava/lang/String;

    .line 224
    .line 225
    invoke-virtual {v1, v2}, Lcom/haima/hmcp/utils/ButtonMappingUtil;->initButtonMappings(Ljava/lang/String;)Lcom/haima/hmcp/utils/ButtonMappingUtil;

    .line 226
    .line 227
    .line 228
    move-result-object v1

    .line 229
    invoke-virtual {v1}, Lcom/haima/hmcp/utils/ButtonMappingUtil;->getMappingEventMap()Ljava/util/concurrent/ConcurrentHashMap;

    .line 230
    .line 231
    .line 232
    move-result-object v1

    .line 233
    invoke-virtual {v0, v1}, Ljava/util/concurrent/ConcurrentHashMap;->putAll(Ljava/util/Map;)V

    .line 234
    .line 235
    .line 236
    :cond_6
    iget-object v0, p0, Lcom/haima/hmcp/model/EventMappingModel;->buttonMappingUtil:Lcom/haima/hmcp/utils/ButtonMappingUtil;

    .line 237
    .line 238
    invoke-virtual {v0}, Lcom/haima/hmcp/utils/ButtonMappingUtil;->isKeyoard2Dpad()Z

    .line 239
    .line 240
    .line 241
    move-result v0

    .line 242
    if-nez v0, :cond_7

    .line 243
    .line 244
    iget-object v0, p0, Lcom/haima/hmcp/model/EventMappingModel;->buttonMappingUtil:Lcom/haima/hmcp/utils/ButtonMappingUtil;

    .line 245
    .line 246
    invoke-virtual {v0}, Lcom/haima/hmcp/utils/ButtonMappingUtil;->isJoypad2Dpad()Z

    .line 247
    .line 248
    .line 249
    move-result v0

    .line 250
    if-eqz v0, :cond_8

    .line 251
    .line 252
    :cond_7
    iget-object v0, p0, Lcom/haima/hmcp/model/EventMappingModel;->mappingEventMap:Ljava/util/concurrent/ConcurrentHashMap;

    .line 253
    .line 254
    iget-object v1, p0, Lcom/haima/hmcp/model/EventMappingModel;->buttonMappingUtil:Lcom/haima/hmcp/utils/ButtonMappingUtil;

    .line 255
    .line 256
    invoke-virtual {v1}, Lcom/haima/hmcp/utils/ButtonMappingUtil;->getMappingEventMap()Ljava/util/concurrent/ConcurrentHashMap;

    .line 257
    .line 258
    .line 259
    move-result-object v1

    .line 260
    invoke-virtual {v0, v1}, Ljava/util/concurrent/ConcurrentHashMap;->putAll(Ljava/util/Map;)V

    .line 261
    .line 262
    .line 263
    :cond_8
    :goto_2
    iget-object v0, p0, Lcom/haima/hmcp/model/EventMappingModel;->mappingEventMap:Ljava/util/concurrent/ConcurrentHashMap;

    .line 264
    .line 265
    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap;->isEmpty()Z

    .line 266
    .line 267
    .line 268
    move-result v0

    .line 269
    if-eqz v0, :cond_9

    .line 270
    .line 271
    iget-object v0, p0, Lcom/haima/hmcp/model/EventMappingModel;->buttonMappingUtil:Lcom/haima/hmcp/utils/ButtonMappingUtil;

    .line 272
    .line 273
    invoke-virtual {v0}, Lcom/haima/hmcp/utils/ButtonMappingUtil;->getMappingEventMap()Ljava/util/concurrent/ConcurrentHashMap;

    .line 274
    .line 275
    .line 276
    move-result-object v0

    .line 277
    iput-object v0, p0, Lcom/haima/hmcp/model/EventMappingModel;->mappingEventMap:Ljava/util/concurrent/ConcurrentHashMap;

    .line 278
    .line 279
    :cond_9
    new-instance v0, Ljava/lang/StringBuilder;

    .line 280
    .line 281
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 282
    .line 283
    .line 284
    const-string v1, "onReceiveMetaInfos: mappingEventMap size:"

    .line 285
    .line 286
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 287
    .line 288
    .line 289
    iget-object v1, p0, Lcom/haima/hmcp/model/EventMappingModel;->mappingEventMap:Ljava/util/concurrent/ConcurrentHashMap;

    .line 290
    .line 291
    invoke-virtual {v1}, Ljava/util/concurrent/ConcurrentHashMap;->size()I

    .line 292
    .line 293
    .line 294
    move-result v1

    .line 295
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 296
    .line 297
    .line 298
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 299
    .line 300
    .line 301
    move-result-object v0

    .line 302
    invoke-static {p1, v0}, Lcom/haima/hmcp/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 303
    .line 304
    .line 305
    iget-object v0, p0, Lcom/haima/hmcp/model/EventMappingModel;->mappingEventMap:Ljava/util/concurrent/ConcurrentHashMap;

    .line 306
    .line 307
    const/16 v1, 0x3e7

    .line 308
    .line 309
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 310
    .line 311
    .line 312
    move-result-object v1

    .line 313
    invoke-virtual {v0, v1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 314
    .line 315
    .line 316
    move-result-object v0

    .line 317
    check-cast v0, Lcom/haima/hmcp/beans/PointCoord;

    .line 318
    .line 319
    if-eqz v0, :cond_b

    .line 320
    .line 321
    iget v1, v0, Lcom/haima/hmcp/beans/PointCoord;->rx:F

    .line 322
    .line 323
    const/4 v2, 0x0

    .line 324
    cmpl-float v1, v1, v2

    .line 325
    .line 326
    if-nez v1, :cond_a

    .line 327
    .line 328
    const-string v1, "init mTrackBallL.rx"

    .line 329
    .line 330
    invoke-static {p1, v1}, Lcom/haima/hmcp/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 331
    .line 332
    .line 333
    const v1, 0x3dcccccd    # 0.1f

    .line 334
    .line 335
    .line 336
    iput v1, v0, Lcom/haima/hmcp/beans/PointCoord;->rx:F

    .line 337
    .line 338
    :cond_a
    iget v1, v0, Lcom/haima/hmcp/beans/PointCoord;->ry:F

    .line 339
    .line 340
    cmpl-float v1, v1, v2

    .line 341
    .line 342
    if-nez v1, :cond_b

    .line 343
    .line 344
    const-string v1, "init mTrackBallL.ry"

    .line 345
    .line 346
    invoke-static {p1, v1}, Lcom/haima/hmcp/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 347
    .line 348
    .line 349
    const p1, 0x3e3851ec    # 0.18f

    .line 350
    .line 351
    .line 352
    iput p1, v0, Lcom/haima/hmcp/beans/PointCoord;->ry:F

    .line 353
    .line 354
    :cond_b
    :goto_3
    return-void
.end method

.method private isNativeDpadGame()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/haima/hmcp/model/EventMappingModel;->nativeDpadGame:Z

    .line 2
    .line 3
    return v0
.end method

.method private setInputMode(I)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/haima/hmcp/model/EventMappingModel;->listener:Lcom/haima/hmcp/listeners/EventMappingModelListener;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-interface {v0, p1}, Lcom/haima/hmcp/listeners/EventMappingModelListener;->onInputMode(I)V

    .line 6
    .line 7
    .line 8
    goto :goto_0

    .line 9
    :cond_0
    sget-object p1, Lcom/haima/hmcp/model/EventMappingModel;->TAG:Ljava/lang/String;

    .line 10
    .line 11
    const-string v0, "setInputMode fail"

    .line 12
    .line 13
    invoke-static {p1, v0}, Lcom/haima/hmcp/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 14
    .line 15
    .line 16
    :goto_0
    return-void
.end method


# virtual methods
.method public getButtonDirection()Lcom/haima/hmcp/beans/PointCoord;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/haima/hmcp/model/EventMappingModel;->mCurrentButtonMappings:Lcom/haima/hmcp/beans/ButtonMappings;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    iget-object v0, v0, Lcom/haima/hmcp/beans/ButtonMappings;->buttonDirection:Lcom/haima/hmcp/beans/PointCoord;

    .line 6
    .line 7
    return-object v0

    .line 8
    :cond_0
    iget-object v0, p0, Lcom/haima/hmcp/model/EventMappingModel;->mappingEventMap:Ljava/util/concurrent/ConcurrentHashMap;

    .line 9
    .line 10
    if-eqz v0, :cond_1

    .line 11
    .line 12
    const/16 v1, 0x3e1

    .line 13
    .line 14
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 15
    .line 16
    .line 17
    move-result-object v1

    .line 18
    invoke-virtual {v0, v1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 19
    .line 20
    .line 21
    move-result-object v0

    .line 22
    check-cast v0, Lcom/haima/hmcp/beans/PointCoord;

    .line 23
    .line 24
    return-object v0

    .line 25
    :cond_1
    const/4 v0, 0x0

    .line 26
    return-object v0
.end method

.method public getButtonMappingUtil()Lcom/haima/hmcp/utils/ButtonMappingUtil;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/haima/hmcp/model/EventMappingModel;->buttonMappingUtil:Lcom/haima/hmcp/utils/ButtonMappingUtil;

    .line 2
    .line 3
    return-object v0
.end method

.method public getButtonMappings()Ljava/util/List;
    .locals 8

    .line 1
    const-string v0, "mappingName"

    .line 2
    .line 3
    iget-object v1, p0, Lcom/haima/hmcp/model/EventMappingModel;->mMetaMap:Ljava/util/HashMap;

    .line 4
    .line 5
    const-string v2, "key_map_content_tv"

    .line 6
    .line 7
    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 8
    .line 9
    .line 10
    move-result-object v1

    .line 11
    check-cast v1, Ljava/lang/String;

    .line 12
    .line 13
    iget-object v2, p0, Lcom/haima/hmcp/model/EventMappingModel;->mMetaMap:Ljava/util/HashMap;

    .line 14
    .line 15
    const-string v3, "key_map_content"

    .line 16
    .line 17
    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 18
    .line 19
    .line 20
    move-result-object v2

    .line 21
    check-cast v2, Ljava/lang/String;

    .line 22
    .line 23
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 24
    .line 25
    .line 26
    move-result v3

    .line 27
    const/4 v4, 0x0

    .line 28
    if-eqz v3, :cond_0

    .line 29
    .line 30
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 31
    .line 32
    .line 33
    move-result v3

    .line 34
    if-eqz v3, :cond_0

    .line 35
    .line 36
    sget-object v0, Lcom/haima/hmcp/model/EventMappingModel;->TAG:Ljava/lang/String;

    .line 37
    .line 38
    const-string v1, "getButtonMappings:mButtonMappingsList\u6570\u636e\u4e3a\u7a7a"

    .line 39
    .line 40
    invoke-static {v0, v1}, Lcom/haima/hmcp/utils/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 41
    .line 42
    .line 43
    return-object v4

    .line 44
    :cond_0
    new-instance v3, Ljava/util/ArrayList;

    .line 45
    .line 46
    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 47
    .line 48
    .line 49
    sget-object v5, Lcom/haima/hmcp/model/EventMappingModel;->TAG:Ljava/lang/String;

    .line 50
    .line 51
    new-instance v6, Ljava/lang/StringBuilder;

    .line 52
    .line 53
    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    .line 54
    .line 55
    .line 56
    const-string v7, "getButtonMappings:"

    .line 57
    .line 58
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 59
    .line 60
    .line 61
    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 62
    .line 63
    .line 64
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 65
    .line 66
    .line 67
    move-result-object v6

    .line 68
    invoke-static {v5, v6}, Lcom/haima/hmcp/utils/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 69
    .line 70
    .line 71
    new-instance v5, Lorg/json/JSONObject;

    .line 72
    .line 73
    invoke-direct {v5}, Lorg/json/JSONObject;-><init>()V

    .line 74
    .line 75
    .line 76
    :try_start_0
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 77
    .line 78
    .line 79
    move-result v6

    .line 80
    if-nez v6, :cond_2

    .line 81
    .line 82
    invoke-static {v1}, Lcom/haima/hmcp/utils/StringUtils;->replaceSpecialStr(Ljava/lang/String;)Ljava/lang/String;

    .line 83
    .line 84
    .line 85
    move-result-object v1

    .line 86
    new-instance v6, Lorg/json/JSONObject;

    .line 87
    .line 88
    invoke-direct {v6, v1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 89
    .line 90
    .line 91
    const-string v1, "buttonMappingsList"

    .line 92
    .line 93
    invoke-virtual {v6, v1}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    .line 94
    .line 95
    .line 96
    move-result-object v1

    .line 97
    const/4 v6, 0x0

    .line 98
    invoke-virtual {v1, v6}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    .line 99
    .line 100
    .line 101
    move-result-object v1

    .line 102
    invoke-virtual {v1, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 103
    .line 104
    .line 105
    move-result-object v7

    .line 106
    invoke-virtual {v5, v0, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 107
    .line 108
    .line 109
    iget-object v0, p0, Lcom/haima/hmcp/model/EventMappingModel;->mappingVersion:Ljava/lang/String;

    .line 110
    .line 111
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 112
    .line 113
    .line 114
    move-result v0
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 115
    const-string v7, "joyKeymappingList"

    .line 116
    .line 117
    if-eqz v0, :cond_1

    .line 118
    .line 119
    :try_start_1
    iget-object v0, p0, Lcom/haima/hmcp/model/EventMappingModel;->buttonMappingUtil:Lcom/haima/hmcp/utils/ButtonMappingUtil;

    .line 120
    .line 121
    invoke-virtual {v0, v1, v6}, Lcom/haima/hmcp/utils/ButtonMappingUtil;->getKeymappingList(Lorg/json/JSONObject;I)Lorg/json/JSONArray;

    .line 122
    .line 123
    .line 124
    move-result-object v0

    .line 125
    invoke-virtual {v5, v7, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 126
    .line 127
    .line 128
    const-string v0, "dpadKeymappingList"

    .line 129
    .line 130
    iget-object v6, p0, Lcom/haima/hmcp/model/EventMappingModel;->buttonMappingUtil:Lcom/haima/hmcp/utils/ButtonMappingUtil;

    .line 131
    .line 132
    const/4 v7, 0x1

    .line 133
    invoke-virtual {v6, v1, v7}, Lcom/haima/hmcp/utils/ButtonMappingUtil;->getKeymappingList(Lorg/json/JSONObject;I)Lorg/json/JSONArray;

    .line 134
    .line 135
    .line 136
    move-result-object v1

    .line 137
    invoke-virtual {v5, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 138
    .line 139
    .line 140
    goto :goto_0

    .line 141
    :cond_1
    const-string v0, "mapping"

    .line 142
    .line 143
    invoke-virtual {v1, v0}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    .line 144
    .line 145
    .line 146
    move-result-object v0

    .line 147
    invoke-virtual {v5, v7, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 148
    .line 149
    .line 150
    :cond_2
    :goto_0
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 151
    .line 152
    .line 153
    move-result v0

    .line 154
    if-nez v0, :cond_3

    .line 155
    .line 156
    const-string v0, "keyboardKeymappingList"

    .line 157
    .line 158
    iget-object v1, p0, Lcom/haima/hmcp/model/EventMappingModel;->buttonMappingUtil:Lcom/haima/hmcp/utils/ButtonMappingUtil;

    .line 159
    .line 160
    const/4 v2, 0x2

    .line 161
    invoke-virtual {v1, v4, v2}, Lcom/haima/hmcp/utils/ButtonMappingUtil;->getKeymappingList(Lorg/json/JSONObject;I)Lorg/json/JSONArray;

    .line 162
    .line 163
    .line 164
    move-result-object v1

    .line 165
    invoke-virtual {v5, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 166
    .line 167
    .line 168
    :cond_3
    invoke-interface {v3, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0

    .line 169
    .line 170
    .line 171
    goto :goto_1

    .line 172
    :catch_0
    move-exception v0

    .line 173
    sget-object v1, Lcom/haima/hmcp/model/EventMappingModel;->TAG:Ljava/lang/String;

    .line 174
    .line 175
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 176
    .line 177
    .line 178
    move-result-object v0

    .line 179
    invoke-static {v1, v0}, Lcom/haima/hmcp/utils/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 180
    .line 181
    .line 182
    :goto_1
    return-object v3
.end method

.method public getCurrentButtonMapping()Lcom/haima/hmcp/beans/ButtonMappings;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/haima/hmcp/model/EventMappingModel;->mCurrentButtonMappings:Lcom/haima/hmcp/beans/ButtonMappings;

    .line 2
    .line 3
    return-object v0
.end method

.method public getCurrentButtonMappingsPointCoord(I)Lcom/haima/hmcp/beans/PointCoord;
    .locals 3

    .line 1
    invoke-virtual {p0}, Lcom/haima/hmcp/model/EventMappingModel;->getCurrentButtonMapping()Lcom/haima/hmcp/beans/ButtonMappings;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    const/4 v1, 0x0

    .line 6
    if-nez v0, :cond_0

    .line 7
    .line 8
    return-object v1

    .line 9
    :cond_0
    const/16 v2, 0x60

    .line 10
    .line 11
    if-eq p1, v2, :cond_4

    .line 12
    .line 13
    const/16 v2, 0x61

    .line 14
    .line 15
    if-eq p1, v2, :cond_3

    .line 16
    .line 17
    const/16 v2, 0x63

    .line 18
    .line 19
    if-eq p1, v2, :cond_2

    .line 20
    .line 21
    const/16 v2, 0x64

    .line 22
    .line 23
    if-eq p1, v2, :cond_1

    .line 24
    .line 25
    packed-switch p1, :pswitch_data_0

    .line 26
    .line 27
    .line 28
    packed-switch p1, :pswitch_data_1

    .line 29
    .line 30
    .line 31
    goto :goto_0

    .line 32
    :pswitch_0
    iget-object v1, v0, Lcom/haima/hmcp/beans/ButtonMappings;->buttonUp:Lcom/haima/hmcp/beans/PointCoord;

    .line 33
    .line 34
    goto :goto_0

    .line 35
    :pswitch_1
    iget-object v1, v0, Lcom/haima/hmcp/beans/ButtonMappings;->buttonDown:Lcom/haima/hmcp/beans/PointCoord;

    .line 36
    .line 37
    goto :goto_0

    .line 38
    :pswitch_2
    iget-object v1, v0, Lcom/haima/hmcp/beans/ButtonMappings;->buttonLeft:Lcom/haima/hmcp/beans/PointCoord;

    .line 39
    .line 40
    goto :goto_0

    .line 41
    :pswitch_3
    iget-object v1, v0, Lcom/haima/hmcp/beans/ButtonMappings;->buttonRight:Lcom/haima/hmcp/beans/PointCoord;

    .line 42
    .line 43
    goto :goto_0

    .line 44
    :pswitch_4
    iget-object v1, v0, Lcom/haima/hmcp/beans/ButtonMappings;->buttonR2:Lcom/haima/hmcp/beans/PointCoord;

    .line 45
    .line 46
    goto :goto_0

    .line 47
    :pswitch_5
    iget-object v1, v0, Lcom/haima/hmcp/beans/ButtonMappings;->buttonL2:Lcom/haima/hmcp/beans/PointCoord;

    .line 48
    .line 49
    goto :goto_0

    .line 50
    :pswitch_6
    iget-object v1, v0, Lcom/haima/hmcp/beans/ButtonMappings;->buttonR1:Lcom/haima/hmcp/beans/PointCoord;

    .line 51
    .line 52
    goto :goto_0

    .line 53
    :pswitch_7
    iget-object v1, v0, Lcom/haima/hmcp/beans/ButtonMappings;->buttonL1:Lcom/haima/hmcp/beans/PointCoord;

    .line 54
    .line 55
    goto :goto_0

    .line 56
    :cond_1
    iget-object v1, v0, Lcom/haima/hmcp/beans/ButtonMappings;->buttonY:Lcom/haima/hmcp/beans/PointCoord;

    .line 57
    .line 58
    goto :goto_0

    .line 59
    :cond_2
    iget-object v1, v0, Lcom/haima/hmcp/beans/ButtonMappings;->buttonX:Lcom/haima/hmcp/beans/PointCoord;

    .line 60
    .line 61
    goto :goto_0

    .line 62
    :cond_3
    iget-object v1, v0, Lcom/haima/hmcp/beans/ButtonMappings;->buttonB:Lcom/haima/hmcp/beans/PointCoord;

    .line 63
    .line 64
    goto :goto_0

    .line 65
    :cond_4
    iget-object v1, v0, Lcom/haima/hmcp/beans/ButtonMappings;->buttonA:Lcom/haima/hmcp/beans/PointCoord;

    .line 66
    .line 67
    :goto_0
    return-object v1

    .line 68
    nop

    .line 69
    :pswitch_data_0
    .packed-switch 0x66
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
    .end packed-switch

    .line 70
    .line 71
    .line 72
    .line 73
    .line 74
    .line 75
    .line 76
    .line 77
    .line 78
    .line 79
    .line 80
    .line 81
    :pswitch_data_1
    .packed-switch 0x3e2
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public getKeyboardDirection()Lcom/haima/hmcp/beans/PointCoord;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/haima/hmcp/model/EventMappingModel;->keyboardEventMap:Ljava/util/concurrent/ConcurrentHashMap;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    const/16 v1, 0x378

    .line 6
    .line 7
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 8
    .line 9
    .line 10
    move-result-object v1

    .line 11
    invoke-virtual {v0, v1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    check-cast v0, Lcom/haima/hmcp/beans/PointCoord;

    .line 16
    .line 17
    return-object v0

    .line 18
    :cond_0
    const/4 v0, 0x0

    .line 19
    return-object v0
.end method

.method public getKeyboardEventMap()Ljava/util/concurrent/ConcurrentHashMap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/concurrent/ConcurrentHashMap<",
            "Ljava/lang/Integer;",
            "Lcom/haima/hmcp/beans/PointCoord;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/haima/hmcp/model/EventMappingModel;->keyboardEventMap:Ljava/util/concurrent/ConcurrentHashMap;

    .line 2
    .line 3
    return-object v0
.end method

.method public getMappingEvent(I)Lcom/haima/hmcp/beans/PointCoord;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/haima/hmcp/model/EventMappingModel;->mappingEventMap:Ljava/util/concurrent/ConcurrentHashMap;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 6
    .line 7
    .line 8
    move-result-object p1

    .line 9
    invoke-virtual {v0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 10
    .line 11
    .line 12
    move-result-object p1

    .line 13
    check-cast p1, Lcom/haima/hmcp/beans/PointCoord;

    .line 14
    .line 15
    return-object p1

    .line 16
    :cond_0
    const/4 p1, 0x0

    .line 17
    return-object p1
.end method

.method public getMappingEventMap()Ljava/util/concurrent/ConcurrentHashMap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/concurrent/ConcurrentHashMap<",
            "Ljava/lang/Integer;",
            "Lcom/haima/hmcp/beans/PointCoord;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/haima/hmcp/model/EventMappingModel;->mappingEventMap:Ljava/util/concurrent/ConcurrentHashMap;

    .line 2
    .line 3
    return-object v0
.end method

.method public getMappingKeyboardEvent(I)Lcom/haima/hmcp/beans/PointCoord;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/haima/hmcp/model/EventMappingModel;->getKeyboardEventMap()Ljava/util/concurrent/ConcurrentHashMap;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    invoke-virtual {p0}, Lcom/haima/hmcp/model/EventMappingModel;->getKeyboardEventMap()Ljava/util/concurrent/ConcurrentHashMap;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 12
    .line 13
    .line 14
    move-result-object p1

    .line 15
    invoke-virtual {v0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 16
    .line 17
    .line 18
    move-result-object p1

    .line 19
    check-cast p1, Lcom/haima/hmcp/beans/PointCoord;

    .line 20
    .line 21
    return-object p1

    .line 22
    :cond_0
    const/4 p1, 0x0

    .line 23
    return-object p1
.end method

.method public getMappingVersion()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/haima/hmcp/model/EventMappingModel;->mappingVersion:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public getMoveSpeed()F
    .locals 3

    .line 1
    invoke-virtual {p0}, Lcom/haima/hmcp/model/EventMappingModel;->getTrackBallR()Lcom/haima/hmcp/beans/PointCoord;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    const v1, 0x3d23d70a    # 0.04f

    .line 6
    .line 7
    .line 8
    if-nez v0, :cond_0

    .line 9
    .line 10
    return v1

    .line 11
    :cond_0
    iget v0, v0, Lcom/haima/hmcp/beans/PointCoord;->sp:F

    .line 12
    .line 13
    const/4 v2, 0x0

    .line 14
    cmpl-float v2, v0, v2

    .line 15
    .line 16
    if-lez v2, :cond_1

    .line 17
    .line 18
    return v0

    .line 19
    :cond_1
    return v1
.end method

.method public getTrackBallL()Lcom/haima/hmcp/beans/PointCoord;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/haima/hmcp/model/EventMappingModel;->mCurrentButtonMappings:Lcom/haima/hmcp/beans/ButtonMappings;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    iget-object v0, v0, Lcom/haima/hmcp/beans/ButtonMappings;->trackBallL:Lcom/haima/hmcp/beans/PointCoord;

    .line 6
    .line 7
    return-object v0

    .line 8
    :cond_0
    iget-object v0, p0, Lcom/haima/hmcp/model/EventMappingModel;->mappingEventMap:Ljava/util/concurrent/ConcurrentHashMap;

    .line 9
    .line 10
    if-eqz v0, :cond_1

    .line 11
    .line 12
    const/16 v1, 0x3e7

    .line 13
    .line 14
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 15
    .line 16
    .line 17
    move-result-object v1

    .line 18
    invoke-virtual {v0, v1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 19
    .line 20
    .line 21
    move-result-object v0

    .line 22
    check-cast v0, Lcom/haima/hmcp/beans/PointCoord;

    .line 23
    .line 24
    return-object v0

    .line 25
    :cond_1
    const/4 v0, 0x0

    .line 26
    return-object v0
.end method

.method public getTrackBallR()Lcom/haima/hmcp/beans/PointCoord;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/haima/hmcp/model/EventMappingModel;->mCurrentButtonMappings:Lcom/haima/hmcp/beans/ButtonMappings;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    iget-object v0, v0, Lcom/haima/hmcp/beans/ButtonMappings;->trackBallR:Lcom/haima/hmcp/beans/PointCoord;

    .line 6
    .line 7
    return-object v0

    .line 8
    :cond_0
    iget-object v0, p0, Lcom/haima/hmcp/model/EventMappingModel;->mappingEventMap:Ljava/util/concurrent/ConcurrentHashMap;

    .line 9
    .line 10
    if-eqz v0, :cond_1

    .line 11
    .line 12
    const/16 v1, 0x3e6

    .line 13
    .line 14
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 15
    .line 16
    .line 17
    move-result-object v1

    .line 18
    invoke-virtual {v0, v1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 19
    .line 20
    .line 21
    move-result-object v0

    .line 22
    check-cast v0, Lcom/haima/hmcp/beans/PointCoord;

    .line 23
    .line 24
    return-object v0

    .line 25
    :cond_1
    const/4 v0, 0x0

    .line 26
    return-object v0
.end method

.method public getTrackBallRMove()Z
    .locals 3

    .line 1
    invoke-virtual {p0}, Lcom/haima/hmcp/model/EventMappingModel;->getTrackBallR()Lcom/haima/hmcp/beans/PointCoord;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    const/4 v1, 0x0

    .line 6
    if-nez v0, :cond_0

    .line 7
    .line 8
    return v1

    .line 9
    :cond_0
    iget v0, v0, Lcom/haima/hmcp/beans/PointCoord;->sp:F

    .line 10
    .line 11
    const/4 v2, 0x0

    .line 12
    cmpl-float v0, v0, v2

    .line 13
    .line 14
    if-eqz v0, :cond_1

    .line 15
    .line 16
    const/4 v1, 0x1

    .line 17
    :cond_1
    return v1
.end method

.method public hasKeyboardMappingEvent()Z
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/haima/hmcp/model/EventMappingModel;->getKeyboardEventMap()Ljava/util/concurrent/ConcurrentHashMap;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    invoke-virtual {p0}, Lcom/haima/hmcp/model/EventMappingModel;->getKeyboardEventMap()Ljava/util/concurrent/ConcurrentHashMap;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap;->isEmpty()Z

    .line 12
    .line 13
    .line 14
    move-result v0

    .line 15
    if-nez v0, :cond_0

    .line 16
    .line 17
    const/4 v0, 0x1

    .line 18
    goto :goto_0

    .line 19
    :cond_0
    const/4 v0, 0x0

    .line 20
    :goto_0
    return v0
.end method

.method public hasMappingEvent()Z
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/haima/hmcp/model/EventMappingModel;->getMappingEventMap()Ljava/util/concurrent/ConcurrentHashMap;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    invoke-virtual {p0}, Lcom/haima/hmcp/model/EventMappingModel;->getMappingEventMap()Ljava/util/concurrent/ConcurrentHashMap;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap;->isEmpty()Z

    .line 12
    .line 13
    .line 14
    move-result v0

    .line 15
    if-nez v0, :cond_0

    .line 16
    .line 17
    const/4 v0, 0x1

    .line 18
    goto :goto_0

    .line 19
    :cond_0
    const/4 v0, 0x0

    .line 20
    :goto_0
    return v0
.end method

.method public setButtonMapping(Lcom/haima/hmcp/beans/ButtonMappings;)V
    .locals 3

    .line 1
    if-eqz p1, :cond_1

    .line 2
    .line 3
    iput-object p1, p0, Lcom/haima/hmcp/model/EventMappingModel;->mCurrentButtonMappings:Lcom/haima/hmcp/beans/ButtonMappings;

    .line 4
    .line 5
    iget-object p1, p1, Lcom/haima/hmcp/beans/ButtonMappings;->trackBallL:Lcom/haima/hmcp/beans/PointCoord;

    .line 6
    .line 7
    if-eqz p1, :cond_1

    .line 8
    .line 9
    iget v0, p1, Lcom/haima/hmcp/beans/PointCoord;->rx:F

    .line 10
    .line 11
    const/4 v1, 0x0

    .line 12
    cmpl-float v0, v0, v1

    .line 13
    .line 14
    if-nez v0, :cond_0

    .line 15
    .line 16
    sget-object v0, Lcom/haima/hmcp/model/EventMappingModel;->TAG:Ljava/lang/String;

    .line 17
    .line 18
    const-string v2, "init mTrackBallL.rx"

    .line 19
    .line 20
    invoke-static {v0, v2}, Lcom/haima/hmcp/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 21
    .line 22
    .line 23
    const v0, 0x3dcccccd    # 0.1f

    .line 24
    .line 25
    .line 26
    iput v0, p1, Lcom/haima/hmcp/beans/PointCoord;->rx:F

    .line 27
    .line 28
    :cond_0
    iget v0, p1, Lcom/haima/hmcp/beans/PointCoord;->ry:F

    .line 29
    .line 30
    cmpl-float v0, v0, v1

    .line 31
    .line 32
    if-nez v0, :cond_1

    .line 33
    .line 34
    sget-object v0, Lcom/haima/hmcp/model/EventMappingModel;->TAG:Ljava/lang/String;

    .line 35
    .line 36
    const-string v1, "init mTrackBallL.ry"

    .line 37
    .line 38
    invoke-static {v0, v1}, Lcom/haima/hmcp/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 39
    .line 40
    .line 41
    const v0, 0x3e3851ec    # 0.18f

    .line 42
    .line 43
    .line 44
    iput v0, p1, Lcom/haima/hmcp/beans/PointCoord;->ry:F

    .line 45
    .line 46
    :cond_1
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
    iget-object v0, p0, Lcom/haima/hmcp/model/EventMappingModel;->mMetaMap:Ljava/util/HashMap;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lcom/haima/hmcp/model/EventMappingModel;->mMetaMap:Ljava/util/HashMap;

    .line 7
    .line 8
    invoke-virtual {v0, p1}, Ljava/util/HashMap;->putAll(Ljava/util/Map;)V

    .line 9
    .line 10
    .line 11
    iget-object p1, p0, Lcom/haima/hmcp/model/EventMappingModel;->mMetaMap:Ljava/util/HashMap;

    .line 12
    .line 13
    const-string v0, "key_map_content_tv"

    .line 14
    .line 15
    invoke-virtual {p1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 16
    .line 17
    .line 18
    move-result-object p1

    .line 19
    check-cast p1, Ljava/lang/String;

    .line 20
    .line 21
    invoke-direct {p0, p1}, Lcom/haima/hmcp/model/EventMappingModel;->initButtonMappings(Ljava/lang/String;)V

    .line 22
    .line 23
    .line 24
    iget-object p1, p0, Lcom/haima/hmcp/model/EventMappingModel;->mMetaMap:Ljava/util/HashMap;

    .line 25
    .line 26
    const-string v0, "key_map_content"

    .line 27
    .line 28
    invoke-virtual {p1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 29
    .line 30
    .line 31
    move-result-object p1

    .line 32
    check-cast p1, Ljava/lang/String;

    .line 33
    .line 34
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 35
    .line 36
    .line 37
    move-result v0

    .line 38
    if-nez v0, :cond_1

    .line 39
    .line 40
    iget-object v0, p0, Lcom/haima/hmcp/model/EventMappingModel;->buttonMappingUtil:Lcom/haima/hmcp/utils/ButtonMappingUtil;

    .line 41
    .line 42
    if-nez v0, :cond_0

    .line 43
    .line 44
    new-instance v0, Lcom/haima/hmcp/utils/ButtonMappingUtil;

    .line 45
    .line 46
    invoke-direct {v0}, Lcom/haima/hmcp/utils/ButtonMappingUtil;-><init>()V

    .line 47
    .line 48
    .line 49
    iput-object v0, p0, Lcom/haima/hmcp/model/EventMappingModel;->buttonMappingUtil:Lcom/haima/hmcp/utils/ButtonMappingUtil;

    .line 50
    .line 51
    :cond_0
    iget-object v0, p0, Lcom/haima/hmcp/model/EventMappingModel;->buttonMappingUtil:Lcom/haima/hmcp/utils/ButtonMappingUtil;

    .line 52
    .line 53
    invoke-virtual {v0, p1}, Lcom/haima/hmcp/utils/ButtonMappingUtil;->initKeyboardMappings(Ljava/lang/String;)V

    .line 54
    .line 55
    .line 56
    sget-object v0, Lcom/haima/hmcp/model/EventMappingModel;->TAG:Ljava/lang/String;

    .line 57
    .line 58
    new-instance v1, Ljava/lang/StringBuilder;

    .line 59
    .line 60
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 61
    .line 62
    .line 63
    const-string v2, "initKeyboardMappings: "

    .line 64
    .line 65
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 66
    .line 67
    .line 68
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 69
    .line 70
    .line 71
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 72
    .line 73
    .line 74
    move-result-object p1

    .line 75
    invoke-static {v0, p1}, Lcom/haima/hmcp/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 76
    .line 77
    .line 78
    const/4 p1, 0x4

    .line 79
    invoke-direct {p0, p1}, Lcom/haima/hmcp/model/EventMappingModel;->setInputMode(I)V

    .line 80
    .line 81
    .line 82
    iget-object p1, p0, Lcom/haima/hmcp/model/EventMappingModel;->buttonMappingUtil:Lcom/haima/hmcp/utils/ButtonMappingUtil;

    .line 83
    .line 84
    invoke-virtual {p1}, Lcom/haima/hmcp/utils/ButtonMappingUtil;->getKeyboardEventMap()Ljava/util/concurrent/ConcurrentHashMap;

    .line 85
    .line 86
    .line 87
    move-result-object p1

    .line 88
    iput-object p1, p0, Lcom/haima/hmcp/model/EventMappingModel;->keyboardEventMap:Ljava/util/concurrent/ConcurrentHashMap;

    .line 89
    .line 90
    iget-object p1, p0, Lcom/haima/hmcp/model/EventMappingModel;->buttonMappingUtil:Lcom/haima/hmcp/utils/ButtonMappingUtil;

    .line 91
    .line 92
    invoke-virtual {p1}, Lcom/haima/hmcp/utils/ButtonMappingUtil;->getMappingEventMap()Ljava/util/concurrent/ConcurrentHashMap;

    .line 93
    .line 94
    .line 95
    move-result-object p1

    .line 96
    iput-object p1, p0, Lcom/haima/hmcp/model/EventMappingModel;->mappingEventMap:Ljava/util/concurrent/ConcurrentHashMap;

    .line 97
    .line 98
    :cond_1
    return-void
.end method

.method public setListener(Lcom/haima/hmcp/listeners/EventMappingModelListener;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/haima/hmcp/model/EventMappingModel;->listener:Lcom/haima/hmcp/listeners/EventMappingModelListener;

    .line 2
    .line 3
    return-void
.end method

.method public setNativeDpadGame(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/haima/hmcp/model/EventMappingModel;->nativeDpadGame:Z

    .line 2
    .line 3
    return-void
.end method
