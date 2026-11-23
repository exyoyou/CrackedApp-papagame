.class public final enum Lcom/kwai/adclient/kscommerciallogger/model/BusinessType;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/kwai/adclient/kscommerciallogger/model/BusinessType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/kwai/adclient/kscommerciallogger/model/BusinessType;

.field public static final enum AD_BANNER:Lcom/kwai/adclient/kscommerciallogger/model/BusinessType;

.field public static final enum AD_CONVERT:Lcom/kwai/adclient/kscommerciallogger/model/BusinessType;

.field public static final enum AD_DRAW:Lcom/kwai/adclient/kscommerciallogger/model/BusinessType;

.field public static final enum AD_FEED:Lcom/kwai/adclient/kscommerciallogger/model/BusinessType;

.field public static final enum AD_FULLSCREEN:Lcom/kwai/adclient/kscommerciallogger/model/BusinessType;

.field public static final enum AD_INTERSTITIAL:Lcom/kwai/adclient/kscommerciallogger/model/BusinessType;

.field public static final enum AD_NATIVE:Lcom/kwai/adclient/kscommerciallogger/model/BusinessType;

.field public static final enum AD_REWARD:Lcom/kwai/adclient/kscommerciallogger/model/BusinessType;

.field public static final enum AD_SDK_INIT:Lcom/kwai/adclient/kscommerciallogger/model/BusinessType;

.field public static final enum AD_SPLASH:Lcom/kwai/adclient/kscommerciallogger/model/BusinessType;

.field public static final enum AD_WEBVIEW:Lcom/kwai/adclient/kscommerciallogger/model/BusinessType;

.field public static final enum CU_FEED:Lcom/kwai/adclient/kscommerciallogger/model/BusinessType;

.field public static final enum CU_FEED_SLIDE:Lcom/kwai/adclient/kscommerciallogger/model/BusinessType;

.field public static final enum CU_HORIZONTAL_FEED:Lcom/kwai/adclient/kscommerciallogger/model/BusinessType;

.field public static final enum CU_HOTSPOT_ENTRY:Lcom/kwai/adclient/kscommerciallogger/model/BusinessType;

.field public static final enum CU_HOTSPOT_SLIDE:Lcom/kwai/adclient/kscommerciallogger/model/BusinessType;

.field public static final enum CU_IMAGE_TEXT_DETAIL:Lcom/kwai/adclient/kscommerciallogger/model/BusinessType;

.field public static final enum CU_IMAGE_TEXT_FEED:Lcom/kwai/adclient/kscommerciallogger/model/BusinessType;

.field public static final enum CU_PROFILE:Lcom/kwai/adclient/kscommerciallogger/model/BusinessType;

.field public static final enum CU_PROFILE_SLIDE:Lcom/kwai/adclient/kscommerciallogger/model/BusinessType;

.field public static final enum CU_SLIDE:Lcom/kwai/adclient/kscommerciallogger/model/BusinessType;

.field public static final enum CU_VIDEO_DETAIL:Lcom/kwai/adclient/kscommerciallogger/model/BusinessType;

.field public static final enum CU_WALLPAPER_FEED:Lcom/kwai/adclient/kscommerciallogger/model/BusinessType;

.field public static final enum CU_WALLPAPER_SLIDE:Lcom/kwai/adclient/kscommerciallogger/model/BusinessType;

.field public static final enum EU_LIVE_REPLAY:Lcom/kwai/adclient/kscommerciallogger/model/BusinessType;

.field public static final enum EU_LIVE_SLIDE:Lcom/kwai/adclient/kscommerciallogger/model/BusinessType;

.field public static final enum OTHER:Lcom/kwai/adclient/kscommerciallogger/model/BusinessType;

.field public static final enum TACHIKOMA:Lcom/kwai/adclient/kscommerciallogger/model/BusinessType;

.field public static final enum WEB_CACHE:Lcom/kwai/adclient/kscommerciallogger/model/BusinessType;


# instance fields
.field public value:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 32

    .line 1
    new-instance v0, Lcom/kwai/adclient/kscommerciallogger/model/BusinessType;

    .line 2
    .line 3
    const-string v1, "TACHIKOMA"

    .line 4
    .line 5
    const/4 v2, 0x0

    .line 6
    invoke-direct {v0, v1, v2, v1}, Lcom/kwai/adclient/kscommerciallogger/model/BusinessType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    .line 7
    .line 8
    .line 9
    sput-object v0, Lcom/kwai/adclient/kscommerciallogger/model/BusinessType;->TACHIKOMA:Lcom/kwai/adclient/kscommerciallogger/model/BusinessType;

    .line 10
    .line 11
    new-instance v1, Lcom/kwai/adclient/kscommerciallogger/model/BusinessType;

    .line 12
    .line 13
    const-string v3, "AD_SPLASH"

    .line 14
    .line 15
    const/4 v4, 0x1

    .line 16
    invoke-direct {v1, v3, v4, v3}, Lcom/kwai/adclient/kscommerciallogger/model/BusinessType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    .line 17
    .line 18
    .line 19
    sput-object v1, Lcom/kwai/adclient/kscommerciallogger/model/BusinessType;->AD_SPLASH:Lcom/kwai/adclient/kscommerciallogger/model/BusinessType;

    .line 20
    .line 21
    new-instance v3, Lcom/kwai/adclient/kscommerciallogger/model/BusinessType;

    .line 22
    .line 23
    const-string v5, "AD_INTERSTITIAL"

    .line 24
    .line 25
    const/4 v6, 0x2

    .line 26
    invoke-direct {v3, v5, v6, v5}, Lcom/kwai/adclient/kscommerciallogger/model/BusinessType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    .line 27
    .line 28
    .line 29
    sput-object v3, Lcom/kwai/adclient/kscommerciallogger/model/BusinessType;->AD_INTERSTITIAL:Lcom/kwai/adclient/kscommerciallogger/model/BusinessType;

    .line 30
    .line 31
    new-instance v5, Lcom/kwai/adclient/kscommerciallogger/model/BusinessType;

    .line 32
    .line 33
    const-string v7, "AD_FULLSCREEN"

    .line 34
    .line 35
    const/4 v8, 0x3

    .line 36
    invoke-direct {v5, v7, v8, v7}, Lcom/kwai/adclient/kscommerciallogger/model/BusinessType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    .line 37
    .line 38
    .line 39
    sput-object v5, Lcom/kwai/adclient/kscommerciallogger/model/BusinessType;->AD_FULLSCREEN:Lcom/kwai/adclient/kscommerciallogger/model/BusinessType;

    .line 40
    .line 41
    new-instance v7, Lcom/kwai/adclient/kscommerciallogger/model/BusinessType;

    .line 42
    .line 43
    const-string v9, "AD_REWARD"

    .line 44
    .line 45
    const/4 v10, 0x4

    .line 46
    invoke-direct {v7, v9, v10, v9}, Lcom/kwai/adclient/kscommerciallogger/model/BusinessType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    .line 47
    .line 48
    .line 49
    sput-object v7, Lcom/kwai/adclient/kscommerciallogger/model/BusinessType;->AD_REWARD:Lcom/kwai/adclient/kscommerciallogger/model/BusinessType;

    .line 50
    .line 51
    new-instance v9, Lcom/kwai/adclient/kscommerciallogger/model/BusinessType;

    .line 52
    .line 53
    const-string v11, "AD_FEED"

    .line 54
    .line 55
    const/4 v12, 0x5

    .line 56
    invoke-direct {v9, v11, v12, v11}, Lcom/kwai/adclient/kscommerciallogger/model/BusinessType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    .line 57
    .line 58
    .line 59
    sput-object v9, Lcom/kwai/adclient/kscommerciallogger/model/BusinessType;->AD_FEED:Lcom/kwai/adclient/kscommerciallogger/model/BusinessType;

    .line 60
    .line 61
    new-instance v11, Lcom/kwai/adclient/kscommerciallogger/model/BusinessType;

    .line 62
    .line 63
    const-string v13, "AD_NATIVE"

    .line 64
    .line 65
    const/4 v14, 0x6

    .line 66
    invoke-direct {v11, v13, v14, v13}, Lcom/kwai/adclient/kscommerciallogger/model/BusinessType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    .line 67
    .line 68
    .line 69
    sput-object v11, Lcom/kwai/adclient/kscommerciallogger/model/BusinessType;->AD_NATIVE:Lcom/kwai/adclient/kscommerciallogger/model/BusinessType;

    .line 70
    .line 71
    new-instance v13, Lcom/kwai/adclient/kscommerciallogger/model/BusinessType;

    .line 72
    .line 73
    const-string v15, "AD_DRAW"

    .line 74
    .line 75
    const/4 v14, 0x7

    .line 76
    invoke-direct {v13, v15, v14, v15}, Lcom/kwai/adclient/kscommerciallogger/model/BusinessType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    .line 77
    .line 78
    .line 79
    sput-object v13, Lcom/kwai/adclient/kscommerciallogger/model/BusinessType;->AD_DRAW:Lcom/kwai/adclient/kscommerciallogger/model/BusinessType;

    .line 80
    .line 81
    new-instance v15, Lcom/kwai/adclient/kscommerciallogger/model/BusinessType;

    .line 82
    .line 83
    const-string v14, "AD_BANNER"

    .line 84
    .line 85
    const/16 v12, 0x8

    .line 86
    .line 87
    invoke-direct {v15, v14, v12, v14}, Lcom/kwai/adclient/kscommerciallogger/model/BusinessType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    .line 88
    .line 89
    .line 90
    sput-object v15, Lcom/kwai/adclient/kscommerciallogger/model/BusinessType;->AD_BANNER:Lcom/kwai/adclient/kscommerciallogger/model/BusinessType;

    .line 91
    .line 92
    new-instance v14, Lcom/kwai/adclient/kscommerciallogger/model/BusinessType;

    .line 93
    .line 94
    const-string v12, "CU_SLIDE"

    .line 95
    .line 96
    const/16 v10, 0x9

    .line 97
    .line 98
    invoke-direct {v14, v12, v10, v12}, Lcom/kwai/adclient/kscommerciallogger/model/BusinessType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    .line 99
    .line 100
    .line 101
    sput-object v14, Lcom/kwai/adclient/kscommerciallogger/model/BusinessType;->CU_SLIDE:Lcom/kwai/adclient/kscommerciallogger/model/BusinessType;

    .line 102
    .line 103
    new-instance v12, Lcom/kwai/adclient/kscommerciallogger/model/BusinessType;

    .line 104
    .line 105
    const-string v10, "CU_PROFILE"

    .line 106
    .line 107
    const/16 v8, 0xa

    .line 108
    .line 109
    invoke-direct {v12, v10, v8, v10}, Lcom/kwai/adclient/kscommerciallogger/model/BusinessType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    .line 110
    .line 111
    .line 112
    sput-object v12, Lcom/kwai/adclient/kscommerciallogger/model/BusinessType;->CU_PROFILE:Lcom/kwai/adclient/kscommerciallogger/model/BusinessType;

    .line 113
    .line 114
    new-instance v10, Lcom/kwai/adclient/kscommerciallogger/model/BusinessType;

    .line 115
    .line 116
    const/16 v8, 0xb

    .line 117
    .line 118
    const-string v6, "CU_PROFILE_SLIDE"

    .line 119
    .line 120
    const-string v4, "CU_PROFILE_SLIDE"

    .line 121
    .line 122
    invoke-direct {v10, v4, v8, v6}, Lcom/kwai/adclient/kscommerciallogger/model/BusinessType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    .line 123
    .line 124
    .line 125
    sput-object v10, Lcom/kwai/adclient/kscommerciallogger/model/BusinessType;->CU_PROFILE_SLIDE:Lcom/kwai/adclient/kscommerciallogger/model/BusinessType;

    .line 126
    .line 127
    new-instance v4, Lcom/kwai/adclient/kscommerciallogger/model/BusinessType;

    .line 128
    .line 129
    const/16 v6, 0xc

    .line 130
    .line 131
    const-string v8, "CU_FEED"

    .line 132
    .line 133
    const-string v2, "CU_FEED"

    .line 134
    .line 135
    invoke-direct {v4, v2, v6, v8}, Lcom/kwai/adclient/kscommerciallogger/model/BusinessType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    .line 136
    .line 137
    .line 138
    sput-object v4, Lcom/kwai/adclient/kscommerciallogger/model/BusinessType;->CU_FEED:Lcom/kwai/adclient/kscommerciallogger/model/BusinessType;

    .line 139
    .line 140
    new-instance v2, Lcom/kwai/adclient/kscommerciallogger/model/BusinessType;

    .line 141
    .line 142
    const/16 v6, 0xd

    .line 143
    .line 144
    const-string v8, "CU_FEED_SLIDE"

    .line 145
    .line 146
    move-object/from16 v16, v4

    .line 147
    .line 148
    const-string v4, "CU_FEED_SLIDE"

    .line 149
    .line 150
    invoke-direct {v2, v4, v6, v8}, Lcom/kwai/adclient/kscommerciallogger/model/BusinessType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    .line 151
    .line 152
    .line 153
    sput-object v2, Lcom/kwai/adclient/kscommerciallogger/model/BusinessType;->CU_FEED_SLIDE:Lcom/kwai/adclient/kscommerciallogger/model/BusinessType;

    .line 154
    .line 155
    new-instance v4, Lcom/kwai/adclient/kscommerciallogger/model/BusinessType;

    .line 156
    .line 157
    const/16 v6, 0xe

    .line 158
    .line 159
    const-string v8, "CU_HOTSPOT_ENTRY"

    .line 160
    .line 161
    move-object/from16 v17, v2

    .line 162
    .line 163
    const-string v2, "CU_HOTSPOT_ENTRY"

    .line 164
    .line 165
    invoke-direct {v4, v2, v6, v8}, Lcom/kwai/adclient/kscommerciallogger/model/BusinessType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    .line 166
    .line 167
    .line 168
    sput-object v4, Lcom/kwai/adclient/kscommerciallogger/model/BusinessType;->CU_HOTSPOT_ENTRY:Lcom/kwai/adclient/kscommerciallogger/model/BusinessType;

    .line 169
    .line 170
    new-instance v2, Lcom/kwai/adclient/kscommerciallogger/model/BusinessType;

    .line 171
    .line 172
    const/16 v6, 0xf

    .line 173
    .line 174
    const-string v8, "CU_HOTSPOT_SLIDE"

    .line 175
    .line 176
    move-object/from16 v18, v4

    .line 177
    .line 178
    const-string v4, "CU_HOTSPOT_SLIDE"

    .line 179
    .line 180
    invoke-direct {v2, v4, v6, v8}, Lcom/kwai/adclient/kscommerciallogger/model/BusinessType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    .line 181
    .line 182
    .line 183
    sput-object v2, Lcom/kwai/adclient/kscommerciallogger/model/BusinessType;->CU_HOTSPOT_SLIDE:Lcom/kwai/adclient/kscommerciallogger/model/BusinessType;

    .line 184
    .line 185
    new-instance v4, Lcom/kwai/adclient/kscommerciallogger/model/BusinessType;

    .line 186
    .line 187
    const/16 v6, 0x10

    .line 188
    .line 189
    const-string v8, "CU_HORIZONTAL_FEED"

    .line 190
    .line 191
    move-object/from16 v19, v2

    .line 192
    .line 193
    const-string v2, "CU_HORIZONTAL_FEED"

    .line 194
    .line 195
    invoke-direct {v4, v2, v6, v8}, Lcom/kwai/adclient/kscommerciallogger/model/BusinessType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    .line 196
    .line 197
    .line 198
    sput-object v4, Lcom/kwai/adclient/kscommerciallogger/model/BusinessType;->CU_HORIZONTAL_FEED:Lcom/kwai/adclient/kscommerciallogger/model/BusinessType;

    .line 199
    .line 200
    new-instance v2, Lcom/kwai/adclient/kscommerciallogger/model/BusinessType;

    .line 201
    .line 202
    const/16 v6, 0x11

    .line 203
    .line 204
    const-string v8, "CU_VIDEO_DETAIL"

    .line 205
    .line 206
    move-object/from16 v20, v4

    .line 207
    .line 208
    const-string v4, "CU_VIDEO_DETAIL"

    .line 209
    .line 210
    invoke-direct {v2, v4, v6, v8}, Lcom/kwai/adclient/kscommerciallogger/model/BusinessType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    .line 211
    .line 212
    .line 213
    sput-object v2, Lcom/kwai/adclient/kscommerciallogger/model/BusinessType;->CU_VIDEO_DETAIL:Lcom/kwai/adclient/kscommerciallogger/model/BusinessType;

    .line 214
    .line 215
    new-instance v4, Lcom/kwai/adclient/kscommerciallogger/model/BusinessType;

    .line 216
    .line 217
    const/16 v6, 0x12

    .line 218
    .line 219
    const-string v8, "CU_IMAGE_TEXT_FEED"

    .line 220
    .line 221
    move-object/from16 v21, v2

    .line 222
    .line 223
    const-string v2, "CU_IMAGE_TEXT_FEED"

    .line 224
    .line 225
    invoke-direct {v4, v2, v6, v8}, Lcom/kwai/adclient/kscommerciallogger/model/BusinessType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    .line 226
    .line 227
    .line 228
    sput-object v4, Lcom/kwai/adclient/kscommerciallogger/model/BusinessType;->CU_IMAGE_TEXT_FEED:Lcom/kwai/adclient/kscommerciallogger/model/BusinessType;

    .line 229
    .line 230
    new-instance v2, Lcom/kwai/adclient/kscommerciallogger/model/BusinessType;

    .line 231
    .line 232
    const/16 v6, 0x13

    .line 233
    .line 234
    const-string v8, "CU_IMAGE_TEXT_DETAIL"

    .line 235
    .line 236
    move-object/from16 v22, v4

    .line 237
    .line 238
    const-string v4, "CU_IMAGE_TEXT_DETAIL"

    .line 239
    .line 240
    invoke-direct {v2, v4, v6, v8}, Lcom/kwai/adclient/kscommerciallogger/model/BusinessType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    .line 241
    .line 242
    .line 243
    sput-object v2, Lcom/kwai/adclient/kscommerciallogger/model/BusinessType;->CU_IMAGE_TEXT_DETAIL:Lcom/kwai/adclient/kscommerciallogger/model/BusinessType;

    .line 244
    .line 245
    new-instance v4, Lcom/kwai/adclient/kscommerciallogger/model/BusinessType;

    .line 246
    .line 247
    const/16 v6, 0x14

    .line 248
    .line 249
    const-string v8, "CU_WALLPAPER_FEED"

    .line 250
    .line 251
    move-object/from16 v23, v2

    .line 252
    .line 253
    const-string v2, "CU_WALLPAPER_FEED"

    .line 254
    .line 255
    invoke-direct {v4, v2, v6, v8}, Lcom/kwai/adclient/kscommerciallogger/model/BusinessType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    .line 256
    .line 257
    .line 258
    sput-object v4, Lcom/kwai/adclient/kscommerciallogger/model/BusinessType;->CU_WALLPAPER_FEED:Lcom/kwai/adclient/kscommerciallogger/model/BusinessType;

    .line 259
    .line 260
    new-instance v2, Lcom/kwai/adclient/kscommerciallogger/model/BusinessType;

    .line 261
    .line 262
    const/16 v6, 0x15

    .line 263
    .line 264
    const-string v8, "CU_WALLPAPER_SLIDE"

    .line 265
    .line 266
    move-object/from16 v24, v4

    .line 267
    .line 268
    const-string v4, "CU_WALLPAPER_SLIDE"

    .line 269
    .line 270
    invoke-direct {v2, v4, v6, v8}, Lcom/kwai/adclient/kscommerciallogger/model/BusinessType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    .line 271
    .line 272
    .line 273
    sput-object v2, Lcom/kwai/adclient/kscommerciallogger/model/BusinessType;->CU_WALLPAPER_SLIDE:Lcom/kwai/adclient/kscommerciallogger/model/BusinessType;

    .line 274
    .line 275
    new-instance v4, Lcom/kwai/adclient/kscommerciallogger/model/BusinessType;

    .line 276
    .line 277
    const/16 v6, 0x16

    .line 278
    .line 279
    const-string v8, "EU_LIVE_SLIDE"

    .line 280
    .line 281
    move-object/from16 v25, v2

    .line 282
    .line 283
    const-string v2, "EU_LIVE_SLIDE"

    .line 284
    .line 285
    invoke-direct {v4, v2, v6, v8}, Lcom/kwai/adclient/kscommerciallogger/model/BusinessType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    .line 286
    .line 287
    .line 288
    sput-object v4, Lcom/kwai/adclient/kscommerciallogger/model/BusinessType;->EU_LIVE_SLIDE:Lcom/kwai/adclient/kscommerciallogger/model/BusinessType;

    .line 289
    .line 290
    new-instance v2, Lcom/kwai/adclient/kscommerciallogger/model/BusinessType;

    .line 291
    .line 292
    const/16 v6, 0x17

    .line 293
    .line 294
    const-string v8, "EU_LIVE_REPLAY"

    .line 295
    .line 296
    move-object/from16 v26, v4

    .line 297
    .line 298
    const-string v4, "EU_LIVE_REPLAY"

    .line 299
    .line 300
    invoke-direct {v2, v4, v6, v8}, Lcom/kwai/adclient/kscommerciallogger/model/BusinessType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    .line 301
    .line 302
    .line 303
    sput-object v2, Lcom/kwai/adclient/kscommerciallogger/model/BusinessType;->EU_LIVE_REPLAY:Lcom/kwai/adclient/kscommerciallogger/model/BusinessType;

    .line 304
    .line 305
    new-instance v4, Lcom/kwai/adclient/kscommerciallogger/model/BusinessType;

    .line 306
    .line 307
    const/16 v6, 0x18

    .line 308
    .line 309
    const-string v8, "WEB_CACHE"

    .line 310
    .line 311
    move-object/from16 v27, v2

    .line 312
    .line 313
    const-string v2, "WEB_CACHE"

    .line 314
    .line 315
    invoke-direct {v4, v2, v6, v8}, Lcom/kwai/adclient/kscommerciallogger/model/BusinessType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    .line 316
    .line 317
    .line 318
    sput-object v4, Lcom/kwai/adclient/kscommerciallogger/model/BusinessType;->WEB_CACHE:Lcom/kwai/adclient/kscommerciallogger/model/BusinessType;

    .line 319
    .line 320
    new-instance v2, Lcom/kwai/adclient/kscommerciallogger/model/BusinessType;

    .line 321
    .line 322
    const/16 v6, 0x19

    .line 323
    .line 324
    const-string v8, "AD_SDK_INIT"

    .line 325
    .line 326
    move-object/from16 v28, v4

    .line 327
    .line 328
    const-string v4, "AD_SDK_INIT"

    .line 329
    .line 330
    invoke-direct {v2, v4, v6, v8}, Lcom/kwai/adclient/kscommerciallogger/model/BusinessType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    .line 331
    .line 332
    .line 333
    sput-object v2, Lcom/kwai/adclient/kscommerciallogger/model/BusinessType;->AD_SDK_INIT:Lcom/kwai/adclient/kscommerciallogger/model/BusinessType;

    .line 334
    .line 335
    new-instance v4, Lcom/kwai/adclient/kscommerciallogger/model/BusinessType;

    .line 336
    .line 337
    const/16 v6, 0x1a

    .line 338
    .line 339
    const-string v8, "AD_WEBVIEW"

    .line 340
    .line 341
    move-object/from16 v29, v2

    .line 342
    .line 343
    const-string v2, "AD_WEBVIEW"

    .line 344
    .line 345
    invoke-direct {v4, v2, v6, v8}, Lcom/kwai/adclient/kscommerciallogger/model/BusinessType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    .line 346
    .line 347
    .line 348
    sput-object v4, Lcom/kwai/adclient/kscommerciallogger/model/BusinessType;->AD_WEBVIEW:Lcom/kwai/adclient/kscommerciallogger/model/BusinessType;

    .line 349
    .line 350
    new-instance v2, Lcom/kwai/adclient/kscommerciallogger/model/BusinessType;

    .line 351
    .line 352
    const/16 v6, 0x1b

    .line 353
    .line 354
    const-string v8, "AD_CONVERT"

    .line 355
    .line 356
    move-object/from16 v30, v4

    .line 357
    .line 358
    const-string v4, "AD_CONVERT"

    .line 359
    .line 360
    invoke-direct {v2, v4, v6, v8}, Lcom/kwai/adclient/kscommerciallogger/model/BusinessType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    .line 361
    .line 362
    .line 363
    sput-object v2, Lcom/kwai/adclient/kscommerciallogger/model/BusinessType;->AD_CONVERT:Lcom/kwai/adclient/kscommerciallogger/model/BusinessType;

    .line 364
    .line 365
    new-instance v4, Lcom/kwai/adclient/kscommerciallogger/model/BusinessType;

    .line 366
    .line 367
    const/16 v6, 0x1c

    .line 368
    .line 369
    const-string v8, "OTHER"

    .line 370
    .line 371
    move-object/from16 v31, v2

    .line 372
    .line 373
    const-string v2, "OTHER"

    .line 374
    .line 375
    invoke-direct {v4, v2, v6, v8}, Lcom/kwai/adclient/kscommerciallogger/model/BusinessType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    .line 376
    .line 377
    .line 378
    sput-object v4, Lcom/kwai/adclient/kscommerciallogger/model/BusinessType;->OTHER:Lcom/kwai/adclient/kscommerciallogger/model/BusinessType;

    .line 379
    .line 380
    const/16 v2, 0x1d

    .line 381
    .line 382
    new-array v2, v2, [Lcom/kwai/adclient/kscommerciallogger/model/BusinessType;

    .line 383
    .line 384
    const/4 v6, 0x0

    .line 385
    aput-object v0, v2, v6

    .line 386
    .line 387
    const/4 v0, 0x1

    .line 388
    aput-object v1, v2, v0

    .line 389
    .line 390
    const/4 v0, 0x2

    .line 391
    aput-object v3, v2, v0

    .line 392
    .line 393
    const/4 v0, 0x3

    .line 394
    aput-object v5, v2, v0

    .line 395
    .line 396
    const/4 v0, 0x4

    .line 397
    aput-object v7, v2, v0

    .line 398
    .line 399
    const/4 v0, 0x5

    .line 400
    aput-object v9, v2, v0

    .line 401
    .line 402
    const/4 v0, 0x6

    .line 403
    aput-object v11, v2, v0

    .line 404
    .line 405
    const/4 v0, 0x7

    .line 406
    aput-object v13, v2, v0

    .line 407
    .line 408
    const/16 v0, 0x8

    .line 409
    .line 410
    aput-object v15, v2, v0

    .line 411
    .line 412
    const/16 v0, 0x9

    .line 413
    .line 414
    aput-object v14, v2, v0

    .line 415
    .line 416
    const/16 v0, 0xa

    .line 417
    .line 418
    aput-object v12, v2, v0

    .line 419
    .line 420
    const/16 v0, 0xb

    .line 421
    .line 422
    aput-object v10, v2, v0

    .line 423
    .line 424
    const/16 v0, 0xc

    .line 425
    .line 426
    aput-object v16, v2, v0

    .line 427
    .line 428
    const/16 v0, 0xd

    .line 429
    .line 430
    aput-object v17, v2, v0

    .line 431
    .line 432
    const/16 v0, 0xe

    .line 433
    .line 434
    aput-object v18, v2, v0

    .line 435
    .line 436
    const/16 v0, 0xf

    .line 437
    .line 438
    aput-object v19, v2, v0

    .line 439
    .line 440
    const/16 v0, 0x10

    .line 441
    .line 442
    aput-object v20, v2, v0

    .line 443
    .line 444
    const/16 v0, 0x11

    .line 445
    .line 446
    aput-object v21, v2, v0

    .line 447
    .line 448
    const/16 v0, 0x12

    .line 449
    .line 450
    aput-object v22, v2, v0

    .line 451
    .line 452
    const/16 v0, 0x13

    .line 453
    .line 454
    aput-object v23, v2, v0

    .line 455
    .line 456
    const/16 v0, 0x14

    .line 457
    .line 458
    aput-object v24, v2, v0

    .line 459
    .line 460
    const/16 v0, 0x15

    .line 461
    .line 462
    aput-object v25, v2, v0

    .line 463
    .line 464
    const/16 v0, 0x16

    .line 465
    .line 466
    aput-object v26, v2, v0

    .line 467
    .line 468
    const/16 v0, 0x17

    .line 469
    .line 470
    aput-object v27, v2, v0

    .line 471
    .line 472
    const/16 v0, 0x18

    .line 473
    .line 474
    aput-object v28, v2, v0

    .line 475
    .line 476
    const/16 v0, 0x19

    .line 477
    .line 478
    aput-object v29, v2, v0

    .line 479
    .line 480
    const/16 v0, 0x1a

    .line 481
    .line 482
    aput-object v30, v2, v0

    .line 483
    .line 484
    const/16 v0, 0x1b

    .line 485
    .line 486
    aput-object v31, v2, v0

    .line 487
    .line 488
    const/16 v0, 0x1c

    .line 489
    .line 490
    aput-object v4, v2, v0

    .line 491
    .line 492
    sput-object v2, Lcom/kwai/adclient/kscommerciallogger/model/BusinessType;->$VALUES:[Lcom/kwai/adclient/kscommerciallogger/model/BusinessType;

    .line 493
    .line 494
    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 2
    .line 3
    .line 4
    iput-object p3, p0, Lcom/kwai/adclient/kscommerciallogger/model/BusinessType;->value:Ljava/lang/String;

    .line 5
    .line 6
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/kwai/adclient/kscommerciallogger/model/BusinessType;
    .locals 1

    .line 1
    const-class v0, Lcom/kwai/adclient/kscommerciallogger/model/BusinessType;

    .line 2
    .line 3
    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    check-cast p0, Lcom/kwai/adclient/kscommerciallogger/model/BusinessType;

    .line 8
    .line 9
    return-object p0
.end method

.method public static values()[Lcom/kwai/adclient/kscommerciallogger/model/BusinessType;
    .locals 1

    .line 1
    sget-object v0, Lcom/kwai/adclient/kscommerciallogger/model/BusinessType;->$VALUES:[Lcom/kwai/adclient/kscommerciallogger/model/BusinessType;

    .line 2
    .line 3
    invoke-virtual {v0}, [Lcom/kwai/adclient/kscommerciallogger/model/BusinessType;->clone()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, [Lcom/kwai/adclient/kscommerciallogger/model/BusinessType;

    .line 8
    .line 9
    return-object v0
.end method
