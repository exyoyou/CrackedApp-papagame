.class Lcom/join/mgps/activity/message/c$f;
.super Landroid/widget/BaseAdapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/join/mgps/activity/message/c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "f"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/join/mgps/activity/message/c$f$f;,
        Lcom/join/mgps/activity/message/c$f$e;,
        Lcom/join/mgps/activity/message/c$f$i;,
        Lcom/join/mgps/activity/message/c$f$g;,
        Lcom/join/mgps/activity/message/c$f$h;
    }
.end annotation


# instance fields
.field b:Landroid/content/Context;

.field final synthetic c:Lcom/join/mgps/activity/message/c;


# direct methods
.method public constructor <init>(Lcom/join/mgps/activity/message/c;Landroid/content/Context;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x0
        }
        names = {
            "this$0",
            "c"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/join/mgps/activity/message/c$f;->c:Lcom/join/mgps/activity/message/c;

    .line 2
    .line 3
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 4
    .line 5
    .line 6
    iput-object p2, p0, Lcom/join/mgps/activity/message/c$f;->b:Landroid/content/Context;

    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/message/c$f;->c:Lcom/join/mgps/activity/message/c;

    .line 2
    .line 3
    iget-object v0, v0, Lcom/join/mgps/activity/message/c;->s:Ljava/util/List;

    .line 4
    .line 5
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    return v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "position"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/message/c$f;->c:Lcom/join/mgps/activity/message/c;

    .line 2
    .line 3
    iget-object v0, v0, Lcom/join/mgps/activity/message/c;->s:Ljava/util/List;

    .line 4
    .line 5
    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 6
    .line 7
    .line 8
    move-result-object p1

    .line 9
    return-object p1
.end method

.method public getItemId(I)J
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "position"
        }
    .end annotation

    int-to-long v0, p1

    return-wide v0
.end method

.method public getItemViewType(I)I
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "position"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/message/c$f;->c:Lcom/join/mgps/activity/message/c;

    .line 2
    .line 3
    iget-object v0, v0, Lcom/join/mgps/activity/message/c;->s:Ljava/util/List;

    .line 4
    .line 5
    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 6
    .line 7
    .line 8
    move-result-object p1

    .line 9
    check-cast p1, Lcom/join/mgps/activity/message/c$g;

    .line 10
    .line 11
    iget p1, p1, Lcom/join/mgps/activity/message/c$g;->b:I

    .line 12
    .line 13
    return p1
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 17
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "position",
            "convertView",
            "parent"
        }
    .end annotation

    .line 1
    move-object/from16 v1, p0

    .line 2
    .line 3
    move/from16 v0, p1

    .line 4
    .line 5
    invoke-virtual/range {p0 .. p1}, Lcom/join/mgps/activity/message/c$f;->getItemViewType(I)I

    .line 6
    .line 7
    .line 8
    move-result v2

    .line 9
    const/4 v3, 0x0

    .line 10
    const/4 v4, 0x1

    .line 11
    if-eq v2, v4, :cond_10

    .line 12
    .line 13
    const/4 v5, 0x2

    .line 14
    const-string v6, ":"

    .line 15
    .line 16
    const/4 v7, 0x0

    .line 17
    if-eq v2, v5, :cond_9

    .line 18
    .line 19
    const/4 v5, 0x3

    .line 20
    const-string v8, "@"

    .line 21
    .line 22
    if-eq v2, v5, :cond_6

    .line 23
    .line 24
    const/4 v5, 0x4

    .line 25
    if-eq v2, v5, :cond_4

    .line 26
    .line 27
    const/4 v5, 0x5

    .line 28
    if-eq v2, v5, :cond_0

    .line 29
    .line 30
    goto/16 :goto_a

    .line 31
    .line 32
    :cond_0
    if-nez p2, :cond_1

    .line 33
    .line 34
    iget-object v2, v1, Lcom/join/mgps/activity/message/c$f;->b:Landroid/content/Context;

    .line 35
    .line 36
    invoke-static {v2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    .line 37
    .line 38
    .line 39
    move-result-object v2

    .line 40
    const v5, 0x7f0d0175

    .line 41
    .line 42
    .line 43
    invoke-virtual {v2, v5, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 44
    .line 45
    .line 46
    move-result-object v2

    .line 47
    new-instance v3, Lcom/join/mgps/activity/message/c$f$h;

    .line 48
    .line 49
    invoke-direct {v3, v1}, Lcom/join/mgps/activity/message/c$f$h;-><init>(Lcom/join/mgps/activity/message/c$f;)V

    .line 50
    .line 51
    .line 52
    const v5, 0x7f0a0f23

    .line 53
    .line 54
    .line 55
    invoke-virtual {v2, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 56
    .line 57
    .line 58
    move-result-object v5

    .line 59
    check-cast v5, Landroid/widget/LinearLayout;

    .line 60
    .line 61
    iput-object v5, v3, Lcom/join/mgps/activity/message/c$f$h;->a:Landroid/widget/LinearLayout;

    .line 62
    .line 63
    const v5, 0x7f0a19f9

    .line 64
    .line 65
    .line 66
    invoke-virtual {v2, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 67
    .line 68
    .line 69
    move-result-object v5

    .line 70
    check-cast v5, Landroid/widget/TextView;

    .line 71
    .line 72
    iput-object v5, v3, Lcom/join/mgps/activity/message/c$f$h;->b:Landroid/widget/TextView;

    .line 73
    .line 74
    invoke-virtual {v2, v3}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 75
    .line 76
    .line 77
    goto :goto_0

    .line 78
    :cond_1
    invoke-virtual/range {p2 .. p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    .line 79
    .line 80
    .line 81
    move-result-object v2

    .line 82
    move-object v3, v2

    .line 83
    check-cast v3, Lcom/join/mgps/activity/message/c$f$h;

    .line 84
    .line 85
    move-object/from16 v2, p2

    .line 86
    .line 87
    :goto_0
    iget-object v5, v1, Lcom/join/mgps/activity/message/c$f;->c:Lcom/join/mgps/activity/message/c;

    .line 88
    .line 89
    iget-object v5, v5, Lcom/join/mgps/activity/message/c;->s:Ljava/util/List;

    .line 90
    .line 91
    invoke-interface {v5, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 92
    .line 93
    .line 94
    move-result-object v0

    .line 95
    check-cast v0, Lcom/join/mgps/activity/message/c$g;

    .line 96
    .line 97
    iget-object v0, v0, Lcom/join/mgps/activity/message/c$g;->a:Ljava/lang/Object;

    .line 98
    .line 99
    check-cast v0, Lcom/join/mgps/dto/GameReplyMessageListBean$MessagesBean$DataBean;

    .line 100
    .line 101
    invoke-virtual {v0}, Lcom/join/mgps/dto/GameReplyMessageListBean$MessagesBean$DataBean;->getOriginal_text()Ljava/lang/String;

    .line 102
    .line 103
    .line 104
    move-result-object v5

    .line 105
    invoke-virtual {v5, v8}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 106
    .line 107
    .line 108
    move-result v5

    .line 109
    const-string v9, "\u539f\u6587\uff1a"

    .line 110
    .line 111
    if-eqz v5, :cond_3

    .line 112
    .line 113
    invoke-virtual {v0}, Lcom/join/mgps/dto/GameReplyMessageListBean$MessagesBean$DataBean;->getOriginal_text()Ljava/lang/String;

    .line 114
    .line 115
    .line 116
    move-result-object v5

    .line 117
    invoke-virtual {v5, v7, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 118
    .line 119
    .line 120
    move-result-object v5

    .line 121
    invoke-virtual {v5, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 122
    .line 123
    .line 124
    move-result v5

    .line 125
    if-eqz v5, :cond_3

    .line 126
    .line 127
    invoke-virtual {v0}, Lcom/join/mgps/dto/GameReplyMessageListBean$MessagesBean$DataBean;->getOriginal_text()Ljava/lang/String;

    .line 128
    .line 129
    .line 130
    move-result-object v5

    .line 131
    invoke-virtual {v5, v6}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    .line 132
    .line 133
    .line 134
    move-result-object v5

    .line 135
    array-length v6, v5

    .line 136
    if-le v6, v4, :cond_2

    .line 137
    .line 138
    aget-object v4, v5, v4

    .line 139
    .line 140
    goto :goto_1

    .line 141
    :cond_2
    aget-object v4, v5, v7

    .line 142
    .line 143
    :goto_1
    iget-object v5, v3, Lcom/join/mgps/activity/message/c$f$h;->b:Landroid/widget/TextView;

    .line 144
    .line 145
    new-instance v6, Ljava/lang/StringBuilder;

    .line 146
    .line 147
    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    .line 148
    .line 149
    .line 150
    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 151
    .line 152
    .line 153
    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 154
    .line 155
    .line 156
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 157
    .line 158
    .line 159
    move-result-object v4

    .line 160
    invoke-virtual {v5, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 161
    .line 162
    .line 163
    goto :goto_2

    .line 164
    :cond_3
    iget-object v4, v3, Lcom/join/mgps/activity/message/c$f$h;->b:Landroid/widget/TextView;

    .line 165
    .line 166
    new-instance v5, Ljava/lang/StringBuilder;

    .line 167
    .line 168
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 169
    .line 170
    .line 171
    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 172
    .line 173
    .line 174
    invoke-virtual {v0}, Lcom/join/mgps/dto/GameReplyMessageListBean$MessagesBean$DataBean;->getOriginal_text()Ljava/lang/String;

    .line 175
    .line 176
    .line 177
    move-result-object v6

    .line 178
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 179
    .line 180
    .line 181
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 182
    .line 183
    .line 184
    move-result-object v5

    .line 185
    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 186
    .line 187
    .line 188
    :goto_2
    iget-object v3, v3, Lcom/join/mgps/activity/message/c$f$h;->a:Landroid/widget/LinearLayout;

    .line 189
    .line 190
    new-instance v4, Lcom/join/mgps/activity/message/c$f$d;

    .line 191
    .line 192
    invoke-direct {v4, v1, v0}, Lcom/join/mgps/activity/message/c$f$d;-><init>(Lcom/join/mgps/activity/message/c$f;Lcom/join/mgps/dto/GameReplyMessageListBean$MessagesBean$DataBean;)V

    .line 193
    .line 194
    .line 195
    invoke-virtual {v3, v4}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 196
    .line 197
    .line 198
    goto/16 :goto_b

    .line 199
    .line 200
    :cond_4
    if-nez p2, :cond_5

    .line 201
    .line 202
    iget-object v2, v1, Lcom/join/mgps/activity/message/c$f;->b:Landroid/content/Context;

    .line 203
    .line 204
    invoke-static {v2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    .line 205
    .line 206
    .line 207
    move-result-object v2

    .line 208
    const v5, 0x7f0d0174

    .line 209
    .line 210
    .line 211
    invoke-virtual {v2, v5, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 212
    .line 213
    .line 214
    move-result-object v2

    .line 215
    new-instance v3, Lcom/join/mgps/activity/message/c$f$g;

    .line 216
    .line 217
    invoke-direct {v3, v1}, Lcom/join/mgps/activity/message/c$f$g;-><init>(Lcom/join/mgps/activity/message/c$f;)V

    .line 218
    .line 219
    .line 220
    const v5, 0x7f0a19c1

    .line 221
    .line 222
    .line 223
    invoke-virtual {v2, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 224
    .line 225
    .line 226
    move-result-object v5

    .line 227
    check-cast v5, Landroid/widget/TextView;

    .line 228
    .line 229
    iput-object v5, v3, Lcom/join/mgps/activity/message/c$f$g;->a:Landroid/widget/TextView;

    .line 230
    .line 231
    const v5, 0x7f0a001a

    .line 232
    .line 233
    .line 234
    invoke-virtual {v2, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 235
    .line 236
    .line 237
    move-result-object v5

    .line 238
    check-cast v5, Landroid/widget/LinearLayout;

    .line 239
    .line 240
    iput-object v5, v3, Lcom/join/mgps/activity/message/c$f$g;->b:Landroid/widget/LinearLayout;

    .line 241
    .line 242
    invoke-virtual {v2, v3}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 243
    .line 244
    .line 245
    goto :goto_3

    .line 246
    :cond_5
    invoke-virtual/range {p2 .. p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    .line 247
    .line 248
    .line 249
    move-result-object v2

    .line 250
    move-object v3, v2

    .line 251
    check-cast v3, Lcom/join/mgps/activity/message/c$f$g;

    .line 252
    .line 253
    move-object/from16 v2, p2

    .line 254
    .line 255
    :goto_3
    iget-object v5, v1, Lcom/join/mgps/activity/message/c$f;->c:Lcom/join/mgps/activity/message/c;

    .line 256
    .line 257
    iget-object v5, v5, Lcom/join/mgps/activity/message/c;->s:Ljava/util/List;

    .line 258
    .line 259
    invoke-interface {v5, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 260
    .line 261
    .line 262
    move-result-object v0

    .line 263
    check-cast v0, Lcom/join/mgps/activity/message/c$g;

    .line 264
    .line 265
    iget-object v0, v0, Lcom/join/mgps/activity/message/c$g;->a:Ljava/lang/Object;

    .line 266
    .line 267
    check-cast v0, Lcom/join/mgps/dto/GameReplyMessageListBean$MessagesBean$DataBean;

    .line 268
    .line 269
    iget-object v5, v3, Lcom/join/mgps/activity/message/c$f$g;->a:Landroid/widget/TextView;

    .line 270
    .line 271
    invoke-virtual {v0}, Lcom/join/mgps/dto/GameReplyMessageListBean$MessagesBean$DataBean;->getCurrent_reply_text()Ljava/lang/String;

    .line 272
    .line 273
    .line 274
    move-result-object v7

    .line 275
    invoke-virtual {v0}, Lcom/join/mgps/dto/GameReplyMessageListBean$MessagesBean$DataBean;->getCurrent_reply_text()Ljava/lang/String;

    .line 276
    .line 277
    .line 278
    move-result-object v8

    .line 279
    invoke-virtual {v8, v6}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    .line 280
    .line 281
    .line 282
    move-result v6

    .line 283
    add-int/2addr v6, v4

    .line 284
    invoke-virtual {v0}, Lcom/join/mgps/dto/GameReplyMessageListBean$MessagesBean$DataBean;->getCurrent_reply_text()Ljava/lang/String;

    .line 285
    .line 286
    .line 287
    move-result-object v4

    .line 288
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    .line 289
    .line 290
    .line 291
    move-result v4

    .line 292
    invoke-virtual {v7, v6, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 293
    .line 294
    .line 295
    move-result-object v4

    .line 296
    invoke-virtual {v5, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 297
    .line 298
    .line 299
    iget-object v3, v3, Lcom/join/mgps/activity/message/c$f$g;->b:Landroid/widget/LinearLayout;

    .line 300
    .line 301
    new-instance v4, Lcom/join/mgps/activity/message/c$f$c;

    .line 302
    .line 303
    invoke-direct {v4, v1, v0}, Lcom/join/mgps/activity/message/c$f$c;-><init>(Lcom/join/mgps/activity/message/c$f;Lcom/join/mgps/dto/GameReplyMessageListBean$MessagesBean$DataBean;)V

    .line 304
    .line 305
    .line 306
    invoke-virtual {v3, v4}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 307
    .line 308
    .line 309
    goto/16 :goto_b

    .line 310
    .line 311
    :cond_6
    if-nez p2, :cond_7

    .line 312
    .line 313
    iget-object v2, v1, Lcom/join/mgps/activity/message/c$f;->b:Landroid/content/Context;

    .line 314
    .line 315
    invoke-static {v2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    .line 316
    .line 317
    .line 318
    move-result-object v2

    .line 319
    const v5, 0x7f0d0177

    .line 320
    .line 321
    .line 322
    invoke-virtual {v2, v5, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 323
    .line 324
    .line 325
    move-result-object v2

    .line 326
    new-instance v3, Lcom/join/mgps/activity/message/c$f$i;

    .line 327
    .line 328
    invoke-direct {v3, v1}, Lcom/join/mgps/activity/message/c$f$i;-><init>(Lcom/join/mgps/activity/message/c$f;)V

    .line 329
    .line 330
    .line 331
    const v5, 0x7f0a1371

    .line 332
    .line 333
    .line 334
    invoke-virtual {v2, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 335
    .line 336
    .line 337
    move-result-object v5

    .line 338
    check-cast v5, Landroid/widget/TextView;

    .line 339
    .line 340
    iput-object v5, v3, Lcom/join/mgps/activity/message/c$f$i;->a:Landroid/widget/TextView;

    .line 341
    .line 342
    const v5, 0x7f0a13f5

    .line 343
    .line 344
    .line 345
    invoke-virtual {v2, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 346
    .line 347
    .line 348
    move-result-object v5

    .line 349
    check-cast v5, Landroid/widget/RelativeLayout;

    .line 350
    .line 351
    iput-object v5, v3, Lcom/join/mgps/activity/message/c$f$i;->b:Landroid/widget/RelativeLayout;

    .line 352
    .line 353
    invoke-virtual {v2, v3}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 354
    .line 355
    .line 356
    goto :goto_4

    .line 357
    :cond_7
    invoke-virtual/range {p2 .. p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    .line 358
    .line 359
    .line 360
    move-result-object v2

    .line 361
    move-object v3, v2

    .line 362
    check-cast v3, Lcom/join/mgps/activity/message/c$f$i;

    .line 363
    .line 364
    move-object/from16 v2, p2

    .line 365
    .line 366
    :goto_4
    iget-object v5, v1, Lcom/join/mgps/activity/message/c$f;->c:Lcom/join/mgps/activity/message/c;

    .line 367
    .line 368
    iget-object v5, v5, Lcom/join/mgps/activity/message/c;->s:Ljava/util/List;

    .line 369
    .line 370
    invoke-interface {v5, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 371
    .line 372
    .line 373
    move-result-object v0

    .line 374
    check-cast v0, Lcom/join/mgps/activity/message/c$g;

    .line 375
    .line 376
    iget-object v0, v0, Lcom/join/mgps/activity/message/c$g;->a:Ljava/lang/Object;

    .line 377
    .line 378
    move-object v5, v0

    .line 379
    check-cast v5, Lcom/join/mgps/dto/GameReplyMessageListBean$MessagesBean$DataBean;

    .line 380
    .line 381
    :try_start_0
    invoke-virtual {v5}, Lcom/join/mgps/dto/GameReplyMessageListBean$MessagesBean$DataBean;->getReply_sub()Lcom/join/mgps/dto/GameReplyMessageListBean$MessagesBean$DataBean$ReplySubBean;

    .line 382
    .line 383
    .line 384
    move-result-object v0

    .line 385
    invoke-virtual {v0}, Lcom/join/mgps/dto/GameReplyMessageListBean$MessagesBean$DataBean$ReplySubBean;->getReply_text()Ljava/lang/String;

    .line 386
    .line 387
    .line 388
    move-result-object v0

    .line 389
    invoke-virtual {v0, v8}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 390
    .line 391
    .line 392
    move-result v0

    .line 393
    if-eqz v0, :cond_8

    .line 394
    .line 395
    invoke-virtual {v5}, Lcom/join/mgps/dto/GameReplyMessageListBean$MessagesBean$DataBean;->getReply_sub()Lcom/join/mgps/dto/GameReplyMessageListBean$MessagesBean$DataBean$ReplySubBean;

    .line 396
    .line 397
    .line 398
    move-result-object v0

    .line 399
    invoke-virtual {v0}, Lcom/join/mgps/dto/GameReplyMessageListBean$MessagesBean$DataBean$ReplySubBean;->getReply_text()Ljava/lang/String;

    .line 400
    .line 401
    .line 402
    move-result-object v0

    .line 403
    invoke-virtual {v0, v8}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    .line 404
    .line 405
    .line 406
    move-result-object v0

    .line 407
    aget-object v0, v0, v4

    .line 408
    .line 409
    invoke-virtual {v5}, Lcom/join/mgps/dto/GameReplyMessageListBean$MessagesBean$DataBean;->getReply_sub()Lcom/join/mgps/dto/GameReplyMessageListBean$MessagesBean$DataBean$ReplySubBean;

    .line 410
    .line 411
    .line 412
    move-result-object v9

    .line 413
    invoke-virtual {v9}, Lcom/join/mgps/dto/GameReplyMessageListBean$MessagesBean$DataBean$ReplySubBean;->getReply_text()Ljava/lang/String;

    .line 414
    .line 415
    .line 416
    move-result-object v9

    .line 417
    invoke-virtual {v9, v8}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    .line 418
    .line 419
    .line 420
    move-result-object v8

    .line 421
    aget-object v7, v8, v7

    .line 422
    .line 423
    invoke-virtual {v0, v6}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    .line 424
    .line 425
    .line 426
    move-result-object v0

    .line 427
    aget-object v0, v0, v4

    .line 428
    .line 429
    iget-object v4, v3, Lcom/join/mgps/activity/message/c$f$i;->a:Landroid/widget/TextView;

    .line 430
    .line 431
    new-instance v6, Ljava/lang/StringBuilder;

    .line 432
    .line 433
    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    .line 434
    .line 435
    .line 436
    const-string v8, "<font color=\'#3CA4FD\'>"

    .line 437
    .line 438
    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 439
    .line 440
    .line 441
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 442
    .line 443
    .line 444
    const-string v7, "</font><font color=\'#000000\'>"

    .line 445
    .line 446
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 447
    .line 448
    .line 449
    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 450
    .line 451
    .line 452
    const-string v0, "</font>"

    .line 453
    .line 454
    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 455
    .line 456
    .line 457
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 458
    .line 459
    .line 460
    move-result-object v0

    .line 461
    invoke-static {v0}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    .line 462
    .line 463
    .line 464
    move-result-object v0

    .line 465
    invoke-virtual {v4, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 466
    .line 467
    .line 468
    goto :goto_5

    .line 469
    :cond_8
    iget-object v0, v3, Lcom/join/mgps/activity/message/c$f$i;->a:Landroid/widget/TextView;

    .line 470
    .line 471
    invoke-virtual {v5}, Lcom/join/mgps/dto/GameReplyMessageListBean$MessagesBean$DataBean;->getReply_sub()Lcom/join/mgps/dto/GameReplyMessageListBean$MessagesBean$DataBean$ReplySubBean;

    .line 472
    .line 473
    .line 474
    move-result-object v4

    .line 475
    invoke-virtual {v4}, Lcom/join/mgps/dto/GameReplyMessageListBean$MessagesBean$DataBean$ReplySubBean;->getReply_text()Ljava/lang/String;

    .line 476
    .line 477
    .line 478
    move-result-object v4

    .line 479
    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 480
    .line 481
    .line 482
    goto :goto_5

    .line 483
    :catch_0
    move-exception v0

    .line 484
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 485
    .line 486
    .line 487
    :goto_5
    iget-object v0, v3, Lcom/join/mgps/activity/message/c$f$i;->b:Landroid/widget/RelativeLayout;

    .line 488
    .line 489
    new-instance v3, Lcom/join/mgps/activity/message/c$f$b;

    .line 490
    .line 491
    invoke-direct {v3, v1, v5}, Lcom/join/mgps/activity/message/c$f$b;-><init>(Lcom/join/mgps/activity/message/c$f;Lcom/join/mgps/dto/GameReplyMessageListBean$MessagesBean$DataBean;)V

    .line 492
    .line 493
    .line 494
    invoke-virtual {v0, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 495
    .line 496
    .line 497
    goto/16 :goto_b

    .line 498
    .line 499
    :cond_9
    if-nez p2, :cond_a

    .line 500
    .line 501
    iget-object v2, v1, Lcom/join/mgps/activity/message/c$f;->b:Landroid/content/Context;

    .line 502
    .line 503
    invoke-static {v2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    .line 504
    .line 505
    .line 506
    move-result-object v2

    .line 507
    const v5, 0x7f0d0172

    .line 508
    .line 509
    .line 510
    invoke-virtual {v2, v5, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 511
    .line 512
    .line 513
    move-result-object v2

    .line 514
    new-instance v3, Lcom/join/mgps/activity/message/c$f$e;

    .line 515
    .line 516
    invoke-direct {v3, v1}, Lcom/join/mgps/activity/message/c$f$e;-><init>(Lcom/join/mgps/activity/message/c$f;)V

    .line 517
    .line 518
    .line 519
    const v5, 0x7f0a13e0

    .line 520
    .line 521
    .line 522
    invoke-virtual {v2, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 523
    .line 524
    .line 525
    move-result-object v5

    .line 526
    check-cast v5, Landroid/widget/RelativeLayout;

    .line 527
    .line 528
    iput-object v5, v3, Lcom/join/mgps/activity/message/c$f$e;->a:Landroid/widget/RelativeLayout;

    .line 529
    .line 530
    const v5, 0x7f0a15aa

    .line 531
    .line 532
    .line 533
    invoke-virtual {v2, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 534
    .line 535
    .line 536
    move-result-object v5

    .line 537
    check-cast v5, Lcom/facebook/drawee/view/SimpleDraweeView;

    .line 538
    .line 539
    iput-object v5, v3, Lcom/join/mgps/activity/message/c$f$e;->b:Lcom/facebook/drawee/view/SimpleDraweeView;

    .line 540
    .line 541
    const v5, 0x7f0a19d3

    .line 542
    .line 543
    .line 544
    invoke-virtual {v2, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 545
    .line 546
    .line 547
    move-result-object v5

    .line 548
    check-cast v5, Landroid/widget/TextView;

    .line 549
    .line 550
    iput-object v5, v3, Lcom/join/mgps/activity/message/c$f$e;->c:Landroid/widget/TextView;

    .line 551
    .line 552
    const v5, 0x7f0a1a0e

    .line 553
    .line 554
    .line 555
    invoke-virtual {v2, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 556
    .line 557
    .line 558
    move-result-object v5

    .line 559
    check-cast v5, Landroid/widget/TextView;

    .line 560
    .line 561
    iput-object v5, v3, Lcom/join/mgps/activity/message/c$f$e;->e:Landroid/widget/TextView;

    .line 562
    .line 563
    const v5, 0x7f0a1a45

    .line 564
    .line 565
    .line 566
    invoke-virtual {v2, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 567
    .line 568
    .line 569
    move-result-object v5

    .line 570
    check-cast v5, Landroid/widget/TextView;

    .line 571
    .line 572
    iput-object v5, v3, Lcom/join/mgps/activity/message/c$f$e;->d:Landroid/widget/TextView;

    .line 573
    .line 574
    invoke-virtual {v2, v3}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 575
    .line 576
    .line 577
    goto :goto_6

    .line 578
    :cond_a
    invoke-virtual/range {p2 .. p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    .line 579
    .line 580
    .line 581
    move-result-object v2

    .line 582
    move-object v3, v2

    .line 583
    check-cast v3, Lcom/join/mgps/activity/message/c$f$e;

    .line 584
    .line 585
    move-object/from16 v2, p2

    .line 586
    .line 587
    :goto_6
    iget-object v5, v1, Lcom/join/mgps/activity/message/c$f;->c:Lcom/join/mgps/activity/message/c;

    .line 588
    .line 589
    iget-object v5, v5, Lcom/join/mgps/activity/message/c;->s:Ljava/util/List;

    .line 590
    .line 591
    invoke-interface {v5, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 592
    .line 593
    .line 594
    move-result-object v0

    .line 595
    check-cast v0, Lcom/join/mgps/activity/message/c$g;

    .line 596
    .line 597
    iget-object v0, v0, Lcom/join/mgps/activity/message/c$g;->a:Ljava/lang/Object;

    .line 598
    .line 599
    check-cast v0, Lcom/join/mgps/dto/GameReplyMessageListBean$MessagesBean$DataBean;

    .line 600
    .line 601
    iget-object v5, v3, Lcom/join/mgps/activity/message/c$f$e;->b:Lcom/facebook/drawee/view/SimpleDraweeView;

    .line 602
    .line 603
    invoke-virtual {v0}, Lcom/join/mgps/dto/GameReplyMessageListBean$MessagesBean$DataBean;->getCurrent_reply_user_ico()Ljava/lang/String;

    .line 604
    .line 605
    .line 606
    move-result-object v8

    .line 607
    invoke-virtual {v5, v8}, Lcom/facebook/drawee/view/SimpleDraweeView;->setImageURI(Ljava/lang/String;)V

    .line 608
    .line 609
    .line 610
    iget-object v5, v3, Lcom/join/mgps/activity/message/c$f$e;->c:Landroid/widget/TextView;

    .line 611
    .line 612
    invoke-virtual {v0}, Lcom/join/mgps/dto/GameReplyMessageListBean$MessagesBean$DataBean;->getCurrent_reply_title()Ljava/lang/String;

    .line 613
    .line 614
    .line 615
    move-result-object v8

    .line 616
    const-string v9, " "

    .line 617
    .line 618
    invoke-virtual {v8, v9}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    .line 619
    .line 620
    .line 621
    move-result-object v8

    .line 622
    aget-object v8, v8, v7

    .line 623
    .line 624
    invoke-virtual {v5, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 625
    .line 626
    .line 627
    iget-object v5, v3, Lcom/join/mgps/activity/message/c$f$e;->e:Landroid/widget/TextView;

    .line 628
    .line 629
    invoke-virtual {v0}, Lcom/join/mgps/dto/GameReplyMessageListBean$MessagesBean$DataBean;->getCurrent_reply_title()Ljava/lang/String;

    .line 630
    .line 631
    .line 632
    move-result-object v8

    .line 633
    invoke-virtual {v8, v9}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    .line 634
    .line 635
    .line 636
    move-result-object v8

    .line 637
    aget-object v8, v8, v4

    .line 638
    .line 639
    invoke-virtual {v5, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 640
    .line 641
    .line 642
    new-instance v5, Ljava/text/SimpleDateFormat;

    .line 643
    .line 644
    const-string v8, "yyyy\u5e74MM\u6708dd\u65e5 HH:mm:ss"

    .line 645
    .line 646
    invoke-direct {v5, v8}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 647
    .line 648
    .line 649
    new-instance v8, Ljava/util/Date;

    .line 650
    .line 651
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 652
    .line 653
    .line 654
    move-result-wide v10

    .line 655
    invoke-direct {v8, v10, v11}, Ljava/util/Date;-><init>(J)V

    .line 656
    .line 657
    .line 658
    new-instance v10, Ljava/util/Date;

    .line 659
    .line 660
    invoke-virtual {v0}, Lcom/join/mgps/dto/GameReplyMessageListBean$MessagesBean$DataBean;->getCurrent_reply_time()J

    .line 661
    .line 662
    .line 663
    move-result-wide v11

    .line 664
    const-wide/16 v13, 0x3e8

    .line 665
    .line 666
    mul-long v11, v11, v13

    .line 667
    .line 668
    invoke-direct {v10, v11, v12}, Ljava/util/Date;-><init>(J)V

    .line 669
    .line 670
    .line 671
    invoke-virtual {v5, v8}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    .line 672
    .line 673
    .line 674
    move-result-object v8

    .line 675
    invoke-virtual {v5, v10}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    .line 676
    .line 677
    .line 678
    move-result-object v5

    .line 679
    const-string v10, "\u65e5"

    .line 680
    .line 681
    const-string v11, "\u5e74"

    .line 682
    .line 683
    const-string v12, "\u6708"

    .line 684
    .line 685
    const-string v13, ""

    .line 686
    .line 687
    if-eqz v5, :cond_b

    .line 688
    .line 689
    invoke-virtual {v5, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 690
    .line 691
    .line 692
    move-result v14

    .line 693
    if-nez v14, :cond_b

    .line 694
    .line 695
    invoke-virtual {v5, v11}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    .line 696
    .line 697
    .line 698
    move-result v13

    .line 699
    invoke-virtual {v5, v7, v13}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 700
    .line 701
    .line 702
    move-result-object v13

    .line 703
    invoke-virtual {v5, v11}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    .line 704
    .line 705
    .line 706
    move-result v14

    .line 707
    add-int/2addr v14, v4

    .line 708
    invoke-virtual {v5, v12}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    .line 709
    .line 710
    .line 711
    move-result v15

    .line 712
    invoke-virtual {v5, v14, v15}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 713
    .line 714
    .line 715
    move-result-object v14

    .line 716
    invoke-virtual {v5, v12}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    .line 717
    .line 718
    .line 719
    move-result v15

    .line 720
    add-int/2addr v15, v4

    .line 721
    invoke-virtual {v5, v10}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    .line 722
    .line 723
    .line 724
    move-result v4

    .line 725
    invoke-virtual {v5, v15, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 726
    .line 727
    .line 728
    move-result-object v4

    .line 729
    invoke-virtual {v8, v11}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    .line 730
    .line 731
    .line 732
    move-result v15

    .line 733
    invoke-virtual {v8, v7, v15}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 734
    .line 735
    .line 736
    move-result-object v7

    .line 737
    invoke-virtual {v8, v11}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    .line 738
    .line 739
    .line 740
    move-result v15

    .line 741
    const/16 v16, 0x1

    .line 742
    .line 743
    add-int/lit8 v15, v15, 0x1

    .line 744
    .line 745
    move-object/from16 p2, v2

    .line 746
    .line 747
    invoke-virtual {v8, v12}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    .line 748
    .line 749
    .line 750
    move-result v2

    .line 751
    invoke-virtual {v8, v15, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 752
    .line 753
    .line 754
    move-result-object v2

    .line 755
    invoke-virtual {v8, v12}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    .line 756
    .line 757
    .line 758
    move-result v15

    .line 759
    add-int/lit8 v15, v15, 0x1

    .line 760
    .line 761
    move-object/from16 p1, v2

    .line 762
    .line 763
    invoke-virtual {v8, v10}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    .line 764
    .line 765
    .line 766
    move-result v2

    .line 767
    invoke-virtual {v8, v15, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 768
    .line 769
    .line 770
    move-result-object v2

    .line 771
    move-object v8, v2

    .line 772
    move-object/from16 v2, p1

    .line 773
    .line 774
    goto :goto_7

    .line 775
    :cond_b
    move-object/from16 p2, v2

    .line 776
    .line 777
    move-object v2, v13

    .line 778
    move-object v4, v2

    .line 779
    move-object v7, v4

    .line 780
    move-object v8, v7

    .line 781
    move-object v14, v8

    .line 782
    :goto_7
    invoke-virtual {v13, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 783
    .line 784
    .line 785
    move-result v7

    .line 786
    if-eqz v7, :cond_f

    .line 787
    .line 788
    invoke-virtual {v14, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 789
    .line 790
    .line 791
    move-result v2

    .line 792
    if-eqz v2, :cond_e

    .line 793
    .line 794
    invoke-virtual {v4, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 795
    .line 796
    .line 797
    move-result v2

    .line 798
    if-eqz v2, :cond_d

    .line 799
    .line 800
    invoke-virtual {v5, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 801
    .line 802
    .line 803
    move-result v2

    .line 804
    if-eqz v2, :cond_c

    .line 805
    .line 806
    invoke-virtual {v5, v9}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    .line 807
    .line 808
    .line 809
    move-result v2

    .line 810
    const/4 v4, 0x1

    .line 811
    add-int/2addr v2, v4

    .line 812
    invoke-virtual {v5, v6}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    .line 813
    .line 814
    .line 815
    move-result v4

    .line 816
    invoke-virtual {v5, v2, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 817
    .line 818
    .line 819
    move-result-object v2

    .line 820
    goto :goto_8

    .line 821
    :cond_c
    const/4 v4, 0x1

    .line 822
    invoke-virtual {v5, v9}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    .line 823
    .line 824
    .line 825
    move-result v2

    .line 826
    add-int/2addr v2, v4

    .line 827
    const-string v4, "\u5206"

    .line 828
    .line 829
    invoke-virtual {v5, v4}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    .line 830
    .line 831
    .line 832
    move-result v4

    .line 833
    invoke-virtual {v5, v2, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 834
    .line 835
    .line 836
    move-result-object v2

    .line 837
    :goto_8
    iget-object v4, v3, Lcom/join/mgps/activity/message/c$f$e;->d:Landroid/widget/TextView;

    .line 838
    .line 839
    invoke-virtual {v4, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 840
    .line 841
    .line 842
    goto :goto_9

    .line 843
    :cond_d
    iget-object v2, v3, Lcom/join/mgps/activity/message/c$f$e;->d:Landroid/widget/TextView;

    .line 844
    .line 845
    new-instance v5, Ljava/lang/StringBuilder;

    .line 846
    .line 847
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 848
    .line 849
    .line 850
    invoke-virtual {v5, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 851
    .line 852
    .line 853
    invoke-virtual {v5, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 854
    .line 855
    .line 856
    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 857
    .line 858
    .line 859
    invoke-virtual {v5, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 860
    .line 861
    .line 862
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 863
    .line 864
    .line 865
    move-result-object v4

    .line 866
    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 867
    .line 868
    .line 869
    goto :goto_9

    .line 870
    :cond_e
    iget-object v2, v3, Lcom/join/mgps/activity/message/c$f$e;->d:Landroid/widget/TextView;

    .line 871
    .line 872
    new-instance v5, Ljava/lang/StringBuilder;

    .line 873
    .line 874
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 875
    .line 876
    .line 877
    invoke-virtual {v5, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 878
    .line 879
    .line 880
    invoke-virtual {v5, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 881
    .line 882
    .line 883
    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 884
    .line 885
    .line 886
    invoke-virtual {v5, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 887
    .line 888
    .line 889
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 890
    .line 891
    .line 892
    move-result-object v4

    .line 893
    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 894
    .line 895
    .line 896
    goto :goto_9

    .line 897
    :cond_f
    iget-object v2, v3, Lcom/join/mgps/activity/message/c$f$e;->d:Landroid/widget/TextView;

    .line 898
    .line 899
    new-instance v5, Ljava/lang/StringBuilder;

    .line 900
    .line 901
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 902
    .line 903
    .line 904
    invoke-virtual {v5, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 905
    .line 906
    .line 907
    invoke-virtual {v5, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 908
    .line 909
    .line 910
    invoke-virtual {v5, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 911
    .line 912
    .line 913
    invoke-virtual {v5, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 914
    .line 915
    .line 916
    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 917
    .line 918
    .line 919
    invoke-virtual {v5, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 920
    .line 921
    .line 922
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 923
    .line 924
    .line 925
    move-result-object v4

    .line 926
    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 927
    .line 928
    .line 929
    :goto_9
    iget-object v2, v3, Lcom/join/mgps/activity/message/c$f$e;->a:Landroid/widget/RelativeLayout;

    .line 930
    .line 931
    new-instance v3, Lcom/join/mgps/activity/message/c$f$a;

    .line 932
    .line 933
    invoke-direct {v3, v1, v0}, Lcom/join/mgps/activity/message/c$f$a;-><init>(Lcom/join/mgps/activity/message/c$f;Lcom/join/mgps/dto/GameReplyMessageListBean$MessagesBean$DataBean;)V

    .line 934
    .line 935
    .line 936
    invoke-virtual {v2, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 937
    .line 938
    .line 939
    goto :goto_a

    .line 940
    :cond_10
    if-nez p2, :cond_11

    .line 941
    .line 942
    iget-object v0, v1, Lcom/join/mgps/activity/message/c$f;->b:Landroid/content/Context;

    .line 943
    .line 944
    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    .line 945
    .line 946
    .line 947
    move-result-object v0

    .line 948
    const v2, 0x7f0d0173

    .line 949
    .line 950
    .line 951
    invoke-virtual {v0, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 952
    .line 953
    .line 954
    move-result-object v0

    .line 955
    new-instance v2, Lcom/join/mgps/activity/message/c$f$f;

    .line 956
    .line 957
    invoke-direct {v2, v1}, Lcom/join/mgps/activity/message/c$f$f;-><init>(Lcom/join/mgps/activity/message/c$f;)V

    .line 958
    .line 959
    .line 960
    invoke-virtual {v0, v2}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 961
    .line 962
    .line 963
    move-object v2, v0

    .line 964
    goto :goto_b

    .line 965
    :cond_11
    invoke-virtual/range {p2 .. p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    .line 966
    .line 967
    .line 968
    move-result-object v0

    .line 969
    check-cast v0, Lcom/join/mgps/activity/message/c$f$f;

    .line 970
    .line 971
    :goto_a
    move-object/from16 v2, p2

    .line 972
    .line 973
    :goto_b
    return-object v2
.end method

.method public getViewTypeCount()I
    .locals 1

    const/4 v0, 0x6

    return v0
.end method
