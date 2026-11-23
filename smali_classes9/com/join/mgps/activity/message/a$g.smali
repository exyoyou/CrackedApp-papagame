.class Lcom/join/mgps/activity/message/a$g;
.super Landroid/widget/BaseAdapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/join/mgps/activity/message/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "g"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/join/mgps/activity/message/a$g$f;,
        Lcom/join/mgps/activity/message/a$g$e;,
        Lcom/join/mgps/activity/message/a$g$i;,
        Lcom/join/mgps/activity/message/a$g$g;,
        Lcom/join/mgps/activity/message/a$g$h;
    }
.end annotation


# instance fields
.field b:Landroid/content/Context;

.field final synthetic c:Lcom/join/mgps/activity/message/a;


# direct methods
.method public constructor <init>(Lcom/join/mgps/activity/message/a;Landroid/content/Context;)V
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
    iput-object p1, p0, Lcom/join/mgps/activity/message/a$g;->c:Lcom/join/mgps/activity/message/a;

    .line 2
    .line 3
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 4
    .line 5
    .line 6
    iput-object p2, p0, Lcom/join/mgps/activity/message/a$g;->b:Landroid/content/Context;

    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/message/a$g;->c:Lcom/join/mgps/activity/message/a;

    .line 2
    .line 3
    iget-object v0, v0, Lcom/join/mgps/activity/message/a;->p:Ljava/util/List;

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
    iget-object v0, p0, Lcom/join/mgps/activity/message/a$g;->c:Lcom/join/mgps/activity/message/a;

    .line 2
    .line 3
    iget-object v0, v0, Lcom/join/mgps/activity/message/a;->p:Ljava/util/List;

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
    iget-object v0, p0, Lcom/join/mgps/activity/message/a$g;->c:Lcom/join/mgps/activity/message/a;

    .line 2
    .line 3
    iget-object v0, v0, Lcom/join/mgps/activity/message/a;->p:Ljava/util/List;

    .line 4
    .line 5
    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 6
    .line 7
    .line 8
    move-result-object p1

    .line 9
    check-cast p1, Lcom/join/mgps/activity/message/a$i;

    .line 10
    .line 11
    iget p1, p1, Lcom/join/mgps/activity/message/a$i;->b:I

    .line 12
    .line 13
    return p1
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 16
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
    move-object/from16 v0, p0

    .line 2
    .line 3
    move/from16 v1, p1

    .line 4
    .line 5
    invoke-virtual/range {p0 .. p1}, Lcom/join/mgps/activity/message/a$g;->getItemViewType(I)I

    .line 6
    .line 7
    .line 8
    move-result v2

    .line 9
    const/4 v3, 0x0

    .line 10
    const/4 v4, 0x1

    .line 11
    if-eq v2, v4, :cond_f

    .line 12
    .line 13
    const/4 v5, 0x2

    .line 14
    const/4 v6, 0x4

    .line 15
    const-string v7, ""

    .line 16
    .line 17
    if-eq v2, v5, :cond_7

    .line 18
    .line 19
    const/4 v4, 0x3

    .line 20
    if-eq v2, v4, :cond_5

    .line 21
    .line 22
    if-eq v2, v6, :cond_3

    .line 23
    .line 24
    const/4 v4, 0x5

    .line 25
    if-eq v2, v4, :cond_0

    .line 26
    .line 27
    goto/16 :goto_9

    .line 28
    .line 29
    :cond_0
    if-nez p2, :cond_1

    .line 30
    .line 31
    iget-object v2, v0, Lcom/join/mgps/activity/message/a$g;->b:Landroid/content/Context;

    .line 32
    .line 33
    invoke-static {v2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    .line 34
    .line 35
    .line 36
    move-result-object v2

    .line 37
    const v4, 0x7f0d0175

    .line 38
    .line 39
    .line 40
    invoke-virtual {v2, v4, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 41
    .line 42
    .line 43
    move-result-object v2

    .line 44
    new-instance v3, Lcom/join/mgps/activity/message/a$g$h;

    .line 45
    .line 46
    invoke-direct {v3, v0}, Lcom/join/mgps/activity/message/a$g$h;-><init>(Lcom/join/mgps/activity/message/a$g;)V

    .line 47
    .line 48
    .line 49
    const v4, 0x7f0a0f23

    .line 50
    .line 51
    .line 52
    invoke-virtual {v2, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 53
    .line 54
    .line 55
    move-result-object v4

    .line 56
    check-cast v4, Landroid/widget/LinearLayout;

    .line 57
    .line 58
    iput-object v4, v3, Lcom/join/mgps/activity/message/a$g$h;->a:Landroid/widget/LinearLayout;

    .line 59
    .line 60
    const v4, 0x7f0a19f9

    .line 61
    .line 62
    .line 63
    invoke-virtual {v2, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 64
    .line 65
    .line 66
    move-result-object v4

    .line 67
    check-cast v4, Landroid/widget/TextView;

    .line 68
    .line 69
    iput-object v4, v3, Lcom/join/mgps/activity/message/a$g$h;->b:Landroid/widget/TextView;

    .line 70
    .line 71
    invoke-virtual {v2, v3}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 72
    .line 73
    .line 74
    goto :goto_0

    .line 75
    :cond_1
    invoke-virtual/range {p2 .. p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    .line 76
    .line 77
    .line 78
    move-result-object v2

    .line 79
    move-object v3, v2

    .line 80
    check-cast v3, Lcom/join/mgps/activity/message/a$g$h;

    .line 81
    .line 82
    move-object/from16 v2, p2

    .line 83
    .line 84
    :goto_0
    iget-object v4, v0, Lcom/join/mgps/activity/message/a$g;->c:Lcom/join/mgps/activity/message/a;

    .line 85
    .line 86
    iget-object v4, v4, Lcom/join/mgps/activity/message/a;->p:Ljava/util/List;

    .line 87
    .line 88
    invoke-interface {v4, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 89
    .line 90
    .line 91
    move-result-object v1

    .line 92
    check-cast v1, Lcom/join/mgps/activity/message/a$i;

    .line 93
    .line 94
    iget-object v1, v1, Lcom/join/mgps/activity/message/a$i;->a:Ljava/lang/Object;

    .line 95
    .line 96
    check-cast v1, Lcom/join/mgps/dto/ForumBean$ForumPostsBean;

    .line 97
    .line 98
    invoke-virtual {v1}, Lcom/join/mgps/dto/ForumBean$ForumPostsBean;->getMessage()Ljava/lang/String;

    .line 99
    .line 100
    .line 101
    move-result-object v4

    .line 102
    if-eqz v4, :cond_2

    .line 103
    .line 104
    invoke-virtual {v1}, Lcom/join/mgps/dto/ForumBean$ForumPostsBean;->getSubject()Ljava/lang/String;

    .line 105
    .line 106
    .line 107
    move-result-object v4

    .line 108
    invoke-virtual {v4, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 109
    .line 110
    .line 111
    move-result v4

    .line 112
    if-nez v4, :cond_2

    .line 113
    .line 114
    invoke-virtual {v1}, Lcom/join/mgps/dto/ForumBean$ForumPostsBean;->getSubject()Ljava/lang/String;

    .line 115
    .line 116
    .line 117
    move-result-object v4

    .line 118
    goto :goto_1

    .line 119
    :cond_2
    invoke-virtual {v1}, Lcom/join/mgps/dto/ForumBean$ForumPostsBean;->getMessage()Ljava/lang/String;

    .line 120
    .line 121
    .line 122
    move-result-object v4

    .line 123
    :goto_1
    iget-object v5, v3, Lcom/join/mgps/activity/message/a$g$h;->b:Landroid/widget/TextView;

    .line 124
    .line 125
    new-instance v6, Ljava/lang/StringBuilder;

    .line 126
    .line 127
    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    .line 128
    .line 129
    .line 130
    const-string v7, "\u539f\u6587\uff1a"

    .line 131
    .line 132
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 133
    .line 134
    .line 135
    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 136
    .line 137
    .line 138
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 139
    .line 140
    .line 141
    move-result-object v4

    .line 142
    invoke-virtual {v5, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 143
    .line 144
    .line 145
    iget-object v3, v3, Lcom/join/mgps/activity/message/a$g$h;->a:Landroid/widget/LinearLayout;

    .line 146
    .line 147
    new-instance v4, Lcom/join/mgps/activity/message/a$g$d;

    .line 148
    .line 149
    invoke-direct {v4, v0, v1}, Lcom/join/mgps/activity/message/a$g$d;-><init>(Lcom/join/mgps/activity/message/a$g;Lcom/join/mgps/dto/ForumBean$ForumPostsBean;)V

    .line 150
    .line 151
    .line 152
    invoke-virtual {v3, v4}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 153
    .line 154
    .line 155
    goto/16 :goto_a

    .line 156
    .line 157
    :cond_3
    if-nez p2, :cond_4

    .line 158
    .line 159
    iget-object v2, v0, Lcom/join/mgps/activity/message/a$g;->b:Landroid/content/Context;

    .line 160
    .line 161
    invoke-static {v2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    .line 162
    .line 163
    .line 164
    move-result-object v2

    .line 165
    const v4, 0x7f0d0174

    .line 166
    .line 167
    .line 168
    invoke-virtual {v2, v4, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 169
    .line 170
    .line 171
    move-result-object v2

    .line 172
    new-instance v3, Lcom/join/mgps/activity/message/a$g$g;

    .line 173
    .line 174
    invoke-direct {v3, v0}, Lcom/join/mgps/activity/message/a$g$g;-><init>(Lcom/join/mgps/activity/message/a$g;)V

    .line 175
    .line 176
    .line 177
    const v4, 0x7f0a19c1

    .line 178
    .line 179
    .line 180
    invoke-virtual {v2, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 181
    .line 182
    .line 183
    move-result-object v4

    .line 184
    check-cast v4, Landroid/widget/TextView;

    .line 185
    .line 186
    iput-object v4, v3, Lcom/join/mgps/activity/message/a$g$g;->a:Landroid/widget/TextView;

    .line 187
    .line 188
    const v4, 0x7f0a001a

    .line 189
    .line 190
    .line 191
    invoke-virtual {v2, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 192
    .line 193
    .line 194
    move-result-object v4

    .line 195
    check-cast v4, Landroid/widget/LinearLayout;

    .line 196
    .line 197
    iput-object v4, v3, Lcom/join/mgps/activity/message/a$g$g;->b:Landroid/widget/LinearLayout;

    .line 198
    .line 199
    goto :goto_2

    .line 200
    :cond_4
    invoke-virtual/range {p2 .. p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    .line 201
    .line 202
    .line 203
    move-result-object v2

    .line 204
    move-object v3, v2

    .line 205
    check-cast v3, Lcom/join/mgps/activity/message/a$g$g;

    .line 206
    .line 207
    move-object/from16 v2, p2

    .line 208
    .line 209
    :goto_2
    iget-object v4, v0, Lcom/join/mgps/activity/message/a$g;->c:Lcom/join/mgps/activity/message/a;

    .line 210
    .line 211
    iget-object v4, v4, Lcom/join/mgps/activity/message/a;->p:Ljava/util/List;

    .line 212
    .line 213
    invoke-interface {v4, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 214
    .line 215
    .line 216
    move-result-object v1

    .line 217
    check-cast v1, Lcom/join/mgps/activity/message/a$i;

    .line 218
    .line 219
    iget-object v1, v1, Lcom/join/mgps/activity/message/a$i;->a:Ljava/lang/Object;

    .line 220
    .line 221
    check-cast v1, Lcom/join/mgps/dto/ForumProfileMessageBean;

    .line 222
    .line 223
    iget-object v4, v3, Lcom/join/mgps/activity/message/a$g$g;->a:Landroid/widget/TextView;

    .line 224
    .line 225
    invoke-virtual {v1}, Lcom/join/mgps/dto/ForumProfileMessageBean;->getMessage()Ljava/lang/String;

    .line 226
    .line 227
    .line 228
    move-result-object v5

    .line 229
    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 230
    .line 231
    .line 232
    invoke-virtual {v2, v3}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 233
    .line 234
    .line 235
    iget-object v4, v0, Lcom/join/mgps/activity/message/a$g;->c:Lcom/join/mgps/activity/message/a;

    .line 236
    .line 237
    iget-object v5, v3, Lcom/join/mgps/activity/message/a$g$g;->a:Landroid/widget/TextView;

    .line 238
    .line 239
    invoke-static {v4, v5}, Lcom/join/mgps/activity/message/a;->N(Lcom/join/mgps/activity/message/a;Landroid/widget/TextView;)V

    .line 240
    .line 241
    .line 242
    iget-object v3, v3, Lcom/join/mgps/activity/message/a$g$g;->b:Landroid/widget/LinearLayout;

    .line 243
    .line 244
    new-instance v4, Lcom/join/mgps/activity/message/a$g$c;

    .line 245
    .line 246
    invoke-direct {v4, v0, v1}, Lcom/join/mgps/activity/message/a$g$c;-><init>(Lcom/join/mgps/activity/message/a$g;Lcom/join/mgps/dto/ForumProfileMessageBean;)V

    .line 247
    .line 248
    .line 249
    invoke-virtual {v3, v4}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 250
    .line 251
    .line 252
    goto/16 :goto_a

    .line 253
    .line 254
    :cond_5
    if-nez p2, :cond_6

    .line 255
    .line 256
    iget-object v2, v0, Lcom/join/mgps/activity/message/a$g;->b:Landroid/content/Context;

    .line 257
    .line 258
    invoke-static {v2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    .line 259
    .line 260
    .line 261
    move-result-object v2

    .line 262
    const v4, 0x7f0d0177

    .line 263
    .line 264
    .line 265
    invoke-virtual {v2, v4, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 266
    .line 267
    .line 268
    move-result-object v2

    .line 269
    new-instance v3, Lcom/join/mgps/activity/message/a$g$i;

    .line 270
    .line 271
    invoke-direct {v3, v0}, Lcom/join/mgps/activity/message/a$g$i;-><init>(Lcom/join/mgps/activity/message/a$g;)V

    .line 272
    .line 273
    .line 274
    const v4, 0x7f0a1371

    .line 275
    .line 276
    .line 277
    invoke-virtual {v2, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 278
    .line 279
    .line 280
    move-result-object v4

    .line 281
    check-cast v4, Landroid/widget/TextView;

    .line 282
    .line 283
    iput-object v4, v3, Lcom/join/mgps/activity/message/a$g$i;->a:Landroid/widget/TextView;

    .line 284
    .line 285
    const v4, 0x7f0a13f5

    .line 286
    .line 287
    .line 288
    invoke-virtual {v2, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 289
    .line 290
    .line 291
    move-result-object v4

    .line 292
    check-cast v4, Landroid/widget/RelativeLayout;

    .line 293
    .line 294
    iput-object v4, v3, Lcom/join/mgps/activity/message/a$g$i;->b:Landroid/widget/RelativeLayout;

    .line 295
    .line 296
    invoke-virtual {v2, v3}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 297
    .line 298
    .line 299
    goto :goto_3

    .line 300
    :cond_6
    invoke-virtual/range {p2 .. p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    .line 301
    .line 302
    .line 303
    move-result-object v2

    .line 304
    move-object v3, v2

    .line 305
    check-cast v3, Lcom/join/mgps/activity/message/a$g$i;

    .line 306
    .line 307
    move-object/from16 v2, p2

    .line 308
    .line 309
    :goto_3
    iget-object v4, v0, Lcom/join/mgps/activity/message/a$g;->c:Lcom/join/mgps/activity/message/a;

    .line 310
    .line 311
    iget-object v4, v4, Lcom/join/mgps/activity/message/a;->p:Ljava/util/List;

    .line 312
    .line 313
    invoke-interface {v4, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 314
    .line 315
    .line 316
    move-result-object v1

    .line 317
    check-cast v1, Lcom/join/mgps/activity/message/a$i;

    .line 318
    .line 319
    iget-object v1, v1, Lcom/join/mgps/activity/message/a$i;->a:Ljava/lang/Object;

    .line 320
    .line 321
    check-cast v1, Lcom/join/mgps/dto/ForumProfileMessageBean;

    .line 322
    .line 323
    iget-object v4, v3, Lcom/join/mgps/activity/message/a$g$i;->a:Landroid/widget/TextView;

    .line 324
    .line 325
    new-instance v5, Ljava/lang/StringBuilder;

    .line 326
    .line 327
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 328
    .line 329
    .line 330
    const-string v6, "<font color=\'#3CA4FD\'>"

    .line 331
    .line 332
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 333
    .line 334
    .line 335
    invoke-virtual {v1}, Lcom/join/mgps/dto/ForumProfileMessageBean;->getReply()Lcom/join/mgps/dto/ForumBean$ForumCommentReplyBean;

    .line 336
    .line 337
    .line 338
    move-result-object v6

    .line 339
    invoke-virtual {v6}, Lcom/join/mgps/dto/ForumBean$ForumCommentReplyBean;->getNickname()Ljava/lang/String;

    .line 340
    .line 341
    .line 342
    move-result-object v6

    .line 343
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 344
    .line 345
    .line 346
    const-string v6, ":  </font><font color=\'#000000\'>"

    .line 347
    .line 348
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 349
    .line 350
    .line 351
    invoke-virtual {v1}, Lcom/join/mgps/dto/ForumProfileMessageBean;->getReply()Lcom/join/mgps/dto/ForumBean$ForumCommentReplyBean;

    .line 352
    .line 353
    .line 354
    move-result-object v6

    .line 355
    invoke-virtual {v6}, Lcom/join/mgps/dto/ForumBean$ForumCommentReplyBean;->getMessage()Ljava/lang/String;

    .line 356
    .line 357
    .line 358
    move-result-object v6

    .line 359
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 360
    .line 361
    .line 362
    const-string v6, "</font>"

    .line 363
    .line 364
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 365
    .line 366
    .line 367
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 368
    .line 369
    .line 370
    move-result-object v5

    .line 371
    invoke-static {v5}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    .line 372
    .line 373
    .line 374
    move-result-object v5

    .line 375
    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 376
    .line 377
    .line 378
    iget-object v3, v3, Lcom/join/mgps/activity/message/a$g$i;->b:Landroid/widget/RelativeLayout;

    .line 379
    .line 380
    new-instance v4, Lcom/join/mgps/activity/message/a$g$b;

    .line 381
    .line 382
    invoke-direct {v4, v0, v1}, Lcom/join/mgps/activity/message/a$g$b;-><init>(Lcom/join/mgps/activity/message/a$g;Lcom/join/mgps/dto/ForumProfileMessageBean;)V

    .line 383
    .line 384
    .line 385
    invoke-virtual {v3, v4}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 386
    .line 387
    .line 388
    goto/16 :goto_a

    .line 389
    .line 390
    :cond_7
    if-nez p2, :cond_8

    .line 391
    .line 392
    iget-object v2, v0, Lcom/join/mgps/activity/message/a$g;->b:Landroid/content/Context;

    .line 393
    .line 394
    invoke-static {v2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    .line 395
    .line 396
    .line 397
    move-result-object v2

    .line 398
    const v5, 0x7f0d0172

    .line 399
    .line 400
    .line 401
    invoke-virtual {v2, v5, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 402
    .line 403
    .line 404
    move-result-object v2

    .line 405
    new-instance v3, Lcom/join/mgps/activity/message/a$g$e;

    .line 406
    .line 407
    invoke-direct {v3, v0}, Lcom/join/mgps/activity/message/a$g$e;-><init>(Lcom/join/mgps/activity/message/a$g;)V

    .line 408
    .line 409
    .line 410
    const v5, 0x7f0a13e0

    .line 411
    .line 412
    .line 413
    invoke-virtual {v2, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 414
    .line 415
    .line 416
    move-result-object v5

    .line 417
    check-cast v5, Landroid/widget/RelativeLayout;

    .line 418
    .line 419
    iput-object v5, v3, Lcom/join/mgps/activity/message/a$g$e;->a:Landroid/widget/RelativeLayout;

    .line 420
    .line 421
    const v5, 0x7f0a15aa

    .line 422
    .line 423
    .line 424
    invoke-virtual {v2, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 425
    .line 426
    .line 427
    move-result-object v5

    .line 428
    check-cast v5, Lcom/facebook/drawee/view/SimpleDraweeView;

    .line 429
    .line 430
    iput-object v5, v3, Lcom/join/mgps/activity/message/a$g$e;->b:Lcom/facebook/drawee/view/SimpleDraweeView;

    .line 431
    .line 432
    const v5, 0x7f0a19d3

    .line 433
    .line 434
    .line 435
    invoke-virtual {v2, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 436
    .line 437
    .line 438
    move-result-object v5

    .line 439
    check-cast v5, Landroid/widget/TextView;

    .line 440
    .line 441
    iput-object v5, v3, Lcom/join/mgps/activity/message/a$g$e;->c:Landroid/widget/TextView;

    .line 442
    .line 443
    const v5, 0x7f0a1a0e

    .line 444
    .line 445
    .line 446
    invoke-virtual {v2, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 447
    .line 448
    .line 449
    move-result-object v5

    .line 450
    check-cast v5, Landroid/widget/TextView;

    .line 451
    .line 452
    iput-object v5, v3, Lcom/join/mgps/activity/message/a$g$e;->e:Landroid/widget/TextView;

    .line 453
    .line 454
    const v5, 0x7f0a1a45

    .line 455
    .line 456
    .line 457
    invoke-virtual {v2, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 458
    .line 459
    .line 460
    move-result-object v5

    .line 461
    check-cast v5, Landroid/widget/TextView;

    .line 462
    .line 463
    iput-object v5, v3, Lcom/join/mgps/activity/message/a$g$e;->d:Landroid/widget/TextView;

    .line 464
    .line 465
    invoke-virtual {v2, v3}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 466
    .line 467
    .line 468
    goto :goto_4

    .line 469
    :cond_8
    invoke-virtual/range {p2 .. p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    .line 470
    .line 471
    .line 472
    move-result-object v2

    .line 473
    move-object v3, v2

    .line 474
    check-cast v3, Lcom/join/mgps/activity/message/a$g$e;

    .line 475
    .line 476
    move-object/from16 v2, p2

    .line 477
    .line 478
    :goto_4
    iget-object v5, v0, Lcom/join/mgps/activity/message/a$g;->c:Lcom/join/mgps/activity/message/a;

    .line 479
    .line 480
    iget-object v5, v5, Lcom/join/mgps/activity/message/a;->p:Ljava/util/List;

    .line 481
    .line 482
    invoke-interface {v5, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 483
    .line 484
    .line 485
    move-result-object v5

    .line 486
    check-cast v5, Lcom/join/mgps/activity/message/a$i;

    .line 487
    .line 488
    iget-object v5, v5, Lcom/join/mgps/activity/message/a$i;->a:Ljava/lang/Object;

    .line 489
    .line 490
    check-cast v5, Lcom/join/mgps/dto/ForumProfileMessageBean;

    .line 491
    .line 492
    iget-object v8, v3, Lcom/join/mgps/activity/message/a$g$e;->b:Lcom/facebook/drawee/view/SimpleDraweeView;

    .line 493
    .line 494
    invoke-virtual {v5}, Lcom/join/mgps/dto/ForumProfileMessageBean;->getFrom_avatar_src()Ljava/lang/String;

    .line 495
    .line 496
    .line 497
    move-result-object v9

    .line 498
    invoke-virtual {v8, v9}, Lcom/facebook/drawee/view/SimpleDraweeView;->setImageURI(Ljava/lang/String;)V

    .line 499
    .line 500
    .line 501
    iget-object v8, v3, Lcom/join/mgps/activity/message/a$g$e;->c:Landroid/widget/TextView;

    .line 502
    .line 503
    invoke-virtual {v5}, Lcom/join/mgps/dto/ForumProfileMessageBean;->getFrom_nickname()Ljava/lang/String;

    .line 504
    .line 505
    .line 506
    move-result-object v9

    .line 507
    invoke-virtual {v8, v9}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 508
    .line 509
    .line 510
    iget-object v8, v0, Lcom/join/mgps/activity/message/a$g;->c:Lcom/join/mgps/activity/message/a;

    .line 511
    .line 512
    iget-object v8, v8, Lcom/join/mgps/activity/message/a;->p:Ljava/util/List;

    .line 513
    .line 514
    add-int/2addr v1, v4

    .line 515
    invoke-interface {v8, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 516
    .line 517
    .line 518
    move-result-object v8

    .line 519
    check-cast v8, Lcom/join/mgps/activity/message/a$i;

    .line 520
    .line 521
    iget v8, v8, Lcom/join/mgps/activity/message/a$i;->b:I

    .line 522
    .line 523
    if-ne v8, v6, :cond_9

    .line 524
    .line 525
    const-string v1, "\u5e16\u5b50"

    .line 526
    .line 527
    goto :goto_5

    .line 528
    :cond_9
    iget-object v6, v0, Lcom/join/mgps/activity/message/a$g;->c:Lcom/join/mgps/activity/message/a;

    .line 529
    .line 530
    iget-object v6, v6, Lcom/join/mgps/activity/message/a;->p:Ljava/util/List;

    .line 531
    .line 532
    invoke-interface {v6, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 533
    .line 534
    .line 535
    move-result-object v1

    .line 536
    check-cast v1, Lcom/join/mgps/activity/message/a$i;

    .line 537
    .line 538
    iget v1, v1, Lcom/join/mgps/activity/message/a$i;->b:I

    .line 539
    .line 540
    const-string v1, "\u4e86\u4f60"

    .line 541
    .line 542
    :goto_5
    iget-object v6, v3, Lcom/join/mgps/activity/message/a$g$e;->e:Landroid/widget/TextView;

    .line 543
    .line 544
    new-instance v8, Ljava/lang/StringBuilder;

    .line 545
    .line 546
    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    .line 547
    .line 548
    .line 549
    const-string v9, "\u56de\u590d"

    .line 550
    .line 551
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 552
    .line 553
    .line 554
    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 555
    .line 556
    .line 557
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 558
    .line 559
    .line 560
    move-result-object v1

    .line 561
    invoke-virtual {v6, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 562
    .line 563
    .line 564
    new-instance v1, Ljava/text/SimpleDateFormat;

    .line 565
    .line 566
    const-string v6, "yyyy\u5e74MM\u6708dd\u65e5 HH:mm:ss"

    .line 567
    .line 568
    invoke-direct {v1, v6}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 569
    .line 570
    .line 571
    new-instance v6, Ljava/util/Date;

    .line 572
    .line 573
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 574
    .line 575
    .line 576
    move-result-wide v8

    .line 577
    invoke-direct {v6, v8, v9}, Ljava/util/Date;-><init>(J)V

    .line 578
    .line 579
    .line 580
    new-instance v8, Ljava/util/Date;

    .line 581
    .line 582
    invoke-virtual {v5}, Lcom/join/mgps/dto/ForumProfileMessageBean;->getAdd_time()J

    .line 583
    .line 584
    .line 585
    move-result-wide v9

    .line 586
    const-wide/16 v11, 0x3e8

    .line 587
    .line 588
    mul-long v9, v9, v11

    .line 589
    .line 590
    invoke-direct {v8, v9, v10}, Ljava/util/Date;-><init>(J)V

    .line 591
    .line 592
    .line 593
    invoke-virtual {v1, v6}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    .line 594
    .line 595
    .line 596
    move-result-object v6

    .line 597
    invoke-virtual {v1, v8}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    .line 598
    .line 599
    .line 600
    move-result-object v1

    .line 601
    const-string v8, "\u65e5"

    .line 602
    .line 603
    const-string v9, "\u5e74"

    .line 604
    .line 605
    const-string v10, "\u6708"

    .line 606
    .line 607
    if-eqz v1, :cond_a

    .line 608
    .line 609
    invoke-virtual {v1, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 610
    .line 611
    .line 612
    move-result v11

    .line 613
    if-nez v11, :cond_a

    .line 614
    .line 615
    invoke-virtual {v1, v9}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    .line 616
    .line 617
    .line 618
    move-result v7

    .line 619
    const/4 v11, 0x0

    .line 620
    invoke-virtual {v1, v11, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 621
    .line 622
    .line 623
    move-result-object v7

    .line 624
    invoke-virtual {v1, v9}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    .line 625
    .line 626
    .line 627
    move-result v12

    .line 628
    add-int/2addr v12, v4

    .line 629
    invoke-virtual {v1, v10}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    .line 630
    .line 631
    .line 632
    move-result v13

    .line 633
    invoke-virtual {v1, v12, v13}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 634
    .line 635
    .line 636
    move-result-object v12

    .line 637
    invoke-virtual {v1, v10}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    .line 638
    .line 639
    .line 640
    move-result v13

    .line 641
    add-int/2addr v13, v4

    .line 642
    invoke-virtual {v1, v8}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    .line 643
    .line 644
    .line 645
    move-result v14

    .line 646
    invoke-virtual {v1, v13, v14}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 647
    .line 648
    .line 649
    move-result-object v13

    .line 650
    invoke-virtual {v6, v9}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    .line 651
    .line 652
    .line 653
    move-result v14

    .line 654
    invoke-virtual {v6, v11, v14}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 655
    .line 656
    .line 657
    move-result-object v11

    .line 658
    invoke-virtual {v6, v9}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    .line 659
    .line 660
    .line 661
    move-result v14

    .line 662
    add-int/2addr v14, v4

    .line 663
    invoke-virtual {v6, v10}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    .line 664
    .line 665
    .line 666
    move-result v15

    .line 667
    invoke-virtual {v6, v14, v15}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 668
    .line 669
    .line 670
    move-result-object v14

    .line 671
    invoke-virtual {v6, v10}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    .line 672
    .line 673
    .line 674
    move-result v15

    .line 675
    add-int/2addr v15, v4

    .line 676
    invoke-virtual {v6, v8}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    .line 677
    .line 678
    .line 679
    move-result v4

    .line 680
    invoke-virtual {v6, v15, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 681
    .line 682
    .line 683
    move-result-object v4

    .line 684
    goto :goto_6

    .line 685
    :cond_a
    move-object v4, v7

    .line 686
    move-object v11, v4

    .line 687
    move-object v12, v11

    .line 688
    move-object v13, v12

    .line 689
    move-object v14, v13

    .line 690
    :goto_6
    invoke-virtual {v7, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 691
    .line 692
    .line 693
    move-result v6

    .line 694
    if-eqz v6, :cond_e

    .line 695
    .line 696
    invoke-virtual {v12, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 697
    .line 698
    .line 699
    move-result v6

    .line 700
    if-eqz v6, :cond_d

    .line 701
    .line 702
    invoke-virtual {v13, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 703
    .line 704
    .line 705
    move-result v4

    .line 706
    if-eqz v4, :cond_c

    .line 707
    .line 708
    const-string v4, ":"

    .line 709
    .line 710
    invoke-virtual {v1, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 711
    .line 712
    .line 713
    move-result v6

    .line 714
    const-string v7, " "

    .line 715
    .line 716
    if-eqz v6, :cond_b

    .line 717
    .line 718
    invoke-virtual {v1, v7}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    .line 719
    .line 720
    .line 721
    move-result v6

    .line 722
    const/4 v8, 0x1

    .line 723
    add-int/2addr v6, v8

    .line 724
    invoke-virtual {v1, v4}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    .line 725
    .line 726
    .line 727
    move-result v4

    .line 728
    invoke-virtual {v1, v6, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 729
    .line 730
    .line 731
    move-result-object v1

    .line 732
    goto :goto_7

    .line 733
    :cond_b
    const/4 v8, 0x1

    .line 734
    invoke-virtual {v1, v7}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    .line 735
    .line 736
    .line 737
    move-result v4

    .line 738
    add-int/2addr v4, v8

    .line 739
    const-string v6, "\u5206"

    .line 740
    .line 741
    invoke-virtual {v1, v6}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    .line 742
    .line 743
    .line 744
    move-result v6

    .line 745
    invoke-virtual {v1, v4, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 746
    .line 747
    .line 748
    move-result-object v1

    .line 749
    :goto_7
    iget-object v4, v3, Lcom/join/mgps/activity/message/a$g$e;->d:Landroid/widget/TextView;

    .line 750
    .line 751
    invoke-virtual {v4, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 752
    .line 753
    .line 754
    goto :goto_8

    .line 755
    :cond_c
    iget-object v1, v3, Lcom/join/mgps/activity/message/a$g$e;->d:Landroid/widget/TextView;

    .line 756
    .line 757
    new-instance v4, Ljava/lang/StringBuilder;

    .line 758
    .line 759
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 760
    .line 761
    .line 762
    invoke-virtual {v4, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 763
    .line 764
    .line 765
    invoke-virtual {v4, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 766
    .line 767
    .line 768
    invoke-virtual {v4, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 769
    .line 770
    .line 771
    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 772
    .line 773
    .line 774
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 775
    .line 776
    .line 777
    move-result-object v4

    .line 778
    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 779
    .line 780
    .line 781
    goto :goto_8

    .line 782
    :cond_d
    iget-object v1, v3, Lcom/join/mgps/activity/message/a$g$e;->d:Landroid/widget/TextView;

    .line 783
    .line 784
    new-instance v4, Ljava/lang/StringBuilder;

    .line 785
    .line 786
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 787
    .line 788
    .line 789
    invoke-virtual {v4, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 790
    .line 791
    .line 792
    invoke-virtual {v4, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 793
    .line 794
    .line 795
    invoke-virtual {v4, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 796
    .line 797
    .line 798
    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 799
    .line 800
    .line 801
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 802
    .line 803
    .line 804
    move-result-object v4

    .line 805
    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 806
    .line 807
    .line 808
    goto :goto_8

    .line 809
    :cond_e
    iget-object v1, v3, Lcom/join/mgps/activity/message/a$g$e;->d:Landroid/widget/TextView;

    .line 810
    .line 811
    new-instance v4, Ljava/lang/StringBuilder;

    .line 812
    .line 813
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 814
    .line 815
    .line 816
    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 817
    .line 818
    .line 819
    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 820
    .line 821
    .line 822
    invoke-virtual {v4, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 823
    .line 824
    .line 825
    invoke-virtual {v4, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 826
    .line 827
    .line 828
    invoke-virtual {v4, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 829
    .line 830
    .line 831
    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 832
    .line 833
    .line 834
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 835
    .line 836
    .line 837
    move-result-object v4

    .line 838
    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 839
    .line 840
    .line 841
    :goto_8
    iget-object v1, v3, Lcom/join/mgps/activity/message/a$g$e;->a:Landroid/widget/RelativeLayout;

    .line 842
    .line 843
    new-instance v3, Lcom/join/mgps/activity/message/a$g$a;

    .line 844
    .line 845
    invoke-direct {v3, v0, v5}, Lcom/join/mgps/activity/message/a$g$a;-><init>(Lcom/join/mgps/activity/message/a$g;Lcom/join/mgps/dto/ForumProfileMessageBean;)V

    .line 846
    .line 847
    .line 848
    invoke-virtual {v1, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 849
    .line 850
    .line 851
    goto :goto_a

    .line 852
    :cond_f
    if-nez p2, :cond_10

    .line 853
    .line 854
    iget-object v1, v0, Lcom/join/mgps/activity/message/a$g;->b:Landroid/content/Context;

    .line 855
    .line 856
    invoke-static {v1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    .line 857
    .line 858
    .line 859
    move-result-object v1

    .line 860
    const v2, 0x7f0d0173

    .line 861
    .line 862
    .line 863
    invoke-virtual {v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 864
    .line 865
    .line 866
    move-result-object v1

    .line 867
    new-instance v2, Lcom/join/mgps/activity/message/a$g$f;

    .line 868
    .line 869
    invoke-direct {v2, v0}, Lcom/join/mgps/activity/message/a$g$f;-><init>(Lcom/join/mgps/activity/message/a$g;)V

    .line 870
    .line 871
    .line 872
    invoke-virtual {v1, v2}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 873
    .line 874
    .line 875
    move-object v2, v1

    .line 876
    goto :goto_a

    .line 877
    :cond_10
    invoke-virtual/range {p2 .. p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    .line 878
    .line 879
    .line 880
    move-result-object v1

    .line 881
    check-cast v1, Lcom/join/mgps/activity/message/a$g$f;

    .line 882
    .line 883
    :goto_9
    move-object/from16 v2, p2

    .line 884
    .line 885
    :goto_a
    return-object v2
.end method

.method public getViewTypeCount()I
    .locals 1

    const/4 v0, 0x6

    return v0
.end method
