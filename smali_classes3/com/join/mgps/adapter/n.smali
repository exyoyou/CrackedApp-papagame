.class public Lcom/join/mgps/adapter/n;
.super Landroid/widget/BaseAdapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/join/mgps/adapter/n$a;
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

.field private e:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
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
    const/4 v1, 0x0

    .line 7
    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 8
    .line 9
    .line 10
    iput-object v0, p0, Lcom/join/mgps/adapter/n;->d:Ljava/util/List;

    .line 11
    .line 12
    const/4 v0, 0x1

    .line 13
    iput-boolean v0, p0, Lcom/join/mgps/adapter/n;->e:Z

    .line 14
    .line 15
    iput-object p1, p0, Lcom/join/mgps/adapter/n;->b:Landroid/content/Context;

    .line 16
    .line 17
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    .line 18
    .line 19
    .line 20
    move-result-object p1

    .line 21
    iput-object p1, p0, Lcom/join/mgps/adapter/n;->c:Landroid/view/LayoutInflater;

    .line 22
    .line 23
    return-void
.end method


# virtual methods
.method public a(I)Lcom/join/mgps/dto/CollectionBeanSub;
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
    iget-object v0, p0, Lcom/join/mgps/adapter/n;->d:Ljava/util/List;

    .line 2
    .line 3
    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    check-cast p1, Lcom/join/mgps/dto/CollectionBeanSub;

    .line 8
    .line 9
    return-object p1
.end method

.method public b()Ljava/util/List;
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
    iget-object v0, p0, Lcom/join/mgps/adapter/n;->d:Ljava/util/List;

    .line 2
    .line 3
    return-object v0
.end method

.method public c()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/join/mgps/adapter/n;->e:Z

    .line 2
    .line 3
    return v0
.end method

.method public d(Z)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "showDownButton"
        }
    .end annotation

    .line 1
    iput-boolean p1, p0, Lcom/join/mgps/adapter/n;->e:Z

    .line 2
    .line 3
    return-void
.end method

.method e(Lcom/join/mgps/adapter/n$a;Ljava/lang/Boolean;Ljava/lang/Boolean;)V
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
    iget-object p2, p1, Lcom/join/mgps/adapter/n$a;->g:Landroid/widget/LinearLayout;

    .line 11
    .line 12
    invoke-virtual {p2, v1}, Landroid/view/View;->setVisibility(I)V

    .line 13
    .line 14
    .line 15
    iget-object p2, p1, Lcom/join/mgps/adapter/n$a;->k:Landroid/widget/ProgressBar;

    .line 16
    .line 17
    invoke-virtual {p2, v1}, Landroid/view/View;->setVisibility(I)V

    .line 18
    .line 19
    .line 20
    iget-object p2, p1, Lcom/join/mgps/adapter/n$a;->l:Landroid/widget/ProgressBar;

    .line 21
    .line 22
    invoke-virtual {p2, v1}, Landroid/view/View;->setVisibility(I)V

    .line 23
    .line 24
    .line 25
    iget-object p2, p1, Lcom/join/mgps/adapter/n$a;->h:Landroid/widget/LinearLayout;

    .line 26
    .line 27
    invoke-virtual {p2, v0}, Landroid/view/View;->setVisibility(I)V

    .line 28
    .line 29
    .line 30
    iget-object p1, p1, Lcom/join/mgps/adapter/n$a;->f:Landroid/widget/TextView;

    .line 31
    .line 32
    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 33
    .line 34
    .line 35
    goto :goto_1

    .line 36
    :cond_0
    iget-object p2, p1, Lcom/join/mgps/adapter/n$a;->g:Landroid/widget/LinearLayout;

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
    iget-object p2, p1, Lcom/join/mgps/adapter/n$a;->k:Landroid/widget/ProgressBar;

    .line 48
    .line 49
    invoke-virtual {p2, v1}, Landroid/view/View;->setVisibility(I)V

    .line 50
    .line 51
    .line 52
    iget-object p2, p1, Lcom/join/mgps/adapter/n$a;->l:Landroid/widget/ProgressBar;

    .line 53
    .line 54
    invoke-virtual {p2, v0}, Landroid/view/View;->setVisibility(I)V

    .line 55
    .line 56
    .line 57
    goto :goto_0

    .line 58
    :cond_1
    iget-object p2, p1, Lcom/join/mgps/adapter/n$a;->l:Landroid/widget/ProgressBar;

    .line 59
    .line 60
    invoke-virtual {p2, v1}, Landroid/view/View;->setVisibility(I)V

    .line 61
    .line 62
    .line 63
    iget-object p2, p1, Lcom/join/mgps/adapter/n$a;->k:Landroid/widget/ProgressBar;

    .line 64
    .line 65
    invoke-virtual {p2, v0}, Landroid/view/View;->setVisibility(I)V

    .line 66
    .line 67
    .line 68
    :goto_0
    iget-object p2, p1, Lcom/join/mgps/adapter/n$a;->h:Landroid/widget/LinearLayout;

    .line 69
    .line 70
    invoke-virtual {p2, v1}, Landroid/view/View;->setVisibility(I)V

    .line 71
    .line 72
    .line 73
    iget-object p1, p1, Lcom/join/mgps/adapter/n$a;->f:Landroid/widget/TextView;

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
    iget-object v0, p0, Lcom/join/mgps/adapter/n;->d:Ljava/util/List;

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

.method public bridge synthetic getItem(I)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            "i"
        }
    .end annotation

    .line 1
    invoke-virtual {p0, p1}, Lcom/join/mgps/adapter/n;->a(I)Lcom/join/mgps/dto/CollectionBeanSub;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
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
    .locals 20
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
    if-nez p2, :cond_0

    .line 4
    .line 5
    iget-object v0, v1, Lcom/join/mgps/adapter/n;->c:Landroid/view/LayoutInflater;

    .line 6
    .line 7
    const v2, 0x7f0d00cb

    .line 8
    .line 9
    .line 10
    const/4 v3, 0x0

    .line 11
    invoke-virtual {v0, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    new-instance v2, Lcom/join/mgps/adapter/n$a;

    .line 16
    .line 17
    invoke-direct {v2, v1}, Lcom/join/mgps/adapter/n$a;-><init>(Lcom/join/mgps/adapter/n;)V

    .line 18
    .line 19
    .line 20
    const v3, 0x7f0a1044

    .line 21
    .line 22
    .line 23
    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 24
    .line 25
    .line 26
    move-result-object v3

    .line 27
    check-cast v3, Lcom/facebook/drawee/view/SimpleDraweeView;

    .line 28
    .line 29
    iput-object v3, v2, Lcom/join/mgps/adapter/n$a;->a:Lcom/facebook/drawee/view/SimpleDraweeView;

    .line 30
    .line 31
    const v3, 0x7f0a0790

    .line 32
    .line 33
    .line 34
    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 35
    .line 36
    .line 37
    move-result-object v3

    .line 38
    check-cast v3, Landroid/widget/ImageView;

    .line 39
    .line 40
    iput-object v3, v2, Lcom/join/mgps/adapter/n$a;->b:Landroid/widget/ImageView;

    .line 41
    .line 42
    const v3, 0x7f0a1042

    .line 43
    .line 44
    .line 45
    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 46
    .line 47
    .line 48
    move-result-object v3

    .line 49
    check-cast v3, Landroid/widget/TextView;

    .line 50
    .line 51
    iput-object v3, v2, Lcom/join/mgps/adapter/n$a;->c:Landroid/widget/TextView;

    .line 52
    .line 53
    const v3, 0x7f0a054e

    .line 54
    .line 55
    .line 56
    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 57
    .line 58
    .line 59
    move-result-object v3

    .line 60
    check-cast v3, Lcom/join/mgps/customview/DownloadNormalView;

    .line 61
    .line 62
    iput-object v3, v2, Lcom/join/mgps/adapter/n$a;->d:Lcom/join/mgps/customview/DownloadNormalView;

    .line 63
    .line 64
    const v3, 0x7f0a1043

    .line 65
    .line 66
    .line 67
    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 68
    .line 69
    .line 70
    move-result-object v3

    .line 71
    check-cast v3, Landroid/widget/TextView;

    .line 72
    .line 73
    iput-object v3, v2, Lcom/join/mgps/adapter/n$a;->f:Landroid/widget/TextView;

    .line 74
    .line 75
    const v3, 0x7f0a0e73

    .line 76
    .line 77
    .line 78
    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 79
    .line 80
    .line 81
    move-result-object v3

    .line 82
    check-cast v3, Landroid/widget/LinearLayout;

    .line 83
    .line 84
    iput-object v3, v2, Lcom/join/mgps/adapter/n$a;->g:Landroid/widget/LinearLayout;

    .line 85
    .line 86
    const v3, 0x7f0a1764

    .line 87
    .line 88
    .line 89
    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 90
    .line 91
    .line 92
    move-result-object v3

    .line 93
    check-cast v3, Landroid/widget/LinearLayout;

    .line 94
    .line 95
    iput-object v3, v2, Lcom/join/mgps/adapter/n$a;->h:Landroid/widget/LinearLayout;

    .line 96
    .line 97
    const v3, 0x7f0a00f7

    .line 98
    .line 99
    .line 100
    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 101
    .line 102
    .line 103
    move-result-object v3

    .line 104
    check-cast v3, Landroid/widget/TextView;

    .line 105
    .line 106
    iput-object v3, v2, Lcom/join/mgps/adapter/n$a;->i:Landroid/widget/TextView;

    .line 107
    .line 108
    const v3, 0x7f0a0f94

    .line 109
    .line 110
    .line 111
    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 112
    .line 113
    .line 114
    move-result-object v3

    .line 115
    check-cast v3, Landroid/widget/TextView;

    .line 116
    .line 117
    iput-object v3, v2, Lcom/join/mgps/adapter/n$a;->j:Landroid/widget/TextView;

    .line 118
    .line 119
    const v3, 0x7f0a129e

    .line 120
    .line 121
    .line 122
    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 123
    .line 124
    .line 125
    move-result-object v3

    .line 126
    check-cast v3, Landroid/widget/ProgressBar;

    .line 127
    .line 128
    iput-object v3, v2, Lcom/join/mgps/adapter/n$a;->k:Landroid/widget/ProgressBar;

    .line 129
    .line 130
    const v3, 0x7f0a12a5

    .line 131
    .line 132
    .line 133
    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 134
    .line 135
    .line 136
    move-result-object v3

    .line 137
    check-cast v3, Landroid/widget/ProgressBar;

    .line 138
    .line 139
    iput-object v3, v2, Lcom/join/mgps/adapter/n$a;->l:Landroid/widget/ProgressBar;

    .line 140
    .line 141
    const v3, 0x7f0a0e61

    .line 142
    .line 143
    .line 144
    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 145
    .line 146
    .line 147
    move-result-object v3

    .line 148
    iput-object v3, v2, Lcom/join/mgps/adapter/n$a;->e:Landroid/view/View;

    .line 149
    .line 150
    invoke-virtual {v0, v2}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 151
    .line 152
    .line 153
    move-object v3, v2

    .line 154
    move-object v2, v0

    .line 155
    goto :goto_0

    .line 156
    :cond_0
    invoke-virtual/range {p2 .. p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    .line 157
    .line 158
    .line 159
    move-result-object v0

    .line 160
    move-object v2, v0

    .line 161
    check-cast v2, Lcom/join/mgps/adapter/n$a;

    .line 162
    .line 163
    move-object v3, v2

    .line 164
    move-object/from16 v2, p2

    .line 165
    .line 166
    :goto_0
    iget-object v0, v3, Lcom/join/mgps/adapter/n$a;->e:Landroid/view/View;

    .line 167
    .line 168
    const/4 v4, 0x0

    .line 169
    invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V

    .line 170
    .line 171
    .line 172
    iget-object v0, v1, Lcom/join/mgps/adapter/n;->d:Ljava/util/List;

    .line 173
    .line 174
    move/from16 v5, p1

    .line 175
    .line 176
    invoke-interface {v0, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 177
    .line 178
    .line 179
    move-result-object v0

    .line 180
    move-object v5, v0

    .line 181
    check-cast v5, Lcom/join/mgps/dto/CollectionBeanSub;

    .line 182
    .line 183
    invoke-virtual {v5}, Lcom/join/kotlin/base/impl/BaseDownloadable;->getDownloadTask()Lcom/github/snowdream/android/app/downloader/DownloadTask;

    .line 184
    .line 185
    .line 186
    move-result-object v6

    .line 187
    invoke-virtual {v5}, Lcom/join/mgps/dto/CollectionBeanSub;->getGift_package_switch()I

    .line 188
    .line 189
    .line 190
    move-result v0

    .line 191
    const/4 v7, 0x1

    .line 192
    const/16 v8, 0x8

    .line 193
    .line 194
    if-ne v0, v7, :cond_1

    .line 195
    .line 196
    iget-object v0, v3, Lcom/join/mgps/adapter/n$a;->b:Landroid/widget/ImageView;

    .line 197
    .line 198
    invoke-virtual {v0, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 199
    .line 200
    .line 201
    goto :goto_1

    .line 202
    :cond_1
    iget-object v0, v3, Lcom/join/mgps/adapter/n$a;->b:Landroid/widget/ImageView;

    .line 203
    .line 204
    invoke-virtual {v0, v8}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 205
    .line 206
    .line 207
    :goto_1
    iget-object v0, v3, Lcom/join/mgps/adapter/n$a;->c:Landroid/widget/TextView;

    .line 208
    .line 209
    invoke-virtual {v5}, Lcom/join/mgps/dto/CollectionBeanSub;->getGame_name()Ljava/lang/String;

    .line 210
    .line 211
    .line 212
    move-result-object v4

    .line 213
    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 214
    .line 215
    .line 216
    iget-object v0, v3, Lcom/join/mgps/adapter/n$a;->f:Landroid/widget/TextView;

    .line 217
    .line 218
    invoke-virtual {v5}, Lcom/join/mgps/dto/CollectionBeanSub;->getInfo()Ljava/lang/String;

    .line 219
    .line 220
    .line 221
    move-result-object v4

    .line 222
    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 223
    .line 224
    .line 225
    const-wide/16 v9, 0x0

    .line 226
    .line 227
    :try_start_0
    invoke-virtual {v5}, Lcom/join/mgps/dto/CollectionBeanSub;->getSize()Ljava/lang/String;

    .line 228
    .line 229
    .line 230
    move-result-object v0

    .line 231
    invoke-static {v0}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    .line 232
    .line 233
    .line 234
    move-result-wide v11
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 235
    const-wide/high16 v13, 0x4090000000000000L    # 1024.0

    .line 236
    .line 237
    mul-double v11, v11, v13

    .line 238
    .line 239
    mul-double v11, v11, v13

    .line 240
    .line 241
    double-to-long v11, v11

    .line 242
    goto :goto_2

    .line 243
    :catch_0
    move-exception v0

    .line 244
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 245
    .line 246
    .line 247
    move-wide v11, v9

    .line 248
    :goto_2
    iget-object v0, v3, Lcom/join/mgps/adapter/n$a;->a:Lcom/facebook/drawee/view/SimpleDraweeView;

    .line 249
    .line 250
    invoke-virtual {v5}, Lcom/join/mgps/dto/CollectionBeanSub;->getIco_remote()Ljava/lang/String;

    .line 251
    .line 252
    .line 253
    move-result-object v4

    .line 254
    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;

    .line 255
    .line 256
    .line 257
    move-result-object v4

    .line 258
    invoke-static {v0, v4}, Lcom/join/android/app/common/utils/l;->h(Lcom/facebook/drawee/view/SimpleDraweeView;Ljava/lang/String;)V

    .line 259
    .line 260
    .line 261
    invoke-virtual {v5}, Lcom/join/mgps/dto/CollectionBeanSub;->getTag_info()Ljava/util/List;

    .line 262
    .line 263
    .line 264
    move-result-object v17

    .line 265
    invoke-virtual {v5}, Lcom/join/mgps/dto/CollectionBeanSub;->getScore()Ljava/lang/String;

    .line 266
    .line 267
    .line 268
    move-result-object v13

    .line 269
    invoke-virtual {v5}, Lcom/join/mgps/dto/CollectionBeanSub;->getDown_count()I

    .line 270
    .line 271
    .line 272
    move-result v14

    .line 273
    invoke-virtual {v5}, Lcom/join/mgps/dto/CollectionBeanSub;->getSize()Ljava/lang/String;

    .line 274
    .line 275
    .line 276
    move-result-object v15

    .line 277
    invoke-virtual {v5}, Lcom/join/mgps/dto/CollectionBeanSub;->getSp_tag_info()Lcom/join/mgps/dto/TipNew;

    .line 278
    .line 279
    .line 280
    move-result-object v16

    .line 281
    iget-object v0, v3, Lcom/join/mgps/adapter/n$a;->h:Landroid/widget/LinearLayout;

    .line 282
    .line 283
    iget-object v4, v1, Lcom/join/mgps/adapter/n;->b:Landroid/content/Context;

    .line 284
    .line 285
    move-object/from16 v18, v0

    .line 286
    .line 287
    move-object/from16 v19, v4

    .line 288
    .line 289
    invoke-static/range {v13 .. v19}, Lcom/join/mgps/Util/UtilsMy;->K(Ljava/lang/String;ILjava/lang/String;Lcom/join/mgps/dto/TipNew;Ljava/util/List;Landroid/widget/LinearLayout;Landroid/content/Context;)V

    .line 290
    .line 291
    .line 292
    iget-object v0, v3, Lcom/join/mgps/adapter/n$a;->d:Lcom/join/mgps/customview/DownloadNormalView;

    .line 293
    .line 294
    new-instance v4, Lm6/c;

    .line 295
    .line 296
    iget-object v7, v1, Lcom/join/mgps/adapter/n;->b:Landroid/content/Context;

    .line 297
    .line 298
    invoke-direct {v4, v7, v5}, Lm6/c;-><init>(Landroid/content/Context;Lcom/join/kotlin/base/impl/Downloadable;)V

    .line 299
    .line 300
    .line 301
    invoke-virtual {v0, v4}, Lcom/join/mgps/customview/DownloadNormalView;->f(Lcom/join/mgps/callbacks/f;)V

    .line 302
    .line 303
    .line 304
    invoke-virtual {v5}, Lcom/join/mgps/dto/DownloadPointBase;->isH5Game()Z

    .line 305
    .line 306
    .line 307
    move-result v0

    .line 308
    if-eqz v0, :cond_2

    .line 309
    .line 310
    iget-object v0, v3, Lcom/join/mgps/adapter/n$a;->h:Landroid/widget/LinearLayout;

    .line 311
    .line 312
    invoke-virtual {v0, v8}, Landroid/view/View;->setVisibility(I)V

    .line 313
    .line 314
    .line 315
    iget-object v0, v3, Lcom/join/mgps/adapter/n$a;->b:Landroid/widget/ImageView;

    .line 316
    .line 317
    invoke-virtual {v0, v8}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 318
    .line 319
    .line 320
    goto/16 :goto_7

    .line 321
    .line 322
    :cond_2
    if-nez v6, :cond_3

    .line 323
    .line 324
    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 325
    .line 326
    sget-object v4, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 327
    .line 328
    invoke-virtual {v1, v3, v0, v4}, Lcom/join/mgps/adapter/n;->e(Lcom/join/mgps/adapter/n$a;Ljava/lang/Boolean;Ljava/lang/Boolean;)V

    .line 329
    .line 330
    .line 331
    goto/16 :goto_7

    .line 332
    .line 333
    :cond_3
    new-instance v0, Ljava/lang/StringBuilder;

    .line 334
    .line 335
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 336
    .line 337
    .line 338
    invoke-virtual {v6}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getStatus()I

    .line 339
    .line 340
    .line 341
    move-result v4

    .line 342
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 343
    .line 344
    .line 345
    const-string v4, " dd "

    .line 346
    .line 347
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 348
    .line 349
    .line 350
    invoke-virtual {v6}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getShowName()Ljava/lang/String;

    .line 351
    .line 352
    .line 353
    move-result-object v4

    .line 354
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 355
    .line 356
    .line 357
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 358
    .line 359
    .line 360
    move-result-object v0

    .line 361
    const-string v4, "infoo"

    .line 362
    .line 363
    invoke-static {v4, v0}, Lcom/join/mgps/Util/g1;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 364
    .line 365
    .line 366
    invoke-virtual {v6}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getStatus()I

    .line 367
    .line 368
    .line 369
    move-result v0

    .line 370
    invoke-virtual {v5}, Lcom/join/mgps/dto/CollectionBeanSub;->getPay_tag_info()Lcom/join/mgps/dto/PayTagInfo;

    .line 371
    .line 372
    .line 373
    move-result-object v4

    .line 374
    invoke-virtual {v5}, Lcom/join/mgps/dto/CollectionBeanSub;->getCrc_sign_id()Ljava/lang/String;

    .line 375
    .line 376
    .line 377
    move-result-object v5

    .line 378
    invoke-static {v4, v5}, Lcom/join/mgps/Util/UtilsMy;->x0(Lcom/join/mgps/dto/PayTagInfo;Ljava/lang/String;)I

    .line 379
    .line 380
    .line 381
    move-result v4

    .line 382
    const/16 v5, 0x2b

    .line 383
    .line 384
    if-lez v4, :cond_4

    .line 385
    .line 386
    const/16 v0, 0x2b

    .line 387
    .line 388
    :cond_4
    if-eqz v0, :cond_b

    .line 389
    .line 390
    const/16 v4, 0x30

    .line 391
    .line 392
    if-eq v0, v4, :cond_a

    .line 393
    .line 394
    const/4 v4, 0x2

    .line 395
    const-string v7, "/"

    .line 396
    .line 397
    if-eq v0, v4, :cond_8

    .line 398
    .line 399
    const/4 v4, 0x3

    .line 400
    if-eq v0, v4, :cond_6

    .line 401
    .line 402
    const/4 v4, 0x5

    .line 403
    if-eq v0, v4, :cond_5

    .line 404
    .line 405
    const/4 v4, 0x6

    .line 406
    if-eq v0, v4, :cond_6

    .line 407
    .line 408
    const/4 v4, 0x7

    .line 409
    if-eq v0, v4, :cond_b

    .line 410
    .line 411
    const/16 v4, 0x2a

    .line 412
    .line 413
    if-eq v0, v4, :cond_5

    .line 414
    .line 415
    if-eq v0, v5, :cond_b

    .line 416
    .line 417
    packed-switch v0, :pswitch_data_0

    .line 418
    .line 419
    .line 420
    goto/16 :goto_7

    .line 421
    .line 422
    :pswitch_0
    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 423
    .line 424
    sget-object v4, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 425
    .line 426
    invoke-virtual {v1, v3, v0, v4}, Lcom/join/mgps/adapter/n;->e(Lcom/join/mgps/adapter/n$a;Ljava/lang/Boolean;Ljava/lang/Boolean;)V

    .line 427
    .line 428
    .line 429
    iget-object v0, v3, Lcom/join/mgps/adapter/n$a;->i:Landroid/widget/TextView;

    .line 430
    .line 431
    new-instance v4, Ljava/lang/StringBuilder;

    .line 432
    .line 433
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 434
    .line 435
    .line 436
    invoke-static {v11, v12}, Lcom/join/mgps/Util/UtilsMy;->c(J)Ljava/lang/String;

    .line 437
    .line 438
    .line 439
    move-result-object v5

    .line 440
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 441
    .line 442
    .line 443
    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 444
    .line 445
    .line 446
    invoke-static {v11, v12}, Lcom/join/mgps/Util/UtilsMy;->c(J)Ljava/lang/String;

    .line 447
    .line 448
    .line 449
    move-result-object v5

    .line 450
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 451
    .line 452
    .line 453
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 454
    .line 455
    .line 456
    move-result-object v4

    .line 457
    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 458
    .line 459
    .line 460
    iget-object v0, v3, Lcom/join/mgps/adapter/n$a;->j:Landroid/widget/TextView;

    .line 461
    .line 462
    const-string v4, "\u70b9\u51fb\u91cd\u65b0\u89e3\u538b"

    .line 463
    .line 464
    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 465
    .line 466
    .line 467
    iget-object v0, v3, Lcom/join/mgps/adapter/n$a;->l:Landroid/widget/ProgressBar;

    .line 468
    .line 469
    invoke-virtual {v6}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getProgress()J

    .line 470
    .line 471
    .line 472
    move-result-wide v3

    .line 473
    long-to-int v4, v3

    .line 474
    invoke-virtual {v0, v4}, Landroid/widget/ProgressBar;->setProgress(I)V

    .line 475
    .line 476
    .line 477
    goto/16 :goto_7

    .line 478
    .line 479
    :pswitch_1
    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 480
    .line 481
    sget-object v4, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 482
    .line 483
    invoke-virtual {v1, v3, v0, v4}, Lcom/join/mgps/adapter/n;->e(Lcom/join/mgps/adapter/n$a;Ljava/lang/Boolean;Ljava/lang/Boolean;)V

    .line 484
    .line 485
    .line 486
    iget-object v0, v3, Lcom/join/mgps/adapter/n$a;->i:Landroid/widget/TextView;

    .line 487
    .line 488
    new-instance v4, Ljava/lang/StringBuilder;

    .line 489
    .line 490
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 491
    .line 492
    .line 493
    invoke-static {v11, v12}, Lcom/join/mgps/Util/UtilsMy;->c(J)Ljava/lang/String;

    .line 494
    .line 495
    .line 496
    move-result-object v5

    .line 497
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 498
    .line 499
    .line 500
    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 501
    .line 502
    .line 503
    invoke-static {v11, v12}, Lcom/join/mgps/Util/UtilsMy;->c(J)Ljava/lang/String;

    .line 504
    .line 505
    .line 506
    move-result-object v5

    .line 507
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 508
    .line 509
    .line 510
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 511
    .line 512
    .line 513
    move-result-object v4

    .line 514
    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 515
    .line 516
    .line 517
    iget-object v0, v3, Lcom/join/mgps/adapter/n$a;->j:Landroid/widget/TextView;

    .line 518
    .line 519
    const-string v4, "\u89e3\u538b\u4e2d.."

    .line 520
    .line 521
    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 522
    .line 523
    .line 524
    iget-object v0, v3, Lcom/join/mgps/adapter/n$a;->l:Landroid/widget/ProgressBar;

    .line 525
    .line 526
    invoke-virtual {v6}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getProgress()J

    .line 527
    .line 528
    .line 529
    move-result-wide v3

    .line 530
    long-to-int v4, v3

    .line 531
    invoke-virtual {v0, v4}, Landroid/widget/ProgressBar;->setProgress(I)V

    .line 532
    .line 533
    .line 534
    goto/16 :goto_7

    .line 535
    .line 536
    :pswitch_2
    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 537
    .line 538
    sget-object v4, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 539
    .line 540
    invoke-virtual {v1, v3, v0, v4}, Lcom/join/mgps/adapter/n;->e(Lcom/join/mgps/adapter/n$a;Ljava/lang/Boolean;Ljava/lang/Boolean;)V

    .line 541
    .line 542
    .line 543
    goto/16 :goto_7

    .line 544
    .line 545
    :pswitch_3
    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 546
    .line 547
    invoke-virtual {v1, v3, v0, v0}, Lcom/join/mgps/adapter/n;->e(Lcom/join/mgps/adapter/n$a;Ljava/lang/Boolean;Ljava/lang/Boolean;)V

    .line 548
    .line 549
    .line 550
    iget-object v0, v3, Lcom/join/mgps/adapter/n$a;->i:Landroid/widget/TextView;

    .line 551
    .line 552
    new-instance v4, Ljava/lang/StringBuilder;

    .line 553
    .line 554
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 555
    .line 556
    .line 557
    invoke-virtual {v6}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getCurrentSize()J

    .line 558
    .line 559
    .line 560
    move-result-wide v8

    .line 561
    invoke-static {v8, v9}, Lcom/join/mgps/Util/UtilsMy;->c(J)Ljava/lang/String;

    .line 562
    .line 563
    .line 564
    move-result-object v5

    .line 565
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 566
    .line 567
    .line 568
    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 569
    .line 570
    .line 571
    invoke-static {v11, v12}, Lcom/join/mgps/Util/UtilsMy;->c(J)Ljava/lang/String;

    .line 572
    .line 573
    .line 574
    move-result-object v5

    .line 575
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 576
    .line 577
    .line 578
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 579
    .line 580
    .line 581
    move-result-object v4

    .line 582
    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 583
    .line 584
    .line 585
    :try_start_1
    iget-object v0, v3, Lcom/join/mgps/adapter/n$a;->k:Landroid/widget/ProgressBar;

    .line 586
    .line 587
    invoke-virtual {v6}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getProgress()J

    .line 588
    .line 589
    .line 590
    move-result-wide v4

    .line 591
    long-to-int v5, v4

    .line 592
    invoke-virtual {v0, v5}, Landroid/widget/ProgressBar;->setProgress(I)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 593
    .line 594
    .line 595
    goto :goto_3

    .line 596
    :catch_1
    move-exception v0

    .line 597
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 598
    .line 599
    .line 600
    :goto_3
    iget-object v0, v3, Lcom/join/mgps/adapter/n$a;->j:Landroid/widget/TextView;

    .line 601
    .line 602
    const-string v3, "\u7b49\u5f85\u4e2d"

    .line 603
    .line 604
    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 605
    .line 606
    .line 607
    goto/16 :goto_7

    .line 608
    .line 609
    :pswitch_4
    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 610
    .line 611
    sget-object v4, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 612
    .line 613
    invoke-virtual {v1, v3, v0, v4}, Lcom/join/mgps/adapter/n;->e(Lcom/join/mgps/adapter/n$a;Ljava/lang/Boolean;Ljava/lang/Boolean;)V

    .line 614
    .line 615
    .line 616
    goto/16 :goto_7

    .line 617
    .line 618
    :cond_5
    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 619
    .line 620
    invoke-virtual {v1, v3, v0, v0}, Lcom/join/mgps/adapter/n;->e(Lcom/join/mgps/adapter/n$a;Ljava/lang/Boolean;Ljava/lang/Boolean;)V

    .line 621
    .line 622
    .line 623
    goto/16 :goto_7

    .line 624
    .line 625
    :cond_6
    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 626
    .line 627
    invoke-virtual {v1, v3, v0, v0}, Lcom/join/mgps/adapter/n;->e(Lcom/join/mgps/adapter/n$a;Ljava/lang/Boolean;Ljava/lang/Boolean;)V

    .line 628
    .line 629
    .line 630
    :try_start_2
    invoke-virtual {v6}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getSize()J

    .line 631
    .line 632
    .line 633
    move-result-wide v4

    .line 634
    cmp-long v0, v4, v9

    .line 635
    .line 636
    if-nez v0, :cond_7

    .line 637
    .line 638
    iget-object v0, v3, Lcom/join/mgps/adapter/n$a;->i:Landroid/widget/TextView;

    .line 639
    .line 640
    new-instance v4, Ljava/lang/StringBuilder;

    .line 641
    .line 642
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 643
    .line 644
    .line 645
    invoke-virtual {v6}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getCurrentSize()J

    .line 646
    .line 647
    .line 648
    move-result-wide v8

    .line 649
    invoke-static {v8, v9}, Lcom/join/mgps/Util/UtilsMy;->c(J)Ljava/lang/String;

    .line 650
    .line 651
    .line 652
    move-result-object v5

    .line 653
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 654
    .line 655
    .line 656
    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 657
    .line 658
    .line 659
    invoke-static {v11, v12}, Lcom/join/mgps/Util/UtilsMy;->c(J)Ljava/lang/String;

    .line 660
    .line 661
    .line 662
    move-result-object v5

    .line 663
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 664
    .line 665
    .line 666
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 667
    .line 668
    .line 669
    move-result-object v4

    .line 670
    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 671
    .line 672
    .line 673
    goto :goto_4

    .line 674
    :cond_7
    iget-object v0, v3, Lcom/join/mgps/adapter/n$a;->i:Landroid/widget/TextView;

    .line 675
    .line 676
    new-instance v4, Ljava/lang/StringBuilder;

    .line 677
    .line 678
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 679
    .line 680
    .line 681
    invoke-virtual {v6}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getCurrentSize()J

    .line 682
    .line 683
    .line 684
    move-result-wide v8

    .line 685
    invoke-static {v8, v9}, Lcom/join/mgps/Util/UtilsMy;->c(J)Ljava/lang/String;

    .line 686
    .line 687
    .line 688
    move-result-object v5

    .line 689
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 690
    .line 691
    .line 692
    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 693
    .line 694
    .line 695
    invoke-static {v11, v12}, Lcom/join/mgps/Util/UtilsMy;->c(J)Ljava/lang/String;

    .line 696
    .line 697
    .line 698
    move-result-object v5

    .line 699
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 700
    .line 701
    .line 702
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 703
    .line 704
    .line 705
    move-result-object v4

    .line 706
    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 707
    .line 708
    .line 709
    :goto_4
    iget-object v0, v3, Lcom/join/mgps/adapter/n$a;->k:Landroid/widget/ProgressBar;

    .line 710
    .line 711
    invoke-virtual {v6}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getProgress()J

    .line 712
    .line 713
    .line 714
    move-result-wide v4

    .line 715
    long-to-int v5, v4

    .line 716
    invoke-virtual {v0, v5}, Landroid/widget/ProgressBar;->setProgress(I)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    .line 717
    .line 718
    .line 719
    goto :goto_5

    .line 720
    :catch_2
    move-exception v0

    .line 721
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 722
    .line 723
    .line 724
    :goto_5
    iget-object v0, v3, Lcom/join/mgps/adapter/n$a;->j:Landroid/widget/TextView;

    .line 725
    .line 726
    const-string v3, "\u6682\u505c\u4e2d"

    .line 727
    .line 728
    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 729
    .line 730
    .line 731
    goto/16 :goto_7

    .line 732
    .line 733
    :cond_8
    invoke-static {v6}, Lcom/join/mgps/Util/UtilsMy;->U4(Lcom/github/snowdream/android/app/downloader/DownloadTask;)V

    .line 734
    .line 735
    .line 736
    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 737
    .line 738
    invoke-virtual {v1, v3, v0, v0}, Lcom/join/mgps/adapter/n;->e(Lcom/join/mgps/adapter/n$a;Ljava/lang/Boolean;Ljava/lang/Boolean;)V

    .line 739
    .line 740
    .line 741
    invoke-virtual {v6}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getSize()J

    .line 742
    .line 743
    .line 744
    move-result-wide v4

    .line 745
    cmp-long v0, v4, v9

    .line 746
    .line 747
    if-nez v0, :cond_9

    .line 748
    .line 749
    iget-object v0, v3, Lcom/join/mgps/adapter/n$a;->i:Landroid/widget/TextView;

    .line 750
    .line 751
    new-instance v4, Ljava/lang/StringBuilder;

    .line 752
    .line 753
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 754
    .line 755
    .line 756
    invoke-virtual {v6}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getCurrentSize()J

    .line 757
    .line 758
    .line 759
    move-result-wide v8

    .line 760
    invoke-static {v8, v9}, Lcom/join/mgps/Util/UtilsMy;->c(J)Ljava/lang/String;

    .line 761
    .line 762
    .line 763
    move-result-object v5

    .line 764
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 765
    .line 766
    .line 767
    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 768
    .line 769
    .line 770
    invoke-static {v11, v12}, Lcom/join/mgps/Util/UtilsMy;->c(J)Ljava/lang/String;

    .line 771
    .line 772
    .line 773
    move-result-object v5

    .line 774
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 775
    .line 776
    .line 777
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 778
    .line 779
    .line 780
    move-result-object v4

    .line 781
    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 782
    .line 783
    .line 784
    goto :goto_6

    .line 785
    :cond_9
    iget-object v0, v3, Lcom/join/mgps/adapter/n$a;->i:Landroid/widget/TextView;

    .line 786
    .line 787
    new-instance v4, Ljava/lang/StringBuilder;

    .line 788
    .line 789
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 790
    .line 791
    .line 792
    invoke-virtual {v6}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getCurrentSize()J

    .line 793
    .line 794
    .line 795
    move-result-wide v8

    .line 796
    invoke-static {v8, v9}, Lcom/join/mgps/Util/UtilsMy;->c(J)Ljava/lang/String;

    .line 797
    .line 798
    .line 799
    move-result-object v5

    .line 800
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 801
    .line 802
    .line 803
    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 804
    .line 805
    .line 806
    invoke-static {v11, v12}, Lcom/join/mgps/Util/UtilsMy;->c(J)Ljava/lang/String;

    .line 807
    .line 808
    .line 809
    move-result-object v5

    .line 810
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 811
    .line 812
    .line 813
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 814
    .line 815
    .line 816
    move-result-object v4

    .line 817
    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 818
    .line 819
    .line 820
    :goto_6
    iget-object v0, v3, Lcom/join/mgps/adapter/n$a;->k:Landroid/widget/ProgressBar;

    .line 821
    .line 822
    invoke-virtual {v6}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getProgress()J

    .line 823
    .line 824
    .line 825
    move-result-wide v4

    .line 826
    long-to-int v5, v4

    .line 827
    invoke-virtual {v0, v5}, Landroid/widget/ProgressBar;->setProgress(I)V

    .line 828
    .line 829
    .line 830
    invoke-virtual {v6}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getSpeed()Ljava/lang/String;

    .line 831
    .line 832
    .line 833
    move-result-object v0

    .line 834
    iget-object v3, v3, Lcom/join/mgps/adapter/n$a;->j:Landroid/widget/TextView;

    .line 835
    .line 836
    new-instance v4, Ljava/lang/StringBuilder;

    .line 837
    .line 838
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 839
    .line 840
    .line 841
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 842
    .line 843
    .line 844
    const-string v0, "/S"

    .line 845
    .line 846
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 847
    .line 848
    .line 849
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 850
    .line 851
    .line 852
    move-result-object v0

    .line 853
    invoke-virtual {v3, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 854
    .line 855
    .line 856
    goto :goto_7

    .line 857
    :cond_a
    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 858
    .line 859
    sget-object v4, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 860
    .line 861
    invoke-virtual {v1, v3, v0, v4}, Lcom/join/mgps/adapter/n;->e(Lcom/join/mgps/adapter/n$a;Ljava/lang/Boolean;Ljava/lang/Boolean;)V

    .line 862
    .line 863
    .line 864
    goto :goto_7

    .line 865
    :cond_b
    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 866
    .line 867
    sget-object v4, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 868
    .line 869
    invoke-virtual {v1, v3, v0, v4}, Lcom/join/mgps/adapter/n;->e(Lcom/join/mgps/adapter/n$a;Ljava/lang/Boolean;Ljava/lang/Boolean;)V

    .line 870
    .line 871
    .line 872
    :goto_7
    return-object v2

    .line 873
    :pswitch_data_0
    .packed-switch 0x9
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
