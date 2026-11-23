.class public Lcom/join/mgps/adapter/v4;
.super Landroid/widget/BaseAdapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/join/mgps/adapter/v4$e;,
        Lcom/join/mgps/adapter/v4$f;,
        Lcom/join/mgps/adapter/v4$g;,
        Lcom/join/mgps/adapter/v4$c;,
        Lcom/join/mgps/adapter/v4$d;,
        Lcom/join/mgps/adapter/v4$a;,
        Lcom/join/mgps/adapter/v4$b;
    }
.end annotation


# instance fields
.field private b:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/join/mgps/dto/PaPaBean;",
            ">;"
        }
    .end annotation
.end field

.field private final c:Landroid/content/Context;

.field private d:I

.field private final e:Landroid/view/View$OnClickListener;

.field private f:Landroid/view/View$OnClickListener;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/util/List;Landroid/view/View$OnClickListener;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "context",
            "datas",
            "listener"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List<",
            "Lcom/join/mgps/dto/PaPaBean;",
            ">;",
            "Landroid/view/View$OnClickListener;",
            ")V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x1

    .line 5
    iput v0, p0, Lcom/join/mgps/adapter/v4;->d:I

    .line 6
    .line 7
    iput-object p1, p0, Lcom/join/mgps/adapter/v4;->c:Landroid/content/Context;

    .line 8
    .line 9
    iput-object p2, p0, Lcom/join/mgps/adapter/v4;->b:Ljava/util/List;

    .line 10
    .line 11
    invoke-static {}, Lcom/join/mgps/dto/PaPaBean;->getTypes()I

    .line 12
    .line 13
    .line 14
    move-result p1

    .line 15
    add-int/2addr p1, v0

    .line 16
    iput p1, p0, Lcom/join/mgps/adapter/v4;->d:I

    .line 17
    .line 18
    iput-object p3, p0, Lcom/join/mgps/adapter/v4;->e:Landroid/view/View$OnClickListener;

    .line 19
    .line 20
    return-void
.end method

.method static synthetic a(Lcom/join/mgps/adapter/v4;)Landroid/view/View$OnClickListener;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/join/mgps/adapter/v4;->f:Landroid/view/View$OnClickListener;

    .line 2
    .line 3
    return-object p0
.end method


# virtual methods
.method public b(Landroid/view/View$OnClickListener;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "listener"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/join/mgps/adapter/v4;->f:Landroid/view/View$OnClickListener;

    .line 2
    .line 3
    return-void
.end method

.method c(Lcom/join/mgps/adapter/v4$d;Ljava/lang/Boolean;Ljava/lang/Boolean;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "viewHolderListItem",
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
    invoke-static {p1}, Lcom/join/mgps/adapter/v4$d;->k(Lcom/join/mgps/adapter/v4$d;)Landroid/widget/LinearLayout;

    .line 11
    .line 12
    .line 13
    move-result-object p2

    .line 14
    invoke-virtual {p2, v1}, Landroid/view/View;->setVisibility(I)V

    .line 15
    .line 16
    .line 17
    iget-object p2, p1, Lcom/join/mgps/adapter/v4$d;->e:Landroid/widget/ProgressBar;

    .line 18
    .line 19
    invoke-virtual {p2, v1}, Landroid/view/View;->setVisibility(I)V

    .line 20
    .line 21
    .line 22
    iget-object p2, p1, Lcom/join/mgps/adapter/v4$d;->d:Landroid/widget/ProgressBar;

    .line 23
    .line 24
    invoke-virtual {p2, v1}, Landroid/view/View;->setVisibility(I)V

    .line 25
    .line 26
    .line 27
    invoke-static {p1}, Lcom/join/mgps/adapter/v4$d;->g(Lcom/join/mgps/adapter/v4$d;)Landroid/widget/TextView;

    .line 28
    .line 29
    .line 30
    move-result-object p1

    .line 31
    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 32
    .line 33
    .line 34
    goto :goto_1

    .line 35
    :cond_0
    invoke-static {p1}, Lcom/join/mgps/adapter/v4$d;->k(Lcom/join/mgps/adapter/v4$d;)Landroid/widget/LinearLayout;

    .line 36
    .line 37
    .line 38
    move-result-object p2

    .line 39
    invoke-virtual {p2, v0}, Landroid/view/View;->setVisibility(I)V

    .line 40
    .line 41
    .line 42
    invoke-virtual {p3}, Ljava/lang/Boolean;->booleanValue()Z

    .line 43
    .line 44
    .line 45
    move-result p2

    .line 46
    if-eqz p2, :cond_1

    .line 47
    .line 48
    iget-object p2, p1, Lcom/join/mgps/adapter/v4$d;->e:Landroid/widget/ProgressBar;

    .line 49
    .line 50
    invoke-virtual {p2, v1}, Landroid/view/View;->setVisibility(I)V

    .line 51
    .line 52
    .line 53
    iget-object p2, p1, Lcom/join/mgps/adapter/v4$d;->d:Landroid/widget/ProgressBar;

    .line 54
    .line 55
    invoke-virtual {p2, v0}, Landroid/view/View;->setVisibility(I)V

    .line 56
    .line 57
    .line 58
    goto :goto_0

    .line 59
    :cond_1
    iget-object p2, p1, Lcom/join/mgps/adapter/v4$d;->d:Landroid/widget/ProgressBar;

    .line 60
    .line 61
    invoke-virtual {p2, v1}, Landroid/view/View;->setVisibility(I)V

    .line 62
    .line 63
    .line 64
    iget-object p2, p1, Lcom/join/mgps/adapter/v4$d;->e:Landroid/widget/ProgressBar;

    .line 65
    .line 66
    invoke-virtual {p2, v0}, Landroid/view/View;->setVisibility(I)V

    .line 67
    .line 68
    .line 69
    :goto_0
    invoke-static {p1}, Lcom/join/mgps/adapter/v4$d;->g(Lcom/join/mgps/adapter/v4$d;)Landroid/widget/TextView;

    .line 70
    .line 71
    .line 72
    move-result-object p1

    .line 73
    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    .line 74
    .line 75
    .line 76
    :goto_1
    return-void
.end method

.method d(Landroid/view/View;Lcom/join/mgps/adapter/v4$c;Lcom/join/mgps/dto/PaPaBean;)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "convertView",
            "contentCollectionViewHolder",
            "paPaBean"
        }
    .end annotation

    .line 1
    invoke-virtual {p3}, Lcom/join/mgps/dto/PaPaBean;->getTypeValue()Ljava/lang/Object;

    .line 2
    .line 3
    .line 4
    move-result-object p3

    .line 5
    check-cast p3, Ljava/util/List;

    .line 6
    .line 7
    const v0, 0x7f0a1206

    .line 8
    .line 9
    .line 10
    invoke-virtual {p1, v0}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    .line 11
    .line 12
    .line 13
    move-result-object v1

    .line 14
    check-cast v1, Lcom/join/mgps/adapter/v4$a;

    .line 15
    .line 16
    if-nez v1, :cond_0

    .line 17
    .line 18
    new-instance v1, Lcom/join/mgps/adapter/v4$a;

    .line 19
    .line 20
    iget-object v2, p0, Lcom/join/mgps/adapter/v4;->c:Landroid/content/Context;

    .line 21
    .line 22
    invoke-direct {v1, p0, v2}, Lcom/join/mgps/adapter/v4$a;-><init>(Lcom/join/mgps/adapter/v4;Landroid/content/Context;)V

    .line 23
    .line 24
    .line 25
    invoke-virtual {p1, v0, v1}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    .line 26
    .line 27
    .line 28
    :cond_0
    iget-object p1, p2, Lcom/join/mgps/adapter/v4$c;->a:Lcom/join/mgps/customview/InterceptEventHorizontalScrollView;

    .line 29
    .line 30
    invoke-virtual {p1, v1}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 31
    .line 32
    .line 33
    invoke-virtual {v1, p3}, Lcom/join/mgps/adapter/v4$a;->setListDatas(Ljava/util/List;)V

    .line 34
    .line 35
    .line 36
    invoke-virtual {v1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    .line 37
    .line 38
    .line 39
    return-void
.end method

.method e(Lcom/join/mgps/adapter/v4$d;Lcom/join/mgps/dto/PaPaBean;)V
    .locals 11
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "viewHolderListItem",
            "paPaBean"
        }
    .end annotation

    .line 1
    invoke-virtual {p2}, Lcom/join/mgps/dto/PaPaBean;->getTypeValue()Ljava/lang/Object;

    .line 2
    .line 3
    .line 4
    move-result-object p2

    .line 5
    check-cast p2, Lcom/join/mgps/dto/AppBean;

    .line 6
    .line 7
    invoke-static {p1}, Lcom/join/mgps/adapter/v4$d;->a(Lcom/join/mgps/adapter/v4$d;)Lcom/facebook/drawee/view/SimpleDraweeView;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    invoke-virtual {p2}, Lcom/join/mgps/dto/AppBean;->getIco_remote()Ljava/lang/String;

    .line 12
    .line 13
    .line 14
    move-result-object v1

    .line 15
    const v2, 0x7f080caf

    .line 16
    .line 17
    .line 18
    invoke-static {v0, v2, v1}, Lcom/join/android/app/common/utils/l;->d(Lcom/facebook/drawee/view/SimpleDraweeView;ILjava/lang/String;)V

    .line 19
    .line 20
    .line 21
    invoke-static {p1}, Lcom/join/mgps/adapter/v4$d;->c(Lcom/join/mgps/adapter/v4$d;)Landroid/widget/ImageView;

    .line 22
    .line 23
    .line 24
    move-result-object v0

    .line 25
    const/16 v1, 0x8

    .line 26
    .line 27
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 28
    .line 29
    .line 30
    invoke-static {p1}, Lcom/join/mgps/adapter/v4$d;->e(Lcom/join/mgps/adapter/v4$d;)Landroid/widget/TextView;

    .line 31
    .line 32
    .line 33
    move-result-object v0

    .line 34
    invoke-virtual {p2}, Lcom/join/mgps/dto/AppBean;->getGame_name()Ljava/lang/String;

    .line 35
    .line 36
    .line 37
    move-result-object v2

    .line 38
    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 39
    .line 40
    .line 41
    invoke-static {p1}, Lcom/join/mgps/adapter/v4$d;->g(Lcom/join/mgps/adapter/v4$d;)Landroid/widget/TextView;

    .line 42
    .line 43
    .line 44
    move-result-object v0

    .line 45
    invoke-virtual {p2}, Lcom/join/mgps/dto/AppBean;->getInfo()Ljava/lang/String;

    .line 46
    .line 47
    .line 48
    move-result-object v2

    .line 49
    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 50
    .line 51
    .line 52
    invoke-virtual {p2}, Lcom/join/mgps/dto/AppBean;->getAppSize()Ljava/lang/String;

    .line 53
    .line 54
    .line 55
    move-result-object v0

    .line 56
    invoke-static {v0}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    .line 57
    .line 58
    .line 59
    move-result-wide v2

    .line 60
    const-wide/high16 v4, 0x4130000000000000L    # 1048576.0

    .line 61
    .line 62
    mul-double v2, v2, v4

    .line 63
    .line 64
    double-to-long v2, v2

    .line 65
    invoke-virtual {p2}, Lcom/join/mgps/dto/AppBean;->getScore()Ljava/lang/String;

    .line 66
    .line 67
    .line 68
    move-result-object v4

    .line 69
    invoke-virtual {p2}, Lcom/join/mgps/dto/AppBean;->getDown_count()I

    .line 70
    .line 71
    .line 72
    move-result v5

    .line 73
    invoke-virtual {p2}, Lcom/join/mgps/dto/AppBean;->getAppSize()Ljava/lang/String;

    .line 74
    .line 75
    .line 76
    move-result-object v6

    .line 77
    invoke-virtual {p2}, Lcom/join/mgps/dto/AppBean;->getSp_tag_info()Lcom/join/mgps/dto/TipNew;

    .line 78
    .line 79
    .line 80
    move-result-object v7

    .line 81
    invoke-virtual {p2}, Lcom/join/mgps/dto/AppBean;->getTag_info()Ljava/util/ArrayList;

    .line 82
    .line 83
    .line 84
    move-result-object v8

    .line 85
    invoke-static {p1}, Lcom/join/mgps/adapter/v4$d;->m(Lcom/join/mgps/adapter/v4$d;)Landroid/widget/LinearLayout;

    .line 86
    .line 87
    .line 88
    move-result-object v9

    .line 89
    iget-object v10, p0, Lcom/join/mgps/adapter/v4;->c:Landroid/content/Context;

    .line 90
    .line 91
    invoke-static/range {v4 .. v10}, Lcom/join/mgps/Util/UtilsMy;->K(Ljava/lang/String;ILjava/lang/String;Lcom/join/mgps/dto/TipNew;Ljava/util/List;Landroid/widget/LinearLayout;Landroid/content/Context;)V

    .line 92
    .line 93
    .line 94
    invoke-virtual {p2}, Lcom/join/kotlin/base/impl/BaseDownloadable;->getDownloadTask()Lcom/github/snowdream/android/app/downloader/DownloadTask;

    .line 95
    .line 96
    .line 97
    move-result-object v0

    .line 98
    invoke-static {p1}, Lcom/join/mgps/adapter/v4$d;->i(Lcom/join/mgps/adapter/v4$d;)Lcom/join/mgps/customview/DownloadNormalView;

    .line 99
    .line 100
    .line 101
    move-result-object v4

    .line 102
    new-instance v5, Lm6/c;

    .line 103
    .line 104
    iget-object v6, p0, Lcom/join/mgps/adapter/v4;->c:Landroid/content/Context;

    .line 105
    .line 106
    invoke-direct {v5, v6, p2}, Lm6/c;-><init>(Landroid/content/Context;Lcom/join/kotlin/base/impl/Downloadable;)V

    .line 107
    .line 108
    .line 109
    invoke-virtual {v4, v5}, Lcom/join/mgps/customview/DownloadNormalView;->f(Lcom/join/mgps/callbacks/f;)V

    .line 110
    .line 111
    .line 112
    invoke-virtual {p2}, Lcom/join/mgps/dto/DownloadPointBase;->isH5Game()Z

    .line 113
    .line 114
    .line 115
    move-result v4

    .line 116
    if-eqz v4, :cond_0

    .line 117
    .line 118
    invoke-static {p1}, Lcom/join/mgps/adapter/v4$d;->m(Lcom/join/mgps/adapter/v4$d;)Landroid/widget/LinearLayout;

    .line 119
    .line 120
    .line 121
    move-result-object p2

    .line 122
    invoke-virtual {p2, v1}, Landroid/view/View;->setVisibility(I)V

    .line 123
    .line 124
    .line 125
    invoke-static {p1}, Lcom/join/mgps/adapter/v4$d;->c(Lcom/join/mgps/adapter/v4$d;)Landroid/widget/ImageView;

    .line 126
    .line 127
    .line 128
    move-result-object p1

    .line 129
    invoke-virtual {p1, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 130
    .line 131
    .line 132
    goto/16 :goto_4

    .line 133
    .line 134
    :cond_0
    if-nez v0, :cond_1

    .line 135
    .line 136
    sget-object p2, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 137
    .line 138
    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 139
    .line 140
    invoke-virtual {p0, p1, p2, v0}, Lcom/join/mgps/adapter/v4;->c(Lcom/join/mgps/adapter/v4$d;Ljava/lang/Boolean;Ljava/lang/Boolean;)V

    .line 141
    .line 142
    .line 143
    goto/16 :goto_4

    .line 144
    .line 145
    :cond_1
    invoke-virtual {v0}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getStatus()I

    .line 146
    .line 147
    .line 148
    move-result v1

    .line 149
    invoke-virtual {p2}, Lcom/join/mgps/dto/AppBean;->getPay_tag_info()Lcom/join/mgps/dto/PayTagInfo;

    .line 150
    .line 151
    .line 152
    move-result-object v4

    .line 153
    invoke-virtual {p2}, Lcom/join/mgps/dto/AppBean;->getCrc_sign_id()Ljava/lang/String;

    .line 154
    .line 155
    .line 156
    move-result-object p2

    .line 157
    invoke-static {v4, p2}, Lcom/join/mgps/Util/UtilsMy;->x0(Lcom/join/mgps/dto/PayTagInfo;Ljava/lang/String;)I

    .line 158
    .line 159
    .line 160
    move-result p2

    .line 161
    const/16 v4, 0x2b

    .line 162
    .line 163
    if-lez p2, :cond_2

    .line 164
    .line 165
    const/16 v1, 0x2b

    .line 166
    .line 167
    :cond_2
    if-eqz v1, :cond_9

    .line 168
    .line 169
    const/16 p2, 0x30

    .line 170
    .line 171
    if-eq v1, p2, :cond_8

    .line 172
    .line 173
    const/4 p2, 0x2

    .line 174
    const-wide/16 v5, 0x0

    .line 175
    .line 176
    const-string v7, "/"

    .line 177
    .line 178
    if-eq v1, p2, :cond_6

    .line 179
    .line 180
    const/4 p2, 0x3

    .line 181
    if-eq v1, p2, :cond_4

    .line 182
    .line 183
    const/4 p2, 0x5

    .line 184
    if-eq v1, p2, :cond_3

    .line 185
    .line 186
    const/4 p2, 0x6

    .line 187
    if-eq v1, p2, :cond_4

    .line 188
    .line 189
    const/4 p2, 0x7

    .line 190
    if-eq v1, p2, :cond_9

    .line 191
    .line 192
    const/16 p2, 0x2a

    .line 193
    .line 194
    if-eq v1, p2, :cond_3

    .line 195
    .line 196
    if-eq v1, v4, :cond_9

    .line 197
    .line 198
    packed-switch v1, :pswitch_data_0

    .line 199
    .line 200
    .line 201
    goto/16 :goto_4

    .line 202
    .line 203
    :pswitch_0
    sget-object p2, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 204
    .line 205
    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 206
    .line 207
    invoke-virtual {p0, p1, p2, v1}, Lcom/join/mgps/adapter/v4;->c(Lcom/join/mgps/adapter/v4$d;Ljava/lang/Boolean;Ljava/lang/Boolean;)V

    .line 208
    .line 209
    .line 210
    iget-object p2, p1, Lcom/join/mgps/adapter/v4$d;->i:Landroid/widget/TextView;

    .line 211
    .line 212
    new-instance v1, Ljava/lang/StringBuilder;

    .line 213
    .line 214
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 215
    .line 216
    .line 217
    invoke-static {v2, v3}, Lcom/join/mgps/Util/UtilsMy;->c(J)Ljava/lang/String;

    .line 218
    .line 219
    .line 220
    move-result-object v4

    .line 221
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 222
    .line 223
    .line 224
    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 225
    .line 226
    .line 227
    invoke-static {v2, v3}, Lcom/join/mgps/Util/UtilsMy;->c(J)Ljava/lang/String;

    .line 228
    .line 229
    .line 230
    move-result-object v2

    .line 231
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 232
    .line 233
    .line 234
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 235
    .line 236
    .line 237
    move-result-object v1

    .line 238
    invoke-virtual {p2, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 239
    .line 240
    .line 241
    iget-object p2, p1, Lcom/join/mgps/adapter/v4$d;->j:Landroid/widget/TextView;

    .line 242
    .line 243
    const-string v1, "\u70b9\u51fb\u91cd\u65b0\u89e3\u538b"

    .line 244
    .line 245
    invoke-virtual {p2, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 246
    .line 247
    .line 248
    iget-object p1, p1, Lcom/join/mgps/adapter/v4$d;->d:Landroid/widget/ProgressBar;

    .line 249
    .line 250
    invoke-virtual {v0}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getProgress()J

    .line 251
    .line 252
    .line 253
    move-result-wide v0

    .line 254
    long-to-int p2, v0

    .line 255
    invoke-virtual {p1, p2}, Landroid/widget/ProgressBar;->setProgress(I)V

    .line 256
    .line 257
    .line 258
    goto/16 :goto_4

    .line 259
    .line 260
    :pswitch_1
    sget-object p2, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 261
    .line 262
    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 263
    .line 264
    invoke-virtual {p0, p1, p2, v1}, Lcom/join/mgps/adapter/v4;->c(Lcom/join/mgps/adapter/v4$d;Ljava/lang/Boolean;Ljava/lang/Boolean;)V

    .line 265
    .line 266
    .line 267
    iget-object p2, p1, Lcom/join/mgps/adapter/v4$d;->i:Landroid/widget/TextView;

    .line 268
    .line 269
    new-instance v1, Ljava/lang/StringBuilder;

    .line 270
    .line 271
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 272
    .line 273
    .line 274
    invoke-static {v2, v3}, Lcom/join/mgps/Util/UtilsMy;->c(J)Ljava/lang/String;

    .line 275
    .line 276
    .line 277
    move-result-object v4

    .line 278
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 279
    .line 280
    .line 281
    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 282
    .line 283
    .line 284
    invoke-static {v2, v3}, Lcom/join/mgps/Util/UtilsMy;->c(J)Ljava/lang/String;

    .line 285
    .line 286
    .line 287
    move-result-object v2

    .line 288
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 289
    .line 290
    .line 291
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 292
    .line 293
    .line 294
    move-result-object v1

    .line 295
    invoke-virtual {p2, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 296
    .line 297
    .line 298
    iget-object p2, p1, Lcom/join/mgps/adapter/v4$d;->j:Landroid/widget/TextView;

    .line 299
    .line 300
    const-string v1, "\u89e3\u538b\u4e2d.."

    .line 301
    .line 302
    invoke-virtual {p2, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 303
    .line 304
    .line 305
    iget-object p1, p1, Lcom/join/mgps/adapter/v4$d;->d:Landroid/widget/ProgressBar;

    .line 306
    .line 307
    invoke-virtual {v0}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getProgress()J

    .line 308
    .line 309
    .line 310
    move-result-wide v0

    .line 311
    long-to-int p2, v0

    .line 312
    invoke-virtual {p1, p2}, Landroid/widget/ProgressBar;->setProgress(I)V

    .line 313
    .line 314
    .line 315
    goto/16 :goto_4

    .line 316
    .line 317
    :pswitch_2
    sget-object p2, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 318
    .line 319
    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 320
    .line 321
    invoke-virtual {p0, p1, p2, v0}, Lcom/join/mgps/adapter/v4;->c(Lcom/join/mgps/adapter/v4$d;Ljava/lang/Boolean;Ljava/lang/Boolean;)V

    .line 322
    .line 323
    .line 324
    goto/16 :goto_4

    .line 325
    .line 326
    :pswitch_3
    sget-object p2, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 327
    .line 328
    invoke-virtual {p0, p1, p2, p2}, Lcom/join/mgps/adapter/v4;->c(Lcom/join/mgps/adapter/v4$d;Ljava/lang/Boolean;Ljava/lang/Boolean;)V

    .line 329
    .line 330
    .line 331
    iget-object p2, p1, Lcom/join/mgps/adapter/v4$d;->i:Landroid/widget/TextView;

    .line 332
    .line 333
    new-instance v1, Ljava/lang/StringBuilder;

    .line 334
    .line 335
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 336
    .line 337
    .line 338
    invoke-virtual {v0}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getCurrentSize()J

    .line 339
    .line 340
    .line 341
    move-result-wide v4

    .line 342
    invoke-static {v4, v5}, Lcom/join/mgps/Util/UtilsMy;->c(J)Ljava/lang/String;

    .line 343
    .line 344
    .line 345
    move-result-object v4

    .line 346
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 347
    .line 348
    .line 349
    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 350
    .line 351
    .line 352
    invoke-static {v2, v3}, Lcom/join/mgps/Util/UtilsMy;->c(J)Ljava/lang/String;

    .line 353
    .line 354
    .line 355
    move-result-object v2

    .line 356
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 357
    .line 358
    .line 359
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 360
    .line 361
    .line 362
    move-result-object v1

    .line 363
    invoke-virtual {p2, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 364
    .line 365
    .line 366
    :try_start_0
    iget-object p2, p1, Lcom/join/mgps/adapter/v4$d;->e:Landroid/widget/ProgressBar;

    .line 367
    .line 368
    invoke-virtual {v0}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getProgress()J

    .line 369
    .line 370
    .line 371
    move-result-wide v0

    .line 372
    long-to-int v1, v0

    .line 373
    invoke-virtual {p2, v1}, Landroid/widget/ProgressBar;->setProgress(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 374
    .line 375
    .line 376
    goto :goto_0

    .line 377
    :catch_0
    move-exception p2

    .line 378
    invoke-virtual {p2}, Ljava/lang/Throwable;->printStackTrace()V

    .line 379
    .line 380
    .line 381
    :goto_0
    iget-object p1, p1, Lcom/join/mgps/adapter/v4$d;->j:Landroid/widget/TextView;

    .line 382
    .line 383
    const-string p2, "\u7b49\u5f85\u4e2d"

    .line 384
    .line 385
    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 386
    .line 387
    .line 388
    goto/16 :goto_4

    .line 389
    .line 390
    :pswitch_4
    sget-object p2, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 391
    .line 392
    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 393
    .line 394
    invoke-virtual {p0, p1, p2, v0}, Lcom/join/mgps/adapter/v4;->c(Lcom/join/mgps/adapter/v4$d;Ljava/lang/Boolean;Ljava/lang/Boolean;)V

    .line 395
    .line 396
    .line 397
    goto/16 :goto_4

    .line 398
    .line 399
    :cond_3
    sget-object p2, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 400
    .line 401
    invoke-virtual {p0, p1, p2, p2}, Lcom/join/mgps/adapter/v4;->c(Lcom/join/mgps/adapter/v4$d;Ljava/lang/Boolean;Ljava/lang/Boolean;)V

    .line 402
    .line 403
    .line 404
    goto/16 :goto_4

    .line 405
    .line 406
    :cond_4
    sget-object p2, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 407
    .line 408
    invoke-virtual {p0, p1, p2, p2}, Lcom/join/mgps/adapter/v4;->c(Lcom/join/mgps/adapter/v4$d;Ljava/lang/Boolean;Ljava/lang/Boolean;)V

    .line 409
    .line 410
    .line 411
    :try_start_1
    invoke-virtual {v0}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getSize()J

    .line 412
    .line 413
    .line 414
    move-result-wide v8

    .line 415
    cmp-long p2, v8, v5

    .line 416
    .line 417
    if-nez p2, :cond_5

    .line 418
    .line 419
    iget-object p2, p1, Lcom/join/mgps/adapter/v4$d;->i:Landroid/widget/TextView;

    .line 420
    .line 421
    new-instance v1, Ljava/lang/StringBuilder;

    .line 422
    .line 423
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 424
    .line 425
    .line 426
    invoke-virtual {v0}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getCurrentSize()J

    .line 427
    .line 428
    .line 429
    move-result-wide v4

    .line 430
    invoke-static {v4, v5}, Lcom/join/mgps/Util/UtilsMy;->c(J)Ljava/lang/String;

    .line 431
    .line 432
    .line 433
    move-result-object v4

    .line 434
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 435
    .line 436
    .line 437
    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 438
    .line 439
    .line 440
    invoke-static {v2, v3}, Lcom/join/mgps/Util/UtilsMy;->c(J)Ljava/lang/String;

    .line 441
    .line 442
    .line 443
    move-result-object v2

    .line 444
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 445
    .line 446
    .line 447
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 448
    .line 449
    .line 450
    move-result-object v1

    .line 451
    invoke-virtual {p2, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 452
    .line 453
    .line 454
    goto :goto_1

    .line 455
    :cond_5
    iget-object p2, p1, Lcom/join/mgps/adapter/v4$d;->i:Landroid/widget/TextView;

    .line 456
    .line 457
    new-instance v1, Ljava/lang/StringBuilder;

    .line 458
    .line 459
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 460
    .line 461
    .line 462
    invoke-virtual {v0}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getCurrentSize()J

    .line 463
    .line 464
    .line 465
    move-result-wide v4

    .line 466
    invoke-static {v4, v5}, Lcom/join/mgps/Util/UtilsMy;->c(J)Ljava/lang/String;

    .line 467
    .line 468
    .line 469
    move-result-object v4

    .line 470
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 471
    .line 472
    .line 473
    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 474
    .line 475
    .line 476
    invoke-static {v2, v3}, Lcom/join/mgps/Util/UtilsMy;->c(J)Ljava/lang/String;

    .line 477
    .line 478
    .line 479
    move-result-object v2

    .line 480
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 481
    .line 482
    .line 483
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 484
    .line 485
    .line 486
    move-result-object v1

    .line 487
    invoke-virtual {p2, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 488
    .line 489
    .line 490
    :goto_1
    iget-object p2, p1, Lcom/join/mgps/adapter/v4$d;->e:Landroid/widget/ProgressBar;

    .line 491
    .line 492
    invoke-virtual {v0}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getProgress()J

    .line 493
    .line 494
    .line 495
    move-result-wide v0

    .line 496
    long-to-int v1, v0

    .line 497
    invoke-virtual {p2, v1}, Landroid/widget/ProgressBar;->setProgress(I)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 498
    .line 499
    .line 500
    goto :goto_2

    .line 501
    :catch_1
    move-exception p2

    .line 502
    invoke-virtual {p2}, Ljava/lang/Throwable;->printStackTrace()V

    .line 503
    .line 504
    .line 505
    :goto_2
    iget-object p1, p1, Lcom/join/mgps/adapter/v4$d;->j:Landroid/widget/TextView;

    .line 506
    .line 507
    const-string p2, "\u6682\u505c\u4e2d"

    .line 508
    .line 509
    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 510
    .line 511
    .line 512
    goto/16 :goto_4

    .line 513
    .line 514
    :cond_6
    invoke-static {v0}, Lcom/join/mgps/Util/UtilsMy;->U4(Lcom/github/snowdream/android/app/downloader/DownloadTask;)V

    .line 515
    .line 516
    .line 517
    sget-object p2, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 518
    .line 519
    invoke-virtual {p0, p1, p2, p2}, Lcom/join/mgps/adapter/v4;->c(Lcom/join/mgps/adapter/v4$d;Ljava/lang/Boolean;Ljava/lang/Boolean;)V

    .line 520
    .line 521
    .line 522
    invoke-virtual {v0}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getSize()J

    .line 523
    .line 524
    .line 525
    move-result-wide v8

    .line 526
    cmp-long p2, v8, v5

    .line 527
    .line 528
    if-nez p2, :cond_7

    .line 529
    .line 530
    iget-object p2, p1, Lcom/join/mgps/adapter/v4$d;->i:Landroid/widget/TextView;

    .line 531
    .line 532
    new-instance v1, Ljava/lang/StringBuilder;

    .line 533
    .line 534
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 535
    .line 536
    .line 537
    invoke-virtual {v0}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getCurrentSize()J

    .line 538
    .line 539
    .line 540
    move-result-wide v4

    .line 541
    invoke-static {v4, v5}, Lcom/join/mgps/Util/UtilsMy;->c(J)Ljava/lang/String;

    .line 542
    .line 543
    .line 544
    move-result-object v4

    .line 545
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 546
    .line 547
    .line 548
    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 549
    .line 550
    .line 551
    invoke-static {v2, v3}, Lcom/join/mgps/Util/UtilsMy;->c(J)Ljava/lang/String;

    .line 552
    .line 553
    .line 554
    move-result-object v2

    .line 555
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 556
    .line 557
    .line 558
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 559
    .line 560
    .line 561
    move-result-object v1

    .line 562
    invoke-virtual {p2, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 563
    .line 564
    .line 565
    goto :goto_3

    .line 566
    :cond_7
    iget-object p2, p1, Lcom/join/mgps/adapter/v4$d;->i:Landroid/widget/TextView;

    .line 567
    .line 568
    new-instance v1, Ljava/lang/StringBuilder;

    .line 569
    .line 570
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 571
    .line 572
    .line 573
    invoke-virtual {v0}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getCurrentSize()J

    .line 574
    .line 575
    .line 576
    move-result-wide v4

    .line 577
    invoke-static {v4, v5}, Lcom/join/mgps/Util/UtilsMy;->c(J)Ljava/lang/String;

    .line 578
    .line 579
    .line 580
    move-result-object v4

    .line 581
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 582
    .line 583
    .line 584
    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 585
    .line 586
    .line 587
    invoke-static {v2, v3}, Lcom/join/mgps/Util/UtilsMy;->c(J)Ljava/lang/String;

    .line 588
    .line 589
    .line 590
    move-result-object v2

    .line 591
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 592
    .line 593
    .line 594
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 595
    .line 596
    .line 597
    move-result-object v1

    .line 598
    invoke-virtual {p2, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 599
    .line 600
    .line 601
    :goto_3
    iget-object p2, p1, Lcom/join/mgps/adapter/v4$d;->e:Landroid/widget/ProgressBar;

    .line 602
    .line 603
    invoke-virtual {v0}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getProgress()J

    .line 604
    .line 605
    .line 606
    move-result-wide v1

    .line 607
    long-to-int v2, v1

    .line 608
    invoke-virtual {p2, v2}, Landroid/widget/ProgressBar;->setProgress(I)V

    .line 609
    .line 610
    .line 611
    invoke-virtual {v0}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getSpeed()Ljava/lang/String;

    .line 612
    .line 613
    .line 614
    move-result-object p2

    .line 615
    iget-object p1, p1, Lcom/join/mgps/adapter/v4$d;->j:Landroid/widget/TextView;

    .line 616
    .line 617
    new-instance v0, Ljava/lang/StringBuilder;

    .line 618
    .line 619
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 620
    .line 621
    .line 622
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 623
    .line 624
    .line 625
    const-string p2, "/S"

    .line 626
    .line 627
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 628
    .line 629
    .line 630
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 631
    .line 632
    .line 633
    move-result-object p2

    .line 634
    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 635
    .line 636
    .line 637
    goto :goto_4

    .line 638
    :cond_8
    sget-object p2, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 639
    .line 640
    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 641
    .line 642
    invoke-virtual {p0, p1, p2, v0}, Lcom/join/mgps/adapter/v4;->c(Lcom/join/mgps/adapter/v4$d;Ljava/lang/Boolean;Ljava/lang/Boolean;)V

    .line 643
    .line 644
    .line 645
    goto :goto_4

    .line 646
    :cond_9
    sget-object p2, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 647
    .line 648
    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 649
    .line 650
    invoke-virtual {p0, p1, p2, v0}, Lcom/join/mgps/adapter/v4;->c(Lcom/join/mgps/adapter/v4$d;Ljava/lang/Boolean;Ljava/lang/Boolean;)V

    .line 651
    .line 652
    .line 653
    :goto_4
    return-void

    .line 654
    nop

    .line 655
    :pswitch_data_0
    .packed-switch 0x9
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method f(Lcom/join/mgps/adapter/v4$e;Lcom/join/mgps/dto/PaPaBean;)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "headerImageViewHolder",
            "paPaBean"
        }
    .end annotation

    .line 1
    invoke-virtual {p2}, Lcom/join/mgps/dto/PaPaBean;->getTypeValue()Ljava/lang/Object;

    .line 2
    .line 3
    .line 4
    move-result-object p2

    .line 5
    check-cast p2, Ljava/util/List;

    .line 6
    .line 7
    if-eqz p2, :cond_3

    .line 8
    .line 9
    invoke-interface {p2}, Ljava/util/List;->size()I

    .line 10
    .line 11
    .line 12
    move-result v0

    .line 13
    if-nez v0, :cond_0

    .line 14
    .line 15
    goto :goto_0

    .line 16
    :cond_0
    const/4 v0, 0x0

    .line 17
    invoke-interface {p2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 18
    .line 19
    .line 20
    move-result-object v1

    .line 21
    check-cast v1, Lcom/join/mgps/dto/GameHeadAd;

    .line 22
    .line 23
    invoke-virtual {v1}, Lcom/join/mgps/dto/GameHeadAd;->getMain()Lcom/join/mgps/dto/GameHeadAd$GameMain;

    .line 24
    .line 25
    .line 26
    move-result-object v1

    .line 27
    invoke-virtual {v1}, Lcom/join/mgps/dto/GameHeadAd$GameMain;->getAd_switch()I

    .line 28
    .line 29
    .line 30
    move-result v1

    .line 31
    if-nez v1, :cond_1

    .line 32
    .line 33
    iget-object p1, p1, Lcom/join/mgps/adapter/v4$e;->a:Lcom/facebook/drawee/view/SimpleDraweeView;

    .line 34
    .line 35
    const/16 p2, 0x8

    .line 36
    .line 37
    invoke-virtual {p1, p2}, Landroid/view/View;->setVisibility(I)V

    .line 38
    .line 39
    .line 40
    goto :goto_0

    .line 41
    :cond_1
    iget-object v1, p1, Lcom/join/mgps/adapter/v4$e;->a:Lcom/facebook/drawee/view/SimpleDraweeView;

    .line 42
    .line 43
    invoke-virtual {v1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 44
    .line 45
    .line 46
    invoke-interface {p2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 47
    .line 48
    .line 49
    move-result-object v1

    .line 50
    check-cast v1, Lcom/join/mgps/dto/GameHeadAd;

    .line 51
    .line 52
    invoke-virtual {v1}, Lcom/join/mgps/dto/GameHeadAd;->getSub()Ljava/util/List;

    .line 53
    .line 54
    .line 55
    move-result-object v1

    .line 56
    if-eqz v1, :cond_2

    .line 57
    .line 58
    invoke-interface {p2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 59
    .line 60
    .line 61
    move-result-object v1

    .line 62
    check-cast v1, Lcom/join/mgps/dto/GameHeadAd;

    .line 63
    .line 64
    invoke-virtual {v1}, Lcom/join/mgps/dto/GameHeadAd;->getSub()Ljava/util/List;

    .line 65
    .line 66
    .line 67
    move-result-object v1

    .line 68
    invoke-interface {v1}, Ljava/util/List;->size()I

    .line 69
    .line 70
    .line 71
    move-result v1

    .line 72
    if-lez v1, :cond_2

    .line 73
    .line 74
    invoke-interface {p2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 75
    .line 76
    .line 77
    move-result-object v1

    .line 78
    check-cast v1, Lcom/join/mgps/dto/GameHeadAd;

    .line 79
    .line 80
    invoke-virtual {v1}, Lcom/join/mgps/dto/GameHeadAd;->getSub()Ljava/util/List;

    .line 81
    .line 82
    .line 83
    move-result-object v1

    .line 84
    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 85
    .line 86
    .line 87
    move-result-object v1

    .line 88
    check-cast v1, Lcom/join/mgps/dto/GameHeadAd$SubInfo;

    .line 89
    .line 90
    iget-object v2, p1, Lcom/join/mgps/adapter/v4$e;->a:Lcom/facebook/drawee/view/SimpleDraweeView;

    .line 91
    .line 92
    invoke-virtual {v2, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 93
    .line 94
    .line 95
    iget-object v1, p1, Lcom/join/mgps/adapter/v4$e;->a:Lcom/facebook/drawee/view/SimpleDraweeView;

    .line 96
    .line 97
    iget-object v2, p0, Lcom/join/mgps/adapter/v4;->f:Landroid/view/View$OnClickListener;

    .line 98
    .line 99
    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 100
    .line 101
    .line 102
    :cond_2
    iget-object p1, p1, Lcom/join/mgps/adapter/v4$e;->a:Lcom/facebook/drawee/view/SimpleDraweeView;

    .line 103
    .line 104
    invoke-interface {p2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 105
    .line 106
    .line 107
    move-result-object p2

    .line 108
    check-cast p2, Lcom/join/mgps/dto/GameHeadAd;

    .line 109
    .line 110
    invoke-virtual {p2}, Lcom/join/mgps/dto/GameHeadAd;->getMain()Lcom/join/mgps/dto/GameHeadAd$GameMain;

    .line 111
    .line 112
    .line 113
    move-result-object p2

    .line 114
    invoke-virtual {p2}, Lcom/join/mgps/dto/GameHeadAd$GameMain;->getPic_remote()Ljava/lang/String;

    .line 115
    .line 116
    .line 117
    move-result-object p2

    .line 118
    invoke-static {p1, p2}, Lcom/join/android/app/common/utils/l;->h(Lcom/facebook/drawee/view/SimpleDraweeView;Ljava/lang/String;)V

    .line 119
    .line 120
    .line 121
    :cond_3
    :goto_0
    return-void
.end method

.method g(Lcom/join/mgps/adapter/v4$f;Lcom/join/mgps/dto/PaPaBean;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "titleCollectionViewHolder",
            "paPaBean"
        }
    .end annotation

    .line 1
    invoke-virtual {p2}, Lcom/join/mgps/dto/PaPaBean;->getTypeValue()Ljava/lang/Object;

    .line 2
    .line 3
    .line 4
    move-result-object p2

    .line 5
    check-cast p2, Lcom/join/mgps/dto/CollectionInfo;

    .line 6
    .line 7
    iget-object v0, p1, Lcom/join/mgps/adapter/v4$f;->a:Landroid/widget/TextView;

    .line 8
    .line 9
    invoke-virtual {p2}, Lcom/join/mgps/dto/CollectionInfo;->getTitle()Ljava/lang/String;

    .line 10
    .line 11
    .line 12
    move-result-object v1

    .line 13
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 14
    .line 15
    .line 16
    iget-object v0, p1, Lcom/join/mgps/adapter/v4$f;->b:Landroid/widget/TextView;

    .line 17
    .line 18
    invoke-virtual {v0, p2}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 19
    .line 20
    .line 21
    iget-object p1, p1, Lcom/join/mgps/adapter/v4$f;->b:Landroid/widget/TextView;

    .line 22
    .line 23
    iget-object p2, p0, Lcom/join/mgps/adapter/v4;->f:Landroid/view/View$OnClickListener;

    .line 24
    .line 25
    invoke-virtual {p1, p2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 26
    .line 27
    .line 28
    return-void
.end method

.method public getCount()I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/adapter/v4;->b:Ljava/util/List;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    const/4 v0, 0x0

    .line 6
    goto :goto_0

    .line 7
    :cond_0
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    :goto_0
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
    iget-object v0, p0, Lcom/join/mgps/adapter/v4;->b:Ljava/util/List;

    .line 2
    .line 3
    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
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
    iget-object v0, p0, Lcom/join/mgps/adapter/v4;->b:Ljava/util/List;

    .line 2
    .line 3
    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    check-cast p1, Lcom/join/mgps/dto/PaPaBean;

    .line 8
    .line 9
    invoke-virtual {p1}, Lcom/join/mgps/dto/PaPaBean;->getType()I

    .line 10
    .line 11
    .line 12
    move-result p1

    .line 13
    return p1
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 6
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
    invoke-virtual {p0, p1}, Lcom/join/mgps/adapter/v4;->getItemViewType(I)I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    const/4 v1, 0x0

    .line 6
    if-nez p2, :cond_5

    .line 7
    .line 8
    sget-object v2, Lcom/join/mgps/dto/PaPaBean$PaPaBeanTypes;->TYPE_IMAGE_HEADER:Lcom/join/mgps/dto/PaPaBean$PaPaBeanTypes;

    .line 9
    .line 10
    invoke-virtual {v2}, Lcom/join/mgps/dto/PaPaBean$PaPaBeanTypes;->value()I

    .line 11
    .line 12
    .line 13
    move-result v2

    .line 14
    if-ne v0, v2, :cond_1

    .line 15
    .line 16
    new-instance p2, Lcom/join/mgps/adapter/v4$e;

    .line 17
    .line 18
    invoke-direct {p2}, Lcom/join/mgps/adapter/v4$e;-><init>()V

    .line 19
    .line 20
    .line 21
    invoke-virtual {p3}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 22
    .line 23
    .line 24
    move-result-object p3

    .line 25
    invoke-static {p3}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    .line 26
    .line 27
    .line 28
    move-result-object p3

    .line 29
    const v2, 0x7f0d046b

    .line 30
    .line 31
    .line 32
    invoke-virtual {p3, v2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 33
    .line 34
    .line 35
    move-result-object p3

    .line 36
    iget-object v2, p0, Lcom/join/mgps/adapter/v4;->b:Ljava/util/List;

    .line 37
    .line 38
    invoke-interface {v2, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 39
    .line 40
    .line 41
    move-result-object v2

    .line 42
    check-cast v2, Lcom/join/mgps/dto/PaPaBean;

    .line 43
    .line 44
    const v3, 0x7f0a06de

    .line 45
    .line 46
    .line 47
    invoke-virtual {p3, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 48
    .line 49
    .line 50
    move-result-object v3

    .line 51
    check-cast v3, Lcom/facebook/drawee/view/SimpleDraweeView;

    .line 52
    .line 53
    iput-object v3, p2, Lcom/join/mgps/adapter/v4$e;->a:Lcom/facebook/drawee/view/SimpleDraweeView;

    .line 54
    .line 55
    invoke-virtual {v2}, Lcom/join/mgps/dto/PaPaBean;->getImageHeaderParams()Ljava/util/HashMap;

    .line 56
    .line 57
    .line 58
    move-result-object v3

    .line 59
    if-eqz v3, :cond_0

    .line 60
    .line 61
    invoke-virtual {v2}, Lcom/join/mgps/dto/PaPaBean;->getImageHeaderParams()Ljava/util/HashMap;

    .line 62
    .line 63
    .line 64
    move-result-object v2

    .line 65
    const-string v3, "key_image_header_height"

    .line 66
    .line 67
    invoke-virtual {v2, v3}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    .line 68
    .line 69
    .line 70
    move-result v4

    .line 71
    if-eqz v4, :cond_0

    .line 72
    .line 73
    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 74
    .line 75
    .line 76
    move-result-object v2

    .line 77
    check-cast v2, Ljava/lang/Integer;

    .line 78
    .line 79
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    .line 80
    .line 81
    .line 82
    move-result v2

    .line 83
    new-instance v3, Landroid/widget/LinearLayout$LayoutParams;

    .line 84
    .line 85
    iget-object v4, p0, Lcom/join/mgps/adapter/v4;->c:Landroid/content/Context;

    .line 86
    .line 87
    int-to-float v2, v2

    .line 88
    invoke-static {v4, v2}, Lcom/join/mgps/Util/i0;->a(Landroid/content/Context;F)I

    .line 89
    .line 90
    .line 91
    move-result v2

    .line 92
    const/4 v4, -0x1

    .line 93
    invoke-direct {v3, v4, v2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 94
    .line 95
    .line 96
    iget-object v2, p2, Lcom/join/mgps/adapter/v4$e;->a:Lcom/facebook/drawee/view/SimpleDraweeView;

    .line 97
    .line 98
    invoke-virtual {v2, v3}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 99
    .line 100
    .line 101
    :cond_0
    invoke-virtual {p3, p2}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 102
    .line 103
    .line 104
    move-object v2, v1

    .line 105
    move-object v3, v2

    .line 106
    move-object v4, v3

    .line 107
    move-object v1, p2

    .line 108
    move-object p2, p3

    .line 109
    goto/16 :goto_0

    .line 110
    .line 111
    :cond_1
    sget-object v2, Lcom/join/mgps/dto/PaPaBean$PaPaBeanTypes;->TYPE_TITLE_COLLECTION:Lcom/join/mgps/dto/PaPaBean$PaPaBeanTypes;

    .line 112
    .line 113
    invoke-virtual {v2}, Lcom/join/mgps/dto/PaPaBean$PaPaBeanTypes;->value()I

    .line 114
    .line 115
    .line 116
    move-result v2

    .line 117
    if-ne v0, v2, :cond_2

    .line 118
    .line 119
    invoke-virtual {p3}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 120
    .line 121
    .line 122
    move-result-object p2

    .line 123
    invoke-static {p2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    .line 124
    .line 125
    .line 126
    move-result-object p2

    .line 127
    const p3, 0x7f0d046f

    .line 128
    .line 129
    .line 130
    invoke-virtual {p2, p3, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 131
    .line 132
    .line 133
    move-result-object p2

    .line 134
    new-instance p3, Lcom/join/mgps/adapter/v4$f;

    .line 135
    .line 136
    invoke-direct {p3}, Lcom/join/mgps/adapter/v4$f;-><init>()V

    .line 137
    .line 138
    .line 139
    const v2, 0x7f0a1916

    .line 140
    .line 141
    .line 142
    invoke-virtual {p2, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 143
    .line 144
    .line 145
    move-result-object v2

    .line 146
    check-cast v2, Landroid/widget/TextView;

    .line 147
    .line 148
    iput-object v2, p3, Lcom/join/mgps/adapter/v4$f;->b:Landroid/widget/TextView;

    .line 149
    .line 150
    const v2, 0x7f0a1a48

    .line 151
    .line 152
    .line 153
    invoke-virtual {p2, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 154
    .line 155
    .line 156
    move-result-object v2

    .line 157
    check-cast v2, Landroid/widget/TextView;

    .line 158
    .line 159
    iput-object v2, p3, Lcom/join/mgps/adapter/v4$f;->a:Landroid/widget/TextView;

    .line 160
    .line 161
    invoke-virtual {p2, p3}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 162
    .line 163
    .line 164
    goto/16 :goto_1

    .line 165
    .line 166
    :cond_2
    sget-object v2, Lcom/join/mgps/dto/PaPaBean$PaPaBeanTypes;->TYPE_GAMEFACTORY_LIST:Lcom/join/mgps/dto/PaPaBean$PaPaBeanTypes;

    .line 167
    .line 168
    invoke-virtual {v2}, Lcom/join/mgps/dto/PaPaBean$PaPaBeanTypes;->value()I

    .line 169
    .line 170
    .line 171
    move-result v2

    .line 172
    if-ne v0, v2, :cond_3

    .line 173
    .line 174
    invoke-virtual {p3}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 175
    .line 176
    .line 177
    move-result-object p2

    .line 178
    invoke-static {p2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    .line 179
    .line 180
    .line 181
    move-result-object p2

    .line 182
    const p3, 0x7f0d0437

    .line 183
    .line 184
    .line 185
    invoke-virtual {p2, p3, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 186
    .line 187
    .line 188
    move-result-object p2

    .line 189
    new-instance p3, Lcom/join/mgps/adapter/v4$g;

    .line 190
    .line 191
    invoke-direct {p3}, Lcom/join/mgps/adapter/v4$g;-><init>()V

    .line 192
    .line 193
    .line 194
    const v2, 0x7f0a0700

    .line 195
    .line 196
    .line 197
    invoke-virtual {p2, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 198
    .line 199
    .line 200
    move-result-object v2

    .line 201
    check-cast v2, Lcom/facebook/drawee/view/SimpleDraweeView;

    .line 202
    .line 203
    iput-object v2, p3, Lcom/join/mgps/adapter/v4$g;->a:Lcom/facebook/drawee/view/SimpleDraweeView;

    .line 204
    .line 205
    const v2, 0x7f0a19d3

    .line 206
    .line 207
    .line 208
    invoke-virtual {p2, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 209
    .line 210
    .line 211
    move-result-object v2

    .line 212
    check-cast v2, Landroid/widget/TextView;

    .line 213
    .line 214
    iput-object v2, p3, Lcom/join/mgps/adapter/v4$g;->b:Landroid/widget/TextView;

    .line 215
    .line 216
    const v2, 0x7f0a194f

    .line 217
    .line 218
    .line 219
    invoke-virtual {p2, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 220
    .line 221
    .line 222
    move-result-object v2

    .line 223
    check-cast v2, Landroid/widget/TextView;

    .line 224
    .line 225
    iput-object v2, p3, Lcom/join/mgps/adapter/v4$g;->c:Landroid/widget/TextView;

    .line 226
    .line 227
    invoke-virtual {p2, p3}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 228
    .line 229
    .line 230
    goto/16 :goto_4

    .line 231
    .line 232
    :cond_3
    sget-object v2, Lcom/join/mgps/dto/PaPaBean$PaPaBeanTypes;->TYPE_CONTENT_COLLECTION:Lcom/join/mgps/dto/PaPaBean$PaPaBeanTypes;

    .line 233
    .line 234
    invoke-virtual {v2}, Lcom/join/mgps/dto/PaPaBean$PaPaBeanTypes;->value()I

    .line 235
    .line 236
    .line 237
    move-result v2

    .line 238
    if-ne v0, v2, :cond_4

    .line 239
    .line 240
    invoke-virtual {p3}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 241
    .line 242
    .line 243
    move-result-object p2

    .line 244
    invoke-static {p2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    .line 245
    .line 246
    .line 247
    move-result-object p2

    .line 248
    const p3, 0x7f0d046e

    .line 249
    .line 250
    .line 251
    invoke-virtual {p2, p3, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 252
    .line 253
    .line 254
    move-result-object p2

    .line 255
    new-instance p3, Lcom/join/mgps/adapter/v4$c;

    .line 256
    .line 257
    invoke-direct {p3}, Lcom/join/mgps/adapter/v4$c;-><init>()V

    .line 258
    .line 259
    .line 260
    const v2, 0x7f0a0fdc

    .line 261
    .line 262
    .line 263
    invoke-virtual {p2, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 264
    .line 265
    .line 266
    move-result-object v2

    .line 267
    check-cast v2, Lcom/join/mgps/customview/InterceptEventHorizontalScrollView;

    .line 268
    .line 269
    iput-object v2, p3, Lcom/join/mgps/adapter/v4$c;->a:Lcom/join/mgps/customview/InterceptEventHorizontalScrollView;

    .line 270
    .line 271
    invoke-virtual {p2, p3}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 272
    .line 273
    .line 274
    goto/16 :goto_5

    .line 275
    .line 276
    :cond_4
    sget-object v2, Lcom/join/mgps/dto/PaPaBean$PaPaBeanTypes;->TYPE_CONTENT_GAMEINFO:Lcom/join/mgps/dto/PaPaBean$PaPaBeanTypes;

    .line 277
    .line 278
    invoke-virtual {v2}, Lcom/join/mgps/dto/PaPaBean$PaPaBeanTypes;->value()I

    .line 279
    .line 280
    .line 281
    move-result v2

    .line 282
    if-ne v0, v2, :cond_a

    .line 283
    .line 284
    invoke-virtual {p3}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 285
    .line 286
    .line 287
    move-result-object p2

    .line 288
    invoke-static {p2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    .line 289
    .line 290
    .line 291
    move-result-object p2

    .line 292
    const p3, 0x7f0d0469

    .line 293
    .line 294
    .line 295
    invoke-virtual {p2, p3, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 296
    .line 297
    .line 298
    move-result-object p2

    .line 299
    new-instance p3, Lcom/join/mgps/adapter/v4$d;

    .line 300
    .line 301
    invoke-direct {p3, p0}, Lcom/join/mgps/adapter/v4$d;-><init>(Lcom/join/mgps/adapter/v4;)V

    .line 302
    .line 303
    .line 304
    const v2, 0x7f0a1044

    .line 305
    .line 306
    .line 307
    invoke-virtual {p2, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 308
    .line 309
    .line 310
    move-result-object v2

    .line 311
    check-cast v2, Lcom/facebook/drawee/view/SimpleDraweeView;

    .line 312
    .line 313
    invoke-static {p3, v2}, Lcom/join/mgps/adapter/v4$d;->b(Lcom/join/mgps/adapter/v4$d;Lcom/facebook/drawee/view/SimpleDraweeView;)Lcom/facebook/drawee/view/SimpleDraweeView;

    .line 314
    .line 315
    .line 316
    const v2, 0x7f0a0790

    .line 317
    .line 318
    .line 319
    invoke-virtual {p2, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 320
    .line 321
    .line 322
    move-result-object v2

    .line 323
    check-cast v2, Landroid/widget/ImageView;

    .line 324
    .line 325
    invoke-static {p3, v2}, Lcom/join/mgps/adapter/v4$d;->d(Lcom/join/mgps/adapter/v4$d;Landroid/widget/ImageView;)Landroid/widget/ImageView;

    .line 326
    .line 327
    .line 328
    const v2, 0x7f0a1042

    .line 329
    .line 330
    .line 331
    invoke-virtual {p2, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 332
    .line 333
    .line 334
    move-result-object v2

    .line 335
    check-cast v2, Landroid/widget/TextView;

    .line 336
    .line 337
    invoke-static {p3, v2}, Lcom/join/mgps/adapter/v4$d;->f(Lcom/join/mgps/adapter/v4$d;Landroid/widget/TextView;)Landroid/widget/TextView;

    .line 338
    .line 339
    .line 340
    const v2, 0x7f0a12a5

    .line 341
    .line 342
    .line 343
    invoke-virtual {p2, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 344
    .line 345
    .line 346
    move-result-object v2

    .line 347
    check-cast v2, Landroid/widget/ProgressBar;

    .line 348
    .line 349
    iput-object v2, p3, Lcom/join/mgps/adapter/v4$d;->d:Landroid/widget/ProgressBar;

    .line 350
    .line 351
    const v2, 0x7f0a129e

    .line 352
    .line 353
    .line 354
    invoke-virtual {p2, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 355
    .line 356
    .line 357
    move-result-object v2

    .line 358
    check-cast v2, Landroid/widget/ProgressBar;

    .line 359
    .line 360
    iput-object v2, p3, Lcom/join/mgps/adapter/v4$d;->e:Landroid/widget/ProgressBar;

    .line 361
    .line 362
    const v2, 0x7f0a1043

    .line 363
    .line 364
    .line 365
    invoke-virtual {p2, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 366
    .line 367
    .line 368
    move-result-object v2

    .line 369
    check-cast v2, Landroid/widget/TextView;

    .line 370
    .line 371
    invoke-static {p3, v2}, Lcom/join/mgps/adapter/v4$d;->h(Lcom/join/mgps/adapter/v4$d;Landroid/widget/TextView;)Landroid/widget/TextView;

    .line 372
    .line 373
    .line 374
    const v2, 0x7f0a054e

    .line 375
    .line 376
    .line 377
    invoke-virtual {p2, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 378
    .line 379
    .line 380
    move-result-object v2

    .line 381
    check-cast v2, Lcom/join/mgps/customview/DownloadNormalView;

    .line 382
    .line 383
    invoke-static {p3, v2}, Lcom/join/mgps/adapter/v4$d;->j(Lcom/join/mgps/adapter/v4$d;Lcom/join/mgps/customview/DownloadNormalView;)Lcom/join/mgps/customview/DownloadNormalView;

    .line 384
    .line 385
    .line 386
    const v2, 0x7f0a0e73

    .line 387
    .line 388
    .line 389
    invoke-virtual {p2, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 390
    .line 391
    .line 392
    move-result-object v2

    .line 393
    check-cast v2, Landroid/widget/LinearLayout;

    .line 394
    .line 395
    invoke-static {p3, v2}, Lcom/join/mgps/adapter/v4$d;->l(Lcom/join/mgps/adapter/v4$d;Landroid/widget/LinearLayout;)Landroid/widget/LinearLayout;

    .line 396
    .line 397
    .line 398
    const v2, 0x7f0a00f7

    .line 399
    .line 400
    .line 401
    invoke-virtual {p2, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 402
    .line 403
    .line 404
    move-result-object v2

    .line 405
    check-cast v2, Landroid/widget/TextView;

    .line 406
    .line 407
    iput-object v2, p3, Lcom/join/mgps/adapter/v4$d;->i:Landroid/widget/TextView;

    .line 408
    .line 409
    const v2, 0x7f0a0f94

    .line 410
    .line 411
    .line 412
    invoke-virtual {p2, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 413
    .line 414
    .line 415
    move-result-object v2

    .line 416
    check-cast v2, Landroid/widget/TextView;

    .line 417
    .line 418
    iput-object v2, p3, Lcom/join/mgps/adapter/v4$d;->j:Landroid/widget/TextView;

    .line 419
    .line 420
    const v2, 0x7f0a1764

    .line 421
    .line 422
    .line 423
    invoke-virtual {p2, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 424
    .line 425
    .line 426
    move-result-object v2

    .line 427
    check-cast v2, Landroid/widget/LinearLayout;

    .line 428
    .line 429
    invoke-static {p3, v2}, Lcom/join/mgps/adapter/v4$d;->n(Lcom/join/mgps/adapter/v4$d;Landroid/widget/LinearLayout;)Landroid/widget/LinearLayout;

    .line 430
    .line 431
    .line 432
    invoke-virtual {p2, p3}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 433
    .line 434
    .line 435
    goto/16 :goto_6

    .line 436
    .line 437
    :cond_5
    sget-object p3, Lcom/join/mgps/dto/PaPaBean$PaPaBeanTypes;->TYPE_IMAGE_HEADER:Lcom/join/mgps/dto/PaPaBean$PaPaBeanTypes;

    .line 438
    .line 439
    invoke-virtual {p3}, Lcom/join/mgps/dto/PaPaBean$PaPaBeanTypes;->value()I

    .line 440
    .line 441
    .line 442
    move-result p3

    .line 443
    if-ne v0, p3, :cond_6

    .line 444
    .line 445
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    .line 446
    .line 447
    .line 448
    move-result-object p3

    .line 449
    check-cast p3, Lcom/join/mgps/adapter/v4$e;

    .line 450
    .line 451
    move-object v2, v1

    .line 452
    move-object v3, v2

    .line 453
    move-object v4, v3

    .line 454
    move-object v1, p3

    .line 455
    :goto_0
    move-object p3, v4

    .line 456
    goto :goto_7

    .line 457
    :cond_6
    sget-object p3, Lcom/join/mgps/dto/PaPaBean$PaPaBeanTypes;->TYPE_TITLE_COLLECTION:Lcom/join/mgps/dto/PaPaBean$PaPaBeanTypes;

    .line 458
    .line 459
    invoke-virtual {p3}, Lcom/join/mgps/dto/PaPaBean$PaPaBeanTypes;->value()I

    .line 460
    .line 461
    .line 462
    move-result p3

    .line 463
    if-ne v0, p3, :cond_7

    .line 464
    .line 465
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    .line 466
    .line 467
    .line 468
    move-result-object p3

    .line 469
    check-cast p3, Lcom/join/mgps/adapter/v4$f;

    .line 470
    .line 471
    :goto_1
    move-object v2, v1

    .line 472
    :goto_2
    move-object v3, v2

    .line 473
    :goto_3
    move-object v4, v3

    .line 474
    goto :goto_7

    .line 475
    :cond_7
    sget-object p3, Lcom/join/mgps/dto/PaPaBean$PaPaBeanTypes;->TYPE_GAMEFACTORY_LIST:Lcom/join/mgps/dto/PaPaBean$PaPaBeanTypes;

    .line 476
    .line 477
    invoke-virtual {p3}, Lcom/join/mgps/dto/PaPaBean$PaPaBeanTypes;->value()I

    .line 478
    .line 479
    .line 480
    move-result p3

    .line 481
    if-ne v0, p3, :cond_8

    .line 482
    .line 483
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    .line 484
    .line 485
    .line 486
    move-result-object p3

    .line 487
    check-cast p3, Lcom/join/mgps/adapter/v4$g;

    .line 488
    .line 489
    :goto_4
    move-object v2, p3

    .line 490
    move-object p3, v1

    .line 491
    move-object v3, p3

    .line 492
    goto :goto_3

    .line 493
    :cond_8
    sget-object p3, Lcom/join/mgps/dto/PaPaBean$PaPaBeanTypes;->TYPE_CONTENT_COLLECTION:Lcom/join/mgps/dto/PaPaBean$PaPaBeanTypes;

    .line 494
    .line 495
    invoke-virtual {p3}, Lcom/join/mgps/dto/PaPaBean$PaPaBeanTypes;->value()I

    .line 496
    .line 497
    .line 498
    move-result p3

    .line 499
    if-ne v0, p3, :cond_9

    .line 500
    .line 501
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    .line 502
    .line 503
    .line 504
    move-result-object p3

    .line 505
    check-cast p3, Lcom/join/mgps/adapter/v4$c;

    .line 506
    .line 507
    :goto_5
    move-object v3, p3

    .line 508
    move-object p3, v1

    .line 509
    move-object v2, p3

    .line 510
    move-object v4, v2

    .line 511
    goto :goto_7

    .line 512
    :cond_9
    sget-object p3, Lcom/join/mgps/dto/PaPaBean$PaPaBeanTypes;->TYPE_CONTENT_GAMEINFO:Lcom/join/mgps/dto/PaPaBean$PaPaBeanTypes;

    .line 513
    .line 514
    invoke-virtual {p3}, Lcom/join/mgps/dto/PaPaBean$PaPaBeanTypes;->value()I

    .line 515
    .line 516
    .line 517
    move-result p3

    .line 518
    if-ne v0, p3, :cond_a

    .line 519
    .line 520
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    .line 521
    .line 522
    .line 523
    move-result-object p3

    .line 524
    check-cast p3, Lcom/join/mgps/adapter/v4$d;

    .line 525
    .line 526
    :goto_6
    move-object v4, p3

    .line 527
    move-object p3, v1

    .line 528
    move-object v2, p3

    .line 529
    move-object v3, v2

    .line 530
    goto :goto_7

    .line 531
    :cond_a
    move-object p3, v1

    .line 532
    move-object v2, p3

    .line 533
    goto :goto_2

    .line 534
    :goto_7
    iget-object v5, p0, Lcom/join/mgps/adapter/v4;->b:Ljava/util/List;

    .line 535
    .line 536
    invoke-interface {v5, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 537
    .line 538
    .line 539
    move-result-object p1

    .line 540
    check-cast p1, Lcom/join/mgps/dto/PaPaBean;

    .line 541
    .line 542
    sget-object v5, Lcom/join/mgps/dto/PaPaBean$PaPaBeanTypes;->TYPE_IMAGE_HEADER:Lcom/join/mgps/dto/PaPaBean$PaPaBeanTypes;

    .line 543
    .line 544
    invoke-virtual {v5}, Lcom/join/mgps/dto/PaPaBean$PaPaBeanTypes;->value()I

    .line 545
    .line 546
    .line 547
    move-result v5

    .line 548
    if-ne v0, v5, :cond_b

    .line 549
    .line 550
    invoke-virtual {p0, v1, p1}, Lcom/join/mgps/adapter/v4;->f(Lcom/join/mgps/adapter/v4$e;Lcom/join/mgps/dto/PaPaBean;)V

    .line 551
    .line 552
    .line 553
    goto :goto_8

    .line 554
    :cond_b
    sget-object v1, Lcom/join/mgps/dto/PaPaBean$PaPaBeanTypes;->TYPE_TITLE_COLLECTION:Lcom/join/mgps/dto/PaPaBean$PaPaBeanTypes;

    .line 555
    .line 556
    invoke-virtual {v1}, Lcom/join/mgps/dto/PaPaBean$PaPaBeanTypes;->value()I

    .line 557
    .line 558
    .line 559
    move-result v1

    .line 560
    if-ne v0, v1, :cond_c

    .line 561
    .line 562
    invoke-virtual {p0, p3, p1}, Lcom/join/mgps/adapter/v4;->g(Lcom/join/mgps/adapter/v4$f;Lcom/join/mgps/dto/PaPaBean;)V

    .line 563
    .line 564
    .line 565
    goto :goto_8

    .line 566
    :cond_c
    sget-object p3, Lcom/join/mgps/dto/PaPaBean$PaPaBeanTypes;->TYPE_GAMEFACTORY_LIST:Lcom/join/mgps/dto/PaPaBean$PaPaBeanTypes;

    .line 567
    .line 568
    invoke-virtual {p3}, Lcom/join/mgps/dto/PaPaBean$PaPaBeanTypes;->value()I

    .line 569
    .line 570
    .line 571
    move-result p3

    .line 572
    if-ne v0, p3, :cond_d

    .line 573
    .line 574
    invoke-virtual {p0, v2, p1}, Lcom/join/mgps/adapter/v4;->h(Lcom/join/mgps/adapter/v4$g;Lcom/join/mgps/dto/PaPaBean;)V

    .line 575
    .line 576
    .line 577
    goto :goto_8

    .line 578
    :cond_d
    sget-object p3, Lcom/join/mgps/dto/PaPaBean$PaPaBeanTypes;->TYPE_CONTENT_COLLECTION:Lcom/join/mgps/dto/PaPaBean$PaPaBeanTypes;

    .line 579
    .line 580
    invoke-virtual {p3}, Lcom/join/mgps/dto/PaPaBean$PaPaBeanTypes;->value()I

    .line 581
    .line 582
    .line 583
    move-result p3

    .line 584
    if-ne v0, p3, :cond_e

    .line 585
    .line 586
    invoke-virtual {p0, p2, v3, p1}, Lcom/join/mgps/adapter/v4;->d(Landroid/view/View;Lcom/join/mgps/adapter/v4$c;Lcom/join/mgps/dto/PaPaBean;)V

    .line 587
    .line 588
    .line 589
    goto :goto_8

    .line 590
    :cond_e
    sget-object p3, Lcom/join/mgps/dto/PaPaBean$PaPaBeanTypes;->TYPE_CONTENT_GAMEINFO:Lcom/join/mgps/dto/PaPaBean$PaPaBeanTypes;

    .line 591
    .line 592
    invoke-virtual {p3}, Lcom/join/mgps/dto/PaPaBean$PaPaBeanTypes;->value()I

    .line 593
    .line 594
    .line 595
    move-result p3

    .line 596
    if-ne v0, p3, :cond_f

    .line 597
    .line 598
    invoke-virtual {p0, v4, p1}, Lcom/join/mgps/adapter/v4;->e(Lcom/join/mgps/adapter/v4$d;Lcom/join/mgps/dto/PaPaBean;)V

    .line 599
    .line 600
    .line 601
    :cond_f
    :goto_8
    return-object p2
.end method

.method public getViewTypeCount()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/join/mgps/adapter/v4;->d:I

    .line 2
    .line 3
    return v0
.end method

.method h(Lcom/join/mgps/adapter/v4$g;Lcom/join/mgps/dto/PaPaBean;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "holder",
            "paPaBean"
        }
    .end annotation

    .line 1
    invoke-virtual {p2}, Lcom/join/mgps/dto/PaPaBean;->getTypeValue()Ljava/lang/Object;

    .line 2
    .line 3
    .line 4
    move-result-object p2

    .line 5
    check-cast p2, Lcom/join/mgps/dto/GameFactoryListBean$LogoInfo;

    .line 6
    .line 7
    iget-object v0, p1, Lcom/join/mgps/adapter/v4$g;->a:Lcom/facebook/drawee/view/SimpleDraweeView;

    .line 8
    .line 9
    invoke-virtual {p2}, Lcom/join/mgps/dto/GameFactoryListBean$LogoInfo;->getLogo_pic()Ljava/lang/String;

    .line 10
    .line 11
    .line 12
    move-result-object v1

    .line 13
    invoke-static {v0, v1}, Lcom/join/android/app/common/utils/l;->h(Lcom/facebook/drawee/view/SimpleDraweeView;Ljava/lang/String;)V

    .line 14
    .line 15
    .line 16
    iget-object v0, p1, Lcom/join/mgps/adapter/v4$g;->c:Landroid/widget/TextView;

    .line 17
    .line 18
    invoke-virtual {p2}, Lcom/join/mgps/dto/GameFactoryListBean$LogoInfo;->getIntroduce()Ljava/lang/String;

    .line 19
    .line 20
    .line 21
    move-result-object v1

    .line 22
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 23
    .line 24
    .line 25
    iget-object p1, p1, Lcom/join/mgps/adapter/v4$g;->b:Landroid/widget/TextView;

    .line 26
    .line 27
    invoke-virtual {p2}, Lcom/join/mgps/dto/GameFactoryListBean$LogoInfo;->getTitle()Ljava/lang/String;

    .line 28
    .line 29
    .line 30
    move-result-object p2

    .line 31
    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 32
    .line 33
    .line 34
    return-void
.end method
