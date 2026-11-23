.class public Lcom/haima/hmcp/utils/Json2BeanUtil;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final TAG:Ljava/lang/String; = "Json2BeanUtil"


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

.method public static parseButtonMapContent(Ljava/lang/String;)Lcom/haima/hmcp/beans/ButtonMapContent;
    .locals 8

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 4
    .line 5
    .line 6
    const-string v1, "parseButtonMapContent data: "

    .line 7
    .line 8
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 9
    .line 10
    .line 11
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 12
    .line 13
    .line 14
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 15
    .line 16
    .line 17
    move-result-object v0

    .line 18
    const-string v1, "Json2BeanUtil"

    .line 19
    .line 20
    invoke-static {v1, v0}, Lcom/haima/hmcp/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 21
    .line 22
    .line 23
    const/4 v0, 0x0

    .line 24
    :try_start_0
    new-instance v2, Lorg/json/JSONObject;

    .line 25
    .line 26
    invoke-direct {v2, p0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 27
    .line 28
    .line 29
    new-instance p0, Lcom/haima/hmcp/beans/ButtonMapContent;

    .line 30
    .line 31
    invoke-direct {p0}, Lcom/haima/hmcp/beans/ButtonMapContent;-><init>()V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_1

    .line 32
    .line 33
    .line 34
    :try_start_1
    const-string v3, "defaultMouseMode"

    .line 35
    .line 36
    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;)Z

    .line 37
    .line 38
    .line 39
    move-result v3

    .line 40
    iput-boolean v3, p0, Lcom/haima/hmcp/beans/ButtonMapContent;->defaultMouseMode:Z

    .line 41
    .line 42
    const-string v3, "showTips"

    .line 43
    .line 44
    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;)Z

    .line 45
    .line 46
    .line 47
    move-result v3

    .line 48
    iput-boolean v3, p0, Lcom/haima/hmcp/beans/ButtonMapContent;->showTips:Z

    .line 49
    .line 50
    const-string v3, "showTipsWindow"

    .line 51
    .line 52
    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;)Z

    .line 53
    .line 54
    .line 55
    move-result v3

    .line 56
    iput-boolean v3, p0, Lcom/haima/hmcp/beans/ButtonMapContent;->showTipsWindow:Z

    .line 57
    .line 58
    const-string v3, "showMaps"

    .line 59
    .line 60
    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;)Z

    .line 61
    .line 62
    .line 63
    move-result v3

    .line 64
    iput-boolean v3, p0, Lcom/haima/hmcp/beans/ButtonMapContent;->showMaps:Z

    .line 65
    .line 66
    const-string v3, "isJoypad2Dpad"

    .line 67
    .line 68
    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;)Z

    .line 69
    .line 70
    .line 71
    move-result v3

    .line 72
    iput-boolean v3, p0, Lcom/haima/hmcp/beans/ButtonMapContent;->isJoypad2Dpad:Z

    .line 73
    .line 74
    const-string v3, "version"

    .line 75
    .line 76
    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    .line 77
    .line 78
    .line 79
    move-result-object v3

    .line 80
    iput-object v3, p0, Lcom/haima/hmcp/beans/ButtonMapContent;->version:Ljava/lang/String;

    .line 81
    .line 82
    const-string v3, "buttonMappingsList"

    .line 83
    .line 84
    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    .line 85
    .line 86
    .line 87
    move-result-object v2

    .line 88
    if-eqz v2, :cond_0

    .line 89
    .line 90
    new-instance v0, Ljava/util/ArrayList;

    .line 91
    .line 92
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 93
    .line 94
    .line 95
    const/4 v3, 0x0

    .line 96
    :goto_0
    invoke-virtual {v2}, Lorg/json/JSONArray;->length()I

    .line 97
    .line 98
    .line 99
    move-result v4

    .line 100
    if-ge v3, v4, :cond_0

    .line 101
    .line 102
    invoke-virtual {v2, v3}, Lorg/json/JSONArray;->optJSONObject(I)Lorg/json/JSONObject;

    .line 103
    .line 104
    .line 105
    move-result-object v4

    .line 106
    new-instance v5, Lcom/haima/hmcp/beans/ButtonMappings;

    .line 107
    .line 108
    invoke-direct {v5}, Lcom/haima/hmcp/beans/ButtonMappings;-><init>()V

    .line 109
    .line 110
    .line 111
    const-string v6, "mappingName"

    .line 112
    .line 113
    invoke-virtual {v4, v6}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    .line 114
    .line 115
    .line 116
    move-result-object v6

    .line 117
    iput-object v6, v5, Lcom/haima/hmcp/beans/ButtonMappings;->mappingName:Ljava/lang/String;

    .line 118
    .line 119
    const-string v6, "imageURL"

    .line 120
    .line 121
    invoke-virtual {v4, v6}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    .line 122
    .line 123
    .line 124
    move-result-object v6

    .line 125
    iput-object v6, v5, Lcom/haima/hmcp/beans/ButtonMappings;->imageURL:Ljava/lang/String;

    .line 126
    .line 127
    const-string v6, "buttonFn"

    .line 128
    .line 129
    invoke-virtual {v4, v6}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    .line 130
    .line 131
    .line 132
    move-result v6

    .line 133
    iput v6, v5, Lcom/haima/hmcp/beans/ButtonMappings;->buttonFn:I

    .line 134
    .line 135
    const-string v6, "buttonX"

    .line 136
    .line 137
    invoke-virtual {v4, v6}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    .line 138
    .line 139
    .line 140
    move-result-object v6

    .line 141
    invoke-static {v6}, Lcom/haima/hmcp/utils/Json2BeanUtil;->parsePointCoord(Lorg/json/JSONObject;)Lcom/haima/hmcp/beans/PointCoord;

    .line 142
    .line 143
    .line 144
    move-result-object v6

    .line 145
    iput-object v6, v5, Lcom/haima/hmcp/beans/ButtonMappings;->buttonX:Lcom/haima/hmcp/beans/PointCoord;

    .line 146
    .line 147
    const-string v6, "buttonY"

    .line 148
    .line 149
    invoke-virtual {v4, v6}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    .line 150
    .line 151
    .line 152
    move-result-object v6

    .line 153
    invoke-static {v6}, Lcom/haima/hmcp/utils/Json2BeanUtil;->parsePointCoord(Lorg/json/JSONObject;)Lcom/haima/hmcp/beans/PointCoord;

    .line 154
    .line 155
    .line 156
    move-result-object v6

    .line 157
    iput-object v6, v5, Lcom/haima/hmcp/beans/ButtonMappings;->buttonY:Lcom/haima/hmcp/beans/PointCoord;

    .line 158
    .line 159
    const-string v6, "buttonB"

    .line 160
    .line 161
    invoke-virtual {v4, v6}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    .line 162
    .line 163
    .line 164
    move-result-object v6

    .line 165
    invoke-static {v6}, Lcom/haima/hmcp/utils/Json2BeanUtil;->parsePointCoord(Lorg/json/JSONObject;)Lcom/haima/hmcp/beans/PointCoord;

    .line 166
    .line 167
    .line 168
    move-result-object v6

    .line 169
    iput-object v6, v5, Lcom/haima/hmcp/beans/ButtonMappings;->buttonB:Lcom/haima/hmcp/beans/PointCoord;

    .line 170
    .line 171
    const-string v6, "buttonA"

    .line 172
    .line 173
    invoke-virtual {v4, v6}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    .line 174
    .line 175
    .line 176
    move-result-object v6

    .line 177
    invoke-static {v6}, Lcom/haima/hmcp/utils/Json2BeanUtil;->parsePointCoord(Lorg/json/JSONObject;)Lcom/haima/hmcp/beans/PointCoord;

    .line 178
    .line 179
    .line 180
    move-result-object v6

    .line 181
    iput-object v6, v5, Lcom/haima/hmcp/beans/ButtonMappings;->buttonA:Lcom/haima/hmcp/beans/PointCoord;

    .line 182
    .line 183
    const-string v6, "buttonL1"

    .line 184
    .line 185
    invoke-virtual {v4, v6}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    .line 186
    .line 187
    .line 188
    move-result-object v6

    .line 189
    invoke-static {v6}, Lcom/haima/hmcp/utils/Json2BeanUtil;->parsePointCoord(Lorg/json/JSONObject;)Lcom/haima/hmcp/beans/PointCoord;

    .line 190
    .line 191
    .line 192
    move-result-object v6

    .line 193
    iput-object v6, v5, Lcom/haima/hmcp/beans/ButtonMappings;->buttonL1:Lcom/haima/hmcp/beans/PointCoord;

    .line 194
    .line 195
    const-string v6, "buttonL2"

    .line 196
    .line 197
    invoke-virtual {v4, v6}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    .line 198
    .line 199
    .line 200
    move-result-object v6

    .line 201
    invoke-static {v6}, Lcom/haima/hmcp/utils/Json2BeanUtil;->parsePointCoord(Lorg/json/JSONObject;)Lcom/haima/hmcp/beans/PointCoord;

    .line 202
    .line 203
    .line 204
    move-result-object v6

    .line 205
    iput-object v6, v5, Lcom/haima/hmcp/beans/ButtonMappings;->buttonL2:Lcom/haima/hmcp/beans/PointCoord;

    .line 206
    .line 207
    const-string v6, "buttonR1"

    .line 208
    .line 209
    invoke-virtual {v4, v6}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    .line 210
    .line 211
    .line 212
    move-result-object v6

    .line 213
    invoke-static {v6}, Lcom/haima/hmcp/utils/Json2BeanUtil;->parsePointCoord(Lorg/json/JSONObject;)Lcom/haima/hmcp/beans/PointCoord;

    .line 214
    .line 215
    .line 216
    move-result-object v6

    .line 217
    iput-object v6, v5, Lcom/haima/hmcp/beans/ButtonMappings;->buttonR1:Lcom/haima/hmcp/beans/PointCoord;

    .line 218
    .line 219
    const-string v6, "buttonR2"

    .line 220
    .line 221
    invoke-virtual {v4, v6}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    .line 222
    .line 223
    .line 224
    move-result-object v6

    .line 225
    invoke-static {v6}, Lcom/haima/hmcp/utils/Json2BeanUtil;->parsePointCoord(Lorg/json/JSONObject;)Lcom/haima/hmcp/beans/PointCoord;

    .line 226
    .line 227
    .line 228
    move-result-object v6

    .line 229
    iput-object v6, v5, Lcom/haima/hmcp/beans/ButtonMappings;->buttonR2:Lcom/haima/hmcp/beans/PointCoord;

    .line 230
    .line 231
    const-string v6, "buttonUp"

    .line 232
    .line 233
    invoke-virtual {v4, v6}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    .line 234
    .line 235
    .line 236
    move-result-object v6

    .line 237
    invoke-static {v6}, Lcom/haima/hmcp/utils/Json2BeanUtil;->parsePointCoord(Lorg/json/JSONObject;)Lcom/haima/hmcp/beans/PointCoord;

    .line 238
    .line 239
    .line 240
    move-result-object v6

    .line 241
    iput-object v6, v5, Lcom/haima/hmcp/beans/ButtonMappings;->buttonUp:Lcom/haima/hmcp/beans/PointCoord;

    .line 242
    .line 243
    const-string v6, "buttonDown"

    .line 244
    .line 245
    invoke-virtual {v4, v6}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    .line 246
    .line 247
    .line 248
    move-result-object v6

    .line 249
    invoke-static {v6}, Lcom/haima/hmcp/utils/Json2BeanUtil;->parsePointCoord(Lorg/json/JSONObject;)Lcom/haima/hmcp/beans/PointCoord;

    .line 250
    .line 251
    .line 252
    move-result-object v6

    .line 253
    iput-object v6, v5, Lcom/haima/hmcp/beans/ButtonMappings;->buttonDown:Lcom/haima/hmcp/beans/PointCoord;

    .line 254
    .line 255
    const-string v6, "buttonLeft"

    .line 256
    .line 257
    invoke-virtual {v4, v6}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    .line 258
    .line 259
    .line 260
    move-result-object v6

    .line 261
    invoke-static {v6}, Lcom/haima/hmcp/utils/Json2BeanUtil;->parsePointCoord(Lorg/json/JSONObject;)Lcom/haima/hmcp/beans/PointCoord;

    .line 262
    .line 263
    .line 264
    move-result-object v6

    .line 265
    iput-object v6, v5, Lcom/haima/hmcp/beans/ButtonMappings;->buttonLeft:Lcom/haima/hmcp/beans/PointCoord;

    .line 266
    .line 267
    const-string v6, "buttonRight"

    .line 268
    .line 269
    invoke-virtual {v4, v6}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    .line 270
    .line 271
    .line 272
    move-result-object v6

    .line 273
    invoke-static {v6}, Lcom/haima/hmcp/utils/Json2BeanUtil;->parsePointCoord(Lorg/json/JSONObject;)Lcom/haima/hmcp/beans/PointCoord;

    .line 274
    .line 275
    .line 276
    move-result-object v6

    .line 277
    iput-object v6, v5, Lcom/haima/hmcp/beans/ButtonMappings;->buttonRight:Lcom/haima/hmcp/beans/PointCoord;

    .line 278
    .line 279
    const-string v6, "trackBallL"

    .line 280
    .line 281
    invoke-virtual {v4, v6}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    .line 282
    .line 283
    .line 284
    move-result-object v6

    .line 285
    invoke-static {v6}, Lcom/haima/hmcp/utils/Json2BeanUtil;->parsePointCoord(Lorg/json/JSONObject;)Lcom/haima/hmcp/beans/PointCoord;

    .line 286
    .line 287
    .line 288
    move-result-object v6

    .line 289
    iput-object v6, v5, Lcom/haima/hmcp/beans/ButtonMappings;->trackBallL:Lcom/haima/hmcp/beans/PointCoord;

    .line 290
    .line 291
    const-string v6, "trackBallR"

    .line 292
    .line 293
    invoke-virtual {v4, v6}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    .line 294
    .line 295
    .line 296
    move-result-object v6

    .line 297
    invoke-static {v6}, Lcom/haima/hmcp/utils/Json2BeanUtil;->parsePointCoord(Lorg/json/JSONObject;)Lcom/haima/hmcp/beans/PointCoord;

    .line 298
    .line 299
    .line 300
    move-result-object v6

    .line 301
    iput-object v6, v5, Lcom/haima/hmcp/beans/ButtonMappings;->trackBallR:Lcom/haima/hmcp/beans/PointCoord;

    .line 302
    .line 303
    const-string v6, "buttonAB"

    .line 304
    .line 305
    invoke-virtual {v4, v6}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    .line 306
    .line 307
    .line 308
    move-result-object v6

    .line 309
    invoke-static {v6}, Lcom/haima/hmcp/utils/Json2BeanUtil;->parsePointCoord(Lorg/json/JSONObject;)Lcom/haima/hmcp/beans/PointCoord;

    .line 310
    .line 311
    .line 312
    move-result-object v6

    .line 313
    iput-object v6, v5, Lcom/haima/hmcp/beans/ButtonMappings;->buttonAB:Lcom/haima/hmcp/beans/PointCoord;

    .line 314
    .line 315
    const-string v6, "buttonNum0"

    .line 316
    .line 317
    invoke-virtual {v4, v6}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    .line 318
    .line 319
    .line 320
    move-result-object v6

    .line 321
    invoke-static {v6}, Lcom/haima/hmcp/utils/Json2BeanUtil;->parsePointCoord(Lorg/json/JSONObject;)Lcom/haima/hmcp/beans/PointCoord;

    .line 322
    .line 323
    .line 324
    move-result-object v6

    .line 325
    iput-object v6, v5, Lcom/haima/hmcp/beans/ButtonMappings;->buttonNum0:Lcom/haima/hmcp/beans/PointCoord;

    .line 326
    .line 327
    const-string v6, "buttonNum1"

    .line 328
    .line 329
    invoke-virtual {v4, v6}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    .line 330
    .line 331
    .line 332
    move-result-object v6

    .line 333
    invoke-static {v6}, Lcom/haima/hmcp/utils/Json2BeanUtil;->parsePointCoord(Lorg/json/JSONObject;)Lcom/haima/hmcp/beans/PointCoord;

    .line 334
    .line 335
    .line 336
    move-result-object v6

    .line 337
    iput-object v6, v5, Lcom/haima/hmcp/beans/ButtonMappings;->buttonNum1:Lcom/haima/hmcp/beans/PointCoord;

    .line 338
    .line 339
    const-string v6, "buttonNum2"

    .line 340
    .line 341
    invoke-virtual {v4, v6}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    .line 342
    .line 343
    .line 344
    move-result-object v6

    .line 345
    invoke-static {v6}, Lcom/haima/hmcp/utils/Json2BeanUtil;->parsePointCoord(Lorg/json/JSONObject;)Lcom/haima/hmcp/beans/PointCoord;

    .line 346
    .line 347
    .line 348
    move-result-object v6

    .line 349
    iput-object v6, v5, Lcom/haima/hmcp/beans/ButtonMappings;->buttonNum2:Lcom/haima/hmcp/beans/PointCoord;

    .line 350
    .line 351
    const-string v6, "buttonNum3"

    .line 352
    .line 353
    invoke-virtual {v4, v6}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    .line 354
    .line 355
    .line 356
    move-result-object v6

    .line 357
    invoke-static {v6}, Lcom/haima/hmcp/utils/Json2BeanUtil;->parsePointCoord(Lorg/json/JSONObject;)Lcom/haima/hmcp/beans/PointCoord;

    .line 358
    .line 359
    .line 360
    move-result-object v6

    .line 361
    iput-object v6, v5, Lcom/haima/hmcp/beans/ButtonMappings;->buttonNum3:Lcom/haima/hmcp/beans/PointCoord;

    .line 362
    .line 363
    const-string v6, "buttonNum4"

    .line 364
    .line 365
    invoke-virtual {v4, v6}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    .line 366
    .line 367
    .line 368
    move-result-object v6

    .line 369
    invoke-static {v6}, Lcom/haima/hmcp/utils/Json2BeanUtil;->parsePointCoord(Lorg/json/JSONObject;)Lcom/haima/hmcp/beans/PointCoord;

    .line 370
    .line 371
    .line 372
    move-result-object v6

    .line 373
    iput-object v6, v5, Lcom/haima/hmcp/beans/ButtonMappings;->buttonNum4:Lcom/haima/hmcp/beans/PointCoord;

    .line 374
    .line 375
    const-string v6, "buttonNum5"

    .line 376
    .line 377
    invoke-virtual {v4, v6}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    .line 378
    .line 379
    .line 380
    move-result-object v6

    .line 381
    invoke-static {v6}, Lcom/haima/hmcp/utils/Json2BeanUtil;->parsePointCoord(Lorg/json/JSONObject;)Lcom/haima/hmcp/beans/PointCoord;

    .line 382
    .line 383
    .line 384
    move-result-object v6

    .line 385
    iput-object v6, v5, Lcom/haima/hmcp/beans/ButtonMappings;->buttonNum5:Lcom/haima/hmcp/beans/PointCoord;

    .line 386
    .line 387
    const-string v6, "buttonNum6"

    .line 388
    .line 389
    invoke-virtual {v4, v6}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    .line 390
    .line 391
    .line 392
    move-result-object v6

    .line 393
    invoke-static {v6}, Lcom/haima/hmcp/utils/Json2BeanUtil;->parsePointCoord(Lorg/json/JSONObject;)Lcom/haima/hmcp/beans/PointCoord;

    .line 394
    .line 395
    .line 396
    move-result-object v6

    .line 397
    iput-object v6, v5, Lcom/haima/hmcp/beans/ButtonMappings;->buttonNum6:Lcom/haima/hmcp/beans/PointCoord;

    .line 398
    .line 399
    const-string v6, "buttonNum7"

    .line 400
    .line 401
    invoke-virtual {v4, v6}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    .line 402
    .line 403
    .line 404
    move-result-object v6

    .line 405
    invoke-static {v6}, Lcom/haima/hmcp/utils/Json2BeanUtil;->parsePointCoord(Lorg/json/JSONObject;)Lcom/haima/hmcp/beans/PointCoord;

    .line 406
    .line 407
    .line 408
    move-result-object v6

    .line 409
    iput-object v6, v5, Lcom/haima/hmcp/beans/ButtonMappings;->buttonNum7:Lcom/haima/hmcp/beans/PointCoord;

    .line 410
    .line 411
    const-string v6, "buttonNum8"

    .line 412
    .line 413
    invoke-virtual {v4, v6}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    .line 414
    .line 415
    .line 416
    move-result-object v6

    .line 417
    invoke-static {v6}, Lcom/haima/hmcp/utils/Json2BeanUtil;->parsePointCoord(Lorg/json/JSONObject;)Lcom/haima/hmcp/beans/PointCoord;

    .line 418
    .line 419
    .line 420
    move-result-object v6

    .line 421
    iput-object v6, v5, Lcom/haima/hmcp/beans/ButtonMappings;->buttonNum8:Lcom/haima/hmcp/beans/PointCoord;

    .line 422
    .line 423
    const-string v6, "buttonNum9"

    .line 424
    .line 425
    invoke-virtual {v4, v6}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    .line 426
    .line 427
    .line 428
    move-result-object v6

    .line 429
    invoke-static {v6}, Lcom/haima/hmcp/utils/Json2BeanUtil;->parsePointCoord(Lorg/json/JSONObject;)Lcom/haima/hmcp/beans/PointCoord;

    .line 430
    .line 431
    .line 432
    move-result-object v6

    .line 433
    iput-object v6, v5, Lcom/haima/hmcp/beans/ButtonMappings;->buttonNum9:Lcom/haima/hmcp/beans/PointCoord;

    .line 434
    .line 435
    const-string v6, "buttonDirection"

    .line 436
    .line 437
    invoke-virtual {v4, v6}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    .line 438
    .line 439
    .line 440
    move-result-object v6

    .line 441
    invoke-static {v6}, Lcom/haima/hmcp/utils/Json2BeanUtil;->parsePointCoord(Lorg/json/JSONObject;)Lcom/haima/hmcp/beans/PointCoord;

    .line 442
    .line 443
    .line 444
    move-result-object v6

    .line 445
    iput-object v6, v5, Lcom/haima/hmcp/beans/ButtonMappings;->buttonDirection:Lcom/haima/hmcp/beans/PointCoord;

    .line 446
    .line 447
    const-string v6, "buttonCenter"

    .line 448
    .line 449
    invoke-virtual {v4, v6}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    .line 450
    .line 451
    .line 452
    move-result-object v4

    .line 453
    invoke-static {v4}, Lcom/haima/hmcp/utils/Json2BeanUtil;->parsePointCoord(Lorg/json/JSONObject;)Lcom/haima/hmcp/beans/PointCoord;

    .line 454
    .line 455
    .line 456
    move-result-object v4

    .line 457
    iput-object v4, v5, Lcom/haima/hmcp/beans/ButtonMappings;->buttonCenter:Lcom/haima/hmcp/beans/PointCoord;

    .line 458
    .line 459
    invoke-interface {v0, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 460
    .line 461
    .line 462
    add-int/lit8 v3, v3, 0x1

    .line 463
    .line 464
    goto/16 :goto_0

    .line 465
    .line 466
    :cond_0
    iput-object v0, p0, Lcom/haima/hmcp/beans/ButtonMapContent;->buttonMappingsList:Ljava/util/List;
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0

    .line 467
    .line 468
    goto :goto_2

    .line 469
    :catch_0
    move-exception v0

    .line 470
    goto :goto_1

    .line 471
    :catch_1
    move-exception p0

    .line 472
    move-object v7, v0

    .line 473
    move-object v0, p0

    .line 474
    move-object p0, v7

    .line 475
    :goto_1
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 476
    .line 477
    .line 478
    :goto_2
    new-instance v0, Ljava/lang/StringBuilder;

    .line 479
    .line 480
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 481
    .line 482
    .line 483
    const-string v2, "result: "

    .line 484
    .line 485
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 486
    .line 487
    .line 488
    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 489
    .line 490
    .line 491
    move-result-object v2

    .line 492
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 493
    .line 494
    .line 495
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 496
    .line 497
    .line 498
    move-result-object v0

    .line 499
    invoke-static {v1, v0}, Lcom/haima/hmcp/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 500
    .line 501
    .line 502
    return-object p0
.end method

.method public static parseMessagePayload(Ljava/lang/String;)Lcom/haima/hmcp/beans/MessagePayload;
    .locals 2

    .line 1
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    const/4 v1, 0x0

    .line 6
    if-eqz v0, :cond_0

    .line 7
    .line 8
    return-object v1

    .line 9
    :cond_0
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    .line 10
    .line 11
    invoke-direct {v0, p0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 12
    .line 13
    .line 14
    new-instance p0, Lcom/haima/hmcp/beans/MessagePayload;

    .line 15
    .line 16
    invoke-direct {p0}, Lcom/haima/hmcp/beans/MessagePayload;-><init>()V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_1

    .line 17
    .line 18
    .line 19
    :try_start_1
    const-string v1, "code"

    .line 20
    .line 21
    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    .line 22
    .line 23
    .line 24
    move-result v1

    .line 25
    iput v1, p0, Lcom/haima/hmcp/beans/MessagePayload;->code:I

    .line 26
    .line 27
    const-string v1, "uid"

    .line 28
    .line 29
    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    .line 30
    .line 31
    .line 32
    move-result-object v1

    .line 33
    iput-object v1, p0, Lcom/haima/hmcp/beans/MessagePayload;->uid:Ljava/lang/String;

    .line 34
    .line 35
    const-string v1, "description"

    .line 36
    .line 37
    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    .line 38
    .line 39
    .line 40
    move-result-object v0

    .line 41
    iput-object v0, p0, Lcom/haima/hmcp/beans/MessagePayload;->description:Ljava/lang/String;
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0

    .line 42
    .line 43
    goto :goto_1

    .line 44
    :catch_0
    move-exception v0

    .line 45
    move-object v1, p0

    .line 46
    goto :goto_0

    .line 47
    :catch_1
    move-exception v0

    .line 48
    :goto_0
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 49
    .line 50
    .line 51
    move-object p0, v1

    .line 52
    :goto_1
    return-object p0
.end method

.method public static parsePointCoord(Lorg/json/JSONObject;)Lcom/haima/hmcp/beans/PointCoord;
    .locals 9

    .line 1
    if-nez p0, :cond_0

    .line 2
    .line 3
    const/4 p0, 0x0

    .line 4
    return-object p0

    .line 5
    :cond_0
    new-instance v0, Lcom/haima/hmcp/beans/PointCoord;

    .line 6
    .line 7
    invoke-direct {v0}, Lcom/haima/hmcp/beans/PointCoord;-><init>()V

    .line 8
    .line 9
    .line 10
    const-string v1, "x"

    .line 11
    .line 12
    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->optDouble(Ljava/lang/String;)D

    .line 13
    .line 14
    .line 15
    move-result-wide v2

    .line 16
    double-to-float v2, v2

    .line 17
    iput v2, v0, Lcom/haima/hmcp/beans/PointCoord;->x:F

    .line 18
    .line 19
    const-string v2, "y"

    .line 20
    .line 21
    invoke-virtual {p0, v2}, Lorg/json/JSONObject;->optDouble(Ljava/lang/String;)D

    .line 22
    .line 23
    .line 24
    move-result-wide v3

    .line 25
    double-to-float v3, v3

    .line 26
    iput v3, v0, Lcom/haima/hmcp/beans/PointCoord;->y:F

    .line 27
    .line 28
    const-string v3, "rx"

    .line 29
    .line 30
    invoke-virtual {p0, v3}, Lorg/json/JSONObject;->optDouble(Ljava/lang/String;)D

    .line 31
    .line 32
    .line 33
    move-result-wide v3

    .line 34
    double-to-float v3, v3

    .line 35
    iput v3, v0, Lcom/haima/hmcp/beans/PointCoord;->rx:F

    .line 36
    .line 37
    const-string v3, "ry"

    .line 38
    .line 39
    invoke-virtual {p0, v3}, Lorg/json/JSONObject;->optDouble(Ljava/lang/String;)D

    .line 40
    .line 41
    .line 42
    move-result-wide v3

    .line 43
    double-to-float v3, v3

    .line 44
    iput v3, v0, Lcom/haima/hmcp/beans/PointCoord;->ry:F

    .line 45
    .line 46
    const-string v3, "sp"

    .line 47
    .line 48
    invoke-virtual {p0, v3}, Lorg/json/JSONObject;->optDouble(Ljava/lang/String;)D

    .line 49
    .line 50
    .line 51
    move-result-wide v3

    .line 52
    double-to-float v3, v3

    .line 53
    iput v3, v0, Lcom/haima/hmcp/beans/PointCoord;->sp:F

    .line 54
    .line 55
    const-string v3, "oX"

    .line 56
    .line 57
    invoke-virtual {p0, v3}, Lorg/json/JSONObject;->optDouble(Ljava/lang/String;)D

    .line 58
    .line 59
    .line 60
    move-result-wide v3

    .line 61
    double-to-float v3, v3

    .line 62
    iput v3, v0, Lcom/haima/hmcp/beans/PointCoord;->oX:F

    .line 63
    .line 64
    const-string v3, "oY"

    .line 65
    .line 66
    invoke-virtual {p0, v3}, Lorg/json/JSONObject;->optDouble(Ljava/lang/String;)D

    .line 67
    .line 68
    .line 69
    move-result-wide v3

    .line 70
    double-to-float v3, v3

    .line 71
    iput v3, v0, Lcom/haima/hmcp/beans/PointCoord;->oY:F

    .line 72
    .line 73
    const-string v3, "keyCode"

    .line 74
    .line 75
    invoke-virtual {p0, v3}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    .line 76
    .line 77
    .line 78
    move-result v3

    .line 79
    iput v3, v0, Lcom/haima/hmcp/beans/PointCoord;->keyCode:I

    .line 80
    .line 81
    const-string v3, "fnKeyCode"

    .line 82
    .line 83
    invoke-virtual {p0, v3}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    .line 84
    .line 85
    .line 86
    move-result v3

    .line 87
    iput v3, v0, Lcom/haima/hmcp/beans/PointCoord;->fnKeyCode:I

    .line 88
    .line 89
    const-string v3, "toKeyCode"

    .line 90
    .line 91
    invoke-virtual {p0, v3}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    .line 92
    .line 93
    .line 94
    move-result v3

    .line 95
    iput v3, v0, Lcom/haima/hmcp/beans/PointCoord;->toKeyCode:I

    .line 96
    .line 97
    const-string v3, "isFn"

    .line 98
    .line 99
    invoke-virtual {p0, v3}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;)Z

    .line 100
    .line 101
    .line 102
    move-result v3

    .line 103
    iput-boolean v3, v0, Lcom/haima/hmcp/beans/PointCoord;->isFn:Z

    .line 104
    .line 105
    const-string v3, "buttonName"

    .line 106
    .line 107
    invoke-virtual {p0, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    .line 108
    .line 109
    .line 110
    move-result-object v3

    .line 111
    iput-object v3, v0, Lcom/haima/hmcp/beans/PointCoord;->buttonName:Ljava/lang/String;

    .line 112
    .line 113
    const-string v3, "pointList"

    .line 114
    .line 115
    invoke-virtual {p0, v3}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    .line 116
    .line 117
    .line 118
    move-result-object p0

    .line 119
    if-eqz p0, :cond_2

    .line 120
    .line 121
    new-instance v3, Ljava/util/ArrayList;

    .line 122
    .line 123
    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 124
    .line 125
    .line 126
    const/4 v4, 0x0

    .line 127
    :goto_0
    invoke-virtual {p0}, Lorg/json/JSONArray;->length()I

    .line 128
    .line 129
    .line 130
    move-result v5

    .line 131
    if-ge v4, v5, :cond_1

    .line 132
    .line 133
    invoke-virtual {p0, v4}, Lorg/json/JSONArray;->optJSONObject(I)Lorg/json/JSONObject;

    .line 134
    .line 135
    .line 136
    move-result-object v5

    .line 137
    new-instance v6, Lcom/haima/hmcp/beans/PointCoord2;

    .line 138
    .line 139
    invoke-direct {v6}, Lcom/haima/hmcp/beans/PointCoord2;-><init>()V

    .line 140
    .line 141
    .line 142
    const-string v7, "runTime"

    .line 143
    .line 144
    invoke-virtual {v5, v7}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    .line 145
    .line 146
    .line 147
    move-result v7

    .line 148
    iput v7, v6, Lcom/haima/hmcp/beans/PointCoord2;->runTime:I

    .line 149
    .line 150
    const-string v7, "keyType"

    .line 151
    .line 152
    invoke-virtual {v5, v7}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    .line 153
    .line 154
    .line 155
    move-result v7

    .line 156
    iput v7, v6, Lcom/haima/hmcp/beans/PointCoord2;->keyType:I

    .line 157
    .line 158
    const-string v7, "repeatCount"

    .line 159
    .line 160
    invoke-virtual {v5, v7}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    .line 161
    .line 162
    .line 163
    move-result v7

    .line 164
    iput v7, v6, Lcom/haima/hmcp/beans/PointCoord2;->repeatCount:I

    .line 165
    .line 166
    invoke-virtual {v5, v1}, Lorg/json/JSONObject;->optDouble(Ljava/lang/String;)D

    .line 167
    .line 168
    .line 169
    move-result-wide v7

    .line 170
    double-to-float v7, v7

    .line 171
    iput v7, v6, Lcom/haima/hmcp/beans/PointCoord2;->x:F

    .line 172
    .line 173
    invoke-virtual {v5, v2}, Lorg/json/JSONObject;->optDouble(Ljava/lang/String;)D

    .line 174
    .line 175
    .line 176
    move-result-wide v7

    .line 177
    double-to-float v5, v7

    .line 178
    iput v5, v6, Lcom/haima/hmcp/beans/PointCoord2;->y:F

    .line 179
    .line 180
    invoke-interface {v3, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 181
    .line 182
    .line 183
    add-int/lit8 v4, v4, 0x1

    .line 184
    .line 185
    goto :goto_0

    .line 186
    :cond_1
    iput-object v3, v0, Lcom/haima/hmcp/beans/PointCoord;->pointList:Ljava/util/List;

    .line 187
    .line 188
    :cond_2
    return-object v0
.end method
