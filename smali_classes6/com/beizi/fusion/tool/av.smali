.class public Lcom/beizi/fusion/tool/av;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# static fields
.field private static a:Ljava/lang/String; = "TaskRunnable"


# instance fields
.field private b:Lcom/beizi/fusion/model/TaskBean$BackTaskArrayBean;

.field private c:Landroid/content/Context;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/beizi/fusion/model/TaskBean$BackTaskArrayBean;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/beizi/fusion/tool/av;->c:Landroid/content/Context;

    .line 5
    .line 6
    iput-object p2, p0, Lcom/beizi/fusion/tool/av;->b:Lcom/beizi/fusion/model/TaskBean$BackTaskArrayBean;

    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public run()V
    .locals 18

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    iget-object v1, v0, Lcom/beizi/fusion/tool/av;->b:Lcom/beizi/fusion/model/TaskBean$BackTaskArrayBean;

    .line 4
    .line 5
    if-eqz v1, :cond_4

    .line 6
    .line 7
    const/4 v2, 0x0

    .line 8
    :goto_0
    iget-object v3, v0, Lcom/beizi/fusion/tool/av;->b:Lcom/beizi/fusion/model/TaskBean$BackTaskArrayBean;

    .line 9
    .line 10
    invoke-virtual {v3}, Lcom/beizi/fusion/model/TaskBean$BackTaskArrayBean;->getRepeatCount()I

    .line 11
    .line 12
    .line 13
    move-result v3

    .line 14
    if-ge v2, v3, :cond_3

    .line 15
    .line 16
    iget-object v3, v0, Lcom/beizi/fusion/tool/av;->b:Lcom/beizi/fusion/model/TaskBean$BackTaskArrayBean;

    .line 17
    .line 18
    invoke-virtual {v3}, Lcom/beizi/fusion/model/TaskBean$BackTaskArrayBean;->getMethod()Ljava/lang/String;

    .line 19
    .line 20
    .line 21
    move-result-object v3

    .line 22
    const-string v4, "GET"

    .line 23
    .line 24
    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 25
    .line 26
    .line 27
    move-result v3

    .line 28
    if-eqz v3, :cond_2

    .line 29
    .line 30
    iget-object v3, v0, Lcom/beizi/fusion/tool/av;->b:Lcom/beizi/fusion/model/TaskBean$BackTaskArrayBean;

    .line 31
    .line 32
    invoke-virtual {v3}, Lcom/beizi/fusion/model/TaskBean$BackTaskArrayBean;->getContentUrl()Ljava/lang/String;

    .line 33
    .line 34
    .line 35
    move-result-object v3

    .line 36
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 37
    .line 38
    .line 39
    move-result v3

    .line 40
    if-nez v3, :cond_2

    .line 41
    .line 42
    :try_start_0
    iget-object v3, v0, Lcom/beizi/fusion/tool/av;->c:Landroid/content/Context;

    .line 43
    .line 44
    iget-object v4, v0, Lcom/beizi/fusion/tool/av;->b:Lcom/beizi/fusion/model/TaskBean$BackTaskArrayBean;

    .line 45
    .line 46
    invoke-virtual {v4}, Lcom/beizi/fusion/model/TaskBean$BackTaskArrayBean;->getContentUrl()Ljava/lang/String;

    .line 47
    .line 48
    .line 49
    move-result-object v4

    .line 50
    const/4 v5, 0x0

    .line 51
    invoke-static {v3, v4, v5}, Lcom/beizi/fusion/tool/at;->a(Landroid/content/Context;Ljava/lang/String;Lcom/beizi/fusion/events/EventBean;)Ljava/lang/String;

    .line 52
    .line 53
    .line 54
    move-result-object v3

    .line 55
    iget-object v4, v0, Lcom/beizi/fusion/tool/av;->b:Lcom/beizi/fusion/model/TaskBean$BackTaskArrayBean;

    .line 56
    .line 57
    invoke-virtual {v4}, Lcom/beizi/fusion/model/TaskBean$BackTaskArrayBean;->getUserAgent()Ljava/lang/String;

    .line 58
    .line 59
    .line 60
    move-result-object v4

    .line 61
    invoke-static {v3, v4}, Lcom/beizi/fusion/tool/x;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 62
    .line 63
    .line 64
    iget-object v3, v0, Lcom/beizi/fusion/tool/av;->b:Lcom/beizi/fusion/model/TaskBean$BackTaskArrayBean;

    .line 65
    .line 66
    invoke-virtual {v3}, Lcom/beizi/fusion/model/TaskBean$BackTaskArrayBean;->getSleepTime()J

    .line 67
    .line 68
    .line 69
    move-result-wide v3

    .line 70
    invoke-static {v3, v4}, Ljava/lang/Thread;->sleep(J)V

    .line 71
    .line 72
    .line 73
    iget-object v3, v0, Lcom/beizi/fusion/tool/av;->b:Lcom/beizi/fusion/model/TaskBean$BackTaskArrayBean;

    .line 74
    .line 75
    invoke-virtual {v3}, Lcom/beizi/fusion/model/TaskBean$BackTaskArrayBean;->getReport()Ljava/util/List;

    .line 76
    .line 77
    .line 78
    move-result-object v3

    .line 79
    if-eqz v3, :cond_2

    .line 80
    .line 81
    invoke-interface {v3}, Ljava/util/List;->size()I

    .line 82
    .line 83
    .line 84
    move-result v4

    .line 85
    if-lez v4, :cond_2

    .line 86
    .line 87
    const/4 v4, 0x0

    .line 88
    :goto_1
    invoke-interface {v3}, Ljava/util/List;->size()I

    .line 89
    .line 90
    .line 91
    move-result v6

    .line 92
    if-ge v4, v6, :cond_2

    .line 93
    .line 94
    invoke-interface {v3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 95
    .line 96
    .line 97
    move-result-object v6

    .line 98
    check-cast v6, Ljava/lang/CharSequence;

    .line 99
    .line 100
    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 101
    .line 102
    .line 103
    move-result v6

    .line 104
    if-nez v6, :cond_1

    .line 105
    .line 106
    iget-object v6, v0, Lcom/beizi/fusion/tool/av;->c:Landroid/content/Context;

    .line 107
    .line 108
    invoke-interface {v3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 109
    .line 110
    .line 111
    move-result-object v7

    .line 112
    check-cast v7, Ljava/lang/String;

    .line 113
    .line 114
    invoke-static {v6, v7, v5}, Lcom/beizi/fusion/tool/at;->a(Landroid/content/Context;Ljava/lang/String;Lcom/beizi/fusion/events/EventBean;)Ljava/lang/String;

    .line 115
    .line 116
    .line 117
    move-result-object v6

    .line 118
    iget-object v7, v0, Lcom/beizi/fusion/tool/av;->b:Lcom/beizi/fusion/model/TaskBean$BackTaskArrayBean;

    .line 119
    .line 120
    invoke-virtual {v7}, Lcom/beizi/fusion/model/TaskBean$BackTaskArrayBean;->getUserAgent()Ljava/lang/String;

    .line 121
    .line 122
    .line 123
    move-result-object v7

    .line 124
    invoke-static {v6, v7}, Lcom/beizi/fusion/tool/x;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 125
    .line 126
    .line 127
    move-result-object v6

    .line 128
    if-eqz v6, :cond_0

    .line 129
    .line 130
    iget-object v6, v0, Lcom/beizi/fusion/tool/av;->c:Landroid/content/Context;

    .line 131
    .line 132
    invoke-static {v6}, Lcom/beizi/fusion/events/EventCar;->getInstance(Landroid/content/Context;)Lcom/beizi/fusion/events/EventCar;

    .line 133
    .line 134
    .line 135
    move-result-object v6

    .line 136
    new-instance v15, Lcom/beizi/fusion/events/EventBean;

    .line 137
    .line 138
    sget-object v8, Lcom/beizi/fusion/c/b;->b:Ljava/lang/String;

    .line 139
    .line 140
    const-string v9, ""

    .line 141
    .line 142
    const-string v10, "520.200"

    .line 143
    .line 144
    const-string v11, ""

    .line 145
    .line 146
    invoke-static {}, Lcom/beizi/fusion/c/b;->a()Lcom/beizi/fusion/c/b;

    .line 147
    .line 148
    .line 149
    move-result-object v7

    .line 150
    invoke-virtual {v7}, Lcom/beizi/fusion/c/b;->b()Ljava/lang/String;

    .line 151
    .line 152
    .line 153
    move-result-object v12

    .line 154
    const-string v13, ""

    .line 155
    .line 156
    const-string v14, ""

    .line 157
    .line 158
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 159
    .line 160
    .line 161
    move-result-wide v16

    .line 162
    invoke-static/range {v16 .. v17}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    .line 163
    .line 164
    .line 165
    move-result-object v16

    .line 166
    const-string v17, ""

    .line 167
    .line 168
    move-object v7, v15

    .line 169
    move-object v1, v15

    .line 170
    move-object/from16 v15, v16

    .line 171
    .line 172
    move-object/from16 v16, v17

    .line 173
    .line 174
    invoke-direct/range {v7 .. v16}, Lcom/beizi/fusion/events/EventBean;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 175
    .line 176
    .line 177
    invoke-virtual {v6, v1}, Lcom/beizi/fusion/events/EventCar;->goRoadWithoutThread(Lcom/beizi/fusion/events/EventBean;)V

    .line 178
    .line 179
    .line 180
    goto :goto_2

    .line 181
    :cond_0
    iget-object v1, v0, Lcom/beizi/fusion/tool/av;->c:Landroid/content/Context;

    .line 182
    .line 183
    invoke-static {v1}, Lcom/beizi/fusion/events/EventCar;->getInstance(Landroid/content/Context;)Lcom/beizi/fusion/events/EventCar;

    .line 184
    .line 185
    .line 186
    move-result-object v1

    .line 187
    new-instance v15, Lcom/beizi/fusion/events/EventBean;

    .line 188
    .line 189
    sget-object v7, Lcom/beizi/fusion/c/b;->b:Ljava/lang/String;

    .line 190
    .line 191
    const-string v8, ""

    .line 192
    .line 193
    const-string v9, "520.500"

    .line 194
    .line 195
    const-string v10, ""

    .line 196
    .line 197
    invoke-static {}, Lcom/beizi/fusion/c/b;->a()Lcom/beizi/fusion/c/b;

    .line 198
    .line 199
    .line 200
    move-result-object v6

    .line 201
    invoke-virtual {v6}, Lcom/beizi/fusion/c/b;->b()Ljava/lang/String;

    .line 202
    .line 203
    .line 204
    move-result-object v11

    .line 205
    const-string v12, ""

    .line 206
    .line 207
    const-string v13, ""

    .line 208
    .line 209
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 210
    .line 211
    .line 212
    move-result-wide v16

    .line 213
    invoke-static/range {v16 .. v17}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    .line 214
    .line 215
    .line 216
    move-result-object v14

    .line 217
    const-string v16, ""

    .line 218
    .line 219
    move-object v6, v15

    .line 220
    move-object v5, v15

    .line 221
    move-object/from16 v15, v16

    .line 222
    .line 223
    invoke-direct/range {v6 .. v15}, Lcom/beizi/fusion/events/EventBean;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 224
    .line 225
    .line 226
    invoke-virtual {v1, v5}, Lcom/beizi/fusion/events/EventCar;->goRoadWithoutThread(Lcom/beizi/fusion/events/EventBean;)V

    .line 227
    .line 228
    .line 229
    :goto_2
    iget-object v1, v0, Lcom/beizi/fusion/tool/av;->b:Lcom/beizi/fusion/model/TaskBean$BackTaskArrayBean;

    .line 230
    .line 231
    invoke-virtual {v1}, Lcom/beizi/fusion/model/TaskBean$BackTaskArrayBean;->getSleepTime()J

    .line 232
    .line 233
    .line 234
    move-result-wide v5

    .line 235
    invoke-static {v5, v6}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 236
    .line 237
    .line 238
    :cond_1
    add-int/lit8 v4, v4, 0x1

    .line 239
    .line 240
    const/4 v5, 0x0

    .line 241
    goto/16 :goto_1

    .line 242
    .line 243
    :catch_0
    iget-object v1, v0, Lcom/beizi/fusion/tool/av;->c:Landroid/content/Context;

    .line 244
    .line 245
    invoke-static {v1}, Lcom/beizi/fusion/events/EventCar;->getInstance(Landroid/content/Context;)Lcom/beizi/fusion/events/EventCar;

    .line 246
    .line 247
    .line 248
    move-result-object v1

    .line 249
    new-instance v13, Lcom/beizi/fusion/events/EventBean;

    .line 250
    .line 251
    sget-object v4, Lcom/beizi/fusion/c/b;->b:Ljava/lang/String;

    .line 252
    .line 253
    const-string v5, ""

    .line 254
    .line 255
    const-string v6, "510.500"

    .line 256
    .line 257
    const-string v7, ""

    .line 258
    .line 259
    invoke-static {}, Lcom/beizi/fusion/c/b;->a()Lcom/beizi/fusion/c/b;

    .line 260
    .line 261
    .line 262
    move-result-object v3

    .line 263
    invoke-virtual {v3}, Lcom/beizi/fusion/c/b;->b()Ljava/lang/String;

    .line 264
    .line 265
    .line 266
    move-result-object v8

    .line 267
    const-string v9, ""

    .line 268
    .line 269
    const-string v10, ""

    .line 270
    .line 271
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 272
    .line 273
    .line 274
    move-result-wide v11

    .line 275
    invoke-static {v11, v12}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    .line 276
    .line 277
    .line 278
    move-result-object v11

    .line 279
    const-string v12, ""

    .line 280
    .line 281
    move-object v3, v13

    .line 282
    invoke-direct/range {v3 .. v12}, Lcom/beizi/fusion/events/EventBean;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 283
    .line 284
    .line 285
    invoke-virtual {v1, v13}, Lcom/beizi/fusion/events/EventCar;->goRoadWithoutThread(Lcom/beizi/fusion/events/EventBean;)V

    .line 286
    .line 287
    .line 288
    :cond_2
    add-int/lit8 v2, v2, 0x1

    .line 289
    .line 290
    goto/16 :goto_0

    .line 291
    .line 292
    :cond_3
    iget-object v1, v0, Lcom/beizi/fusion/tool/av;->c:Landroid/content/Context;

    .line 293
    .line 294
    invoke-static {v1}, Lcom/beizi/fusion/events/EventCar;->getInstance(Landroid/content/Context;)Lcom/beizi/fusion/events/EventCar;

    .line 295
    .line 296
    .line 297
    move-result-object v1

    .line 298
    new-instance v12, Lcom/beizi/fusion/events/EventBean;

    .line 299
    .line 300
    sget-object v3, Lcom/beizi/fusion/c/b;->b:Ljava/lang/String;

    .line 301
    .line 302
    const-string v4, ""

    .line 303
    .line 304
    const-string v5, "510.200"

    .line 305
    .line 306
    const-string v6, ""

    .line 307
    .line 308
    invoke-static {}, Lcom/beizi/fusion/c/b;->a()Lcom/beizi/fusion/c/b;

    .line 309
    .line 310
    .line 311
    move-result-object v2

    .line 312
    invoke-virtual {v2}, Lcom/beizi/fusion/c/b;->b()Ljava/lang/String;

    .line 313
    .line 314
    .line 315
    move-result-object v7

    .line 316
    const-string v8, ""

    .line 317
    .line 318
    const-string v9, ""

    .line 319
    .line 320
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 321
    .line 322
    .line 323
    move-result-wide v10

    .line 324
    invoke-static {v10, v11}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    .line 325
    .line 326
    .line 327
    move-result-object v10

    .line 328
    const-string v11, ""

    .line 329
    .line 330
    move-object v2, v12

    .line 331
    invoke-direct/range {v2 .. v11}, Lcom/beizi/fusion/events/EventBean;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 332
    .line 333
    .line 334
    invoke-virtual {v1, v12}, Lcom/beizi/fusion/events/EventCar;->goRoadWithoutThread(Lcom/beizi/fusion/events/EventBean;)V

    .line 335
    .line 336
    .line 337
    :cond_4
    return-void
.end method
