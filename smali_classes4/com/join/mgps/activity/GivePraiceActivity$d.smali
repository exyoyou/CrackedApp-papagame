.class Lcom/join/mgps/activity/GivePraiceActivity$d;
.super Landroid/widget/BaseAdapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/join/mgps/activity/GivePraiceActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "d"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/join/mgps/activity/GivePraiceActivity$d$b;
    }
.end annotation


# instance fields
.field b:Lcom/join/mgps/dto/ForumProfileMessageBean;

.field final synthetic c:Lcom/join/mgps/activity/GivePraiceActivity;


# direct methods
.method constructor <init>(Lcom/join/mgps/activity/GivePraiceActivity;)V
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
    iput-object p1, p0, Lcom/join/mgps/activity/GivePraiceActivity$d;->c:Lcom/join/mgps/activity/GivePraiceActivity;

    .line 2
    .line 3
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/GivePraiceActivity$d;->c:Lcom/join/mgps/activity/GivePraiceActivity;

    .line 2
    .line 3
    iget v1, v0, Lcom/join/mgps/activity/GivePraiceActivity;->type:I

    .line 4
    .line 5
    const/4 v2, 0x1

    .line 6
    if-ne v1, v2, :cond_0

    .line 7
    .line 8
    iget-object v0, v0, Lcom/join/mgps/activity/GivePraiceActivity;->listData:Ljava/util/List;

    .line 9
    .line 10
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 11
    .line 12
    .line 13
    move-result v0

    .line 14
    return v0

    .line 15
    :cond_0
    iget-object v0, v0, Lcom/join/mgps/activity/GivePraiceActivity;->listData2:Ljava/util/List;

    .line 16
    .line 17
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 18
    .line 19
    .line 20
    move-result v0

    .line 21
    return v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "position"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/GivePraiceActivity$d;->c:Lcom/join/mgps/activity/GivePraiceActivity;

    .line 2
    .line 3
    iget v1, v0, Lcom/join/mgps/activity/GivePraiceActivity;->type:I

    .line 4
    .line 5
    const/4 v2, 0x1

    .line 6
    if-ne v1, v2, :cond_0

    .line 7
    .line 8
    iget-object v0, v0, Lcom/join/mgps/activity/GivePraiceActivity;->listData:Ljava/util/List;

    .line 9
    .line 10
    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 11
    .line 12
    .line 13
    move-result-object p1

    .line 14
    return-object p1

    .line 15
    :cond_0
    iget-object v0, v0, Lcom/join/mgps/activity/GivePraiceActivity;->listData2:Ljava/util/List;

    .line 16
    .line 17
    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 18
    .line 19
    .line 20
    move-result-object p1

    .line 21
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

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 12
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
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
    if-nez p2, :cond_0

    .line 2
    .line 3
    iget-object p2, p0, Lcom/join/mgps/activity/GivePraiceActivity$d;->c:Lcom/join/mgps/activity/GivePraiceActivity;

    .line 4
    .line 5
    iget-object p2, p2, Lcom/join/mgps/activity/GivePraiceActivity;->mContext:Landroid/content/Context;

    .line 6
    .line 7
    invoke-static {p2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    .line 8
    .line 9
    .line 10
    move-result-object p2

    .line 11
    const p3, 0x7f0d0370

    .line 12
    .line 13
    .line 14
    const/4 v0, 0x0

    .line 15
    invoke-virtual {p2, p3, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 16
    .line 17
    .line 18
    move-result-object p2

    .line 19
    new-instance p3, Lcom/join/mgps/activity/GivePraiceActivity$d$b;

    .line 20
    .line 21
    invoke-direct {p3, p0}, Lcom/join/mgps/activity/GivePraiceActivity$d$b;-><init>(Lcom/join/mgps/activity/GivePraiceActivity$d;)V

    .line 22
    .line 23
    .line 24
    const v0, 0x7f0a15aa

    .line 25
    .line 26
    .line 27
    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 28
    .line 29
    .line 30
    move-result-object v0

    .line 31
    check-cast v0, Lcom/facebook/drawee/view/SimpleDraweeView;

    .line 32
    .line 33
    iput-object v0, p3, Lcom/join/mgps/activity/GivePraiceActivity$d$b;->e:Lcom/facebook/drawee/view/SimpleDraweeView;

    .line 34
    .line 35
    const v0, 0x7f0a0f23

    .line 36
    .line 37
    .line 38
    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 39
    .line 40
    .line 41
    move-result-object v0

    .line 42
    check-cast v0, Landroid/widget/LinearLayout;

    .line 43
    .line 44
    iput-object v0, p3, Lcom/join/mgps/activity/GivePraiceActivity$d$b;->d:Landroid/widget/LinearLayout;

    .line 45
    .line 46
    const v0, 0x7f0a19d3

    .line 47
    .line 48
    .line 49
    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 50
    .line 51
    .line 52
    move-result-object v0

    .line 53
    check-cast v0, Landroid/widget/TextView;

    .line 54
    .line 55
    iput-object v0, p3, Lcom/join/mgps/activity/GivePraiceActivity$d$b;->b:Landroid/widget/TextView;

    .line 56
    .line 57
    const v0, 0x7f0a1a45

    .line 58
    .line 59
    .line 60
    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 61
    .line 62
    .line 63
    move-result-object v0

    .line 64
    check-cast v0, Landroid/widget/TextView;

    .line 65
    .line 66
    iput-object v0, p3, Lcom/join/mgps/activity/GivePraiceActivity$d$b;->c:Landroid/widget/TextView;

    .line 67
    .line 68
    const v0, 0x7f0a19f9

    .line 69
    .line 70
    .line 71
    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 72
    .line 73
    .line 74
    move-result-object v0

    .line 75
    check-cast v0, Landroid/widget/TextView;

    .line 76
    .line 77
    iput-object v0, p3, Lcom/join/mgps/activity/GivePraiceActivity$d$b;->a:Landroid/widget/TextView;

    .line 78
    .line 79
    invoke-virtual {p2, p3}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 80
    .line 81
    .line 82
    goto :goto_0

    .line 83
    :cond_0
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    .line 84
    .line 85
    .line 86
    move-result-object p3

    .line 87
    check-cast p3, Lcom/join/mgps/activity/GivePraiceActivity$d$b;

    .line 88
    .line 89
    :goto_0
    iget-object v0, p0, Lcom/join/mgps/activity/GivePraiceActivity$d;->c:Lcom/join/mgps/activity/GivePraiceActivity;

    .line 90
    .line 91
    iget v1, v0, Lcom/join/mgps/activity/GivePraiceActivity;->type:I

    .line 92
    .line 93
    const/4 v2, 0x1

    .line 94
    if-ne v1, v2, :cond_2

    .line 95
    .line 96
    iget-object v0, v0, Lcom/join/mgps/activity/GivePraiceActivity;->listData:Ljava/util/List;

    .line 97
    .line 98
    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 99
    .line 100
    .line 101
    move-result-object v0

    .line 102
    check-cast v0, Lcom/join/mgps/dto/ForumProfileMessageBean;

    .line 103
    .line 104
    invoke-virtual {v0}, Lcom/join/mgps/dto/ForumProfileMessageBean;->getPosts()Lcom/join/mgps/dto/ForumBean$ForumPostsBean;

    .line 105
    .line 106
    .line 107
    move-result-object v0

    .line 108
    if-eqz v0, :cond_1

    .line 109
    .line 110
    iget-object v0, p0, Lcom/join/mgps/activity/GivePraiceActivity$d;->c:Lcom/join/mgps/activity/GivePraiceActivity;

    .line 111
    .line 112
    iget-object v0, v0, Lcom/join/mgps/activity/GivePraiceActivity;->listData:Ljava/util/List;

    .line 113
    .line 114
    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 115
    .line 116
    .line 117
    move-result-object v0

    .line 118
    check-cast v0, Lcom/join/mgps/dto/ForumProfileMessageBean;

    .line 119
    .line 120
    iput-object v0, p0, Lcom/join/mgps/activity/GivePraiceActivity$d;->b:Lcom/join/mgps/dto/ForumProfileMessageBean;

    .line 121
    .line 122
    :cond_1
    iget-object v0, p3, Lcom/join/mgps/activity/GivePraiceActivity$d$b;->a:Landroid/widget/TextView;

    .line 123
    .line 124
    new-instance v1, Ljava/lang/StringBuilder;

    .line 125
    .line 126
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 127
    .line 128
    .line 129
    iget-object v3, p0, Lcom/join/mgps/activity/GivePraiceActivity$d;->c:Lcom/join/mgps/activity/GivePraiceActivity;

    .line 130
    .line 131
    iget-object v3, v3, Lcom/join/mgps/activity/GivePraiceActivity;->indexComment:Ljava/lang/String;

    .line 132
    .line 133
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 134
    .line 135
    .line 136
    iget-object v3, p0, Lcom/join/mgps/activity/GivePraiceActivity$d;->b:Lcom/join/mgps/dto/ForumProfileMessageBean;

    .line 137
    .line 138
    invoke-virtual {v3}, Lcom/join/mgps/dto/ForumProfileMessageBean;->getPosts()Lcom/join/mgps/dto/ForumBean$ForumPostsBean;

    .line 139
    .line 140
    .line 141
    move-result-object v3

    .line 142
    invoke-virtual {v3}, Lcom/join/mgps/dto/ForumBean$ForumPostsBean;->getMessage()Ljava/lang/String;

    .line 143
    .line 144
    .line 145
    move-result-object v3

    .line 146
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 147
    .line 148
    .line 149
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 150
    .line 151
    .line 152
    move-result-object v1

    .line 153
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 154
    .line 155
    .line 156
    iget-object v0, p3, Lcom/join/mgps/activity/GivePraiceActivity$d$b;->e:Lcom/facebook/drawee/view/SimpleDraweeView;

    .line 157
    .line 158
    iget-object v1, p0, Lcom/join/mgps/activity/GivePraiceActivity$d;->c:Lcom/join/mgps/activity/GivePraiceActivity;

    .line 159
    .line 160
    iget-object v1, v1, Lcom/join/mgps/activity/GivePraiceActivity;->listData:Ljava/util/List;

    .line 161
    .line 162
    invoke-interface {v1, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 163
    .line 164
    .line 165
    move-result-object v1

    .line 166
    check-cast v1, Lcom/join/mgps/dto/ForumProfileMessageBean;

    .line 167
    .line 168
    invoke-virtual {v1}, Lcom/join/mgps/dto/ForumProfileMessageBean;->getFrom_avatar_src()Ljava/lang/String;

    .line 169
    .line 170
    .line 171
    move-result-object v1

    .line 172
    invoke-virtual {v0, v1}, Lcom/facebook/drawee/view/SimpleDraweeView;->setImageURI(Ljava/lang/String;)V

    .line 173
    .line 174
    .line 175
    iget-object v0, p3, Lcom/join/mgps/activity/GivePraiceActivity$d$b;->b:Landroid/widget/TextView;

    .line 176
    .line 177
    iget-object v1, p0, Lcom/join/mgps/activity/GivePraiceActivity$d;->c:Lcom/join/mgps/activity/GivePraiceActivity;

    .line 178
    .line 179
    iget-object v1, v1, Lcom/join/mgps/activity/GivePraiceActivity;->listData:Ljava/util/List;

    .line 180
    .line 181
    invoke-interface {v1, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 182
    .line 183
    .line 184
    move-result-object v1

    .line 185
    check-cast v1, Lcom/join/mgps/dto/ForumProfileMessageBean;

    .line 186
    .line 187
    invoke-virtual {v1}, Lcom/join/mgps/dto/ForumProfileMessageBean;->getFrom_nickname()Ljava/lang/String;

    .line 188
    .line 189
    .line 190
    move-result-object v1

    .line 191
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 192
    .line 193
    .line 194
    goto :goto_1

    .line 195
    :cond_2
    iget-object v0, p3, Lcom/join/mgps/activity/GivePraiceActivity$d$b;->a:Landroid/widget/TextView;

    .line 196
    .line 197
    new-instance v1, Ljava/lang/StringBuilder;

    .line 198
    .line 199
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 200
    .line 201
    .line 202
    iget-object v3, p0, Lcom/join/mgps/activity/GivePraiceActivity$d;->c:Lcom/join/mgps/activity/GivePraiceActivity;

    .line 203
    .line 204
    iget-object v3, v3, Lcom/join/mgps/activity/GivePraiceActivity;->indexComment:Ljava/lang/String;

    .line 205
    .line 206
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 207
    .line 208
    .line 209
    iget-object v3, p0, Lcom/join/mgps/activity/GivePraiceActivity$d;->c:Lcom/join/mgps/activity/GivePraiceActivity;

    .line 210
    .line 211
    iget-object v3, v3, Lcom/join/mgps/activity/GivePraiceActivity;->listData2:Ljava/util/List;

    .line 212
    .line 213
    invoke-interface {v3, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 214
    .line 215
    .line 216
    move-result-object v3

    .line 217
    check-cast v3, Lcom/join/mgps/dto/GivePriaceBean$MessagesBean$DataBean;

    .line 218
    .line 219
    invoke-virtual {v3}, Lcom/join/mgps/dto/GivePriaceBean$MessagesBean$DataBean;->getOriginal_text()Ljava/lang/String;

    .line 220
    .line 221
    .line 222
    move-result-object v3

    .line 223
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 224
    .line 225
    .line 226
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 227
    .line 228
    .line 229
    move-result-object v1

    .line 230
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 231
    .line 232
    .line 233
    iget-object v0, p3, Lcom/join/mgps/activity/GivePraiceActivity$d$b;->e:Lcom/facebook/drawee/view/SimpleDraweeView;

    .line 234
    .line 235
    iget-object v1, p0, Lcom/join/mgps/activity/GivePraiceActivity$d;->c:Lcom/join/mgps/activity/GivePraiceActivity;

    .line 236
    .line 237
    iget-object v1, v1, Lcom/join/mgps/activity/GivePraiceActivity;->listData2:Ljava/util/List;

    .line 238
    .line 239
    invoke-interface {v1, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 240
    .line 241
    .line 242
    move-result-object v1

    .line 243
    check-cast v1, Lcom/join/mgps/dto/GivePriaceBean$MessagesBean$DataBean;

    .line 244
    .line 245
    invoke-virtual {v1}, Lcom/join/mgps/dto/GivePriaceBean$MessagesBean$DataBean;->getPraise_user_ico()Ljava/lang/String;

    .line 246
    .line 247
    .line 248
    move-result-object v1

    .line 249
    invoke-virtual {v0, v1}, Lcom/facebook/drawee/view/SimpleDraweeView;->setImageURI(Ljava/lang/String;)V

    .line 250
    .line 251
    .line 252
    iget-object v0, p3, Lcom/join/mgps/activity/GivePraiceActivity$d$b;->b:Landroid/widget/TextView;

    .line 253
    .line 254
    iget-object v1, p0, Lcom/join/mgps/activity/GivePraiceActivity$d;->c:Lcom/join/mgps/activity/GivePraiceActivity;

    .line 255
    .line 256
    iget-object v1, v1, Lcom/join/mgps/activity/GivePraiceActivity;->listData2:Ljava/util/List;

    .line 257
    .line 258
    invoke-interface {v1, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 259
    .line 260
    .line 261
    move-result-object v1

    .line 262
    check-cast v1, Lcom/join/mgps/dto/GivePriaceBean$MessagesBean$DataBean;

    .line 263
    .line 264
    invoke-virtual {v1}, Lcom/join/mgps/dto/GivePriaceBean$MessagesBean$DataBean;->getPraise_title()Ljava/lang/String;

    .line 265
    .line 266
    .line 267
    move-result-object v1

    .line 268
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 269
    .line 270
    .line 271
    :goto_1
    iget-object v0, p3, Lcom/join/mgps/activity/GivePraiceActivity$d$b;->d:Landroid/widget/LinearLayout;

    .line 272
    .line 273
    new-instance v1, Lcom/join/mgps/activity/GivePraiceActivity$d$a;

    .line 274
    .line 275
    invoke-direct {v1, p0, p1}, Lcom/join/mgps/activity/GivePraiceActivity$d$a;-><init>(Lcom/join/mgps/activity/GivePraiceActivity$d;I)V

    .line 276
    .line 277
    .line 278
    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 279
    .line 280
    .line 281
    new-instance v0, Ljava/text/SimpleDateFormat;

    .line 282
    .line 283
    const-string v1, "yyyy\u5e74MM\u6708dd\u65e5 HH:mm:ss"

    .line 284
    .line 285
    invoke-direct {v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 286
    .line 287
    .line 288
    new-instance v1, Ljava/util/Date;

    .line 289
    .line 290
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 291
    .line 292
    .line 293
    move-result-wide v3

    .line 294
    invoke-direct {v1, v3, v4}, Ljava/util/Date;-><init>(J)V

    .line 295
    .line 296
    .line 297
    iget-object v3, p0, Lcom/join/mgps/activity/GivePraiceActivity$d;->c:Lcom/join/mgps/activity/GivePraiceActivity;

    .line 298
    .line 299
    iget v4, v3, Lcom/join/mgps/activity/GivePraiceActivity;->type:I

    .line 300
    .line 301
    const-wide/16 v5, 0x3e8

    .line 302
    .line 303
    if-ne v4, v2, :cond_3

    .line 304
    .line 305
    iget-object p1, p0, Lcom/join/mgps/activity/GivePraiceActivity$d;->b:Lcom/join/mgps/dto/ForumProfileMessageBean;

    .line 306
    .line 307
    invoke-virtual {p1}, Lcom/join/mgps/dto/ForumProfileMessageBean;->getAdd_time()J

    .line 308
    .line 309
    .line 310
    move-result-wide v3

    .line 311
    goto :goto_2

    .line 312
    :cond_3
    iget-object v3, v3, Lcom/join/mgps/activity/GivePraiceActivity;->listData2:Ljava/util/List;

    .line 313
    .line 314
    invoke-interface {v3, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 315
    .line 316
    .line 317
    move-result-object p1

    .line 318
    check-cast p1, Lcom/join/mgps/dto/GivePriaceBean$MessagesBean$DataBean;

    .line 319
    .line 320
    invoke-virtual {p1}, Lcom/join/mgps/dto/GivePriaceBean$MessagesBean$DataBean;->getPraise_time()J

    .line 321
    .line 322
    .line 323
    move-result-wide v3

    .line 324
    :goto_2
    mul-long v3, v3, v5

    .line 325
    .line 326
    new-instance p1, Ljava/util/Date;

    .line 327
    .line 328
    invoke-direct {p1, v3, v4}, Ljava/util/Date;-><init>(J)V

    .line 329
    .line 330
    .line 331
    invoke-virtual {v0, v1}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    .line 332
    .line 333
    .line 334
    move-result-object v1

    .line 335
    invoke-virtual {v0, p1}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    .line 336
    .line 337
    .line 338
    move-result-object p1

    .line 339
    const-string v0, "\u65e5"

    .line 340
    .line 341
    const-string v3, "\u5e74"

    .line 342
    .line 343
    const-string v4, "\u6708"

    .line 344
    .line 345
    const-string v5, ""

    .line 346
    .line 347
    if-eqz p1, :cond_4

    .line 348
    .line 349
    invoke-virtual {p1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 350
    .line 351
    .line 352
    move-result v6

    .line 353
    if-nez v6, :cond_4

    .line 354
    .line 355
    invoke-virtual {p1, v3}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    .line 356
    .line 357
    .line 358
    move-result v5

    .line 359
    const/4 v6, 0x0

    .line 360
    invoke-virtual {p1, v6, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 361
    .line 362
    .line 363
    move-result-object v5

    .line 364
    invoke-virtual {p1, v3}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    .line 365
    .line 366
    .line 367
    move-result v7

    .line 368
    add-int/2addr v7, v2

    .line 369
    invoke-virtual {p1, v4}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    .line 370
    .line 371
    .line 372
    move-result v8

    .line 373
    invoke-virtual {p1, v7, v8}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 374
    .line 375
    .line 376
    move-result-object v7

    .line 377
    invoke-virtual {p1, v4}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    .line 378
    .line 379
    .line 380
    move-result v8

    .line 381
    add-int/2addr v8, v2

    .line 382
    invoke-virtual {p1, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    .line 383
    .line 384
    .line 385
    move-result v9

    .line 386
    invoke-virtual {p1, v8, v9}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 387
    .line 388
    .line 389
    move-result-object v8

    .line 390
    invoke-virtual {v1, v3}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    .line 391
    .line 392
    .line 393
    move-result v9

    .line 394
    invoke-virtual {v1, v6, v9}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 395
    .line 396
    .line 397
    move-result-object v6

    .line 398
    invoke-virtual {v1, v3}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    .line 399
    .line 400
    .line 401
    move-result v9

    .line 402
    add-int/2addr v9, v2

    .line 403
    invoke-virtual {v1, v4}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    .line 404
    .line 405
    .line 406
    move-result v10

    .line 407
    invoke-virtual {v1, v9, v10}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 408
    .line 409
    .line 410
    move-result-object v9

    .line 411
    invoke-virtual {v1, v4}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    .line 412
    .line 413
    .line 414
    move-result v10

    .line 415
    add-int/2addr v10, v2

    .line 416
    invoke-virtual {v1, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    .line 417
    .line 418
    .line 419
    move-result v11

    .line 420
    invoke-virtual {v1, v10, v11}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 421
    .line 422
    .line 423
    move-result-object v1

    .line 424
    goto :goto_3

    .line 425
    :cond_4
    move-object v1, v5

    .line 426
    move-object v6, v1

    .line 427
    move-object v7, v6

    .line 428
    move-object v8, v7

    .line 429
    move-object v9, v8

    .line 430
    :goto_3
    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 431
    .line 432
    .line 433
    move-result v6

    .line 434
    if-eqz v6, :cond_7

    .line 435
    .line 436
    invoke-virtual {v7, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 437
    .line 438
    .line 439
    move-result v3

    .line 440
    if-eqz v3, :cond_6

    .line 441
    .line 442
    invoke-virtual {v8, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 443
    .line 444
    .line 445
    move-result v1

    .line 446
    if-eqz v1, :cond_5

    .line 447
    .line 448
    const-string v0, " "

    .line 449
    .line 450
    invoke-virtual {p1, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    .line 451
    .line 452
    .line 453
    move-result v0

    .line 454
    add-int/2addr v0, v2

    .line 455
    const-string v1, ":"

    .line 456
    .line 457
    invoke-virtual {p1, v1}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    .line 458
    .line 459
    .line 460
    move-result v1

    .line 461
    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 462
    .line 463
    .line 464
    move-result-object p1

    .line 465
    iget-object p3, p3, Lcom/join/mgps/activity/GivePraiceActivity$d$b;->c:Landroid/widget/TextView;

    .line 466
    .line 467
    invoke-virtual {p3, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 468
    .line 469
    .line 470
    goto :goto_4

    .line 471
    :cond_5
    iget-object p1, p3, Lcom/join/mgps/activity/GivePraiceActivity$d$b;->c:Landroid/widget/TextView;

    .line 472
    .line 473
    new-instance p3, Ljava/lang/StringBuilder;

    .line 474
    .line 475
    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    .line 476
    .line 477
    .line 478
    invoke-virtual {p3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 479
    .line 480
    .line 481
    invoke-virtual {p3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 482
    .line 483
    .line 484
    invoke-virtual {p3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 485
    .line 486
    .line 487
    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 488
    .line 489
    .line 490
    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 491
    .line 492
    .line 493
    move-result-object p3

    .line 494
    invoke-virtual {p1, p3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 495
    .line 496
    .line 497
    goto :goto_4

    .line 498
    :cond_6
    iget-object p1, p3, Lcom/join/mgps/activity/GivePraiceActivity$d$b;->c:Landroid/widget/TextView;

    .line 499
    .line 500
    new-instance p3, Ljava/lang/StringBuilder;

    .line 501
    .line 502
    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    .line 503
    .line 504
    .line 505
    invoke-virtual {p3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 506
    .line 507
    .line 508
    invoke-virtual {p3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 509
    .line 510
    .line 511
    invoke-virtual {p3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 512
    .line 513
    .line 514
    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 515
    .line 516
    .line 517
    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 518
    .line 519
    .line 520
    move-result-object p3

    .line 521
    invoke-virtual {p1, p3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 522
    .line 523
    .line 524
    goto :goto_4

    .line 525
    :cond_7
    iget-object p1, p3, Lcom/join/mgps/activity/GivePraiceActivity$d$b;->c:Landroid/widget/TextView;

    .line 526
    .line 527
    new-instance p3, Ljava/lang/StringBuilder;

    .line 528
    .line 529
    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    .line 530
    .line 531
    .line 532
    invoke-virtual {p3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 533
    .line 534
    .line 535
    invoke-virtual {p3, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 536
    .line 537
    .line 538
    invoke-virtual {p3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 539
    .line 540
    .line 541
    invoke-virtual {p3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 542
    .line 543
    .line 544
    invoke-virtual {p3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 545
    .line 546
    .line 547
    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 548
    .line 549
    .line 550
    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 551
    .line 552
    .line 553
    move-result-object p3

    .line 554
    invoke-virtual {p1, p3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 555
    .line 556
    .line 557
    :goto_4
    return-object p2
.end method
