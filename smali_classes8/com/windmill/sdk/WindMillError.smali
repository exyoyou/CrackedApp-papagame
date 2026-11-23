.class public Lcom/windmill/sdk/WindMillError;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final ERROR_AD_ADAPTER_LOAD:Lcom/windmill/sdk/WindMillError;

.field public static final ERROR_AD_ADAPTER_PLAY:Lcom/windmill/sdk/WindMillError;

.field public static final ERROR_AD_ADAPTER_VERSION_ERROR:Lcom/windmill/sdk/WindMillError;

.field public static final ERROR_AD_BID_CURRENCY_FILTER:Lcom/windmill/sdk/WindMillError;

.field public static final ERROR_AD_BID_PRICE_FILTER:Lcom/windmill/sdk/WindMillError;

.field public static final ERROR_AD_COUNT_IS_EMPTY:Lcom/windmill/sdk/WindMillError;

.field public static final ERROR_AD_CUSTOM_ADAPTER_VERSION_ERROR:Lcom/windmill/sdk/WindMillError;

.field public static final ERROR_AD_LOAD_FAIL_INTERVAL:Lcom/windmill/sdk/WindMillError;

.field public static final ERROR_AD_LOAD_FAIL_LOADING:Lcom/windmill/sdk/WindMillError;

.field public static final ERROR_AD_LOAD_FAIL_PLAYING:Lcom/windmill/sdk/WindMillError;

.field public static final ERROR_AD_LOAD_FRE_FILTER:Lcom/windmill/sdk/WindMillError;

.field public static final ERROR_AD_LOAD_NETWORK_BIDDING_FILTER:Lcom/windmill/sdk/WindMillError;

.field public static final ERROR_AD_LOAD_NETWORK_FILTER:Lcom/windmill/sdk/WindMillError;

.field public static final ERROR_AD_LOAD_NETWORK_PRICE_FILTER:Lcom/windmill/sdk/WindMillError;

.field public static final ERROR_AD_LOAD_NETWORK_SOURCE_FILTER:Lcom/windmill/sdk/WindMillError;

.field public static final ERROR_AD_LOAD_NETWORK_TYPE_FILTER:Lcom/windmill/sdk/WindMillError;

.field public static final ERROR_AD_NOT_READY:Lcom/windmill/sdk/WindMillError;

.field public static final ERROR_AD_NO_FILL:Lcom/windmill/sdk/WindMillError;

.field public static final ERROR_AD_PLAY:Lcom/windmill/sdk/WindMillError;

.field public static final ERROR_AD_PLAY_NETWORK_EXPIRED:Lcom/windmill/sdk/WindMillError;

.field public static final ERROR_AD_PLAY_NETWORK_NOT_READY:Lcom/windmill/sdk/WindMillError;

.field public static final ERROR_AD_REQUEST:Lcom/windmill/sdk/WindMillError;

.field public static final ERROR_ALLAD_NOT_READY:Lcom/windmill/sdk/WindMillError;

.field public static final ERROR_BID_TOKEN_IS_EMPTY:Lcom/windmill/sdk/WindMillError;

.field public static final ERROR_CHANNEL_LOAD_AD_TIME_OUT:Lcom/windmill/sdk/WindMillError;

.field public static final ERROR_GDPR_DENIED:Lcom/windmill/sdk/WindMillError;

.field public static final ERROR_INIT_EXCEPTION:Lcom/windmill/sdk/WindMillError;

.field public static final ERROR_INIT_FAIL:Lcom/windmill/sdk/WindMillError;

.field public static final ERROR_LOAD_AD_TIME_OUT:Lcom/windmill/sdk/WindMillError;

.field public static final ERROR_NETWORK:Lcom/windmill/sdk/WindMillError;

.field public static final ERROR_NOT_FOUND_ADAPTER:Lcom/windmill/sdk/WindMillError;

.field public static final ERROR_NOT_INIT:Lcom/windmill/sdk/WindMillError;

.field public static final ERROR_NULL_STRATEGY:Lcom/windmill/sdk/WindMillError;

.field public static final ERROR_PLACEMENT_ID_IS_EMPTY:Lcom/windmill/sdk/WindMillError;

.field public static final ERROR_STRATEGY_REQUEST:Lcom/windmill/sdk/WindMillError;

.field private static final a:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Lcom/windmill/sdk/WindMillError;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final b:I

.field private message:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 1
    new-instance v0, Ljava/util/HashMap;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Lcom/windmill/sdk/WindMillError;->a:Ljava/util/Map;

    .line 7
    .line 8
    new-instance v0, Lcom/windmill/sdk/WindMillError;

    .line 9
    .line 10
    const v1, 0xaae60

    .line 11
    .line 12
    .line 13
    const-string v2, "\u65e0\u5e7f\u544a\u8fd4\u56de\uff0c\u5404adn\u7684\u8be6\u7ec6\u9519\u8bef\u4fe1\u606f\u53ef\u901a\u8fc7\u63a5\u53e3\uff1agetloadFailMessage \u83b7\u53d6\u6216\u8005\u5728\u5e7f\u544a\u5e73\u53f0\u76f8\u5173\u62a5\u8868\u67e5\u770b"

    .line 14
    .line 15
    invoke-direct {v0, v1, v2}, Lcom/windmill/sdk/WindMillError;-><init>(ILjava/lang/String;)V

    .line 16
    .line 17
    .line 18
    sput-object v0, Lcom/windmill/sdk/WindMillError;->ERROR_AD_NO_FILL:Lcom/windmill/sdk/WindMillError;

    .line 19
    .line 20
    new-instance v0, Lcom/windmill/sdk/WindMillError;

    .line 21
    .line 22
    const v1, 0xaaec4

    .line 23
    .line 24
    .line 25
    const-string v2, "\u805a\u5408SDK\u521d\u59cb\u5316\u8fc7\u7a0bSDK\u5f02\u5e38"

    .line 26
    .line 27
    invoke-direct {v0, v1, v2}, Lcom/windmill/sdk/WindMillError;-><init>(ILjava/lang/String;)V

    .line 28
    .line 29
    .line 30
    sput-object v0, Lcom/windmill/sdk/WindMillError;->ERROR_INIT_EXCEPTION:Lcom/windmill/sdk/WindMillError;

    .line 31
    .line 32
    new-instance v0, Lcom/windmill/sdk/WindMillError;

    .line 33
    .line 34
    const v1, 0xaaec5

    .line 35
    .line 36
    .line 37
    const-string v2, "\u805a\u5408SDK\u672a\u521d\u59cb\u5316,\u8bf7\u5148\u8c03\u7528\u521d\u59cb\u5316startWithAppId\u65b9\u6cd5"

    .line 38
    .line 39
    invoke-direct {v0, v1, v2}, Lcom/windmill/sdk/WindMillError;-><init>(ILjava/lang/String;)V

    .line 40
    .line 41
    .line 42
    sput-object v0, Lcom/windmill/sdk/WindMillError;->ERROR_NOT_INIT:Lcom/windmill/sdk/WindMillError;

    .line 43
    .line 44
    new-instance v0, Lcom/windmill/sdk/WindMillError;

    .line 45
    .line 46
    const v1, 0xaaf28

    .line 47
    .line 48
    .line 49
    const-string v2, "SDK\u521d\u59cb\u5316\u5931\u8d25,\u68c0\u67e5\u521d\u59cb\u5316\u53c2\u6570:AppId\u7b49"

    .line 50
    .line 51
    invoke-direct {v0, v1, v2}, Lcom/windmill/sdk/WindMillError;-><init>(ILjava/lang/String;)V

    .line 52
    .line 53
    .line 54
    sput-object v0, Lcom/windmill/sdk/WindMillError;->ERROR_INIT_FAIL:Lcom/windmill/sdk/WindMillError;

    .line 55
    .line 56
    new-instance v0, Lcom/windmill/sdk/WindMillError;

    .line 57
    .line 58
    const v1, 0xaaf8c

    .line 59
    .line 60
    .line 61
    const-string v2, "\u7f51\u7edc\u8bf7\u6c42\u51fa\u73b0\u9519\u8bef,\u68c0\u67e5\u7f51\u7edc\u72b6\u6001\u662f\u5426\u6b63\u5e38"

    .line 62
    .line 63
    invoke-direct {v0, v1, v2}, Lcom/windmill/sdk/WindMillError;-><init>(ILjava/lang/String;)V

    .line 64
    .line 65
    .line 66
    sput-object v0, Lcom/windmill/sdk/WindMillError;->ERROR_NETWORK:Lcom/windmill/sdk/WindMillError;

    .line 67
    .line 68
    new-instance v0, Lcom/windmill/sdk/WindMillError;

    .line 69
    .line 70
    const v1, 0xaaff0

    .line 71
    .line 72
    .line 73
    const-string v2, "\u7b56\u7565\u8bf7\u6c42\u9519\u8bef"

    .line 74
    .line 75
    invoke-direct {v0, v1, v2}, Lcom/windmill/sdk/WindMillError;-><init>(ILjava/lang/String;)V

    .line 76
    .line 77
    .line 78
    sput-object v0, Lcom/windmill/sdk/WindMillError;->ERROR_STRATEGY_REQUEST:Lcom/windmill/sdk/WindMillError;

    .line 79
    .line 80
    new-instance v0, Lcom/windmill/sdk/WindMillError;

    .line 81
    .line 82
    const v1, 0xaaffa

    .line 83
    .line 84
    .line 85
    const-string v2, "\u7b56\u7565\u4e3a\u7a7a"

    .line 86
    .line 87
    invoke-direct {v0, v1, v2}, Lcom/windmill/sdk/WindMillError;-><init>(ILjava/lang/String;)V

    .line 88
    .line 89
    .line 90
    sput-object v0, Lcom/windmill/sdk/WindMillError;->ERROR_NULL_STRATEGY:Lcom/windmill/sdk/WindMillError;

    .line 91
    .line 92
    new-instance v0, Lcom/windmill/sdk/WindMillError;

    .line 93
    .line 94
    const v1, 0xab054

    .line 95
    .line 96
    .line 97
    const-string v2, "\u672a\u627e\u5230\u8be5\u6e20\u9053\u7684\u9002\u914d\u5668"

    .line 98
    .line 99
    invoke-direct {v0, v1, v2}, Lcom/windmill/sdk/WindMillError;-><init>(ILjava/lang/String;)V

    .line 100
    .line 101
    .line 102
    sput-object v0, Lcom/windmill/sdk/WindMillError;->ERROR_NOT_FOUND_ADAPTER:Lcom/windmill/sdk/WindMillError;

    .line 103
    .line 104
    new-instance v0, Lcom/windmill/sdk/WindMillError;

    .line 105
    .line 106
    const v1, 0xab05e

    .line 107
    .line 108
    .line 109
    const-string v2, "\u6e20\u9053\u9002\u914d\u5668\u7248\u672c\u4e0d\u517c\u5bb9,\u8bf7\u4f7f\u7528SDK\u538b\u7f29\u5305\u4e2d\u63d0\u4f9b\u7684\u9002\u914d\u5668"

    .line 110
    .line 111
    invoke-direct {v0, v1, v2}, Lcom/windmill/sdk/WindMillError;-><init>(ILjava/lang/String;)V

    .line 112
    .line 113
    .line 114
    sput-object v0, Lcom/windmill/sdk/WindMillError;->ERROR_AD_ADAPTER_VERSION_ERROR:Lcom/windmill/sdk/WindMillError;

    .line 115
    .line 116
    new-instance v0, Lcom/windmill/sdk/WindMillError;

    .line 117
    .line 118
    const v1, 0xab05f

    .line 119
    .line 120
    .line 121
    const-string v2, "\u6e20\u9053\u81ea\u5b9a\u4e49\u9002\u914d\u5668\u7248\u672c\u4e0d\u517c\u5bb9,\u8bf7\u68c0\u67e5ToBid\u81ea\u5b9a\u4e49\u9002\u914d\u5668\u63a5\u53e3\u5e76\u66f4\u65b0\u7248\u672c\u53f7"

    .line 122
    .line 123
    invoke-direct {v0, v1, v2}, Lcom/windmill/sdk/WindMillError;-><init>(ILjava/lang/String;)V

    .line 124
    .line 125
    .line 126
    sput-object v0, Lcom/windmill/sdk/WindMillError;->ERROR_AD_CUSTOM_ADAPTER_VERSION_ERROR:Lcom/windmill/sdk/WindMillError;

    .line 127
    .line 128
    new-instance v0, Lcom/windmill/sdk/WindMillError;

    .line 129
    .line 130
    const v1, 0xab0b8

    .line 131
    .line 132
    .line 133
    const-string v2, "\u5e7f\u544a\u8bf7\u6c42\u9636\u6bb5\u53d1\u751f\u5f02\u5e38"

    .line 134
    .line 135
    invoke-direct {v0, v1, v2}, Lcom/windmill/sdk/WindMillError;-><init>(ILjava/lang/String;)V

    .line 136
    .line 137
    .line 138
    sput-object v0, Lcom/windmill/sdk/WindMillError;->ERROR_AD_REQUEST:Lcom/windmill/sdk/WindMillError;

    .line 139
    .line 140
    new-instance v0, Lcom/windmill/sdk/WindMillError;

    .line 141
    .line 142
    const v1, 0xab0c2

    .line 143
    .line 144
    .line 145
    const-string v2, "\u5e7f\u544a\u8bf7\u6c42\u65f6\u4f20\u5165placementID\u4e3a\u7a7a"

    .line 146
    .line 147
    invoke-direct {v0, v1, v2}, Lcom/windmill/sdk/WindMillError;-><init>(ILjava/lang/String;)V

    .line 148
    .line 149
    .line 150
    sput-object v0, Lcom/windmill/sdk/WindMillError;->ERROR_PLACEMENT_ID_IS_EMPTY:Lcom/windmill/sdk/WindMillError;

    .line 151
    .line 152
    new-instance v0, Lcom/windmill/sdk/WindMillError;

    .line 153
    .line 154
    const v1, 0xab0cc

    .line 155
    .line 156
    .line 157
    const-string v2, "\u5e7f\u544a\u8bf7\u6c42\u65f6\u4f20\u5165token\u4e3a\u7a7a"

    .line 158
    .line 159
    invoke-direct {v0, v1, v2}, Lcom/windmill/sdk/WindMillError;-><init>(ILjava/lang/String;)V

    .line 160
    .line 161
    .line 162
    sput-object v0, Lcom/windmill/sdk/WindMillError;->ERROR_BID_TOKEN_IS_EMPTY:Lcom/windmill/sdk/WindMillError;

    .line 163
    .line 164
    new-instance v0, Lcom/windmill/sdk/WindMillError;

    .line 165
    .line 166
    const v1, 0xab0d6

    .line 167
    .line 168
    .line 169
    const-string v2, "\u8bf7\u6c42\u7684\u5e7f\u544a\u6570\u91cf\u4e3a\u7a7a"

    .line 170
    .line 171
    invoke-direct {v0, v1, v2}, Lcom/windmill/sdk/WindMillError;-><init>(ILjava/lang/String;)V

    .line 172
    .line 173
    .line 174
    sput-object v0, Lcom/windmill/sdk/WindMillError;->ERROR_AD_COUNT_IS_EMPTY:Lcom/windmill/sdk/WindMillError;

    .line 175
    .line 176
    new-instance v0, Lcom/windmill/sdk/WindMillError;

    .line 177
    .line 178
    const v1, 0xab0e0

    .line 179
    .line 180
    .line 181
    const-string v2, "\u52a0\u8f7d\u5e7f\u544a\u8d85\u65f6"

    .line 182
    .line 183
    invoke-direct {v0, v1, v2}, Lcom/windmill/sdk/WindMillError;-><init>(ILjava/lang/String;)V

    .line 184
    .line 185
    .line 186
    sput-object v0, Lcom/windmill/sdk/WindMillError;->ERROR_LOAD_AD_TIME_OUT:Lcom/windmill/sdk/WindMillError;

    .line 187
    .line 188
    new-instance v0, Lcom/windmill/sdk/WindMillError;

    .line 189
    .line 190
    const v1, 0xab0e1

    .line 191
    .line 192
    .line 193
    const-string v2, "\u6e20\u9053\u52a0\u8f7d\u5e7f\u544a\u8d85\u65f6"

    .line 194
    .line 195
    invoke-direct {v0, v1, v2}, Lcom/windmill/sdk/WindMillError;-><init>(ILjava/lang/String;)V

    .line 196
    .line 197
    .line 198
    sput-object v0, Lcom/windmill/sdk/WindMillError;->ERROR_CHANNEL_LOAD_AD_TIME_OUT:Lcom/windmill/sdk/WindMillError;

    .line 199
    .line 200
    new-instance v0, Lcom/windmill/sdk/WindMillError;

    .line 201
    .line 202
    const v1, 0xab0ea

    .line 203
    .line 204
    .line 205
    const-string v2, "\u5e7f\u544a\u6b63\u5728\u52a0\u8f7d\u4e2d,\u8bf7\u7a0d\u540e\u518d\u52a0\u8f7d"

    .line 206
    .line 207
    invoke-direct {v0, v1, v2}, Lcom/windmill/sdk/WindMillError;-><init>(ILjava/lang/String;)V

    .line 208
    .line 209
    .line 210
    sput-object v0, Lcom/windmill/sdk/WindMillError;->ERROR_AD_LOAD_FAIL_LOADING:Lcom/windmill/sdk/WindMillError;

    .line 211
    .line 212
    new-instance v0, Lcom/windmill/sdk/WindMillError;

    .line 213
    .line 214
    const v1, 0xab0f4

    .line 215
    .line 216
    .line 217
    const-string v2, "\u5e7f\u544a\u52a0\u8f7d\u9891\u7e41,\u8bf7\u7a0d\u540e\u5728\u8bd5"

    .line 218
    .line 219
    invoke-direct {v0, v1, v2}, Lcom/windmill/sdk/WindMillError;-><init>(ILjava/lang/String;)V

    .line 220
    .line 221
    .line 222
    sput-object v0, Lcom/windmill/sdk/WindMillError;->ERROR_AD_LOAD_FAIL_INTERVAL:Lcom/windmill/sdk/WindMillError;

    .line 223
    .line 224
    new-instance v0, Lcom/windmill/sdk/WindMillError;

    .line 225
    .line 226
    const v1, 0xab0fe

    .line 227
    .line 228
    .line 229
    const-string v2, "\u5e7f\u544a\u6b63\u5728\u64ad\u653e\u4e2d,\u8bf7\u5728\u5e7f\u544a\u5173\u95ed\u540e\u518d\u64ad\u653e"

    .line 230
    .line 231
    invoke-direct {v0, v1, v2}, Lcom/windmill/sdk/WindMillError;-><init>(ILjava/lang/String;)V

    .line 232
    .line 233
    .line 234
    sput-object v0, Lcom/windmill/sdk/WindMillError;->ERROR_AD_LOAD_FAIL_PLAYING:Lcom/windmill/sdk/WindMillError;

    .line 235
    .line 236
    new-instance v0, Lcom/windmill/sdk/WindMillError;

    .line 237
    .line 238
    const v1, 0xab108

    .line 239
    .line 240
    .line 241
    const-string v2, "\u5e7f\u544a\u8d85\u8fc7\u5c55\u793a\u9891\u6b21"

    .line 242
    .line 243
    invoke-direct {v0, v1, v2}, Lcom/windmill/sdk/WindMillError;-><init>(ILjava/lang/String;)V

    .line 244
    .line 245
    .line 246
    sput-object v0, Lcom/windmill/sdk/WindMillError;->ERROR_AD_LOAD_FRE_FILTER:Lcom/windmill/sdk/WindMillError;

    .line 247
    .line 248
    new-instance v0, Lcom/windmill/sdk/WindMillError;

    .line 249
    .line 250
    const v1, 0xab112

    .line 251
    .line 252
    .line 253
    const-string v2, "\u5e7f\u544a\u672a\u51c6\u5907\u597d"

    .line 254
    .line 255
    invoke-direct {v0, v1, v2}, Lcom/windmill/sdk/WindMillError;-><init>(ILjava/lang/String;)V

    .line 256
    .line 257
    .line 258
    sput-object v0, Lcom/windmill/sdk/WindMillError;->ERROR_AD_NOT_READY:Lcom/windmill/sdk/WindMillError;

    .line 259
    .line 260
    new-instance v0, Lcom/windmill/sdk/WindMillError;

    .line 261
    .line 262
    const v1, 0xab11c

    .line 263
    .line 264
    .line 265
    const-string v2, "\u5e7f\u544a\u64ad\u653e\u51fa\u9519"

    .line 266
    .line 267
    invoke-direct {v0, v1, v2}, Lcom/windmill/sdk/WindMillError;-><init>(ILjava/lang/String;)V

    .line 268
    .line 269
    .line 270
    sput-object v0, Lcom/windmill/sdk/WindMillError;->ERROR_AD_PLAY:Lcom/windmill/sdk/WindMillError;

    .line 271
    .line 272
    new-instance v0, Lcom/windmill/sdk/WindMillError;

    .line 273
    .line 274
    const v1, 0xab126

    .line 275
    .line 276
    .line 277
    const-string v2, "\u5e7f\u544a\u5df2\u8fc7\u671f\uff0c\u8bf7\u91cd\u65b0\u52a0\u8f7d"

    .line 278
    .line 279
    invoke-direct {v0, v1, v2}, Lcom/windmill/sdk/WindMillError;-><init>(ILjava/lang/String;)V

    .line 280
    .line 281
    .line 282
    sput-object v0, Lcom/windmill/sdk/WindMillError;->ERROR_AD_PLAY_NETWORK_EXPIRED:Lcom/windmill/sdk/WindMillError;

    .line 283
    .line 284
    new-instance v0, Lcom/windmill/sdk/WindMillError;

    .line 285
    .line 286
    const v1, 0xab130

    .line 287
    .line 288
    .line 289
    const-string v2, "\u6e20\u9053\u5e7f\u544a\u672a\u51c6\u5907\u597d"

    .line 290
    .line 291
    invoke-direct {v0, v1, v2}, Lcom/windmill/sdk/WindMillError;-><init>(ILjava/lang/String;)V

    .line 292
    .line 293
    .line 294
    sput-object v0, Lcom/windmill/sdk/WindMillError;->ERROR_AD_PLAY_NETWORK_NOT_READY:Lcom/windmill/sdk/WindMillError;

    .line 295
    .line 296
    new-instance v0, Lcom/windmill/sdk/WindMillError;

    .line 297
    .line 298
    const v1, 0xab13a

    .line 299
    .line 300
    .line 301
    const-string v2, "\u6e20\u9053\u6240\u6709\u5e7f\u544a\u90fd\u672a\u51c6\u5907\u597d"

    .line 302
    .line 303
    invoke-direct {v0, v1, v2}, Lcom/windmill/sdk/WindMillError;-><init>(ILjava/lang/String;)V

    .line 304
    .line 305
    .line 306
    sput-object v0, Lcom/windmill/sdk/WindMillError;->ERROR_ALLAD_NOT_READY:Lcom/windmill/sdk/WindMillError;

    .line 307
    .line 308
    new-instance v0, Lcom/windmill/sdk/WindMillError;

    .line 309
    .line 310
    const v1, 0xab180

    .line 311
    .line 312
    .line 313
    const-string v2, "GDPR\u672a\u6388\u6743"

    .line 314
    .line 315
    invoke-direct {v0, v1, v2}, Lcom/windmill/sdk/WindMillError;-><init>(ILjava/lang/String;)V

    .line 316
    .line 317
    .line 318
    sput-object v0, Lcom/windmill/sdk/WindMillError;->ERROR_GDPR_DENIED:Lcom/windmill/sdk/WindMillError;

    .line 319
    .line 320
    new-instance v0, Lcom/windmill/sdk/WindMillError;

    .line 321
    .line 322
    const v1, 0xab1e4

    .line 323
    .line 324
    .line 325
    const-string v2, "\u547d\u4e2d\u5e7f\u544a\u6e20\u9053\u8fc7\u6ee4"

    .line 326
    .line 327
    invoke-direct {v0, v1, v2}, Lcom/windmill/sdk/WindMillError;-><init>(ILjava/lang/String;)V

    .line 328
    .line 329
    .line 330
    sput-object v0, Lcom/windmill/sdk/WindMillError;->ERROR_AD_LOAD_NETWORK_FILTER:Lcom/windmill/sdk/WindMillError;

    .line 331
    .line 332
    new-instance v0, Lcom/windmill/sdk/WindMillError;

    .line 333
    .line 334
    const v1, 0xab1e5

    .line 335
    .line 336
    .line 337
    const-string v2, "\u547d\u4e2d\u5e7f\u544a\u6e20\u9053\u4e0b\u7684\u5e7f\u544a\u6e90\u8fc7\u6ee4"

    .line 338
    .line 339
    invoke-direct {v0, v1, v2}, Lcom/windmill/sdk/WindMillError;-><init>(ILjava/lang/String;)V

    .line 340
    .line 341
    .line 342
    sput-object v0, Lcom/windmill/sdk/WindMillError;->ERROR_AD_LOAD_NETWORK_SOURCE_FILTER:Lcom/windmill/sdk/WindMillError;

    .line 343
    .line 344
    new-instance v0, Lcom/windmill/sdk/WindMillError;

    .line 345
    .line 346
    const v1, 0xab1e6

    .line 347
    .line 348
    .line 349
    const-string v2, "\u547d\u4e2d\u7ade\u4ef7/\u975e\u7ade\u4ef7\u5e7f\u544a\u8fc7\u6ee4\u8fc7\u6ee4"

    .line 350
    .line 351
    invoke-direct {v0, v1, v2}, Lcom/windmill/sdk/WindMillError;-><init>(ILjava/lang/String;)V

    .line 352
    .line 353
    .line 354
    sput-object v0, Lcom/windmill/sdk/WindMillError;->ERROR_AD_LOAD_NETWORK_BIDDING_FILTER:Lcom/windmill/sdk/WindMillError;

    .line 355
    .line 356
    new-instance v0, Lcom/windmill/sdk/WindMillError;

    .line 357
    .line 358
    const v1, 0xab1e7

    .line 359
    .line 360
    .line 361
    const-string v2, "\u547d\u4e2d\u4ef7\u683c\u8fc7\u6ee4"

    .line 362
    .line 363
    invoke-direct {v0, v1, v2}, Lcom/windmill/sdk/WindMillError;-><init>(ILjava/lang/String;)V

    .line 364
    .line 365
    .line 366
    sput-object v0, Lcom/windmill/sdk/WindMillError;->ERROR_AD_LOAD_NETWORK_PRICE_FILTER:Lcom/windmill/sdk/WindMillError;

    .line 367
    .line 368
    new-instance v0, Lcom/windmill/sdk/WindMillError;

    .line 369
    .line 370
    const v1, 0xab1e8

    .line 371
    .line 372
    .line 373
    const-string v2, "\u547d\u4e2d\u4e09\u65b9\u5e7f\u544a\u6e90\u5e7f\u544a\u7c7b\u578b\u8fc7\u6ee4"

    .line 374
    .line 375
    invoke-direct {v0, v1, v2}, Lcom/windmill/sdk/WindMillError;-><init>(ILjava/lang/String;)V

    .line 376
    .line 377
    .line 378
    sput-object v0, Lcom/windmill/sdk/WindMillError;->ERROR_AD_LOAD_NETWORK_TYPE_FILTER:Lcom/windmill/sdk/WindMillError;

    .line 379
    .line 380
    new-instance v0, Lcom/windmill/sdk/WindMillError;

    .line 381
    .line 382
    const v1, 0xab1ee

    .line 383
    .line 384
    .line 385
    const-string v2, "\u547d\u4e2d\u7ade\u4ef7\u5e7f\u544a\u6e90\u5e01\u79cd\u3001\u6c47\u7387\u5339\u914d\u5931\u8d25"

    .line 386
    .line 387
    invoke-direct {v0, v1, v2}, Lcom/windmill/sdk/WindMillError;-><init>(ILjava/lang/String;)V

    .line 388
    .line 389
    .line 390
    sput-object v0, Lcom/windmill/sdk/WindMillError;->ERROR_AD_BID_CURRENCY_FILTER:Lcom/windmill/sdk/WindMillError;

    .line 391
    .line 392
    new-instance v0, Lcom/windmill/sdk/WindMillError;

    .line 393
    .line 394
    const v1, 0xab1f8

    .line 395
    .line 396
    .line 397
    const-string v2, "\u547d\u4e2d\u7ade\u4ef7\u5e7f\u544a\u6e90\u51fa\u4ef7\u672a\u8d85\u8fc7\u60a8\u8bbe\u7f6e\u7684\u5e95\u4ef7\uff0c\u88ab\u8fc7\u6ee4\u4e0d\u53c2\u4e0e\u6bd4\u4ef7"

    .line 398
    .line 399
    invoke-direct {v0, v1, v2}, Lcom/windmill/sdk/WindMillError;-><init>(ILjava/lang/String;)V

    .line 400
    .line 401
    .line 402
    sput-object v0, Lcom/windmill/sdk/WindMillError;->ERROR_AD_BID_PRICE_FILTER:Lcom/windmill/sdk/WindMillError;

    .line 403
    .line 404
    new-instance v0, Lcom/windmill/sdk/WindMillError;

    .line 405
    .line 406
    const/4 v1, 0x0

    .line 407
    const-string v2, "Adapter\u52a0\u8f7d\u5e7f\u544a\u51fa\u9519"

    .line 408
    .line 409
    invoke-direct {v0, v1, v2}, Lcom/windmill/sdk/WindMillError;-><init>(ILjava/lang/String;)V

    .line 410
    .line 411
    .line 412
    sput-object v0, Lcom/windmill/sdk/WindMillError;->ERROR_AD_ADAPTER_LOAD:Lcom/windmill/sdk/WindMillError;

    .line 413
    .line 414
    new-instance v0, Lcom/windmill/sdk/WindMillError;

    .line 415
    .line 416
    const/4 v1, 0x1

    .line 417
    const-string v2, "Adapter\u5c55\u793a\u5e7f\u544a\u51fa\u9519"

    .line 418
    .line 419
    invoke-direct {v0, v1, v2}, Lcom/windmill/sdk/WindMillError;-><init>(ILjava/lang/String;)V

    .line 420
    .line 421
    .line 422
    sput-object v0, Lcom/windmill/sdk/WindMillError;->ERROR_AD_ADAPTER_PLAY:Lcom/windmill/sdk/WindMillError;

    .line 423
    .line 424
    return-void
.end method

.method public constructor <init>(ILjava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "errorCode",
            "message"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput p1, p0, Lcom/windmill/sdk/WindMillError;->b:I

    .line 5
    .line 6
    iput-object p2, p0, Lcom/windmill/sdk/WindMillError;->message:Ljava/lang/String;

    .line 7
    .line 8
    sget-object p2, Lcom/windmill/sdk/WindMillError;->a:Ljava/util/Map;

    .line 9
    .line 10
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 11
    .line 12
    .line 13
    move-result-object p1

    .line 14
    invoke-interface {p2, p1, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 15
    .line 16
    .line 17
    return-void
.end method

.method public static getWindAdError(I)Lcom/windmill/sdk/WindMillError;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "error_code"
        }
    .end annotation

    .line 1
    sget-object v0, Lcom/windmill/sdk/WindMillError;->a:Ljava/util/Map;

    .line 2
    .line 3
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 8
    .line 9
    .line 10
    move-result-object p0

    .line 11
    check-cast p0, Lcom/windmill/sdk/WindMillError;

    .line 12
    .line 13
    return-object p0
.end method


# virtual methods
.method public copy()Lcom/windmill/sdk/WindMillError;
    .locals 3

    .line 1
    new-instance v0, Lcom/windmill/sdk/WindMillError;

    .line 2
    .line 3
    iget v1, p0, Lcom/windmill/sdk/WindMillError;->b:I

    .line 4
    .line 5
    iget-object v2, p0, Lcom/windmill/sdk/WindMillError;->message:Ljava/lang/String;

    .line 6
    .line 7
    invoke-direct {v0, v1, v2}, Lcom/windmill/sdk/WindMillError;-><init>(ILjava/lang/String;)V

    .line 8
    .line 9
    .line 10
    return-object v0
.end method

.method public getErrorCode()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/windmill/sdk/WindMillError;->b:I

    .line 2
    .line 3
    return v0
.end method

.method public getMessage()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/windmill/sdk/WindMillError;->message:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public setMessage(Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "message"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/windmill/sdk/WindMillError;->message:Ljava/lang/String;

    .line 2
    .line 3
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 1
    const/4 v0, 0x2

    .line 2
    new-array v0, v0, [Ljava/lang/Object;

    .line 3
    .line 4
    iget v1, p0, Lcom/windmill/sdk/WindMillError;->b:I

    .line 5
    .line 6
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 7
    .line 8
    .line 9
    move-result-object v1

    .line 10
    const/4 v2, 0x0

    .line 11
    aput-object v1, v0, v2

    .line 12
    .line 13
    const/4 v1, 0x1

    .line 14
    iget-object v2, p0, Lcom/windmill/sdk/WindMillError;->message:Ljava/lang/String;

    .line 15
    .line 16
    aput-object v2, v0, v1

    .line 17
    .line 18
    const-string v1, "{ \"error_code\":%d, \"message\": %s }"

    .line 19
    .line 20
    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 21
    .line 22
    .line 23
    move-result-object v0

    .line 24
    return-object v0
.end method
