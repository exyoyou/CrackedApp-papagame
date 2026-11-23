.class public Lcom/baidu/mobads/sdk/internal/k;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final a:Ljava/lang/String; = "\u7ade\u4ef7\u53c2\u6570\u683c\u5f0f\u9519\u8bef\uff0c\u8bf7\u68c0\u67e5\u53c2\u6570\u662f\u5426\u4e3a\u7a7a"

.field private static final b:Ljava/lang/String; = "ecpm\u683c\u5f0f\u9519\u8bef\uff0c\u8bf7\u68c0\u67e5\u662f\u5426\u6ee1\u8db3\u4ee5\u4e0b\u6761\u4ef6\uff1aecpm\u9700\u5927\u4e8e0\uff0c\u5355\u4f4d\uff1a\u5206\uff0c\u65e0\u5c0f\u6570\u70b9"

.field private static final c:Ljava/lang/String; = "adn\u683c\u5f0f\u9519\u8bef\uff0c\u8bf7\u68c0\u67e5\u662f\u5426\u6ee1\u8db3\u4ee5\u4e0b\u6761\u4ef6\uff1a\u6574\u578b\uff0c\u4e0d\u652f\u6301\u5c0f\u6570\uff0c\u9700\u5728\u679a\u4e3e\u503c\u8303\u56f4\u5185"

.field private static final d:Ljava/lang/String; = "ad_t\u683c\u5f0f\u9519\u8bef\uff0c\u8bf7\u68c0\u67e5\u662f\u5426\u6ee1\u8db3\u4ee5\u4e0b\u6761\u4ef6\uff1a\u6574\u578b\uff0c\u4e0d\u652f\u6301\u5c0f\u6570\uff0c\u9700\u5728\u679a\u4e3e\u503c\u8303\u56f4\u5185"

.field private static final e:Ljava/lang/String; = "ad_time\u683c\u5f0f\u9519\u8bef\uff0c\u8bf7\u68c0\u67e5\u662f\u5426\u6ee1\u8db3\u4ee5\u4e0b\u6761\u4ef6\uff1a\u79d2\u7ea7\u65f6\u95f4\u6233\uff0810\u4f4d\u6570\u5b57\uff09\u3001\u65e0\u7279\u6b8a\u7b26\u53f7"

.field private static final f:Ljava/lang/String; = "bid_t\u683c\u5f0f\u9519\u8bef\uff0c\u8bf7\u68c0\u67e5\u662f\u5426\u6ee1\u8db3\u4ee5\u4e0b\u6761\u4ef6\uff1a\u6574\u578b\uff0c\u4e0d\u652f\u6301\u5c0f\u6570\uff0c\u9700\u5728\u679a\u4e3e\u503c\u8303\u56f4\u5185"

.field private static final g:Ljava/lang/String; = "reason\u683c\u5f0f\u9519\u8bef\uff0c\u8bf7\u68c0\u67e5\u662f\u5426\u6ee1\u8db3\u4ee5\u4e0b\u6761\u4ef6\uff1a\u6574\u578b\uff0c\u4e0d\u652f\u6301\u5c0f\u6570\uff0c\u9700\u5728\u679a\u4e3e\u503c\u8303\u56f4\u5185"

.field private static final h:Ljava/lang/String; = "is_s\u683c\u5f0f\u9519\u8bef\uff0c\u8bf7\u68c0\u67e5\u662f\u5426\u6ee1\u8db3\u4ee5\u4e0b\u6761\u4ef6\uff1a\u6574\u578b\uff0c\u4e0d\u652f\u6301\u5c0f\u6570\uff0c\u9700\u5728\u679a\u4e3e\u503c\u8303\u56f4\u5185"

.field private static final i:Ljava/lang/String; = "is_c\u683c\u5f0f\u9519\u8bef\uff0c\u8bf7\u68c0\u67e5\u662f\u5426\u6ee1\u8db3\u4ee5\u4e0b\u6761\u4ef6\uff1a\u6574\u578b\uff0c\u4e0d\u652f\u6301\u5c0f\u6570\uff0c\u9700\u5728\u679a\u4e3e\u503c\u8303\u56f4\u5185"


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

.method public static a(ZLjava/util/LinkedHashMap;Lcom/baidu/mobads/sdk/api/BiddingListener;)Z
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z",
            "Ljava/util/LinkedHashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;",
            "Lcom/baidu/mobads/sdk/api/BiddingListener;",
            ")Z"
        }
    .end annotation

    .line 1
    const-string v0, "is_c"

    .line 2
    .line 3
    const-string v1, "is_s"

    .line 4
    .line 5
    const-string v2, "reason"

    .line 6
    .line 7
    const-string v3, "bid_t"

    .line 8
    .line 9
    const-string v4, "ad_t"

    .line 10
    .line 11
    const-string v5, "adn"

    .line 12
    .line 13
    const-string v6, "ecpm"

    .line 14
    .line 15
    const-string v7, "ad_time"

    .line 16
    .line 17
    const/4 v8, 0x0

    .line 18
    if-eqz p1, :cond_19

    .line 19
    .line 20
    const/4 v9, 0x0

    .line 21
    :try_start_0
    invoke-virtual {p1, v6}, Ljava/util/AbstractMap;->containsKey(Ljava/lang/Object;)Z

    .line 22
    .line 23
    .line 24
    move-result v10
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 25
    const-string v11, "."

    .line 26
    .line 27
    if-eqz v10, :cond_2

    .line 28
    .line 29
    :try_start_1
    invoke-virtual {p1, v6}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 30
    .line 31
    .line 32
    move-result-object v6

    .line 33
    invoke-static {v6}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 34
    .line 35
    .line 36
    move-result-object v6

    .line 37
    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 38
    .line 39
    .line 40
    move-result v10

    .line 41
    if-nez v10, :cond_2

    .line 42
    .line 43
    invoke-virtual {v6, v11}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 44
    .line 45
    .line 46
    move-result v10

    .line 47
    if-nez v10, :cond_0

    .line 48
    .line 49
    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 50
    .line 51
    .line 52
    move-result v6

    .line 53
    if-gtz v6, :cond_2

    .line 54
    .line 55
    :cond_0
    if-eqz p2, :cond_1

    .line 56
    .line 57
    const-string p0, "ecpm\u683c\u5f0f\u9519\u8bef\uff0c\u8bf7\u68c0\u67e5\u662f\u5426\u6ee1\u8db3\u4ee5\u4e0b\u6761\u4ef6\uff1aecpm\u9700\u5927\u4e8e0\uff0c\u5355\u4f4d\uff1a\u5206\uff0c\u65e0\u5c0f\u6570\u70b9"

    .line 58
    .line 59
    invoke-interface {p2, v9, p0, v8}, Lcom/baidu/mobads/sdk/api/BiddingListener;->onBiddingResult(ZLjava/lang/String;Ljava/util/HashMap;)V

    .line 60
    .line 61
    .line 62
    :cond_1
    return v9

    .line 63
    :cond_2
    invoke-virtual {p1, v5}, Ljava/util/AbstractMap;->containsKey(Ljava/lang/Object;)Z

    .line 64
    .line 65
    .line 66
    move-result v6

    .line 67
    if-eqz v6, :cond_5

    .line 68
    .line 69
    invoke-virtual {p1, v5}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 70
    .line 71
    .line 72
    move-result-object v5

    .line 73
    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 74
    .line 75
    .line 76
    move-result-object v5

    .line 77
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 78
    .line 79
    .line 80
    move-result v6

    .line 81
    if-nez v6, :cond_5

    .line 82
    .line 83
    invoke-virtual {v5, v11}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 84
    .line 85
    .line 86
    move-result v6

    .line 87
    if-nez v6, :cond_3

    .line 88
    .line 89
    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 90
    .line 91
    .line 92
    move-result v5

    .line 93
    if-gez v5, :cond_5

    .line 94
    .line 95
    :cond_3
    if-eqz p2, :cond_4

    .line 96
    .line 97
    const-string p0, "adn\u683c\u5f0f\u9519\u8bef\uff0c\u8bf7\u68c0\u67e5\u662f\u5426\u6ee1\u8db3\u4ee5\u4e0b\u6761\u4ef6\uff1a\u6574\u578b\uff0c\u4e0d\u652f\u6301\u5c0f\u6570\uff0c\u9700\u5728\u679a\u4e3e\u503c\u8303\u56f4\u5185"

    .line 98
    .line 99
    invoke-interface {p2, v9, p0, v8}, Lcom/baidu/mobads/sdk/api/BiddingListener;->onBiddingResult(ZLjava/lang/String;Ljava/util/HashMap;)V

    .line 100
    .line 101
    .line 102
    :cond_4
    return v9

    .line 103
    :cond_5
    invoke-virtual {p1, v4}, Ljava/util/AbstractMap;->containsKey(Ljava/lang/Object;)Z

    .line 104
    .line 105
    .line 106
    move-result v5

    .line 107
    if-eqz v5, :cond_8

    .line 108
    .line 109
    invoke-virtual {p1, v4}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 110
    .line 111
    .line 112
    move-result-object v4

    .line 113
    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 114
    .line 115
    .line 116
    move-result-object v4

    .line 117
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 118
    .line 119
    .line 120
    move-result v5

    .line 121
    if-eqz v5, :cond_8

    .line 122
    .line 123
    invoke-virtual {v4, v11}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 124
    .line 125
    .line 126
    move-result v5

    .line 127
    if-nez v5, :cond_6

    .line 128
    .line 129
    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 130
    .line 131
    .line 132
    move-result v4

    .line 133
    if-gez v4, :cond_8

    .line 134
    .line 135
    :cond_6
    if-eqz p2, :cond_7

    .line 136
    .line 137
    const-string p0, "ad_t\u683c\u5f0f\u9519\u8bef\uff0c\u8bf7\u68c0\u67e5\u662f\u5426\u6ee1\u8db3\u4ee5\u4e0b\u6761\u4ef6\uff1a\u6574\u578b\uff0c\u4e0d\u652f\u6301\u5c0f\u6570\uff0c\u9700\u5728\u679a\u4e3e\u503c\u8303\u56f4\u5185"

    .line 138
    .line 139
    invoke-interface {p2, v9, p0, v8}, Lcom/baidu/mobads/sdk/api/BiddingListener;->onBiddingResult(ZLjava/lang/String;Ljava/util/HashMap;)V

    .line 140
    .line 141
    .line 142
    :cond_7
    return v9

    .line 143
    :cond_8
    invoke-virtual {p1, v7}, Ljava/util/AbstractMap;->containsKey(Ljava/lang/Object;)Z

    .line 144
    .line 145
    .line 146
    move-result v4

    .line 147
    if-eqz v4, :cond_c

    .line 148
    .line 149
    invoke-virtual {p1, v7}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 150
    .line 151
    .line 152
    move-result-object v4

    .line 153
    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 154
    .line 155
    .line 156
    move-result-object v4

    .line 157
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    .line 158
    .line 159
    .line 160
    move-result v5

    .line 161
    const/16 v6, 0xd

    .line 162
    .line 163
    if-ne v5, v6, :cond_9

    .line 164
    .line 165
    const/16 v5, 0xa

    .line 166
    .line 167
    invoke-virtual {v4, v9, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 168
    .line 169
    .line 170
    move-result-object v5

    .line 171
    invoke-virtual {p1, v7, v5}, Ljava/util/AbstractMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 172
    .line 173
    .line 174
    :cond_9
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 175
    .line 176
    .line 177
    move-result v5

    .line 178
    if-eqz v5, :cond_c

    .line 179
    .line 180
    invoke-virtual {v4, v11}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 181
    .line 182
    .line 183
    move-result v5

    .line 184
    if-nez v5, :cond_a

    .line 185
    .line 186
    invoke-static {v4}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    .line 187
    .line 188
    .line 189
    move-result-wide v4

    .line 190
    const-wide v6, 0x41cdcd6500000000L    # 1.0E9

    .line 191
    .line 192
    .line 193
    .line 194
    .line 195
    cmpg-double v10, v4, v6

    .line 196
    .line 197
    if-gez v10, :cond_c

    .line 198
    .line 199
    :cond_a
    if-eqz p2, :cond_b

    .line 200
    .line 201
    const-string p0, "ad_time\u683c\u5f0f\u9519\u8bef\uff0c\u8bf7\u68c0\u67e5\u662f\u5426\u6ee1\u8db3\u4ee5\u4e0b\u6761\u4ef6\uff1a\u79d2\u7ea7\u65f6\u95f4\u6233\uff0810\u4f4d\u6570\u5b57\uff09\u3001\u65e0\u7279\u6b8a\u7b26\u53f7"

    .line 202
    .line 203
    invoke-interface {p2, v9, p0, v8}, Lcom/baidu/mobads/sdk/api/BiddingListener;->onBiddingResult(ZLjava/lang/String;Ljava/util/HashMap;)V

    .line 204
    .line 205
    .line 206
    :cond_b
    return v9

    .line 207
    :cond_c
    invoke-virtual {p1, v3}, Ljava/util/AbstractMap;->containsKey(Ljava/lang/Object;)Z

    .line 208
    .line 209
    .line 210
    move-result v4

    .line 211
    if-eqz v4, :cond_f

    .line 212
    .line 213
    invoke-virtual {p1, v3}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 214
    .line 215
    .line 216
    move-result-object v3

    .line 217
    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 218
    .line 219
    .line 220
    move-result-object v3

    .line 221
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 222
    .line 223
    .line 224
    move-result v4

    .line 225
    if-eqz v4, :cond_f

    .line 226
    .line 227
    invoke-virtual {v3, v11}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 228
    .line 229
    .line 230
    move-result v4

    .line 231
    if-nez v4, :cond_d

    .line 232
    .line 233
    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 234
    .line 235
    .line 236
    move-result v3

    .line 237
    if-gez v3, :cond_f

    .line 238
    .line 239
    :cond_d
    if-eqz p2, :cond_e

    .line 240
    .line 241
    const-string p0, "bid_t\u683c\u5f0f\u9519\u8bef\uff0c\u8bf7\u68c0\u67e5\u662f\u5426\u6ee1\u8db3\u4ee5\u4e0b\u6761\u4ef6\uff1a\u6574\u578b\uff0c\u4e0d\u652f\u6301\u5c0f\u6570\uff0c\u9700\u5728\u679a\u4e3e\u503c\u8303\u56f4\u5185"

    .line 242
    .line 243
    invoke-interface {p2, v9, p0, v8}, Lcom/baidu/mobads/sdk/api/BiddingListener;->onBiddingResult(ZLjava/lang/String;Ljava/util/HashMap;)V

    .line 244
    .line 245
    .line 246
    :cond_e
    return v9

    .line 247
    :cond_f
    if-nez p0, :cond_19

    .line 248
    .line 249
    invoke-virtual {p1, v2}, Ljava/util/AbstractMap;->containsKey(Ljava/lang/Object;)Z

    .line 250
    .line 251
    .line 252
    move-result p0

    .line 253
    if-eqz p0, :cond_12

    .line 254
    .line 255
    invoke-virtual {p1, v2}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 256
    .line 257
    .line 258
    move-result-object p0

    .line 259
    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 260
    .line 261
    .line 262
    move-result-object p0

    .line 263
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 264
    .line 265
    .line 266
    move-result v2

    .line 267
    if-eqz v2, :cond_12

    .line 268
    .line 269
    invoke-virtual {p0, v11}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 270
    .line 271
    .line 272
    move-result v2

    .line 273
    if-nez v2, :cond_10

    .line 274
    .line 275
    invoke-static {p0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 276
    .line 277
    .line 278
    move-result p0

    .line 279
    if-gez p0, :cond_12

    .line 280
    .line 281
    :cond_10
    if-eqz p2, :cond_11

    .line 282
    .line 283
    const-string p0, "reason\u683c\u5f0f\u9519\u8bef\uff0c\u8bf7\u68c0\u67e5\u662f\u5426\u6ee1\u8db3\u4ee5\u4e0b\u6761\u4ef6\uff1a\u6574\u578b\uff0c\u4e0d\u652f\u6301\u5c0f\u6570\uff0c\u9700\u5728\u679a\u4e3e\u503c\u8303\u56f4\u5185"

    .line 284
    .line 285
    invoke-interface {p2, v9, p0, v8}, Lcom/baidu/mobads/sdk/api/BiddingListener;->onBiddingResult(ZLjava/lang/String;Ljava/util/HashMap;)V

    .line 286
    .line 287
    .line 288
    :cond_11
    return v9

    .line 289
    :cond_12
    invoke-virtual {p1, v1}, Ljava/util/AbstractMap;->containsKey(Ljava/lang/Object;)Z

    .line 290
    .line 291
    .line 292
    move-result p0

    .line 293
    if-eqz p0, :cond_15

    .line 294
    .line 295
    invoke-virtual {p1, v1}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 296
    .line 297
    .line 298
    move-result-object p0

    .line 299
    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 300
    .line 301
    .line 302
    move-result-object p0

    .line 303
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 304
    .line 305
    .line 306
    move-result v1

    .line 307
    if-eqz v1, :cond_15

    .line 308
    .line 309
    invoke-virtual {p0, v11}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 310
    .line 311
    .line 312
    move-result v1

    .line 313
    if-nez v1, :cond_13

    .line 314
    .line 315
    invoke-static {p0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 316
    .line 317
    .line 318
    move-result p0

    .line 319
    if-gez p0, :cond_15

    .line 320
    .line 321
    :cond_13
    if-eqz p2, :cond_14

    .line 322
    .line 323
    const-string p0, "is_s\u683c\u5f0f\u9519\u8bef\uff0c\u8bf7\u68c0\u67e5\u662f\u5426\u6ee1\u8db3\u4ee5\u4e0b\u6761\u4ef6\uff1a\u6574\u578b\uff0c\u4e0d\u652f\u6301\u5c0f\u6570\uff0c\u9700\u5728\u679a\u4e3e\u503c\u8303\u56f4\u5185"

    .line 324
    .line 325
    invoke-interface {p2, v9, p0, v8}, Lcom/baidu/mobads/sdk/api/BiddingListener;->onBiddingResult(ZLjava/lang/String;Ljava/util/HashMap;)V

    .line 326
    .line 327
    .line 328
    :cond_14
    return v9

    .line 329
    :cond_15
    invoke-virtual {p1, v0}, Ljava/util/AbstractMap;->containsKey(Ljava/lang/Object;)Z

    .line 330
    .line 331
    .line 332
    move-result p0

    .line 333
    if-eqz p0, :cond_19

    .line 334
    .line 335
    invoke-virtual {p1, v0}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 336
    .line 337
    .line 338
    move-result-object p0

    .line 339
    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 340
    .line 341
    .line 342
    move-result-object p0

    .line 343
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 344
    .line 345
    .line 346
    move-result p1

    .line 347
    if-eqz p1, :cond_19

    .line 348
    .line 349
    invoke-virtual {p0, v11}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 350
    .line 351
    .line 352
    move-result p1

    .line 353
    if-nez p1, :cond_16

    .line 354
    .line 355
    invoke-static {p0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 356
    .line 357
    .line 358
    move-result p0

    .line 359
    if-gez p0, :cond_19

    .line 360
    .line 361
    :cond_16
    if-eqz p2, :cond_17

    .line 362
    .line 363
    const-string p0, "is_c\u683c\u5f0f\u9519\u8bef\uff0c\u8bf7\u68c0\u67e5\u662f\u5426\u6ee1\u8db3\u4ee5\u4e0b\u6761\u4ef6\uff1a\u6574\u578b\uff0c\u4e0d\u652f\u6301\u5c0f\u6570\uff0c\u9700\u5728\u679a\u4e3e\u503c\u8303\u56f4\u5185"

    .line 364
    .line 365
    invoke-interface {p2, v9, p0, v8}, Lcom/baidu/mobads/sdk/api/BiddingListener;->onBiddingResult(ZLjava/lang/String;Ljava/util/HashMap;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 366
    .line 367
    .line 368
    :cond_17
    return v9

    .line 369
    :catchall_0
    move-exception p0

    .line 370
    if-eqz p2, :cond_18

    .line 371
    .line 372
    const-string p1, "\u7ade\u4ef7\u53c2\u6570\u683c\u5f0f\u9519\u8bef\uff0c\u8bf7\u68c0\u67e5\u53c2\u6570\u662f\u5426\u4e3a\u7a7a"

    .line 373
    .line 374
    invoke-interface {p2, v9, p1, v8}, Lcom/baidu/mobads/sdk/api/BiddingListener;->onBiddingResult(ZLjava/lang/String;Ljava/util/HashMap;)V

    .line 375
    .line 376
    .line 377
    :cond_18
    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 378
    .line 379
    .line 380
    return v9

    .line 381
    :cond_19
    const/4 p0, 0x1

    .line 382
    if-eqz p2, :cond_1a

    .line 383
    .line 384
    const-string p1, "success"

    .line 385
    .line 386
    invoke-interface {p2, p0, p1, v8}, Lcom/baidu/mobads/sdk/api/BiddingListener;->onBiddingResult(ZLjava/lang/String;Ljava/util/HashMap;)V

    .line 387
    .line 388
    .line 389
    :cond_1a
    return p0
.end method
