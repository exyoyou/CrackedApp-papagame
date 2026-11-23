.class public Lcom/join/mgps/Util/HtmlDocUtil;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/join/mgps/Util/HtmlDocUtil$PostDetail;,
        Lcom/join/mgps/Util/HtmlDocUtil$c;,
        Lcom/join/mgps/Util/HtmlDocUtil$d;,
        Lcom/join/mgps/Util/HtmlDocUtil$b;,
        Lcom/join/mgps/Util/HtmlDocUtil$a;,
        Lcom/join/mgps/Util/HtmlDocUtil$e;
    }
.end annotation


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

.method public static a(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "input"
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Ljava/lang/String;->toCharArray()[C

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    const/4 v0, 0x0

    .line 6
    :goto_0
    array-length v1, p0

    .line 7
    if-ge v0, v1, :cond_2

    .line 8
    .line 9
    aget-char v1, p0, v0

    .line 10
    .line 11
    const/16 v2, 0x3000

    .line 12
    .line 13
    if-ne v1, v2, :cond_0

    .line 14
    .line 15
    const/16 v1, 0x20

    .line 16
    .line 17
    aput-char v1, p0, v0

    .line 18
    .line 19
    goto :goto_1

    .line 20
    :cond_0
    const v2, 0xff00

    .line 21
    .line 22
    .line 23
    if-le v1, v2, :cond_1

    .line 24
    .line 25
    const v2, 0xff5f

    .line 26
    .line 27
    .line 28
    if-ge v1, v2, :cond_1

    .line 29
    .line 30
    const v2, 0xfee0

    .line 31
    .line 32
    .line 33
    sub-int/2addr v1, v2

    .line 34
    int-to-char v1, v1

    .line 35
    aput-char v1, p0, v0

    .line 36
    .line 37
    :cond_1
    :goto_1
    add-int/lit8 v0, v0, 0x1

    .line 38
    .line 39
    goto :goto_0

    .line 40
    :cond_2
    new-instance v0, Ljava/lang/String;

    .line 41
    .line 42
    invoke-direct {v0, p0}, Ljava/lang/String;-><init>([C)V

    .line 43
    .line 44
    .line 45
    return-object v0
.end method

.method public static b(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "str"
        }
    .end annotation

    .line 1
    new-instance v0, Ljava/util/Date;

    .line 2
    .line 3
    invoke-static {p0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    .line 4
    .line 5
    .line 6
    move-result-wide v1

    .line 7
    invoke-direct {v0, v1, v2}, Ljava/util/Date;-><init>(J)V

    .line 8
    .line 9
    .line 10
    new-instance p0, Ljava/text/SimpleDateFormat;

    .line 11
    .line 12
    const-string v1, "yyyy-MM-dd HH:mm"

    .line 13
    .line 14
    sget-object v2, Ljava/util/Locale;->CHINA:Ljava/util/Locale;

    .line 15
    .line 16
    invoke-direct {p0, v1, v2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    .line 17
    .line 18
    .line 19
    invoke-virtual {p0, v0}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    .line 20
    .line 21
    .line 22
    move-result-object p0

    .line 23
    return-object p0
.end method

.method public static c(Ljava/lang/String;)Ljava/util/List;
    .locals 19
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "str"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Lcom/join/mgps/Util/HtmlDocUtil$PostDetail;",
            ">;"
        }
    .end annotation

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 4
    .line 5
    .line 6
    invoke-static/range {p0 .. p0}, Lorg/jsoup/Jsoup;->parse(Ljava/lang/String;)Lorg/jsoup/nodes/Document;

    .line 7
    .line 8
    .line 9
    move-result-object v1

    .line 10
    const-string v2, "detail"

    .line 11
    .line 12
    invoke-virtual {v1, v2}, Lorg/jsoup/nodes/Element;->getElementsByClass(Ljava/lang/String;)Lorg/jsoup/select/Elements;

    .line 13
    .line 14
    .line 15
    move-result-object v1

    .line 16
    const/4 v2, 0x0

    .line 17
    invoke-virtual {v1, v2}, Lorg/jsoup/select/Elements;->get(I)Lorg/jsoup/nodes/Element;

    .line 18
    .line 19
    .line 20
    move-result-object v1

    .line 21
    invoke-virtual {v1}, Lorg/jsoup/nodes/Element;->children()Lorg/jsoup/select/Elements;

    .line 22
    .line 23
    .line 24
    move-result-object v1

    .line 25
    invoke-virtual {v1}, Lorg/jsoup/select/Elements;->iterator()Ljava/util/Iterator;

    .line 26
    .line 27
    .line 28
    move-result-object v1

    .line 29
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 30
    .line 31
    .line 32
    move-result v3

    .line 33
    if-eqz v3, :cond_11

    .line 34
    .line 35
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 36
    .line 37
    .line 38
    move-result-object v3

    .line 39
    check-cast v3, Lorg/jsoup/nodes/Element;

    .line 40
    .line 41
    new-instance v4, Lcom/join/mgps/Util/HtmlDocUtil$PostDetail;

    .line 42
    .line 43
    invoke-direct {v4}, Lcom/join/mgps/Util/HtmlDocUtil$PostDetail;-><init>()V

    .line 44
    .line 45
    .line 46
    invoke-virtual {v3}, Lorg/jsoup/nodes/Element;->nodeName()Ljava/lang/String;

    .line 47
    .line 48
    .line 49
    move-result-object v5

    .line 50
    const-string v6, "p"

    .line 51
    .line 52
    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 53
    .line 54
    .line 55
    move-result v6

    .line 56
    const-string v7, "#"

    .line 57
    .line 58
    const-string v9, "bsrc"

    .line 59
    .line 60
    const-string v10, "href"

    .line 61
    .line 62
    const-string v11, "a"

    .line 63
    .line 64
    const-string v12, "img"

    .line 65
    .line 66
    const-string v13, "src"

    .line 67
    .line 68
    const-string v14, "uurl"

    .line 69
    .line 70
    if-eqz v6, :cond_c

    .line 71
    .line 72
    invoke-virtual {v3}, Lorg/jsoup/nodes/Node;->childNodes()Ljava/util/List;

    .line 73
    .line 74
    .line 75
    move-result-object v5

    .line 76
    const/4 v6, 0x1

    .line 77
    const/4 v15, 0x0

    .line 78
    const/16 v16, 0x1

    .line 79
    .line 80
    :goto_1
    invoke-interface {v5}, Ljava/util/List;->size()I

    .line 81
    .line 82
    .line 83
    move-result v2

    .line 84
    if-ge v15, v2, :cond_b

    .line 85
    .line 86
    new-instance v4, Lcom/join/mgps/Util/HtmlDocUtil$PostDetail;

    .line 87
    .line 88
    invoke-direct {v4}, Lcom/join/mgps/Util/HtmlDocUtil$PostDetail;-><init>()V

    .line 89
    .line 90
    .line 91
    invoke-interface {v5, v15}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 92
    .line 93
    .line 94
    move-result-object v2

    .line 95
    check-cast v2, Lorg/jsoup/nodes/Node;

    .line 96
    .line 97
    instance-of v8, v2, Lorg/jsoup/nodes/TextNode;

    .line 98
    .line 99
    if-eqz v8, :cond_2

    .line 100
    .line 101
    check-cast v2, Lorg/jsoup/nodes/TextNode;

    .line 102
    .line 103
    invoke-virtual {v2}, Lorg/jsoup/nodes/TextNode;->text()Ljava/lang/String;

    .line 104
    .line 105
    .line 106
    move-result-object v2

    .line 107
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 108
    .line 109
    .line 110
    move-result v8

    .line 111
    if-lez v8, :cond_0

    .line 112
    .line 113
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 114
    .line 115
    .line 116
    move-result v8

    .line 117
    sub-int/2addr v8, v6

    .line 118
    invoke-interface {v0, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 119
    .line 120
    .line 121
    move-result-object v8

    .line 122
    check-cast v8, Lcom/join/mgps/Util/HtmlDocUtil$PostDetail;

    .line 123
    .line 124
    invoke-virtual {v8}, Lcom/join/mgps/Util/HtmlDocUtil$PostDetail;->getType()Lcom/join/mgps/Util/HtmlDocUtil$PostDetail$Type;

    .line 125
    .line 126
    .line 127
    move-result-object v6

    .line 128
    move-object/from16 v17, v1

    .line 129
    .line 130
    sget-object v1, Lcom/join/mgps/Util/HtmlDocUtil$PostDetail$Type;->Text:Lcom/join/mgps/Util/HtmlDocUtil$PostDetail$Type;

    .line 131
    .line 132
    if-ne v6, v1, :cond_1

    .line 133
    .line 134
    if-eqz v15, :cond_1

    .line 135
    .line 136
    invoke-virtual {v8}, Lcom/join/mgps/Util/HtmlDocUtil$PostDetail;->a()Ljava/lang/Object;

    .line 137
    .line 138
    .line 139
    move-result-object v1

    .line 140
    check-cast v1, Lcom/join/mgps/Util/HtmlDocUtil$c;

    .line 141
    .line 142
    invoke-virtual {v1}, Lcom/join/mgps/Util/HtmlDocUtil$c;->d()Landroid/text/SpannableStringBuilder;

    .line 143
    .line 144
    .line 145
    move-result-object v1

    .line 146
    new-instance v6, Ljava/lang/StringBuilder;

    .line 147
    .line 148
    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    .line 149
    .line 150
    .line 151
    const-string v8, "<br/>"

    .line 152
    .line 153
    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 154
    .line 155
    .line 156
    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 157
    .line 158
    .line 159
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 160
    .line 161
    .line 162
    move-result-object v2

    .line 163
    invoke-virtual {v1, v2}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 164
    .line 165
    .line 166
    goto :goto_2

    .line 167
    :cond_0
    move-object/from16 v17, v1

    .line 168
    .line 169
    :cond_1
    sget-object v1, Lcom/join/mgps/Util/HtmlDocUtil$PostDetail$Type;->Text:Lcom/join/mgps/Util/HtmlDocUtil$PostDetail$Type;

    .line 170
    .line 171
    invoke-virtual {v4, v1}, Lcom/join/mgps/Util/HtmlDocUtil$PostDetail;->c(Lcom/join/mgps/Util/HtmlDocUtil$PostDetail$Type;)V

    .line 172
    .line 173
    .line 174
    new-instance v1, Lcom/join/mgps/Util/HtmlDocUtil$c;

    .line 175
    .line 176
    new-instance v6, Landroid/text/SpannableStringBuilder;

    .line 177
    .line 178
    invoke-direct {v6}, Landroid/text/SpannableStringBuilder;-><init>()V

    .line 179
    .line 180
    .line 181
    invoke-virtual {v6, v2}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 182
    .line 183
    .line 184
    move-result-object v2

    .line 185
    invoke-direct {v1, v2}, Lcom/join/mgps/Util/HtmlDocUtil$c;-><init>(Landroid/text/SpannableStringBuilder;)V

    .line 186
    .line 187
    .line 188
    invoke-virtual {v4, v1}, Lcom/join/mgps/Util/HtmlDocUtil$PostDetail;->b(Ljava/lang/Object;)V

    .line 189
    .line 190
    .line 191
    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 192
    .line 193
    .line 194
    :goto_2
    move-object/from16 v18, v5

    .line 195
    .line 196
    const/4 v2, 0x1

    .line 197
    :goto_3
    const/16 v16, 0x0

    .line 198
    .line 199
    goto/16 :goto_6

    .line 200
    .line 201
    :cond_2
    move-object/from16 v17, v1

    .line 202
    .line 203
    instance-of v1, v2, Lorg/jsoup/nodes/Element;

    .line 204
    .line 205
    if-eqz v1, :cond_a

    .line 206
    .line 207
    invoke-virtual {v2}, Lorg/jsoup/nodes/Node;->nodeName()Ljava/lang/String;

    .line 208
    .line 209
    .line 210
    move-result-object v1

    .line 211
    invoke-virtual {v1, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 212
    .line 213
    .line 214
    move-result v1

    .line 215
    if-eqz v1, :cond_4

    .line 216
    .line 217
    invoke-virtual {v2, v14}, Lorg/jsoup/nodes/Node;->attr(Ljava/lang/String;)Ljava/lang/String;

    .line 218
    .line 219
    .line 220
    move-result-object v1

    .line 221
    invoke-static {v1}, Lcom/join/mgps/Util/t2;->h(Ljava/lang/String;)Z

    .line 222
    .line 223
    .line 224
    move-result v1

    .line 225
    if-nez v1, :cond_3

    .line 226
    .line 227
    sget-object v1, Lcom/join/mgps/Util/HtmlDocUtil$PostDetail$Type;->Video:Lcom/join/mgps/Util/HtmlDocUtil$PostDetail$Type;

    .line 228
    .line 229
    invoke-virtual {v4, v1}, Lcom/join/mgps/Util/HtmlDocUtil$PostDetail;->c(Lcom/join/mgps/Util/HtmlDocUtil$PostDetail$Type;)V

    .line 230
    .line 231
    .line 232
    new-instance v1, Lcom/join/mgps/Util/HtmlDocUtil$d;

    .line 233
    .line 234
    invoke-virtual {v2, v13}, Lorg/jsoup/nodes/Node;->attr(Ljava/lang/String;)Ljava/lang/String;

    .line 235
    .line 236
    .line 237
    move-result-object v6

    .line 238
    invoke-virtual {v2, v14}, Lorg/jsoup/nodes/Node;->attr(Ljava/lang/String;)Ljava/lang/String;

    .line 239
    .line 240
    .line 241
    move-result-object v2

    .line 242
    invoke-direct {v1, v6, v2}, Lcom/join/mgps/Util/HtmlDocUtil$d;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 243
    .line 244
    .line 245
    invoke-virtual {v4, v1}, Lcom/join/mgps/Util/HtmlDocUtil$PostDetail;->b(Ljava/lang/Object;)V

    .line 246
    .line 247
    .line 248
    goto :goto_4

    .line 249
    :cond_3
    sget-object v1, Lcom/join/mgps/Util/HtmlDocUtil$PostDetail$Type;->Image:Lcom/join/mgps/Util/HtmlDocUtil$PostDetail$Type;

    .line 250
    .line 251
    invoke-virtual {v4, v1}, Lcom/join/mgps/Util/HtmlDocUtil$PostDetail;->c(Lcom/join/mgps/Util/HtmlDocUtil$PostDetail$Type;)V

    .line 252
    .line 253
    .line 254
    new-instance v1, Lcom/join/mgps/Util/HtmlDocUtil$b;

    .line 255
    .line 256
    invoke-virtual {v2, v13}, Lorg/jsoup/nodes/Node;->attr(Ljava/lang/String;)Ljava/lang/String;

    .line 257
    .line 258
    .line 259
    move-result-object v6

    .line 260
    invoke-virtual {v2, v9}, Lorg/jsoup/nodes/Node;->attr(Ljava/lang/String;)Ljava/lang/String;

    .line 261
    .line 262
    .line 263
    move-result-object v2

    .line 264
    invoke-direct {v1, v6, v2}, Lcom/join/mgps/Util/HtmlDocUtil$b;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 265
    .line 266
    .line 267
    invoke-virtual {v4, v1}, Lcom/join/mgps/Util/HtmlDocUtil$PostDetail;->b(Ljava/lang/Object;)V

    .line 268
    .line 269
    .line 270
    :goto_4
    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 271
    .line 272
    .line 273
    goto :goto_2

    .line 274
    :cond_4
    invoke-virtual {v2}, Lorg/jsoup/nodes/Node;->nodeName()Ljava/lang/String;

    .line 275
    .line 276
    .line 277
    move-result-object v1

    .line 278
    const-string v6, "br"

    .line 279
    .line 280
    invoke-virtual {v1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 281
    .line 282
    .line 283
    move-result v1

    .line 284
    if-eqz v1, :cond_6

    .line 285
    .line 286
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 287
    .line 288
    .line 289
    move-result v1

    .line 290
    if-lez v1, :cond_5

    .line 291
    .line 292
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 293
    .line 294
    .line 295
    move-result v1

    .line 296
    const/4 v2, 0x1

    .line 297
    sub-int/2addr v1, v2

    .line 298
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 299
    .line 300
    .line 301
    move-result-object v1

    .line 302
    check-cast v1, Lcom/join/mgps/Util/HtmlDocUtil$PostDetail;

    .line 303
    .line 304
    invoke-virtual {v1}, Lcom/join/mgps/Util/HtmlDocUtil$PostDetail;->getType()Lcom/join/mgps/Util/HtmlDocUtil$PostDetail$Type;

    .line 305
    .line 306
    .line 307
    move-result-object v2

    .line 308
    sget-object v6, Lcom/join/mgps/Util/HtmlDocUtil$PostDetail$Type;->Text:Lcom/join/mgps/Util/HtmlDocUtil$PostDetail$Type;

    .line 309
    .line 310
    if-ne v2, v6, :cond_5

    .line 311
    .line 312
    if-eqz v15, :cond_5

    .line 313
    .line 314
    invoke-virtual {v1}, Lcom/join/mgps/Util/HtmlDocUtil$PostDetail;->a()Ljava/lang/Object;

    .line 315
    .line 316
    .line 317
    move-result-object v2

    .line 318
    check-cast v2, Lcom/join/mgps/Util/HtmlDocUtil$c;

    .line 319
    .line 320
    invoke-virtual {v2}, Lcom/join/mgps/Util/HtmlDocUtil$c;->d()Landroid/text/SpannableStringBuilder;

    .line 321
    .line 322
    .line 323
    move-result-object v2

    .line 324
    const-string v6, "\n"

    .line 325
    .line 326
    invoke-virtual {v2, v6}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 327
    .line 328
    .line 329
    new-instance v6, Lcom/join/mgps/Util/HtmlDocUtil$c;

    .line 330
    .line 331
    invoke-direct {v6, v2}, Lcom/join/mgps/Util/HtmlDocUtil$c;-><init>(Landroid/text/SpannableStringBuilder;)V

    .line 332
    .line 333
    .line 334
    invoke-virtual {v1, v6}, Lcom/join/mgps/Util/HtmlDocUtil$PostDetail;->b(Ljava/lang/Object;)V

    .line 335
    .line 336
    .line 337
    goto/16 :goto_5

    .line 338
    .line 339
    :cond_5
    sget-object v1, Lcom/join/mgps/Util/HtmlDocUtil$PostDetail$Type;->Text:Lcom/join/mgps/Util/HtmlDocUtil$PostDetail$Type;

    .line 340
    .line 341
    invoke-virtual {v4, v1}, Lcom/join/mgps/Util/HtmlDocUtil$PostDetail;->c(Lcom/join/mgps/Util/HtmlDocUtil$PostDetail$Type;)V

    .line 342
    .line 343
    .line 344
    new-instance v1, Lcom/join/mgps/Util/HtmlDocUtil$c;

    .line 345
    .line 346
    new-instance v2, Landroid/text/SpannableStringBuilder;

    .line 347
    .line 348
    invoke-direct {v2}, Landroid/text/SpannableStringBuilder;-><init>()V

    .line 349
    .line 350
    .line 351
    const-string v6, " "

    .line 352
    .line 353
    invoke-virtual {v2, v6}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 354
    .line 355
    .line 356
    move-result-object v2

    .line 357
    invoke-direct {v1, v2}, Lcom/join/mgps/Util/HtmlDocUtil$c;-><init>(Landroid/text/SpannableStringBuilder;)V

    .line 358
    .line 359
    .line 360
    invoke-virtual {v4, v1}, Lcom/join/mgps/Util/HtmlDocUtil$PostDetail;->b(Ljava/lang/Object;)V

    .line 361
    .line 362
    .line 363
    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 364
    .line 365
    .line 366
    goto/16 :goto_2

    .line 367
    .line 368
    :cond_6
    invoke-virtual {v2}, Lorg/jsoup/nodes/Node;->nodeName()Ljava/lang/String;

    .line 369
    .line 370
    .line 371
    move-result-object v1

    .line 372
    invoke-virtual {v1, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 373
    .line 374
    .line 375
    move-result v1

    .line 376
    if-eqz v1, :cond_a

    .line 377
    .line 378
    invoke-virtual {v2, v10}, Lorg/jsoup/nodes/Node;->attr(Ljava/lang/String;)Ljava/lang/String;

    .line 379
    .line 380
    .line 381
    move-result-object v1

    .line 382
    invoke-static {v1}, Lcom/join/mgps/Util/t2;->h(Ljava/lang/String;)Z

    .line 383
    .line 384
    .line 385
    move-result v6

    .line 386
    if-eqz v6, :cond_7

    .line 387
    .line 388
    move-object v1, v7

    .line 389
    :cond_7
    check-cast v2, Lorg/jsoup/nodes/Element;

    .line 390
    .line 391
    invoke-virtual {v2}, Lorg/jsoup/nodes/Element;->text()Ljava/lang/String;

    .line 392
    .line 393
    .line 394
    move-result-object v2

    .line 395
    new-instance v6, Landroid/text/SpannableString;

    .line 396
    .line 397
    invoke-direct {v6, v2}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    .line 398
    .line 399
    .line 400
    new-instance v2, Lcom/join/mgps/Util/HtmlDocUtil$a;

    .line 401
    .line 402
    invoke-direct {v2, v1}, Lcom/join/mgps/Util/HtmlDocUtil$a;-><init>(Ljava/lang/String;)V

    .line 403
    .line 404
    .line 405
    invoke-virtual {v6}, Landroid/text/SpannableString;->length()I

    .line 406
    .line 407
    .line 408
    move-result v1

    .line 409
    move-object/from16 v18, v5

    .line 410
    .line 411
    const/4 v5, 0x0

    .line 412
    const/16 v8, 0x11

    .line 413
    .line 414
    invoke-virtual {v6, v2, v5, v1, v8}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    .line 415
    .line 416
    .line 417
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 418
    .line 419
    .line 420
    move-result v1

    .line 421
    if-lez v1, :cond_8

    .line 422
    .line 423
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 424
    .line 425
    .line 426
    move-result v1

    .line 427
    const/4 v2, 0x1

    .line 428
    sub-int/2addr v1, v2

    .line 429
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 430
    .line 431
    .line 432
    move-result-object v1

    .line 433
    check-cast v1, Lcom/join/mgps/Util/HtmlDocUtil$PostDetail;

    .line 434
    .line 435
    invoke-virtual {v1}, Lcom/join/mgps/Util/HtmlDocUtil$PostDetail;->getType()Lcom/join/mgps/Util/HtmlDocUtil$PostDetail$Type;

    .line 436
    .line 437
    .line 438
    move-result-object v5

    .line 439
    sget-object v8, Lcom/join/mgps/Util/HtmlDocUtil$PostDetail$Type;->Text:Lcom/join/mgps/Util/HtmlDocUtil$PostDetail$Type;

    .line 440
    .line 441
    if-ne v5, v8, :cond_9

    .line 442
    .line 443
    if-eqz v15, :cond_9

    .line 444
    .line 445
    invoke-virtual {v1}, Lcom/join/mgps/Util/HtmlDocUtil$PostDetail;->a()Ljava/lang/Object;

    .line 446
    .line 447
    .line 448
    move-result-object v1

    .line 449
    check-cast v1, Lcom/join/mgps/Util/HtmlDocUtil$c;

    .line 450
    .line 451
    invoke-virtual {v1}, Lcom/join/mgps/Util/HtmlDocUtil$c;->d()Landroid/text/SpannableStringBuilder;

    .line 452
    .line 453
    .line 454
    move-result-object v1

    .line 455
    invoke-virtual {v1, v6}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 456
    .line 457
    .line 458
    goto/16 :goto_3

    .line 459
    .line 460
    :cond_8
    const/4 v2, 0x1

    .line 461
    :cond_9
    sget-object v1, Lcom/join/mgps/Util/HtmlDocUtil$PostDetail$Type;->Text:Lcom/join/mgps/Util/HtmlDocUtil$PostDetail$Type;

    .line 462
    .line 463
    invoke-virtual {v4, v1}, Lcom/join/mgps/Util/HtmlDocUtil$PostDetail;->c(Lcom/join/mgps/Util/HtmlDocUtil$PostDetail$Type;)V

    .line 464
    .line 465
    .line 466
    new-instance v1, Lcom/join/mgps/Util/HtmlDocUtil$c;

    .line 467
    .line 468
    new-instance v5, Landroid/text/SpannableStringBuilder;

    .line 469
    .line 470
    invoke-direct {v5}, Landroid/text/SpannableStringBuilder;-><init>()V

    .line 471
    .line 472
    .line 473
    invoke-virtual {v5, v6}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 474
    .line 475
    .line 476
    move-result-object v5

    .line 477
    invoke-direct {v1, v5}, Lcom/join/mgps/Util/HtmlDocUtil$c;-><init>(Landroid/text/SpannableStringBuilder;)V

    .line 478
    .line 479
    .line 480
    invoke-virtual {v4, v1}, Lcom/join/mgps/Util/HtmlDocUtil$PostDetail;->b(Ljava/lang/Object;)V

    .line 481
    .line 482
    .line 483
    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 484
    .line 485
    .line 486
    goto/16 :goto_3

    .line 487
    .line 488
    :cond_a
    :goto_5
    move-object/from16 v18, v5

    .line 489
    .line 490
    const/4 v2, 0x1

    .line 491
    :goto_6
    add-int/lit8 v15, v15, 0x1

    .line 492
    .line 493
    move-object/from16 v1, v17

    .line 494
    .line 495
    move-object/from16 v5, v18

    .line 496
    .line 497
    const/4 v6, 0x1

    .line 498
    goto/16 :goto_1

    .line 499
    .line 500
    :cond_b
    move-object/from16 v17, v1

    .line 501
    .line 502
    if-eqz v16, :cond_10

    .line 503
    .line 504
    sget-object v1, Lcom/join/mgps/Util/HtmlDocUtil$PostDetail$Type;->RickText:Lcom/join/mgps/Util/HtmlDocUtil$PostDetail$Type;

    .line 505
    .line 506
    invoke-virtual {v4, v1}, Lcom/join/mgps/Util/HtmlDocUtil$PostDetail;->c(Lcom/join/mgps/Util/HtmlDocUtil$PostDetail$Type;)V

    .line 507
    .line 508
    .line 509
    new-instance v1, Lcom/join/mgps/Util/HtmlDocUtil$e;

    .line 510
    .line 511
    new-instance v2, Landroid/text/SpannableStringBuilder;

    .line 512
    .line 513
    invoke-virtual {v3}, Lorg/jsoup/nodes/Element;->html()Ljava/lang/String;

    .line 514
    .line 515
    .line 516
    move-result-object v3

    .line 517
    invoke-direct {v2, v3}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    .line 518
    .line 519
    .line 520
    invoke-direct {v1, v2}, Lcom/join/mgps/Util/HtmlDocUtil$e;-><init>(Landroid/text/SpannableStringBuilder;)V

    .line 521
    .line 522
    .line 523
    invoke-virtual {v4, v1}, Lcom/join/mgps/Util/HtmlDocUtil$PostDetail;->b(Ljava/lang/Object;)V

    .line 524
    .line 525
    .line 526
    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 527
    .line 528
    .line 529
    goto/16 :goto_9

    .line 530
    .line 531
    :cond_c
    move-object/from16 v17, v1

    .line 532
    .line 533
    invoke-virtual {v5, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 534
    .line 535
    .line 536
    move-result v1

    .line 537
    if-eqz v1, :cond_e

    .line 538
    .line 539
    invoke-virtual {v3, v14}, Lorg/jsoup/nodes/Node;->attr(Ljava/lang/String;)Ljava/lang/String;

    .line 540
    .line 541
    .line 542
    move-result-object v1

    .line 543
    invoke-static {v1}, Lcom/join/mgps/Util/t2;->h(Ljava/lang/String;)Z

    .line 544
    .line 545
    .line 546
    move-result v1

    .line 547
    if-nez v1, :cond_d

    .line 548
    .line 549
    sget-object v1, Lcom/join/mgps/Util/HtmlDocUtil$PostDetail$Type;->Video:Lcom/join/mgps/Util/HtmlDocUtil$PostDetail$Type;

    .line 550
    .line 551
    invoke-virtual {v4, v1}, Lcom/join/mgps/Util/HtmlDocUtil$PostDetail;->c(Lcom/join/mgps/Util/HtmlDocUtil$PostDetail$Type;)V

    .line 552
    .line 553
    .line 554
    new-instance v1, Lcom/join/mgps/Util/HtmlDocUtil$d;

    .line 555
    .line 556
    invoke-virtual {v3, v13}, Lorg/jsoup/nodes/Node;->attr(Ljava/lang/String;)Ljava/lang/String;

    .line 557
    .line 558
    .line 559
    move-result-object v2

    .line 560
    invoke-virtual {v3, v14}, Lorg/jsoup/nodes/Node;->attr(Ljava/lang/String;)Ljava/lang/String;

    .line 561
    .line 562
    .line 563
    move-result-object v3

    .line 564
    invoke-direct {v1, v2, v3}, Lcom/join/mgps/Util/HtmlDocUtil$d;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 565
    .line 566
    .line 567
    invoke-virtual {v4, v1}, Lcom/join/mgps/Util/HtmlDocUtil$PostDetail;->b(Ljava/lang/Object;)V

    .line 568
    .line 569
    .line 570
    goto :goto_7

    .line 571
    :cond_d
    sget-object v1, Lcom/join/mgps/Util/HtmlDocUtil$PostDetail$Type;->Image:Lcom/join/mgps/Util/HtmlDocUtil$PostDetail$Type;

    .line 572
    .line 573
    invoke-virtual {v4, v1}, Lcom/join/mgps/Util/HtmlDocUtil$PostDetail;->c(Lcom/join/mgps/Util/HtmlDocUtil$PostDetail$Type;)V

    .line 574
    .line 575
    .line 576
    new-instance v1, Lcom/join/mgps/Util/HtmlDocUtil$b;

    .line 577
    .line 578
    invoke-virtual {v3, v13}, Lorg/jsoup/nodes/Node;->attr(Ljava/lang/String;)Ljava/lang/String;

    .line 579
    .line 580
    .line 581
    move-result-object v2

    .line 582
    invoke-virtual {v3, v9}, Lorg/jsoup/nodes/Node;->attr(Ljava/lang/String;)Ljava/lang/String;

    .line 583
    .line 584
    .line 585
    move-result-object v3

    .line 586
    invoke-direct {v1, v2, v3}, Lcom/join/mgps/Util/HtmlDocUtil$b;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 587
    .line 588
    .line 589
    invoke-virtual {v4, v1}, Lcom/join/mgps/Util/HtmlDocUtil$PostDetail;->b(Ljava/lang/Object;)V

    .line 590
    .line 591
    .line 592
    :goto_7
    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 593
    .line 594
    .line 595
    goto :goto_9

    .line 596
    :cond_e
    invoke-virtual {v3}, Lorg/jsoup/nodes/Element;->nodeName()Ljava/lang/String;

    .line 597
    .line 598
    .line 599
    move-result-object v1

    .line 600
    invoke-virtual {v1, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 601
    .line 602
    .line 603
    move-result v1

    .line 604
    if-eqz v1, :cond_10

    .line 605
    .line 606
    invoke-virtual {v3, v10}, Lorg/jsoup/nodes/Node;->attr(Ljava/lang/String;)Ljava/lang/String;

    .line 607
    .line 608
    .line 609
    move-result-object v1

    .line 610
    invoke-static {v1}, Lcom/join/mgps/Util/t2;->h(Ljava/lang/String;)Z

    .line 611
    .line 612
    .line 613
    move-result v2

    .line 614
    if-eqz v2, :cond_f

    .line 615
    .line 616
    goto :goto_8

    .line 617
    :cond_f
    move-object v7, v1

    .line 618
    :goto_8
    invoke-virtual {v3}, Lorg/jsoup/nodes/Element;->text()Ljava/lang/String;

    .line 619
    .line 620
    .line 621
    move-result-object v1

    .line 622
    new-instance v2, Landroid/text/SpannableString;

    .line 623
    .line 624
    invoke-direct {v2, v1}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    .line 625
    .line 626
    .line 627
    new-instance v1, Lcom/join/mgps/Util/HtmlDocUtil$a;

    .line 628
    .line 629
    invoke-direct {v1, v7}, Lcom/join/mgps/Util/HtmlDocUtil$a;-><init>(Ljava/lang/String;)V

    .line 630
    .line 631
    .line 632
    invoke-virtual {v2}, Landroid/text/SpannableString;->length()I

    .line 633
    .line 634
    .line 635
    move-result v3

    .line 636
    const/16 v5, 0x11

    .line 637
    .line 638
    const/4 v6, 0x0

    .line 639
    invoke-virtual {v2, v1, v6, v3, v5}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    .line 640
    .line 641
    .line 642
    sget-object v1, Lcom/join/mgps/Util/HtmlDocUtil$PostDetail$Type;->Text:Lcom/join/mgps/Util/HtmlDocUtil$PostDetail$Type;

    .line 643
    .line 644
    invoke-virtual {v4, v1}, Lcom/join/mgps/Util/HtmlDocUtil$PostDetail;->c(Lcom/join/mgps/Util/HtmlDocUtil$PostDetail$Type;)V

    .line 645
    .line 646
    .line 647
    new-instance v1, Lcom/join/mgps/Util/HtmlDocUtil$c;

    .line 648
    .line 649
    new-instance v3, Landroid/text/SpannableStringBuilder;

    .line 650
    .line 651
    invoke-direct {v3}, Landroid/text/SpannableStringBuilder;-><init>()V

    .line 652
    .line 653
    .line 654
    invoke-virtual {v3, v2}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 655
    .line 656
    .line 657
    move-result-object v2

    .line 658
    invoke-direct {v1, v2}, Lcom/join/mgps/Util/HtmlDocUtil$c;-><init>(Landroid/text/SpannableStringBuilder;)V

    .line 659
    .line 660
    .line 661
    invoke-virtual {v4, v1}, Lcom/join/mgps/Util/HtmlDocUtil$PostDetail;->b(Ljava/lang/Object;)V

    .line 662
    .line 663
    .line 664
    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 665
    .line 666
    .line 667
    goto :goto_a

    .line 668
    :cond_10
    :goto_9
    const/4 v6, 0x0

    .line 669
    :goto_a
    move-object/from16 v1, v17

    .line 670
    .line 671
    const/4 v2, 0x0

    .line 672
    goto/16 :goto_0

    .line 673
    .line 674
    :cond_11
    return-object v0
.end method

.method public static d(Ljava/lang/String;)Z
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "str"
        }
    .end annotation

    .line 1
    const-string v0, "detail"

    .line 2
    .line 3
    invoke-static {p0}, Lcom/join/mgps/Util/t2;->h(Ljava/lang/String;)Z

    .line 4
    .line 5
    .line 6
    move-result v1

    .line 7
    const/4 v2, 0x0

    .line 8
    if-nez v1, :cond_0

    .line 9
    .line 10
    :try_start_0
    invoke-static {p0}, Lorg/jsoup/Jsoup;->parse(Ljava/lang/String;)Lorg/jsoup/nodes/Document;

    .line 11
    .line 12
    .line 13
    move-result-object p0

    .line 14
    if-eqz p0, :cond_0

    .line 15
    .line 16
    invoke-virtual {p0, v0}, Lorg/jsoup/nodes/Element;->getElementsByClass(Ljava/lang/String;)Lorg/jsoup/select/Elements;

    .line 17
    .line 18
    .line 19
    move-result-object v1

    .line 20
    if-eqz v1, :cond_0

    .line 21
    .line 22
    invoke-virtual {p0, v0}, Lorg/jsoup/nodes/Element;->getElementsByClass(Ljava/lang/String;)Lorg/jsoup/select/Elements;

    .line 23
    .line 24
    .line 25
    move-result-object p0

    .line 26
    invoke-virtual {p0}, Lorg/jsoup/select/Elements;->size()I

    .line 27
    .line 28
    .line 29
    move-result p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 30
    if-eqz p0, :cond_0

    .line 31
    .line 32
    const/4 p0, 0x1

    .line 33
    const/4 v2, 0x1

    .line 34
    goto :goto_0

    .line 35
    :catch_0
    move-exception p0

    .line 36
    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 37
    .line 38
    .line 39
    :cond_0
    :goto_0
    return v2
.end method
