.class Lcn/sharesdk/tencent/qq/ShareActivity$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/mob/tools/utils/DH$DHResponder;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/sharesdk/tencent/qq/ShareActivity;->onCreate()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:I

.field final synthetic b:Ljava/lang/String;

.field final synthetic c:Ljava/lang/String;

.field final synthetic d:Ljava/lang/String;

.field final synthetic e:Ljava/lang/String;

.field final synthetic f:Ljava/lang/String;

.field final synthetic g:Ljava/lang/String;

.field final synthetic h:Ljava/lang/String;

.field final synthetic i:I

.field final synthetic j:Ljava/lang/String;

.field final synthetic k:Ljava/lang/String;

.field final synthetic l:Ljava/lang/String;

.field final synthetic m:Lcn/sharesdk/tencent/qq/ShareActivity;


# direct methods
.method constructor <init>(Lcn/sharesdk/tencent/qq/ShareActivity;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcn/sharesdk/tencent/qq/ShareActivity$1;->m:Lcn/sharesdk/tencent/qq/ShareActivity;

    .line 2
    .line 3
    iput p2, p0, Lcn/sharesdk/tencent/qq/ShareActivity$1;->a:I

    .line 4
    .line 5
    iput-object p3, p0, Lcn/sharesdk/tencent/qq/ShareActivity$1;->b:Ljava/lang/String;

    .line 6
    .line 7
    iput-object p4, p0, Lcn/sharesdk/tencent/qq/ShareActivity$1;->c:Ljava/lang/String;

    .line 8
    .line 9
    iput-object p5, p0, Lcn/sharesdk/tencent/qq/ShareActivity$1;->d:Ljava/lang/String;

    .line 10
    .line 11
    iput-object p6, p0, Lcn/sharesdk/tencent/qq/ShareActivity$1;->e:Ljava/lang/String;

    .line 12
    .line 13
    iput-object p7, p0, Lcn/sharesdk/tencent/qq/ShareActivity$1;->f:Ljava/lang/String;

    .line 14
    .line 15
    iput-object p8, p0, Lcn/sharesdk/tencent/qq/ShareActivity$1;->g:Ljava/lang/String;

    .line 16
    .line 17
    iput-object p9, p0, Lcn/sharesdk/tencent/qq/ShareActivity$1;->h:Ljava/lang/String;

    .line 18
    .line 19
    iput p10, p0, Lcn/sharesdk/tencent/qq/ShareActivity$1;->i:I

    .line 20
    .line 21
    iput-object p11, p0, Lcn/sharesdk/tencent/qq/ShareActivity$1;->j:Ljava/lang/String;

    .line 22
    .line 23
    iput-object p12, p0, Lcn/sharesdk/tencent/qq/ShareActivity$1;->k:Ljava/lang/String;

    .line 24
    .line 25
    iput-object p13, p0, Lcn/sharesdk/tencent/qq/ShareActivity$1;->l:Ljava/lang/String;

    .line 26
    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    .line 29
    .line 30
    return-void
.end method


# virtual methods
.method public onResponse(Lcom/mob/tools/utils/DH$DHResponse;)V
    .locals 16

    .line 1
    move-object/from16 v1, p0

    .line 2
    .line 3
    move-object/from16 v0, p1

    .line 4
    .line 5
    :try_start_0
    invoke-virtual/range {p1 .. p1}, Lcom/mob/tools/utils/DH$DHResponse;->getAppName()Ljava/lang/String;

    .line 6
    .line 7
    .line 8
    move-result-object v9

    .line 9
    iget v2, v1, Lcn/sharesdk/tencent/qq/ShareActivity$1;->a:I

    .line 10
    .line 11
    const/16 v3, 0xf

    .line 12
    .line 13
    const/4 v4, 0x0

    .line 14
    const/16 v15, 0x9

    .line 15
    .line 16
    if-ne v2, v3, :cond_2

    .line 17
    .line 18
    iget-object v2, v1, Lcn/sharesdk/tencent/qq/ShareActivity$1;->m:Lcn/sharesdk/tencent/qq/ShareActivity;

    .line 19
    .line 20
    const-string v3, "8.0.8"

    .line 21
    .line 22
    new-array v4, v4, [I

    .line 23
    .line 24
    invoke-virtual {v0, v4}, Lcom/mob/tools/utils/DH$DHResponse;->getPInfoForce([I)Landroid/content/pm/PackageInfo;

    .line 25
    .line 26
    .line 27
    move-result-object v0

    .line 28
    iget-object v0, v0, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;

    .line 29
    .line 30
    invoke-virtual {v2, v3, v0}, Lcn/sharesdk/tencent/qq/ShareActivity;->resultCompareVersion(Ljava/lang/String;Ljava/lang/String;)I

    .line 31
    .line 32
    .line 33
    move-result v0

    .line 34
    if-gez v0, :cond_1

    .line 35
    .line 36
    iget-object v0, v1, Lcn/sharesdk/tencent/qq/ShareActivity$1;->m:Lcn/sharesdk/tencent/qq/ShareActivity;

    .line 37
    .line 38
    invoke-static {v0}, Lcn/sharesdk/tencent/qq/ShareActivity;->access$000(Lcn/sharesdk/tencent/qq/ShareActivity;)Lcn/sharesdk/framework/PlatformActionListener;

    .line 39
    .line 40
    .line 41
    move-result-object v0

    .line 42
    if-eqz v0, :cond_0

    .line 43
    .line 44
    iget-object v0, v1, Lcn/sharesdk/tencent/qq/ShareActivity$1;->m:Lcn/sharesdk/tencent/qq/ShareActivity;

    .line 45
    .line 46
    invoke-static {v0}, Lcn/sharesdk/tencent/qq/ShareActivity;->access$000(Lcn/sharesdk/tencent/qq/ShareActivity;)Lcn/sharesdk/framework/PlatformActionListener;

    .line 47
    .line 48
    .line 49
    move-result-object v0

    .line 50
    iget-object v2, v1, Lcn/sharesdk/tencent/qq/ShareActivity$1;->m:Lcn/sharesdk/tencent/qq/ShareActivity;

    .line 51
    .line 52
    invoke-static {v2}, Lcn/sharesdk/tencent/qq/ShareActivity;->access$100(Lcn/sharesdk/tencent/qq/ShareActivity;)Lcn/sharesdk/framework/Platform;

    .line 53
    .line 54
    .line 55
    move-result-object v2

    .line 56
    new-instance v3, Ljava/lang/Throwable;

    .line 57
    .line 58
    const-string v4, "808\u4ee5\u4e0b\u4e0d\u652f\u6301\u5206\u4eab\u5c0f\u7a0b\u5e8f"

    .line 59
    .line 60
    invoke-direct {v3, v4}, Ljava/lang/Throwable;-><init>(Ljava/lang/String;)V

    .line 61
    .line 62
    .line 63
    invoke-interface {v0, v2, v15, v3}, Lcn/sharesdk/framework/PlatformActionListener;->onError(Lcn/sharesdk/framework/Platform;ILjava/lang/Throwable;)V

    .line 64
    .line 65
    .line 66
    :cond_0
    return-void

    .line 67
    :cond_1
    iget-object v2, v1, Lcn/sharesdk/tencent/qq/ShareActivity$1;->m:Lcn/sharesdk/tencent/qq/ShareActivity;

    .line 68
    .line 69
    iget-object v3, v1, Lcn/sharesdk/tencent/qq/ShareActivity$1;->b:Ljava/lang/String;

    .line 70
    .line 71
    iget-object v4, v1, Lcn/sharesdk/tencent/qq/ShareActivity$1;->c:Ljava/lang/String;

    .line 72
    .line 73
    iget-object v5, v1, Lcn/sharesdk/tencent/qq/ShareActivity$1;->d:Ljava/lang/String;

    .line 74
    .line 75
    iget-object v6, v1, Lcn/sharesdk/tencent/qq/ShareActivity$1;->e:Ljava/lang/String;

    .line 76
    .line 77
    iget-object v7, v1, Lcn/sharesdk/tencent/qq/ShareActivity$1;->f:Ljava/lang/String;

    .line 78
    .line 79
    iget-object v8, v1, Lcn/sharesdk/tencent/qq/ShareActivity$1;->g:Ljava/lang/String;

    .line 80
    .line 81
    iget-object v10, v1, Lcn/sharesdk/tencent/qq/ShareActivity$1;->h:Ljava/lang/String;

    .line 82
    .line 83
    iget v11, v1, Lcn/sharesdk/tencent/qq/ShareActivity$1;->i:I

    .line 84
    .line 85
    iget-object v12, v1, Lcn/sharesdk/tencent/qq/ShareActivity$1;->j:Ljava/lang/String;

    .line 86
    .line 87
    iget-object v13, v1, Lcn/sharesdk/tencent/qq/ShareActivity$1;->k:Ljava/lang/String;

    .line 88
    .line 89
    iget-object v14, v1, Lcn/sharesdk/tencent/qq/ShareActivity$1;->l:Ljava/lang/String;

    .line 90
    .line 91
    iget v0, v1, Lcn/sharesdk/tencent/qq/ShareActivity$1;->a:I

    .line 92
    .line 93
    move v15, v0

    .line 94
    invoke-static/range {v2 .. v15}, Lcn/sharesdk/tencent/qq/ShareActivity;->access$200(Lcn/sharesdk/tencent/qq/ShareActivity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    .line 95
    .line 96
    .line 97
    iget-object v0, v1, Lcn/sharesdk/tencent/qq/ShareActivity$1;->m:Lcn/sharesdk/tencent/qq/ShareActivity;

    .line 98
    .line 99
    invoke-static {v0}, Lcn/sharesdk/tencent/qq/ShareActivity;->access$000(Lcn/sharesdk/tencent/qq/ShareActivity;)Lcn/sharesdk/framework/PlatformActionListener;

    .line 100
    .line 101
    .line 102
    move-result-object v0

    .line 103
    if-eqz v0, :cond_c

    .line 104
    .line 105
    new-instance v0, Ljava/util/HashMap;

    .line 106
    .line 107
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 108
    .line 109
    .line 110
    iget-object v2, v1, Lcn/sharesdk/tencent/qq/ShareActivity$1;->m:Lcn/sharesdk/tencent/qq/ShareActivity;

    .line 111
    .line 112
    invoke-static {v2}, Lcn/sharesdk/tencent/qq/ShareActivity;->access$000(Lcn/sharesdk/tencent/qq/ShareActivity;)Lcn/sharesdk/framework/PlatformActionListener;

    .line 113
    .line 114
    .line 115
    move-result-object v2

    .line 116
    iget-object v3, v1, Lcn/sharesdk/tencent/qq/ShareActivity$1;->m:Lcn/sharesdk/tencent/qq/ShareActivity;

    .line 117
    .line 118
    invoke-static {v3}, Lcn/sharesdk/tencent/qq/ShareActivity;->access$100(Lcn/sharesdk/tencent/qq/ShareActivity;)Lcn/sharesdk/framework/Platform;

    .line 119
    .line 120
    .line 121
    move-result-object v3

    .line 122
    const/16 v5, 0x9

    .line 123
    .line 124
    invoke-interface {v2, v3, v5, v0}, Lcn/sharesdk/framework/PlatformActionListener;->onComplete(Lcn/sharesdk/framework/Platform;ILjava/util/HashMap;)V

    .line 125
    .line 126
    .line 127
    goto/16 :goto_0

    .line 128
    .line 129
    :cond_2
    const/16 v5, 0x9

    .line 130
    .line 131
    const/16 v3, 0x16

    .line 132
    .line 133
    if-ne v2, v3, :cond_9

    .line 134
    .line 135
    iget-object v2, v1, Lcn/sharesdk/tencent/qq/ShareActivity$1;->j:Ljava/lang/String;

    .line 136
    .line 137
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 138
    .line 139
    .line 140
    move-result v2

    .line 141
    if-eqz v2, :cond_4

    .line 142
    .line 143
    iget-object v0, v1, Lcn/sharesdk/tencent/qq/ShareActivity$1;->m:Lcn/sharesdk/tencent/qq/ShareActivity;

    .line 144
    .line 145
    invoke-static {v0}, Lcn/sharesdk/tencent/qq/ShareActivity;->access$000(Lcn/sharesdk/tencent/qq/ShareActivity;)Lcn/sharesdk/framework/PlatformActionListener;

    .line 146
    .line 147
    .line 148
    move-result-object v0

    .line 149
    if-eqz v0, :cond_3

    .line 150
    .line 151
    iget-object v0, v1, Lcn/sharesdk/tencent/qq/ShareActivity$1;->m:Lcn/sharesdk/tencent/qq/ShareActivity;

    .line 152
    .line 153
    invoke-static {v0}, Lcn/sharesdk/tencent/qq/ShareActivity;->access$000(Lcn/sharesdk/tencent/qq/ShareActivity;)Lcn/sharesdk/framework/PlatformActionListener;

    .line 154
    .line 155
    .line 156
    move-result-object v0

    .line 157
    iget-object v2, v1, Lcn/sharesdk/tencent/qq/ShareActivity$1;->m:Lcn/sharesdk/tencent/qq/ShareActivity;

    .line 158
    .line 159
    invoke-static {v2}, Lcn/sharesdk/tencent/qq/ShareActivity;->access$100(Lcn/sharesdk/tencent/qq/ShareActivity;)Lcn/sharesdk/framework/Platform;

    .line 160
    .line 161
    .line 162
    move-result-object v2

    .line 163
    new-instance v3, Ljava/lang/Throwable;

    .line 164
    .line 165
    const-string v4, "Result is MINIAPP_ID_EMPTY : -1"

    .line 166
    .line 167
    invoke-direct {v3, v4}, Ljava/lang/Throwable;-><init>(Ljava/lang/String;)V

    .line 168
    .line 169
    .line 170
    invoke-interface {v0, v2, v5, v3}, Lcn/sharesdk/framework/PlatformActionListener;->onError(Lcn/sharesdk/framework/Platform;ILjava/lang/Throwable;)V

    .line 171
    .line 172
    .line 173
    :cond_3
    return-void

    .line 174
    :cond_4
    invoke-static {}, Lcn/sharesdk/tencent/qq/ShareActivity;->access$300()Ljava/util/List;

    .line 175
    .line 176
    .line 177
    move-result-object v2

    .line 178
    iget-object v3, v1, Lcn/sharesdk/tencent/qq/ShareActivity$1;->l:Ljava/lang/String;

    .line 179
    .line 180
    invoke-interface {v2, v3}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    .line 181
    .line 182
    .line 183
    move-result v2

    .line 184
    if-nez v2, :cond_6

    .line 185
    .line 186
    iget-object v0, v1, Lcn/sharesdk/tencent/qq/ShareActivity$1;->m:Lcn/sharesdk/tencent/qq/ShareActivity;

    .line 187
    .line 188
    invoke-static {v0}, Lcn/sharesdk/tencent/qq/ShareActivity;->access$000(Lcn/sharesdk/tencent/qq/ShareActivity;)Lcn/sharesdk/framework/PlatformActionListener;

    .line 189
    .line 190
    .line 191
    move-result-object v0

    .line 192
    if-eqz v0, :cond_5

    .line 193
    .line 194
    iget-object v0, v1, Lcn/sharesdk/tencent/qq/ShareActivity$1;->m:Lcn/sharesdk/tencent/qq/ShareActivity;

    .line 195
    .line 196
    invoke-static {v0}, Lcn/sharesdk/tencent/qq/ShareActivity;->access$000(Lcn/sharesdk/tencent/qq/ShareActivity;)Lcn/sharesdk/framework/PlatformActionListener;

    .line 197
    .line 198
    .line 199
    move-result-object v0

    .line 200
    iget-object v2, v1, Lcn/sharesdk/tencent/qq/ShareActivity$1;->m:Lcn/sharesdk/tencent/qq/ShareActivity;

    .line 201
    .line 202
    invoke-static {v2}, Lcn/sharesdk/tencent/qq/ShareActivity;->access$100(Lcn/sharesdk/tencent/qq/ShareActivity;)Lcn/sharesdk/framework/Platform;

    .line 203
    .line 204
    .line 205
    move-result-object v2

    .line 206
    new-instance v3, Ljava/lang/Throwable;

    .line 207
    .line 208
    const-string v4, "Result is MINIAPP_VERSION_WRONG : -7"

    .line 209
    .line 210
    invoke-direct {v3, v4}, Ljava/lang/Throwable;-><init>(Ljava/lang/String;)V

    .line 211
    .line 212
    .line 213
    invoke-interface {v0, v2, v5, v3}, Lcn/sharesdk/framework/PlatformActionListener;->onError(Lcn/sharesdk/framework/Platform;ILjava/lang/Throwable;)V

    .line 214
    .line 215
    .line 216
    :cond_5
    return-void

    .line 217
    :cond_6
    iget-object v2, v1, Lcn/sharesdk/tencent/qq/ShareActivity$1;->m:Lcn/sharesdk/tencent/qq/ShareActivity;

    .line 218
    .line 219
    const-string v3, "8.1.8"

    .line 220
    .line 221
    new-array v4, v4, [I

    .line 222
    .line 223
    invoke-virtual {v0, v4}, Lcom/mob/tools/utils/DH$DHResponse;->getPInfoForce([I)Landroid/content/pm/PackageInfo;

    .line 224
    .line 225
    .line 226
    move-result-object v0

    .line 227
    iget-object v0, v0, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;

    .line 228
    .line 229
    invoke-virtual {v2, v3, v0}, Lcn/sharesdk/tencent/qq/ShareActivity;->resultCompareVersion(Ljava/lang/String;Ljava/lang/String;)I

    .line 230
    .line 231
    .line 232
    move-result v0

    .line 233
    if-gez v0, :cond_8

    .line 234
    .line 235
    iget-object v0, v1, Lcn/sharesdk/tencent/qq/ShareActivity$1;->m:Lcn/sharesdk/tencent/qq/ShareActivity;

    .line 236
    .line 237
    invoke-static {v0}, Lcn/sharesdk/tencent/qq/ShareActivity;->access$000(Lcn/sharesdk/tencent/qq/ShareActivity;)Lcn/sharesdk/framework/PlatformActionListener;

    .line 238
    .line 239
    .line 240
    move-result-object v0

    .line 241
    if-eqz v0, :cond_7

    .line 242
    .line 243
    iget-object v0, v1, Lcn/sharesdk/tencent/qq/ShareActivity$1;->m:Lcn/sharesdk/tencent/qq/ShareActivity;

    .line 244
    .line 245
    invoke-static {v0}, Lcn/sharesdk/tencent/qq/ShareActivity;->access$000(Lcn/sharesdk/tencent/qq/ShareActivity;)Lcn/sharesdk/framework/PlatformActionListener;

    .line 246
    .line 247
    .line 248
    move-result-object v0

    .line 249
    iget-object v2, v1, Lcn/sharesdk/tencent/qq/ShareActivity$1;->m:Lcn/sharesdk/tencent/qq/ShareActivity;

    .line 250
    .line 251
    invoke-static {v2}, Lcn/sharesdk/tencent/qq/ShareActivity;->access$100(Lcn/sharesdk/tencent/qq/ShareActivity;)Lcn/sharesdk/framework/Platform;

    .line 252
    .line 253
    .line 254
    move-result-object v2

    .line 255
    new-instance v3, Ljava/lang/Throwable;

    .line 256
    .line 257
    const-string v4, "Result is MINIAPP_SHOULD_DOWNLOAD : -2"

    .line 258
    .line 259
    invoke-direct {v3, v4}, Ljava/lang/Throwable;-><init>(Ljava/lang/String;)V

    .line 260
    .line 261
    .line 262
    invoke-interface {v0, v2, v5, v3}, Lcn/sharesdk/framework/PlatformActionListener;->onError(Lcn/sharesdk/framework/Platform;ILjava/lang/Throwable;)V

    .line 263
    .line 264
    .line 265
    :cond_7
    return-void

    .line 266
    :cond_8
    iget-object v0, v1, Lcn/sharesdk/tencent/qq/ShareActivity$1;->m:Lcn/sharesdk/tencent/qq/ShareActivity;

    .line 267
    .line 268
    iget-object v2, v1, Lcn/sharesdk/tencent/qq/ShareActivity$1;->j:Ljava/lang/String;

    .line 269
    .line 270
    iget-object v3, v1, Lcn/sharesdk/tencent/qq/ShareActivity$1;->k:Ljava/lang/String;

    .line 271
    .line 272
    iget-object v4, v1, Lcn/sharesdk/tencent/qq/ShareActivity$1;->l:Ljava/lang/String;

    .line 273
    .line 274
    invoke-static {v0, v2, v3, v4}, Lcn/sharesdk/tencent/qq/ShareActivity;->access$400(Lcn/sharesdk/tencent/qq/ShareActivity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 275
    .line 276
    .line 277
    iget-object v0, v1, Lcn/sharesdk/tencent/qq/ShareActivity$1;->m:Lcn/sharesdk/tencent/qq/ShareActivity;

    .line 278
    .line 279
    invoke-static {v0}, Lcn/sharesdk/tencent/qq/ShareActivity;->access$000(Lcn/sharesdk/tencent/qq/ShareActivity;)Lcn/sharesdk/framework/PlatformActionListener;

    .line 280
    .line 281
    .line 282
    move-result-object v0

    .line 283
    if-eqz v0, :cond_c

    .line 284
    .line 285
    new-instance v0, Ljava/util/HashMap;

    .line 286
    .line 287
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 288
    .line 289
    .line 290
    iget-object v2, v1, Lcn/sharesdk/tencent/qq/ShareActivity$1;->m:Lcn/sharesdk/tencent/qq/ShareActivity;

    .line 291
    .line 292
    invoke-static {v2}, Lcn/sharesdk/tencent/qq/ShareActivity;->access$000(Lcn/sharesdk/tencent/qq/ShareActivity;)Lcn/sharesdk/framework/PlatformActionListener;

    .line 293
    .line 294
    .line 295
    move-result-object v2

    .line 296
    iget-object v3, v1, Lcn/sharesdk/tencent/qq/ShareActivity$1;->m:Lcn/sharesdk/tencent/qq/ShareActivity;

    .line 297
    .line 298
    invoke-static {v3}, Lcn/sharesdk/tencent/qq/ShareActivity;->access$100(Lcn/sharesdk/tencent/qq/ShareActivity;)Lcn/sharesdk/framework/Platform;

    .line 299
    .line 300
    .line 301
    move-result-object v3

    .line 302
    invoke-interface {v2, v3, v5, v0}, Lcn/sharesdk/framework/PlatformActionListener;->onComplete(Lcn/sharesdk/framework/Platform;ILjava/util/HashMap;)V

    .line 303
    .line 304
    .line 305
    goto/16 :goto_0

    .line 306
    .line 307
    :cond_9
    iget-object v0, v1, Lcn/sharesdk/tencent/qq/ShareActivity$1;->j:Ljava/lang/String;

    .line 308
    .line 309
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 310
    .line 311
    .line 312
    move-result v0

    .line 313
    if-eqz v0, :cond_b

    .line 314
    .line 315
    iget-object v0, v1, Lcn/sharesdk/tencent/qq/ShareActivity$1;->k:Ljava/lang/String;

    .line 316
    .line 317
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 318
    .line 319
    .line 320
    move-result v0

    .line 321
    if-eqz v0, :cond_b

    .line 322
    .line 323
    iget-object v0, v1, Lcn/sharesdk/tencent/qq/ShareActivity$1;->l:Ljava/lang/String;

    .line 324
    .line 325
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 326
    .line 327
    .line 328
    move-result v0

    .line 329
    if-eqz v0, :cond_b

    .line 330
    .line 331
    iget-object v0, v1, Lcn/sharesdk/tencent/qq/ShareActivity$1;->b:Ljava/lang/String;

    .line 332
    .line 333
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 334
    .line 335
    .line 336
    move-result v0

    .line 337
    if-eqz v0, :cond_b

    .line 338
    .line 339
    iget-object v0, v1, Lcn/sharesdk/tencent/qq/ShareActivity$1;->d:Ljava/lang/String;

    .line 340
    .line 341
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 342
    .line 343
    .line 344
    move-result v0

    .line 345
    if-eqz v0, :cond_b

    .line 346
    .line 347
    iget-object v0, v1, Lcn/sharesdk/tencent/qq/ShareActivity$1;->c:Ljava/lang/String;

    .line 348
    .line 349
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 350
    .line 351
    .line 352
    move-result v0

    .line 353
    if-eqz v0, :cond_b

    .line 354
    .line 355
    iget-object v0, v1, Lcn/sharesdk/tencent/qq/ShareActivity$1;->f:Ljava/lang/String;

    .line 356
    .line 357
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 358
    .line 359
    .line 360
    move-result v0

    .line 361
    if-nez v0, :cond_a

    .line 362
    .line 363
    new-instance v0, Ljava/io/File;

    .line 364
    .line 365
    iget-object v2, v1, Lcn/sharesdk/tencent/qq/ShareActivity$1;->f:Ljava/lang/String;

    .line 366
    .line 367
    invoke-direct {v0, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 368
    .line 369
    .line 370
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    .line 371
    .line 372
    .line 373
    move-result v0

    .line 374
    if-nez v0, :cond_b

    .line 375
    .line 376
    :cond_a
    iget-object v0, v1, Lcn/sharesdk/tencent/qq/ShareActivity$1;->e:Ljava/lang/String;

    .line 377
    .line 378
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 379
    .line 380
    .line 381
    move-result v0

    .line 382
    if-nez v0, :cond_b

    .line 383
    .line 384
    new-instance v0, Lcn/sharesdk/tencent/qq/ShareActivity$1$1;

    .line 385
    .line 386
    invoke-direct {v0, v1, v9}, Lcn/sharesdk/tencent/qq/ShareActivity$1$1;-><init>(Lcn/sharesdk/tencent/qq/ShareActivity$1;Ljava/lang/String;)V

    .line 387
    .line 388
    .line 389
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 390
    .line 391
    .line 392
    goto :goto_0

    .line 393
    :cond_b
    iget-object v2, v1, Lcn/sharesdk/tencent/qq/ShareActivity$1;->m:Lcn/sharesdk/tencent/qq/ShareActivity;

    .line 394
    .line 395
    iget-object v3, v1, Lcn/sharesdk/tencent/qq/ShareActivity$1;->b:Ljava/lang/String;

    .line 396
    .line 397
    iget-object v4, v1, Lcn/sharesdk/tencent/qq/ShareActivity$1;->c:Ljava/lang/String;

    .line 398
    .line 399
    iget-object v5, v1, Lcn/sharesdk/tencent/qq/ShareActivity$1;->d:Ljava/lang/String;

    .line 400
    .line 401
    iget-object v6, v1, Lcn/sharesdk/tencent/qq/ShareActivity$1;->e:Ljava/lang/String;

    .line 402
    .line 403
    iget-object v7, v1, Lcn/sharesdk/tencent/qq/ShareActivity$1;->f:Ljava/lang/String;

    .line 404
    .line 405
    iget-object v8, v1, Lcn/sharesdk/tencent/qq/ShareActivity$1;->g:Ljava/lang/String;

    .line 406
    .line 407
    iget-object v10, v1, Lcn/sharesdk/tencent/qq/ShareActivity$1;->h:Ljava/lang/String;

    .line 408
    .line 409
    iget v11, v1, Lcn/sharesdk/tencent/qq/ShareActivity$1;->i:I

    .line 410
    .line 411
    iget-object v12, v1, Lcn/sharesdk/tencent/qq/ShareActivity$1;->j:Ljava/lang/String;

    .line 412
    .line 413
    iget-object v13, v1, Lcn/sharesdk/tencent/qq/ShareActivity$1;->k:Ljava/lang/String;

    .line 414
    .line 415
    iget-object v14, v1, Lcn/sharesdk/tencent/qq/ShareActivity$1;->l:Ljava/lang/String;

    .line 416
    .line 417
    iget v15, v1, Lcn/sharesdk/tencent/qq/ShareActivity$1;->a:I

    .line 418
    .line 419
    invoke-static/range {v2 .. v15}, Lcn/sharesdk/tencent/qq/ShareActivity;->access$600(Lcn/sharesdk/tencent/qq/ShareActivity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 420
    .line 421
    .line 422
    goto :goto_0

    .line 423
    :catchall_0
    move-exception v0

    .line 424
    invoke-static {}, Lcn/sharesdk/framework/utils/SSDKLog;->b()Lcn/sharesdk/framework/utils/SSDKLog;

    .line 425
    .line 426
    .line 427
    move-result-object v2

    .line 428
    invoke-virtual {v2, v0}, Lcn/sharesdk/framework/utils/SSDKLog;->a(Ljava/lang/Throwable;)I

    .line 429
    .line 430
    .line 431
    :cond_c
    :goto_0
    return-void
.end method
