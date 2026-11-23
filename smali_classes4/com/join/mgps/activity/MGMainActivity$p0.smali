.class Lcom/join/mgps/activity/MGMainActivity$p0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/join/mgps/activity/MGMainActivity;->afterViewsInitData(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic b:Lcom/join/mgps/activity/MGMainActivity;


# direct methods
.method constructor <init>(Lcom/join/mgps/activity/MGMainActivity;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            "this$0"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/join/mgps/activity/MGMainActivity$p0;->b:Lcom/join/mgps/activity/MGMainActivity;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .line 1
    const-string v0, "2"

    .line 2
    .line 3
    const-string v1, "1"

    .line 4
    .line 5
    :try_start_0
    iget-object v2, p0, Lcom/join/mgps/activity/MGMainActivity$p0;->b:Lcom/join/mgps/activity/MGMainActivity;

    .line 6
    .line 7
    iget-object v2, v2, Lcom/join/mgps/activity/MGMainActivity;->jPushIntentData:Lcom/join/mgps/dto/JPushIntentData;

    .line 8
    .line 9
    invoke-virtual {v2}, Lcom/join/mgps/dto/JPushIntentData;->getType()Ljava/lang/String;

    .line 10
    .line 11
    .line 12
    move-result-object v2

    .line 13
    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 14
    .line 15
    .line 16
    move-result v2

    .line 17
    const/4 v3, 0x0

    .line 18
    const/4 v4, 0x1

    .line 19
    if-eqz v2, :cond_1

    .line 20
    .line 21
    iget-object v0, p0, Lcom/join/mgps/activity/MGMainActivity$p0;->b:Lcom/join/mgps/activity/MGMainActivity;

    .line 22
    .line 23
    iget-object v0, v0, Lcom/join/mgps/activity/MGMainActivity;->jPushIntentData:Lcom/join/mgps/dto/JPushIntentData;

    .line 24
    .line 25
    invoke-virtual {v0}, Lcom/join/mgps/dto/JPushIntentData;->getJumpInfo()Lcom/join/mgps/dto/GameHeadAd;

    .line 26
    .line 27
    .line 28
    move-result-object v0

    .line 29
    if-eqz v0, :cond_0

    .line 30
    .line 31
    iget-object v0, p0, Lcom/join/mgps/activity/MGMainActivity$p0;->b:Lcom/join/mgps/activity/MGMainActivity;

    .line 32
    .line 33
    iget-object v0, v0, Lcom/join/mgps/activity/MGMainActivity;->jPushIntentData:Lcom/join/mgps/dto/JPushIntentData;

    .line 34
    .line 35
    invoke-virtual {v0}, Lcom/join/mgps/dto/JPushIntentData;->getJumpInfo()Lcom/join/mgps/dto/GameHeadAd;

    .line 36
    .line 37
    .line 38
    move-result-object v0

    .line 39
    invoke-virtual {v0}, Lcom/join/mgps/dto/GameHeadAd;->getSub()Ljava/util/List;

    .line 40
    .line 41
    .line 42
    move-result-object v0

    .line 43
    if-eqz v0, :cond_0

    .line 44
    .line 45
    iget-object v0, p0, Lcom/join/mgps/activity/MGMainActivity$p0;->b:Lcom/join/mgps/activity/MGMainActivity;

    .line 46
    .line 47
    iget-object v0, v0, Lcom/join/mgps/activity/MGMainActivity;->jPushIntentData:Lcom/join/mgps/dto/JPushIntentData;

    .line 48
    .line 49
    invoke-virtual {v0}, Lcom/join/mgps/dto/JPushIntentData;->getJumpInfo()Lcom/join/mgps/dto/GameHeadAd;

    .line 50
    .line 51
    .line 52
    move-result-object v0

    .line 53
    invoke-virtual {v0}, Lcom/join/mgps/dto/GameHeadAd;->getSub()Ljava/util/List;

    .line 54
    .line 55
    .line 56
    move-result-object v0

    .line 57
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 58
    .line 59
    .line 60
    move-result v0

    .line 61
    if-lez v0, :cond_0

    .line 62
    .line 63
    iget-object v0, p0, Lcom/join/mgps/activity/MGMainActivity$p0;->b:Lcom/join/mgps/activity/MGMainActivity;

    .line 64
    .line 65
    invoke-static {v0}, Lcom/join/mgps/activity/MGMainActivity;->access$200(Lcom/join/mgps/activity/MGMainActivity;)Landroid/content/Context;

    .line 66
    .line 67
    .line 68
    move-result-object v0

    .line 69
    invoke-static {v0}, Lcom/join/mgps/activity/message/MessageMainActivity_;->intent(Landroid/content/Context;)Lcom/join/mgps/activity/message/MessageMainActivity_$f;

    .line 70
    .line 71
    .line 72
    move-result-object v0

    .line 73
    invoke-virtual {v0, v4}, Lcom/join/mgps/activity/message/MessageMainActivity_$f;->d(Z)Lcom/join/mgps/activity/message/MessageMainActivity_$f;

    .line 74
    .line 75
    .line 76
    move-result-object v0

    .line 77
    invoke-virtual {v0, v3}, Lcom/join/mgps/activity/message/MessageMainActivity_$f;->a(I)Lcom/join/mgps/activity/message/MessageMainActivity_$f;

    .line 78
    .line 79
    .line 80
    move-result-object v0

    .line 81
    iget-object v1, p0, Lcom/join/mgps/activity/MGMainActivity$p0;->b:Lcom/join/mgps/activity/MGMainActivity;

    .line 82
    .line 83
    iget-object v1, v1, Lcom/join/mgps/activity/MGMainActivity;->jPushIntentData:Lcom/join/mgps/dto/JPushIntentData;

    .line 84
    .line 85
    invoke-virtual {v1}, Lcom/join/mgps/dto/JPushIntentData;->getJumpInfo()Lcom/join/mgps/dto/GameHeadAd;

    .line 86
    .line 87
    .line 88
    move-result-object v1

    .line 89
    invoke-virtual {v1}, Lcom/join/mgps/dto/GameHeadAd;->getSub()Ljava/util/List;

    .line 90
    .line 91
    .line 92
    move-result-object v1

    .line 93
    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 94
    .line 95
    .line 96
    move-result-object v1

    .line 97
    check-cast v1, Lcom/join/mgps/dto/GameHeadAd$SubInfo;

    .line 98
    .line 99
    invoke-virtual {v1}, Lcom/join/mgps/dto/GameHeadAd$SubInfo;->getIntentDataBean()Lcom/join/mgps/Util/IntentDateBean;

    .line 100
    .line 101
    .line 102
    move-result-object v1

    .line 103
    invoke-virtual {v0, v1}, Lcom/join/mgps/activity/message/MessageMainActivity_$f;->b(Lcom/join/mgps/Util/IntentDateBean;)Lcom/join/mgps/activity/message/MessageMainActivity_$f;

    .line 104
    .line 105
    .line 106
    move-result-object v0

    .line 107
    invoke-virtual {v0}, Lorg/androidannotations/api/builder/a;->start()Lorg/androidannotations/api/builder/f;

    .line 108
    .line 109
    .line 110
    goto/16 :goto_0

    .line 111
    .line 112
    :cond_0
    iget-object v0, p0, Lcom/join/mgps/activity/MGMainActivity$p0;->b:Lcom/join/mgps/activity/MGMainActivity;

    .line 113
    .line 114
    invoke-static {v0}, Lcom/join/mgps/activity/MGMainActivity;->access$200(Lcom/join/mgps/activity/MGMainActivity;)Landroid/content/Context;

    .line 115
    .line 116
    .line 117
    move-result-object v0

    .line 118
    invoke-static {v0}, Lcom/join/mgps/activity/message/MessageMainActivity_;->intent(Landroid/content/Context;)Lcom/join/mgps/activity/message/MessageMainActivity_$f;

    .line 119
    .line 120
    .line 121
    move-result-object v0

    .line 122
    invoke-virtual {v0, v4}, Lcom/join/mgps/activity/message/MessageMainActivity_$f;->d(Z)Lcom/join/mgps/activity/message/MessageMainActivity_$f;

    .line 123
    .line 124
    .line 125
    move-result-object v0

    .line 126
    invoke-virtual {v0, v3}, Lcom/join/mgps/activity/message/MessageMainActivity_$f;->a(I)Lcom/join/mgps/activity/message/MessageMainActivity_$f;

    .line 127
    .line 128
    .line 129
    move-result-object v0

    .line 130
    invoke-virtual {v0}, Lorg/androidannotations/api/builder/a;->start()Lorg/androidannotations/api/builder/f;

    .line 131
    .line 132
    .line 133
    goto/16 :goto_0

    .line 134
    .line 135
    :cond_1
    iget-object v2, p0, Lcom/join/mgps/activity/MGMainActivity$p0;->b:Lcom/join/mgps/activity/MGMainActivity;

    .line 136
    .line 137
    iget-object v2, v2, Lcom/join/mgps/activity/MGMainActivity;->jPushIntentData:Lcom/join/mgps/dto/JPushIntentData;

    .line 138
    .line 139
    invoke-virtual {v2}, Lcom/join/mgps/dto/JPushIntentData;->getType()Ljava/lang/String;

    .line 140
    .line 141
    .line 142
    move-result-object v2

    .line 143
    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 144
    .line 145
    .line 146
    move-result v2

    .line 147
    if-eqz v2, :cond_3

    .line 148
    .line 149
    iget-object v2, p0, Lcom/join/mgps/activity/MGMainActivity$p0;->b:Lcom/join/mgps/activity/MGMainActivity;

    .line 150
    .line 151
    iget-object v2, v2, Lcom/join/mgps/activity/MGMainActivity;->jPushIntentData:Lcom/join/mgps/dto/JPushIntentData;

    .line 152
    .line 153
    invoke-virtual {v2}, Lcom/join/mgps/dto/JPushIntentData;->getSubType()Ljava/lang/String;

    .line 154
    .line 155
    .line 156
    move-result-object v2

    .line 157
    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 158
    .line 159
    .line 160
    move-result v1

    .line 161
    if-eqz v1, :cond_2

    .line 162
    .line 163
    iget-object v0, p0, Lcom/join/mgps/activity/MGMainActivity$p0;->b:Lcom/join/mgps/activity/MGMainActivity;

    .line 164
    .line 165
    invoke-static {v0}, Lcom/join/mgps/activity/MGMainActivity;->access$200(Lcom/join/mgps/activity/MGMainActivity;)Landroid/content/Context;

    .line 166
    .line 167
    .line 168
    move-result-object v0

    .line 169
    invoke-static {v0}, Lcom/join/mgps/activity/message/MessageMainActivity_;->intent(Landroid/content/Context;)Lcom/join/mgps/activity/message/MessageMainActivity_$f;

    .line 170
    .line 171
    .line 172
    move-result-object v0

    .line 173
    invoke-virtual {v0, v4}, Lcom/join/mgps/activity/message/MessageMainActivity_$f;->d(Z)Lcom/join/mgps/activity/message/MessageMainActivity_$f;

    .line 174
    .line 175
    .line 176
    move-result-object v0

    .line 177
    invoke-virtual {v0, v4}, Lcom/join/mgps/activity/message/MessageMainActivity_$f;->a(I)Lcom/join/mgps/activity/message/MessageMainActivity_$f;

    .line 178
    .line 179
    .line 180
    move-result-object v0

    .line 181
    invoke-virtual {v0, v4}, Lcom/join/mgps/activity/message/MessageMainActivity_$f;->c(Z)Lcom/join/mgps/activity/message/MessageMainActivity_$f;

    .line 182
    .line 183
    .line 184
    move-result-object v0

    .line 185
    invoke-virtual {v0}, Lorg/androidannotations/api/builder/a;->start()Lorg/androidannotations/api/builder/f;

    .line 186
    .line 187
    .line 188
    goto/16 :goto_0

    .line 189
    .line 190
    :cond_2
    iget-object v1, p0, Lcom/join/mgps/activity/MGMainActivity$p0;->b:Lcom/join/mgps/activity/MGMainActivity;

    .line 191
    .line 192
    iget-object v1, v1, Lcom/join/mgps/activity/MGMainActivity;->jPushIntentData:Lcom/join/mgps/dto/JPushIntentData;

    .line 193
    .line 194
    invoke-virtual {v1}, Lcom/join/mgps/dto/JPushIntentData;->getSubType()Ljava/lang/String;

    .line 195
    .line 196
    .line 197
    move-result-object v1

    .line 198
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 199
    .line 200
    .line 201
    move-result v0

    .line 202
    if-eqz v0, :cond_5

    .line 203
    .line 204
    iget-object v0, p0, Lcom/join/mgps/activity/MGMainActivity$p0;->b:Lcom/join/mgps/activity/MGMainActivity;

    .line 205
    .line 206
    invoke-static {v0}, Lcom/join/mgps/activity/MGMainActivity;->access$200(Lcom/join/mgps/activity/MGMainActivity;)Landroid/content/Context;

    .line 207
    .line 208
    .line 209
    move-result-object v0

    .line 210
    invoke-static {v0}, Lcom/join/mgps/activity/message/MessageMainActivity_;->intent(Landroid/content/Context;)Lcom/join/mgps/activity/message/MessageMainActivity_$f;

    .line 211
    .line 212
    .line 213
    move-result-object v0

    .line 214
    invoke-virtual {v0, v4}, Lcom/join/mgps/activity/message/MessageMainActivity_$f;->d(Z)Lcom/join/mgps/activity/message/MessageMainActivity_$f;

    .line 215
    .line 216
    .line 217
    move-result-object v0

    .line 218
    invoke-virtual {v0, v4}, Lcom/join/mgps/activity/message/MessageMainActivity_$f;->a(I)Lcom/join/mgps/activity/message/MessageMainActivity_$f;

    .line 219
    .line 220
    .line 221
    move-result-object v0

    .line 222
    invoke-virtual {v0, v3}, Lcom/join/mgps/activity/message/MessageMainActivity_$f;->c(Z)Lcom/join/mgps/activity/message/MessageMainActivity_$f;

    .line 223
    .line 224
    .line 225
    move-result-object v0

    .line 226
    invoke-virtual {v0}, Lorg/androidannotations/api/builder/a;->start()Lorg/androidannotations/api/builder/f;

    .line 227
    .line 228
    .line 229
    goto :goto_0

    .line 230
    :cond_3
    iget-object v2, p0, Lcom/join/mgps/activity/MGMainActivity$p0;->b:Lcom/join/mgps/activity/MGMainActivity;

    .line 231
    .line 232
    iget-object v2, v2, Lcom/join/mgps/activity/MGMainActivity;->jPushIntentData:Lcom/join/mgps/dto/JPushIntentData;

    .line 233
    .line 234
    invoke-virtual {v2}, Lcom/join/mgps/dto/JPushIntentData;->getType()Ljava/lang/String;

    .line 235
    .line 236
    .line 237
    move-result-object v2

    .line 238
    const-string v5, "3"

    .line 239
    .line 240
    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 241
    .line 242
    .line 243
    move-result v2

    .line 244
    if-eqz v2, :cond_5

    .line 245
    .line 246
    iget-object v2, p0, Lcom/join/mgps/activity/MGMainActivity$p0;->b:Lcom/join/mgps/activity/MGMainActivity;

    .line 247
    .line 248
    iget-object v2, v2, Lcom/join/mgps/activity/MGMainActivity;->jPushIntentData:Lcom/join/mgps/dto/JPushIntentData;

    .line 249
    .line 250
    invoke-virtual {v2}, Lcom/join/mgps/dto/JPushIntentData;->getSubType()Ljava/lang/String;

    .line 251
    .line 252
    .line 253
    move-result-object v2

    .line 254
    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 255
    .line 256
    .line 257
    move-result v1

    .line 258
    const/4 v2, 0x2

    .line 259
    if-eqz v1, :cond_4

    .line 260
    .line 261
    iget-object v0, p0, Lcom/join/mgps/activity/MGMainActivity$p0;->b:Lcom/join/mgps/activity/MGMainActivity;

    .line 262
    .line 263
    invoke-static {v0}, Lcom/join/mgps/activity/MGMainActivity;->access$200(Lcom/join/mgps/activity/MGMainActivity;)Landroid/content/Context;

    .line 264
    .line 265
    .line 266
    move-result-object v0

    .line 267
    invoke-static {v0}, Lcom/join/mgps/activity/message/MessageMainActivity_;->intent(Landroid/content/Context;)Lcom/join/mgps/activity/message/MessageMainActivity_$f;

    .line 268
    .line 269
    .line 270
    move-result-object v0

    .line 271
    invoke-virtual {v0, v4}, Lcom/join/mgps/activity/message/MessageMainActivity_$f;->d(Z)Lcom/join/mgps/activity/message/MessageMainActivity_$f;

    .line 272
    .line 273
    .line 274
    move-result-object v0

    .line 275
    invoke-virtual {v0, v2}, Lcom/join/mgps/activity/message/MessageMainActivity_$f;->a(I)Lcom/join/mgps/activity/message/MessageMainActivity_$f;

    .line 276
    .line 277
    .line 278
    move-result-object v0

    .line 279
    invoke-virtual {v0, v4}, Lcom/join/mgps/activity/message/MessageMainActivity_$f;->c(Z)Lcom/join/mgps/activity/message/MessageMainActivity_$f;

    .line 280
    .line 281
    .line 282
    move-result-object v0

    .line 283
    invoke-virtual {v0}, Lorg/androidannotations/api/builder/a;->start()Lorg/androidannotations/api/builder/f;

    .line 284
    .line 285
    .line 286
    goto :goto_0

    .line 287
    :cond_4
    iget-object v1, p0, Lcom/join/mgps/activity/MGMainActivity$p0;->b:Lcom/join/mgps/activity/MGMainActivity;

    .line 288
    .line 289
    iget-object v1, v1, Lcom/join/mgps/activity/MGMainActivity;->jPushIntentData:Lcom/join/mgps/dto/JPushIntentData;

    .line 290
    .line 291
    invoke-virtual {v1}, Lcom/join/mgps/dto/JPushIntentData;->getSubType()Ljava/lang/String;

    .line 292
    .line 293
    .line 294
    move-result-object v1

    .line 295
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 296
    .line 297
    .line 298
    move-result v0

    .line 299
    if-eqz v0, :cond_5

    .line 300
    .line 301
    iget-object v0, p0, Lcom/join/mgps/activity/MGMainActivity$p0;->b:Lcom/join/mgps/activity/MGMainActivity;

    .line 302
    .line 303
    invoke-static {v0}, Lcom/join/mgps/activity/MGMainActivity;->access$200(Lcom/join/mgps/activity/MGMainActivity;)Landroid/content/Context;

    .line 304
    .line 305
    .line 306
    move-result-object v0

    .line 307
    invoke-static {v0}, Lcom/join/mgps/activity/message/MessageMainActivity_;->intent(Landroid/content/Context;)Lcom/join/mgps/activity/message/MessageMainActivity_$f;

    .line 308
    .line 309
    .line 310
    move-result-object v0

    .line 311
    invoke-virtual {v0, v4}, Lcom/join/mgps/activity/message/MessageMainActivity_$f;->d(Z)Lcom/join/mgps/activity/message/MessageMainActivity_$f;

    .line 312
    .line 313
    .line 314
    move-result-object v0

    .line 315
    invoke-virtual {v0, v2}, Lcom/join/mgps/activity/message/MessageMainActivity_$f;->a(I)Lcom/join/mgps/activity/message/MessageMainActivity_$f;

    .line 316
    .line 317
    .line 318
    move-result-object v0

    .line 319
    invoke-virtual {v0, v3}, Lcom/join/mgps/activity/message/MessageMainActivity_$f;->c(Z)Lcom/join/mgps/activity/message/MessageMainActivity_$f;

    .line 320
    .line 321
    .line 322
    move-result-object v0

    .line 323
    invoke-virtual {v0}, Lorg/androidannotations/api/builder/a;->start()Lorg/androidannotations/api/builder/f;

    .line 324
    .line 325
    .line 326
    :cond_5
    :goto_0
    iget-object v0, p0, Lcom/join/mgps/activity/MGMainActivity$p0;->b:Lcom/join/mgps/activity/MGMainActivity;

    .line 327
    .line 328
    invoke-virtual {v0}, Lcom/join/mgps/activity/MGMainActivity;->hideRedPoint()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 329
    .line 330
    .line 331
    goto :goto_1

    .line 332
    :catch_0
    move-exception v0

    .line 333
    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 334
    .line 335
    .line 336
    :goto_1
    return-void
.end method
