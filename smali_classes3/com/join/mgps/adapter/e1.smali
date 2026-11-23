.class public Lcom/join/mgps/adapter/e1;
.super Landroid/widget/BaseAdapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/join/mgps/adapter/e1$a;
    }
.end annotation


# instance fields
.field private b:Landroid/content/Context;

.field private c:Landroid/view/LayoutInflater;

.field private d:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/join/mgps/dto/CollectionBeanSub;",
            ">;"
        }
    .end annotation
.end field

.field private e:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "context"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Ljava/util/ArrayList;

    .line 5
    .line 6
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 7
    .line 8
    .line 9
    iput-object v0, p0, Lcom/join/mgps/adapter/e1;->d:Ljava/util/List;

    .line 10
    .line 11
    const/4 v0, 0x0

    .line 12
    iput v0, p0, Lcom/join/mgps/adapter/e1;->e:I

    .line 13
    .line 14
    iput-object p1, p0, Lcom/join/mgps/adapter/e1;->b:Landroid/content/Context;

    .line 15
    .line 16
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    .line 17
    .line 18
    .line 19
    move-result-object p1

    .line 20
    iput-object p1, p0, Lcom/join/mgps/adapter/e1;->c:Landroid/view/LayoutInflater;

    .line 21
    .line 22
    return-void
.end method


# virtual methods
.method public a()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/join/mgps/dto/CollectionBeanSub;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/adapter/e1;->d:Ljava/util/List;

    .line 2
    .line 3
    return-object v0
.end method

.method public b(I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "uiType"
        }
    .end annotation

    .line 1
    iput p1, p0, Lcom/join/mgps/adapter/e1;->e:I

    .line 2
    .line 3
    return-void
.end method

.method c(Lcom/join/mgps/adapter/e1$a;Ljava/lang/Boolean;Ljava/lang/Boolean;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "holder",
            "isNormal",
            "isZip"
        }
    .end annotation

    .line 1
    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    .line 2
    .line 3
    .line 4
    move-result p2

    .line 5
    const/4 v0, 0x0

    .line 6
    const/16 v1, 0x8

    .line 7
    .line 8
    if-eqz p2, :cond_0

    .line 9
    .line 10
    iget-object p2, p1, Lcom/join/mgps/adapter/e1$a;->j:Landroid/widget/LinearLayout;

    .line 11
    .line 12
    invoke-virtual {p2, v1}, Landroid/view/View;->setVisibility(I)V

    .line 13
    .line 14
    .line 15
    iget-object p2, p1, Lcom/join/mgps/adapter/e1$a;->m:Landroid/widget/ProgressBar;

    .line 16
    .line 17
    invoke-virtual {p2, v1}, Landroid/view/View;->setVisibility(I)V

    .line 18
    .line 19
    .line 20
    iget-object p2, p1, Lcom/join/mgps/adapter/e1$a;->n:Landroid/widget/ProgressBar;

    .line 21
    .line 22
    invoke-virtual {p2, v1}, Landroid/view/View;->setVisibility(I)V

    .line 23
    .line 24
    .line 25
    iget-object p2, p1, Lcom/join/mgps/adapter/e1$a;->h:Landroid/widget/LinearLayout;

    .line 26
    .line 27
    invoke-virtual {p2, v0}, Landroid/view/View;->setVisibility(I)V

    .line 28
    .line 29
    .line 30
    iget-object p1, p1, Lcom/join/mgps/adapter/e1$a;->i:Landroid/widget/TextView;

    .line 31
    .line 32
    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 33
    .line 34
    .line 35
    goto :goto_1

    .line 36
    :cond_0
    iget-object p2, p1, Lcom/join/mgps/adapter/e1$a;->j:Landroid/widget/LinearLayout;

    .line 37
    .line 38
    invoke-virtual {p2, v0}, Landroid/view/View;->setVisibility(I)V

    .line 39
    .line 40
    .line 41
    invoke-virtual {p3}, Ljava/lang/Boolean;->booleanValue()Z

    .line 42
    .line 43
    .line 44
    move-result p2

    .line 45
    if-eqz p2, :cond_1

    .line 46
    .line 47
    iget-object p2, p1, Lcom/join/mgps/adapter/e1$a;->m:Landroid/widget/ProgressBar;

    .line 48
    .line 49
    invoke-virtual {p2, v1}, Landroid/view/View;->setVisibility(I)V

    .line 50
    .line 51
    .line 52
    iget-object p2, p1, Lcom/join/mgps/adapter/e1$a;->n:Landroid/widget/ProgressBar;

    .line 53
    .line 54
    invoke-virtual {p2, v0}, Landroid/view/View;->setVisibility(I)V

    .line 55
    .line 56
    .line 57
    goto :goto_0

    .line 58
    :cond_1
    iget-object p2, p1, Lcom/join/mgps/adapter/e1$a;->n:Landroid/widget/ProgressBar;

    .line 59
    .line 60
    invoke-virtual {p2, v1}, Landroid/view/View;->setVisibility(I)V

    .line 61
    .line 62
    .line 63
    iget-object p2, p1, Lcom/join/mgps/adapter/e1$a;->m:Landroid/widget/ProgressBar;

    .line 64
    .line 65
    invoke-virtual {p2, v0}, Landroid/view/View;->setVisibility(I)V

    .line 66
    .line 67
    .line 68
    :goto_0
    iget-object p2, p1, Lcom/join/mgps/adapter/e1$a;->h:Landroid/widget/LinearLayout;

    .line 69
    .line 70
    invoke-virtual {p2, v1}, Landroid/view/View;->setVisibility(I)V

    .line 71
    .line 72
    .line 73
    iget-object p1, p1, Lcom/join/mgps/adapter/e1$a;->i:Landroid/widget/TextView;

    .line 74
    .line 75
    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    .line 76
    .line 77
    .line 78
    :goto_1
    return-void
.end method

.method public getCount()I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/adapter/e1;->d:Ljava/util/List;

    .line 2
    .line 3
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
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
    iget-object v0, p0, Lcom/join/mgps/adapter/e1;->d:Ljava/util/List;

    .line 2
    .line 3
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-nez v0, :cond_0

    .line 8
    .line 9
    const/4 p1, 0x0

    .line 10
    return-object p1

    .line 11
    :cond_0
    iget-object v0, p0, Lcom/join/mgps/adapter/e1;->d:Ljava/util/List;

    .line 12
    .line 13
    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 14
    .line 15
    .line 16
    move-result-object p1

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
            "i"
        }
    .end annotation

    int-to-long v0, p1

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 19
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x0,
            0x0
        }
        names = {
            "i",
            "convertView",
            "viewGroup"
        }
    .end annotation

    .line 1
    move-object/from16 v1, p0

    .line 2
    .line 3
    move/from16 v0, p1

    .line 4
    .line 5
    iget-object v2, v1, Lcom/join/mgps/adapter/e1;->d:Ljava/util/List;

    .line 6
    .line 7
    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 8
    .line 9
    .line 10
    move-result-object v2

    .line 11
    check-cast v2, Lcom/join/mgps/dto/CollectionBeanSub;

    .line 12
    .line 13
    invoke-virtual {v2}, Lcom/join/kotlin/base/impl/BaseDownloadable;->getDownloadTask()Lcom/github/snowdream/android/app/downloader/DownloadTask;

    .line 14
    .line 15
    .line 16
    move-result-object v3

    .line 17
    if-nez p2, :cond_0

    .line 18
    .line 19
    iget-object v4, v1, Lcom/join/mgps/adapter/e1;->c:Landroid/view/LayoutInflater;

    .line 20
    .line 21
    const v5, 0x7f0d0143

    .line 22
    .line 23
    .line 24
    const/4 v6, 0x0

    .line 25
    invoke-virtual {v4, v5, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 26
    .line 27
    .line 28
    move-result-object v4

    .line 29
    new-instance v5, Lcom/join/mgps/adapter/e1$a;

    .line 30
    .line 31
    invoke-direct {v5, v1}, Lcom/join/mgps/adapter/e1$a;-><init>(Lcom/join/mgps/adapter/e1;)V

    .line 32
    .line 33
    .line 34
    const v6, 0x7f0a0e69

    .line 35
    .line 36
    .line 37
    invoke-virtual {v4, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 38
    .line 39
    .line 40
    move-result-object v6

    .line 41
    iput-object v6, v5, Lcom/join/mgps/adapter/e1$a;->a:Landroid/view/View;

    .line 42
    .line 43
    const v6, 0x7f0a18b0

    .line 44
    .line 45
    .line 46
    invoke-virtual {v4, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 47
    .line 48
    .line 49
    move-result-object v6

    .line 50
    check-cast v6, Landroid/widget/TextView;

    .line 51
    .line 52
    iput-object v6, v5, Lcom/join/mgps/adapter/e1$a;->b:Landroid/widget/TextView;

    .line 53
    .line 54
    const v6, 0x7f0a09de

    .line 55
    .line 56
    .line 57
    invoke-virtual {v4, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 58
    .line 59
    .line 60
    move-result-object v6

    .line 61
    check-cast v6, Landroid/widget/ImageView;

    .line 62
    .line 63
    iput-object v6, v5, Lcom/join/mgps/adapter/e1$a;->c:Landroid/widget/ImageView;

    .line 64
    .line 65
    const v6, 0x7f0a0790

    .line 66
    .line 67
    .line 68
    invoke-virtual {v4, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 69
    .line 70
    .line 71
    move-result-object v6

    .line 72
    check-cast v6, Landroid/widget/ImageView;

    .line 73
    .line 74
    iput-object v6, v5, Lcom/join/mgps/adapter/e1$a;->d:Landroid/widget/ImageView;

    .line 75
    .line 76
    const v6, 0x7f0a1044

    .line 77
    .line 78
    .line 79
    invoke-virtual {v4, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 80
    .line 81
    .line 82
    move-result-object v6

    .line 83
    check-cast v6, Lcom/facebook/drawee/view/SimpleDraweeView;

    .line 84
    .line 85
    iput-object v6, v5, Lcom/join/mgps/adapter/e1$a;->e:Lcom/facebook/drawee/view/SimpleDraweeView;

    .line 86
    .line 87
    const v6, 0x7f0a1042

    .line 88
    .line 89
    .line 90
    invoke-virtual {v4, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 91
    .line 92
    .line 93
    move-result-object v6

    .line 94
    check-cast v6, Landroid/widget/TextView;

    .line 95
    .line 96
    iput-object v6, v5, Lcom/join/mgps/adapter/e1$a;->f:Landroid/widget/TextView;

    .line 97
    .line 98
    const v6, 0x7f0a054e

    .line 99
    .line 100
    .line 101
    invoke-virtual {v4, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 102
    .line 103
    .line 104
    move-result-object v6

    .line 105
    check-cast v6, Lcom/join/mgps/customview/DownloadNormalView;

    .line 106
    .line 107
    iput-object v6, v5, Lcom/join/mgps/adapter/e1$a;->g:Lcom/join/mgps/customview/DownloadNormalView;

    .line 108
    .line 109
    const v6, 0x7f0a1764

    .line 110
    .line 111
    .line 112
    invoke-virtual {v4, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 113
    .line 114
    .line 115
    move-result-object v6

    .line 116
    check-cast v6, Landroid/widget/LinearLayout;

    .line 117
    .line 118
    iput-object v6, v5, Lcom/join/mgps/adapter/e1$a;->h:Landroid/widget/LinearLayout;

    .line 119
    .line 120
    const v6, 0x7f0a1043

    .line 121
    .line 122
    .line 123
    invoke-virtual {v4, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 124
    .line 125
    .line 126
    move-result-object v6

    .line 127
    check-cast v6, Landroid/widget/TextView;

    .line 128
    .line 129
    iput-object v6, v5, Lcom/join/mgps/adapter/e1$a;->i:Landroid/widget/TextView;

    .line 130
    .line 131
    const v6, 0x7f0a0e73

    .line 132
    .line 133
    .line 134
    invoke-virtual {v4, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 135
    .line 136
    .line 137
    move-result-object v6

    .line 138
    check-cast v6, Landroid/widget/LinearLayout;

    .line 139
    .line 140
    iput-object v6, v5, Lcom/join/mgps/adapter/e1$a;->j:Landroid/widget/LinearLayout;

    .line 141
    .line 142
    const v6, 0x7f0a00f7

    .line 143
    .line 144
    .line 145
    invoke-virtual {v4, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 146
    .line 147
    .line 148
    move-result-object v6

    .line 149
    check-cast v6, Landroid/widget/TextView;

    .line 150
    .line 151
    iput-object v6, v5, Lcom/join/mgps/adapter/e1$a;->k:Landroid/widget/TextView;

    .line 152
    .line 153
    const v6, 0x7f0a0f94

    .line 154
    .line 155
    .line 156
    invoke-virtual {v4, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 157
    .line 158
    .line 159
    move-result-object v6

    .line 160
    check-cast v6, Landroid/widget/TextView;

    .line 161
    .line 162
    iput-object v6, v5, Lcom/join/mgps/adapter/e1$a;->l:Landroid/widget/TextView;

    .line 163
    .line 164
    const v6, 0x7f0a129e

    .line 165
    .line 166
    .line 167
    invoke-virtual {v4, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 168
    .line 169
    .line 170
    move-result-object v6

    .line 171
    check-cast v6, Landroid/widget/ProgressBar;

    .line 172
    .line 173
    iput-object v6, v5, Lcom/join/mgps/adapter/e1$a;->m:Landroid/widget/ProgressBar;

    .line 174
    .line 175
    const v6, 0x7f0a12a5

    .line 176
    .line 177
    .line 178
    invoke-virtual {v4, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 179
    .line 180
    .line 181
    move-result-object v6

    .line 182
    check-cast v6, Landroid/widget/ProgressBar;

    .line 183
    .line 184
    iput-object v6, v5, Lcom/join/mgps/adapter/e1$a;->n:Landroid/widget/ProgressBar;

    .line 185
    .line 186
    invoke-virtual {v4, v5}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 187
    .line 188
    .line 189
    goto :goto_0

    .line 190
    :cond_0
    invoke-virtual/range {p2 .. p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    .line 191
    .line 192
    .line 193
    move-result-object v4

    .line 194
    move-object v5, v4

    .line 195
    check-cast v5, Lcom/join/mgps/adapter/e1$a;

    .line 196
    .line 197
    move-object/from16 v4, p2

    .line 198
    .line 199
    :goto_0
    const/4 v6, 0x0

    .line 200
    const/16 v7, 0x8

    .line 201
    .line 202
    if-nez v0, :cond_1

    .line 203
    .line 204
    iget v8, v1, Lcom/join/mgps/adapter/e1;->e:I

    .line 205
    .line 206
    if-lez v8, :cond_1

    .line 207
    .line 208
    iget-object v8, v5, Lcom/join/mgps/adapter/e1$a;->a:Landroid/view/View;

    .line 209
    .line 210
    invoke-virtual {v8, v6}, Landroid/view/View;->setVisibility(I)V

    .line 211
    .line 212
    .line 213
    goto :goto_1

    .line 214
    :cond_1
    iget-object v8, v5, Lcom/join/mgps/adapter/e1$a;->a:Landroid/view/View;

    .line 215
    .line 216
    invoke-virtual {v8, v7}, Landroid/view/View;->setVisibility(I)V

    .line 217
    .line 218
    .line 219
    :goto_1
    add-int/lit8 v8, v0, 0x1

    .line 220
    .line 221
    const-string v9, ""

    .line 222
    .line 223
    const/4 v10, 0x3

    .line 224
    const/4 v11, 0x2

    .line 225
    const/4 v12, 0x1

    .line 226
    if-eq v8, v12, :cond_2

    .line 227
    .line 228
    if-eq v8, v11, :cond_2

    .line 229
    .line 230
    if-eq v8, v10, :cond_2

    .line 231
    .line 232
    iget-object v13, v5, Lcom/join/mgps/adapter/e1$a;->b:Landroid/widget/TextView;

    .line 233
    .line 234
    invoke-virtual {v13, v6}, Landroid/view/View;->setVisibility(I)V

    .line 235
    .line 236
    .line 237
    iget-object v13, v5, Lcom/join/mgps/adapter/e1$a;->c:Landroid/widget/ImageView;

    .line 238
    .line 239
    invoke-virtual {v13, v7}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 240
    .line 241
    .line 242
    iget-object v13, v5, Lcom/join/mgps/adapter/e1$a;->b:Landroid/widget/TextView;

    .line 243
    .line 244
    new-instance v14, Ljava/lang/StringBuilder;

    .line 245
    .line 246
    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    .line 247
    .line 248
    .line 249
    invoke-virtual {v14, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 250
    .line 251
    .line 252
    invoke-virtual {v14, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 253
    .line 254
    .line 255
    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 256
    .line 257
    .line 258
    move-result-object v8

    .line 259
    invoke-virtual {v13, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 260
    .line 261
    .line 262
    iget-object v8, v5, Lcom/join/mgps/adapter/e1$a;->b:Landroid/widget/TextView;

    .line 263
    .line 264
    const/high16 v9, -0x1000000

    .line 265
    .line 266
    invoke-virtual {v8, v9}, Landroid/widget/TextView;->setTextColor(I)V

    .line 267
    .line 268
    .line 269
    iget-object v8, v5, Lcom/join/mgps/adapter/e1$a;->b:Landroid/widget/TextView;

    .line 270
    .line 271
    const/high16 v9, 0x41400000    # 12.0f

    .line 272
    .line 273
    invoke-virtual {v8, v9}, Landroid/widget/TextView;->setTextSize(F)V

    .line 274
    .line 275
    .line 276
    iget-object v8, v5, Lcom/join/mgps/adapter/e1$a;->b:Landroid/widget/TextView;

    .line 277
    .line 278
    invoke-virtual {v8}, Landroid/widget/TextView;->getPaint()Landroid/text/TextPaint;

    .line 279
    .line 280
    .line 281
    move-result-object v8

    .line 282
    invoke-virtual {v8, v6}, Landroid/graphics/Paint;->setFakeBoldText(Z)V

    .line 283
    .line 284
    .line 285
    goto :goto_2

    .line 286
    :cond_2
    iget v13, v1, Lcom/join/mgps/adapter/e1;->e:I

    .line 287
    .line 288
    if-lez v13, :cond_5

    .line 289
    .line 290
    iget-object v9, v5, Lcom/join/mgps/adapter/e1$a;->b:Landroid/widget/TextView;

    .line 291
    .line 292
    invoke-virtual {v9, v7}, Landroid/view/View;->setVisibility(I)V

    .line 293
    .line 294
    .line 295
    iget-object v9, v5, Lcom/join/mgps/adapter/e1$a;->c:Landroid/widget/ImageView;

    .line 296
    .line 297
    invoke-virtual {v9, v6}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 298
    .line 299
    .line 300
    if-ne v8, v12, :cond_3

    .line 301
    .line 302
    iget-object v8, v5, Lcom/join/mgps/adapter/e1$a;->c:Landroid/widget/ImageView;

    .line 303
    .line 304
    const v9, 0x7f080a31

    .line 305
    .line 306
    .line 307
    invoke-virtual {v8, v9}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 308
    .line 309
    .line 310
    goto :goto_2

    .line 311
    :cond_3
    if-ne v8, v11, :cond_4

    .line 312
    .line 313
    iget-object v8, v5, Lcom/join/mgps/adapter/e1$a;->c:Landroid/widget/ImageView;

    .line 314
    .line 315
    const v9, 0x7f080a33

    .line 316
    .line 317
    .line 318
    invoke-virtual {v8, v9}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 319
    .line 320
    .line 321
    goto :goto_2

    .line 322
    :cond_4
    if-ne v8, v10, :cond_6

    .line 323
    .line 324
    iget-object v8, v5, Lcom/join/mgps/adapter/e1$a;->c:Landroid/widget/ImageView;

    .line 325
    .line 326
    const v9, 0x7f080a32

    .line 327
    .line 328
    .line 329
    invoke-virtual {v8, v9}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 330
    .line 331
    .line 332
    goto :goto_2

    .line 333
    :cond_5
    iget-object v13, v5, Lcom/join/mgps/adapter/e1$a;->b:Landroid/widget/TextView;

    .line 334
    .line 335
    invoke-virtual {v13, v6}, Landroid/view/View;->setVisibility(I)V

    .line 336
    .line 337
    .line 338
    iget-object v13, v5, Lcom/join/mgps/adapter/e1$a;->c:Landroid/widget/ImageView;

    .line 339
    .line 340
    invoke-virtual {v13, v7}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 341
    .line 342
    .line 343
    iget-object v13, v5, Lcom/join/mgps/adapter/e1$a;->b:Landroid/widget/TextView;

    .line 344
    .line 345
    new-instance v14, Ljava/lang/StringBuilder;

    .line 346
    .line 347
    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    .line 348
    .line 349
    .line 350
    invoke-virtual {v14, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 351
    .line 352
    .line 353
    invoke-virtual {v14, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 354
    .line 355
    .line 356
    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 357
    .line 358
    .line 359
    move-result-object v8

    .line 360
    invoke-virtual {v13, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 361
    .line 362
    .line 363
    iget-object v8, v5, Lcom/join/mgps/adapter/e1$a;->b:Landroid/widget/TextView;

    .line 364
    .line 365
    const-string v9, "#ff9f15"

    .line 366
    .line 367
    invoke-static {v9}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    .line 368
    .line 369
    .line 370
    move-result v9

    .line 371
    invoke-virtual {v8, v9}, Landroid/widget/TextView;->setTextColor(I)V

    .line 372
    .line 373
    .line 374
    iget-object v8, v5, Lcom/join/mgps/adapter/e1$a;->b:Landroid/widget/TextView;

    .line 375
    .line 376
    const/high16 v9, 0x41600000    # 14.0f

    .line 377
    .line 378
    invoke-virtual {v8, v9}, Landroid/widget/TextView;->setTextSize(F)V

    .line 379
    .line 380
    .line 381
    iget-object v8, v5, Lcom/join/mgps/adapter/e1$a;->b:Landroid/widget/TextView;

    .line 382
    .line 383
    invoke-virtual {v8}, Landroid/widget/TextView;->getPaint()Landroid/text/TextPaint;

    .line 384
    .line 385
    .line 386
    move-result-object v8

    .line 387
    invoke-virtual {v8, v12}, Landroid/graphics/Paint;->setFakeBoldText(Z)V

    .line 388
    .line 389
    .line 390
    :cond_6
    :goto_2
    iget-object v8, v5, Lcom/join/mgps/adapter/e1$a;->f:Landroid/widget/TextView;

    .line 391
    .line 392
    invoke-virtual {v2}, Lcom/join/mgps/dto/CollectionBeanSub;->getGame_name()Ljava/lang/String;

    .line 393
    .line 394
    .line 395
    move-result-object v9

    .line 396
    invoke-virtual {v8, v9}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 397
    .line 398
    .line 399
    iget-object v8, v5, Lcom/join/mgps/adapter/e1$a;->i:Landroid/widget/TextView;

    .line 400
    .line 401
    invoke-virtual {v2}, Lcom/join/mgps/dto/CollectionBeanSub;->getInfo()Ljava/lang/String;

    .line 402
    .line 403
    .line 404
    move-result-object v9

    .line 405
    invoke-virtual {v8, v9}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 406
    .line 407
    .line 408
    iget-object v8, v5, Lcom/join/mgps/adapter/e1$a;->e:Lcom/facebook/drawee/view/SimpleDraweeView;

    .line 409
    .line 410
    iget-object v9, v1, Lcom/join/mgps/adapter/e1;->b:Landroid/content/Context;

    .line 411
    .line 412
    invoke-virtual {v9}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 413
    .line 414
    .line 415
    move-result-object v9

    .line 416
    const v13, 0x7f080caf

    .line 417
    .line 418
    .line 419
    invoke-virtual {v9, v13}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    .line 420
    .line 421
    .line 422
    move-result-object v9

    .line 423
    invoke-virtual {v8, v9}, Lcom/facebook/drawee/view/DraweeView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 424
    .line 425
    .line 426
    invoke-virtual {v2}, Lcom/join/mgps/dto/CollectionBeanSub;->getGift_package_switch()I

    .line 427
    .line 428
    .line 429
    move-result v8

    .line 430
    if-ne v8, v12, :cond_7

    .line 431
    .line 432
    iget-object v8, v5, Lcom/join/mgps/adapter/e1$a;->d:Landroid/widget/ImageView;

    .line 433
    .line 434
    invoke-virtual {v8, v6}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 435
    .line 436
    .line 437
    goto :goto_3

    .line 438
    :cond_7
    iget-object v6, v5, Lcom/join/mgps/adapter/e1$a;->d:Landroid/widget/ImageView;

    .line 439
    .line 440
    invoke-virtual {v6, v7}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 441
    .line 442
    .line 443
    :goto_3
    iget-object v6, v5, Lcom/join/mgps/adapter/e1$a;->e:Lcom/facebook/drawee/view/SimpleDraweeView;

    .line 444
    .line 445
    invoke-virtual {v2}, Lcom/join/mgps/dto/CollectionBeanSub;->getIco_remote()Ljava/lang/String;

    .line 446
    .line 447
    .line 448
    move-result-object v8

    .line 449
    invoke-static {v6, v8}, Lcom/join/android/app/common/utils/l;->h(Lcom/facebook/drawee/view/SimpleDraweeView;Ljava/lang/String;)V

    .line 450
    .line 451
    .line 452
    iget-object v6, v1, Lcom/join/mgps/adapter/e1;->d:Ljava/util/List;

    .line 453
    .line 454
    invoke-interface {v6, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 455
    .line 456
    .line 457
    move-result-object v0

    .line 458
    check-cast v0, Lcom/join/mgps/dto/CollectionBeanSub;

    .line 459
    .line 460
    invoke-virtual {v0}, Lcom/join/mgps/dto/CollectionBeanSub;->getSize()Ljava/lang/String;

    .line 461
    .line 462
    .line 463
    move-result-object v6

    .line 464
    invoke-static {v6}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    .line 465
    .line 466
    .line 467
    move-result-wide v8

    .line 468
    const-wide/high16 v12, 0x4090000000000000L    # 1024.0

    .line 469
    .line 470
    mul-double v8, v8, v12

    .line 471
    .line 472
    mul-double v8, v8, v12

    .line 473
    .line 474
    double-to-long v8, v8

    .line 475
    invoke-virtual {v2}, Lcom/join/mgps/dto/CollectionBeanSub;->getScore()Ljava/lang/String;

    .line 476
    .line 477
    .line 478
    move-result-object v12

    .line 479
    invoke-virtual {v2}, Lcom/join/mgps/dto/CollectionBeanSub;->getDown_count()I

    .line 480
    .line 481
    .line 482
    move-result v13

    .line 483
    invoke-virtual {v2}, Lcom/join/mgps/dto/CollectionBeanSub;->getSize()Ljava/lang/String;

    .line 484
    .line 485
    .line 486
    move-result-object v14

    .line 487
    invoke-virtual {v2}, Lcom/join/mgps/dto/CollectionBeanSub;->getSp_tag_info()Lcom/join/mgps/dto/TipNew;

    .line 488
    .line 489
    .line 490
    move-result-object v15

    .line 491
    invoke-virtual {v0}, Lcom/join/mgps/dto/CollectionBeanSub;->getTag_info()Ljava/util/List;

    .line 492
    .line 493
    .line 494
    move-result-object v16

    .line 495
    iget-object v2, v5, Lcom/join/mgps/adapter/e1$a;->h:Landroid/widget/LinearLayout;

    .line 496
    .line 497
    iget-object v6, v1, Lcom/join/mgps/adapter/e1;->b:Landroid/content/Context;

    .line 498
    .line 499
    move-object/from16 v17, v2

    .line 500
    .line 501
    move-object/from16 v18, v6

    .line 502
    .line 503
    invoke-static/range {v12 .. v18}, Lcom/join/mgps/Util/UtilsMy;->K(Ljava/lang/String;ILjava/lang/String;Lcom/join/mgps/dto/TipNew;Ljava/util/List;Landroid/widget/LinearLayout;Landroid/content/Context;)V

    .line 504
    .line 505
    .line 506
    iget-object v2, v5, Lcom/join/mgps/adapter/e1$a;->g:Lcom/join/mgps/customview/DownloadNormalView;

    .line 507
    .line 508
    new-instance v6, Lm6/c;

    .line 509
    .line 510
    iget-object v12, v1, Lcom/join/mgps/adapter/e1;->b:Landroid/content/Context;

    .line 511
    .line 512
    invoke-direct {v6, v12, v0}, Lm6/c;-><init>(Landroid/content/Context;Lcom/join/kotlin/base/impl/Downloadable;)V

    .line 513
    .line 514
    .line 515
    invoke-virtual {v2, v6}, Lcom/join/mgps/customview/DownloadNormalView;->f(Lcom/join/mgps/callbacks/f;)V

    .line 516
    .line 517
    .line 518
    invoke-virtual {v0}, Lcom/join/mgps/dto/DownloadPointBase;->isH5Game()Z

    .line 519
    .line 520
    .line 521
    move-result v2

    .line 522
    if-eqz v2, :cond_8

    .line 523
    .line 524
    iget-object v0, v5, Lcom/join/mgps/adapter/e1$a;->h:Landroid/widget/LinearLayout;

    .line 525
    .line 526
    invoke-virtual {v0, v7}, Landroid/view/View;->setVisibility(I)V

    .line 527
    .line 528
    .line 529
    iget-object v0, v5, Lcom/join/mgps/adapter/e1$a;->d:Landroid/widget/ImageView;

    .line 530
    .line 531
    invoke-virtual {v0, v7}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 532
    .line 533
    .line 534
    goto/16 :goto_6

    .line 535
    .line 536
    :cond_8
    if-nez v3, :cond_9

    .line 537
    .line 538
    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 539
    .line 540
    sget-object v2, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 541
    .line 542
    invoke-virtual {v1, v5, v0, v2}, Lcom/join/mgps/adapter/e1;->c(Lcom/join/mgps/adapter/e1$a;Ljava/lang/Boolean;Ljava/lang/Boolean;)V

    .line 543
    .line 544
    .line 545
    goto/16 :goto_6

    .line 546
    .line 547
    :cond_9
    invoke-virtual {v3}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getStatus()I

    .line 548
    .line 549
    .line 550
    move-result v2

    .line 551
    invoke-virtual {v0}, Lcom/join/mgps/dto/CollectionBeanSub;->getPay_tag_info()Lcom/join/mgps/dto/PayTagInfo;

    .line 552
    .line 553
    .line 554
    move-result-object v6

    .line 555
    invoke-virtual {v0}, Lcom/join/mgps/dto/CollectionBeanSub;->getCrc_sign_id()Ljava/lang/String;

    .line 556
    .line 557
    .line 558
    move-result-object v0

    .line 559
    invoke-static {v6, v0}, Lcom/join/mgps/Util/UtilsMy;->x0(Lcom/join/mgps/dto/PayTagInfo;Ljava/lang/String;)I

    .line 560
    .line 561
    .line 562
    move-result v0

    .line 563
    const/16 v6, 0x2b

    .line 564
    .line 565
    if-lez v0, :cond_a

    .line 566
    .line 567
    const/16 v2, 0x2b

    .line 568
    .line 569
    :cond_a
    if-eqz v2, :cond_f

    .line 570
    .line 571
    const/16 v0, 0x30

    .line 572
    .line 573
    if-eq v2, v0, :cond_e

    .line 574
    .line 575
    const-string v0, "/"

    .line 576
    .line 577
    if-eq v2, v11, :cond_d

    .line 578
    .line 579
    if-eq v2, v10, :cond_c

    .line 580
    .line 581
    const/4 v7, 0x5

    .line 582
    if-eq v2, v7, :cond_b

    .line 583
    .line 584
    const/4 v7, 0x6

    .line 585
    if-eq v2, v7, :cond_c

    .line 586
    .line 587
    const/4 v7, 0x7

    .line 588
    if-eq v2, v7, :cond_f

    .line 589
    .line 590
    const/16 v7, 0x2a

    .line 591
    .line 592
    if-eq v2, v7, :cond_b

    .line 593
    .line 594
    if-eq v2, v6, :cond_f

    .line 595
    .line 596
    packed-switch v2, :pswitch_data_0

    .line 597
    .line 598
    .line 599
    goto/16 :goto_6

    .line 600
    .line 601
    :pswitch_0
    sget-object v2, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 602
    .line 603
    sget-object v6, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 604
    .line 605
    invoke-virtual {v1, v5, v2, v6}, Lcom/join/mgps/adapter/e1;->c(Lcom/join/mgps/adapter/e1$a;Ljava/lang/Boolean;Ljava/lang/Boolean;)V

    .line 606
    .line 607
    .line 608
    iget-object v2, v5, Lcom/join/mgps/adapter/e1$a;->k:Landroid/widget/TextView;

    .line 609
    .line 610
    new-instance v6, Ljava/lang/StringBuilder;

    .line 611
    .line 612
    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    .line 613
    .line 614
    .line 615
    invoke-static {v8, v9}, Lcom/join/mgps/Util/UtilsMy;->c(J)Ljava/lang/String;

    .line 616
    .line 617
    .line 618
    move-result-object v7

    .line 619
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 620
    .line 621
    .line 622
    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 623
    .line 624
    .line 625
    invoke-static {v8, v9}, Lcom/join/mgps/Util/UtilsMy;->c(J)Ljava/lang/String;

    .line 626
    .line 627
    .line 628
    move-result-object v0

    .line 629
    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 630
    .line 631
    .line 632
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 633
    .line 634
    .line 635
    move-result-object v0

    .line 636
    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 637
    .line 638
    .line 639
    iget-object v0, v5, Lcom/join/mgps/adapter/e1$a;->l:Landroid/widget/TextView;

    .line 640
    .line 641
    const-string v2, "\u70b9\u51fb\u91cd\u65b0\u89e3\u538b"

    .line 642
    .line 643
    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 644
    .line 645
    .line 646
    iget-object v0, v5, Lcom/join/mgps/adapter/e1$a;->n:Landroid/widget/ProgressBar;

    .line 647
    .line 648
    invoke-virtual {v3}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getProgress()J

    .line 649
    .line 650
    .line 651
    move-result-wide v2

    .line 652
    long-to-int v3, v2

    .line 653
    invoke-virtual {v0, v3}, Landroid/widget/ProgressBar;->setProgress(I)V

    .line 654
    .line 655
    .line 656
    goto/16 :goto_6

    .line 657
    .line 658
    :pswitch_1
    sget-object v2, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 659
    .line 660
    sget-object v6, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 661
    .line 662
    invoke-virtual {v1, v5, v2, v6}, Lcom/join/mgps/adapter/e1;->c(Lcom/join/mgps/adapter/e1$a;Ljava/lang/Boolean;Ljava/lang/Boolean;)V

    .line 663
    .line 664
    .line 665
    iget-object v2, v5, Lcom/join/mgps/adapter/e1$a;->k:Landroid/widget/TextView;

    .line 666
    .line 667
    new-instance v6, Ljava/lang/StringBuilder;

    .line 668
    .line 669
    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    .line 670
    .line 671
    .line 672
    invoke-static {v8, v9}, Lcom/join/mgps/Util/UtilsMy;->c(J)Ljava/lang/String;

    .line 673
    .line 674
    .line 675
    move-result-object v7

    .line 676
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 677
    .line 678
    .line 679
    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 680
    .line 681
    .line 682
    invoke-static {v8, v9}, Lcom/join/mgps/Util/UtilsMy;->c(J)Ljava/lang/String;

    .line 683
    .line 684
    .line 685
    move-result-object v0

    .line 686
    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 687
    .line 688
    .line 689
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 690
    .line 691
    .line 692
    move-result-object v0

    .line 693
    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 694
    .line 695
    .line 696
    iget-object v0, v5, Lcom/join/mgps/adapter/e1$a;->l:Landroid/widget/TextView;

    .line 697
    .line 698
    const-string v2, "\u89e3\u538b\u4e2d.."

    .line 699
    .line 700
    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 701
    .line 702
    .line 703
    iget-object v0, v5, Lcom/join/mgps/adapter/e1$a;->n:Landroid/widget/ProgressBar;

    .line 704
    .line 705
    invoke-virtual {v3}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getProgress()J

    .line 706
    .line 707
    .line 708
    move-result-wide v2

    .line 709
    long-to-int v3, v2

    .line 710
    invoke-virtual {v0, v3}, Landroid/widget/ProgressBar;->setProgress(I)V

    .line 711
    .line 712
    .line 713
    goto/16 :goto_6

    .line 714
    .line 715
    :pswitch_2
    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 716
    .line 717
    sget-object v2, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 718
    .line 719
    invoke-virtual {v1, v5, v0, v2}, Lcom/join/mgps/adapter/e1;->c(Lcom/join/mgps/adapter/e1$a;Ljava/lang/Boolean;Ljava/lang/Boolean;)V

    .line 720
    .line 721
    .line 722
    goto/16 :goto_6

    .line 723
    .line 724
    :pswitch_3
    sget-object v2, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 725
    .line 726
    invoke-virtual {v1, v5, v2, v2}, Lcom/join/mgps/adapter/e1;->c(Lcom/join/mgps/adapter/e1$a;Ljava/lang/Boolean;Ljava/lang/Boolean;)V

    .line 727
    .line 728
    .line 729
    :try_start_0
    iget-object v2, v5, Lcom/join/mgps/adapter/e1$a;->k:Landroid/widget/TextView;

    .line 730
    .line 731
    new-instance v6, Ljava/lang/StringBuilder;

    .line 732
    .line 733
    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    .line 734
    .line 735
    .line 736
    invoke-virtual {v3}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getCurrentSize()J

    .line 737
    .line 738
    .line 739
    move-result-wide v10

    .line 740
    invoke-static {v10, v11}, Lcom/join/mgps/Util/UtilsMy;->c(J)Ljava/lang/String;

    .line 741
    .line 742
    .line 743
    move-result-object v7

    .line 744
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 745
    .line 746
    .line 747
    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 748
    .line 749
    .line 750
    invoke-static {v8, v9}, Lcom/join/mgps/Util/UtilsMy;->c(J)Ljava/lang/String;

    .line 751
    .line 752
    .line 753
    move-result-object v0

    .line 754
    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 755
    .line 756
    .line 757
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 758
    .line 759
    .line 760
    move-result-object v0

    .line 761
    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 762
    .line 763
    .line 764
    iget-object v0, v5, Lcom/join/mgps/adapter/e1$a;->m:Landroid/widget/ProgressBar;

    .line 765
    .line 766
    invoke-virtual {v3}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getProgress()J

    .line 767
    .line 768
    .line 769
    move-result-wide v2

    .line 770
    long-to-int v3, v2

    .line 771
    invoke-virtual {v0, v3}, Landroid/widget/ProgressBar;->setProgress(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 772
    .line 773
    .line 774
    goto :goto_4

    .line 775
    :catch_0
    move-exception v0

    .line 776
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 777
    .line 778
    .line 779
    :goto_4
    iget-object v0, v5, Lcom/join/mgps/adapter/e1$a;->l:Landroid/widget/TextView;

    .line 780
    .line 781
    const-string v2, "\u7b49\u5f85\u4e2d"

    .line 782
    .line 783
    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 784
    .line 785
    .line 786
    goto/16 :goto_6

    .line 787
    .line 788
    :pswitch_4
    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 789
    .line 790
    sget-object v2, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 791
    .line 792
    invoke-virtual {v1, v5, v0, v2}, Lcom/join/mgps/adapter/e1;->c(Lcom/join/mgps/adapter/e1$a;Ljava/lang/Boolean;Ljava/lang/Boolean;)V

    .line 793
    .line 794
    .line 795
    goto/16 :goto_6

    .line 796
    .line 797
    :cond_b
    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 798
    .line 799
    sget-object v2, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 800
    .line 801
    invoke-virtual {v1, v5, v0, v2}, Lcom/join/mgps/adapter/e1;->c(Lcom/join/mgps/adapter/e1$a;Ljava/lang/Boolean;Ljava/lang/Boolean;)V

    .line 802
    .line 803
    .line 804
    goto/16 :goto_6

    .line 805
    .line 806
    :cond_c
    sget-object v2, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 807
    .line 808
    invoke-virtual {v1, v5, v2, v2}, Lcom/join/mgps/adapter/e1;->c(Lcom/join/mgps/adapter/e1$a;Ljava/lang/Boolean;Ljava/lang/Boolean;)V

    .line 809
    .line 810
    .line 811
    :try_start_1
    iget-object v2, v5, Lcom/join/mgps/adapter/e1$a;->k:Landroid/widget/TextView;

    .line 812
    .line 813
    new-instance v6, Ljava/lang/StringBuilder;

    .line 814
    .line 815
    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    .line 816
    .line 817
    .line 818
    invoke-virtual {v3}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getCurrentSize()J

    .line 819
    .line 820
    .line 821
    move-result-wide v10

    .line 822
    invoke-static {v10, v11}, Lcom/join/mgps/Util/UtilsMy;->c(J)Ljava/lang/String;

    .line 823
    .line 824
    .line 825
    move-result-object v7

    .line 826
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 827
    .line 828
    .line 829
    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 830
    .line 831
    .line 832
    invoke-static {v8, v9}, Lcom/join/mgps/Util/UtilsMy;->c(J)Ljava/lang/String;

    .line 833
    .line 834
    .line 835
    move-result-object v0

    .line 836
    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 837
    .line 838
    .line 839
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 840
    .line 841
    .line 842
    move-result-object v0

    .line 843
    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 844
    .line 845
    .line 846
    iget-object v0, v5, Lcom/join/mgps/adapter/e1$a;->m:Landroid/widget/ProgressBar;

    .line 847
    .line 848
    invoke-virtual {v3}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getProgress()J

    .line 849
    .line 850
    .line 851
    move-result-wide v2

    .line 852
    long-to-int v3, v2

    .line 853
    invoke-virtual {v0, v3}, Landroid/widget/ProgressBar;->setProgress(I)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 854
    .line 855
    .line 856
    goto :goto_5

    .line 857
    :catch_1
    move-exception v0

    .line 858
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 859
    .line 860
    .line 861
    :goto_5
    iget-object v0, v5, Lcom/join/mgps/adapter/e1$a;->l:Landroid/widget/TextView;

    .line 862
    .line 863
    const-string v2, "\u6682\u505c\u4e2d"

    .line 864
    .line 865
    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 866
    .line 867
    .line 868
    goto :goto_6

    .line 869
    :cond_d
    invoke-static {v3}, Lcom/join/mgps/Util/UtilsMy;->U4(Lcom/github/snowdream/android/app/downloader/DownloadTask;)V

    .line 870
    .line 871
    .line 872
    sget-object v2, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 873
    .line 874
    invoke-virtual {v1, v5, v2, v2}, Lcom/join/mgps/adapter/e1;->c(Lcom/join/mgps/adapter/e1$a;Ljava/lang/Boolean;Ljava/lang/Boolean;)V

    .line 875
    .line 876
    .line 877
    iget-object v2, v5, Lcom/join/mgps/adapter/e1$a;->k:Landroid/widget/TextView;

    .line 878
    .line 879
    new-instance v6, Ljava/lang/StringBuilder;

    .line 880
    .line 881
    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    .line 882
    .line 883
    .line 884
    invoke-virtual {v3}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getCurrentSize()J

    .line 885
    .line 886
    .line 887
    move-result-wide v10

    .line 888
    invoke-static {v10, v11}, Lcom/join/mgps/Util/UtilsMy;->c(J)Ljava/lang/String;

    .line 889
    .line 890
    .line 891
    move-result-object v7

    .line 892
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 893
    .line 894
    .line 895
    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 896
    .line 897
    .line 898
    invoke-static {v8, v9}, Lcom/join/mgps/Util/UtilsMy;->c(J)Ljava/lang/String;

    .line 899
    .line 900
    .line 901
    move-result-object v0

    .line 902
    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 903
    .line 904
    .line 905
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 906
    .line 907
    .line 908
    move-result-object v0

    .line 909
    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 910
    .line 911
    .line 912
    iget-object v0, v5, Lcom/join/mgps/adapter/e1$a;->l:Landroid/widget/TextView;

    .line 913
    .line 914
    new-instance v2, Ljava/lang/StringBuilder;

    .line 915
    .line 916
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 917
    .line 918
    .line 919
    invoke-virtual {v3}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getSpeed()Ljava/lang/String;

    .line 920
    .line 921
    .line 922
    move-result-object v6

    .line 923
    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 924
    .line 925
    .line 926
    const-string v6, "/S"

    .line 927
    .line 928
    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 929
    .line 930
    .line 931
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 932
    .line 933
    .line 934
    move-result-object v2

    .line 935
    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 936
    .line 937
    .line 938
    iget-object v0, v5, Lcom/join/mgps/adapter/e1$a;->m:Landroid/widget/ProgressBar;

    .line 939
    .line 940
    invoke-virtual {v3}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getProgress()J

    .line 941
    .line 942
    .line 943
    move-result-wide v2

    .line 944
    long-to-int v3, v2

    .line 945
    invoke-virtual {v0, v3}, Landroid/widget/ProgressBar;->setProgress(I)V

    .line 946
    .line 947
    .line 948
    goto :goto_6

    .line 949
    :cond_e
    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 950
    .line 951
    sget-object v2, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 952
    .line 953
    invoke-virtual {v1, v5, v0, v2}, Lcom/join/mgps/adapter/e1;->c(Lcom/join/mgps/adapter/e1$a;Ljava/lang/Boolean;Ljava/lang/Boolean;)V

    .line 954
    .line 955
    .line 956
    goto :goto_6

    .line 957
    :cond_f
    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 958
    .line 959
    sget-object v2, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 960
    .line 961
    invoke-virtual {v1, v5, v0, v2}, Lcom/join/mgps/adapter/e1;->c(Lcom/join/mgps/adapter/e1$a;Ljava/lang/Boolean;Ljava/lang/Boolean;)V

    .line 962
    .line 963
    .line 964
    :goto_6
    return-object v4

    .line 965
    :pswitch_data_0
    .packed-switch 0x9
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
