.class public Lcom/join/mgps/adapter/ForumProfileCommentAdapter;
.super Landroid/widget/BaseAdapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/join/mgps/adapter/ForumProfileCommentAdapter$c;,
        Lcom/join/mgps/adapter/ForumProfileCommentAdapter$i;,
        Lcom/join/mgps/adapter/ForumProfileCommentAdapter$ViewType;,
        Lcom/join/mgps/adapter/ForumProfileCommentAdapter$f;,
        Lcom/join/mgps/adapter/ForumProfileCommentAdapter$d;,
        Lcom/join/mgps/adapter/ForumProfileCommentAdapter$g;,
        Lcom/join/mgps/adapter/ForumProfileCommentAdapter$e;,
        Lcom/join/mgps/adapter/ForumProfileCommentAdapter$h;,
        Lcom/join/mgps/adapter/ForumProfileCommentAdapter$j;
    }
.end annotation


# instance fields
.field private b:Landroid/content/Context;

.field private c:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/join/mgps/adapter/ForumProfileCommentAdapter$i;",
            ">;"
        }
    .end annotation
.end field

.field private d:Lcom/join/mgps/adapter/ForumProfileCommentAdapter$c;


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
    iput-object p1, p0, Lcom/join/mgps/adapter/ForumProfileCommentAdapter;->b:Landroid/content/Context;

    .line 5
    .line 6
    new-instance p1, Ljava/util/ArrayList;

    .line 7
    .line 8
    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 9
    .line 10
    .line 11
    iput-object p1, p0, Lcom/join/mgps/adapter/ForumProfileCommentAdapter;->c:Ljava/util/List;

    .line 12
    .line 13
    return-void
.end method

.method static synthetic a(Lcom/join/mgps/adapter/ForumProfileCommentAdapter;)Lcom/join/mgps/adapter/ForumProfileCommentAdapter$c;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/join/mgps/adapter/ForumProfileCommentAdapter;->d:Lcom/join/mgps/adapter/ForumProfileCommentAdapter$c;

    .line 2
    .line 3
    return-object p0
.end method

.method private c(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 3
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
    :try_start_0
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object p3

    .line 7
    check-cast p3, Lcom/join/mgps/adapter/ForumProfileCommentAdapter$d;

    .line 8
    .line 9
    goto :goto_0

    .line 10
    :cond_0
    new-instance p3, Lcom/join/mgps/adapter/ForumProfileCommentAdapter$d;

    .line 11
    .line 12
    invoke-direct {p3, p0}, Lcom/join/mgps/adapter/ForumProfileCommentAdapter$d;-><init>(Lcom/join/mgps/adapter/ForumProfileCommentAdapter;)V

    .line 13
    .line 14
    .line 15
    iget-object v0, p0, Lcom/join/mgps/adapter/ForumProfileCommentAdapter;->b:Landroid/content/Context;

    .line 16
    .line 17
    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    .line 18
    .line 19
    .line 20
    move-result-object v0

    .line 21
    const v1, 0x7f0d06ca

    .line 22
    .line 23
    .line 24
    const/4 v2, 0x0

    .line 25
    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 26
    .line 27
    .line 28
    move-result-object p2

    .line 29
    const v0, 0x7f0a127f

    .line 30
    .line 31
    .line 32
    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 33
    .line 34
    .line 35
    move-result-object v0

    .line 36
    check-cast v0, Lcom/facebook/drawee/view/SimpleDraweeView;

    .line 37
    .line 38
    iput-object v0, p3, Lcom/join/mgps/adapter/ForumProfileCommentAdapter$d;->b:Lcom/facebook/drawee/view/SimpleDraweeView;

    .line 39
    .line 40
    const v0, 0x7f0a1280

    .line 41
    .line 42
    .line 43
    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 44
    .line 45
    .line 46
    move-result-object v0

    .line 47
    check-cast v0, Landroid/widget/TextView;

    .line 48
    .line 49
    iput-object v0, p3, Lcom/join/mgps/adapter/ForumProfileCommentAdapter$d;->c:Landroid/widget/TextView;

    .line 50
    .line 51
    invoke-virtual {p2, p3}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 52
    .line 53
    .line 54
    :goto_0
    invoke-virtual {p0, p1}, Lcom/join/mgps/adapter/ForumProfileCommentAdapter;->getItem(I)Ljava/lang/Object;

    .line 55
    .line 56
    .line 57
    move-result-object p1

    .line 58
    check-cast p1, Lcom/join/mgps/adapter/ForumProfileCommentAdapter$i$a;

    .line 59
    .line 60
    if-nez p1, :cond_1

    .line 61
    .line 62
    return-object p2

    .line 63
    :cond_1
    iget v0, p1, Lcom/join/mgps/adapter/ForumProfileCommentAdapter$i$a;->a:I

    .line 64
    .line 65
    invoke-direct {p0, p2, v0}, Lcom/join/mgps/adapter/ForumProfileCommentAdapter;->f(Landroid/view/View;I)V

    .line 66
    .line 67
    .line 68
    iget-object v0, p1, Lcom/join/mgps/adapter/ForumProfileCommentAdapter$i$a;->b:Ljava/lang/String;

    .line 69
    .line 70
    invoke-static {v0}, Lcom/join/mgps/Util/t2;->h(Ljava/lang/String;)Z

    .line 71
    .line 72
    .line 73
    move-result v0

    .line 74
    if-eqz v0, :cond_2

    .line 75
    .line 76
    iget-object v0, p3, Lcom/join/mgps/adapter/ForumProfileCommentAdapter$d;->b:Lcom/facebook/drawee/view/SimpleDraweeView;

    .line 77
    .line 78
    const/16 v1, 0x8

    .line 79
    .line 80
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 81
    .line 82
    .line 83
    goto :goto_1

    .line 84
    :cond_2
    iget-object v0, p3, Lcom/join/mgps/adapter/ForumProfileCommentAdapter$d;->b:Lcom/facebook/drawee/view/SimpleDraweeView;

    .line 85
    .line 86
    const/4 v1, 0x0

    .line 87
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 88
    .line 89
    .line 90
    iget-object v0, p3, Lcom/join/mgps/adapter/ForumProfileCommentAdapter$d;->b:Lcom/facebook/drawee/view/SimpleDraweeView;

    .line 91
    .line 92
    iget-object v1, p1, Lcom/join/mgps/adapter/ForumProfileCommentAdapter$i$a;->b:Ljava/lang/String;

    .line 93
    .line 94
    invoke-static {v0, v1}, Lcom/join/android/app/common/utils/l;->h(Lcom/facebook/drawee/view/SimpleDraweeView;Ljava/lang/String;)V

    .line 95
    .line 96
    .line 97
    :goto_1
    iget-object p3, p3, Lcom/join/mgps/adapter/ForumProfileCommentAdapter$d;->c:Landroid/widget/TextView;

    .line 98
    .line 99
    iget-object p1, p1, Lcom/join/mgps/adapter/ForumProfileCommentAdapter$i$a;->c:Ljava/lang/String;

    .line 100
    .line 101
    const-string v0, ""

    .line 102
    .line 103
    invoke-static {p3, p1, v0}, Lcom/join/mgps/Util/r0;->D1(Landroid/widget/TextView;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 104
    .line 105
    .line 106
    goto :goto_2

    .line 107
    :catch_0
    move-exception p1

    .line 108
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 109
    .line 110
    .line 111
    :goto_2
    return-object p2
.end method

.method private d(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 7
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
    check-cast p3, Lcom/join/mgps/adapter/ForumProfileCommentAdapter$f;

    .line 8
    .line 9
    goto/16 :goto_0

    .line 10
    .line 11
    :cond_0
    new-instance p3, Lcom/join/mgps/adapter/ForumProfileCommentAdapter$f;

    .line 12
    .line 13
    invoke-direct {p3, p0}, Lcom/join/mgps/adapter/ForumProfileCommentAdapter$f;-><init>(Lcom/join/mgps/adapter/ForumProfileCommentAdapter;)V

    .line 14
    .line 15
    .line 16
    iget-object p2, p0, Lcom/join/mgps/adapter/ForumProfileCommentAdapter;->b:Landroid/content/Context;

    .line 17
    .line 18
    invoke-static {p2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    .line 19
    .line 20
    .line 21
    move-result-object p2

    .line 22
    const v0, 0x7f0d06cb

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
    const v0, 0x7f0a06a1

    .line 31
    .line 32
    .line 33
    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 34
    .line 35
    .line 36
    move-result-object v0

    .line 37
    iput-object v0, p3, Lcom/join/mgps/adapter/ForumProfileCommentAdapter$f;->f:Landroid/view/View;

    .line 38
    .line 39
    const v0, 0x7f0a069e

    .line 40
    .line 41
    .line 42
    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 43
    .line 44
    .line 45
    move-result-object v0

    .line 46
    check-cast v0, Lcom/facebook/drawee/view/SimpleDraweeView;

    .line 47
    .line 48
    iput-object v0, p3, Lcom/join/mgps/adapter/ForumProfileCommentAdapter$f;->b:Lcom/facebook/drawee/view/SimpleDraweeView;

    .line 49
    .line 50
    const v0, 0x7f0a06a8

    .line 51
    .line 52
    .line 53
    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 54
    .line 55
    .line 56
    move-result-object v0

    .line 57
    check-cast v0, Landroid/widget/TextView;

    .line 58
    .line 59
    iput-object v0, p3, Lcom/join/mgps/adapter/ForumProfileCommentAdapter$f;->c:Landroid/widget/TextView;

    .line 60
    .line 61
    const v0, 0x7f0a069d

    .line 62
    .line 63
    .line 64
    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 65
    .line 66
    .line 67
    move-result-object v0

    .line 68
    check-cast v0, Landroid/widget/TextView;

    .line 69
    .line 70
    iput-object v0, p3, Lcom/join/mgps/adapter/ForumProfileCommentAdapter$f;->d:Landroid/widget/TextView;

    .line 71
    .line 72
    const v0, 0x7f0a06ae

    .line 73
    .line 74
    .line 75
    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 76
    .line 77
    .line 78
    move-result-object v0

    .line 79
    check-cast v0, Landroid/widget/TextView;

    .line 80
    .line 81
    iput-object v0, p3, Lcom/join/mgps/adapter/ForumProfileCommentAdapter$f;->e:Landroid/widget/TextView;

    .line 82
    .line 83
    const v0, 0x7f0a06a7

    .line 84
    .line 85
    .line 86
    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 87
    .line 88
    .line 89
    move-result-object v0

    .line 90
    check-cast v0, Landroid/widget/ImageView;

    .line 91
    .line 92
    iput-object v0, p3, Lcom/join/mgps/adapter/ForumProfileCommentAdapter$f;->g:Landroid/widget/ImageView;

    .line 93
    .line 94
    const v0, 0x7f0a1186

    .line 95
    .line 96
    .line 97
    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 98
    .line 99
    .line 100
    move-result-object v0

    .line 101
    check-cast v0, Landroid/widget/ImageView;

    .line 102
    .line 103
    iput-object v0, p3, Lcom/join/mgps/adapter/ForumProfileCommentAdapter$f;->j:Landroid/widget/ImageView;

    .line 104
    .line 105
    const v0, 0x7f0a0683

    .line 106
    .line 107
    .line 108
    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 109
    .line 110
    .line 111
    move-result-object v0

    .line 112
    check-cast v0, Landroid/widget/RelativeLayout;

    .line 113
    .line 114
    iput-object v0, p3, Lcom/join/mgps/adapter/ForumProfileCommentAdapter$f;->h:Landroid/widget/RelativeLayout;

    .line 115
    .line 116
    const v0, 0x7f0a1ba6

    .line 117
    .line 118
    .line 119
    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 120
    .line 121
    .line 122
    move-result-object v0

    .line 123
    check-cast v0, Lcom/join/mgps/customview/VipView;

    .line 124
    .line 125
    iput-object v0, p3, Lcom/join/mgps/adapter/ForumProfileCommentAdapter$f;->i:Lcom/join/mgps/customview/VipView;

    .line 126
    .line 127
    const v0, 0x7f0a043d

    .line 128
    .line 129
    .line 130
    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 131
    .line 132
    .line 133
    move-result-object v0

    .line 134
    check-cast v0, Landroid/widget/TextView;

    .line 135
    .line 136
    iput-object v0, p3, Lcom/join/mgps/adapter/ForumProfileCommentAdapter$f;->k:Landroid/widget/TextView;

    .line 137
    .line 138
    invoke-virtual {p2, p3}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 139
    .line 140
    .line 141
    :goto_0
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/join/mgps/adapter/ForumProfileCommentAdapter;->getItem(I)Ljava/lang/Object;

    .line 142
    .line 143
    .line 144
    move-result-object p1

    .line 145
    check-cast p1, Lcom/join/mgps/adapter/ForumProfileCommentAdapter$i$b;

    .line 146
    .line 147
    if-nez p1, :cond_1

    .line 148
    .line 149
    return-object p2

    .line 150
    :cond_1
    iget-object v0, p0, Lcom/join/mgps/adapter/ForumProfileCommentAdapter;->b:Landroid/content/Context;

    .line 151
    .line 152
    iget-object v1, p3, Lcom/join/mgps/adapter/ForumProfileCommentAdapter$f;->c:Landroid/widget/TextView;

    .line 153
    .line 154
    iget v2, p1, Lcom/join/mgps/adapter/ForumProfileCommentAdapter$i$b;->j:I

    .line 155
    .line 156
    iget v3, p1, Lcom/join/mgps/adapter/ForumProfileCommentAdapter$i$b;->k:I

    .line 157
    .line 158
    const v4, 0x7f06014c

    .line 159
    .line 160
    .line 161
    invoke-static {v0, v1, v2, v3, v4}, Lcom/join/mgps/Util/UtilsMy;->R3(Landroid/content/Context;Landroid/widget/TextView;III)Z

    .line 162
    .line 163
    .line 164
    iget-object v0, p3, Lcom/join/mgps/adapter/ForumProfileCommentAdapter$f;->i:Lcom/join/mgps/customview/VipView;

    .line 165
    .line 166
    iget v1, p1, Lcom/join/mgps/adapter/ForumProfileCommentAdapter$i$b;->j:I

    .line 167
    .line 168
    iget v2, p1, Lcom/join/mgps/adapter/ForumProfileCommentAdapter$i$b;->k:I

    .line 169
    .line 170
    invoke-virtual {v0, v1, v2}, Lcom/join/mgps/customview/VipView;->setVipData(II)V

    .line 171
    .line 172
    .line 173
    iget-object v0, p3, Lcom/join/mgps/adapter/ForumProfileCommentAdapter$f;->h:Landroid/widget/RelativeLayout;

    .line 174
    .line 175
    const/16 v1, 0x8

    .line 176
    .line 177
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 178
    .line 179
    .line 180
    iget-boolean v0, p1, Lcom/join/mgps/adapter/ForumProfileCommentAdapter$i$b;->a:Z

    .line 181
    .line 182
    const/4 v2, 0x0

    .line 183
    if-eqz v0, :cond_2

    .line 184
    .line 185
    iget-object v0, p3, Lcom/join/mgps/adapter/ForumProfileCommentAdapter$f;->f:Landroid/view/View;

    .line 186
    .line 187
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 188
    .line 189
    .line 190
    goto :goto_1

    .line 191
    :cond_2
    iget-object v0, p3, Lcom/join/mgps/adapter/ForumProfileCommentAdapter$f;->f:Landroid/view/View;

    .line 192
    .line 193
    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 194
    .line 195
    .line 196
    :goto_1
    iget-object v0, p3, Lcom/join/mgps/adapter/ForumProfileCommentAdapter$f;->c:Landroid/widget/TextView;

    .line 197
    .line 198
    iget-object v3, p1, Lcom/join/mgps/adapter/ForumProfileCommentAdapter$i$b;->c:Ljava/lang/String;

    .line 199
    .line 200
    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 201
    .line 202
    .line 203
    iget-object v0, p3, Lcom/join/mgps/adapter/ForumProfileCommentAdapter$f;->d:Landroid/widget/TextView;

    .line 204
    .line 205
    iget-wide v3, p1, Lcom/join/mgps/adapter/ForumProfileCommentAdapter$i$b;->d:J

    .line 206
    .line 207
    const-wide/16 v5, 0x3e8

    .line 208
    .line 209
    mul-long v3, v3, v5

    .line 210
    .line 211
    invoke-static {v3, v4}, Lcom/join/android/app/common/utils/i;->a(J)Ljava/lang/String;

    .line 212
    .line 213
    .line 214
    move-result-object v3

    .line 215
    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 216
    .line 217
    .line 218
    iget-object v0, p3, Lcom/join/mgps/adapter/ForumProfileCommentAdapter$f;->e:Landroid/widget/TextView;

    .line 219
    .line 220
    if-eqz v0, :cond_4

    .line 221
    .line 222
    iget-boolean v3, p1, Lcom/join/mgps/adapter/ForumProfileCommentAdapter$i$b;->e:Z

    .line 223
    .line 224
    if-eqz v3, :cond_3

    .line 225
    .line 226
    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 227
    .line 228
    .line 229
    goto :goto_2

    .line 230
    :cond_3
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 231
    .line 232
    .line 233
    :cond_4
    :goto_2
    iget-object v0, p3, Lcom/join/mgps/adapter/ForumProfileCommentAdapter$f;->g:Landroid/widget/ImageView;

    .line 234
    .line 235
    if-eqz v0, :cond_6

    .line 236
    .line 237
    iget-boolean v3, p1, Lcom/join/mgps/adapter/ForumProfileCommentAdapter$i$b;->h:Z

    .line 238
    .line 239
    if-eqz v3, :cond_5

    .line 240
    .line 241
    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 242
    .line 243
    .line 244
    goto :goto_3

    .line 245
    :cond_5
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 246
    .line 247
    .line 248
    :cond_6
    :goto_3
    iget-boolean v0, p1, Lcom/join/mgps/adapter/ForumProfileCommentAdapter$i$b;->i:Z

    .line 249
    .line 250
    if-eqz v0, :cond_7

    .line 251
    .line 252
    iget-object v0, p3, Lcom/join/mgps/adapter/ForumProfileCommentAdapter$f;->j:Landroid/widget/ImageView;

    .line 253
    .line 254
    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 255
    .line 256
    .line 257
    goto :goto_4

    .line 258
    :cond_7
    iget-object v0, p3, Lcom/join/mgps/adapter/ForumProfileCommentAdapter$f;->j:Landroid/widget/ImageView;

    .line 259
    .line 260
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 261
    .line 262
    .line 263
    :goto_4
    iget-object v0, p3, Lcom/join/mgps/adapter/ForumProfileCommentAdapter$f;->b:Lcom/facebook/drawee/view/SimpleDraweeView;

    .line 264
    .line 265
    iget-object v3, p1, Lcom/join/mgps/adapter/ForumProfileCommentAdapter$i$b;->b:Ljava/lang/String;

    .line 266
    .line 267
    invoke-static {v0, v3}, Lcom/join/android/app/common/utils/l;->y(Lcom/facebook/drawee/view/SimpleDraweeView;Ljava/lang/String;)V

    .line 268
    .line 269
    .line 270
    iget-object v0, p3, Lcom/join/mgps/adapter/ForumProfileCommentAdapter$f;->b:Lcom/facebook/drawee/view/SimpleDraweeView;

    .line 271
    .line 272
    new-instance v3, Lcom/join/mgps/adapter/ForumProfileCommentAdapter$a;

    .line 273
    .line 274
    invoke-direct {v3, p0, p1}, Lcom/join/mgps/adapter/ForumProfileCommentAdapter$a;-><init>(Lcom/join/mgps/adapter/ForumProfileCommentAdapter;Lcom/join/mgps/adapter/ForumProfileCommentAdapter$i$b;)V

    .line 275
    .line 276
    .line 277
    invoke-virtual {v0, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 278
    .line 279
    .line 280
    iget v0, p1, Lcom/join/mgps/adapter/ForumProfileCommentAdapter$i$b;->f:I

    .line 281
    .line 282
    invoke-direct {p0, p2, v0}, Lcom/join/mgps/adapter/ForumProfileCommentAdapter;->f(Landroid/view/View;I)V

    .line 283
    .line 284
    .line 285
    const/4 v0, 0x3

    .line 286
    new-array v0, v0, [Landroid/view/View;

    .line 287
    .line 288
    iget-object v3, p3, Lcom/join/mgps/adapter/ForumProfileCommentAdapter$f;->b:Lcom/facebook/drawee/view/SimpleDraweeView;

    .line 289
    .line 290
    aput-object v3, v0, v2

    .line 291
    .line 292
    iget-object v3, p3, Lcom/join/mgps/adapter/ForumProfileCommentAdapter$f;->c:Landroid/widget/TextView;

    .line 293
    .line 294
    const/4 v4, 0x1

    .line 295
    aput-object v3, v0, v4

    .line 296
    .line 297
    iget-object v3, p3, Lcom/join/mgps/adapter/ForumProfileCommentAdapter$f;->d:Landroid/widget/TextView;

    .line 298
    .line 299
    const/4 v5, 0x2

    .line 300
    aput-object v3, v0, v5

    .line 301
    .line 302
    invoke-static {v0}, Lcom/join/mgps/Util/r0;->S0([Landroid/view/View;)V

    .line 303
    .line 304
    .line 305
    new-array v0, v4, [Landroid/view/View;

    .line 306
    .line 307
    iget-object v3, p3, Lcom/join/mgps/adapter/ForumProfileCommentAdapter$f;->i:Lcom/join/mgps/customview/VipView;

    .line 308
    .line 309
    aput-object v3, v0, v2

    .line 310
    .line 311
    invoke-static {v0}, Lcom/join/mgps/Util/r0;->U0([Landroid/view/View;)V

    .line 312
    .line 313
    .line 314
    iget-object v0, p1, Lcom/join/mgps/adapter/ForumProfileCommentAdapter$i$b;->l:Ljava/lang/String;

    .line 315
    .line 316
    iget-object p1, p1, Lcom/join/mgps/adapter/ForumProfileCommentAdapter$i$b;->m:Ljava/lang/String;

    .line 317
    .line 318
    iget-object v3, p3, Lcom/join/mgps/adapter/ForumProfileCommentAdapter$f;->k:Landroid/widget/TextView;

    .line 319
    .line 320
    if-eqz v3, :cond_a

    .line 321
    .line 322
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 323
    .line 324
    .line 325
    move-result v3

    .line 326
    if-nez v3, :cond_9

    .line 327
    .line 328
    iget-object v1, p3, Lcom/join/mgps/adapter/ForumProfileCommentAdapter$f;->k:Landroid/widget/TextView;

    .line 329
    .line 330
    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 331
    .line 332
    .line 333
    iget-object v1, p3, Lcom/join/mgps/adapter/ForumProfileCommentAdapter$f;->k:Landroid/widget/TextView;

    .line 334
    .line 335
    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 336
    .line 337
    .line 338
    iget-object v0, p0, Lcom/join/mgps/adapter/ForumProfileCommentAdapter;->b:Landroid/content/Context;

    .line 339
    .line 340
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 341
    .line 342
    .line 343
    move-result-object v0

    .line 344
    const v1, 0x7f0805d1

    .line 345
    .line 346
    .line 347
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    .line 348
    .line 349
    .line 350
    move-result-object v0

    .line 351
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 352
    .line 353
    .line 354
    move-result v1

    .line 355
    if-nez v1, :cond_8

    .line 356
    .line 357
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    .line 358
    .line 359
    .line 360
    move-result v1

    .line 361
    const/4 v2, 0x7

    .line 362
    if-ne v1, v2, :cond_8

    .line 363
    .line 364
    const-string v1, "#"

    .line 365
    .line 366
    invoke-virtual {p1, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 367
    .line 368
    .line 369
    move-result v1

    .line 370
    if-eqz v1, :cond_8

    .line 371
    .line 372
    goto :goto_5

    .line 373
    :cond_8
    const-string p1, "#2fccdf"

    .line 374
    .line 375
    :goto_5
    new-instance v1, Landroid/graphics/LightingColorFilter;

    .line 376
    .line 377
    invoke-static {p1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    .line 378
    .line 379
    .line 380
    move-result v2

    .line 381
    invoke-static {p1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    .line 382
    .line 383
    .line 384
    move-result p1

    .line 385
    invoke-direct {v1, v2, p1}, Landroid/graphics/LightingColorFilter;-><init>(II)V

    .line 386
    .line 387
    .line 388
    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setColorFilter(Landroid/graphics/ColorFilter;)V

    .line 389
    .line 390
    .line 391
    iget-object p1, p3, Lcom/join/mgps/adapter/ForumProfileCommentAdapter$f;->k:Landroid/widget/TextView;

    .line 392
    .line 393
    invoke-virtual {p1, v0}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 394
    .line 395
    .line 396
    goto :goto_6

    .line 397
    :cond_9
    iget-object p1, p3, Lcom/join/mgps/adapter/ForumProfileCommentAdapter$f;->k:Landroid/widget/TextView;

    .line 398
    .line 399
    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 400
    .line 401
    .line 402
    goto :goto_6

    .line 403
    :catch_0
    move-exception p1

    .line 404
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 405
    .line 406
    .line 407
    :cond_a
    :goto_6
    return-object p2
.end method

.method private e(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 3
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
    check-cast p3, Lcom/join/mgps/adapter/ForumProfileCommentAdapter$g;

    .line 8
    .line 9
    goto :goto_0

    .line 10
    :cond_0
    new-instance p3, Lcom/join/mgps/adapter/ForumProfileCommentAdapter$g;

    .line 11
    .line 12
    invoke-direct {p3, p0}, Lcom/join/mgps/adapter/ForumProfileCommentAdapter$g;-><init>(Lcom/join/mgps/adapter/ForumProfileCommentAdapter;)V

    .line 13
    .line 14
    .line 15
    iget-object p2, p0, Lcom/join/mgps/adapter/ForumProfileCommentAdapter;->b:Landroid/content/Context;

    .line 16
    .line 17
    invoke-static {p2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    .line 18
    .line 19
    .line 20
    move-result-object p2

    .line 21
    const v0, 0x7f0d06cd

    .line 22
    .line 23
    .line 24
    const/4 v1, 0x0

    .line 25
    invoke-virtual {p2, v0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 26
    .line 27
    .line 28
    move-result-object p2

    .line 29
    const v0, 0x7f0a1057

    .line 30
    .line 31
    .line 32
    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 33
    .line 34
    .line 35
    move-result-object v0

    .line 36
    check-cast v0, Landroid/widget/TextView;

    .line 37
    .line 38
    iput-object v0, p3, Lcom/join/mgps/adapter/ForumProfileCommentAdapter$g;->b:Landroid/widget/TextView;

    .line 39
    .line 40
    const v0, 0x7f0a1054

    .line 41
    .line 42
    .line 43
    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 44
    .line 45
    .line 46
    move-result-object v0

    .line 47
    iput-object v0, p3, Lcom/join/mgps/adapter/ForumProfileCommentAdapter$g;->c:Landroid/view/View;

    .line 48
    .line 49
    invoke-virtual {p2, p3}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 50
    .line 51
    .line 52
    :goto_0
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/join/mgps/adapter/ForumProfileCommentAdapter;->getItem(I)Ljava/lang/Object;

    .line 53
    .line 54
    .line 55
    move-result-object p1

    .line 56
    check-cast p1, Lcom/join/mgps/adapter/ForumProfileCommentAdapter$i$c;

    .line 57
    .line 58
    if-nez p1, :cond_1

    .line 59
    .line 60
    return-object p2

    .line 61
    :cond_1
    iget-boolean v0, p1, Lcom/join/mgps/adapter/ForumProfileCommentAdapter$i$c;->b:Z

    .line 62
    .line 63
    if-eqz v0, :cond_2

    .line 64
    .line 65
    iget-object v0, p3, Lcom/join/mgps/adapter/ForumProfileCommentAdapter$g;->c:Landroid/view/View;

    .line 66
    .line 67
    const/16 v1, 0x8

    .line 68
    .line 69
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 70
    .line 71
    .line 72
    goto :goto_1

    .line 73
    :cond_2
    iget-object v0, p3, Lcom/join/mgps/adapter/ForumProfileCommentAdapter$g;->c:Landroid/view/View;

    .line 74
    .line 75
    const/4 v1, 0x0

    .line 76
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 77
    .line 78
    .line 79
    :goto_1
    iget-object v0, p1, Lcom/join/mgps/adapter/ForumProfileCommentAdapter$i$c;->c:Lcom/join/mgps/dto/ForumBean$ForumProfileCommentBean;

    .line 80
    .line 81
    if-nez v0, :cond_3

    .line 82
    .line 83
    return-object p2

    .line 84
    :cond_3
    invoke-virtual {v0}, Lcom/join/mgps/dto/ForumBean$ForumProfileCommentBean;->getRnickname()Ljava/lang/String;

    .line 85
    .line 86
    .line 87
    move-result-object v1

    .line 88
    invoke-static {v1}, Lcom/join/mgps/Util/t2;->h(Ljava/lang/String;)Z

    .line 89
    .line 90
    .line 91
    move-result v2

    .line 92
    if-eqz v2, :cond_4

    .line 93
    .line 94
    const-string v1, "\u6211"

    .line 95
    .line 96
    :cond_4
    iget-object p3, p3, Lcom/join/mgps/adapter/ForumProfileCommentAdapter$g;->b:Landroid/widget/TextView;

    .line 97
    .line 98
    invoke-virtual {v0}, Lcom/join/mgps/dto/ForumBean$ForumProfileCommentBean;->getType()Ljava/lang/String;

    .line 99
    .line 100
    .line 101
    move-result-object v2

    .line 102
    invoke-virtual {v0}, Lcom/join/mgps/dto/ForumBean$ForumProfileCommentBean;->getMessage()Ljava/lang/String;

    .line 103
    .line 104
    .line 105
    move-result-object v0

    .line 106
    invoke-static {p3, v2, v1, v0}, Lcom/join/mgps/Util/r0;->B1(Landroid/widget/TextView;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 107
    .line 108
    .line 109
    iget p1, p1, Lcom/join/mgps/adapter/ForumProfileCommentAdapter$i$c;->a:I

    .line 110
    .line 111
    invoke-direct {p0, p2, p1}, Lcom/join/mgps/adapter/ForumProfileCommentAdapter;->f(Landroid/view/View;I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 112
    .line 113
    .line 114
    goto :goto_2

    .line 115
    :catch_0
    move-exception p1

    .line 116
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 117
    .line 118
    .line 119
    :goto_2
    return-object p2
.end method

.method private f(Landroid/view/View;I)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x10
        }
        names = {
            "v",
            "pid"
        }
    .end annotation

    .line 1
    new-instance v0, Lcom/join/mgps/adapter/ForumProfileCommentAdapter$b;

    .line 2
    .line 3
    invoke-direct {v0, p0, p2}, Lcom/join/mgps/adapter/ForumProfileCommentAdapter$b;-><init>(Lcom/join/mgps/adapter/ForumProfileCommentAdapter;I)V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 7
    .line 8
    .line 9
    return-void
.end method

.method private i(Landroid/widget/LinearLayout;Ljava/util/List;)V
    .locals 7
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "container",
            "profileCommentBeans"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/LinearLayout;",
            "Ljava/util/List<",
            "Lcom/join/mgps/dto/ForumBean$ForumProfileCommentBean;",
            ">;)V"
        }
    .end annotation

    .line 1
    const/16 v0, 0x8

    .line 2
    .line 3
    if-eqz p2, :cond_6

    .line 4
    .line 5
    invoke-interface {p2}, Ljava/util/List;->size()I

    .line 6
    .line 7
    .line 8
    move-result v1

    .line 9
    if-nez v1, :cond_0

    .line 10
    .line 11
    goto/16 :goto_4

    .line 12
    .line 13
    :cond_0
    const/4 v1, 0x0

    .line 14
    const/4 v2, 0x0

    .line 15
    :goto_0
    invoke-interface {p2}, Ljava/util/List;->size()I

    .line 16
    .line 17
    .line 18
    move-result v3

    .line 19
    if-ge v2, v3, :cond_4

    .line 20
    .line 21
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getChildCount()I

    .line 22
    .line 23
    .line 24
    move-result v3

    .line 25
    if-ge v2, v3, :cond_1

    .line 26
    .line 27
    invoke-virtual {p1, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    .line 28
    .line 29
    .line 30
    move-result-object v3

    .line 31
    goto :goto_1

    .line 32
    :cond_1
    iget-object v3, p0, Lcom/join/mgps/adapter/ForumProfileCommentAdapter;->b:Landroid/content/Context;

    .line 33
    .line 34
    invoke-static {v3}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    .line 35
    .line 36
    .line 37
    move-result-object v3

    .line 38
    const v4, 0x7f0d06cd

    .line 39
    .line 40
    .line 41
    const/4 v5, 0x0

    .line 42
    invoke-virtual {v3, v4, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 43
    .line 44
    .line 45
    move-result-object v3

    .line 46
    invoke-virtual {p1, v3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 47
    .line 48
    .line 49
    :goto_1
    const v4, 0x7f0a1057

    .line 50
    .line 51
    .line 52
    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 53
    .line 54
    .line 55
    move-result-object v4

    .line 56
    check-cast v4, Landroid/widget/TextView;

    .line 57
    .line 58
    const v5, 0x7f0a1054

    .line 59
    .line 60
    .line 61
    invoke-virtual {v3, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 62
    .line 63
    .line 64
    move-result-object v3

    .line 65
    invoke-interface {p2}, Ljava/util/List;->size()I

    .line 66
    .line 67
    .line 68
    move-result v5

    .line 69
    add-int/lit8 v5, v5, -0x1

    .line 70
    .line 71
    if-ne v2, v5, :cond_2

    .line 72
    .line 73
    invoke-virtual {v3, v0}, Landroid/view/View;->setVisibility(I)V

    .line 74
    .line 75
    .line 76
    goto :goto_2

    .line 77
    :cond_2
    invoke-virtual {v3, v1}, Landroid/view/View;->setVisibility(I)V

    .line 78
    .line 79
    .line 80
    :goto_2
    invoke-interface {p2, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 81
    .line 82
    .line 83
    move-result-object v3

    .line 84
    check-cast v3, Lcom/join/mgps/dto/ForumBean$ForumProfileCommentBean;

    .line 85
    .line 86
    if-nez v3, :cond_3

    .line 87
    .line 88
    goto :goto_3

    .line 89
    :cond_3
    invoke-virtual {v3}, Lcom/join/mgps/dto/ForumBean$ForumProfileCommentBean;->getRnickname()Ljava/lang/String;

    .line 90
    .line 91
    .line 92
    move-result-object v5

    .line 93
    invoke-virtual {v3}, Lcom/join/mgps/dto/ForumBean$ForumProfileCommentBean;->getType()Ljava/lang/String;

    .line 94
    .line 95
    .line 96
    move-result-object v6

    .line 97
    invoke-virtual {v3}, Lcom/join/mgps/dto/ForumBean$ForumProfileCommentBean;->getMessage()Ljava/lang/String;

    .line 98
    .line 99
    .line 100
    move-result-object v3

    .line 101
    invoke-static {v4, v6, v5, v3}, Lcom/join/mgps/Util/r0;->B1(Landroid/widget/TextView;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 102
    .line 103
    .line 104
    :goto_3
    add-int/lit8 v2, v2, 0x1

    .line 105
    .line 106
    goto :goto_0

    .line 107
    :cond_4
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getChildCount()I

    .line 108
    .line 109
    .line 110
    move-result v0

    .line 111
    invoke-interface {p2}, Ljava/util/List;->size()I

    .line 112
    .line 113
    .line 114
    move-result v1

    .line 115
    if-le v0, v1, :cond_5

    .line 116
    .line 117
    invoke-interface {p2}, Ljava/util/List;->size()I

    .line 118
    .line 119
    .line 120
    move-result v0

    .line 121
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getChildCount()I

    .line 122
    .line 123
    .line 124
    move-result v1

    .line 125
    invoke-interface {p2}, Ljava/util/List;->size()I

    .line 126
    .line 127
    .line 128
    move-result p2

    .line 129
    sub-int/2addr v1, p2

    .line 130
    invoke-virtual {p1, v0, v1}, Landroid/view/ViewGroup;->removeViews(II)V

    .line 131
    .line 132
    .line 133
    :cond_5
    return-void

    .line 134
    :cond_6
    :goto_4
    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 135
    .line 136
    .line 137
    return-void
.end method


# virtual methods
.method public b()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/join/mgps/adapter/ForumProfileCommentAdapter$i;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/adapter/ForumProfileCommentAdapter;->c:Ljava/util/List;

    .line 2
    .line 3
    return-object v0
.end method

.method public g(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "itemBeans"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/join/mgps/adapter/ForumProfileCommentAdapter$i;",
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
    iget-object v0, p0, Lcom/join/mgps/adapter/ForumProfileCommentAdapter;->c:Ljava/util/List;

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
    iput-object v0, p0, Lcom/join/mgps/adapter/ForumProfileCommentAdapter;->c:Ljava/util/List;

    .line 14
    .line 15
    :cond_1
    iget-object v0, p0, Lcom/join/mgps/adapter/ForumProfileCommentAdapter;->c:Ljava/util/List;

    .line 16
    .line 17
    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 18
    .line 19
    .line 20
    iget-object v0, p0, Lcom/join/mgps/adapter/ForumProfileCommentAdapter;->c:Ljava/util/List;

    .line 21
    .line 22
    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 23
    .line 24
    .line 25
    return-void
.end method

.method public getCount()I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/adapter/ForumProfileCommentAdapter;->c:Ljava/util/List;

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
    iget-object v0, p0, Lcom/join/mgps/adapter/ForumProfileCommentAdapter;->c:Ljava/util/List;

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
    check-cast p1, Lcom/join/mgps/adapter/ForumProfileCommentAdapter$i;

    .line 10
    .line 11
    invoke-virtual {p1}, Lcom/join/mgps/adapter/ForumProfileCommentAdapter$i;->a()Ljava/lang/Object;

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
    iget-object v0, p0, Lcom/join/mgps/adapter/ForumProfileCommentAdapter;->c:Ljava/util/List;

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
    check-cast p1, Lcom/join/mgps/adapter/ForumProfileCommentAdapter$i;

    .line 10
    .line 11
    invoke-virtual {p1}, Lcom/join/mgps/adapter/ForumProfileCommentAdapter$i;->b()Lcom/join/mgps/adapter/ForumProfileCommentAdapter$ViewType;

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
    invoke-virtual {p0, p1}, Lcom/join/mgps/adapter/ForumProfileCommentAdapter;->getItemViewType(I)I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    sget-object v1, Lcom/join/mgps/adapter/ForumProfileCommentAdapter$ViewType;->PROFILE_HEADER:Lcom/join/mgps/adapter/ForumProfileCommentAdapter$ViewType;

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
    invoke-direct {p0, p1, p2, p3}, Lcom/join/mgps/adapter/ForumProfileCommentAdapter;->d(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    .line 14
    .line 15
    .line 16
    move-result-object p2

    .line 17
    goto :goto_0

    .line 18
    :cond_0
    sget-object v1, Lcom/join/mgps/adapter/ForumProfileCommentAdapter$ViewType;->PROFILE_MESSAGE_ITEM:Lcom/join/mgps/adapter/ForumProfileCommentAdapter$ViewType;

    .line 19
    .line 20
    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    .line 21
    .line 22
    .line 23
    move-result v1

    .line 24
    if-ne v0, v1, :cond_1

    .line 25
    .line 26
    invoke-direct {p0, p1, p2, p3}, Lcom/join/mgps/adapter/ForumProfileCommentAdapter;->e(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    .line 27
    .line 28
    .line 29
    move-result-object p2

    .line 30
    goto :goto_0

    .line 31
    :cond_1
    sget-object v1, Lcom/join/mgps/adapter/ForumProfileCommentAdapter$ViewType;->PROFILE_FOOTER:Lcom/join/mgps/adapter/ForumProfileCommentAdapter$ViewType;

    .line 32
    .line 33
    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    .line 34
    .line 35
    .line 36
    move-result v1

    .line 37
    if-ne v0, v1, :cond_2

    .line 38
    .line 39
    invoke-direct {p0, p1, p2, p3}, Lcom/join/mgps/adapter/ForumProfileCommentAdapter;->c(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    .line 40
    .line 41
    .line 42
    move-result-object p2

    .line 43
    :cond_2
    :goto_0
    return-object p2
.end method

.method public getViewTypeCount()I
    .locals 1

    .line 1
    invoke-static {}, Lcom/join/mgps/adapter/ForumProfileCommentAdapter$ViewType;->values()[Lcom/join/mgps/adapter/ForumProfileCommentAdapter$ViewType;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    array-length v0, v0

    .line 6
    return v0
.end method

.method public h(Lcom/join/mgps/adapter/ForumProfileCommentAdapter$c;)V
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
    iput-object p1, p0, Lcom/join/mgps/adapter/ForumProfileCommentAdapter;->d:Lcom/join/mgps/adapter/ForumProfileCommentAdapter$c;

    .line 2
    .line 3
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
