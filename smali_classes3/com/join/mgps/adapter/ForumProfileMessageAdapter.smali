.class public Lcom/join/mgps/adapter/ForumProfileMessageAdapter;
.super Landroid/widget/BaseAdapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/join/mgps/adapter/ForumProfileMessageAdapter$d;,
        Lcom/join/mgps/adapter/ForumProfileMessageAdapter$j;,
        Lcom/join/mgps/adapter/ForumProfileMessageAdapter$ViewType;,
        Lcom/join/mgps/adapter/ForumProfileMessageAdapter$g;,
        Lcom/join/mgps/adapter/ForumProfileMessageAdapter$e;,
        Lcom/join/mgps/adapter/ForumProfileMessageAdapter$h;,
        Lcom/join/mgps/adapter/ForumProfileMessageAdapter$f;,
        Lcom/join/mgps/adapter/ForumProfileMessageAdapter$i;,
        Lcom/join/mgps/adapter/ForumProfileMessageAdapter$k;
    }
.end annotation


# instance fields
.field private b:Landroid/content/Context;

.field private c:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/join/mgps/adapter/ForumProfileMessageAdapter$j;",
            ">;"
        }
    .end annotation
.end field

.field private d:Lcom/join/mgps/adapter/ForumProfileMessageAdapter$d;


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
    iput-object p1, p0, Lcom/join/mgps/adapter/ForumProfileMessageAdapter;->b:Landroid/content/Context;

    .line 5
    .line 6
    new-instance p1, Ljava/util/ArrayList;

    .line 7
    .line 8
    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 9
    .line 10
    .line 11
    iput-object p1, p0, Lcom/join/mgps/adapter/ForumProfileMessageAdapter;->c:Ljava/util/List;

    .line 12
    .line 13
    return-void
.end method

.method static synthetic a(Lcom/join/mgps/adapter/ForumProfileMessageAdapter;)Lcom/join/mgps/adapter/ForumProfileMessageAdapter$d;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/join/mgps/adapter/ForumProfileMessageAdapter;->d:Lcom/join/mgps/adapter/ForumProfileMessageAdapter$d;

    .line 2
    .line 3
    return-object p0
.end method

.method private c(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 8
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
    check-cast p3, Lcom/join/mgps/adapter/ForumProfileMessageAdapter$e;

    .line 8
    .line 9
    goto :goto_0

    .line 10
    :cond_0
    new-instance p3, Lcom/join/mgps/adapter/ForumProfileMessageAdapter$e;

    .line 11
    .line 12
    invoke-direct {p3, p0}, Lcom/join/mgps/adapter/ForumProfileMessageAdapter$e;-><init>(Lcom/join/mgps/adapter/ForumProfileMessageAdapter;)V

    .line 13
    .line 14
    .line 15
    iget-object v0, p0, Lcom/join/mgps/adapter/ForumProfileMessageAdapter;->b:Landroid/content/Context;

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
    const v0, 0x7f0a1281

    .line 30
    .line 31
    .line 32
    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 33
    .line 34
    .line 35
    move-result-object v0

    .line 36
    check-cast v0, Landroid/widget/RelativeLayout;

    .line 37
    .line 38
    iput-object v0, p3, Lcom/join/mgps/adapter/ForumProfileMessageAdapter$e;->d:Landroid/widget/RelativeLayout;

    .line 39
    .line 40
    const v0, 0x7f0a127f

    .line 41
    .line 42
    .line 43
    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 44
    .line 45
    .line 46
    move-result-object v0

    .line 47
    check-cast v0, Lcom/facebook/drawee/view/SimpleDraweeView;

    .line 48
    .line 49
    iput-object v0, p3, Lcom/join/mgps/adapter/ForumProfileMessageAdapter$e;->b:Lcom/facebook/drawee/view/SimpleDraweeView;

    .line 50
    .line 51
    const v0, 0x7f0a1280

    .line 52
    .line 53
    .line 54
    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 55
    .line 56
    .line 57
    move-result-object v0

    .line 58
    check-cast v0, Landroid/widget/TextView;

    .line 59
    .line 60
    iput-object v0, p3, Lcom/join/mgps/adapter/ForumProfileMessageAdapter$e;->c:Landroid/widget/TextView;

    .line 61
    .line 62
    invoke-virtual {p2, p3}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 63
    .line 64
    .line 65
    :goto_0
    invoke-virtual {p0, p1}, Lcom/join/mgps/adapter/ForumProfileMessageAdapter;->getItem(I)Ljava/lang/Object;

    .line 66
    .line 67
    .line 68
    move-result-object p1

    .line 69
    check-cast p1, Lcom/join/mgps/adapter/ForumProfileMessageAdapter$j$a;

    .line 70
    .line 71
    if-nez p1, :cond_1

    .line 72
    .line 73
    return-object p2

    .line 74
    :cond_1
    iget-object v0, p1, Lcom/join/mgps/adapter/ForumProfileMessageAdapter$j$a;->b:Ljava/lang/String;

    .line 75
    .line 76
    invoke-static {v0}, Lcom/join/mgps/Util/t2;->h(Ljava/lang/String;)Z

    .line 77
    .line 78
    .line 79
    move-result v0

    .line 80
    if-eqz v0, :cond_2

    .line 81
    .line 82
    iget-object v0, p3, Lcom/join/mgps/adapter/ForumProfileMessageAdapter$e;->b:Lcom/facebook/drawee/view/SimpleDraweeView;

    .line 83
    .line 84
    const/16 v1, 0x8

    .line 85
    .line 86
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 87
    .line 88
    .line 89
    goto :goto_1

    .line 90
    :cond_2
    iget-object v0, p3, Lcom/join/mgps/adapter/ForumProfileMessageAdapter$e;->b:Lcom/facebook/drawee/view/SimpleDraweeView;

    .line 91
    .line 92
    const/4 v1, 0x0

    .line 93
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 94
    .line 95
    .line 96
    iget-object v0, p3, Lcom/join/mgps/adapter/ForumProfileMessageAdapter$e;->b:Lcom/facebook/drawee/view/SimpleDraweeView;

    .line 97
    .line 98
    iget-object v1, p1, Lcom/join/mgps/adapter/ForumProfileMessageAdapter$j$a;->b:Ljava/lang/String;

    .line 99
    .line 100
    invoke-static {v0, v1}, Lcom/join/android/app/common/utils/l;->h(Lcom/facebook/drawee/view/SimpleDraweeView;Ljava/lang/String;)V

    .line 101
    .line 102
    .line 103
    :goto_1
    iget-object v0, p3, Lcom/join/mgps/adapter/ForumProfileMessageAdapter$e;->c:Landroid/widget/TextView;

    .line 104
    .line 105
    iget-object v1, p1, Lcom/join/mgps/adapter/ForumProfileMessageAdapter$j$a;->c:Ljava/lang/String;

    .line 106
    .line 107
    const-string v2, ""

    .line 108
    .line 109
    invoke-static {v0, v1, v2}, Lcom/join/mgps/Util/r0;->D1(Landroid/widget/TextView;Ljava/lang/String;Ljava/lang/String;)V

    .line 110
    .line 111
    .line 112
    iget-object p3, p3, Lcom/join/mgps/adapter/ForumProfileMessageAdapter$e;->d:Landroid/widget/RelativeLayout;

    .line 113
    .line 114
    iget v0, p1, Lcom/join/mgps/adapter/ForumProfileMessageAdapter$j$a;->a:I

    .line 115
    .line 116
    invoke-direct {p0, p3, v0}, Lcom/join/mgps/adapter/ForumProfileMessageAdapter;->f(Landroid/view/View;I)V

    .line 117
    .line 118
    .line 119
    iget-object v3, p1, Lcom/join/mgps/adapter/ForumProfileMessageAdapter$j$a;->e:Ljava/lang/String;

    .line 120
    .line 121
    iget v4, p1, Lcom/join/mgps/adapter/ForumProfileMessageAdapter$j$a;->a:I

    .line 122
    .line 123
    iget v5, p1, Lcom/join/mgps/adapter/ForumProfileMessageAdapter$j$a;->d:I

    .line 124
    .line 125
    iget v6, p1, Lcom/join/mgps/adapter/ForumProfileMessageAdapter$j$a;->g:I

    .line 126
    .line 127
    iget-object v7, p1, Lcom/join/mgps/adapter/ForumProfileMessageAdapter$j$a;->f:Ljava/lang/String;

    .line 128
    .line 129
    move-object v1, p0

    .line 130
    move-object v2, p2

    .line 131
    invoke-virtual/range {v1 .. v7}, Lcom/join/mgps/adapter/ForumProfileMessageAdapter;->i(Landroid/view/View;Ljava/lang/String;IIILjava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 132
    .line 133
    .line 134
    goto :goto_2

    .line 135
    :catch_0
    move-exception p1

    .line 136
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 137
    .line 138
    .line 139
    :goto_2
    return-object p2
.end method

.method private d(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 13
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
    move-object v8, p0

    .line 2
    if-eqz p2, :cond_0

    .line 3
    .line 4
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    .line 5
    .line 6
    .line 7
    move-result-object v0

    .line 8
    check-cast v0, Lcom/join/mgps/adapter/ForumProfileMessageAdapter$g;

    .line 9
    .line 10
    move-object v9, p2

    .line 11
    goto/16 :goto_0

    .line 12
    .line 13
    :cond_0
    new-instance v0, Lcom/join/mgps/adapter/ForumProfileMessageAdapter$g;

    .line 14
    .line 15
    invoke-direct {v0, p0}, Lcom/join/mgps/adapter/ForumProfileMessageAdapter$g;-><init>(Lcom/join/mgps/adapter/ForumProfileMessageAdapter;)V

    .line 16
    .line 17
    .line 18
    iget-object v1, v8, Lcom/join/mgps/adapter/ForumProfileMessageAdapter;->b:Landroid/content/Context;

    .line 19
    .line 20
    invoke-static {v1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    .line 21
    .line 22
    .line 23
    move-result-object v1

    .line 24
    const v2, 0x7f0d06cb

    .line 25
    .line 26
    .line 27
    const/4 v3, 0x0

    .line 28
    invoke-virtual {v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 29
    .line 30
    .line 31
    move-result-object v1

    .line 32
    const v2, 0x7f0a06a1

    .line 33
    .line 34
    .line 35
    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 36
    .line 37
    .line 38
    move-result-object v2

    .line 39
    iput-object v2, v0, Lcom/join/mgps/adapter/ForumProfileMessageAdapter$g;->e:Landroid/view/View;

    .line 40
    .line 41
    const v2, 0x7f0a069e

    .line 42
    .line 43
    .line 44
    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 45
    .line 46
    .line 47
    move-result-object v2

    .line 48
    check-cast v2, Lcom/facebook/drawee/view/SimpleDraweeView;

    .line 49
    .line 50
    iput-object v2, v0, Lcom/join/mgps/adapter/ForumProfileMessageAdapter$g;->b:Lcom/facebook/drawee/view/SimpleDraweeView;

    .line 51
    .line 52
    const v2, 0x7f0a06a8

    .line 53
    .line 54
    .line 55
    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 56
    .line 57
    .line 58
    move-result-object v2

    .line 59
    check-cast v2, Landroid/widget/TextView;

    .line 60
    .line 61
    iput-object v2, v0, Lcom/join/mgps/adapter/ForumProfileMessageAdapter$g;->c:Landroid/widget/TextView;

    .line 62
    .line 63
    const v2, 0x7f0a069d

    .line 64
    .line 65
    .line 66
    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 67
    .line 68
    .line 69
    move-result-object v2

    .line 70
    check-cast v2, Landroid/widget/TextView;

    .line 71
    .line 72
    iput-object v2, v0, Lcom/join/mgps/adapter/ForumProfileMessageAdapter$g;->d:Landroid/widget/TextView;

    .line 73
    .line 74
    const v2, 0x7f0a0683

    .line 75
    .line 76
    .line 77
    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 78
    .line 79
    .line 80
    move-result-object v2

    .line 81
    check-cast v2, Landroid/widget/RelativeLayout;

    .line 82
    .line 83
    iput-object v2, v0, Lcom/join/mgps/adapter/ForumProfileMessageAdapter$g;->f:Landroid/widget/RelativeLayout;

    .line 84
    .line 85
    const v2, 0x7f0a1089

    .line 86
    .line 87
    .line 88
    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 89
    .line 90
    .line 91
    move-result-object v2

    .line 92
    check-cast v2, Landroid/widget/ImageView;

    .line 93
    .line 94
    iput-object v2, v0, Lcom/join/mgps/adapter/ForumProfileMessageAdapter$g;->g:Landroid/widget/ImageView;

    .line 95
    .line 96
    const v2, 0x7f0a136f

    .line 97
    .line 98
    .line 99
    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 100
    .line 101
    .line 102
    move-result-object v2

    .line 103
    check-cast v2, Landroid/widget/ImageView;

    .line 104
    .line 105
    iput-object v2, v0, Lcom/join/mgps/adapter/ForumProfileMessageAdapter$g;->h:Landroid/widget/ImageView;

    .line 106
    .line 107
    const v2, 0x7f0a1ba6

    .line 108
    .line 109
    .line 110
    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 111
    .line 112
    .line 113
    move-result-object v2

    .line 114
    check-cast v2, Lcom/join/mgps/customview/VipView;

    .line 115
    .line 116
    iput-object v2, v0, Lcom/join/mgps/adapter/ForumProfileMessageAdapter$g;->i:Lcom/join/mgps/customview/VipView;

    .line 117
    .line 118
    const v2, 0x7f0a1186

    .line 119
    .line 120
    .line 121
    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 122
    .line 123
    .line 124
    move-result-object v2

    .line 125
    check-cast v2, Landroid/widget/ImageView;

    .line 126
    .line 127
    iput-object v2, v0, Lcom/join/mgps/adapter/ForumProfileMessageAdapter$g;->j:Landroid/widget/ImageView;

    .line 128
    .line 129
    const v2, 0x7f0a043d

    .line 130
    .line 131
    .line 132
    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 133
    .line 134
    .line 135
    move-result-object v2

    .line 136
    check-cast v2, Landroid/widget/TextView;

    .line 137
    .line 138
    iput-object v2, v0, Lcom/join/mgps/adapter/ForumProfileMessageAdapter$g;->k:Landroid/widget/TextView;

    .line 139
    .line 140
    invoke-virtual {v1, v0}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 141
    .line 142
    .line 143
    move-object v9, v1

    .line 144
    :goto_0
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/join/mgps/adapter/ForumProfileMessageAdapter;->getItem(I)Ljava/lang/Object;

    .line 145
    .line 146
    .line 147
    move-result-object v1

    .line 148
    move-object v10, v1

    .line 149
    check-cast v10, Lcom/join/mgps/adapter/ForumProfileMessageAdapter$j$b;

    .line 150
    .line 151
    if-nez v10, :cond_1

    .line 152
    .line 153
    return-object v9

    .line 154
    :cond_1
    iget-object v1, v8, Lcom/join/mgps/adapter/ForumProfileMessageAdapter;->b:Landroid/content/Context;

    .line 155
    .line 156
    iget-object v2, v0, Lcom/join/mgps/adapter/ForumProfileMessageAdapter$g;->c:Landroid/widget/TextView;

    .line 157
    .line 158
    iget v3, v10, Lcom/join/mgps/adapter/ForumProfileMessageAdapter$j$b;->m:I

    .line 159
    .line 160
    iget v4, v10, Lcom/join/mgps/adapter/ForumProfileMessageAdapter$j$b;->n:I

    .line 161
    .line 162
    const v5, 0x7f06014c

    .line 163
    .line 164
    .line 165
    invoke-static {v1, v2, v3, v4, v5}, Lcom/join/mgps/Util/UtilsMy;->R3(Landroid/content/Context;Landroid/widget/TextView;III)Z

    .line 166
    .line 167
    .line 168
    iget-object v1, v0, Lcom/join/mgps/adapter/ForumProfileMessageAdapter$g;->i:Lcom/join/mgps/customview/VipView;

    .line 169
    .line 170
    iget v2, v10, Lcom/join/mgps/adapter/ForumProfileMessageAdapter$j$b;->m:I

    .line 171
    .line 172
    iget v3, v10, Lcom/join/mgps/adapter/ForumProfileMessageAdapter$j$b;->n:I

    .line 173
    .line 174
    invoke-virtual {v1, v2, v3}, Lcom/join/mgps/customview/VipView;->setVipData(II)V

    .line 175
    .line 176
    .line 177
    iget-object v1, v0, Lcom/join/mgps/adapter/ForumProfileMessageAdapter$g;->f:Landroid/widget/RelativeLayout;

    .line 178
    .line 179
    const/4 v11, 0x0

    .line 180
    invoke-virtual {v1, v11}, Landroid/view/View;->setVisibility(I)V

    .line 181
    .line 182
    .line 183
    iget-object v1, v0, Lcom/join/mgps/adapter/ForumProfileMessageAdapter$g;->g:Landroid/widget/ImageView;

    .line 184
    .line 185
    const/16 v12, 0x8

    .line 186
    .line 187
    invoke-virtual {v1, v12}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 188
    .line 189
    .line 190
    iget-object v1, v0, Lcom/join/mgps/adapter/ForumProfileMessageAdapter$g;->h:Landroid/widget/ImageView;

    .line 191
    .line 192
    invoke-virtual {v1, v11}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 193
    .line 194
    .line 195
    iget-boolean v1, v10, Lcom/join/mgps/adapter/ForumProfileMessageAdapter$j$b;->a:Z

    .line 196
    .line 197
    if-eqz v1, :cond_2

    .line 198
    .line 199
    iget-object v1, v0, Lcom/join/mgps/adapter/ForumProfileMessageAdapter$g;->e:Landroid/view/View;

    .line 200
    .line 201
    invoke-virtual {v1, v12}, Landroid/view/View;->setVisibility(I)V

    .line 202
    .line 203
    .line 204
    goto :goto_1

    .line 205
    :cond_2
    iget-object v1, v0, Lcom/join/mgps/adapter/ForumProfileMessageAdapter$g;->e:Landroid/view/View;

    .line 206
    .line 207
    invoke-virtual {v1, v11}, Landroid/view/View;->setVisibility(I)V

    .line 208
    .line 209
    .line 210
    :goto_1
    iget-boolean v1, v10, Lcom/join/mgps/adapter/ForumProfileMessageAdapter$j$b;->h:Z

    .line 211
    .line 212
    if-eqz v1, :cond_3

    .line 213
    .line 214
    iget-object v1, v0, Lcom/join/mgps/adapter/ForumProfileMessageAdapter$g;->j:Landroid/widget/ImageView;

    .line 215
    .line 216
    invoke-virtual {v1, v11}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 217
    .line 218
    .line 219
    goto :goto_2

    .line 220
    :cond_3
    iget-object v1, v0, Lcom/join/mgps/adapter/ForumProfileMessageAdapter$g;->j:Landroid/widget/ImageView;

    .line 221
    .line 222
    invoke-virtual {v1, v12}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 223
    .line 224
    .line 225
    :goto_2
    iget-object v1, v0, Lcom/join/mgps/adapter/ForumProfileMessageAdapter$g;->c:Landroid/widget/TextView;

    .line 226
    .line 227
    iget-object v2, v10, Lcom/join/mgps/adapter/ForumProfileMessageAdapter$j$b;->c:Ljava/lang/String;

    .line 228
    .line 229
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 230
    .line 231
    .line 232
    iget-object v1, v0, Lcom/join/mgps/adapter/ForumProfileMessageAdapter$g;->d:Landroid/widget/TextView;

    .line 233
    .line 234
    iget-wide v2, v10, Lcom/join/mgps/adapter/ForumProfileMessageAdapter$j$b;->d:J

    .line 235
    .line 236
    const-wide/16 v4, 0x3e8

    .line 237
    .line 238
    mul-long v2, v2, v4

    .line 239
    .line 240
    invoke-static {v2, v3}, Lcom/join/android/app/common/utils/i;->a(J)Ljava/lang/String;

    .line 241
    .line 242
    .line 243
    move-result-object v2

    .line 244
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 245
    .line 246
    .line 247
    iget-object v1, v0, Lcom/join/mgps/adapter/ForumProfileMessageAdapter$g;->b:Lcom/facebook/drawee/view/SimpleDraweeView;

    .line 248
    .line 249
    iget-object v2, v10, Lcom/join/mgps/adapter/ForumProfileMessageAdapter$j$b;->b:Ljava/lang/String;

    .line 250
    .line 251
    invoke-static {v1, v2}, Lcom/join/android/app/common/utils/l;->y(Lcom/facebook/drawee/view/SimpleDraweeView;Ljava/lang/String;)V

    .line 252
    .line 253
    .line 254
    iget-object v1, v0, Lcom/join/mgps/adapter/ForumProfileMessageAdapter$g;->b:Lcom/facebook/drawee/view/SimpleDraweeView;

    .line 255
    .line 256
    new-instance v2, Lcom/join/mgps/adapter/ForumProfileMessageAdapter$a;

    .line 257
    .line 258
    invoke-direct {v2, p0, v10}, Lcom/join/mgps/adapter/ForumProfileMessageAdapter$a;-><init>(Lcom/join/mgps/adapter/ForumProfileMessageAdapter;Lcom/join/mgps/adapter/ForumProfileMessageAdapter$j$b;)V

    .line 259
    .line 260
    .line 261
    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 262
    .line 263
    .line 264
    iget-object v3, v10, Lcom/join/mgps/adapter/ForumProfileMessageAdapter$j$b;->j:Ljava/lang/String;

    .line 265
    .line 266
    iget v4, v10, Lcom/join/mgps/adapter/ForumProfileMessageAdapter$j$b;->f:I

    .line 267
    .line 268
    iget v5, v10, Lcom/join/mgps/adapter/ForumProfileMessageAdapter$j$b;->i:I

    .line 269
    .line 270
    iget v6, v10, Lcom/join/mgps/adapter/ForumProfileMessageAdapter$j$b;->k:I

    .line 271
    .line 272
    iget-object v7, v10, Lcom/join/mgps/adapter/ForumProfileMessageAdapter$j$b;->c:Ljava/lang/String;

    .line 273
    .line 274
    move-object v1, p0

    .line 275
    move-object v2, v9

    .line 276
    invoke-virtual/range {v1 .. v7}, Lcom/join/mgps/adapter/ForumProfileMessageAdapter;->i(Landroid/view/View;Ljava/lang/String;IIILjava/lang/String;)V

    .line 277
    .line 278
    .line 279
    iget-object v2, v0, Lcom/join/mgps/adapter/ForumProfileMessageAdapter$g;->h:Landroid/widget/ImageView;

    .line 280
    .line 281
    iget-object v3, v10, Lcom/join/mgps/adapter/ForumProfileMessageAdapter$j$b;->j:Ljava/lang/String;

    .line 282
    .line 283
    iget v4, v10, Lcom/join/mgps/adapter/ForumProfileMessageAdapter$j$b;->f:I

    .line 284
    .line 285
    iget v5, v10, Lcom/join/mgps/adapter/ForumProfileMessageAdapter$j$b;->i:I

    .line 286
    .line 287
    iget v6, v10, Lcom/join/mgps/adapter/ForumProfileMessageAdapter$j$b;->k:I

    .line 288
    .line 289
    iget-object v7, v10, Lcom/join/mgps/adapter/ForumProfileMessageAdapter$j$b;->c:Ljava/lang/String;

    .line 290
    .line 291
    move-object v1, p0

    .line 292
    invoke-virtual/range {v1 .. v7}, Lcom/join/mgps/adapter/ForumProfileMessageAdapter;->i(Landroid/view/View;Ljava/lang/String;IIILjava/lang/String;)V

    .line 293
    .line 294
    .line 295
    const/4 v1, 0x3

    .line 296
    new-array v1, v1, [Landroid/view/View;

    .line 297
    .line 298
    iget-object v2, v0, Lcom/join/mgps/adapter/ForumProfileMessageAdapter$g;->b:Lcom/facebook/drawee/view/SimpleDraweeView;

    .line 299
    .line 300
    aput-object v2, v1, v11

    .line 301
    .line 302
    iget-object v2, v0, Lcom/join/mgps/adapter/ForumProfileMessageAdapter$g;->c:Landroid/widget/TextView;

    .line 303
    .line 304
    const/4 v3, 0x1

    .line 305
    aput-object v2, v1, v3

    .line 306
    .line 307
    iget-object v2, v0, Lcom/join/mgps/adapter/ForumProfileMessageAdapter$g;->d:Landroid/widget/TextView;

    .line 308
    .line 309
    const/4 v4, 0x2

    .line 310
    aput-object v2, v1, v4

    .line 311
    .line 312
    invoke-static {v1}, Lcom/join/mgps/Util/r0;->S0([Landroid/view/View;)V

    .line 313
    .line 314
    .line 315
    new-array v1, v3, [Landroid/view/View;

    .line 316
    .line 317
    iget-object v2, v0, Lcom/join/mgps/adapter/ForumProfileMessageAdapter$g;->i:Lcom/join/mgps/customview/VipView;

    .line 318
    .line 319
    aput-object v2, v1, v11

    .line 320
    .line 321
    invoke-static {v1}, Lcom/join/mgps/Util/r0;->U0([Landroid/view/View;)V

    .line 322
    .line 323
    .line 324
    iget-object v1, v10, Lcom/join/mgps/adapter/ForumProfileMessageAdapter$j$b;->o:Ljava/lang/String;

    .line 325
    .line 326
    iget-object v2, v10, Lcom/join/mgps/adapter/ForumProfileMessageAdapter$j$b;->p:Ljava/lang/String;

    .line 327
    .line 328
    iget-object v3, v0, Lcom/join/mgps/adapter/ForumProfileMessageAdapter$g;->k:Landroid/widget/TextView;

    .line 329
    .line 330
    if-eqz v3, :cond_6

    .line 331
    .line 332
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 333
    .line 334
    .line 335
    move-result v3

    .line 336
    if-nez v3, :cond_5

    .line 337
    .line 338
    iget-object v3, v0, Lcom/join/mgps/adapter/ForumProfileMessageAdapter$g;->k:Landroid/widget/TextView;

    .line 339
    .line 340
    invoke-virtual {v3, v11}, Landroid/view/View;->setVisibility(I)V

    .line 341
    .line 342
    .line 343
    iget-object v3, v0, Lcom/join/mgps/adapter/ForumProfileMessageAdapter$g;->k:Landroid/widget/TextView;

    .line 344
    .line 345
    invoke-virtual {v3, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 346
    .line 347
    .line 348
    iget-object v1, v8, Lcom/join/mgps/adapter/ForumProfileMessageAdapter;->b:Landroid/content/Context;

    .line 349
    .line 350
    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 351
    .line 352
    .line 353
    move-result-object v1

    .line 354
    const v3, 0x7f0805d1

    .line 355
    .line 356
    .line 357
    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    .line 358
    .line 359
    .line 360
    move-result-object v1

    .line 361
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 362
    .line 363
    .line 364
    move-result v3

    .line 365
    if-nez v3, :cond_4

    .line 366
    .line 367
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    .line 368
    .line 369
    .line 370
    move-result v3

    .line 371
    const/4 v4, 0x7

    .line 372
    if-ne v3, v4, :cond_4

    .line 373
    .line 374
    const-string v3, "#"

    .line 375
    .line 376
    invoke-virtual {v2, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 377
    .line 378
    .line 379
    move-result v3

    .line 380
    if-eqz v3, :cond_4

    .line 381
    .line 382
    goto :goto_3

    .line 383
    :cond_4
    const-string v2, "#2fccdf"

    .line 384
    .line 385
    :goto_3
    new-instance v3, Landroid/graphics/LightingColorFilter;

    .line 386
    .line 387
    invoke-static {v2}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    .line 388
    .line 389
    .line 390
    move-result v4

    .line 391
    invoke-static {v2}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    .line 392
    .line 393
    .line 394
    move-result v2

    .line 395
    invoke-direct {v3, v4, v2}, Landroid/graphics/LightingColorFilter;-><init>(II)V

    .line 396
    .line 397
    .line 398
    invoke-virtual {v1, v3}, Landroid/graphics/drawable/Drawable;->setColorFilter(Landroid/graphics/ColorFilter;)V

    .line 399
    .line 400
    .line 401
    iget-object v0, v0, Lcom/join/mgps/adapter/ForumProfileMessageAdapter$g;->k:Landroid/widget/TextView;

    .line 402
    .line 403
    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 404
    .line 405
    .line 406
    goto :goto_4

    .line 407
    :cond_5
    iget-object v0, v0, Lcom/join/mgps/adapter/ForumProfileMessageAdapter$g;->k:Landroid/widget/TextView;

    .line 408
    .line 409
    invoke-virtual {v0, v12}, Landroid/view/View;->setVisibility(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 410
    .line 411
    .line 412
    goto :goto_4

    .line 413
    :catch_0
    move-exception v0

    .line 414
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 415
    .line 416
    .line 417
    :cond_6
    :goto_4
    return-object v9
.end method

.method private e(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 9
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
    const-string p3, "#*#"

    .line 2
    .line 3
    if-eqz p2, :cond_0

    .line 4
    .line 5
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    check-cast v0, Lcom/join/mgps/adapter/ForumProfileMessageAdapter$h;

    .line 10
    .line 11
    goto :goto_0

    .line 12
    :cond_0
    new-instance v0, Lcom/join/mgps/adapter/ForumProfileMessageAdapter$h;

    .line 13
    .line 14
    invoke-direct {v0, p0}, Lcom/join/mgps/adapter/ForumProfileMessageAdapter$h;-><init>(Lcom/join/mgps/adapter/ForumProfileMessageAdapter;)V

    .line 15
    .line 16
    .line 17
    iget-object p2, p0, Lcom/join/mgps/adapter/ForumProfileMessageAdapter;->b:Landroid/content/Context;

    .line 18
    .line 19
    invoke-static {p2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    .line 20
    .line 21
    .line 22
    move-result-object p2

    .line 23
    const v1, 0x7f0d06cd

    .line 24
    .line 25
    .line 26
    const/4 v2, 0x0

    .line 27
    invoke-virtual {p2, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 28
    .line 29
    .line 30
    move-result-object p2

    .line 31
    const v1, 0x7f0a1057

    .line 32
    .line 33
    .line 34
    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 35
    .line 36
    .line 37
    move-result-object v1

    .line 38
    check-cast v1, Landroid/widget/TextView;

    .line 39
    .line 40
    iput-object v1, v0, Lcom/join/mgps/adapter/ForumProfileMessageAdapter$h;->b:Landroid/widget/TextView;

    .line 41
    .line 42
    const v1, 0x7f0a1054

    .line 43
    .line 44
    .line 45
    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 46
    .line 47
    .line 48
    move-result-object v1

    .line 49
    iput-object v1, v0, Lcom/join/mgps/adapter/ForumProfileMessageAdapter$h;->c:Landroid/view/View;

    .line 50
    .line 51
    invoke-virtual {p2, v0}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 52
    .line 53
    .line 54
    :goto_0
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/join/mgps/adapter/ForumProfileMessageAdapter;->getItem(I)Ljava/lang/Object;

    .line 55
    .line 56
    .line 57
    move-result-object p1

    .line 58
    check-cast p1, Lcom/join/mgps/adapter/ForumProfileMessageAdapter$j$c;

    .line 59
    .line 60
    if-nez p1, :cond_1

    .line 61
    .line 62
    return-object p2

    .line 63
    :cond_1
    iget-object v1, v0, Lcom/join/mgps/adapter/ForumProfileMessageAdapter$h;->c:Landroid/view/View;

    .line 64
    .line 65
    const/16 v2, 0x8

    .line 66
    .line 67
    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 68
    .line 69
    .line 70
    iget-boolean v1, p1, Lcom/join/mgps/adapter/ForumProfileMessageAdapter$j$c;->g:Z

    .line 71
    .line 72
    if-eqz v1, :cond_2

    .line 73
    .line 74
    iget-object v1, p1, Lcom/join/mgps/adapter/ForumProfileMessageAdapter$j$c;->c:Ljava/lang/String;

    .line 75
    .line 76
    invoke-virtual {v1, p3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 77
    .line 78
    .line 79
    move-result v1

    .line 80
    if-nez v1, :cond_2

    .line 81
    .line 82
    new-instance v1, Ljava/lang/StringBuilder;

    .line 83
    .line 84
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 85
    .line 86
    .line 87
    iget-object v2, p1, Lcom/join/mgps/adapter/ForumProfileMessageAdapter$j$c;->c:Ljava/lang/String;

    .line 88
    .line 89
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 90
    .line 91
    .line 92
    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 93
    .line 94
    .line 95
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 96
    .line 97
    .line 98
    move-result-object p3

    .line 99
    iput-object p3, p1, Lcom/join/mgps/adapter/ForumProfileMessageAdapter$j$c;->c:Ljava/lang/String;

    .line 100
    .line 101
    :cond_2
    iget-object p3, v0, Lcom/join/mgps/adapter/ForumProfileMessageAdapter$h;->b:Landroid/widget/TextView;

    .line 102
    .line 103
    iget-object v0, p1, Lcom/join/mgps/adapter/ForumProfileMessageAdapter$j$c;->b:Ljava/lang/String;

    .line 104
    .line 105
    iget-object v1, p1, Lcom/join/mgps/adapter/ForumProfileMessageAdapter$j$c;->c:Ljava/lang/String;

    .line 106
    .line 107
    iget-object v2, p1, Lcom/join/mgps/adapter/ForumProfileMessageAdapter$j$c;->d:Ljava/lang/String;

    .line 108
    .line 109
    invoke-static {p3, v0, v1, v2}, Lcom/join/mgps/Util/r0;->B1(Landroid/widget/TextView;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 110
    .line 111
    .line 112
    iget-object v4, p1, Lcom/join/mgps/adapter/ForumProfileMessageAdapter$j$c;->b:Ljava/lang/String;

    .line 113
    .line 114
    iget v5, p1, Lcom/join/mgps/adapter/ForumProfileMessageAdapter$j$c;->a:I

    .line 115
    .line 116
    iget v6, p1, Lcom/join/mgps/adapter/ForumProfileMessageAdapter$j$c;->e:I

    .line 117
    .line 118
    iget v7, p1, Lcom/join/mgps/adapter/ForumProfileMessageAdapter$j$c;->f:I

    .line 119
    .line 120
    iget-object v8, p1, Lcom/join/mgps/adapter/ForumProfileMessageAdapter$j$c;->c:Ljava/lang/String;

    .line 121
    .line 122
    move-object v2, p0

    .line 123
    move-object v3, p2

    .line 124
    invoke-virtual/range {v2 .. v8}, Lcom/join/mgps/adapter/ForumProfileMessageAdapter;->i(Landroid/view/View;Ljava/lang/String;IIILjava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 125
    .line 126
    .line 127
    goto :goto_1

    .line 128
    :catch_0
    move-exception p1

    .line 129
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 130
    .line 131
    .line 132
    :goto_1
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
    new-instance v0, Lcom/join/mgps/adapter/ForumProfileMessageAdapter$b;

    .line 2
    .line 3
    invoke-direct {v0, p0, p2}, Lcom/join/mgps/adapter/ForumProfileMessageAdapter$b;-><init>(Lcom/join/mgps/adapter/ForumProfileMessageAdapter;I)V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 7
    .line 8
    .line 9
    return-void
.end method

.method private g(Landroid/view/View;IIILjava/lang/String;)V
    .locals 7
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x10,
            0x10,
            0x10,
            0x10
        }
        names = {
            "v",
            "pid",
            "cid",
            "rid",
            "fromNickName"
        }
    .end annotation

    .line 1
    new-instance v6, Lcom/join/mgps/adapter/ForumProfileMessageAdapter$c;

    .line 2
    .line 3
    move-object v0, v6

    .line 4
    move-object v1, p0

    .line 5
    move v2, p2

    .line 6
    move v3, p3

    .line 7
    move v4, p4

    .line 8
    move-object v5, p5

    .line 9
    invoke-direct/range {v0 .. v5}, Lcom/join/mgps/adapter/ForumProfileMessageAdapter$c;-><init>(Lcom/join/mgps/adapter/ForumProfileMessageAdapter;IIILjava/lang/String;)V

    .line 10
    .line 11
    .line 12
    invoke-virtual {p1, v6}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 13
    .line 14
    .line 15
    return-void
.end method

.method private k(Landroid/widget/LinearLayout;Ljava/util/List;)V
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
    iget-object v3, p0, Lcom/join/mgps/adapter/ForumProfileMessageAdapter;->b:Landroid/content/Context;

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
            "Lcom/join/mgps/adapter/ForumProfileMessageAdapter$j;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/adapter/ForumProfileMessageAdapter;->c:Ljava/util/List;

    .line 2
    .line 3
    return-object v0
.end method

.method public getCount()I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/adapter/ForumProfileMessageAdapter;->c:Ljava/util/List;

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
    iget-object v0, p0, Lcom/join/mgps/adapter/ForumProfileMessageAdapter;->c:Ljava/util/List;

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
    check-cast p1, Lcom/join/mgps/adapter/ForumProfileMessageAdapter$j;

    .line 10
    .line 11
    invoke-virtual {p1}, Lcom/join/mgps/adapter/ForumProfileMessageAdapter$j;->a()Ljava/lang/Object;

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
    iget-object v0, p0, Lcom/join/mgps/adapter/ForumProfileMessageAdapter;->c:Ljava/util/List;

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
    check-cast p1, Lcom/join/mgps/adapter/ForumProfileMessageAdapter$j;

    .line 10
    .line 11
    invoke-virtual {p1}, Lcom/join/mgps/adapter/ForumProfileMessageAdapter$j;->b()Lcom/join/mgps/adapter/ForumProfileMessageAdapter$ViewType;

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
    invoke-virtual {p0, p1}, Lcom/join/mgps/adapter/ForumProfileMessageAdapter;->getItemViewType(I)I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    sget-object v1, Lcom/join/mgps/adapter/ForumProfileMessageAdapter$ViewType;->PROFILE_HEADER:Lcom/join/mgps/adapter/ForumProfileMessageAdapter$ViewType;

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
    invoke-direct {p0, p1, p2, p3}, Lcom/join/mgps/adapter/ForumProfileMessageAdapter;->d(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    .line 14
    .line 15
    .line 16
    move-result-object p2

    .line 17
    goto :goto_0

    .line 18
    :cond_0
    sget-object v1, Lcom/join/mgps/adapter/ForumProfileMessageAdapter$ViewType;->PROFILE_MESSAGE_ITEM:Lcom/join/mgps/adapter/ForumProfileMessageAdapter$ViewType;

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
    invoke-direct {p0, p1, p2, p3}, Lcom/join/mgps/adapter/ForumProfileMessageAdapter;->e(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    .line 27
    .line 28
    .line 29
    move-result-object p2

    .line 30
    goto :goto_0

    .line 31
    :cond_1
    sget-object v1, Lcom/join/mgps/adapter/ForumProfileMessageAdapter$ViewType;->PROFILE_FOOTER:Lcom/join/mgps/adapter/ForumProfileMessageAdapter$ViewType;

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
    invoke-direct {p0, p1, p2, p3}, Lcom/join/mgps/adapter/ForumProfileMessageAdapter;->c(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

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
    invoke-static {}, Lcom/join/mgps/adapter/ForumProfileMessageAdapter$ViewType;->values()[Lcom/join/mgps/adapter/ForumProfileMessageAdapter$ViewType;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    array-length v0, v0

    .line 6
    return v0
.end method

.method public h(Ljava/util/List;)V
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
            "Lcom/join/mgps/adapter/ForumProfileMessageAdapter$j;",
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
    iget-object v0, p0, Lcom/join/mgps/adapter/ForumProfileMessageAdapter;->c:Ljava/util/List;

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
    iput-object v0, p0, Lcom/join/mgps/adapter/ForumProfileMessageAdapter;->c:Ljava/util/List;

    .line 14
    .line 15
    :cond_1
    iget-object v0, p0, Lcom/join/mgps/adapter/ForumProfileMessageAdapter;->c:Ljava/util/List;

    .line 16
    .line 17
    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 18
    .line 19
    .line 20
    iget-object v0, p0, Lcom/join/mgps/adapter/ForumProfileMessageAdapter;->c:Ljava/util/List;

    .line 21
    .line 22
    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 23
    .line 24
    .line 25
    return-void
.end method

.method i(Landroid/view/View;Ljava/lang/String;IIILjava/lang/String;)V
    .locals 7
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "v",
            "fromType",
            "pid",
            "cid",
            "rid",
            "fromNickName"
        }
    .end annotation

    .line 1
    const-string v0, "comment"

    .line 2
    .line 3
    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    const/4 v5, 0x0

    .line 10
    move-object v1, p0

    .line 11
    move-object v2, p1

    .line 12
    move v3, p3

    .line 13
    move v4, p4

    .line 14
    move-object v6, p6

    .line 15
    invoke-direct/range {v1 .. v6}, Lcom/join/mgps/adapter/ForumProfileMessageAdapter;->g(Landroid/view/View;IIILjava/lang/String;)V

    .line 16
    .line 17
    .line 18
    goto :goto_0

    .line 19
    :cond_0
    const-string v0, "reply"

    .line 20
    .line 21
    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 22
    .line 23
    .line 24
    move-result v0

    .line 25
    if-eqz v0, :cond_1

    .line 26
    .line 27
    move-object v0, p0

    .line 28
    move-object v1, p1

    .line 29
    move v2, p3

    .line 30
    move v3, p4

    .line 31
    move v4, p5

    .line 32
    move-object v5, p6

    .line 33
    invoke-direct/range {v0 .. v5}, Lcom/join/mgps/adapter/ForumProfileMessageAdapter;->g(Landroid/view/View;IIILjava/lang/String;)V

    .line 34
    .line 35
    .line 36
    goto :goto_0

    .line 37
    :cond_1
    const-string p4, "praise"

    .line 38
    .line 39
    invoke-virtual {p2, p4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 40
    .line 41
    .line 42
    move-result p4

    .line 43
    if-nez p4, :cond_2

    .line 44
    .line 45
    const-string p4, "best"

    .line 46
    .line 47
    invoke-virtual {p2, p4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 48
    .line 49
    .line 50
    move-result p4

    .line 51
    if-nez p4, :cond_2

    .line 52
    .line 53
    const-string p4, "bestanswer"

    .line 54
    .line 55
    invoke-virtual {p2, p4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 56
    .line 57
    .line 58
    move-result p2

    .line 59
    if-eqz p2, :cond_3

    .line 60
    .line 61
    :cond_2
    invoke-direct {p0, p1, p3}, Lcom/join/mgps/adapter/ForumProfileMessageAdapter;->f(Landroid/view/View;I)V

    .line 62
    .line 63
    .line 64
    :cond_3
    :goto_0
    return-void
.end method

.method public j(Lcom/join/mgps/adapter/ForumProfileMessageAdapter$d;)V
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
    iput-object p1, p0, Lcom/join/mgps/adapter/ForumProfileMessageAdapter;->d:Lcom/join/mgps/adapter/ForumProfileMessageAdapter$d;

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
