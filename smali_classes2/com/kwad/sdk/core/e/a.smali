.class public final Lcom/kwad/sdk/core/e/a;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static sGetOaidFail:Z = false

.field private static final sHasReadSp:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private static final sInitIng:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private static sOAID:Ljava/lang/String; = ""


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Lcom/kwad/sdk/core/e/a;->sInitIng:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 7
    .line 8
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 9
    .line 10
    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>()V

    .line 11
    .line 12
    .line 13
    sput-object v0, Lcom/kwad/sdk/core/e/a;->sHasReadSp:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 14
    .line 15
    return-void
.end method

.method static synthetic Il()V
    .locals 0

    return-void
.end method

.method static synthetic Im()Ljava/util/concurrent/atomic/AtomicBoolean;
    .locals 1

    .line 1
    sget-object v0, Lcom/kwad/sdk/core/e/a;->sInitIng:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 2
    .line 3
    return-object v0
.end method

.method private static MN()Ljava/lang/String;
    .locals 3

    .line 1
    sget-object v0, Lcom/kwad/sdk/core/e/a;->sHasReadSp:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->getAndSet(Z)Z

    .line 5
    .line 6
    .line 7
    move-result v0

    .line 8
    if-eqz v0, :cond_0

    .line 9
    .line 10
    sget-object v0, Lcom/kwad/sdk/core/e/a;->sOAID:Ljava/lang/String;

    .line 11
    .line 12
    return-object v0

    .line 13
    :cond_0
    const-string v0, "kasd_oaid_key"

    .line 14
    .line 15
    const-string v1, ""

    .line 16
    .line 17
    const-string v2, "ksadsdk_pref"

    .line 18
    .line 19
    invoke-static {v2, v0, v1}, Lcom/kwad/sdk/utils/ai;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 20
    .line 21
    .line 22
    move-result-object v0

    .line 23
    sput-object v0, Lcom/kwad/sdk/core/e/a;->sOAID:Ljava/lang/String;

    .line 24
    .line 25
    return-object v0
.end method

.method static synthetic MO()Ljava/lang/String;
    .locals 1

    .line 1
    invoke-static {}, Lcom/kwad/sdk/core/e/a;->MN()Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    return-object v0
.end method

.method static synthetic access$000()Ljava/lang/String;
    .locals 1

    .line 1
    sget-object v0, Lcom/kwad/sdk/core/e/a;->sOAID:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method static synthetic access$002(Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 1
    sput-object p0, Lcom/kwad/sdk/core/e/a;->sOAID:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method

.method static synthetic bX(Landroid/content/Context;)V
    .locals 0

    .line 1
    invoke-static {p0}, Lcom/kwad/sdk/core/e/a;->getOAIDNormal(Landroid/content/Context;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method private static ff(Ljava/lang/String;)V
    .locals 2

    .line 1
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-nez v0, :cond_0

    .line 6
    .line 7
    const-string v0, "ksadsdk_pref"

    .line 8
    .line 9
    const-string v1, "kasd_oaid_key"

    .line 10
    .line 11
    invoke-static {v0, v1, p0}, Lcom/kwad/sdk/utils/ai;->h(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 12
    .line 13
    .line 14
    :cond_0
    return-void
.end method

.method static synthetic fg(Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-static {p0}, Lcom/kwad/sdk/core/e/a;->ff(Ljava/lang/String;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static getAppOAID(Landroid/content/Context;)Ljava/lang/String;
    .locals 1

    .line 1
    invoke-static {}, Lcom/kwad/sdk/utils/be;->useOaidDisable()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    invoke-static {}, Lcom/kwad/sdk/utils/be;->getDevOaid()Ljava/lang/String;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 12
    .line 13
    .line 14
    move-result v0

    .line 15
    if-nez v0, :cond_0

    .line 16
    .line 17
    invoke-static {}, Lcom/kwad/sdk/utils/be;->getDevOaid()Ljava/lang/String;

    .line 18
    .line 19
    .line 20
    move-result-object p0

    .line 21
    return-object p0

    .line 22
    :cond_0
    sget-object v0, Lcom/kwad/sdk/core/e/a;->sOAID:Ljava/lang/String;

    .line 23
    .line 24
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 25
    .line 26
    .line 27
    move-result v0

    .line 28
    if-nez v0, :cond_1

    .line 29
    .line 30
    sget-object p0, Lcom/kwad/sdk/core/e/a;->sOAID:Ljava/lang/String;

    .line 31
    .line 32
    return-object p0

    .line 33
    :cond_1
    invoke-static {}, Lcom/kwad/sdk/utils/be;->useOaidDisable()Z

    .line 34
    .line 35
    .line 36
    move-result v0

    .line 37
    if-nez v0, :cond_3

    .line 38
    .line 39
    invoke-static {}, Lcom/kwad/sdk/utils/t;->UI()Z

    .line 40
    .line 41
    .line 42
    move-result v0

    .line 43
    if-nez v0, :cond_2

    .line 44
    .line 45
    goto :goto_0

    .line 46
    :cond_2
    invoke-static {p0}, Lcom/kwad/sdk/core/e/a;->initAsync(Landroid/content/Context;)V

    .line 47
    .line 48
    .line 49
    sget-object p0, Lcom/kwad/sdk/core/e/a;->sOAID:Ljava/lang/String;

    .line 50
    .line 51
    return-object p0

    .line 52
    :cond_3
    :goto_0
    invoke-static {}, Lcom/kwad/sdk/core/e/a;->MN()Ljava/lang/String;

    .line 53
    .line 54
    .line 55
    move-result-object p0

    .line 56
    sput-object p0, Lcom/kwad/sdk/core/e/a;->sOAID:Ljava/lang/String;

    .line 57
    .line 58
    return-object p0
.end method

.method private static getOAIDNormal(Landroid/content/Context;)V
    .locals 4

    .line 1
    sget-object v0, Lcom/kwad/sdk/core/e/a;->sOAID:Ljava/lang/String;

    .line 2
    .line 3
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-eqz v0, :cond_4

    .line 8
    .line 9
    if-nez p0, :cond_0

    .line 10
    .line 11
    goto/16 :goto_3

    .line 12
    .line 13
    :cond_0
    sget-boolean v0, Lcom/kwad/sdk/core/e/a;->sGetOaidFail:Z

    .line 14
    .line 15
    if-eqz v0, :cond_1

    .line 16
    .line 17
    return-void

    .line 18
    :cond_1
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    .line 19
    .line 20
    .line 21
    move-result-object p0

    .line 22
    :try_start_0
    sget-object v0, Landroid/os/Build;->MANUFACTURER:Ljava/lang/String;

    .line 23
    .line 24
    invoke-virtual {v0}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    .line 25
    .line 26
    .line 27
    move-result-object v0

    .line 28
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    .line 29
    .line 30
    .line 31
    move-result v1

    .line 32
    const/4 v2, 0x1

    .line 33
    sparse-switch v1, :sswitch_data_0

    .line 34
    .line 35
    .line 36
    goto/16 :goto_0

    .line 37
    .line 38
    :sswitch_0
    const-string v1, "HUAWEI"

    .line 39
    .line 40
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 41
    .line 42
    .line 43
    move-result v1

    .line 44
    if-eqz v1, :cond_2

    .line 45
    .line 46
    const/4 v1, 0x0

    .line 47
    goto/16 :goto_1

    .line 48
    .line 49
    :sswitch_1
    const-string v1, "FERRMEOS"

    .line 50
    .line 51
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 52
    .line 53
    .line 54
    move-result v1

    .line 55
    if-eqz v1, :cond_2

    .line 56
    .line 57
    const/16 v1, 0xe

    .line 58
    .line 59
    goto/16 :goto_1

    .line 60
    .line 61
    :sswitch_2
    const-string v1, "MOTOLORA"

    .line 62
    .line 63
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 64
    .line 65
    .line 66
    move-result v1

    .line 67
    if-eqz v1, :cond_2

    .line 68
    .line 69
    const/16 v1, 0x8

    .line 70
    .line 71
    goto/16 :goto_1

    .line 72
    .line 73
    :sswitch_3
    const-string v1, "NUBIA"

    .line 74
    .line 75
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 76
    .line 77
    .line 78
    move-result v1

    .line 79
    if-eqz v1, :cond_2

    .line 80
    .line 81
    const/16 v1, 0xa

    .line 82
    .line 83
    goto/16 :goto_1

    .line 84
    .line 85
    :sswitch_4
    const-string v1, "MEIZU"

    .line 86
    .line 87
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 88
    .line 89
    .line 90
    move-result v1

    .line 91
    if-eqz v1, :cond_2

    .line 92
    .line 93
    const/16 v1, 0x9

    .line 94
    .line 95
    goto/16 :goto_1

    .line 96
    .line 97
    :sswitch_5
    const-string v1, "HONOR"

    .line 98
    .line 99
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 100
    .line 101
    .line 102
    move-result v1

    .line 103
    if-eqz v1, :cond_2

    .line 104
    .line 105
    const/4 v1, 0x1

    .line 106
    goto/16 :goto_1

    .line 107
    .line 108
    :sswitch_6
    const-string v1, "VIVO"

    .line 109
    .line 110
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 111
    .line 112
    .line 113
    move-result v1

    .line 114
    if-eqz v1, :cond_2

    .line 115
    .line 116
    const/4 v1, 0x6

    .line 117
    goto :goto_1

    .line 118
    :sswitch_7
    const-string v1, "SSUI"

    .line 119
    .line 120
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 121
    .line 122
    .line 123
    move-result v1

    .line 124
    if-eqz v1, :cond_2

    .line 125
    .line 126
    const/16 v1, 0xf

    .line 127
    .line 128
    goto :goto_1

    .line 129
    :sswitch_8
    const-string v1, "OPPO"

    .line 130
    .line 131
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 132
    .line 133
    .line 134
    move-result v1

    .line 135
    if-eqz v1, :cond_2

    .line 136
    .line 137
    const/4 v1, 0x4

    .line 138
    goto :goto_1

    .line 139
    :sswitch_9
    const-string v1, "ASUS"

    .line 140
    .line 141
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 142
    .line 143
    .line 144
    move-result v1

    .line 145
    if-eqz v1, :cond_2

    .line 146
    .line 147
    const/16 v1, 0xc

    .line 148
    .line 149
    goto :goto_1

    .line 150
    :sswitch_a
    const-string v1, "ZTE"

    .line 151
    .line 152
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 153
    .line 154
    .line 155
    move-result v1

    .line 156
    if-eqz v1, :cond_2

    .line 157
    .line 158
    const/16 v1, 0xd

    .line 159
    .line 160
    goto :goto_1

    .line 161
    :sswitch_b
    const-string v1, "ONEPLUS"

    .line 162
    .line 163
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 164
    .line 165
    .line 166
    move-result v1

    .line 167
    if-eqz v1, :cond_2

    .line 168
    .line 169
    const/4 v1, 0x5

    .line 170
    goto :goto_1

    .line 171
    :sswitch_c
    const-string v1, "BLACKSHARK"

    .line 172
    .line 173
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 174
    .line 175
    .line 176
    move-result v1

    .line 177
    if-eqz v1, :cond_2

    .line 178
    .line 179
    const/4 v1, 0x3

    .line 180
    goto :goto_1

    .line 181
    :sswitch_d
    const-string v1, "XIAOMI"

    .line 182
    .line 183
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 184
    .line 185
    .line 186
    move-result v1

    .line 187
    if-eqz v1, :cond_2

    .line 188
    .line 189
    const/4 v1, 0x2

    .line 190
    goto :goto_1

    .line 191
    :sswitch_e
    const-string v1, "SAMSUNG"

    .line 192
    .line 193
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 194
    .line 195
    .line 196
    move-result v1

    .line 197
    if-eqz v1, :cond_2

    .line 198
    .line 199
    const/16 v1, 0xb

    .line 200
    .line 201
    goto :goto_1

    .line 202
    :sswitch_f
    const-string v1, "LENOVO"

    .line 203
    .line 204
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 205
    .line 206
    .line 207
    move-result v1

    .line 208
    if-eqz v1, :cond_2

    .line 209
    .line 210
    const/4 v1, 0x7

    .line 211
    goto :goto_1

    .line 212
    :cond_2
    :goto_0
    const/4 v1, -0x1

    .line 213
    :goto_1
    packed-switch v1, :pswitch_data_0

    .line 214
    .line 215
    .line 216
    goto/16 :goto_2

    .line 217
    .line 218
    :pswitch_0
    new-instance v1, Lcom/kwad/sdk/core/e/a/n;

    .line 219
    .line 220
    invoke-direct {v1, p0}, Lcom/kwad/sdk/core/e/a/n;-><init>(Landroid/content/Context;)V

    .line 221
    .line 222
    .line 223
    invoke-virtual {v1}, Lcom/kwad/sdk/core/e/a/n;->getOAID()Ljava/lang/String;

    .line 224
    .line 225
    .line 226
    move-result-object p0

    .line 227
    sput-object p0, Lcom/kwad/sdk/core/e/a;->sOAID:Ljava/lang/String;

    .line 228
    .line 229
    goto/16 :goto_2

    .line 230
    .line 231
    :pswitch_1
    new-instance v1, Lcom/kwad/sdk/core/e/a/a;

    .line 232
    .line 233
    invoke-direct {v1, p0}, Lcom/kwad/sdk/core/e/a/a;-><init>(Landroid/content/Context;)V

    .line 234
    .line 235
    .line 236
    invoke-virtual {v1}, Lcom/kwad/sdk/core/e/a/a;->getOAID()Ljava/lang/String;

    .line 237
    .line 238
    .line 239
    move-result-object p0

    .line 240
    sput-object p0, Lcom/kwad/sdk/core/e/a;->sOAID:Ljava/lang/String;

    .line 241
    .line 242
    goto :goto_2

    .line 243
    :pswitch_2
    new-instance v1, Lcom/kwad/sdk/core/e/a/k;

    .line 244
    .line 245
    invoke-direct {v1, p0}, Lcom/kwad/sdk/core/e/a/k;-><init>(Landroid/content/Context;)V

    .line 246
    .line 247
    .line 248
    invoke-virtual {v1}, Lcom/kwad/sdk/core/e/a/k;->getOAID()Ljava/lang/String;

    .line 249
    .line 250
    .line 251
    move-result-object p0

    .line 252
    sput-object p0, Lcom/kwad/sdk/core/e/a;->sOAID:Ljava/lang/String;

    .line 253
    .line 254
    goto :goto_2

    .line 255
    :pswitch_3
    new-instance v1, Lcom/kwad/sdk/core/e/a/g;

    .line 256
    .line 257
    invoke-direct {v1, p0}, Lcom/kwad/sdk/core/e/a/g;-><init>(Landroid/content/Context;)V

    .line 258
    .line 259
    .line 260
    invoke-virtual {v1}, Lcom/kwad/sdk/core/e/a/g;->getOAID()Ljava/lang/String;

    .line 261
    .line 262
    .line 263
    move-result-object p0

    .line 264
    sput-object p0, Lcom/kwad/sdk/core/e/a;->sOAID:Ljava/lang/String;

    .line 265
    .line 266
    goto :goto_2

    .line 267
    :pswitch_4
    new-instance v1, Lcom/kwad/sdk/core/e/a/f;

    .line 268
    .line 269
    invoke-direct {v1, p0}, Lcom/kwad/sdk/core/e/a/f;-><init>(Landroid/content/Context;)V

    .line 270
    .line 271
    .line 272
    invoke-virtual {v1}, Lcom/kwad/sdk/core/e/a/f;->getOAID()Ljava/lang/String;

    .line 273
    .line 274
    .line 275
    move-result-object p0

    .line 276
    sput-object p0, Lcom/kwad/sdk/core/e/a;->sOAID:Ljava/lang/String;

    .line 277
    .line 278
    goto :goto_2

    .line 279
    :pswitch_5
    new-instance v1, Lcom/kwad/sdk/core/e/a/e;

    .line 280
    .line 281
    invoke-direct {v1, p0}, Lcom/kwad/sdk/core/e/a/e;-><init>(Landroid/content/Context;)V

    .line 282
    .line 283
    .line 284
    invoke-virtual {v1}, Lcom/kwad/sdk/core/e/a/e;->getOAID()Ljava/lang/String;

    .line 285
    .line 286
    .line 287
    move-result-object p0

    .line 288
    sput-object p0, Lcom/kwad/sdk/core/e/a;->sOAID:Ljava/lang/String;

    .line 289
    .line 290
    goto :goto_2

    .line 291
    :pswitch_6
    new-instance v1, Lcom/kwad/sdk/core/e/a/l;

    .line 292
    .line 293
    invoke-direct {v1, p0}, Lcom/kwad/sdk/core/e/a/l;-><init>(Landroid/content/Context;)V

    .line 294
    .line 295
    .line 296
    invoke-virtual {v1}, Lcom/kwad/sdk/core/e/a/l;->getOAID()Ljava/lang/String;

    .line 297
    .line 298
    .line 299
    move-result-object p0

    .line 300
    sput-object p0, Lcom/kwad/sdk/core/e/a;->sOAID:Ljava/lang/String;

    .line 301
    .line 302
    goto :goto_2

    .line 303
    :pswitch_7
    new-instance v1, Lcom/kwad/sdk/core/e/a/j;

    .line 304
    .line 305
    invoke-direct {v1, p0}, Lcom/kwad/sdk/core/e/a/j;-><init>(Landroid/content/Context;)V

    .line 306
    .line 307
    .line 308
    invoke-virtual {v1}, Lcom/kwad/sdk/core/e/a/j;->getOAID()Ljava/lang/String;

    .line 309
    .line 310
    .line 311
    move-result-object p0

    .line 312
    sput-object p0, Lcom/kwad/sdk/core/e/a;->sOAID:Ljava/lang/String;

    .line 313
    .line 314
    goto :goto_2

    .line 315
    :pswitch_8
    new-instance v1, Lcom/kwad/sdk/core/e/a/m;

    .line 316
    .line 317
    invoke-direct {v1, p0}, Lcom/kwad/sdk/core/e/a/m;-><init>(Landroid/content/Context;)V

    .line 318
    .line 319
    .line 320
    invoke-virtual {v1}, Lcom/kwad/sdk/core/e/a/m;->getOAID()Ljava/lang/String;

    .line 321
    .line 322
    .line 323
    move-result-object p0

    .line 324
    sput-object p0, Lcom/kwad/sdk/core/e/a;->sOAID:Ljava/lang/String;

    .line 325
    .line 326
    goto :goto_2

    .line 327
    :pswitch_9
    new-instance v1, Lcom/kwad/sdk/core/e/a/b;

    .line 328
    .line 329
    invoke-direct {v1, p0}, Lcom/kwad/sdk/core/e/a/b;-><init>(Landroid/content/Context;)V

    .line 330
    .line 331
    .line 332
    invoke-virtual {v1}, Lcom/kwad/sdk/core/e/a/b;->getOAID()Ljava/lang/String;

    .line 333
    .line 334
    .line 335
    move-result-object p0

    .line 336
    sput-object p0, Lcom/kwad/sdk/core/e/a;->sOAID:Ljava/lang/String;

    .line 337
    .line 338
    goto :goto_2

    .line 339
    :pswitch_a
    new-instance v1, Lcom/kwad/sdk/core/e/a/d;

    .line 340
    .line 341
    invoke-direct {v1, p0}, Lcom/kwad/sdk/core/e/a/d;-><init>(Landroid/content/Context;)V

    .line 342
    .line 343
    .line 344
    invoke-virtual {v1}, Lcom/kwad/sdk/core/e/a/d;->getOAID()Ljava/lang/String;

    .line 345
    .line 346
    .line 347
    move-result-object p0

    .line 348
    sput-object p0, Lcom/kwad/sdk/core/e/a;->sOAID:Ljava/lang/String;

    .line 349
    .line 350
    :goto_2
    const-string p0, "OAIDHelper"

    .line 351
    .line 352
    new-instance v1, Ljava/lang/StringBuilder;

    .line 353
    .line 354
    const-string v3, "manufacturer:"

    .line 355
    .line 356
    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 357
    .line 358
    .line 359
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 360
    .line 361
    .line 362
    const-string v0, "--OAID:"

    .line 363
    .line 364
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 365
    .line 366
    .line 367
    sget-object v0, Lcom/kwad/sdk/core/e/a;->sOAID:Ljava/lang/String;

    .line 368
    .line 369
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 370
    .line 371
    .line 372
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 373
    .line 374
    .line 375
    move-result-object v0

    .line 376
    invoke-static {p0, v0}, Lcom/kwad/sdk/core/d/c;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 377
    .line 378
    .line 379
    sget-object p0, Lcom/kwad/sdk/core/e/a;->sOAID:Ljava/lang/String;

    .line 380
    .line 381
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 382
    .line 383
    .line 384
    move-result p0

    .line 385
    if-eqz p0, :cond_3

    .line 386
    .line 387
    sput-boolean v2, Lcom/kwad/sdk/core/e/a;->sGetOaidFail:Z

    .line 388
    .line 389
    :cond_3
    sget-object p0, Lcom/kwad/sdk/core/e/a;->sOAID:Ljava/lang/String;

    .line 390
    .line 391
    invoke-static {p0}, Lcom/kwad/sdk/core/e/a;->ff(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 392
    .line 393
    .line 394
    return-void

    .line 395
    :catchall_0
    move-exception p0

    .line 396
    invoke-static {p0}, Lcom/kwad/sdk/core/d/c;->printStackTraceOnly(Ljava/lang/Throwable;)V

    .line 397
    .line 398
    .line 399
    :cond_4
    :goto_3
    return-void

    .line 400
    nop

    .line 401
    :sswitch_data_0
    .sparse-switch
        -0x7a5eb2cd -> :sswitch_f
        -0x660bb426 -> :sswitch_e
        -0x65b21745 -> :sswitch_d
        -0x43a32cba -> :sswitch_c
        -0x23e7db20 -> :sswitch_b
        0x15c4b -> :sswitch_a
        0x1ece50 -> :sswitch_9
        0x251fa0 -> :sswitch_8
        0x26fcf4 -> :sswitch_7
        0x2834ac -> :sswitch_6
        0x41bb44a -> :sswitch_5
        0x45d8cac -> :sswitch_4
        0x472cdb3 -> :sswitch_3
        0x259adc0f -> :sswitch_2
        0x3a35353b -> :sswitch_1
        0x7fa995e7 -> :sswitch_0
    .end sparse-switch

    .line 402
    .line 403
    .line 404
    .line 405
    .line 406
    .line 407
    .line 408
    .line 409
    .line 410
    .line 411
    .line 412
    .line 413
    .line 414
    .line 415
    .line 416
    .line 417
    .line 418
    .line 419
    .line 420
    .line 421
    .line 422
    .line 423
    .line 424
    .line 425
    .line 426
    .line 427
    .line 428
    .line 429
    .line 430
    .line 431
    .line 432
    .line 433
    .line 434
    .line 435
    .line 436
    .line 437
    .line 438
    .line 439
    .line 440
    .line 441
    .line 442
    .line 443
    .line 444
    .line 445
    .line 446
    .line 447
    .line 448
    .line 449
    .line 450
    .line 451
    .line 452
    .line 453
    .line 454
    .line 455
    .line 456
    .line 457
    .line 458
    .line 459
    .line 460
    .line 461
    .line 462
    .line 463
    .line 464
    .line 465
    .line 466
    .line 467
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_8
        :pswitch_7
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method private static initAsync(Landroid/content/Context;)V
    .locals 2

    .line 1
    if-nez p0, :cond_0

    .line 2
    .line 3
    return-void

    .line 4
    :cond_0
    sget-object v0, Lcom/kwad/sdk/core/e/a;->sInitIng:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 5
    .line 6
    const/4 v1, 0x1

    .line 7
    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->getAndSet(Z)Z

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    if-eqz v0, :cond_1

    .line 12
    .line 13
    return-void

    .line 14
    :cond_1
    new-instance v0, Lcom/kwad/sdk/core/e/a$1;

    .line 15
    .line 16
    invoke-direct {v0, p0}, Lcom/kwad/sdk/core/e/a$1;-><init>(Landroid/content/Context;)V

    .line 17
    .line 18
    .line 19
    invoke-static {v0}, Lcom/kwad/sdk/utils/i;->execute(Ljava/lang/Runnable;)V

    .line 20
    .line 21
    .line 22
    return-void
.end method
