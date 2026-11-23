.class Lcom/join/mgps/activity/ForumPostsActivity$b0;
.super Landroid/widget/BaseAdapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/join/mgps/activity/ForumPostsActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "b0"
.end annotation


# instance fields
.field b:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/join/mgps/activity/ForumPostsActivity$c0;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic c:Lcom/join/mgps/activity/ForumPostsActivity;


# direct methods
.method public constructor <init>(Lcom/join/mgps/activity/ForumPostsActivity;)V
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
    iput-object p1, p0, Lcom/join/mgps/activity/ForumPostsActivity$b0;->c:Lcom/join/mgps/activity/ForumPostsActivity;

    .line 2
    .line 3
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 4
    .line 5
    .line 6
    new-instance p1, Ljava/util/ArrayList;

    .line 7
    .line 8
    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 9
    .line 10
    .line 11
    iput-object p1, p0, Lcom/join/mgps/activity/ForumPostsActivity$b0;->b:Ljava/util/List;

    .line 12
    .line 13
    return-void
.end method


# virtual methods
.method public a(Lcom/join/mgps/activity/ForumPostsActivity$c0;)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "bean"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/join/mgps/activity/ForumPostsActivity$c0;",
            ")",
            "Ljava/util/List<",
            "Lcom/join/mgps/activity/ForumPostsActivity$c0;",
            ">;"
        }
    .end annotation

    .line 1
    if-nez p1, :cond_0

    .line 2
    .line 3
    iget-object p1, p0, Lcom/join/mgps/activity/ForumPostsActivity$b0;->b:Ljava/util/List;

    .line 4
    .line 5
    return-object p1

    .line 6
    :cond_0
    iget-object v0, p0, Lcom/join/mgps/activity/ForumPostsActivity$b0;->b:Ljava/util/List;

    .line 7
    .line 8
    if-nez v0, :cond_1

    .line 9
    .line 10
    new-instance v0, Ljava/util/ArrayList;

    .line 11
    .line 12
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 13
    .line 14
    .line 15
    iput-object v0, p0, Lcom/join/mgps/activity/ForumPostsActivity$b0;->b:Ljava/util/List;

    .line 16
    .line 17
    :cond_1
    iget-object v0, p0, Lcom/join/mgps/activity/ForumPostsActivity$b0;->b:Ljava/util/List;

    .line 18
    .line 19
    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 20
    .line 21
    .line 22
    iget-object p1, p0, Lcom/join/mgps/activity/ForumPostsActivity$b0;->b:Ljava/util/List;

    .line 23
    .line 24
    return-object p1
.end method

.method public b()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/join/mgps/activity/ForumPostsActivity$c0;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/ForumPostsActivity$b0;->b:Ljava/util/List;

    .line 2
    .line 3
    return-object v0
.end method

.method public c(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "beans"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/join/mgps/activity/ForumPostsActivity$c0;",
            ">;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/join/mgps/activity/ForumPostsActivity$b0;->b:Ljava/util/List;

    .line 2
    .line 3
    return-void
.end method

.method public getCount()I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/ForumPostsActivity$b0;->b:Ljava/util/List;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    return v0

    .line 10
    :cond_0
    const/4 v0, 0x0

    .line 11
    return v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "i"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/ForumPostsActivity$b0;->b:Ljava/util/List;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 6
    .line 7
    .line 8
    move-result-object p1

    .line 9
    return-object p1

    .line 10
    :cond_0
    const/4 p1, 0x0

    .line 11
    return-object p1
.end method

.method public getItemId(I)J
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "i"
        }
    .end annotation

    int-to-long v0, p1

    return-wide v0
.end method

.method public getItemViewType(I)I
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "position"
        }
    .end annotation

    .line 1
    invoke-super {p0, p1}, Landroid/widget/BaseAdapter;->getItemViewType(I)I

    .line 2
    .line 3
    .line 4
    move-result p1

    .line 5
    return p1
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "i",
            "view",
            "viewGroup"
        }
    .end annotation

    .line 1
    if-eqz p2, :cond_0

    .line 2
    .line 3
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object p3

    .line 7
    check-cast p3, Lcom/join/mgps/activity/ForumPostsActivity$d0;

    .line 8
    .line 9
    goto :goto_0

    .line 10
    :cond_0
    new-instance p3, Lcom/join/mgps/activity/ForumPostsActivity$d0;

    .line 11
    .line 12
    iget-object p2, p0, Lcom/join/mgps/activity/ForumPostsActivity$b0;->c:Lcom/join/mgps/activity/ForumPostsActivity;

    .line 13
    .line 14
    invoke-direct {p3, p2}, Lcom/join/mgps/activity/ForumPostsActivity$d0;-><init>(Lcom/join/mgps/activity/ForumPostsActivity;)V

    .line 15
    .line 16
    .line 17
    iget-object p2, p0, Lcom/join/mgps/activity/ForumPostsActivity$b0;->c:Lcom/join/mgps/activity/ForumPostsActivity;

    .line 18
    .line 19
    invoke-static {p2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    .line 20
    .line 21
    .line 22
    move-result-object p2

    .line 23
    const v0, 0x7f0d0279

    .line 24
    .line 25
    .line 26
    const/4 v1, 0x0

    .line 27
    invoke-virtual {p2, v0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 28
    .line 29
    .line 30
    move-result-object p2

    .line 31
    const v0, 0x7f0a084f

    .line 32
    .line 33
    .line 34
    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 35
    .line 36
    .line 37
    move-result-object v0

    .line 38
    check-cast v0, Landroid/widget/ImageView;

    .line 39
    .line 40
    iput-object v0, p3, Lcom/join/mgps/activity/ForumPostsActivity$d0;->a:Landroid/widget/ImageView;

    .line 41
    .line 42
    const v0, 0x7f0a10d8

    .line 43
    .line 44
    .line 45
    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 46
    .line 47
    .line 48
    move-result-object v0

    .line 49
    check-cast v0, Landroid/widget/TextView;

    .line 50
    .line 51
    iput-object v0, p3, Lcom/join/mgps/activity/ForumPostsActivity$d0;->b:Landroid/widget/TextView;

    .line 52
    .line 53
    const v0, 0x7f0a1b37

    .line 54
    .line 55
    .line 56
    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 57
    .line 58
    .line 59
    move-result-object v0

    .line 60
    iput-object v0, p3, Lcom/join/mgps/activity/ForumPostsActivity$d0;->c:Landroid/view/View;

    .line 61
    .line 62
    invoke-virtual {p2, p3}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 63
    .line 64
    .line 65
    :goto_0
    invoke-virtual {p0}, Lcom/join/mgps/activity/ForumPostsActivity$b0;->getCount()I

    .line 66
    .line 67
    .line 68
    move-result v0

    .line 69
    const/4 v1, 0x1

    .line 70
    sub-int/2addr v0, v1

    .line 71
    const/16 v2, 0x8

    .line 72
    .line 73
    if-ne p1, v0, :cond_1

    .line 74
    .line 75
    iget-object v0, p3, Lcom/join/mgps/activity/ForumPostsActivity$d0;->c:Landroid/view/View;

    .line 76
    .line 77
    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 78
    .line 79
    .line 80
    goto :goto_1

    .line 81
    :cond_1
    iget-object v0, p3, Lcom/join/mgps/activity/ForumPostsActivity$d0;->c:Landroid/view/View;

    .line 82
    .line 83
    const/4 v3, 0x0

    .line 84
    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 85
    .line 86
    .line 87
    :goto_1
    invoke-virtual {p0, p1}, Lcom/join/mgps/activity/ForumPostsActivity$b0;->getItem(I)Ljava/lang/Object;

    .line 88
    .line 89
    .line 90
    move-result-object p1

    .line 91
    check-cast p1, Lcom/join/mgps/activity/ForumPostsActivity$c0;

    .line 92
    .line 93
    iget v0, p1, Lcom/join/mgps/activity/ForumPostsActivity$c0;->a:I

    .line 94
    .line 95
    if-ne v0, v1, :cond_3

    .line 96
    .line 97
    iget-object v0, p3, Lcom/join/mgps/activity/ForumPostsActivity$d0;->a:Landroid/widget/ImageView;

    .line 98
    .line 99
    iget-boolean p1, p1, Lcom/join/mgps/activity/ForumPostsActivity$c0;->c:Z

    .line 100
    .line 101
    if-eqz p1, :cond_2

    .line 102
    .line 103
    const p1, 0x7f080d67

    .line 104
    .line 105
    .line 106
    goto :goto_2

    .line 107
    :cond_2
    const p1, 0x7f080d66

    .line 108
    .line 109
    .line 110
    :goto_2
    invoke-virtual {v0, p1}, Landroid/view/View;->setBackgroundResource(I)V

    .line 111
    .line 112
    .line 113
    iget-object p1, p3, Lcom/join/mgps/activity/ForumPostsActivity$d0;->b:Landroid/widget/TextView;

    .line 114
    .line 115
    const-string p3, "\u6536\u85cf"

    .line 116
    .line 117
    invoke-virtual {p1, p3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 118
    .line 119
    .line 120
    new-instance p1, Lcom/join/mgps/activity/ForumPostsActivity$b0$b;

    .line 121
    .line 122
    invoke-direct {p1, p0}, Lcom/join/mgps/activity/ForumPostsActivity$b0$b;-><init>(Lcom/join/mgps/activity/ForumPostsActivity$b0;)V

    .line 123
    .line 124
    .line 125
    invoke-virtual {p2, p1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 126
    .line 127
    .line 128
    goto/16 :goto_5

    .line 129
    .line 130
    :cond_3
    const/4 v1, 0x2

    .line 131
    if-ne v0, v1, :cond_4

    .line 132
    .line 133
    iget-object p1, p3, Lcom/join/mgps/activity/ForumPostsActivity$d0;->a:Landroid/widget/ImageView;

    .line 134
    .line 135
    const v0, 0x7f0808f4

    .line 136
    .line 137
    .line 138
    invoke-virtual {p1, v0}, Landroid/view/View;->setBackgroundResource(I)V

    .line 139
    .line 140
    .line 141
    iget-object p1, p3, Lcom/join/mgps/activity/ForumPostsActivity$d0;->b:Landroid/widget/TextView;

    .line 142
    .line 143
    const-string p3, "\u5206\u4eab"

    .line 144
    .line 145
    invoke-virtual {p1, p3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 146
    .line 147
    .line 148
    new-instance p1, Lcom/join/mgps/activity/ForumPostsActivity$b0$c;

    .line 149
    .line 150
    invoke-direct {p1, p0}, Lcom/join/mgps/activity/ForumPostsActivity$b0$c;-><init>(Lcom/join/mgps/activity/ForumPostsActivity$b0;)V

    .line 151
    .line 152
    .line 153
    invoke-virtual {p2, p1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 154
    .line 155
    .line 156
    goto/16 :goto_5

    .line 157
    .line 158
    :cond_4
    const/4 v1, 0x3

    .line 159
    if-ne v0, v1, :cond_5

    .line 160
    .line 161
    iget-object p1, p3, Lcom/join/mgps/activity/ForumPostsActivity$d0;->a:Landroid/widget/ImageView;

    .line 162
    .line 163
    const v0, 0x7f080d61

    .line 164
    .line 165
    .line 166
    invoke-virtual {p1, v0}, Landroid/view/View;->setBackgroundResource(I)V

    .line 167
    .line 168
    .line 169
    iget-object p1, p3, Lcom/join/mgps/activity/ForumPostsActivity$d0;->b:Landroid/widget/TextView;

    .line 170
    .line 171
    const-string p3, "\u5012\u5e8f\u67e5\u770b"

    .line 172
    .line 173
    invoke-virtual {p1, p3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 174
    .line 175
    .line 176
    new-instance p1, Lcom/join/mgps/activity/ForumPostsActivity$b0$d;

    .line 177
    .line 178
    invoke-direct {p1, p0}, Lcom/join/mgps/activity/ForumPostsActivity$b0$d;-><init>(Lcom/join/mgps/activity/ForumPostsActivity$b0;)V

    .line 179
    .line 180
    .line 181
    invoke-virtual {p2, p1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 182
    .line 183
    .line 184
    goto/16 :goto_5

    .line 185
    .line 186
    :cond_5
    const/4 v1, 0x4

    .line 187
    if-ne v0, v1, :cond_6

    .line 188
    .line 189
    iget-object p1, p3, Lcom/join/mgps/activity/ForumPostsActivity$d0;->a:Landroid/widget/ImageView;

    .line 190
    .line 191
    const v0, 0x7f080d62

    .line 192
    .line 193
    .line 194
    invoke-virtual {p1, v0}, Landroid/view/View;->setBackgroundResource(I)V

    .line 195
    .line 196
    .line 197
    iget-object p1, p3, Lcom/join/mgps/activity/ForumPostsActivity$d0;->b:Landroid/widget/TextView;

    .line 198
    .line 199
    const-string p3, "\u6b63\u5e8f\u67e5\u770b"

    .line 200
    .line 201
    invoke-virtual {p1, p3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 202
    .line 203
    .line 204
    new-instance p1, Lcom/join/mgps/activity/ForumPostsActivity$b0$e;

    .line 205
    .line 206
    invoke-direct {p1, p0}, Lcom/join/mgps/activity/ForumPostsActivity$b0$e;-><init>(Lcom/join/mgps/activity/ForumPostsActivity$b0;)V

    .line 207
    .line 208
    .line 209
    invoke-virtual {p2, p1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 210
    .line 211
    .line 212
    goto/16 :goto_5

    .line 213
    .line 214
    :cond_6
    const/4 v1, 0x5

    .line 215
    if-ne v0, v1, :cond_7

    .line 216
    .line 217
    iget-object p1, p3, Lcom/join/mgps/activity/ForumPostsActivity$d0;->a:Landroid/widget/ImageView;

    .line 218
    .line 219
    const v0, 0x7f0808f3

    .line 220
    .line 221
    .line 222
    invoke-virtual {p1, v0}, Landroid/view/View;->setBackgroundResource(I)V

    .line 223
    .line 224
    .line 225
    iget-object p1, p3, Lcom/join/mgps/activity/ForumPostsActivity$d0;->b:Landroid/widget/TextView;

    .line 226
    .line 227
    const-string p3, "\u4e3e\u62a5"

    .line 228
    .line 229
    invoke-virtual {p1, p3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 230
    .line 231
    .line 232
    new-instance p1, Lcom/join/mgps/activity/ForumPostsActivity$b0$f;

    .line 233
    .line 234
    invoke-direct {p1, p0}, Lcom/join/mgps/activity/ForumPostsActivity$b0$f;-><init>(Lcom/join/mgps/activity/ForumPostsActivity$b0;)V

    .line 235
    .line 236
    .line 237
    invoke-virtual {p2, p1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 238
    .line 239
    .line 240
    goto/16 :goto_5

    .line 241
    .line 242
    :cond_7
    const/4 v1, 0x6

    .line 243
    const v3, 0x7f0808f2

    .line 244
    .line 245
    .line 246
    if-ne v0, v1, :cond_8

    .line 247
    .line 248
    iget-object p1, p3, Lcom/join/mgps/activity/ForumPostsActivity$d0;->a:Landroid/widget/ImageView;

    .line 249
    .line 250
    invoke-virtual {p1, v3}, Landroid/view/View;->setBackgroundResource(I)V

    .line 251
    .line 252
    .line 253
    iget-object p1, p3, Lcom/join/mgps/activity/ForumPostsActivity$d0;->b:Landroid/widget/TextView;

    .line 254
    .line 255
    const-string p3, "\u5220\u5e16"

    .line 256
    .line 257
    invoke-virtual {p1, p3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 258
    .line 259
    .line 260
    new-instance p1, Lcom/join/mgps/activity/ForumPostsActivity$b0$g;

    .line 261
    .line 262
    invoke-direct {p1, p0}, Lcom/join/mgps/activity/ForumPostsActivity$b0$g;-><init>(Lcom/join/mgps/activity/ForumPostsActivity$b0;)V

    .line 263
    .line 264
    .line 265
    invoke-virtual {p2, p1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 266
    .line 267
    .line 268
    goto/16 :goto_5

    .line 269
    .line 270
    :cond_8
    const/4 v1, 0x7

    .line 271
    if-ne v0, v1, :cond_a

    .line 272
    .line 273
    iget-object v0, p3, Lcom/join/mgps/activity/ForumPostsActivity$d0;->a:Landroid/widget/ImageView;

    .line 274
    .line 275
    iget-boolean p1, p1, Lcom/join/mgps/activity/ForumPostsActivity$c0;->d:Z

    .line 276
    .line 277
    if-eqz p1, :cond_9

    .line 278
    .line 279
    const p1, 0x7f080d64

    .line 280
    .line 281
    .line 282
    goto :goto_3

    .line 283
    :cond_9
    const p1, 0x7f080d63

    .line 284
    .line 285
    .line 286
    :goto_3
    invoke-virtual {v0, p1}, Landroid/view/View;->setBackgroundResource(I)V

    .line 287
    .line 288
    .line 289
    iget-object p1, p3, Lcom/join/mgps/activity/ForumPostsActivity$d0;->b:Landroid/widget/TextView;

    .line 290
    .line 291
    const-string p3, "\u52a0\u7cbe"

    .line 292
    .line 293
    invoke-virtual {p1, p3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 294
    .line 295
    .line 296
    new-instance p1, Lcom/join/mgps/activity/ForumPostsActivity$b0$h;

    .line 297
    .line 298
    invoke-direct {p1, p0}, Lcom/join/mgps/activity/ForumPostsActivity$b0$h;-><init>(Lcom/join/mgps/activity/ForumPostsActivity$b0;)V

    .line 299
    .line 300
    .line 301
    invoke-virtual {p2, p1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 302
    .line 303
    .line 304
    goto :goto_5

    .line 305
    :cond_a
    if-ne v0, v2, :cond_b

    .line 306
    .line 307
    iget-object p1, p3, Lcom/join/mgps/activity/ForumPostsActivity$d0;->a:Landroid/widget/ImageView;

    .line 308
    .line 309
    const v0, 0x7f080d6c

    .line 310
    .line 311
    .line 312
    invoke-virtual {p1, v0}, Landroid/view/View;->setBackgroundResource(I)V

    .line 313
    .line 314
    .line 315
    iget-object p1, p3, Lcom/join/mgps/activity/ForumPostsActivity$d0;->b:Landroid/widget/TextView;

    .line 316
    .line 317
    const-string p3, "\u6536\u5f55\u81f3\u8bdd\u9898"

    .line 318
    .line 319
    invoke-virtual {p1, p3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 320
    .line 321
    .line 322
    new-instance p1, Lcom/join/mgps/activity/ForumPostsActivity$b0$i;

    .line 323
    .line 324
    invoke-direct {p1, p0}, Lcom/join/mgps/activity/ForumPostsActivity$b0$i;-><init>(Lcom/join/mgps/activity/ForumPostsActivity$b0;)V

    .line 325
    .line 326
    .line 327
    invoke-virtual {p2, p1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 328
    .line 329
    .line 330
    goto :goto_5

    .line 331
    :cond_b
    const/16 v1, 0x9

    .line 332
    .line 333
    if-ne v0, v1, :cond_c

    .line 334
    .line 335
    iget-object p1, p3, Lcom/join/mgps/activity/ForumPostsActivity$d0;->a:Landroid/widget/ImageView;

    .line 336
    .line 337
    invoke-virtual {p1, v3}, Landroid/view/View;->setBackgroundResource(I)V

    .line 338
    .line 339
    .line 340
    iget-object p1, p3, Lcom/join/mgps/activity/ForumPostsActivity$d0;->b:Landroid/widget/TextView;

    .line 341
    .line 342
    const-string p3, "\u79fb\u9664\u8bdd\u9898"

    .line 343
    .line 344
    invoke-virtual {p1, p3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 345
    .line 346
    .line 347
    new-instance p1, Lcom/join/mgps/activity/ForumPostsActivity$b0$j;

    .line 348
    .line 349
    invoke-direct {p1, p0}, Lcom/join/mgps/activity/ForumPostsActivity$b0$j;-><init>(Lcom/join/mgps/activity/ForumPostsActivity$b0;)V

    .line 350
    .line 351
    .line 352
    invoke-virtual {p2, p1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 353
    .line 354
    .line 355
    goto :goto_5

    .line 356
    :cond_c
    const/16 v1, 0xa

    .line 357
    .line 358
    if-ne v0, v1, :cond_e

    .line 359
    .line 360
    iget-object v0, p3, Lcom/join/mgps/activity/ForumPostsActivity$d0;->a:Landroid/widget/ImageView;

    .line 361
    .line 362
    iget-boolean p1, p1, Lcom/join/mgps/activity/ForumPostsActivity$c0;->e:Z

    .line 363
    .line 364
    if-eqz p1, :cond_d

    .line 365
    .line 366
    const p1, 0x7f080d69

    .line 367
    .line 368
    .line 369
    goto :goto_4

    .line 370
    :cond_d
    const p1, 0x7f080d68

    .line 371
    .line 372
    .line 373
    :goto_4
    invoke-virtual {v0, p1}, Landroid/view/View;->setBackgroundResource(I)V

    .line 374
    .line 375
    .line 376
    iget-object p1, p3, Lcom/join/mgps/activity/ForumPostsActivity$d0;->b:Landroid/widget/TextView;

    .line 377
    .line 378
    const-string p3, "\u7f6e\u9876"

    .line 379
    .line 380
    invoke-virtual {p1, p3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 381
    .line 382
    .line 383
    new-instance p1, Lcom/join/mgps/activity/ForumPostsActivity$b0$a;

    .line 384
    .line 385
    invoke-direct {p1, p0}, Lcom/join/mgps/activity/ForumPostsActivity$b0$a;-><init>(Lcom/join/mgps/activity/ForumPostsActivity$b0;)V

    .line 386
    .line 387
    .line 388
    invoke-virtual {p2, p1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 389
    .line 390
    .line 391
    :cond_e
    :goto_5
    return-object p2
.end method

.method public getViewTypeCount()I
    .locals 1

    .line 1
    invoke-super {p0}, Landroid/widget/BaseAdapter;->getViewTypeCount()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    return v0
.end method
