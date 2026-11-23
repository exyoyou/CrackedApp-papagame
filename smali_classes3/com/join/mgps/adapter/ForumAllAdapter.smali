.class public Lcom/join/mgps/adapter/ForumAllAdapter;
.super Landroid/widget/BaseAdapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/join/mgps/adapter/ForumAllAdapter$e;,
        Lcom/join/mgps/adapter/ForumAllAdapter$ViewType;,
        Lcom/join/mgps/adapter/ForumAllAdapter$c;,
        Lcom/join/mgps/adapter/ForumAllAdapter$d;,
        Lcom/join/mgps/adapter/ForumAllAdapter$f;
    }
.end annotation


# instance fields
.field private b:Landroid/content/Context;

.field private c:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/join/mgps/adapter/ForumAllAdapter$e;",
            ">;"
        }
    .end annotation
.end field

.field d:Landroid/widget/LinearLayout$LayoutParams;

.field e:Lcom/join/mgps/adapter/ForumAllAdapter$d;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "mContext"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/join/mgps/adapter/ForumAllAdapter;->b:Landroid/content/Context;

    .line 5
    .line 6
    new-instance p1, Ljava/util/ArrayList;

    .line 7
    .line 8
    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 9
    .line 10
    .line 11
    iput-object p1, p0, Lcom/join/mgps/adapter/ForumAllAdapter;->c:Ljava/util/List;

    .line 12
    .line 13
    return-void
.end method

.method private a(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 2
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
    if-eqz p2, :cond_0

    .line 2
    .line 3
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object p3

    .line 7
    check-cast p3, Lcom/join/mgps/adapter/ForumAllAdapter$c;

    .line 8
    .line 9
    goto/16 :goto_0

    .line 10
    .line 11
    :cond_0
    new-instance p3, Lcom/join/mgps/adapter/ForumAllAdapter$c;

    .line 12
    .line 13
    invoke-direct {p3, p0}, Lcom/join/mgps/adapter/ForumAllAdapter$c;-><init>(Lcom/join/mgps/adapter/ForumAllAdapter;)V

    .line 14
    .line 15
    .line 16
    iget-object p2, p0, Lcom/join/mgps/adapter/ForumAllAdapter;->b:Landroid/content/Context;

    .line 17
    .line 18
    invoke-static {p2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    .line 19
    .line 20
    .line 21
    move-result-object p2

    .line 22
    const v0, 0x7f0d068a

    .line 23
    .line 24
    .line 25
    const/4 v1, 0x0

    .line 26
    invoke-virtual {p2, v0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 27
    .line 28
    .line 29
    move-result-object p2

    .line 30
    const v0, 0x7f0a1051

    .line 31
    .line 32
    .line 33
    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 34
    .line 35
    .line 36
    move-result-object v0

    .line 37
    iput-object v0, p3, Lcom/join/mgps/adapter/ForumAllAdapter$c;->b:Landroid/view/View;

    .line 38
    .line 39
    const v1, 0x7f0a0697

    .line 40
    .line 41
    .line 42
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 43
    .line 44
    .line 45
    move-result-object v0

    .line 46
    check-cast v0, Lcom/facebook/drawee/view/SimpleDraweeView;

    .line 47
    .line 48
    iput-object v0, p3, Lcom/join/mgps/adapter/ForumAllAdapter$c;->c:Lcom/facebook/drawee/view/SimpleDraweeView;

    .line 49
    .line 50
    iget-object v0, p3, Lcom/join/mgps/adapter/ForumAllAdapter$c;->b:Landroid/view/View;

    .line 51
    .line 52
    const v1, 0x7f0a069a

    .line 53
    .line 54
    .line 55
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 56
    .line 57
    .line 58
    move-result-object v0

    .line 59
    check-cast v0, Landroid/widget/TextView;

    .line 60
    .line 61
    iput-object v0, p3, Lcom/join/mgps/adapter/ForumAllAdapter$c;->d:Landroid/widget/TextView;

    .line 62
    .line 63
    iget-object v0, p3, Lcom/join/mgps/adapter/ForumAllAdapter$c;->b:Landroid/view/View;

    .line 64
    .line 65
    const v1, 0x7f0a0693

    .line 66
    .line 67
    .line 68
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 69
    .line 70
    .line 71
    move-result-object v0

    .line 72
    check-cast v0, Landroid/widget/TextView;

    .line 73
    .line 74
    iput-object v0, p3, Lcom/join/mgps/adapter/ForumAllAdapter$c;->m:Landroid/widget/TextView;

    .line 75
    .line 76
    iget-object v0, p3, Lcom/join/mgps/adapter/ForumAllAdapter$c;->b:Landroid/view/View;

    .line 77
    .line 78
    const v1, 0x7f0a06bb

    .line 79
    .line 80
    .line 81
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 82
    .line 83
    .line 84
    move-result-object v0

    .line 85
    check-cast v0, Landroid/widget/TextView;

    .line 86
    .line 87
    iput-object v0, p3, Lcom/join/mgps/adapter/ForumAllAdapter$c;->e:Landroid/widget/TextView;

    .line 88
    .line 89
    iget-object v0, p3, Lcom/join/mgps/adapter/ForumAllAdapter$c;->b:Landroid/view/View;

    .line 90
    .line 91
    const v1, 0x7f0a06b3

    .line 92
    .line 93
    .line 94
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 95
    .line 96
    .line 97
    move-result-object v0

    .line 98
    check-cast v0, Landroid/widget/TextView;

    .line 99
    .line 100
    iput-object v0, p3, Lcom/join/mgps/adapter/ForumAllAdapter$c;->f:Landroid/widget/TextView;

    .line 101
    .line 102
    iget-object v0, p3, Lcom/join/mgps/adapter/ForumAllAdapter$c;->b:Landroid/view/View;

    .line 103
    .line 104
    const v1, 0x7f0a0696

    .line 105
    .line 106
    .line 107
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 108
    .line 109
    .line 110
    move-result-object v0

    .line 111
    check-cast v0, Landroid/widget/TextView;

    .line 112
    .line 113
    iput-object v0, p3, Lcom/join/mgps/adapter/ForumAllAdapter$c;->g:Landroid/widget/TextView;

    .line 114
    .line 115
    iget-object v0, p3, Lcom/join/mgps/adapter/ForumAllAdapter$c;->b:Landroid/view/View;

    .line 116
    .line 117
    const v1, 0x7f0a0690

    .line 118
    .line 119
    .line 120
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 121
    .line 122
    .line 123
    move-result-object v0

    .line 124
    check-cast v0, Landroid/widget/LinearLayout;

    .line 125
    .line 126
    iput-object v0, p3, Lcom/join/mgps/adapter/ForumAllAdapter$c;->i:Landroid/widget/LinearLayout;

    .line 127
    .line 128
    iget-object v0, p3, Lcom/join/mgps/adapter/ForumAllAdapter$c;->b:Landroid/view/View;

    .line 129
    .line 130
    const v1, 0x7f0a068b

    .line 131
    .line 132
    .line 133
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 134
    .line 135
    .line 136
    move-result-object v0

    .line 137
    check-cast v0, Landroid/widget/LinearLayout;

    .line 138
    .line 139
    iput-object v0, p3, Lcom/join/mgps/adapter/ForumAllAdapter$c;->j:Landroid/widget/LinearLayout;

    .line 140
    .line 141
    iget-object v0, p3, Lcom/join/mgps/adapter/ForumAllAdapter$c;->b:Landroid/view/View;

    .line 142
    .line 143
    const v1, 0x7f0a0685

    .line 144
    .line 145
    .line 146
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 147
    .line 148
    .line 149
    move-result-object v0

    .line 150
    check-cast v0, Landroid/widget/LinearLayout;

    .line 151
    .line 152
    iput-object v0, p3, Lcom/join/mgps/adapter/ForumAllAdapter$c;->k:Landroid/widget/LinearLayout;

    .line 153
    .line 154
    iget-object v0, p3, Lcom/join/mgps/adapter/ForumAllAdapter$c;->b:Landroid/view/View;

    .line 155
    .line 156
    const v1, 0x7f0a068e

    .line 157
    .line 158
    .line 159
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 160
    .line 161
    .line 162
    move-result-object v0

    .line 163
    check-cast v0, Landroid/widget/RelativeLayout;

    .line 164
    .line 165
    iput-object v0, p3, Lcom/join/mgps/adapter/ForumAllAdapter$c;->l:Landroid/widget/RelativeLayout;

    .line 166
    .line 167
    iget-object v0, p3, Lcom/join/mgps/adapter/ForumAllAdapter$c;->b:Landroid/view/View;

    .line 168
    .line 169
    const v1, 0x7f0a06ba

    .line 170
    .line 171
    .line 172
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 173
    .line 174
    .line 175
    move-result-object v0

    .line 176
    check-cast v0, Landroid/widget/TextView;

    .line 177
    .line 178
    iput-object v0, p3, Lcom/join/mgps/adapter/ForumAllAdapter$c;->n:Landroid/widget/TextView;

    .line 179
    .line 180
    iget-object v0, p3, Lcom/join/mgps/adapter/ForumAllAdapter$c;->b:Landroid/view/View;

    .line 181
    .line 182
    const v1, 0x7f0a0694

    .line 183
    .line 184
    .line 185
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 186
    .line 187
    .line 188
    move-result-object v0

    .line 189
    check-cast v0, Landroid/widget/Button;

    .line 190
    .line 191
    iput-object v0, p3, Lcom/join/mgps/adapter/ForumAllAdapter$c;->h:Landroid/widget/Button;

    .line 192
    .line 193
    invoke-virtual {p2, p3}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 194
    .line 195
    .line 196
    :goto_0
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/join/mgps/adapter/ForumAllAdapter;->getItem(I)Ljava/lang/Object;

    .line 197
    .line 198
    .line 199
    move-result-object p1

    .line 200
    check-cast p1, Lcom/join/mgps/adapter/ForumAllAdapter$e$d;

    .line 201
    .line 202
    if-nez p1, :cond_1

    .line 203
    .line 204
    return-object p2

    .line 205
    :cond_1
    iget-object v0, p3, Lcom/join/mgps/adapter/ForumAllAdapter$c;->i:Landroid/widget/LinearLayout;

    .line 206
    .line 207
    const/4 v1, 0x0

    .line 208
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 209
    .line 210
    .line 211
    iget-object v0, p3, Lcom/join/mgps/adapter/ForumAllAdapter$c;->j:Landroid/widget/LinearLayout;

    .line 212
    .line 213
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 214
    .line 215
    .line 216
    iget-object v0, p3, Lcom/join/mgps/adapter/ForumAllAdapter$c;->k:Landroid/widget/LinearLayout;

    .line 217
    .line 218
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 219
    .line 220
    .line 221
    iget-object v0, p3, Lcom/join/mgps/adapter/ForumAllAdapter$c;->n:Landroid/widget/TextView;

    .line 222
    .line 223
    const/16 v1, 0x8

    .line 224
    .line 225
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 226
    .line 227
    .line 228
    iget-object v0, p1, Lcom/join/mgps/adapter/ForumAllAdapter$e$d;->a:Lcom/join/mgps/dto/ForumBean;

    .line 229
    .line 230
    iget-object v1, p3, Lcom/join/mgps/adapter/ForumAllAdapter$c;->b:Landroid/view/View;

    .line 231
    .line 232
    invoke-direct {p0, v0, v1, p3}, Lcom/join/mgps/adapter/ForumAllAdapter;->d(Lcom/join/mgps/dto/ForumBean;Landroid/view/View;Lcom/join/mgps/adapter/ForumAllAdapter$c;)V

    .line 233
    .line 234
    .line 235
    iget-object v0, p1, Lcom/join/mgps/adapter/ForumAllAdapter$e$d;->a:Lcom/join/mgps/dto/ForumBean;

    .line 236
    .line 237
    if-eqz v0, :cond_2

    .line 238
    .line 239
    invoke-virtual {v0}, Lcom/join/mgps/dto/ForumBean;->is_follow()Z

    .line 240
    .line 241
    .line 242
    move-result v0

    .line 243
    if-eqz v0, :cond_2

    .line 244
    .line 245
    iget-object v0, p3, Lcom/join/mgps/adapter/ForumAllAdapter$c;->h:Landroid/widget/Button;

    .line 246
    .line 247
    const-string v1, "\u5df2\u5173\u6ce8"

    .line 248
    .line 249
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 250
    .line 251
    .line 252
    iget-object v0, p3, Lcom/join/mgps/adapter/ForumAllAdapter$c;->h:Landroid/widget/Button;

    .line 253
    .line 254
    const/high16 v1, 0x41400000    # 12.0f

    .line 255
    .line 256
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextSize(F)V

    .line 257
    .line 258
    .line 259
    iget-object v0, p3, Lcom/join/mgps/adapter/ForumAllAdapter$c;->h:Landroid/widget/Button;

    .line 260
    .line 261
    const v1, -0x575758

    .line 262
    .line 263
    .line 264
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 265
    .line 266
    .line 267
    iget-object v0, p3, Lcom/join/mgps/adapter/ForumAllAdapter$c;->h:Landroid/widget/Button;

    .line 268
    .line 269
    const v1, 0x7f08045b

    .line 270
    .line 271
    .line 272
    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundResource(I)V

    .line 273
    .line 274
    .line 275
    goto :goto_1

    .line 276
    :cond_2
    iget-object v0, p3, Lcom/join/mgps/adapter/ForumAllAdapter$c;->h:Landroid/widget/Button;

    .line 277
    .line 278
    const-string v1, "\u5173\u6ce8"

    .line 279
    .line 280
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 281
    .line 282
    .line 283
    iget-object v0, p3, Lcom/join/mgps/adapter/ForumAllAdapter$c;->h:Landroid/widget/Button;

    .line 284
    .line 285
    const/high16 v1, 0x41500000    # 13.0f

    .line 286
    .line 287
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextSize(F)V

    .line 288
    .line 289
    .line 290
    iget-object v0, p3, Lcom/join/mgps/adapter/ForumAllAdapter$c;->h:Landroid/widget/Button;

    .line 291
    .line 292
    const/4 v1, -0x1

    .line 293
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 294
    .line 295
    .line 296
    iget-object v0, p3, Lcom/join/mgps/adapter/ForumAllAdapter$c;->h:Landroid/widget/Button;

    .line 297
    .line 298
    const v1, 0x7f080460

    .line 299
    .line 300
    .line 301
    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundResource(I)V

    .line 302
    .line 303
    .line 304
    :goto_1
    iget-object p3, p3, Lcom/join/mgps/adapter/ForumAllAdapter$c;->h:Landroid/widget/Button;

    .line 305
    .line 306
    iget-object p1, p1, Lcom/join/mgps/adapter/ForumAllAdapter$e$d;->a:Lcom/join/mgps/dto/ForumBean;

    .line 307
    .line 308
    invoke-virtual {p0, p3, p1}, Lcom/join/mgps/adapter/ForumAllAdapter;->g(Landroid/view/View;Lcom/join/mgps/dto/ForumBean;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 309
    .line 310
    .line 311
    goto :goto_2

    .line 312
    :catch_0
    move-exception p1

    .line 313
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 314
    .line 315
    .line 316
    :goto_2
    return-object p2
.end method

.method private b(Landroid/content/Context;)Landroid/widget/LinearLayout$LayoutParams;
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "context"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/adapter/ForumAllAdapter;->d:Landroid/widget/LinearLayout$LayoutParams;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    .line 14
    .line 15
    const/high16 v1, 0x41800000    # 16.0f

    .line 16
    .line 17
    mul-float v0, v0, v1

    .line 18
    .line 19
    const/high16 v1, 0x40000000    # 2.0f

    .line 20
    .line 21
    mul-float v0, v0, v1

    .line 22
    .line 23
    float-to-int v0, v0

    .line 24
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 25
    .line 26
    .line 27
    move-result-object p1

    .line 28
    invoke-virtual {p1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    .line 29
    .line 30
    .line 31
    move-result-object p1

    .line 32
    iget p1, p1, Landroid/util/DisplayMetrics;->widthPixels:I

    .line 33
    .line 34
    div-int/lit8 p1, p1, 0x2

    .line 35
    .line 36
    sub-int/2addr p1, v0

    .line 37
    int-to-double v0, p1

    .line 38
    const-wide v2, 0x3fd51eb851eb851fL    # 0.33

    .line 39
    .line 40
    .line 41
    .line 42
    .line 43
    mul-double v0, v0, v2

    .line 44
    .line 45
    double-to-int p1, v0

    .line 46
    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    .line 47
    .line 48
    invoke-direct {v0, p1, p1}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 49
    .line 50
    .line 51
    iput-object v0, p0, Lcom/join/mgps/adapter/ForumAllAdapter;->d:Landroid/widget/LinearLayout$LayoutParams;

    .line 52
    .line 53
    :cond_0
    iget-object p1, p0, Lcom/join/mgps/adapter/ForumAllAdapter;->d:Landroid/widget/LinearLayout$LayoutParams;

    .line 54
    .line 55
    return-object p1
.end method

.method private d(Lcom/join/mgps/dto/ForumBean;Landroid/view/View;Lcom/join/mgps/adapter/ForumAllAdapter$c;)V
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x0,
            0x0
        }
        names = {
            "item",
            "parent",
            "holder"
        }
    .end annotation

    .line 1
    if-eqz p1, :cond_2

    .line 2
    .line 3
    invoke-virtual {p1}, Lcom/join/mgps/dto/ForumBean;->getFid()I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-nez v0, :cond_0

    .line 8
    .line 9
    goto/16 :goto_0

    .line 10
    .line 11
    :cond_0
    iget-object v0, p3, Lcom/join/mgps/adapter/ForumAllAdapter$c;->d:Landroid/widget/TextView;

    .line 12
    .line 13
    new-instance v1, Ljava/lang/StringBuilder;

    .line 14
    .line 15
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 16
    .line 17
    .line 18
    invoke-virtual {p1}, Lcom/join/mgps/dto/ForumBean;->getName()Ljava/lang/String;

    .line 19
    .line 20
    .line 21
    move-result-object v2

    .line 22
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 23
    .line 24
    .line 25
    const-string v2, ""

    .line 26
    .line 27
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 28
    .line 29
    .line 30
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 31
    .line 32
    .line 33
    move-result-object v1

    .line 34
    invoke-static {v0, v1, v2}, Lcom/join/mgps/Util/r0;->D1(Landroid/widget/TextView;Ljava/lang/String;Ljava/lang/String;)V

    .line 35
    .line 36
    .line 37
    iget-object v0, p3, Lcom/join/mgps/adapter/ForumAllAdapter$c;->m:Landroid/widget/TextView;

    .line 38
    .line 39
    new-instance v1, Ljava/lang/StringBuilder;

    .line 40
    .line 41
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 42
    .line 43
    .line 44
    invoke-virtual {p1}, Lcom/join/mgps/dto/ForumBean;->getDescription()Ljava/lang/String;

    .line 45
    .line 46
    .line 47
    move-result-object v3

    .line 48
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 49
    .line 50
    .line 51
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 52
    .line 53
    .line 54
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 55
    .line 56
    .line 57
    move-result-object v1

    .line 58
    invoke-static {v0, v1, v2}, Lcom/join/mgps/Util/r0;->D1(Landroid/widget/TextView;Ljava/lang/String;Ljava/lang/String;)V

    .line 59
    .line 60
    .line 61
    iget-object v0, p3, Lcom/join/mgps/adapter/ForumAllAdapter$c;->e:Landroid/widget/TextView;

    .line 62
    .line 63
    invoke-virtual {p1}, Lcom/join/mgps/dto/ForumBean;->getUsers()I

    .line 64
    .line 65
    .line 66
    move-result v1

    .line 67
    invoke-static {v1}, Lcom/join/mgps/Util/r0;->R(I)Ljava/lang/String;

    .line 68
    .line 69
    .line 70
    move-result-object v1

    .line 71
    const-string v2, "0"

    .line 72
    .line 73
    invoke-static {v0, v1, v2}, Lcom/join/mgps/Util/r0;->D1(Landroid/widget/TextView;Ljava/lang/String;Ljava/lang/String;)V

    .line 74
    .line 75
    .line 76
    iget-object v0, p3, Lcom/join/mgps/adapter/ForumAllAdapter$c;->f:Landroid/widget/TextView;

    .line 77
    .line 78
    invoke-virtual {p1}, Lcom/join/mgps/dto/ForumBean;->getPosts()I

    .line 79
    .line 80
    .line 81
    move-result v1

    .line 82
    invoke-static {v1}, Lcom/join/mgps/Util/r0;->R(I)Ljava/lang/String;

    .line 83
    .line 84
    .line 85
    move-result-object v1

    .line 86
    invoke-static {v0, v1, v2}, Lcom/join/mgps/Util/r0;->D1(Landroid/widget/TextView;Ljava/lang/String;Ljava/lang/String;)V

    .line 87
    .line 88
    .line 89
    iget-object v0, p3, Lcom/join/mgps/adapter/ForumAllAdapter$c;->g:Landroid/widget/TextView;

    .line 90
    .line 91
    invoke-virtual {p1}, Lcom/join/mgps/dto/ForumBean;->getFollow_count()I

    .line 92
    .line 93
    .line 94
    move-result v1

    .line 95
    invoke-static {v1}, Lcom/join/mgps/Util/r0;->R(I)Ljava/lang/String;

    .line 96
    .line 97
    .line 98
    move-result-object v1

    .line 99
    invoke-static {v0, v1, v2}, Lcom/join/mgps/Util/r0;->D1(Landroid/widget/TextView;Ljava/lang/String;Ljava/lang/String;)V

    .line 100
    .line 101
    .line 102
    invoke-virtual {p2}, Landroid/view/View;->getVisibility()I

    .line 103
    .line 104
    .line 105
    move-result v0

    .line 106
    if-eqz v0, :cond_1

    .line 107
    .line 108
    const/4 v0, 0x0

    .line 109
    invoke-virtual {p2, v0}, Landroid/view/View;->setVisibility(I)V

    .line 110
    .line 111
    .line 112
    :cond_1
    invoke-virtual {p0, p2, p1}, Lcom/join/mgps/adapter/ForumAllAdapter;->h(Landroid/view/View;Lcom/join/mgps/dto/ForumBean;)V

    .line 113
    .line 114
    .line 115
    iget-object v0, p3, Lcom/join/mgps/adapter/ForumAllAdapter$c;->c:Lcom/facebook/drawee/view/SimpleDraweeView;

    .line 116
    .line 117
    invoke-virtual {p1}, Lcom/join/mgps/dto/ForumBean;->getIcon_src()Ljava/lang/String;

    .line 118
    .line 119
    .line 120
    move-result-object v1

    .line 121
    iget-object v2, p0, Lcom/join/mgps/adapter/ForumAllAdapter;->b:Landroid/content/Context;

    .line 122
    .line 123
    invoke-static {v2}, Lcom/join/android/app/common/utils/l;->E(Landroid/content/Context;)Lcom/facebook/drawee/generic/RoundingParams;

    .line 124
    .line 125
    .line 126
    move-result-object v2

    .line 127
    invoke-static {v0, v1, v2}, Lcom/join/android/app/common/utils/l;->j(Lcom/facebook/drawee/view/SimpleDraweeView;Ljava/lang/String;Lcom/facebook/drawee/generic/RoundingParams;)V

    .line 128
    .line 129
    .line 130
    invoke-virtual {p2}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    .line 131
    .line 132
    .line 133
    move-result-object v0

    .line 134
    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    .line 135
    .line 136
    .line 137
    move-result-object v0

    .line 138
    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    .line 139
    .line 140
    const/high16 v1, 0x42700000    # 60.0f

    .line 141
    .line 142
    mul-float v0, v0, v1

    .line 143
    .line 144
    float-to-int v0, v0

    .line 145
    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    .line 146
    .line 147
    invoke-direct {v1, v0, v0}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 148
    .line 149
    .line 150
    iget-object p3, p3, Lcom/join/mgps/adapter/ForumAllAdapter$c;->c:Lcom/facebook/drawee/view/SimpleDraweeView;

    .line 151
    .line 152
    invoke-virtual {p3, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 153
    .line 154
    .line 155
    invoke-virtual {p0, p2, p1}, Lcom/join/mgps/adapter/ForumAllAdapter;->h(Landroid/view/View;Lcom/join/mgps/dto/ForumBean;)V

    .line 156
    .line 157
    .line 158
    goto :goto_1

    .line 159
    :cond_2
    :goto_0
    invoke-virtual {p2}, Landroid/view/View;->getVisibility()I

    .line 160
    .line 161
    .line 162
    move-result p1

    .line 163
    const/4 p3, 0x4

    .line 164
    if-eq p1, p3, :cond_3

    .line 165
    .line 166
    invoke-virtual {p2, p3}, Landroid/view/View;->setVisibility(I)V

    .line 167
    .line 168
    .line 169
    :cond_3
    :goto_1
    return-void
.end method


# virtual methods
.method public c()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/join/mgps/adapter/ForumAllAdapter$e;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/adapter/ForumAllAdapter;->c:Ljava/util/List;

    .line 2
    .line 3
    return-object v0
.end method

.method public e(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "items"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/join/mgps/adapter/ForumAllAdapter$e;",
            ">;)V"
        }
    .end annotation

    .line 1
    if-nez p1, :cond_0

    .line 2
    .line 3
    return-void

    .line 4
    :cond_0
    iget-object v0, p0, Lcom/join/mgps/adapter/ForumAllAdapter;->c:Ljava/util/List;

    .line 5
    .line 6
    if-nez v0, :cond_1

    .line 7
    .line 8
    new-instance v0, Ljava/util/ArrayList;

    .line 9
    .line 10
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 11
    .line 12
    .line 13
    iput-object v0, p0, Lcom/join/mgps/adapter/ForumAllAdapter;->c:Ljava/util/List;

    .line 14
    .line 15
    :cond_1
    iget-object v0, p0, Lcom/join/mgps/adapter/ForumAllAdapter;->c:Ljava/util/List;

    .line 16
    .line 17
    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 18
    .line 19
    .line 20
    iget-object v0, p0, Lcom/join/mgps/adapter/ForumAllAdapter;->c:Ljava/util/List;

    .line 21
    .line 22
    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 23
    .line 24
    .line 25
    return-void
.end method

.method public f(Lcom/join/mgps/adapter/ForumAllAdapter$d;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "l"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/join/mgps/adapter/ForumAllAdapter;->e:Lcom/join/mgps/adapter/ForumAllAdapter$d;

    .line 2
    .line 3
    return-void
.end method

.method public g(Landroid/view/View;Lcom/join/mgps/dto/ForumBean;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x10
        }
        names = {
            "v",
            "forumBean"
        }
    .end annotation

    .line 1
    new-instance v0, Lcom/join/mgps/adapter/ForumAllAdapter$b;

    .line 2
    .line 3
    invoke-direct {v0, p0, p2}, Lcom/join/mgps/adapter/ForumAllAdapter$b;-><init>(Lcom/join/mgps/adapter/ForumAllAdapter;Lcom/join/mgps/dto/ForumBean;)V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 7
    .line 8
    .line 9
    return-void
.end method

.method public getCount()I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/adapter/ForumAllAdapter;->c:Ljava/util/List;

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
            "position"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/adapter/ForumAllAdapter;->c:Ljava/util/List;

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
    check-cast p1, Lcom/join/mgps/adapter/ForumAllAdapter$e;

    .line 10
    .line 11
    invoke-virtual {p1}, Lcom/join/mgps/adapter/ForumAllAdapter$e;->a()Ljava/lang/Object;

    .line 12
    .line 13
    .line 14
    move-result-object p1

    .line 15
    return-object p1

    .line 16
    :cond_0
    const/4 p1, 0x0

    .line 17
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
    iget-object v0, p0, Lcom/join/mgps/adapter/ForumAllAdapter;->c:Ljava/util/List;

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
    check-cast p1, Lcom/join/mgps/adapter/ForumAllAdapter$e;

    .line 10
    .line 11
    invoke-virtual {p1}, Lcom/join/mgps/adapter/ForumAllAdapter$e;->b()Lcom/join/mgps/adapter/ForumAllAdapter$ViewType;

    .line 12
    .line 13
    .line 14
    move-result-object p1

    .line 15
    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    .line 16
    .line 17
    .line 18
    move-result p1

    .line 19
    return p1

    .line 20
    :cond_0
    const/4 p1, -0x1

    .line 21
    return p1
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 2
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
    invoke-virtual {p0, p1}, Lcom/join/mgps/adapter/ForumAllAdapter;->getItemViewType(I)I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    sget-object v1, Lcom/join/mgps/adapter/ForumAllAdapter$ViewType;->FORUM_ITEM:Lcom/join/mgps/adapter/ForumAllAdapter$ViewType;

    .line 6
    .line 7
    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    .line 8
    .line 9
    .line 10
    move-result v1

    .line 11
    if-ne v0, v1, :cond_0

    .line 12
    .line 13
    invoke-direct {p0, p1, p2, p3}, Lcom/join/mgps/adapter/ForumAllAdapter;->a(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    .line 14
    .line 15
    .line 16
    move-result-object p2

    .line 17
    :cond_0
    return-object p2
.end method

.method public getViewTypeCount()I
    .locals 1

    .line 1
    invoke-static {}, Lcom/join/mgps/adapter/ForumAllAdapter$ViewType;->values()[Lcom/join/mgps/adapter/ForumAllAdapter$ViewType;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    array-length v0, v0

    .line 6
    return v0
.end method

.method h(Landroid/view/View;Lcom/join/mgps/dto/ForumBean;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x10
        }
        names = {
            "v",
            "forumBean"
        }
    .end annotation

    .line 1
    new-instance v0, Lcom/join/mgps/adapter/ForumAllAdapter$a;

    .line 2
    .line 3
    invoke-direct {v0, p0, p2}, Lcom/join/mgps/adapter/ForumAllAdapter$a;-><init>(Lcom/join/mgps/adapter/ForumAllAdapter;Lcom/join/mgps/dto/ForumBean;)V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 7
    .line 8
    .line 9
    return-void
.end method

.method public notifyDataSetChanged()V
    .locals 0

    .line 1
    invoke-super {p0}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    .line 2
    .line 3
    .line 4
    return-void
.end method
