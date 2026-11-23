.class public Lec/c;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static a:Ljava/lang/String;

.field public static b:Ljava/lang/String;

.field public static c:Landroid/content/SharedPreferences;


# direct methods
.method public static a(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 1
    invoke-static {p0}, Lec/c;->b(Landroid/content/Context;)V

    .line 2
    .line 3
    .line 4
    sget-object p0, Lec/c;->c:Landroid/content/SharedPreferences;

    .line 5
    .line 6
    const-string v0, ""

    .line 7
    .line 8
    if-eqz p0, :cond_0

    .line 9
    .line 10
    invoke-interface {p0, p1, v0}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 11
    .line 12
    .line 13
    move-result-object v0

    .line 14
    :cond_0
    return-object v0
.end method

.method public static b(Landroid/content/Context;)V
    .locals 2

    .line 1
    sget-object v0, Lec/c;->c:Landroid/content/SharedPreferences;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    if-eqz p0, :cond_1

    .line 7
    .line 8
    const-string v0, "ks_turbo_sdk_pref"

    .line 9
    .line 10
    const/4 v1, 0x0

    .line 11
    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    .line 12
    .line 13
    .line 14
    move-result-object p0

    .line 15
    sput-object p0, Lec/c;->c:Landroid/content/SharedPreferences;

    .line 16
    .line 17
    :cond_1
    return-void
.end method

.method public static c(Landroid/content/Context;Ljava/lang/String;J)V
    .locals 0

    .line 1
    invoke-static {p0}, Lec/c;->b(Landroid/content/Context;)V

    .line 2
    .line 3
    .line 4
    sget-object p0, Lec/c;->c:Landroid/content/SharedPreferences;

    .line 5
    .line 6
    if-eqz p0, :cond_0

    .line 7
    .line 8
    invoke-interface {p0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    .line 9
    .line 10
    .line 11
    move-result-object p0

    .line 12
    invoke-interface {p0, p1, p2, p3}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    .line 13
    .line 14
    .line 15
    move-result-object p0

    .line 16
    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 17
    .line 18
    .line 19
    :cond_0
    return-void
.end method

.method public static d(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 1
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    return-void

    .line 8
    :cond_0
    invoke-static {p0}, Lec/c;->b(Landroid/content/Context;)V

    .line 9
    .line 10
    .line 11
    sget-object p0, Lec/c;->c:Landroid/content/SharedPreferences;

    .line 12
    .line 13
    if-eqz p0, :cond_1

    .line 14
    .line 15
    invoke-interface {p0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    .line 16
    .line 17
    .line 18
    move-result-object p0

    .line 19
    invoke-interface {p0, p1, p2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 20
    .line 21
    .line 22
    move-result-object p0

    .line 23
    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 24
    .line 25
    .line 26
    :cond_1
    return-void
.end method

.method public static e(Lorg/json/JSONObject;)V
    .locals 12

    .line 1
    const-string v0, "ks_system_ua"

    .line 2
    .line 3
    const-string v1, "window"

    .line 4
    .line 5
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 6
    .line 7
    .line 8
    move-result-wide v2

    .line 9
    long-to-double v2, v2

    .line 10
    const-string v4, "eventTimestamp"

    .line 11
    .line 12
    invoke-static {p0, v4, v2, v3}, Lec/c;->f(Lorg/json/JSONObject;Ljava/lang/String;D)V

    .line 13
    .line 14
    .line 15
    const-string v2, "sdkVersion"

    .line 16
    .line 17
    const-wide/high16 v3, -0x4010000000000000L    # -1.0

    .line 18
    .line 19
    invoke-static {p0, v2, v3, v4}, Lec/c;->f(Lorg/json/JSONObject;Ljava/lang/String;D)V

    .line 20
    .line 21
    .line 22
    const-string v2, "sdkVersionName"

    .line 23
    .line 24
    const-string v3, "1.0.17"

    .line 25
    .line 26
    invoke-static {p0, v2, v3}, Lec/c;->g(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)V

    .line 27
    .line 28
    .line 29
    sget-object v2, Lkwai/a/e$c;->b:Lkwai/a/e$c;

    .line 30
    .line 31
    iget-object v3, v2, Lkwai/a/e$c;->a:Lkwai/a/e;

    .line 32
    .line 33
    iget-object v3, v3, Lkwai/a/e;->d:Ljava/lang/String;

    .line 34
    .line 35
    const-string v4, "appId"

    .line 36
    .line 37
    invoke-static {p0, v4, v3}, Lec/c;->g(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)V

    .line 38
    .line 39
    .line 40
    iget-object v3, v2, Lkwai/a/e$c;->a:Lkwai/a/e;

    .line 41
    .line 42
    iget-object v3, v3, Lkwai/a/e;->e:Ljava/lang/String;

    .line 43
    .line 44
    const-string v4, "appName"

    .line 45
    .line 46
    invoke-static {p0, v4, v3}, Lec/c;->g(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)V

    .line 47
    .line 48
    .line 49
    iget-object v3, v2, Lkwai/a/e$c;->a:Lkwai/a/e;

    .line 50
    .line 51
    iget-object v3, v3, Lkwai/a/e;->f:Ljava/lang/String;

    .line 52
    .line 53
    const-string v4, "appChannel"

    .line 54
    .line 55
    invoke-static {p0, v4, v3}, Lec/c;->g(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)V

    .line 56
    .line 57
    .line 58
    iget-object v3, v2, Lkwai/a/e$c;->a:Lkwai/a/e;

    .line 59
    .line 60
    iget-object v3, v3, Lkwai/a/e;->g:Ljava/lang/String;

    .line 61
    .line 62
    const-string v4, "packageName"

    .line 63
    .line 64
    invoke-static {p0, v4, v3}, Lec/c;->g(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)V

    .line 65
    .line 66
    .line 67
    const-string v3, "osType"

    .line 68
    .line 69
    const-string v4, "Android"

    .line 70
    .line 71
    invoke-static {p0, v3, v4}, Lec/c;->g(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)V

    .line 72
    .line 73
    .line 74
    sget-object v3, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    .line 75
    .line 76
    const-string v4, "osVersion"

    .line 77
    .line 78
    invoke-static {p0, v4, v3}, Lec/c;->g(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)V

    .line 79
    .line 80
    .line 81
    sget-object v3, Landroid/os/Build;->MODEL:Ljava/lang/String;

    .line 82
    .line 83
    const-string v4, "deviceModel"

    .line 84
    .line 85
    invoke-static {p0, v4, v3}, Lec/c;->g(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)V

    .line 86
    .line 87
    .line 88
    sget-object v3, Landroid/os/Build;->BRAND:Ljava/lang/String;

    .line 89
    .line 90
    const-string v4, "deviceBrand"

    .line 91
    .line 92
    invoke-static {p0, v4, v3}, Lec/c;->g(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)V

    .line 93
    .line 94
    .line 95
    sget-object v3, Landroid/os/Build;->MANUFACTURER:Ljava/lang/String;

    .line 96
    .line 97
    const-string v4, "deviceManufacturer"

    .line 98
    .line 99
    invoke-static {p0, v4, v3}, Lec/c;->g(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)V

    .line 100
    .line 101
    .line 102
    new-instance v3, Ljava/lang/StringBuilder;

    .line 103
    .line 104
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 105
    .line 106
    .line 107
    sget-object v4, Lec/c;->a:Ljava/lang/String;

    .line 108
    .line 109
    const-string v5, ""

    .line 110
    .line 111
    if-nez v4, :cond_0

    .line 112
    .line 113
    invoke-static {v5}, Lec/c;->k(Ljava/lang/String;)Z

    .line 114
    .line 115
    .line 116
    :cond_0
    sget-object v4, Lec/c;->a:Ljava/lang/String;

    .line 117
    .line 118
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 119
    .line 120
    .line 121
    const-string v4, " "

    .line 122
    .line 123
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 124
    .line 125
    .line 126
    sget-object v4, Lec/c;->b:Ljava/lang/String;

    .line 127
    .line 128
    if-nez v4, :cond_1

    .line 129
    .line 130
    invoke-static {v5}, Lec/c;->k(Ljava/lang/String;)Z

    .line 131
    .line 132
    .line 133
    :cond_1
    sget-object v4, Lec/c;->b:Ljava/lang/String;

    .line 134
    .line 135
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 136
    .line 137
    .line 138
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 139
    .line 140
    .line 141
    move-result-object v3

    .line 142
    const-string v4, "rom"

    .line 143
    .line 144
    invoke-static {p0, v4, v3}, Lec/c;->g(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)V

    .line 145
    .line 146
    .line 147
    sget-object v3, Landroid/os/Build;->CPU_ABI:Ljava/lang/String;

    .line 148
    .line 149
    const-string v4, "cpuAbi"

    .line 150
    .line 151
    invoke-static {p0, v4, v3}, Lec/c;->g(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)V

    .line 152
    .line 153
    .line 154
    iget-object v2, v2, Lkwai/a/e$c;->a:Lkwai/a/e;

    .line 155
    .line 156
    iget-object v2, v2, Lkwai/a/e;->c:Landroid/content/Context;

    .line 157
    .line 158
    const/4 v3, 0x0

    .line 159
    :try_start_0
    new-instance v4, Landroid/util/DisplayMetrics;

    .line 160
    .line 161
    invoke-direct {v4}, Landroid/util/DisplayMetrics;-><init>()V

    .line 162
    .line 163
    .line 164
    invoke-virtual {v2, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 165
    .line 166
    .line 167
    move-result-object v2

    .line 168
    check-cast v2, Landroid/view/WindowManager;

    .line 169
    .line 170
    invoke-interface {v2}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    .line 171
    .line 172
    .line 173
    move-result-object v2

    .line 174
    invoke-virtual {v2, v4}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 175
    .line 176
    .line 177
    iget v2, v4, Landroid/util/DisplayMetrics;->densityDpi:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 178
    .line 179
    goto :goto_0

    .line 180
    :catch_0
    const/4 v2, 0x0

    .line 181
    :goto_0
    int-to-double v6, v2

    .line 182
    const-string v2, "densityDpi"

    .line 183
    .line 184
    invoke-static {p0, v2, v6, v7}, Lec/c;->f(Lorg/json/JSONObject;Ljava/lang/String;D)V

    .line 185
    .line 186
    .line 187
    sget-object v2, Lkwai/a/e$c;->b:Lkwai/a/e$c;

    .line 188
    .line 189
    iget-object v2, v2, Lkwai/a/e$c;->a:Lkwai/a/e;

    .line 190
    .line 191
    iget-object v2, v2, Lkwai/a/e;->c:Landroid/content/Context;

    .line 192
    .line 193
    :try_start_1
    new-instance v4, Landroid/util/DisplayMetrics;

    .line 194
    .line 195
    invoke-direct {v4}, Landroid/util/DisplayMetrics;-><init>()V

    .line 196
    .line 197
    .line 198
    invoke-virtual {v2, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 199
    .line 200
    .line 201
    move-result-object v2

    .line 202
    check-cast v2, Landroid/view/WindowManager;

    .line 203
    .line 204
    invoke-interface {v2}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    .line 205
    .line 206
    .line 207
    move-result-object v2

    .line 208
    invoke-virtual {v2, v4}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 209
    .line 210
    .line 211
    iget v2, v4, Landroid/util/DisplayMetrics;->heightPixels:I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 212
    .line 213
    goto :goto_1

    .line 214
    :catch_1
    const/4 v2, 0x0

    .line 215
    :goto_1
    int-to-double v6, v2

    .line 216
    const-string v2, "displayH"

    .line 217
    .line 218
    invoke-static {p0, v2, v6, v7}, Lec/c;->f(Lorg/json/JSONObject;Ljava/lang/String;D)V

    .line 219
    .line 220
    .line 221
    sget-object v2, Lkwai/a/e$c;->b:Lkwai/a/e$c;

    .line 222
    .line 223
    iget-object v2, v2, Lkwai/a/e$c;->a:Lkwai/a/e;

    .line 224
    .line 225
    iget-object v2, v2, Lkwai/a/e;->c:Landroid/content/Context;

    .line 226
    .line 227
    :try_start_2
    new-instance v4, Landroid/util/DisplayMetrics;

    .line 228
    .line 229
    invoke-direct {v4}, Landroid/util/DisplayMetrics;-><init>()V

    .line 230
    .line 231
    .line 232
    invoke-virtual {v2, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 233
    .line 234
    .line 235
    move-result-object v1

    .line 236
    check-cast v1, Landroid/view/WindowManager;

    .line 237
    .line 238
    invoke-interface {v1}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    .line 239
    .line 240
    .line 241
    move-result-object v1

    .line 242
    invoke-virtual {v1, v4}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 243
    .line 244
    .line 245
    iget v1, v4, Landroid/util/DisplayMetrics;->widthPixels:I
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    .line 246
    .line 247
    goto :goto_2

    .line 248
    :catch_2
    const/4 v1, 0x0

    .line 249
    :goto_2
    int-to-double v1, v1

    .line 250
    const-string v4, "displayW"

    .line 251
    .line 252
    invoke-static {p0, v4, v1, v2}, Lec/c;->f(Lorg/json/JSONObject;Ljava/lang/String;D)V

    .line 253
    .line 254
    .line 255
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    .line 256
    .line 257
    .line 258
    move-result-object v1

    .line 259
    invoke-virtual {v1}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    .line 260
    .line 261
    .line 262
    move-result-object v1

    .line 263
    const-string v2, "language"

    .line 264
    .line 265
    invoke-static {p0, v2, v1}, Lec/c;->g(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)V

    .line 266
    .line 267
    .line 268
    :try_start_3
    invoke-static {}, Ljava/util/TimeZone;->getDefault()Ljava/util/TimeZone;

    .line 269
    .line 270
    .line 271
    move-result-object v1

    .line 272
    const-wide/16 v6, 0xf

    .line 273
    .line 274
    invoke-virtual {v1, v6, v7}, Ljava/util/TimeZone;->getOffset(J)I

    .line 275
    .line 276
    .line 277
    move-result v1

    .line 278
    const v2, 0x36ee80

    .line 279
    .line 280
    .line 281
    div-int/2addr v1, v2
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_3

    .line 282
    goto :goto_3

    .line 283
    :catch_3
    nop

    .line 284
    const/4 v1, 0x0

    .line 285
    :goto_3
    int-to-double v1, v1

    .line 286
    const-string v4, "timezone"

    .line 287
    .line 288
    invoke-static {p0, v4, v1, v2}, Lec/c;->f(Lorg/json/JSONObject;Ljava/lang/String;D)V

    .line 289
    .line 290
    .line 291
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    .line 292
    .line 293
    .line 294
    move-result-object v1

    .line 295
    invoke-virtual {v1}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    .line 296
    .line 297
    .line 298
    move-result-object v1

    .line 299
    const-string v2, "region"

    .line 300
    .line 301
    invoke-static {p0, v2, v1}, Lec/c;->g(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)V

    .line 302
    .line 303
    .line 304
    sget-object v1, Lkwai/a/e$c;->b:Lkwai/a/e$c;

    .line 305
    .line 306
    iget-object v2, v1, Lkwai/a/e$c;->a:Lkwai/a/e;

    .line 307
    .line 308
    iget-object v2, v2, Lkwai/a/e;->c:Landroid/content/Context;

    .line 309
    .line 310
    if-eqz v2, :cond_3

    .line 311
    .line 312
    sget-object v4, Lkc/c;->b:Ljava/lang/String;

    .line 313
    .line 314
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 315
    .line 316
    .line 317
    move-result v4

    .line 318
    if-nez v4, :cond_2

    .line 319
    .line 320
    goto :goto_4

    .line 321
    :cond_2
    invoke-static {v2}, Lkc/c;->a(Landroid/content/Context;)Ljava/lang/String;

    .line 322
    .line 323
    .line 324
    move-result-object v2

    .line 325
    invoke-static {v2}, Lec/c;->n(Ljava/lang/String;)Ljava/lang/String;

    .line 326
    .line 327
    .line 328
    move-result-object v2

    .line 329
    sput-object v2, Lkc/c;->b:Ljava/lang/String;

    .line 330
    .line 331
    invoke-static {v2}, Lkc/c;->b(Ljava/lang/String;)Ljava/lang/String;

    .line 332
    .line 333
    .line 334
    move-result-object v2

    .line 335
    goto :goto_5

    .line 336
    :cond_3
    :goto_4
    sget-object v2, Lkc/c;->b:Ljava/lang/String;

    .line 337
    .line 338
    :goto_5
    const-string v4, "imei"

    .line 339
    .line 340
    invoke-static {p0, v4, v2}, Lec/c;->g(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)V

    .line 341
    .line 342
    .line 343
    invoke-static {}, Lkwai/a/e;->k()Ljava/lang/String;

    .line 344
    .line 345
    .line 346
    move-result-object v2

    .line 347
    const-string v4, "globalId"

    .line 348
    .line 349
    invoke-static {p0, v4, v2}, Lec/c;->g(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)V

    .line 350
    .line 351
    .line 352
    iget-object v1, v1, Lkwai/a/e$c;->a:Lkwai/a/e;

    .line 353
    .line 354
    iget-object v1, v1, Lkwai/a/e;->c:Landroid/content/Context;

    .line 355
    .line 356
    const-string v2, "SystemUtils"

    .line 357
    .line 358
    if-eqz v1, :cond_6

    .line 359
    .line 360
    sget-object v4, Lkc/c;->e:Ljava/lang/String;

    .line 361
    .line 362
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 363
    .line 364
    .line 365
    move-result v4

    .line 366
    if-nez v4, :cond_4

    .line 367
    .line 368
    goto :goto_7

    .line 369
    :cond_4
    :try_start_4
    invoke-static {v1, v0}, Lec/c;->a(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    .line 370
    .line 371
    .line 372
    move-result-object v4

    .line 373
    sput-object v4, Lkc/c;->e:Ljava/lang/String;

    .line 374
    .line 375
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 376
    .line 377
    .line 378
    move-result v4

    .line 379
    if-nez v4, :cond_5

    .line 380
    .line 381
    sget-object v0, Lkc/c;->e:Ljava/lang/String;

    .line 382
    .line 383
    goto :goto_8

    .line 384
    :cond_5
    invoke-static {v1}, Landroid/webkit/WebSettings;->getDefaultUserAgent(Landroid/content/Context;)Ljava/lang/String;

    .line 385
    .line 386
    .line 387
    move-result-object v4

    .line 388
    sput-object v4, Lkc/c;->e:Ljava/lang/String;

    .line 389
    .line 390
    invoke-static {v1, v0, v4}, Lec/c;->d(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_4

    .line 391
    .line 392
    .line 393
    goto :goto_6

    .line 394
    :catch_4
    const-string v0, "getSysUa fail"

    .line 395
    .line 396
    invoke-static {v2, v0}, Lkc/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 397
    .line 398
    .line 399
    :goto_6
    sget-object v0, Lkc/c;->e:Ljava/lang/String;

    .line 400
    .line 401
    goto :goto_8

    .line 402
    :cond_6
    :goto_7
    sget-object v0, Lkc/c;->e:Ljava/lang/String;

    .line 403
    .line 404
    :goto_8
    const-string v1, "ua"

    .line 405
    .line 406
    invoke-static {p0, v1, v0}, Lec/c;->g(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)V

    .line 407
    .line 408
    .line 409
    invoke-static {}, Lec/c;->i()Z

    .line 410
    .line 411
    .line 412
    move-result v0

    .line 413
    if-eqz v0, :cond_7

    .line 414
    .line 415
    invoke-static {}, Lkwai/a/e;->l()Ljava/lang/String;

    .line 416
    .line 417
    .line 418
    move-result-object v0

    .line 419
    const-string v1, "oaid"

    .line 420
    .line 421
    invoke-static {p0, v1, v0}, Lec/c;->g(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)V

    .line 422
    .line 423
    .line 424
    :cond_7
    invoke-static {}, Lkwai/a/e;->l()Ljava/lang/String;

    .line 425
    .line 426
    .line 427
    move-result-object v0

    .line 428
    invoke-static {v0}, Lec/c;->n(Ljava/lang/String;)Ljava/lang/String;

    .line 429
    .line 430
    .line 431
    move-result-object v0

    .line 432
    const-string v1, "oaidMd5"

    .line 433
    .line 434
    invoke-static {p0, v1, v0}, Lec/c;->g(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)V

    .line 435
    .line 436
    .line 437
    sget-object v0, Lkwai/a/e$c;->b:Lkwai/a/e$c;

    .line 438
    .line 439
    iget-object v0, v0, Lkwai/a/e$c;->a:Lkwai/a/e;

    .line 440
    .line 441
    iget-object v0, v0, Lkwai/a/e;->c:Landroid/content/Context;

    .line 442
    .line 443
    if-eqz v0, :cond_13

    .line 444
    .line 445
    sget-object v1, Lkc/c;->c:Ljava/lang/String;

    .line 446
    .line 447
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 448
    .line 449
    .line 450
    move-result v1

    .line 451
    if-nez v1, :cond_8

    .line 452
    .line 453
    goto/16 :goto_e

    .line 454
    .line 455
    :cond_8
    const-string v1, "android.permission.READ_PHONE_STATE"

    .line 456
    .line 457
    :try_start_5
    invoke-static {}, Landroid/os/Process;->myPid()I

    .line 458
    .line 459
    .line 460
    move-result v4

    .line 461
    invoke-static {}, Landroid/os/Process;->myUid()I

    .line 462
    .line 463
    .line 464
    move-result v6

    .line 465
    invoke-virtual {v0, v1, v4, v6}, Landroid/content/Context;->checkPermission(Ljava/lang/String;II)I

    .line 466
    .line 467
    .line 468
    move-result v1

    .line 469
    const/4 v4, 0x1

    .line 470
    if-nez v1, :cond_9

    .line 471
    .line 472
    const/4 v1, 0x1

    .line 473
    goto :goto_9

    .line 474
    :cond_9
    const/4 v1, 0x0

    .line 475
    :goto_9
    if-eqz v1, :cond_a

    .line 476
    .line 477
    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    .line 478
    .line 479
    .line 480
    move-result-object v0

    .line 481
    const-string v1, "wifi"

    .line 482
    .line 483
    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 484
    .line 485
    .line 486
    move-result-object v0

    .line 487
    check-cast v0, Landroid/net/wifi/WifiManager;

    .line 488
    .line 489
    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->getConnectionInfo()Landroid/net/wifi/WifiInfo;

    .line 490
    .line 491
    .line 492
    move-result-object v0

    .line 493
    if-eqz v0, :cond_a

    .line 494
    .line 495
    invoke-virtual {v0}, Landroid/net/wifi/WifiInfo;->getMacAddress()Ljava/lang/String;

    .line 496
    .line 497
    .line 498
    move-result-object v0

    .line 499
    sput-object v0, Lkc/c;->c:Ljava/lang/String;

    .line 500
    .line 501
    :cond_a
    sget-object v0, Lkc/c;->c:Ljava/lang/String;

    .line 502
    .line 503
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 504
    .line 505
    .line 506
    move-result v0
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_5

    .line 507
    const-string v1, "02:00:00:00:00:00"

    .line 508
    .line 509
    if-nez v0, :cond_b

    .line 510
    .line 511
    :try_start_6
    sget-object v0, Lkc/c;->c:Ljava/lang/String;

    .line 512
    .line 513
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 514
    .line 515
    .line 516
    move-result v0

    .line 517
    if-eqz v0, :cond_10

    .line 518
    .line 519
    :cond_b
    invoke-static {}, Ljava/net/NetworkInterface;->getNetworkInterfaces()Ljava/util/Enumeration;

    .line 520
    .line 521
    .line 522
    move-result-object v0

    .line 523
    invoke-static {v0}, Ljava/util/Collections;->list(Ljava/util/Enumeration;)Ljava/util/ArrayList;

    .line 524
    .line 525
    .line 526
    move-result-object v0

    .line 527
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 528
    .line 529
    .line 530
    move-result-object v0

    .line 531
    :goto_a
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 532
    .line 533
    .line 534
    move-result v6

    .line 535
    if-eqz v6, :cond_10

    .line 536
    .line 537
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 538
    .line 539
    .line 540
    move-result-object v6

    .line 541
    check-cast v6, Ljava/net/NetworkInterface;

    .line 542
    .line 543
    invoke-virtual {v6}, Ljava/net/NetworkInterface;->getName()Ljava/lang/String;

    .line 544
    .line 545
    .line 546
    move-result-object v7

    .line 547
    const-string v8, "wlan0"

    .line 548
    .line 549
    invoke-virtual {v7, v8}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    .line 550
    .line 551
    .line 552
    move-result v7

    .line 553
    if-nez v7, :cond_c

    .line 554
    .line 555
    goto :goto_a

    .line 556
    :cond_c
    invoke-virtual {v6}, Ljava/net/NetworkInterface;->getHardwareAddress()[B

    .line 557
    .line 558
    .line 559
    move-result-object v0

    .line 560
    if-eqz v0, :cond_10

    .line 561
    .line 562
    array-length v6, v0

    .line 563
    if-nez v6, :cond_d

    .line 564
    .line 565
    goto :goto_c

    .line 566
    :cond_d
    new-instance v6, Ljava/lang/StringBuilder;

    .line 567
    .line 568
    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    .line 569
    .line 570
    .line 571
    array-length v7, v0

    .line 572
    const/4 v8, 0x0

    .line 573
    :goto_b
    if-ge v8, v7, :cond_e

    .line 574
    .line 575
    aget-byte v9, v0, v8
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_5

    .line 576
    .line 577
    const-string v10, "%02X:"

    .line 578
    .line 579
    :try_start_7
    new-array v11, v4, [Ljava/lang/Object;

    .line 580
    .line 581
    invoke-static {v9}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    .line 582
    .line 583
    .line 584
    move-result-object v9

    .line 585
    aput-object v9, v11, v3

    .line 586
    .line 587
    invoke-static {v10, v11}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 588
    .line 589
    .line 590
    move-result-object v9

    .line 591
    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 592
    .line 593
    .line 594
    add-int/lit8 v8, v8, 0x1

    .line 595
    .line 596
    goto :goto_b

    .line 597
    :cond_e
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->length()I

    .line 598
    .line 599
    .line 600
    move-result v0

    .line 601
    if-lez v0, :cond_f

    .line 602
    .line 603
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->length()I

    .line 604
    .line 605
    .line 606
    move-result v0

    .line 607
    sub-int/2addr v0, v4

    .line 608
    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->deleteCharAt(I)Ljava/lang/StringBuilder;

    .line 609
    .line 610
    .line 611
    :cond_f
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 612
    .line 613
    .line 614
    move-result-object v0

    .line 615
    sput-object v0, Lkc/c;->c:Ljava/lang/String;

    .line 616
    .line 617
    :cond_10
    :goto_c
    sget-object v0, Lkc/c;->c:Ljava/lang/String;

    .line 618
    .line 619
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 620
    .line 621
    .line 622
    move-result v0

    .line 623
    if-nez v0, :cond_11

    .line 624
    .line 625
    sget-object v0, Lkc/c;->c:Ljava/lang/String;

    .line 626
    .line 627
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 628
    .line 629
    .line 630
    move-result v0

    .line 631
    if-eqz v0, :cond_12

    .line 632
    .line 633
    :cond_11
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    .line 634
    .line 635
    .line 636
    move-result-object v0

    .line 637
    const-string v1, "cat /sys/class/net/wlan0/address "

    .line 638
    .line 639
    invoke-virtual {v0, v1}, Ljava/lang/Runtime;->exec(Ljava/lang/String;)Ljava/lang/Process;

    .line 640
    .line 641
    .line 642
    move-result-object v0

    .line 643
    new-instance v1, Ljava/io/InputStreamReader;

    .line 644
    .line 645
    invoke-virtual {v0}, Ljava/lang/Process;->getInputStream()Ljava/io/InputStream;

    .line 646
    .line 647
    .line 648
    move-result-object v0

    .line 649
    invoke-direct {v1, v0}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    .line 650
    .line 651
    .line 652
    new-instance v0, Ljava/io/LineNumberReader;

    .line 653
    .line 654
    invoke-direct {v0, v1}, Ljava/io/LineNumberReader;-><init>(Ljava/io/Reader;)V

    .line 655
    .line 656
    .line 657
    invoke-virtual {v0}, Ljava/io/LineNumberReader;->readLine()Ljava/lang/String;

    .line 658
    .line 659
    .line 660
    move-result-object v0

    .line 661
    sput-object v0, Lkc/c;->c:Ljava/lang/String;

    .line 662
    .line 663
    :cond_12
    sget-object v0, Lkc/c;->c:Ljava/lang/String;

    .line 664
    .line 665
    sget-object v1, Ljava/util/Locale;->US:Ljava/util/Locale;

    .line 666
    .line 667
    invoke-virtual {v0, v1}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    .line 668
    .line 669
    .line 670
    move-result-object v0

    .line 671
    invoke-static {v0}, Lec/c;->n(Ljava/lang/String;)Ljava/lang/String;

    .line 672
    .line 673
    .line 674
    move-result-object v0

    .line 675
    sput-object v0, Lkc/c;->c:Ljava/lang/String;
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_5

    .line 676
    .line 677
    goto :goto_d

    .line 678
    :catch_5
    move-exception v0

    .line 679
    new-instance v1, Ljava/lang/StringBuilder;

    .line 680
    .line 681
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 682
    .line 683
    .line 684
    const-string v4, "getMacAddress exception:"

    .line 685
    .line 686
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 687
    .line 688
    .line 689
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 690
    .line 691
    .line 692
    move-result-object v0

    .line 693
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 694
    .line 695
    .line 696
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 697
    .line 698
    .line 699
    move-result-object v0

    .line 700
    invoke-static {v2, v0}, Lkc/a;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 701
    .line 702
    .line 703
    :goto_d
    sget-object v0, Lkc/c;->c:Ljava/lang/String;

    .line 704
    .line 705
    invoke-static {v0}, Lkc/c;->b(Ljava/lang/String;)Ljava/lang/String;

    .line 706
    .line 707
    .line 708
    move-result-object v0

    .line 709
    goto :goto_f

    .line 710
    :cond_13
    :goto_e
    sget-object v0, Lkc/c;->c:Ljava/lang/String;

    .line 711
    .line 712
    :goto_f
    const-string v1, "mac"

    .line 713
    .line 714
    invoke-static {p0, v1, v0}, Lec/c;->g(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)V

    .line 715
    .line 716
    .line 717
    sget-object v0, Lkc/c;->f:Ljava/lang/String;

    .line 718
    .line 719
    if-eqz v0, :cond_14

    .line 720
    .line 721
    :goto_10
    move-object v5, v0

    .line 722
    goto :goto_11

    .line 723
    :cond_14
    :try_start_8
    invoke-static {}, Ljava/net/NetworkInterface;->getNetworkInterfaces()Ljava/util/Enumeration;

    .line 724
    .line 725
    .line 726
    move-result-object v0

    .line 727
    :cond_15
    invoke-interface {v0}, Ljava/util/Enumeration;->hasMoreElements()Z

    .line 728
    .line 729
    .line 730
    move-result v1

    .line 731
    if-eqz v1, :cond_17

    .line 732
    .line 733
    invoke-interface {v0}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    .line 734
    .line 735
    .line 736
    move-result-object v1

    .line 737
    check-cast v1, Ljava/net/NetworkInterface;

    .line 738
    .line 739
    invoke-virtual {v1}, Ljava/net/NetworkInterface;->getInetAddresses()Ljava/util/Enumeration;

    .line 740
    .line 741
    .line 742
    move-result-object v1

    .line 743
    :cond_16
    invoke-interface {v1}, Ljava/util/Enumeration;->hasMoreElements()Z

    .line 744
    .line 745
    .line 746
    move-result v2

    .line 747
    if-eqz v2, :cond_15

    .line 748
    .line 749
    invoke-interface {v1}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    .line 750
    .line 751
    .line 752
    move-result-object v2

    .line 753
    check-cast v2, Ljava/net/InetAddress;

    .line 754
    .line 755
    instance-of v4, v2, Ljava/net/Inet4Address;

    .line 756
    .line 757
    if-eqz v4, :cond_16

    .line 758
    .line 759
    invoke-virtual {v2}, Ljava/net/InetAddress;->isLoopbackAddress()Z

    .line 760
    .line 761
    .line 762
    move-result v4

    .line 763
    if-nez v4, :cond_16

    .line 764
    .line 765
    invoke-virtual {v2}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    .line 766
    .line 767
    .line 768
    move-result-object v0

    .line 769
    sput-object v0, Lkc/c;->f:Ljava/lang/String;
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    .line 770
    .line 771
    goto :goto_10

    .line 772
    :catchall_0
    :cond_17
    sput-object v5, Lkc/c;->f:Ljava/lang/String;

    .line 773
    .line 774
    :goto_11
    const-string v0, "clientIp"

    .line 775
    .line 776
    invoke-static {p0, v0, v5}, Lec/c;->g(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)V

    .line 777
    .line 778
    .line 779
    sget-object v0, Lkwai/a/e$c;->b:Lkwai/a/e$c;

    .line 780
    .line 781
    iget-object v1, v0, Lkwai/a/e$c;->a:Lkwai/a/e;

    .line 782
    .line 783
    iget-object v1, v1, Lkwai/a/e;->c:Landroid/content/Context;

    .line 784
    .line 785
    invoke-static {v1}, Lkc/b;->a(Landroid/content/Context;)Ljava/lang/String;

    .line 786
    .line 787
    .line 788
    move-result-object v1

    .line 789
    const-string v2, "netType"

    .line 790
    .line 791
    invoke-static {p0, v2, v1}, Lec/c;->g(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)V

    .line 792
    .line 793
    .line 794
    iget-object v0, v0, Lkwai/a/e$c;->a:Lkwai/a/e;

    .line 795
    .line 796
    iget-object v0, v0, Lkwai/a/e;->c:Landroid/content/Context;

    .line 797
    .line 798
    if-eqz v0, :cond_19

    .line 799
    .line 800
    sget-object v1, Lkc/c;->d:Ljava/lang/String;

    .line 801
    .line 802
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 803
    .line 804
    .line 805
    move-result v1

    .line 806
    if-nez v1, :cond_18

    .line 807
    .line 808
    goto :goto_12

    .line 809
    :cond_18
    :try_start_9
    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 810
    .line 811
    .line 812
    move-result-object v0

    .line 813
    const-string v1, "android_id"

    .line 814
    .line 815
    invoke-static {v0, v1}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    .line 816
    .line 817
    .line 818
    move-result-object v0

    .line 819
    invoke-static {v0}, Lec/c;->n(Ljava/lang/String;)Ljava/lang/String;

    .line 820
    .line 821
    .line 822
    move-result-object v0

    .line 823
    sput-object v0, Lkc/c;->d:Ljava/lang/String;
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_6

    .line 824
    .line 825
    :catch_6
    sget-object v0, Lkc/c;->d:Ljava/lang/String;

    .line 826
    .line 827
    invoke-static {v0}, Lkc/c;->b(Ljava/lang/String;)Ljava/lang/String;

    .line 828
    .line 829
    .line 830
    move-result-object v0

    .line 831
    goto :goto_13

    .line 832
    :cond_19
    :goto_12
    sget-object v0, Lkc/c;->d:Ljava/lang/String;

    .line 833
    .line 834
    :goto_13
    const-string v1, "androidId"

    .line 835
    .line 836
    invoke-static {p0, v1, v0}, Lec/c;->g(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)V

    .line 837
    .line 838
    .line 839
    sget-object v0, Lkwai/a/e$c;->b:Lkwai/a/e$c;

    .line 840
    .line 841
    iget-object v0, v0, Lkwai/a/e$c;->a:Lkwai/a/e;

    .line 842
    .line 843
    iget-object v0, v0, Lkwai/a/e;->c:Landroid/content/Context;

    .line 844
    .line 845
    sget-object v1, Lkc/c;->g:Lorg/json/JSONArray;

    .line 846
    .line 847
    if-eqz v1, :cond_1a

    .line 848
    .line 849
    goto/16 :goto_17

    .line 850
    .line 851
    :cond_1a
    new-instance v1, Lorg/json/JSONArray;

    .line 852
    .line 853
    invoke-direct {v1}, Lorg/json/JSONArray;-><init>()V

    .line 854
    .line 855
    .line 856
    if-nez v0, :cond_1b

    .line 857
    .line 858
    goto/16 :goto_17

    .line 859
    .line 860
    :cond_1b
    :try_start_a
    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    .line 861
    .line 862
    .line 863
    move-result-object v0

    .line 864
    new-instance v2, Landroid/content/Intent;

    .line 865
    .line 866
    const-string v4, "android.intent.action.MAIN"

    .line 867
    .line 868
    const/4 v5, 0x0

    .line 869
    invoke-direct {v2, v4, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 870
    .line 871
    .line 872
    const-string v4, "android.intent.category.LAUNCHER"

    .line 873
    .line 874
    invoke-virtual {v2, v4}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 875
    .line 876
    .line 877
    const/16 v4, 0x20

    .line 878
    .line 879
    invoke-virtual {v0, v2, v4}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    .line 880
    .line 881
    .line 882
    move-result-object v2

    .line 883
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 884
    .line 885
    .line 886
    move-result-object v2

    .line 887
    :cond_1c
    :goto_14
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    .line 888
    .line 889
    .line 890
    move-result v4

    .line 891
    if-eqz v4, :cond_20

    .line 892
    .line 893
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 894
    .line 895
    .line 896
    move-result-object v4

    .line 897
    check-cast v4, Landroid/content/pm/ResolveInfo;

    .line 898
    .line 899
    iget-object v5, v4, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    .line 900
    .line 901
    iget-object v5, v5, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    .line 902
    .line 903
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 904
    .line 905
    .line 906
    move-result v5

    .line 907
    if-nez v5, :cond_1c

    .line 908
    .line 909
    new-instance v5, Lorg/json/JSONObject;

    .line 910
    .line 911
    invoke-direct {v5}, Lorg/json/JSONObject;-><init>()V
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_7

    .line 912
    .line 913
    .line 914
    const-string v6, "pkgName"

    .line 915
    .line 916
    :try_start_b
    iget-object v7, v4, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    .line 917
    .line 918
    iget-object v7, v7, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    .line 919
    .line 920
    invoke-static {v5, v6, v7}, Lec/c;->g(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)V

    .line 921
    .line 922
    .line 923
    iget-object v6, v4, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    .line 924
    .line 925
    iget-object v6, v6, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    .line 926
    .line 927
    if-eqz v6, :cond_1f

    .line 928
    .line 929
    iget v6, v6, Landroid/content/pm/ApplicationInfo;->flags:I
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_b} :catch_7

    .line 930
    .line 931
    and-int/lit8 v7, v6, 0x1

    .line 932
    .line 933
    const-string v8, "systemApp"

    .line 934
    .line 935
    if-nez v7, :cond_1e

    .line 936
    .line 937
    and-int/lit16 v6, v6, 0x80

    .line 938
    .line 939
    if-eqz v6, :cond_1d

    .line 940
    .line 941
    goto :goto_15

    .line 942
    :cond_1d
    const-wide/16 v6, 0x0

    .line 943
    .line 944
    :try_start_c
    invoke-static {v5, v8, v6, v7}, Lec/c;->f(Lorg/json/JSONObject;Ljava/lang/String;D)V

    .line 945
    .line 946
    .line 947
    goto :goto_16

    .line 948
    :cond_1e
    :goto_15
    const-wide/high16 v6, 0x3ff0000000000000L    # 1.0

    .line 949
    .line 950
    invoke-static {v5, v8, v6, v7}, Lec/c;->f(Lorg/json/JSONObject;Ljava/lang/String;D)V

    .line 951
    .line 952
    .line 953
    :cond_1f
    :goto_16
    iget-object v4, v4, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    .line 954
    .line 955
    iget-object v4, v4, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    .line 956
    .line 957
    invoke-virtual {v0, v4, v3}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    .line 958
    .line 959
    .line 960
    move-result-object v4
    :try_end_c
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_c} :catch_7

    .line 961
    const-string v6, "appVersion"

    .line 962
    .line 963
    :try_start_d
    iget-object v4, v4, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;

    .line 964
    .line 965
    invoke-static {v5, v6, v4}, Lec/c;->g(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)V

    .line 966
    .line 967
    .line 968
    invoke-virtual {v1, v5}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;
    :try_end_d
    .catch Ljava/lang/Exception; {:try_start_d .. :try_end_d} :catch_7

    .line 969
    .line 970
    .line 971
    goto :goto_14

    .line 972
    :catch_7
    :cond_20
    sput-object v1, Lkc/c;->g:Lorg/json/JSONArray;

    .line 973
    .line 974
    :goto_17
    if-eqz p0, :cond_21

    .line 975
    .line 976
    const-string v0, "appList"

    .line 977
    .line 978
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 979
    .line 980
    .line 981
    move-result v2

    .line 982
    if-nez v2, :cond_21

    .line 983
    .line 984
    :try_start_e
    invoke-virtual {p0, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_e
    .catch Lorg/json/JSONException; {:try_start_e .. :try_end_e} :catch_8

    .line 985
    .line 986
    .line 987
    goto :goto_18

    .line 988
    :catch_8
    move-exception v0

    .line 989
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 990
    .line 991
    .line 992
    :cond_21
    :goto_18
    invoke-static {}, Lkwai/a/e;->j()Ljava/lang/String;

    .line 993
    .line 994
    .line 995
    move-result-object v0

    .line 996
    const-string v1, "callback"

    .line 997
    .line 998
    invoke-static {p0, v1, v0}, Lec/c;->g(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)V

    .line 999
    .line 1000
    .line 1001
    return-void
.end method

.method public static f(Lorg/json/JSONObject;Ljava/lang/String;D)V
    .locals 1

    .line 1
    if-eqz p0, :cond_1

    .line 2
    .line 3
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    goto :goto_0

    .line 10
    :cond_0
    :try_start_0
    invoke-virtual {p0, p1, p2, p3}, Lorg/json/JSONObject;->put(Ljava/lang/String;D)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 11
    .line 12
    .line 13
    goto :goto_0

    .line 14
    :catch_0
    move-exception p0

    .line 15
    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 16
    .line 17
    .line 18
    :cond_1
    :goto_0
    return-void
.end method

.method public static g(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 1
    if-eqz p0, :cond_1

    .line 2
    .line 3
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-nez v0, :cond_1

    .line 8
    .line 9
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 10
    .line 11
    .line 12
    move-result v0

    .line 13
    if-eqz v0, :cond_0

    .line 14
    .line 15
    goto :goto_0

    .line 16
    :cond_0
    :try_start_0
    invoke-virtual {p0, p1, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 17
    .line 18
    .line 19
    goto :goto_0

    .line 20
    :catch_0
    move-exception p0

    .line 21
    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 22
    .line 23
    .line 24
    :cond_1
    :goto_0
    return-void
.end method

.method public static declared-synchronized h(Z)V
    .locals 3

    .line 1
    const-class v0, Lec/c;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    sget-object v1, Lkwai/a/e$c;->b:Lkwai/a/e$c;

    .line 5
    .line 6
    iget-object v1, v1, Lkwai/a/e$c;->a:Lkwai/a/e;

    .line 7
    .line 8
    iget-object v1, v1, Lkwai/a/e;->c:Landroid/content/Context;

    .line 9
    .line 10
    const-string v2, "ks_upload_origin_oaid"

    .line 11
    .line 12
    invoke-static {v1}, Lec/c;->b(Landroid/content/Context;)V

    .line 13
    .line 14
    .line 15
    sget-object v1, Lec/c;->c:Landroid/content/SharedPreferences;

    .line 16
    .line 17
    if-eqz v1, :cond_0

    .line 18
    .line 19
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    .line 20
    .line 21
    .line 22
    move-result-object v1

    .line 23
    invoke-interface {v1, v2, p0}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 24
    .line 25
    .line 26
    move-result-object p0

    .line 27
    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->apply()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 28
    .line 29
    .line 30
    :cond_0
    monitor-exit v0

    .line 31
    return-void

    .line 32
    :catchall_0
    move-exception p0

    .line 33
    monitor-exit v0

    .line 34
    throw p0
.end method

.method public static declared-synchronized i()Z
    .locals 4

    .line 1
    const-class v0, Lec/c;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    sget-object v1, Lkwai/a/e$c;->b:Lkwai/a/e$c;

    .line 5
    .line 6
    iget-object v1, v1, Lkwai/a/e$c;->a:Lkwai/a/e;

    .line 7
    .line 8
    iget-object v1, v1, Lkwai/a/e;->c:Landroid/content/Context;

    .line 9
    .line 10
    const-string v2, "ks_upload_origin_oaid"

    .line 11
    .line 12
    const/4 v3, 0x1

    .line 13
    invoke-static {v1, v2, v3}, Lec/c;->j(Landroid/content/Context;Ljava/lang/String;Z)Z

    .line 14
    .line 15
    .line 16
    move-result v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 17
    monitor-exit v0

    .line 18
    return v1

    .line 19
    :catchall_0
    move-exception v1

    .line 20
    monitor-exit v0

    .line 21
    throw v1
.end method

.method public static j(Landroid/content/Context;Ljava/lang/String;Z)Z
    .locals 0

    .line 1
    invoke-static {p0}, Lec/c;->b(Landroid/content/Context;)V

    .line 2
    .line 3
    .line 4
    sget-object p0, Lec/c;->c:Landroid/content/SharedPreferences;

    .line 5
    .line 6
    if-eqz p0, :cond_0

    .line 7
    .line 8
    invoke-interface {p0, p1, p2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    .line 9
    .line 10
    .line 11
    move-result p2

    .line 12
    :cond_0
    return p2
.end method

.method public static k(Ljava/lang/String;)Z
    .locals 2

    .line 1
    sget-object v0, Lec/c;->a:Ljava/lang/String;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0, p0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 6
    .line 7
    .line 8
    move-result p0

    .line 9
    return p0

    .line 10
    :cond_0
    const-string v0, "ro.miui.ui.version.name"

    .line 11
    .line 12
    invoke-static {v0}, Lec/c;->l(Ljava/lang/String;)Ljava/lang/String;

    .line 13
    .line 14
    .line 15
    move-result-object v0

    .line 16
    sput-object v0, Lec/c;->b:Ljava/lang/String;

    .line 17
    .line 18
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 19
    .line 20
    .line 21
    move-result v0

    .line 22
    if-nez v0, :cond_1

    .line 23
    .line 24
    const-string v0, "MIUI"

    .line 25
    .line 26
    sput-object v0, Lec/c;->a:Ljava/lang/String;

    .line 27
    .line 28
    goto :goto_0

    .line 29
    :cond_1
    const-string v0, "ro.build.version.emui"

    .line 30
    .line 31
    invoke-static {v0}, Lec/c;->l(Ljava/lang/String;)Ljava/lang/String;

    .line 32
    .line 33
    .line 34
    move-result-object v0

    .line 35
    sput-object v0, Lec/c;->b:Ljava/lang/String;

    .line 36
    .line 37
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 38
    .line 39
    .line 40
    move-result v0

    .line 41
    if-nez v0, :cond_2

    .line 42
    .line 43
    const-string v0, "EMUI"

    .line 44
    .line 45
    sput-object v0, Lec/c;->a:Ljava/lang/String;

    .line 46
    .line 47
    goto :goto_0

    .line 48
    :cond_2
    const-string v0, "ro.build.version.opporom"

    .line 49
    .line 50
    invoke-static {v0}, Lec/c;->l(Ljava/lang/String;)Ljava/lang/String;

    .line 51
    .line 52
    .line 53
    move-result-object v0

    .line 54
    sput-object v0, Lec/c;->b:Ljava/lang/String;

    .line 55
    .line 56
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 57
    .line 58
    .line 59
    move-result v0

    .line 60
    if-nez v0, :cond_3

    .line 61
    .line 62
    const-string v0, "OPPO"

    .line 63
    .line 64
    sput-object v0, Lec/c;->a:Ljava/lang/String;

    .line 65
    .line 66
    goto :goto_0

    .line 67
    :cond_3
    const-string v0, "ro.vivo.os.version"

    .line 68
    .line 69
    invoke-static {v0}, Lec/c;->l(Ljava/lang/String;)Ljava/lang/String;

    .line 70
    .line 71
    .line 72
    move-result-object v0

    .line 73
    sput-object v0, Lec/c;->b:Ljava/lang/String;

    .line 74
    .line 75
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 76
    .line 77
    .line 78
    move-result v0

    .line 79
    if-nez v0, :cond_4

    .line 80
    .line 81
    const-string v0, "VIVO"

    .line 82
    .line 83
    sput-object v0, Lec/c;->a:Ljava/lang/String;

    .line 84
    .line 85
    goto :goto_0

    .line 86
    :cond_4
    const-string v0, "ro.smartisan.version"

    .line 87
    .line 88
    invoke-static {v0}, Lec/c;->l(Ljava/lang/String;)Ljava/lang/String;

    .line 89
    .line 90
    .line 91
    move-result-object v0

    .line 92
    sput-object v0, Lec/c;->b:Ljava/lang/String;

    .line 93
    .line 94
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 95
    .line 96
    .line 97
    move-result v0

    .line 98
    if-nez v0, :cond_5

    .line 99
    .line 100
    const-string v0, "SMARTISAN"

    .line 101
    .line 102
    sput-object v0, Lec/c;->a:Ljava/lang/String;

    .line 103
    .line 104
    goto :goto_0

    .line 105
    :cond_5
    sget-object v0, Landroid/os/Build;->DISPLAY:Ljava/lang/String;

    .line 106
    .line 107
    sput-object v0, Lec/c;->b:Ljava/lang/String;

    .line 108
    .line 109
    invoke-virtual {v0}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    .line 110
    .line 111
    .line 112
    move-result-object v0

    .line 113
    const-string v1, "FLYME"

    .line 114
    .line 115
    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 116
    .line 117
    .line 118
    move-result v0

    .line 119
    if-eqz v0, :cond_6

    .line 120
    .line 121
    sput-object v1, Lec/c;->a:Ljava/lang/String;

    .line 122
    .line 123
    goto :goto_0

    .line 124
    :cond_6
    const-string v0, "unknown"

    .line 125
    .line 126
    sput-object v0, Lec/c;->b:Ljava/lang/String;

    .line 127
    .line 128
    sget-object v0, Landroid/os/Build;->MANUFACTURER:Ljava/lang/String;

    .line 129
    .line 130
    invoke-virtual {v0}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    .line 131
    .line 132
    .line 133
    move-result-object v0

    .line 134
    sput-object v0, Lec/c;->a:Ljava/lang/String;

    .line 135
    .line 136
    :goto_0
    sget-object v0, Lec/c;->a:Ljava/lang/String;

    .line 137
    .line 138
    invoke-virtual {v0, p0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 139
    .line 140
    .line 141
    move-result p0

    .line 142
    return p0
.end method

.method public static l(Ljava/lang/String;)Ljava/lang/String;
    .locals 7
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "PrivateApi"
        }
    .end annotation

    .line 1
    const/4 v0, 0x0

    .line 2
    :try_start_0
    const-string v1, "android.os.SystemProperties"

    .line 3
    .line 4
    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    .line 5
    .line 6
    .line 7
    move-result-object v1
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_0

    .line 8
    const-string v2, "get"

    .line 9
    .line 10
    const/4 v3, 0x1

    .line 11
    :try_start_1
    new-array v4, v3, [Ljava/lang/Class;

    .line 12
    .line 13
    const-class v5, Ljava/lang/String;

    .line 14
    .line 15
    const/4 v6, 0x0

    .line 16
    aput-object v5, v4, v6

    .line 17
    .line 18
    invoke-virtual {v1, v2, v4}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 19
    .line 20
    .line 21
    move-result-object v2

    .line 22
    new-array v3, v3, [Ljava/lang/Object;

    .line 23
    .line 24
    aput-object p0, v3, v6

    .line 25
    .line 26
    invoke-virtual {v2, v1, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 27
    .line 28
    .line 29
    move-result-object v1

    .line 30
    check-cast v1, Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/ClassNotFoundException; {:try_start_1 .. :try_end_1} :catch_3
    .catch Ljava/lang/NoSuchMethodException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/lang/IllegalAccessException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_1 .. :try_end_1} :catch_0

    .line 31
    .line 32
    goto :goto_1

    .line 33
    :catch_0
    move-exception v1

    .line 34
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 35
    .line 36
    .line 37
    goto :goto_0

    .line 38
    :catch_1
    move-exception v1

    .line 39
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 40
    .line 41
    .line 42
    goto :goto_0

    .line 43
    :catch_2
    move-exception v1

    .line 44
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 45
    .line 46
    .line 47
    goto :goto_0

    .line 48
    :catch_3
    move-exception v1

    .line 49
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 50
    .line 51
    .line 52
    :goto_0
    move-object v1, v0

    .line 53
    :goto_1
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 54
    .line 55
    .line 56
    move-result v2

    .line 57
    if-eqz v2, :cond_1

    .line 58
    .line 59
    :try_start_2
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    .line 60
    .line 61
    .line 62
    move-result-object v2

    .line 63
    new-instance v3, Ljava/lang/StringBuilder;

    .line 64
    .line 65
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 66
    .line 67
    .line 68
    const-string v4, "getprop "

    .line 69
    .line 70
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 71
    .line 72
    .line 73
    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 74
    .line 75
    .line 76
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 77
    .line 78
    .line 79
    move-result-object p0

    .line 80
    invoke-virtual {v2, p0}, Ljava/lang/Runtime;->exec(Ljava/lang/String;)Ljava/lang/Process;

    .line 81
    .line 82
    .line 83
    move-result-object p0

    .line 84
    new-instance v2, Ljava/io/BufferedReader;

    .line 85
    .line 86
    new-instance v3, Ljava/io/InputStreamReader;

    .line 87
    .line 88
    invoke-virtual {p0}, Ljava/lang/Process;->getInputStream()Ljava/io/InputStream;

    .line 89
    .line 90
    .line 91
    move-result-object p0

    .line 92
    invoke-direct {v3, p0}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    .line 93
    .line 94
    .line 95
    const/16 p0, 0x400

    .line 96
    .line 97
    invoke-direct {v2, v3, p0}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;I)V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_5
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 98
    .line 99
    .line 100
    :try_start_3
    invoke-virtual {v2}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    .line 101
    .line 102
    .line 103
    move-result-object v1
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_4
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 104
    :try_start_4
    invoke-virtual {v2}, Ljava/io/BufferedReader;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_7

    .line 105
    .line 106
    .line 107
    goto :goto_4

    .line 108
    :catchall_0
    move-exception p0

    .line 109
    move-object v0, v2

    .line 110
    goto :goto_3

    .line 111
    :catch_4
    move-exception p0

    .line 112
    move-object v0, v2

    .line 113
    goto :goto_2

    .line 114
    :catchall_1
    move-exception p0

    .line 115
    goto :goto_3

    .line 116
    :catch_5
    move-exception p0

    .line 117
    :goto_2
    :try_start_5
    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 118
    .line 119
    .line 120
    if-eqz v0, :cond_1

    .line 121
    .line 122
    :try_start_6
    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_7

    .line 123
    .line 124
    .line 125
    goto :goto_4

    .line 126
    :goto_3
    if-eqz v0, :cond_0

    .line 127
    .line 128
    :try_start_7
    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_6

    .line 129
    .line 130
    .line 131
    :catch_6
    :cond_0
    throw p0

    .line 132
    :catch_7
    :cond_1
    :goto_4
    return-object v1
.end method

.method public static m(Ljava/lang/String;)Z
    .locals 1

    .line 1
    if-eqz p0, :cond_1

    .line 2
    .line 3
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-eqz v0, :cond_1

    .line 8
    .line 9
    const-string v0, "null"

    .line 10
    .line 11
    invoke-virtual {v0, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    .line 12
    .line 13
    .line 14
    move-result p0

    .line 15
    if-eqz p0, :cond_0

    .line 16
    .line 17
    goto :goto_0

    .line 18
    :cond_0
    const/4 p0, 0x0

    .line 19
    goto :goto_1

    .line 20
    :cond_1
    :goto_0
    const/4 p0, 0x1

    .line 21
    :goto_1
    return p0
.end method

.method public static n(Ljava/lang/String;)Ljava/lang/String;
    .locals 6

    .line 1
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    const-string v1, ""

    .line 6
    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    return-object v1

    .line 10
    :cond_0
    :try_start_0
    const-string v0, "MD5"

    .line 11
    .line 12
    invoke-static {v0}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    .line 13
    .line 14
    .line 15
    move-result-object v0

    .line 16
    invoke-virtual {p0}, Ljava/lang/String;->getBytes()[B

    .line 17
    .line 18
    .line 19
    move-result-object p0

    .line 20
    invoke-virtual {v0, p0}, Ljava/security/MessageDigest;->update([B)V

    .line 21
    .line 22
    .line 23
    invoke-virtual {v0}, Ljava/security/MessageDigest;->digest()[B

    .line 24
    .line 25
    .line 26
    move-result-object p0

    .line 27
    new-instance v0, Ljava/lang/StringBuilder;

    .line 28
    .line 29
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 30
    .line 31
    .line 32
    array-length v2, p0

    .line 33
    const/4 v3, 0x0

    .line 34
    :goto_0
    if-ge v3, v2, :cond_3

    .line 35
    .line 36
    aget-byte v4, p0, v3

    .line 37
    .line 38
    if-gez v4, :cond_1

    .line 39
    .line 40
    add-int/lit16 v4, v4, 0x100

    .line 41
    .line 42
    :cond_1
    const/16 v5, 0x10

    .line 43
    .line 44
    if-ge v4, v5, :cond_2

    .line 45
    .line 46
    const-string v5, "0"

    .line 47
    .line 48
    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 49
    .line 50
    .line 51
    :cond_2
    invoke-static {v4}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    .line 52
    .line 53
    .line 54
    move-result-object v4

    .line 55
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 56
    .line 57
    .line 58
    add-int/lit8 v3, v3, 0x1

    .line 59
    .line 60
    goto :goto_0

    .line 61
    :cond_3
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 62
    .line 63
    .line 64
    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 65
    return-object p0

    .line 66
    :catch_0
    return-object v1
.end method
