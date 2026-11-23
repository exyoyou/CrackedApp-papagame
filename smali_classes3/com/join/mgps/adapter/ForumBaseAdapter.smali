.class public Lcom/join/mgps/adapter/ForumBaseAdapter;
.super Landroid/widget/BaseAdapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/join/mgps/adapter/ForumBaseAdapter$t0;,
        Lcom/join/mgps/adapter/ForumBaseAdapter$r1;,
        Lcom/join/mgps/adapter/ForumBaseAdapter$ViewType;,
        Lcom/join/mgps/adapter/ForumBaseAdapter$q1;,
        Lcom/join/mgps/adapter/ForumBaseAdapter$o0;,
        Lcom/join/mgps/adapter/ForumBaseAdapter$p0;,
        Lcom/join/mgps/adapter/ForumBaseAdapter$p1;,
        Lcom/join/mgps/adapter/ForumBaseAdapter$k0;,
        Lcom/join/mgps/adapter/ForumBaseAdapter$n0;,
        Lcom/join/mgps/adapter/ForumBaseAdapter$i1;,
        Lcom/join/mgps/adapter/ForumBaseAdapter$g1;,
        Lcom/join/mgps/adapter/ForumBaseAdapter$c1;,
        Lcom/join/mgps/adapter/ForumBaseAdapter$j1;,
        Lcom/join/mgps/adapter/ForumBaseAdapter$d1;,
        Lcom/join/mgps/adapter/ForumBaseAdapter$o1;,
        Lcom/join/mgps/adapter/ForumBaseAdapter$f1;,
        Lcom/join/mgps/adapter/ForumBaseAdapter$k1;,
        Lcom/join/mgps/adapter/ForumBaseAdapter$l1;,
        Lcom/join/mgps/adapter/ForumBaseAdapter$u0;,
        Lcom/join/mgps/adapter/ForumBaseAdapter$i0;,
        Lcom/join/mgps/adapter/ForumBaseAdapter$e1;,
        Lcom/join/mgps/adapter/ForumBaseAdapter$h1;,
        Lcom/join/mgps/adapter/ForumBaseAdapter$n1;,
        Lcom/join/mgps/adapter/ForumBaseAdapter$m1;,
        Lcom/join/mgps/adapter/ForumBaseAdapter$y0;,
        Lcom/join/mgps/adapter/ForumBaseAdapter$z0;,
        Lcom/join/mgps/adapter/ForumBaseAdapter$x0;,
        Lcom/join/mgps/adapter/ForumBaseAdapter$a1;,
        Lcom/join/mgps/adapter/ForumBaseAdapter$r0;,
        Lcom/join/mgps/adapter/ForumBaseAdapter$s0;,
        Lcom/join/mgps/adapter/ForumBaseAdapter$q0;,
        Lcom/join/mgps/adapter/ForumBaseAdapter$h0;,
        Lcom/join/mgps/adapter/ForumBaseAdapter$v0;,
        Lcom/join/mgps/adapter/ForumBaseAdapter$m0;,
        Lcom/join/mgps/adapter/ForumBaseAdapter$l0;,
        Lcom/join/mgps/adapter/ForumBaseAdapter$j0;,
        Lcom/join/mgps/adapter/ForumBaseAdapter$b1;,
        Lcom/join/mgps/adapter/ForumBaseAdapter$w0;,
        Lcom/join/mgps/adapter/ForumBaseAdapter$s1;
    }
.end annotation


# instance fields
.field private A:Z

.field private B:Z

.field C:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field b:Lcom/join/android/app/component/optimizetext/b;

.field c:Lcom/danikula/videocache/i;

.field private d:Z

.field private e:Landroid/content/Context;

.field private f:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/join/mgps/adapter/ForumBaseAdapter$r1;",
            ">;"
        }
    .end annotation
.end field

.field g:Lcom/join/android/app/component/video/c;

.field h:Ljava/lang/String;

.field private i:Lw6/f;

.field j:I

.field k:Ljava/util/Hashtable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Hashtable<",
            "Ljava/lang/String;",
            "Lcom/join/mgps/adapter/ForumBaseAdapter$u0;",
            ">;"
        }
    .end annotation
.end field

.field l:Landroid/widget/LinearLayout$LayoutParams;

.field m:I

.field n:Landroid/widget/LinearLayout$LayoutParams;

.field private o:Lcom/join/mgps/adapter/ForumBaseAdapter$t0;

.field p:I

.field q:I

.field r:I

.field s:I

.field t:I

.field u:I

.field private v:Lcom/join/android/app/component/video/MyVideoView;

.field private w:Lcom/join/android/app/component/video/MediaController;

.field private x:I

.field private y:Ljava/lang/String;

.field private z:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/join/android/app/component/video/c;)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "context",
            "helper"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x0

    .line 5
    iput-boolean v0, p0, Lcom/join/mgps/adapter/ForumBaseAdapter;->d:Z

    .line 6
    .line 7
    const-string v1, "ForumBaseAdapter"

    .line 8
    .line 9
    iput-object v1, p0, Lcom/join/mgps/adapter/ForumBaseAdapter;->h:Ljava/lang/String;

    .line 10
    .line 11
    iput v0, p0, Lcom/join/mgps/adapter/ForumBaseAdapter;->j:I

    .line 12
    .line 13
    iput v0, p0, Lcom/join/mgps/adapter/ForumBaseAdapter;->m:I

    .line 14
    .line 15
    const/4 v1, 0x0

    .line 16
    iput-object v1, p0, Lcom/join/mgps/adapter/ForumBaseAdapter;->o:Lcom/join/mgps/adapter/ForumBaseAdapter$t0;

    .line 17
    .line 18
    iput v0, p0, Lcom/join/mgps/adapter/ForumBaseAdapter;->p:I

    .line 19
    .line 20
    iput v0, p0, Lcom/join/mgps/adapter/ForumBaseAdapter;->q:I

    .line 21
    .line 22
    iput v0, p0, Lcom/join/mgps/adapter/ForumBaseAdapter;->r:I

    .line 23
    .line 24
    iput v0, p0, Lcom/join/mgps/adapter/ForumBaseAdapter;->s:I

    .line 25
    .line 26
    iput v0, p0, Lcom/join/mgps/adapter/ForumBaseAdapter;->t:I

    .line 27
    .line 28
    iput v0, p0, Lcom/join/mgps/adapter/ForumBaseAdapter;->u:I

    .line 29
    .line 30
    const/4 v1, -0x1

    .line 31
    iput v1, p0, Lcom/join/mgps/adapter/ForumBaseAdapter;->x:I

    .line 32
    .line 33
    const-string v2, ""

    .line 34
    .line 35
    iput-object v2, p0, Lcom/join/mgps/adapter/ForumBaseAdapter;->y:Ljava/lang/String;

    .line 36
    .line 37
    iput v1, p0, Lcom/join/mgps/adapter/ForumBaseAdapter;->z:I

    .line 38
    .line 39
    iput-boolean v0, p0, Lcom/join/mgps/adapter/ForumBaseAdapter;->A:Z

    .line 40
    .line 41
    iput-boolean v0, p0, Lcom/join/mgps/adapter/ForumBaseAdapter;->B:Z

    .line 42
    .line 43
    new-instance v0, Ljava/util/ArrayList;

    .line 44
    .line 45
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 46
    .line 47
    .line 48
    iput-object v0, p0, Lcom/join/mgps/adapter/ForumBaseAdapter;->C:Ljava/util/List;

    .line 49
    .line 50
    iput-object p1, p0, Lcom/join/mgps/adapter/ForumBaseAdapter;->e:Landroid/content/Context;

    .line 51
    .line 52
    iput-object p2, p0, Lcom/join/mgps/adapter/ForumBaseAdapter;->g:Lcom/join/android/app/component/video/c;

    .line 53
    .line 54
    new-instance p2, Ljava/util/ArrayList;

    .line 55
    .line 56
    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    .line 57
    .line 58
    .line 59
    iput-object p2, p0, Lcom/join/mgps/adapter/ForumBaseAdapter;->f:Ljava/util/List;

    .line 60
    .line 61
    new-instance p2, Lcom/join/android/app/component/optimizetext/b;

    .line 62
    .line 63
    invoke-direct {p2, p1}, Lcom/join/android/app/component/optimizetext/b;-><init>(Landroid/content/Context;)V

    .line 64
    .line 65
    .line 66
    iput-object p2, p0, Lcom/join/mgps/adapter/ForumBaseAdapter;->b:Lcom/join/android/app/component/optimizetext/b;

    .line 67
    .line 68
    iget-object p1, p0, Lcom/join/mgps/adapter/ForumBaseAdapter;->e:Landroid/content/Context;

    .line 69
    .line 70
    invoke-virtual {p0, p1}, Lcom/join/mgps/adapter/ForumBaseAdapter;->c0(Landroid/content/Context;)Lcom/danikula/videocache/i;

    .line 71
    .line 72
    .line 73
    move-result-object p1

    .line 74
    iput-object p1, p0, Lcom/join/mgps/adapter/ForumBaseAdapter;->c:Lcom/danikula/videocache/i;

    .line 75
    .line 76
    invoke-virtual {p0}, Lcom/join/mgps/adapter/ForumBaseAdapter;->m()V

    .line 77
    .line 78
    .line 79
    invoke-direct {p0}, Lcom/join/mgps/adapter/ForumBaseAdapter;->i0()V

    .line 80
    .line 81
    .line 82
    return-void
.end method

.method private B(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 17
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
    move-object/from16 v1, p0

    .line 2
    .line 3
    if-eqz p2, :cond_0

    .line 4
    .line 5
    invoke-virtual/range {p2 .. p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    check-cast v0, Lcom/join/mgps/adapter/ForumBaseAdapter$v0;

    .line 10
    .line 11
    move-object/from16 v2, p2

    .line 12
    .line 13
    goto :goto_0

    .line 14
    :cond_0
    new-instance v0, Lcom/join/mgps/adapter/ForumBaseAdapter$v0;

    .line 15
    .line 16
    invoke-direct {v0, v1}, Lcom/join/mgps/adapter/ForumBaseAdapter$v0;-><init>(Lcom/join/mgps/adapter/ForumBaseAdapter;)V

    .line 17
    .line 18
    .line 19
    iget-object v2, v1, Lcom/join/mgps/adapter/ForumBaseAdapter;->e:Landroid/content/Context;

    .line 20
    .line 21
    invoke-static {v2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    .line 22
    .line 23
    .line 24
    move-result-object v2

    .line 25
    const v3, 0x7f0d06ea

    .line 26
    .line 27
    .line 28
    const/4 v4, 0x0

    .line 29
    invoke-virtual {v2, v3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 30
    .line 31
    .line 32
    move-result-object v2

    .line 33
    const v3, 0x7f0a0691

    .line 34
    .line 35
    .line 36
    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 37
    .line 38
    .line 39
    move-result-object v3

    .line 40
    iput-object v3, v0, Lcom/join/mgps/adapter/ForumBaseAdapter$v0;->j:Landroid/view/View;

    .line 41
    .line 42
    const v3, 0x7f0a0692

    .line 43
    .line 44
    .line 45
    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 46
    .line 47
    .line 48
    move-result-object v3

    .line 49
    check-cast v3, Landroid/widget/TextView;

    .line 50
    .line 51
    iput-object v3, v0, Lcom/join/mgps/adapter/ForumBaseAdapter$h0;->b:Landroid/widget/TextView;

    .line 52
    .line 53
    const v3, 0x7f0a0e20

    .line 54
    .line 55
    .line 56
    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 57
    .line 58
    .line 59
    move-result-object v3

    .line 60
    check-cast v3, Lcom/facebook/drawee/view/SimpleDraweeView;

    .line 61
    .line 62
    iput-object v3, v0, Lcom/join/mgps/adapter/ForumBaseAdapter$h0;->c:Lcom/facebook/drawee/view/SimpleDraweeView;

    .line 63
    .line 64
    const v3, 0x7f0a0e21

    .line 65
    .line 66
    .line 67
    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 68
    .line 69
    .line 70
    move-result-object v3

    .line 71
    check-cast v3, Lcom/facebook/drawee/view/SimpleDraweeView;

    .line 72
    .line 73
    iput-object v3, v0, Lcom/join/mgps/adapter/ForumBaseAdapter$h0;->d:Lcom/facebook/drawee/view/SimpleDraweeView;

    .line 74
    .line 75
    const v3, 0x7f0a0e22

    .line 76
    .line 77
    .line 78
    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 79
    .line 80
    .line 81
    move-result-object v3

    .line 82
    check-cast v3, Lcom/facebook/drawee/view/SimpleDraweeView;

    .line 83
    .line 84
    iput-object v3, v0, Lcom/join/mgps/adapter/ForumBaseAdapter$h0;->e:Lcom/facebook/drawee/view/SimpleDraweeView;

    .line 85
    .line 86
    const v3, 0x7f0a0e23

    .line 87
    .line 88
    .line 89
    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 90
    .line 91
    .line 92
    move-result-object v3

    .line 93
    check-cast v3, Lcom/facebook/drawee/view/SimpleDraweeView;

    .line 94
    .line 95
    iput-object v3, v0, Lcom/join/mgps/adapter/ForumBaseAdapter$h0;->f:Lcom/facebook/drawee/view/SimpleDraweeView;

    .line 96
    .line 97
    invoke-virtual {v2, v0}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 98
    .line 99
    .line 100
    :goto_0
    move-object v3, v0

    .line 101
    :try_start_0
    invoke-virtual/range {p0 .. p1}, Lcom/join/mgps/adapter/ForumBaseAdapter;->getItem(I)Ljava/lang/Object;

    .line 102
    .line 103
    .line 104
    move-result-object v0

    .line 105
    move-object v4, v0

    .line 106
    check-cast v4, Lcom/join/mgps/adapter/ForumBaseAdapter$r1$i;

    .line 107
    .line 108
    if-eqz v4, :cond_9

    .line 109
    .line 110
    iget-object v0, v4, Lcom/join/mgps/adapter/ForumBaseAdapter$r1$i;->a:Lcom/join/mgps/dto/ForumBean$ForumWelcomeAdBean;

    .line 111
    .line 112
    if-nez v0, :cond_1

    .line 113
    .line 114
    goto/16 :goto_4

    .line 115
    .line 116
    :cond_1
    const/4 v0, 0x4

    .line 117
    new-array v5, v0, [Lcom/facebook/drawee/view/SimpleDraweeView;

    .line 118
    .line 119
    iget-object v6, v3, Lcom/join/mgps/adapter/ForumBaseAdapter$h0;->c:Lcom/facebook/drawee/view/SimpleDraweeView;

    .line 120
    .line 121
    const/4 v7, 0x0

    .line 122
    aput-object v6, v5, v7

    .line 123
    .line 124
    iget-object v6, v3, Lcom/join/mgps/adapter/ForumBaseAdapter$h0;->d:Lcom/facebook/drawee/view/SimpleDraweeView;

    .line 125
    .line 126
    const/4 v8, 0x1

    .line 127
    aput-object v6, v5, v8

    .line 128
    .line 129
    iget-object v6, v3, Lcom/join/mgps/adapter/ForumBaseAdapter$h0;->e:Lcom/facebook/drawee/view/SimpleDraweeView;

    .line 130
    .line 131
    const/4 v9, 0x2

    .line 132
    aput-object v6, v5, v9

    .line 133
    .line 134
    iget-object v6, v3, Lcom/join/mgps/adapter/ForumBaseAdapter$h0;->f:Lcom/facebook/drawee/view/SimpleDraweeView;

    .line 135
    .line 136
    const/4 v10, 0x3

    .line 137
    aput-object v6, v5, v10

    .line 138
    .line 139
    const/4 v6, 0x0

    .line 140
    :goto_1
    const/16 v11, 0x8

    .line 141
    .line 142
    if-ge v6, v0, :cond_2

    .line 143
    .line 144
    aget-object v12, v5, v6

    .line 145
    .line 146
    invoke-virtual {v12, v11}, Landroid/view/View;->setVisibility(I)V

    .line 147
    .line 148
    .line 149
    add-int/lit8 v6, v6, 0x1

    .line 150
    .line 151
    goto :goto_1

    .line 152
    :cond_2
    const/4 v6, 0x0

    .line 153
    :goto_2
    iget-object v0, v4, Lcom/join/mgps/adapter/ForumBaseAdapter$r1$i;->a:Lcom/join/mgps/dto/ForumBean$ForumWelcomeAdBean;

    .line 154
    .line 155
    invoke-virtual {v0}, Lcom/join/mgps/dto/ForumBean$ForumWelcomeAdBean;->getAdBeans()Ljava/util/List;

    .line 156
    .line 157
    .line 158
    move-result-object v0

    .line 159
    if-eqz v0, :cond_6

    .line 160
    .line 161
    iget-object v0, v4, Lcom/join/mgps/adapter/ForumBaseAdapter$r1$i;->a:Lcom/join/mgps/dto/ForumBean$ForumWelcomeAdBean;

    .line 162
    .line 163
    invoke-virtual {v0}, Lcom/join/mgps/dto/ForumBean$ForumWelcomeAdBean;->getAdBeans()Ljava/util/List;

    .line 164
    .line 165
    .line 166
    move-result-object v0

    .line 167
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 168
    .line 169
    .line 170
    move-result v0

    .line 171
    if-ge v6, v0, :cond_6

    .line 172
    .line 173
    iget-object v0, v4, Lcom/join/mgps/adapter/ForumBaseAdapter$r1$i;->a:Lcom/join/mgps/dto/ForumBean$ForumWelcomeAdBean;

    .line 174
    .line 175
    invoke-virtual {v0}, Lcom/join/mgps/dto/ForumBean$ForumWelcomeAdBean;->getAdBeans()Ljava/util/List;

    .line 176
    .line 177
    .line 178
    move-result-object v0

    .line 179
    invoke-interface {v0, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 180
    .line 181
    .line 182
    move-result-object v0

    .line 183
    check-cast v0, Lcom/join/mgps/dto/BannerBean;

    .line 184
    .line 185
    aget-object v12, v5, v6

    .line 186
    .line 187
    invoke-virtual {v12, v7}, Landroid/view/View;->setVisibility(I)V

    .line 188
    .line 189
    .line 190
    invoke-virtual {v0}, Lcom/join/mgps/dto/BannerBean;->getPic_remote()Ljava/lang/String;

    .line 191
    .line 192
    .line 193
    move-result-object v13

    .line 194
    invoke-static {v12, v13}, Lcom/join/android/app/common/utils/l;->h(Lcom/facebook/drawee/view/SimpleDraweeView;Ljava/lang/String;)V

    .line 195
    .line 196
    .line 197
    iget-object v13, v1, Lcom/join/mgps/adapter/ForumBaseAdapter;->e:Landroid/content/Context;

    .line 198
    .line 199
    invoke-virtual {v13}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 200
    .line 201
    .line 202
    move-result-object v13

    .line 203
    invoke-virtual {v13}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    .line 204
    .line 205
    .line 206
    move-result-object v13

    .line 207
    iget v13, v13, Landroid/util/DisplayMetrics;->density:F

    .line 208
    .line 209
    invoke-virtual {v12}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 210
    .line 211
    .line 212
    move-result-object v14

    .line 213
    check-cast v14, Landroid/widget/LinearLayout$LayoutParams;

    .line 214
    .line 215
    iget-object v15, v1, Lcom/join/mgps/adapter/ForumBaseAdapter;->e:Landroid/content/Context;

    .line 216
    .line 217
    invoke-virtual {v15}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 218
    .line 219
    .line 220
    move-result-object v15

    .line 221
    invoke-virtual {v15}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    .line 222
    .line 223
    .line 224
    move-result-object v15

    .line 225
    iget v15, v15, Landroid/util/DisplayMetrics;->widthPixels:I

    .line 226
    .line 227
    int-to-float v15, v15

    .line 228
    const/high16 v16, 0x41900000    # 18.0f

    .line 229
    .line 230
    mul-float v13, v13, v16

    .line 231
    .line 232
    sub-float/2addr v15, v13

    .line 233
    float-to-int v13, v15

    .line 234
    div-int/2addr v13, v9

    .line 235
    iput v13, v14, Landroid/widget/LinearLayout$LayoutParams;->width:I

    .line 236
    .line 237
    int-to-float v13, v13

    .line 238
    const/high16 v15, 0x3f800000    # 1.0f

    .line 239
    .line 240
    mul-float v13, v13, v15

    .line 241
    .line 242
    const v15, 0x40047ae1    # 2.07f

    .line 243
    .line 244
    .line 245
    div-float/2addr v13, v15

    .line 246
    float-to-int v13, v13

    .line 247
    iput v13, v14, Landroid/widget/LinearLayout$LayoutParams;->height:I

    .line 248
    .line 249
    invoke-virtual {v12, v14}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 250
    .line 251
    .line 252
    invoke-static {v0}, Lcom/join/mgps/Util/r0;->j0(Lcom/join/mgps/dto/BannerBean;)Lcom/join/mgps/Util/IntentDateBean;

    .line 253
    .line 254
    .line 255
    move-result-object v0

    .line 256
    new-instance v13, Lcom/join/mgps/dto/ExtBean;

    .line 257
    .line 258
    invoke-direct {v13}, Lcom/join/mgps/dto/ExtBean;-><init>()V

    .line 259
    .line 260
    .line 261
    const-string v14, "forum"

    .line 262
    .line 263
    invoke-virtual {v13, v14}, Lcom/join/mgps/dto/ExtBean;->setFrom(Ljava/lang/String;)Lcom/join/mgps/dto/ExtBean;

    .line 264
    .line 265
    .line 266
    new-instance v14, Ljava/lang/StringBuilder;

    .line 267
    .line 268
    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    .line 269
    .line 270
    .line 271
    const-string v15, "banner2"

    .line 272
    .line 273
    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 274
    .line 275
    .line 276
    add-int/lit8 v15, p1, 0x1

    .line 277
    .line 278
    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 279
    .line 280
    .line 281
    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 282
    .line 283
    .line 284
    move-result-object v14

    .line 285
    invoke-virtual {v13, v14}, Lcom/join/mgps/dto/ExtBean;->setPosition(Ljava/lang/String;)Lcom/join/mgps/dto/ExtBean;

    .line 286
    .line 287
    .line 288
    invoke-virtual {v0, v13}, Lcom/join/mgps/Util/IntentDateBean;->setExtBean(Lcom/join/mgps/dto/ExtBean;)V

    .line 289
    .line 290
    .line 291
    new-instance v13, Lcom/join/mgps/adapter/ForumBaseAdapter$b;

    .line 292
    .line 293
    invoke-direct {v13, v1, v0, v6}, Lcom/join/mgps/adapter/ForumBaseAdapter$b;-><init>(Lcom/join/mgps/adapter/ForumBaseAdapter;Lcom/join/mgps/Util/IntentDateBean;I)V

    .line 294
    .line 295
    .line 296
    invoke-virtual {v12, v13}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 297
    .line 298
    .line 299
    if-eq v6, v8, :cond_3

    .line 300
    .line 301
    if-ne v6, v10, :cond_4

    .line 302
    .line 303
    :cond_3
    :try_start_1
    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    .line 304
    .line 305
    invoke-virtual {v12}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 306
    .line 307
    .line 308
    move-result-object v13

    .line 309
    iget v13, v13, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 310
    .line 311
    invoke-virtual {v12}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 312
    .line 313
    .line 314
    move-result-object v14

    .line 315
    iget v14, v14, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 316
    .line 317
    invoke-direct {v0, v13, v14}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 318
    .line 319
    .line 320
    invoke-virtual {v12}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    .line 321
    .line 322
    .line 323
    move-result-object v13

    .line 324
    invoke-virtual {v13}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    .line 325
    .line 326
    .line 327
    move-result-object v13

    .line 328
    iget v13, v13, Landroid/util/DisplayMetrics;->density:F

    .line 329
    .line 330
    const/high16 v14, 0x40c00000    # 6.0f

    .line 331
    .line 332
    mul-float v13, v13, v14

    .line 333
    .line 334
    float-to-int v13, v13

    .line 335
    invoke-virtual {v0, v13, v7, v7, v7}, Landroid/view/ViewGroup$MarginLayoutParams;->setMargins(IIII)V

    .line 336
    .line 337
    .line 338
    invoke-virtual {v12, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 339
    .line 340
    .line 341
    :cond_4
    iget-object v0, v4, Lcom/join/mgps/adapter/ForumBaseAdapter$r1$i;->a:Lcom/join/mgps/dto/ForumBean$ForumWelcomeAdBean;

    .line 342
    .line 343
    invoke-virtual {v0}, Lcom/join/mgps/dto/ForumBean$ForumWelcomeAdBean;->getAdBeans()Ljava/util/List;

    .line 344
    .line 345
    .line 346
    move-result-object v0

    .line 347
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 348
    .line 349
    .line 350
    move-result v0

    .line 351
    if-ne v0, v8, :cond_5

    .line 352
    .line 353
    iget-object v0, v1, Lcom/join/mgps/adapter/ForumBaseAdapter;->e:Landroid/content/Context;

    .line 354
    .line 355
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 356
    .line 357
    .line 358
    move-result-object v0

    .line 359
    const v13, 0x7f070ec7

    .line 360
    .line 361
    .line 362
    invoke-virtual {v0, v13}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    .line 363
    .line 364
    .line 365
    move-result v0

    .line 366
    iget-object v13, v3, Lcom/join/mgps/adapter/ForumBaseAdapter$v0;->j:Landroid/view/View;

    .line 367
    .line 368
    invoke-virtual {v13, v7, v0, v7, v7}, Landroid/view/View;->setPadding(IIII)V

    .line 369
    .line 370
    .line 371
    invoke-virtual {v12}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 372
    .line 373
    .line 374
    move-result-object v0

    .line 375
    check-cast v0, Landroid/widget/LinearLayout$LayoutParams;

    .line 376
    .line 377
    const/4 v13, -0x1

    .line 378
    iput v13, v0, Landroid/widget/LinearLayout$LayoutParams;->width:I

    .line 379
    .line 380
    invoke-virtual/range {p0 .. p0}, Lcom/join/mgps/adapter/ForumBaseAdapter;->A()I

    .line 381
    .line 382
    .line 383
    move-result v13

    .line 384
    iput v13, v0, Landroid/widget/LinearLayout$LayoutParams;->height:I

    .line 385
    .line 386
    invoke-virtual {v0, v7, v7, v7, v7}, Landroid/view/ViewGroup$MarginLayoutParams;->setMargins(IIII)V

    .line 387
    .line 388
    .line 389
    invoke-virtual {v12, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 390
    .line 391
    .line 392
    sget-object v0, Landroid/widget/ImageView$ScaleType;->FIT_XY:Landroid/widget/ImageView$ScaleType;

    .line 393
    .line 394
    invoke-virtual {v12, v0}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 395
    .line 396
    .line 397
    goto :goto_3

    .line 398
    :catch_0
    move-exception v0

    .line 399
    :try_start_2
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 400
    .line 401
    .line 402
    :cond_5
    :goto_3
    add-int/lit8 v6, v6, 0x1

    .line 403
    .line 404
    goto/16 :goto_2

    .line 405
    .line 406
    :cond_6
    iget-object v0, v4, Lcom/join/mgps/adapter/ForumBaseAdapter$r1$i;->a:Lcom/join/mgps/dto/ForumBean$ForumWelcomeAdBean;

    .line 407
    .line 408
    invoke-virtual {v0}, Lcom/join/mgps/dto/ForumBean$ForumWelcomeAdBean;->getAdBeans()Ljava/util/List;

    .line 409
    .line 410
    .line 411
    move-result-object v0

    .line 412
    if-nez v0, :cond_7

    .line 413
    .line 414
    invoke-virtual {v2, v11}, Landroid/view/View;->setVisibility(I)V

    .line 415
    .line 416
    .line 417
    goto :goto_5

    .line 418
    :cond_7
    iget-object v0, v4, Lcom/join/mgps/adapter/ForumBaseAdapter$r1$i;->a:Lcom/join/mgps/dto/ForumBean$ForumWelcomeAdBean;

    .line 419
    .line 420
    invoke-virtual {v0}, Lcom/join/mgps/dto/ForumBean$ForumWelcomeAdBean;->getAdBeans()Ljava/util/List;

    .line 421
    .line 422
    .line 423
    move-result-object v0

    .line 424
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 425
    .line 426
    .line 427
    move-result v0

    .line 428
    if-ge v0, v8, :cond_8

    .line 429
    .line 430
    invoke-virtual {v2, v11}, Landroid/view/View;->setVisibility(I)V

    .line 431
    .line 432
    .line 433
    goto :goto_5

    .line 434
    :cond_8
    iget-object v0, v4, Lcom/join/mgps/adapter/ForumBaseAdapter$r1$i;->a:Lcom/join/mgps/dto/ForumBean$ForumWelcomeAdBean;

    .line 435
    .line 436
    invoke-virtual {v0}, Lcom/join/mgps/dto/ForumBean$ForumWelcomeAdBean;->getAdBeans()Ljava/util/List;

    .line 437
    .line 438
    .line 439
    move-result-object v0

    .line 440
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 441
    .line 442
    .line 443
    move-result v0

    .line 444
    if-ge v0, v10, :cond_a

    .line 445
    .line 446
    aget-object v0, v5, v9

    .line 447
    .line 448
    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    .line 449
    .line 450
    .line 451
    move-result-object v0

    .line 452
    check-cast v0, Landroid/view/ViewGroup;

    .line 453
    .line 454
    invoke-virtual {v0, v11}, Landroid/view/View;->setVisibility(I)V

    .line 455
    .line 456
    .line 457
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 458
    .line 459
    .line 460
    move-result-object v0

    .line 461
    check-cast v0, Landroid/widget/LinearLayout$LayoutParams;

    .line 462
    .line 463
    iput v7, v0, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    .line 464
    .line 465
    goto :goto_5

    .line 466
    :cond_9
    :goto_4
    return-object v2

    .line 467
    :catch_1
    move-exception v0

    .line 468
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 469
    .line 470
    .line 471
    :cond_a
    :goto_5
    return-object v2
.end method

.method private C(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 0
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
    return-object p2
.end method

.method private D(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 10
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
    check-cast p3, Lcom/join/mgps/adapter/ForumBaseAdapter$h0;

    .line 8
    .line 9
    goto :goto_0

    .line 10
    :cond_0
    new-instance p3, Lcom/join/mgps/adapter/ForumBaseAdapter$h0;

    .line 11
    .line 12
    invoke-direct {p3, p0}, Lcom/join/mgps/adapter/ForumBaseAdapter$h0;-><init>(Lcom/join/mgps/adapter/ForumBaseAdapter;)V

    .line 13
    .line 14
    .line 15
    iget-object p2, p0, Lcom/join/mgps/adapter/ForumBaseAdapter;->e:Landroid/content/Context;

    .line 16
    .line 17
    invoke-static {p2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    .line 18
    .line 19
    .line 20
    move-result-object p2

    .line 21
    const v0, 0x7f0d06e3

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
    const v0, 0x7f0a0692

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
    iput-object v0, p3, Lcom/join/mgps/adapter/ForumBaseAdapter$h0;->b:Landroid/widget/TextView;

    .line 39
    .line 40
    const v0, 0x7f0a0e20

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
    iput-object v0, p3, Lcom/join/mgps/adapter/ForumBaseAdapter$h0;->c:Lcom/facebook/drawee/view/SimpleDraweeView;

    .line 50
    .line 51
    const v0, 0x7f0a0e21

    .line 52
    .line 53
    .line 54
    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 55
    .line 56
    .line 57
    move-result-object v0

    .line 58
    check-cast v0, Lcom/facebook/drawee/view/SimpleDraweeView;

    .line 59
    .line 60
    iput-object v0, p3, Lcom/join/mgps/adapter/ForumBaseAdapter$h0;->d:Lcom/facebook/drawee/view/SimpleDraweeView;

    .line 61
    .line 62
    const v0, 0x7f0a0e22

    .line 63
    .line 64
    .line 65
    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 66
    .line 67
    .line 68
    move-result-object v0

    .line 69
    check-cast v0, Lcom/facebook/drawee/view/SimpleDraweeView;

    .line 70
    .line 71
    iput-object v0, p3, Lcom/join/mgps/adapter/ForumBaseAdapter$h0;->e:Lcom/facebook/drawee/view/SimpleDraweeView;

    .line 72
    .line 73
    const v0, 0x7f0a0e23

    .line 74
    .line 75
    .line 76
    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 77
    .line 78
    .line 79
    move-result-object v0

    .line 80
    check-cast v0, Lcom/facebook/drawee/view/SimpleDraweeView;

    .line 81
    .line 82
    iput-object v0, p3, Lcom/join/mgps/adapter/ForumBaseAdapter$h0;->f:Lcom/facebook/drawee/view/SimpleDraweeView;

    .line 83
    .line 84
    invoke-virtual {p2, p3}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 85
    .line 86
    .line 87
    :goto_0
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/join/mgps/adapter/ForumBaseAdapter;->getItem(I)Ljava/lang/Object;

    .line 88
    .line 89
    .line 90
    move-result-object p1

    .line 91
    check-cast p1, Lcom/join/mgps/adapter/ForumBaseAdapter$r1$a;

    .line 92
    .line 93
    if-eqz p1, :cond_7

    .line 94
    .line 95
    iget-object v0, p1, Lcom/join/mgps/adapter/ForumBaseAdapter$r1$a;->a:Lcom/join/mgps/dto/ForumBean$ForumWelcomeAdBean;

    .line 96
    .line 97
    if-nez v0, :cond_1

    .line 98
    .line 99
    goto/16 :goto_3

    .line 100
    .line 101
    :cond_1
    const/4 v0, 0x4

    .line 102
    new-array v1, v0, [Lcom/facebook/drawee/view/SimpleDraweeView;

    .line 103
    .line 104
    iget-object v2, p3, Lcom/join/mgps/adapter/ForumBaseAdapter$h0;->c:Lcom/facebook/drawee/view/SimpleDraweeView;

    .line 105
    .line 106
    const/4 v3, 0x0

    .line 107
    aput-object v2, v1, v3

    .line 108
    .line 109
    iget-object v2, p3, Lcom/join/mgps/adapter/ForumBaseAdapter$h0;->d:Lcom/facebook/drawee/view/SimpleDraweeView;

    .line 110
    .line 111
    const/4 v4, 0x1

    .line 112
    aput-object v2, v1, v4

    .line 113
    .line 114
    iget-object v2, p3, Lcom/join/mgps/adapter/ForumBaseAdapter$h0;->e:Lcom/facebook/drawee/view/SimpleDraweeView;

    .line 115
    .line 116
    const/4 v5, 0x2

    .line 117
    aput-object v2, v1, v5

    .line 118
    .line 119
    iget-object p3, p3, Lcom/join/mgps/adapter/ForumBaseAdapter$h0;->f:Lcom/facebook/drawee/view/SimpleDraweeView;

    .line 120
    .line 121
    const/4 v2, 0x3

    .line 122
    aput-object p3, v1, v2

    .line 123
    .line 124
    const/4 p3, 0x0

    .line 125
    :goto_1
    iget-object v6, p1, Lcom/join/mgps/adapter/ForumBaseAdapter$r1$a;->a:Lcom/join/mgps/dto/ForumBean$ForumWelcomeAdBean;

    .line 126
    .line 127
    invoke-virtual {v6}, Lcom/join/mgps/dto/ForumBean$ForumWelcomeAdBean;->getAdBeans()Ljava/util/List;

    .line 128
    .line 129
    .line 130
    move-result-object v6

    .line 131
    if-eqz v6, :cond_4

    .line 132
    .line 133
    iget-object v6, p1, Lcom/join/mgps/adapter/ForumBaseAdapter$r1$a;->a:Lcom/join/mgps/dto/ForumBean$ForumWelcomeAdBean;

    .line 134
    .line 135
    invoke-virtual {v6}, Lcom/join/mgps/dto/ForumBean$ForumWelcomeAdBean;->getAdBeans()Ljava/util/List;

    .line 136
    .line 137
    .line 138
    move-result-object v6

    .line 139
    invoke-interface {v6}, Ljava/util/List;->size()I

    .line 140
    .line 141
    .line 142
    move-result v6

    .line 143
    if-ge p3, v6, :cond_4

    .line 144
    .line 145
    iget-object v6, p1, Lcom/join/mgps/adapter/ForumBaseAdapter$r1$a;->a:Lcom/join/mgps/dto/ForumBean$ForumWelcomeAdBean;

    .line 146
    .line 147
    invoke-virtual {v6}, Lcom/join/mgps/dto/ForumBean$ForumWelcomeAdBean;->getAdBeans()Ljava/util/List;

    .line 148
    .line 149
    .line 150
    move-result-object v6

    .line 151
    invoke-interface {v6, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 152
    .line 153
    .line 154
    move-result-object v6

    .line 155
    check-cast v6, Lcom/join/mgps/dto/BannerBean;

    .line 156
    .line 157
    aget-object v7, v1, p3

    .line 158
    .line 159
    invoke-direct {p0, v7, v6, p3}, Lcom/join/mgps/adapter/ForumBaseAdapter;->J0(Lcom/facebook/drawee/view/SimpleDraweeView;Lcom/join/mgps/dto/BannerBean;I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 160
    .line 161
    .line 162
    if-eq p3, v4, :cond_2

    .line 163
    .line 164
    if-ne p3, v2, :cond_3

    .line 165
    .line 166
    :cond_2
    :try_start_1
    new-instance v6, Landroid/widget/LinearLayout$LayoutParams;

    .line 167
    .line 168
    invoke-virtual {v7}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 169
    .line 170
    .line 171
    move-result-object v8

    .line 172
    iget v8, v8, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 173
    .line 174
    invoke-virtual {v7}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 175
    .line 176
    .line 177
    move-result-object v9

    .line 178
    iget v9, v9, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 179
    .line 180
    invoke-direct {v6, v8, v9}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 181
    .line 182
    .line 183
    invoke-virtual {v7}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    .line 184
    .line 185
    .line 186
    move-result-object v8

    .line 187
    invoke-virtual {v8}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    .line 188
    .line 189
    .line 190
    move-result-object v8

    .line 191
    iget v8, v8, Landroid/util/DisplayMetrics;->density:F

    .line 192
    .line 193
    const/high16 v9, 0x40c00000    # 6.0f

    .line 194
    .line 195
    mul-float v8, v8, v9

    .line 196
    .line 197
    float-to-int v8, v8

    .line 198
    invoke-virtual {v6, v8, v3, v3, v3}, Landroid/view/ViewGroup$MarginLayoutParams;->setMargins(IIII)V

    .line 199
    .line 200
    .line 201
    invoke-virtual {v7, v6}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 202
    .line 203
    .line 204
    goto :goto_2

    .line 205
    :catch_0
    move-exception v6

    .line 206
    :try_start_2
    invoke-virtual {v6}, Ljava/lang/Throwable;->printStackTrace()V

    .line 207
    .line 208
    .line 209
    :cond_3
    :goto_2
    add-int/lit8 p3, p3, 0x1

    .line 210
    .line 211
    goto :goto_1

    .line 212
    :cond_4
    iget-object p3, p1, Lcom/join/mgps/adapter/ForumBaseAdapter$r1$a;->a:Lcom/join/mgps/dto/ForumBean$ForumWelcomeAdBean;

    .line 213
    .line 214
    invoke-virtual {p3}, Lcom/join/mgps/dto/ForumBean$ForumWelcomeAdBean;->getAdBeans()Ljava/util/List;

    .line 215
    .line 216
    .line 217
    move-result-object p3

    .line 218
    const/16 v2, 0x8

    .line 219
    .line 220
    if-nez p3, :cond_5

    .line 221
    .line 222
    invoke-virtual {p2, v2}, Landroid/view/View;->setVisibility(I)V

    .line 223
    .line 224
    .line 225
    goto :goto_4

    .line 226
    :cond_5
    iget-object p3, p1, Lcom/join/mgps/adapter/ForumBaseAdapter$r1$a;->a:Lcom/join/mgps/dto/ForumBean$ForumWelcomeAdBean;

    .line 227
    .line 228
    invoke-virtual {p3}, Lcom/join/mgps/dto/ForumBean$ForumWelcomeAdBean;->getAdBeans()Ljava/util/List;

    .line 229
    .line 230
    .line 231
    move-result-object p3

    .line 232
    invoke-interface {p3}, Ljava/util/List;->size()I

    .line 233
    .line 234
    .line 235
    move-result p3

    .line 236
    if-ge p3, v5, :cond_6

    .line 237
    .line 238
    invoke-virtual {p2, v2}, Landroid/view/View;->setVisibility(I)V

    .line 239
    .line 240
    .line 241
    goto :goto_4

    .line 242
    :cond_6
    iget-object p1, p1, Lcom/join/mgps/adapter/ForumBaseAdapter$r1$a;->a:Lcom/join/mgps/dto/ForumBean$ForumWelcomeAdBean;

    .line 243
    .line 244
    invoke-virtual {p1}, Lcom/join/mgps/dto/ForumBean$ForumWelcomeAdBean;->getAdBeans()Ljava/util/List;

    .line 245
    .line 246
    .line 247
    move-result-object p1

    .line 248
    invoke-interface {p1}, Ljava/util/List;->size()I

    .line 249
    .line 250
    .line 251
    move-result p1

    .line 252
    if-ge p1, v0, :cond_8

    .line 253
    .line 254
    aget-object p1, v1, v5

    .line 255
    .line 256
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    .line 257
    .line 258
    .line 259
    move-result-object p1

    .line 260
    check-cast p1, Landroid/view/ViewGroup;

    .line 261
    .line 262
    invoke-virtual {p1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 263
    .line 264
    .line 265
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 266
    .line 267
    .line 268
    move-result-object p1

    .line 269
    check-cast p1, Landroid/widget/LinearLayout$LayoutParams;

    .line 270
    .line 271
    iput v3, p1, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    .line 272
    .line 273
    goto :goto_4

    .line 274
    :cond_7
    :goto_3
    return-object p2

    .line 275
    :catch_1
    move-exception p1

    .line 276
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 277
    .line 278
    .line 279
    :cond_8
    :goto_4
    return-object p2
.end method

.method private D0(Landroid/view/View;Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x10
        }
        names = {
            "view",
            "title"
        }
    .end annotation

    .line 1
    if-nez p1, :cond_0

    .line 2
    .line 3
    return-void

    .line 4
    :cond_0
    new-instance v0, Lcom/join/mgps/adapter/ForumBaseAdapter$j;

    .line 5
    .line 6
    invoke-direct {v0, p0, p2}, Lcom/join/mgps/adapter/ForumBaseAdapter$j;-><init>(Lcom/join/mgps/adapter/ForumBaseAdapter;Ljava/lang/String;)V

    .line 7
    .line 8
    .line 9
    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 10
    .line 11
    .line 12
    return-void
.end method

.method private E(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
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
    check-cast p3, Lcom/join/mgps/adapter/ForumBaseAdapter$x0;

    .line 8
    .line 9
    goto :goto_0

    .line 10
    :cond_0
    new-instance p3, Lcom/join/mgps/adapter/ForumBaseAdapter$x0;

    .line 11
    .line 12
    invoke-direct {p3, p0}, Lcom/join/mgps/adapter/ForumBaseAdapter$x0;-><init>(Lcom/join/mgps/adapter/ForumBaseAdapter;)V

    .line 13
    .line 14
    .line 15
    iget-object p2, p0, Lcom/join/mgps/adapter/ForumBaseAdapter;->e:Landroid/content/Context;

    .line 16
    .line 17
    invoke-static {p2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    .line 18
    .line 19
    .line 20
    move-result-object p2

    .line 21
    const v0, 0x7f0d06eb

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
    const v0, 0x7f0a10d4

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
    iput-object v0, p3, Lcom/join/mgps/adapter/ForumBaseAdapter$x0;->c:Landroid/widget/TextView;

    .line 39
    .line 40
    invoke-virtual {p2, p3}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 41
    .line 42
    .line 43
    :goto_0
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/join/mgps/adapter/ForumBaseAdapter;->getItem(I)Ljava/lang/Object;

    .line 44
    .line 45
    .line 46
    move-result-object p1

    .line 47
    check-cast p1, Lcom/join/mgps/adapter/ForumBaseAdapter$r1$j;

    .line 48
    .line 49
    iget-object p3, p3, Lcom/join/mgps/adapter/ForumBaseAdapter$x0;->c:Landroid/widget/TextView;

    .line 50
    .line 51
    iget-object v0, p0, Lcom/join/mgps/adapter/ForumBaseAdapter;->e:Landroid/content/Context;

    .line 52
    .line 53
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 54
    .line 55
    .line 56
    move-result-object v0

    .line 57
    const/4 v1, 0x1

    .line 58
    new-array v1, v1, [Ljava/lang/Object;

    .line 59
    .line 60
    new-instance v2, Ljava/lang/StringBuilder;

    .line 61
    .line 62
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 63
    .line 64
    .line 65
    iget p1, p1, Lcom/join/mgps/adapter/ForumBaseAdapter$r1$j;->a:I

    .line 66
    .line 67
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 68
    .line 69
    .line 70
    const-string p1, ""

    .line 71
    .line 72
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 73
    .line 74
    .line 75
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 76
    .line 77
    .line 78
    move-result-object p1

    .line 79
    const/4 v2, 0x0

    .line 80
    aput-object p1, v1, v2

    .line 81
    .line 82
    const p1, 0x7f120316

    .line 83
    .line 84
    .line 85
    invoke-virtual {v0, p1, v1}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    .line 86
    .line 87
    .line 88
    move-result-object p1

    .line 89
    invoke-virtual {p3, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 90
    .line 91
    .line 92
    invoke-virtual {p0, p2}, Lcom/join/mgps/adapter/ForumBaseAdapter;->V0(Landroid/view/View;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 93
    .line 94
    .line 95
    goto :goto_1

    .line 96
    :catch_0
    move-exception p1

    .line 97
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 98
    .line 99
    .line 100
    :goto_1
    return-object p2
.end method

.method private F(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
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
    check-cast p3, Lcom/join/mgps/adapter/ForumBaseAdapter$y0;

    .line 8
    .line 9
    goto :goto_0

    .line 10
    :cond_0
    new-instance p3, Lcom/join/mgps/adapter/ForumBaseAdapter$y0;

    .line 11
    .line 12
    invoke-direct {p3, p0}, Lcom/join/mgps/adapter/ForumBaseAdapter$y0;-><init>(Lcom/join/mgps/adapter/ForumBaseAdapter;)V

    .line 13
    .line 14
    .line 15
    iget-object v0, p0, Lcom/join/mgps/adapter/ForumBaseAdapter;->e:Landroid/content/Context;

    .line 16
    .line 17
    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    .line 18
    .line 19
    .line 20
    move-result-object v0

    .line 21
    const v1, 0x7f0d06ec

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
    const v0, 0x7f0a0687

    .line 30
    .line 31
    .line 32
    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 33
    .line 34
    .line 35
    move-result-object v0

    .line 36
    check-cast v0, Landroid/widget/LinearLayout;

    .line 37
    .line 38
    iput-object v0, p3, Lcom/join/mgps/adapter/ForumBaseAdapter$y0;->b:Landroid/widget/LinearLayout;

    .line 39
    .line 40
    const v0, 0x7f0a14da

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
    iput-object v0, p3, Lcom/join/mgps/adapter/ForumBaseAdapter$y0;->c:Landroid/widget/TextView;

    .line 50
    .line 51
    invoke-virtual {p2, p3}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 52
    .line 53
    .line 54
    :goto_0
    invoke-virtual {p0, p1}, Lcom/join/mgps/adapter/ForumBaseAdapter;->getItem(I)Ljava/lang/Object;

    .line 55
    .line 56
    .line 57
    move-result-object p1

    .line 58
    check-cast p1, Lcom/join/mgps/adapter/ForumBaseAdapter$r1$k;

    .line 59
    .line 60
    if-eqz p1, :cond_1

    .line 61
    .line 62
    iget-object v0, p1, Lcom/join/mgps/adapter/ForumBaseAdapter$r1$k;->a:Ljava/lang/String;

    .line 63
    .line 64
    invoke-static {v0}, Lcom/join/mgps/Util/t2;->i(Ljava/lang/String;)Z

    .line 65
    .line 66
    .line 67
    move-result v0

    .line 68
    if-eqz v0, :cond_1

    .line 69
    .line 70
    iget-object v0, p3, Lcom/join/mgps/adapter/ForumBaseAdapter$y0;->c:Landroid/widget/TextView;

    .line 71
    .line 72
    iget-object p1, p1, Lcom/join/mgps/adapter/ForumBaseAdapter$r1$k;->a:Ljava/lang/String;

    .line 73
    .line 74
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 75
    .line 76
    .line 77
    goto :goto_1

    .line 78
    :cond_1
    iget-object p1, p0, Lcom/join/mgps/adapter/ForumBaseAdapter;->e:Landroid/content/Context;

    .line 79
    .line 80
    invoke-static {p1}, Lcom/join/mgps/Util/r0;->Y0(Landroid/content/Context;)Z

    .line 81
    .line 82
    .line 83
    move-result p1

    .line 84
    if-eqz p1, :cond_2

    .line 85
    .line 86
    iget-object p1, p3, Lcom/join/mgps/adapter/ForumBaseAdapter$y0;->c:Landroid/widget/TextView;

    .line 87
    .line 88
    const-string v0, "\u6211\u7684\u4e13\u533a"

    .line 89
    .line 90
    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 91
    .line 92
    .line 93
    goto :goto_1

    .line 94
    :cond_2
    iget-object p1, p3, Lcom/join/mgps/adapter/ForumBaseAdapter$y0;->c:Landroid/widget/TextView;

    .line 95
    .line 96
    const-string v0, "\u63a8\u8350\u5173\u6ce8"

    .line 97
    .line 98
    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 99
    .line 100
    .line 101
    :goto_1
    iget-object p1, p3, Lcom/join/mgps/adapter/ForumBaseAdapter$y0;->b:Landroid/widget/LinearLayout;

    .line 102
    .line 103
    if-eqz p1, :cond_3

    .line 104
    .line 105
    invoke-virtual {p0, p2}, Lcom/join/mgps/adapter/ForumBaseAdapter;->P0(Landroid/view/View;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 106
    .line 107
    .line 108
    goto :goto_2

    .line 109
    :catch_0
    move-exception p1

    .line 110
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 111
    .line 112
    .line 113
    :cond_3
    :goto_2
    return-object p2
.end method

.method private G(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
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
    const-string p3, ""

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
    check-cast v0, Lcom/join/mgps/adapter/ForumBaseAdapter$z0;

    .line 10
    .line 11
    goto :goto_0

    .line 12
    :cond_0
    new-instance v0, Lcom/join/mgps/adapter/ForumBaseAdapter$z0;

    .line 13
    .line 14
    invoke-direct {v0, p0}, Lcom/join/mgps/adapter/ForumBaseAdapter$z0;-><init>(Lcom/join/mgps/adapter/ForumBaseAdapter;)V

    .line 15
    .line 16
    .line 17
    iget-object p2, p0, Lcom/join/mgps/adapter/ForumBaseAdapter;->e:Landroid/content/Context;

    .line 18
    .line 19
    invoke-static {p2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    .line 20
    .line 21
    .line 22
    move-result-object p2

    .line 23
    const v1, 0x7f0d06e9

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
    const v1, 0x7f0a1051

    .line 32
    .line 33
    .line 34
    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 35
    .line 36
    .line 37
    move-result-object v1

    .line 38
    iput-object v1, v0, Lcom/join/mgps/adapter/ForumBaseAdapter$z0;->b:Landroid/view/View;

    .line 39
    .line 40
    const v2, 0x7f0a0697

    .line 41
    .line 42
    .line 43
    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 44
    .line 45
    .line 46
    move-result-object v1

    .line 47
    check-cast v1, Lcom/facebook/drawee/view/SimpleDraweeView;

    .line 48
    .line 49
    iput-object v1, v0, Lcom/join/mgps/adapter/ForumBaseAdapter$z0;->c:Lcom/facebook/drawee/view/SimpleDraweeView;

    .line 50
    .line 51
    iget-object v1, v0, Lcom/join/mgps/adapter/ForumBaseAdapter$z0;->b:Landroid/view/View;

    .line 52
    .line 53
    const v2, 0x7f0a069a

    .line 54
    .line 55
    .line 56
    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 57
    .line 58
    .line 59
    move-result-object v1

    .line 60
    check-cast v1, Landroid/widget/TextView;

    .line 61
    .line 62
    iput-object v1, v0, Lcom/join/mgps/adapter/ForumBaseAdapter$z0;->d:Landroid/widget/TextView;

    .line 63
    .line 64
    iget-object v1, v0, Lcom/join/mgps/adapter/ForumBaseAdapter$z0;->b:Landroid/view/View;

    .line 65
    .line 66
    const v2, 0x7f0a0693

    .line 67
    .line 68
    .line 69
    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 70
    .line 71
    .line 72
    move-result-object v1

    .line 73
    check-cast v1, Landroid/widget/TextView;

    .line 74
    .line 75
    iput-object v1, v0, Lcom/join/mgps/adapter/ForumBaseAdapter$z0;->j:Landroid/widget/TextView;

    .line 76
    .line 77
    iget-object v1, v0, Lcom/join/mgps/adapter/ForumBaseAdapter$z0;->b:Landroid/view/View;

    .line 78
    .line 79
    const v2, 0x7f0a0694

    .line 80
    .line 81
    .line 82
    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 83
    .line 84
    .line 85
    move-result-object v1

    .line 86
    check-cast v1, Landroid/widget/Button;

    .line 87
    .line 88
    iput-object v1, v0, Lcom/join/mgps/adapter/ForumBaseAdapter$z0;->h:Landroid/widget/Button;

    .line 89
    .line 90
    iget-object v1, v0, Lcom/join/mgps/adapter/ForumBaseAdapter$z0;->b:Landroid/view/View;

    .line 91
    .line 92
    const v2, 0x7f0a0695

    .line 93
    .line 94
    .line 95
    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 96
    .line 97
    .line 98
    move-result-object v1

    .line 99
    check-cast v1, Landroid/widget/LinearLayout;

    .line 100
    .line 101
    iput-object v1, v0, Lcom/join/mgps/adapter/ForumBaseAdapter$z0;->g:Landroid/widget/LinearLayout;

    .line 102
    .line 103
    iget-object v1, v0, Lcom/join/mgps/adapter/ForumBaseAdapter$z0;->b:Landroid/view/View;

    .line 104
    .line 105
    const v2, 0x7f0a06ba

    .line 106
    .line 107
    .line 108
    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 109
    .line 110
    .line 111
    move-result-object v1

    .line 112
    check-cast v1, Landroid/widget/TextView;

    .line 113
    .line 114
    iput-object v1, v0, Lcom/join/mgps/adapter/ForumBaseAdapter$z0;->i:Landroid/widget/TextView;

    .line 115
    .line 116
    invoke-virtual {p2, v0}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 117
    .line 118
    .line 119
    :goto_0
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/join/mgps/adapter/ForumBaseAdapter;->getItem(I)Ljava/lang/Object;

    .line 120
    .line 121
    .line 122
    move-result-object p1

    .line 123
    check-cast p1, Lcom/join/mgps/adapter/ForumBaseAdapter$r1$l;

    .line 124
    .line 125
    if-nez p1, :cond_1

    .line 126
    .line 127
    return-object p2

    .line 128
    :cond_1
    iget-object v1, p1, Lcom/join/mgps/adapter/ForumBaseAdapter$r1$l;->a:Lcom/join/mgps/dto/ForumBean;

    .line 129
    .line 130
    iget-object v2, v0, Lcom/join/mgps/adapter/ForumBaseAdapter$z0;->c:Lcom/facebook/drawee/view/SimpleDraweeView;

    .line 131
    .line 132
    invoke-virtual {v1}, Lcom/join/mgps/dto/ForumBean;->getIcon_src()Ljava/lang/String;

    .line 133
    .line 134
    .line 135
    move-result-object v3

    .line 136
    iget-object v4, p0, Lcom/join/mgps/adapter/ForumBaseAdapter;->e:Landroid/content/Context;

    .line 137
    .line 138
    invoke-static {v4}, Lcom/join/android/app/common/utils/l;->C(Landroid/content/Context;)Lcom/facebook/drawee/generic/RoundingParams;

    .line 139
    .line 140
    .line 141
    move-result-object v4

    .line 142
    invoke-static {v2, v3, v4}, Lcom/join/android/app/common/utils/l;->j(Lcom/facebook/drawee/view/SimpleDraweeView;Ljava/lang/String;Lcom/facebook/drawee/generic/RoundingParams;)V

    .line 143
    .line 144
    .line 145
    iget-object v2, v0, Lcom/join/mgps/adapter/ForumBaseAdapter$z0;->d:Landroid/widget/TextView;

    .line 146
    .line 147
    new-instance v3, Ljava/lang/StringBuilder;

    .line 148
    .line 149
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 150
    .line 151
    .line 152
    invoke-virtual {v1}, Lcom/join/mgps/dto/ForumBean;->getName()Ljava/lang/String;

    .line 153
    .line 154
    .line 155
    move-result-object v4

    .line 156
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 157
    .line 158
    .line 159
    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 160
    .line 161
    .line 162
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 163
    .line 164
    .line 165
    move-result-object v3

    .line 166
    invoke-static {v2, v3, p3}, Lcom/join/mgps/Util/r0;->D1(Landroid/widget/TextView;Ljava/lang/String;Ljava/lang/String;)V

    .line 167
    .line 168
    .line 169
    iget-object v2, v0, Lcom/join/mgps/adapter/ForumBaseAdapter$z0;->j:Landroid/widget/TextView;

    .line 170
    .line 171
    invoke-virtual {v1}, Lcom/join/mgps/dto/ForumBean;->getDescription()Ljava/lang/String;

    .line 172
    .line 173
    .line 174
    move-result-object v3

    .line 175
    invoke-static {v2, v3, p3}, Lcom/join/mgps/Util/r0;->D1(Landroid/widget/TextView;Ljava/lang/String;Ljava/lang/String;)V

    .line 176
    .line 177
    .line 178
    iget-object v2, v0, Lcom/join/mgps/adapter/ForumBaseAdapter$z0;->b:Landroid/view/View;

    .line 179
    .line 180
    invoke-virtual {p0, v2, v1}, Lcom/join/mgps/adapter/ForumBaseAdapter;->O0(Landroid/view/View;Lcom/join/mgps/dto/ForumBean;)V

    .line 181
    .line 182
    .line 183
    iget-object v2, v0, Lcom/join/mgps/adapter/ForumBaseAdapter$z0;->i:Landroid/widget/TextView;

    .line 184
    .line 185
    invoke-virtual {v2}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    .line 186
    .line 187
    .line 188
    move-result-object v2

    .line 189
    iget-object v3, v0, Lcom/join/mgps/adapter/ForumBaseAdapter$z0;->i:Landroid/widget/TextView;

    .line 190
    .line 191
    const/4 v4, 0x1

    .line 192
    new-array v4, v4, [Ljava/lang/Object;

    .line 193
    .line 194
    new-instance v5, Ljava/lang/StringBuilder;

    .line 195
    .line 196
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 197
    .line 198
    .line 199
    invoke-virtual {v1}, Lcom/join/mgps/dto/ForumBean;->getToday_posts()I

    .line 200
    .line 201
    .line 202
    move-result v6

    .line 203
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 204
    .line 205
    .line 206
    invoke-virtual {v5, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 207
    .line 208
    .line 209
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 210
    .line 211
    .line 212
    move-result-object p3

    .line 213
    const/4 v5, 0x0

    .line 214
    aput-object p3, v4, v5

    .line 215
    .line 216
    const p3, 0x7f120132

    .line 217
    .line 218
    .line 219
    invoke-virtual {v2, p3, v4}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    .line 220
    .line 221
    .line 222
    move-result-object p3

    .line 223
    const-string v2, "\u4eca\u65e5 0"

    .line 224
    .line 225
    invoke-static {v3, p3, v2}, Lcom/join/mgps/Util/r0;->D1(Landroid/widget/TextView;Ljava/lang/String;Ljava/lang/String;)V

    .line 226
    .line 227
    .line 228
    iget-boolean p3, p1, Lcom/join/mgps/adapter/ForumBaseAdapter$r1$l;->b:Z

    .line 229
    .line 230
    const/16 v2, 0x8

    .line 231
    .line 232
    if-eqz p3, :cond_3

    .line 233
    .line 234
    invoke-virtual {v1}, Lcom/join/mgps/dto/ForumBean;->is_follow()Z

    .line 235
    .line 236
    .line 237
    move-result p3

    .line 238
    if-eqz p3, :cond_2

    .line 239
    .line 240
    iget-object p3, v0, Lcom/join/mgps/adapter/ForumBaseAdapter$z0;->g:Landroid/widget/LinearLayout;

    .line 241
    .line 242
    invoke-virtual {p3, v2}, Landroid/view/View;->setVisibility(I)V

    .line 243
    .line 244
    .line 245
    goto :goto_1

    .line 246
    :cond_2
    iget-object p3, v0, Lcom/join/mgps/adapter/ForumBaseAdapter$z0;->g:Landroid/widget/LinearLayout;

    .line 247
    .line 248
    invoke-virtual {p3, v5}, Landroid/view/View;->setVisibility(I)V

    .line 249
    .line 250
    .line 251
    goto :goto_1

    .line 252
    :cond_3
    iget-object p3, v0, Lcom/join/mgps/adapter/ForumBaseAdapter$z0;->g:Landroid/widget/LinearLayout;

    .line 253
    .line 254
    invoke-virtual {p3, v2}, Landroid/view/View;->setVisibility(I)V

    .line 255
    .line 256
    .line 257
    :goto_1
    iget-object p3, v0, Lcom/join/mgps/adapter/ForumBaseAdapter$z0;->h:Landroid/widget/Button;

    .line 258
    .line 259
    iget-object p1, p1, Lcom/join/mgps/adapter/ForumBaseAdapter$r1$l;->a:Lcom/join/mgps/dto/ForumBean;

    .line 260
    .line 261
    invoke-virtual {p0, p3, p1}, Lcom/join/mgps/adapter/ForumBaseAdapter;->M0(Landroid/view/View;Lcom/join/mgps/dto/ForumBean;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 262
    .line 263
    .line 264
    goto :goto_2

    .line 265
    :catch_0
    move-exception p1

    .line 266
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 267
    .line 268
    .line 269
    :goto_2
    return-object p2
.end method

.method private H(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 1
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
    move-result-object p1

    .line 7
    check-cast p1, Lcom/join/mgps/adapter/ForumBaseAdapter$a1;

    .line 8
    .line 9
    goto :goto_0

    .line 10
    :cond_0
    new-instance p1, Lcom/join/mgps/adapter/ForumBaseAdapter$a1;

    .line 11
    .line 12
    invoke-direct {p1, p0}, Lcom/join/mgps/adapter/ForumBaseAdapter$a1;-><init>(Lcom/join/mgps/adapter/ForumBaseAdapter;)V

    .line 13
    .line 14
    .line 15
    iget-object p2, p0, Lcom/join/mgps/adapter/ForumBaseAdapter;->e:Landroid/content/Context;

    .line 16
    .line 17
    invoke-static {p2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    .line 18
    .line 19
    .line 20
    move-result-object p2

    .line 21
    const p3, 0x7f0d06ed

    .line 22
    .line 23
    .line 24
    const/4 v0, 0x0

    .line 25
    invoke-virtual {p2, p3, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 26
    .line 27
    .line 28
    move-result-object p2

    .line 29
    const p3, 0x7f0a06bd

    .line 30
    .line 31
    .line 32
    invoke-virtual {p2, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 33
    .line 34
    .line 35
    move-result-object p3

    .line 36
    iput-object p3, p1, Lcom/join/mgps/adapter/ForumBaseAdapter$a1;->b:Landroid/view/View;

    .line 37
    .line 38
    invoke-virtual {p2, p1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 39
    .line 40
    .line 41
    :goto_0
    :try_start_0
    iget-object p1, p1, Lcom/join/mgps/adapter/ForumBaseAdapter$a1;->b:Landroid/view/View;

    .line 42
    .line 43
    if-eqz p1, :cond_1

    .line 44
    .line 45
    invoke-virtual {p0, p2}, Lcom/join/mgps/adapter/ForumBaseAdapter;->P0(Landroid/view/View;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 46
    .line 47
    .line 48
    goto :goto_1

    .line 49
    :catch_0
    move-exception p1

    .line 50
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 51
    .line 52
    .line 53
    :cond_1
    :goto_1
    return-object p2
.end method

.method private I(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 5
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
    const-string p3, ""

    .line 2
    .line 3
    const/4 v0, 0x0

    .line 4
    if-eqz p2, :cond_0

    .line 5
    .line 6
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    .line 7
    .line 8
    .line 9
    move-result-object v1

    .line 10
    instance-of v1, v1, Lcom/join/mgps/adapter/ForumBaseAdapter$c1;

    .line 11
    .line 12
    if-eqz v1, :cond_1

    .line 13
    .line 14
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    .line 15
    .line 16
    .line 17
    move-result-object v0

    .line 18
    check-cast v0, Lcom/join/mgps/adapter/ForumBaseAdapter$c1;

    .line 19
    .line 20
    goto/16 :goto_0

    .line 21
    .line 22
    :cond_0
    new-instance p2, Lcom/join/mgps/adapter/ForumBaseAdapter$c1;

    .line 23
    .line 24
    invoke-direct {p2, p0}, Lcom/join/mgps/adapter/ForumBaseAdapter$c1;-><init>(Lcom/join/mgps/adapter/ForumBaseAdapter;)V

    .line 25
    .line 26
    .line 27
    iget-object v1, p0, Lcom/join/mgps/adapter/ForumBaseAdapter;->e:Landroid/content/Context;

    .line 28
    .line 29
    invoke-static {v1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    .line 30
    .line 31
    .line 32
    move-result-object v1

    .line 33
    const v2, 0x7f0d0681

    .line 34
    .line 35
    .line 36
    invoke-virtual {v1, v2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 37
    .line 38
    .line 39
    move-result-object v0

    .line 40
    const v1, 0x7f0a0134

    .line 41
    .line 42
    .line 43
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 44
    .line 45
    .line 46
    move-result-object v1

    .line 47
    check-cast v1, Lcom/facebook/drawee/view/SimpleDraweeView;

    .line 48
    .line 49
    iput-object v1, p2, Lcom/join/mgps/adapter/ForumBaseAdapter$c1;->j:Lcom/facebook/drawee/view/SimpleDraweeView;

    .line 50
    .line 51
    const v1, 0x7f0a0949

    .line 52
    .line 53
    .line 54
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 55
    .line 56
    .line 57
    move-result-object v1

    .line 58
    iput-object v1, p2, Lcom/join/mgps/adapter/ForumBaseAdapter$c1;->g:Landroid/view/View;

    .line 59
    .line 60
    const v1, 0x7f0a07ce

    .line 61
    .line 62
    .line 63
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 64
    .line 65
    .line 66
    move-result-object v1

    .line 67
    check-cast v1, Landroid/widget/TextView;

    .line 68
    .line 69
    iput-object v1, p2, Lcom/join/mgps/adapter/ForumBaseAdapter$c1;->b:Landroid/widget/TextView;

    .line 70
    .line 71
    const v1, 0x7f0a082a

    .line 72
    .line 73
    .line 74
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 75
    .line 76
    .line 77
    move-result-object v1

    .line 78
    check-cast v1, Landroid/widget/TextView;

    .line 79
    .line 80
    iput-object v1, p2, Lcom/join/mgps/adapter/ForumBaseAdapter$c1;->c:Landroid/widget/TextView;

    .line 81
    .line 82
    const v1, 0x7f0a0e5e

    .line 83
    .line 84
    .line 85
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 86
    .line 87
    .line 88
    move-result-object v1

    .line 89
    check-cast v1, Landroid/widget/TextView;

    .line 90
    .line 91
    iput-object v1, p2, Lcom/join/mgps/adapter/ForumBaseAdapter$c1;->d:Landroid/widget/TextView;

    .line 92
    .line 93
    const v1, 0x7f0a03cd

    .line 94
    .line 95
    .line 96
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 97
    .line 98
    .line 99
    move-result-object v1

    .line 100
    check-cast v1, Landroid/widget/TextView;

    .line 101
    .line 102
    iput-object v1, p2, Lcom/join/mgps/adapter/ForumBaseAdapter$c1;->e:Landroid/widget/TextView;

    .line 103
    .line 104
    const v1, 0x7f0a06b1

    .line 105
    .line 106
    .line 107
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 108
    .line 109
    .line 110
    move-result-object v1

    .line 111
    check-cast v1, Landroid/widget/TextView;

    .line 112
    .line 113
    iput-object v1, p2, Lcom/join/mgps/adapter/ForumBaseAdapter$c1;->h:Landroid/widget/TextView;

    .line 114
    .line 115
    const v1, 0x7f0a06ab

    .line 116
    .line 117
    .line 118
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 119
    .line 120
    .line 121
    move-result-object v1

    .line 122
    check-cast v1, Landroid/widget/ImageView;

    .line 123
    .line 124
    iput-object v1, p2, Lcom/join/mgps/adapter/ForumBaseAdapter$c1;->i:Landroid/widget/ImageView;

    .line 125
    .line 126
    const v1, 0x7f0a04e1

    .line 127
    .line 128
    .line 129
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 130
    .line 131
    .line 132
    move-result-object v1

    .line 133
    iput-object v1, p2, Lcom/join/mgps/adapter/ForumBaseAdapter$c1;->f:Landroid/view/View;

    .line 134
    .line 135
    invoke-virtual {v0, p2}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 136
    .line 137
    .line 138
    move-object v4, v0

    .line 139
    move-object v0, p2

    .line 140
    move-object p2, v4

    .line 141
    :cond_1
    :goto_0
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/join/mgps/adapter/ForumBaseAdapter;->getItem(I)Ljava/lang/Object;

    .line 142
    .line 143
    .line 144
    move-result-object p1

    .line 145
    check-cast p1, Lcom/join/mgps/adapter/ForumBaseAdapter$r1$m;

    .line 146
    .line 147
    if-eqz p1, :cond_5

    .line 148
    .line 149
    if-nez v0, :cond_2

    .line 150
    .line 151
    goto/16 :goto_2

    .line 152
    .line 153
    :cond_2
    iget v1, p1, Lcom/join/mgps/adapter/ForumBaseAdapter$r1$m;->a:I

    .line 154
    .line 155
    if-nez v1, :cond_3

    .line 156
    .line 157
    iget-object v1, v0, Lcom/join/mgps/adapter/ForumBaseAdapter$c1;->g:Landroid/view/View;

    .line 158
    .line 159
    invoke-virtual {v1}, Landroid/view/View;->getVisibility()I

    .line 160
    .line 161
    .line 162
    move-result v1

    .line 163
    if-eqz v1, :cond_4

    .line 164
    .line 165
    iget-object v1, v0, Lcom/join/mgps/adapter/ForumBaseAdapter$c1;->g:Landroid/view/View;

    .line 166
    .line 167
    const/4 v2, 0x0

    .line 168
    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 169
    .line 170
    .line 171
    goto :goto_1

    .line 172
    :cond_3
    iget-object v1, v0, Lcom/join/mgps/adapter/ForumBaseAdapter$c1;->g:Landroid/view/View;

    .line 173
    .line 174
    invoke-virtual {v1}, Landroid/view/View;->getVisibility()I

    .line 175
    .line 176
    .line 177
    move-result v1

    .line 178
    const/16 v2, 0x8

    .line 179
    .line 180
    if-eq v1, v2, :cond_4

    .line 181
    .line 182
    iget-object v1, v0, Lcom/join/mgps/adapter/ForumBaseAdapter$c1;->g:Landroid/view/View;

    .line 183
    .line 184
    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 185
    .line 186
    .line 187
    :cond_4
    :goto_1
    iget-object v1, v0, Lcom/join/mgps/adapter/ForumBaseAdapter$c1;->b:Landroid/widget/TextView;

    .line 188
    .line 189
    iget-object v2, p1, Lcom/join/mgps/adapter/ForumBaseAdapter$r1$m;->c:Ljava/lang/String;

    .line 190
    .line 191
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 192
    .line 193
    .line 194
    iget-object v1, v0, Lcom/join/mgps/adapter/ForumBaseAdapter$c1;->c:Landroid/widget/TextView;

    .line 195
    .line 196
    iget-object v2, p1, Lcom/join/mgps/adapter/ForumBaseAdapter$r1$m;->d:Ljava/lang/String;

    .line 197
    .line 198
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 199
    .line 200
    .line 201
    iget-object v1, v0, Lcom/join/mgps/adapter/ForumBaseAdapter$c1;->d:Landroid/widget/TextView;

    .line 202
    .line 203
    new-instance v2, Ljava/lang/StringBuilder;

    .line 204
    .line 205
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 206
    .line 207
    .line 208
    iget v3, p1, Lcom/join/mgps/adapter/ForumBaseAdapter$r1$m;->e:I

    .line 209
    .line 210
    invoke-static {v3}, Lcom/join/mgps/Util/r0;->R(I)Ljava/lang/String;

    .line 211
    .line 212
    .line 213
    move-result-object v3

    .line 214
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 215
    .line 216
    .line 217
    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 218
    .line 219
    .line 220
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 221
    .line 222
    .line 223
    move-result-object v2

    .line 224
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 225
    .line 226
    .line 227
    iget-object v1, v0, Lcom/join/mgps/adapter/ForumBaseAdapter$c1;->e:Landroid/widget/TextView;

    .line 228
    .line 229
    new-instance v2, Ljava/lang/StringBuilder;

    .line 230
    .line 231
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 232
    .line 233
    .line 234
    iget v3, p1, Lcom/join/mgps/adapter/ForumBaseAdapter$r1$m;->f:I

    .line 235
    .line 236
    invoke-static {v3}, Lcom/join/mgps/Util/r0;->R(I)Ljava/lang/String;

    .line 237
    .line 238
    .line 239
    move-result-object v3

    .line 240
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 241
    .line 242
    .line 243
    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 244
    .line 245
    .line 246
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 247
    .line 248
    .line 249
    move-result-object v2

    .line 250
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 251
    .line 252
    .line 253
    iget-object v1, v0, Lcom/join/mgps/adapter/ForumBaseAdapter$c1;->h:Landroid/widget/TextView;

    .line 254
    .line 255
    new-instance v2, Ljava/lang/StringBuilder;

    .line 256
    .line 257
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 258
    .line 259
    .line 260
    iget v3, p1, Lcom/join/mgps/adapter/ForumBaseAdapter$r1$m;->i:I

    .line 261
    .line 262
    invoke-static {v3}, Lcom/join/mgps/Util/r0;->R(I)Ljava/lang/String;

    .line 263
    .line 264
    .line 265
    move-result-object v3

    .line 266
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 267
    .line 268
    .line 269
    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 270
    .line 271
    .line 272
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 273
    .line 274
    .line 275
    move-result-object p3

    .line 276
    invoke-virtual {v1, p3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 277
    .line 278
    .line 279
    iget-object p3, v0, Lcom/join/mgps/adapter/ForumBaseAdapter$c1;->j:Lcom/facebook/drawee/view/SimpleDraweeView;

    .line 280
    .line 281
    iget-object v1, p1, Lcom/join/mgps/adapter/ForumBaseAdapter$r1$m;->k:Ljava/lang/String;

    .line 282
    .line 283
    invoke-static {p3, v1}, Lcom/join/android/app/common/utils/l;->y(Lcom/facebook/drawee/view/SimpleDraweeView;Ljava/lang/String;)V

    .line 284
    .line 285
    .line 286
    iget-object p3, v0, Lcom/join/mgps/adapter/ForumBaseAdapter$c1;->j:Lcom/facebook/drawee/view/SimpleDraweeView;

    .line 287
    .line 288
    new-instance v1, Lcom/join/mgps/adapter/ForumBaseAdapter$c0;

    .line 289
    .line 290
    invoke-direct {v1, p0, p1}, Lcom/join/mgps/adapter/ForumBaseAdapter$c0;-><init>(Lcom/join/mgps/adapter/ForumBaseAdapter;Lcom/join/mgps/adapter/ForumBaseAdapter$r1$m;)V

    .line 291
    .line 292
    .line 293
    invoke-virtual {p3, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 294
    .line 295
    .line 296
    iget p3, p1, Lcom/join/mgps/adapter/ForumBaseAdapter$r1$m;->g:I

    .line 297
    .line 298
    invoke-virtual {p0, p2, p3}, Lcom/join/mgps/adapter/ForumBaseAdapter;->R0(Landroid/view/View;I)V

    .line 299
    .line 300
    .line 301
    iget-boolean p3, p1, Lcom/join/mgps/adapter/ForumBaseAdapter$r1$m;->j:Z

    .line 302
    .line 303
    iget v1, p1, Lcom/join/mgps/adapter/ForumBaseAdapter$r1$m;->e:I

    .line 304
    .line 305
    iget p1, p1, Lcom/join/mgps/adapter/ForumBaseAdapter$r1$m;->g:I

    .line 306
    .line 307
    invoke-direct {p0, v0, p3, v1, p1}, Lcom/join/mgps/adapter/ForumBaseAdapter;->q0(Lcom/join/mgps/adapter/ForumBaseAdapter$c1;ZII)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 308
    .line 309
    .line 310
    goto :goto_3

    .line 311
    :cond_5
    :goto_2
    return-object p2

    .line 312
    :catch_0
    move-exception p1

    .line 313
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 314
    .line 315
    .line 316
    :goto_3
    return-object p2
.end method

.method private J(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 18
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
    move-object/from16 v7, p0

    .line 2
    .line 3
    const/4 v0, 0x0

    .line 4
    if-eqz p2, :cond_1

    .line 5
    .line 6
    :try_start_0
    invoke-virtual/range {p2 .. p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    .line 7
    .line 8
    .line 9
    move-result-object v1

    .line 10
    instance-of v1, v1, Lcom/join/mgps/adapter/ForumBaseAdapter$d1;

    .line 11
    .line 12
    if-eqz v1, :cond_0

    .line 13
    .line 14
    invoke-virtual/range {p2 .. p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    .line 15
    .line 16
    .line 17
    move-result-object v0

    .line 18
    check-cast v0, Lcom/join/mgps/adapter/ForumBaseAdapter$d1;

    .line 19
    .line 20
    :cond_0
    move-object/from16 v8, p2

    .line 21
    .line 22
    goto :goto_0

    .line 23
    :cond_1
    new-instance v1, Lcom/join/mgps/adapter/ForumBaseAdapter$d1;

    .line 24
    .line 25
    invoke-direct {v1, v7}, Lcom/join/mgps/adapter/ForumBaseAdapter$d1;-><init>(Lcom/join/mgps/adapter/ForumBaseAdapter;)V

    .line 26
    .line 27
    .line 28
    iget-object v2, v7, Lcom/join/mgps/adapter/ForumBaseAdapter;->e:Landroid/content/Context;

    .line 29
    .line 30
    invoke-static {v2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    .line 31
    .line 32
    .line 33
    move-result-object v2

    .line 34
    const v3, 0x7f0d0682

    .line 35
    .line 36
    .line 37
    invoke-virtual {v2, v3, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 38
    .line 39
    .line 40
    move-result-object v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2

    .line 41
    const v0, 0x7f0a15d8

    .line 42
    .line 43
    .line 44
    :try_start_1
    invoke-virtual {v2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 45
    .line 46
    .line 47
    move-result-object v0

    .line 48
    iput-object v0, v1, Lcom/join/mgps/adapter/ForumBaseAdapter$d1;->b:Landroid/view/View;

    .line 49
    .line 50
    const v0, 0x7f0a093f

    .line 51
    .line 52
    .line 53
    invoke-virtual {v2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 54
    .line 55
    .line 56
    move-result-object v0

    .line 57
    iput-object v0, v1, Lcom/join/mgps/adapter/ForumBaseAdapter$d1;->c:Landroid/view/View;

    .line 58
    .line 59
    const v0, 0x7f0a092d

    .line 60
    .line 61
    .line 62
    invoke-virtual {v2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 63
    .line 64
    .line 65
    move-result-object v0

    .line 66
    check-cast v0, Lcom/facebook/drawee/view/SimpleDraweeView;

    .line 67
    .line 68
    iput-object v0, v1, Lcom/join/mgps/adapter/ForumBaseAdapter$d1;->d:Lcom/facebook/drawee/view/SimpleDraweeView;

    .line 69
    .line 70
    const v0, 0x7f0a092e

    .line 71
    .line 72
    .line 73
    invoke-virtual {v2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 74
    .line 75
    .line 76
    move-result-object v0

    .line 77
    check-cast v0, Lcom/facebook/drawee/view/SimpleDraweeView;

    .line 78
    .line 79
    iput-object v0, v1, Lcom/join/mgps/adapter/ForumBaseAdapter$d1;->e:Lcom/facebook/drawee/view/SimpleDraweeView;

    .line 80
    .line 81
    const v0, 0x7f0a092f

    .line 82
    .line 83
    .line 84
    invoke-virtual {v2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 85
    .line 86
    .line 87
    move-result-object v0

    .line 88
    check-cast v0, Lcom/facebook/drawee/view/SimpleDraweeView;

    .line 89
    .line 90
    iput-object v0, v1, Lcom/join/mgps/adapter/ForumBaseAdapter$d1;->f:Lcom/facebook/drawee/view/SimpleDraweeView;

    .line 91
    .line 92
    const v0, 0x7f0a08ce

    .line 93
    .line 94
    .line 95
    invoke-virtual {v2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 96
    .line 97
    .line 98
    move-result-object v0

    .line 99
    check-cast v0, Landroid/widget/TextView;

    .line 100
    .line 101
    iput-object v0, v1, Lcom/join/mgps/adapter/ForumBaseAdapter$d1;->g:Landroid/widget/TextView;

    .line 102
    .line 103
    invoke-virtual {v2, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 104
    .line 105
    .line 106
    move-object v0, v1

    .line 107
    move-object v8, v2

    .line 108
    :goto_0
    :try_start_2
    invoke-virtual/range {p0 .. p1}, Lcom/join/mgps/adapter/ForumBaseAdapter;->getItem(I)Ljava/lang/Object;

    .line 109
    .line 110
    .line 111
    move-result-object v1

    .line 112
    move-object v9, v1

    .line 113
    check-cast v9, Lcom/join/mgps/adapter/ForumBaseAdapter$r1$n;

    .line 114
    .line 115
    if-eqz v9, :cond_d

    .line 116
    .line 117
    if-nez v0, :cond_2

    .line 118
    .line 119
    goto/16 :goto_6

    .line 120
    .line 121
    :cond_2
    iget-object v1, v9, Lcom/join/mgps/adapter/ForumBaseAdapter$r1$n;->a:Ljava/util/List;

    .line 122
    .line 123
    const/16 v10, 0x8

    .line 124
    .line 125
    if-eqz v1, :cond_c

    .line 126
    .line 127
    invoke-interface {v1}, Ljava/util/List;->size()I

    .line 128
    .line 129
    .line 130
    move-result v1

    .line 131
    if-nez v1, :cond_3

    .line 132
    .line 133
    goto/16 :goto_5

    .line 134
    .line 135
    :cond_3
    const/4 v11, 0x0

    .line 136
    invoke-virtual {v8, v11}, Landroid/view/View;->setVisibility(I)V

    .line 137
    .line 138
    .line 139
    iget-object v12, v9, Lcom/join/mgps/adapter/ForumBaseAdapter$r1$n;->b:Ljava/util/List;

    .line 140
    .line 141
    iget-object v1, v0, Lcom/join/mgps/adapter/ForumBaseAdapter$d1;->g:Landroid/widget/TextView;

    .line 142
    .line 143
    if-eqz v12, :cond_4

    .line 144
    .line 145
    invoke-interface {v12}, Ljava/util/List;->size()I

    .line 146
    .line 147
    .line 148
    move-result v2

    .line 149
    move v13, v2

    .line 150
    goto :goto_1

    .line 151
    :cond_4
    const/4 v13, 0x0

    .line 152
    :goto_1
    const/4 v14, 0x3

    .line 153
    if-le v13, v14, :cond_5

    .line 154
    .line 155
    invoke-virtual {v1, v11}, Landroid/view/View;->setVisibility(I)V

    .line 156
    .line 157
    .line 158
    new-instance v2, Ljava/lang/StringBuilder;

    .line 159
    .line 160
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 161
    .line 162
    .line 163
    invoke-interface {v12}, Ljava/util/List;->size()I

    .line 164
    .line 165
    .line 166
    move-result v3

    .line 167
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 168
    .line 169
    .line 170
    const-string v3, ""

    .line 171
    .line 172
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 173
    .line 174
    .line 175
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 176
    .line 177
    .line 178
    move-result-object v2

    .line 179
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 180
    .line 181
    .line 182
    goto :goto_2

    .line 183
    :cond_5
    invoke-virtual {v1, v10}, Landroid/view/View;->setVisibility(I)V

    .line 184
    .line 185
    .line 186
    :goto_2
    iget-object v1, v7, Lcom/join/mgps/adapter/ForumBaseAdapter;->l:Landroid/widget/LinearLayout$LayoutParams;

    .line 187
    .line 188
    if-nez v1, :cond_6

    .line 189
    .line 190
    invoke-virtual/range {p0 .. p0}, Lcom/join/mgps/adapter/ForumBaseAdapter;->g0()Landroid/widget/LinearLayout$LayoutParams;

    .line 191
    .line 192
    .line 193
    move-result-object v1

    .line 194
    iput-object v1, v7, Lcom/join/mgps/adapter/ForumBaseAdapter;->l:Landroid/widget/LinearLayout$LayoutParams;

    .line 195
    .line 196
    :cond_6
    new-array v15, v14, [Lcom/facebook/drawee/view/SimpleDraweeView;

    .line 197
    .line 198
    iget-object v1, v0, Lcom/join/mgps/adapter/ForumBaseAdapter$d1;->d:Lcom/facebook/drawee/view/SimpleDraweeView;

    .line 199
    .line 200
    aput-object v1, v15, v11

    .line 201
    .line 202
    iget-object v1, v0, Lcom/join/mgps/adapter/ForumBaseAdapter$d1;->e:Lcom/facebook/drawee/view/SimpleDraweeView;

    .line 203
    .line 204
    const/4 v6, 0x1

    .line 205
    aput-object v1, v15, v6

    .line 206
    .line 207
    iget-object v0, v0, Lcom/join/mgps/adapter/ForumBaseAdapter$d1;->f:Lcom/facebook/drawee/view/SimpleDraweeView;

    .line 208
    .line 209
    const/4 v1, 0x2

    .line 210
    aput-object v0, v15, v1

    .line 211
    .line 212
    const/4 v0, 0x0

    .line 213
    const/16 v16, 0x0

    .line 214
    .line 215
    :goto_3
    if-ge v0, v14, :cond_b

    .line 216
    .line 217
    aget-object v2, v15, v0

    .line 218
    .line 219
    iget-object v1, v9, Lcom/join/mgps/adapter/ForumBaseAdapter$r1$n;->a:Ljava/util/List;

    .line 220
    .line 221
    invoke-interface {v1}, Ljava/util/List;->size()I

    .line 222
    .line 223
    .line 224
    move-result v1

    .line 225
    if-lt v0, v1, :cond_7

    .line 226
    .line 227
    invoke-virtual {v2, v10}, Landroid/view/View;->setVisibility(I)V

    .line 228
    .line 229
    .line 230
    const/16 v17, 0x1

    .line 231
    .line 232
    goto/16 :goto_4

    .line 233
    .line 234
    :cond_7
    invoke-virtual {v2, v11}, Landroid/view/View;->setVisibility(I)V

    .line 235
    .line 236
    .line 237
    iget-object v1, v9, Lcom/join/mgps/adapter/ForumBaseAdapter$r1$n;->a:Ljava/util/List;

    .line 238
    .line 239
    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 240
    .line 241
    .line 242
    move-result-object v1

    .line 243
    check-cast v1, Lcom/join/mgps/dto/ForumBean$ForumPostsBean$ResBean;

    .line 244
    .line 245
    invoke-virtual {v1}, Lcom/join/mgps/dto/ForumBean$ForumPostsBean$ResBean;->getType()Ljava/lang/String;

    .line 246
    .line 247
    .line 248
    move-result-object v3

    .line 249
    const-string v4, "pic"

    .line 250
    .line 251
    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 252
    .line 253
    .line 254
    move-result v3

    .line 255
    if-eqz v3, :cond_9

    .line 256
    .line 257
    invoke-virtual {v1}, Lcom/join/mgps/dto/ForumBean$ForumPostsBean$ResBean;->getThumb()Ljava/lang/String;

    .line 258
    .line 259
    .line 260
    move-result-object v4

    .line 261
    invoke-static {v4}, Lcom/join/mgps/Util/r0;->i0(Ljava/lang/String;)[Ljava/lang/Integer;

    .line 262
    .line 263
    .line 264
    move-result-object v1

    .line 265
    if-nez v0, :cond_8

    .line 266
    .line 267
    if-ne v13, v6, :cond_8

    .line 268
    .line 269
    if-eqz v1, :cond_8

    .line 270
    .line 271
    aget-object v3, v1, v11

    .line 272
    .line 273
    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    .line 274
    .line 275
    .line 276
    move-result v3

    .line 277
    if-eqz v3, :cond_8

    .line 278
    .line 279
    aget-object v1, v1, v6

    .line 280
    .line 281
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    .line 282
    .line 283
    .line 284
    move-result v1

    .line 285
    if-eqz v1, :cond_8

    .line 286
    .line 287
    sub-int v5, v0, v16

    .line 288
    .line 289
    move-object/from16 v1, p0

    .line 290
    .line 291
    move v3, v0

    .line 292
    const/16 v17, 0x1

    .line 293
    .line 294
    move-object v6, v12

    .line 295
    invoke-virtual/range {v1 .. v6}, Lcom/join/mgps/adapter/ForumBaseAdapter;->E0(Lcom/facebook/drawee/view/SimpleDraweeView;ILjava/lang/String;ILjava/util/List;)V

    .line 296
    .line 297
    .line 298
    goto :goto_4

    .line 299
    :cond_8
    const/16 v17, 0x1

    .line 300
    .line 301
    sub-int v5, v0, v16

    .line 302
    .line 303
    move-object/from16 v1, p0

    .line 304
    .line 305
    move v3, v0

    .line 306
    move-object v6, v12

    .line 307
    invoke-virtual/range {v1 .. v6}, Lcom/join/mgps/adapter/ForumBaseAdapter;->F0(Lcom/facebook/drawee/view/SimpleDraweeView;ILjava/lang/String;ILjava/util/List;)V

    .line 308
    .line 309
    .line 310
    goto :goto_4

    .line 311
    :cond_9
    const/16 v17, 0x1

    .line 312
    .line 313
    invoke-virtual {v1}, Lcom/join/mgps/dto/ForumBean$ForumPostsBean$ResBean;->getType()Ljava/lang/String;

    .line 314
    .line 315
    .line 316
    move-result-object v3

    .line 317
    const-string v4, "video"

    .line 318
    .line 319
    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 320
    .line 321
    .line 322
    move-result v3

    .line 323
    if-eqz v3, :cond_a

    .line 324
    .line 325
    add-int/lit8 v16, v16, 0x1

    .line 326
    .line 327
    invoke-virtual {v1}, Lcom/join/mgps/dto/ForumBean$ForumPostsBean$ResBean;->getThumb()Ljava/lang/String;

    .line 328
    .line 329
    .line 330
    move-result-object v3

    .line 331
    invoke-virtual {v1}, Lcom/join/mgps/dto/ForumBean$ForumPostsBean$ResBean;->getRaw()Ljava/lang/String;

    .line 332
    .line 333
    .line 334
    move-result-object v1

    .line 335
    invoke-virtual {v7, v2, v0, v3, v1}, Lcom/join/mgps/adapter/ForumBaseAdapter;->g1(Lcom/facebook/drawee/view/SimpleDraweeView;ILjava/lang/String;Ljava/lang/String;)V

    .line 336
    .line 337
    .line 338
    :cond_a
    :goto_4
    add-int/lit8 v0, v0, 0x1

    .line 339
    .line 340
    const/4 v6, 0x1

    .line 341
    goto :goto_3

    .line 342
    :cond_b
    iget v0, v9, Lcom/join/mgps/adapter/ForumBaseAdapter$r1$n;->c:I

    .line 343
    .line 344
    invoke-virtual {v7, v8, v0}, Lcom/join/mgps/adapter/ForumBaseAdapter;->R0(Landroid/view/View;I)V

    .line 345
    .line 346
    .line 347
    goto :goto_8

    .line 348
    :cond_c
    :goto_5
    invoke-virtual {v8, v10}, Landroid/view/View;->setVisibility(I)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .line 349
    .line 350
    .line 351
    :cond_d
    :goto_6
    return-object v8

    .line 352
    :catch_0
    move-exception v0

    .line 353
    goto :goto_7

    .line 354
    :catch_1
    move-exception v0

    .line 355
    move-object v8, v2

    .line 356
    goto :goto_7

    .line 357
    :catch_2
    move-exception v0

    .line 358
    move-object/from16 v8, p2

    .line 359
    .line 360
    :goto_7
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 361
    .line 362
    .line 363
    :goto_8
    return-object v8
.end method

.method private J0(Lcom/facebook/drawee/view/SimpleDraweeView;Lcom/join/mgps/dto/BannerBean;I)V
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x0,
            0x10
        }
        names = {
            "imageView",
            "bean",
            "position"
        }
    .end annotation

    .line 1
    if-eqz p2, :cond_2

    .line 2
    .line 3
    if-nez p1, :cond_0

    .line 4
    .line 5
    goto/16 :goto_0

    .line 6
    .line 7
    :cond_0
    const/4 v0, 0x0

    .line 8
    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 9
    .line 10
    .line 11
    invoke-virtual {p2}, Lcom/join/mgps/dto/BannerBean;->getPic_remote()Ljava/lang/String;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 16
    .line 17
    .line 18
    move-result-object v1

    .line 19
    invoke-static {v1}, Lcom/join/android/app/common/utils/l;->A(Landroid/content/Context;)Lcom/facebook/drawee/generic/RoundingParams;

    .line 20
    .line 21
    .line 22
    move-result-object v1

    .line 23
    invoke-static {p1, v0, v1}, Lcom/join/android/app/common/utils/l;->j(Lcom/facebook/drawee/view/SimpleDraweeView;Ljava/lang/String;Lcom/facebook/drawee/generic/RoundingParams;)V

    .line 24
    .line 25
    .line 26
    iget-object v0, p0, Lcom/join/mgps/adapter/ForumBaseAdapter;->n:Landroid/widget/LinearLayout$LayoutParams;

    .line 27
    .line 28
    if-nez v0, :cond_1

    .line 29
    .line 30
    iget-object v0, p0, Lcom/join/mgps/adapter/ForumBaseAdapter;->e:Landroid/content/Context;

    .line 31
    .line 32
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 33
    .line 34
    .line 35
    move-result-object v0

    .line 36
    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    .line 37
    .line 38
    .line 39
    move-result-object v0

    .line 40
    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    .line 41
    .line 42
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 43
    .line 44
    .line 45
    move-result-object v1

    .line 46
    check-cast v1, Landroid/widget/LinearLayout$LayoutParams;

    .line 47
    .line 48
    iget-object v2, p0, Lcom/join/mgps/adapter/ForumBaseAdapter;->e:Landroid/content/Context;

    .line 49
    .line 50
    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 51
    .line 52
    .line 53
    move-result-object v2

    .line 54
    invoke-virtual {v2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    .line 55
    .line 56
    .line 57
    move-result-object v2

    .line 58
    iget v2, v2, Landroid/util/DisplayMetrics;->widthPixels:I

    .line 59
    .line 60
    int-to-float v2, v2

    .line 61
    const/high16 v3, 0x41900000    # 18.0f

    .line 62
    .line 63
    mul-float v0, v0, v3

    .line 64
    .line 65
    sub-float/2addr v2, v0

    .line 66
    float-to-int v0, v2

    .line 67
    div-int/lit8 v0, v0, 0x2

    .line 68
    .line 69
    iput v0, v1, Landroid/widget/LinearLayout$LayoutParams;->width:I

    .line 70
    .line 71
    const/high16 v2, 0x3f800000    # 1.0f

    .line 72
    .line 73
    int-to-float v0, v0

    .line 74
    mul-float v0, v0, v2

    .line 75
    .line 76
    const v2, 0x40047ae1    # 2.07f

    .line 77
    .line 78
    .line 79
    div-float/2addr v0, v2

    .line 80
    float-to-int v0, v0

    .line 81
    iput v0, v1, Landroid/widget/LinearLayout$LayoutParams;->height:I

    .line 82
    .line 83
    iput-object v1, p0, Lcom/join/mgps/adapter/ForumBaseAdapter;->n:Landroid/widget/LinearLayout$LayoutParams;

    .line 84
    .line 85
    :cond_1
    iget-object v0, p0, Lcom/join/mgps/adapter/ForumBaseAdapter;->n:Landroid/widget/LinearLayout$LayoutParams;

    .line 86
    .line 87
    invoke-virtual {p1, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 88
    .line 89
    .line 90
    invoke-static {p2}, Lcom/join/mgps/Util/r0;->j0(Lcom/join/mgps/dto/BannerBean;)Lcom/join/mgps/Util/IntentDateBean;

    .line 91
    .line 92
    .line 93
    move-result-object p2

    .line 94
    new-instance v0, Lcom/join/mgps/dto/ExtBean;

    .line 95
    .line 96
    invoke-direct {v0}, Lcom/join/mgps/dto/ExtBean;-><init>()V

    .line 97
    .line 98
    .line 99
    const-string v1, "forum"

    .line 100
    .line 101
    invoke-virtual {v0, v1}, Lcom/join/mgps/dto/ExtBean;->setFrom(Ljava/lang/String;)Lcom/join/mgps/dto/ExtBean;

    .line 102
    .line 103
    .line 104
    new-instance v1, Ljava/lang/StringBuilder;

    .line 105
    .line 106
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 107
    .line 108
    .line 109
    const-string v2, "banner2"

    .line 110
    .line 111
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 112
    .line 113
    .line 114
    add-int/lit8 v2, p3, 0x1

    .line 115
    .line 116
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 117
    .line 118
    .line 119
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 120
    .line 121
    .line 122
    move-result-object v1

    .line 123
    invoke-virtual {v0, v1}, Lcom/join/mgps/dto/ExtBean;->setPosition(Ljava/lang/String;)Lcom/join/mgps/dto/ExtBean;

    .line 124
    .line 125
    .line 126
    invoke-virtual {p2, v0}, Lcom/join/mgps/Util/IntentDateBean;->setExtBean(Lcom/join/mgps/dto/ExtBean;)V

    .line 127
    .line 128
    .line 129
    new-instance v0, Lcom/join/mgps/adapter/ForumBaseAdapter$i;

    .line 130
    .line 131
    invoke-direct {v0, p0, p2, p3}, Lcom/join/mgps/adapter/ForumBaseAdapter$i;-><init>(Lcom/join/mgps/adapter/ForumBaseAdapter;Lcom/join/mgps/Util/IntentDateBean;I)V

    .line 132
    .line 133
    .line 134
    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 135
    .line 136
    .line 137
    :cond_2
    :goto_0
    return-void
.end method

.method private K(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 5
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
    const-string p3, ""

    .line 2
    .line 3
    const/4 v0, 0x0

    .line 4
    if-eqz p2, :cond_0

    .line 5
    .line 6
    :try_start_0
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    .line 7
    .line 8
    .line 9
    move-result-object v1

    .line 10
    instance-of v1, v1, Lcom/join/mgps/adapter/ForumBaseAdapter$e1;

    .line 11
    .line 12
    if-eqz v1, :cond_1

    .line 13
    .line 14
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    .line 15
    .line 16
    .line 17
    move-result-object v0

    .line 18
    check-cast v0, Lcom/join/mgps/adapter/ForumBaseAdapter$e1;

    .line 19
    .line 20
    goto :goto_0

    .line 21
    :cond_0
    new-instance v1, Lcom/join/mgps/adapter/ForumBaseAdapter$e1;

    .line 22
    .line 23
    invoke-direct {v1, p0}, Lcom/join/mgps/adapter/ForumBaseAdapter$e1;-><init>(Lcom/join/mgps/adapter/ForumBaseAdapter;)V

    .line 24
    .line 25
    .line 26
    iget-object v2, p0, Lcom/join/mgps/adapter/ForumBaseAdapter;->e:Landroid/content/Context;

    .line 27
    .line 28
    invoke-static {v2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    .line 29
    .line 30
    .line 31
    move-result-object v2

    .line 32
    const v3, 0x7f0d0683

    .line 33
    .line 34
    .line 35
    invoke-virtual {v2, v3, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 36
    .line 37
    .line 38
    move-result-object p2

    .line 39
    const v0, 0x7f0a10a4

    .line 40
    .line 41
    .line 42
    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 43
    .line 44
    .line 45
    move-result-object v0

    .line 46
    check-cast v0, Lcom/join/android/app/component/optimizetext/StaticLayoutView;

    .line 47
    .line 48
    iput-object v0, v1, Lcom/join/mgps/adapter/ForumBaseAdapter$e1;->b:Lcom/join/android/app/component/optimizetext/StaticLayoutView;

    .line 49
    .line 50
    const v0, 0x7f0a04e1

    .line 51
    .line 52
    .line 53
    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 54
    .line 55
    .line 56
    move-result-object v0

    .line 57
    iput-object v0, v1, Lcom/join/mgps/adapter/ForumBaseAdapter$e1;->c:Landroid/view/View;

    .line 58
    .line 59
    const v0, 0x7f0a15d8

    .line 60
    .line 61
    .line 62
    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 63
    .line 64
    .line 65
    move-result-object v0

    .line 66
    iput-object v0, v1, Lcom/join/mgps/adapter/ForumBaseAdapter$e1;->d:Landroid/view/View;

    .line 67
    .line 68
    invoke-virtual {p2, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 69
    .line 70
    .line 71
    move-object v0, v1

    .line 72
    :cond_1
    :goto_0
    invoke-virtual {p0, p1}, Lcom/join/mgps/adapter/ForumBaseAdapter;->getItem(I)Ljava/lang/Object;

    .line 73
    .line 74
    .line 75
    move-result-object p1

    .line 76
    check-cast p1, Lcom/join/mgps/adapter/ForumBaseAdapter$r1$o;

    .line 77
    .line 78
    if-eqz p1, :cond_5

    .line 79
    .line 80
    if-nez v0, :cond_2

    .line 81
    .line 82
    goto :goto_2

    .line 83
    :cond_2
    iget-object v1, p0, Lcom/join/mgps/adapter/ForumBaseAdapter;->b:Lcom/join/android/app/component/optimizetext/b;

    .line 84
    .line 85
    new-instance v2, Ljava/lang/StringBuilder;

    .line 86
    .line 87
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 88
    .line 89
    .line 90
    iget v3, p1, Lcom/join/mgps/adapter/ForumBaseAdapter$r1$o;->e:I

    .line 91
    .line 92
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 93
    .line 94
    .line 95
    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 96
    .line 97
    .line 98
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 99
    .line 100
    .line 101
    move-result-object v2

    .line 102
    invoke-virtual {v1, v2}, Lcom/join/android/app/component/optimizetext/b;->d(Ljava/lang/String;)Landroid/text/StaticLayout;

    .line 103
    .line 104
    .line 105
    move-result-object v1

    .line 106
    if-nez v1, :cond_3

    .line 107
    .line 108
    iget-object v1, p0, Lcom/join/mgps/adapter/ForumBaseAdapter;->b:Lcom/join/android/app/component/optimizetext/b;

    .line 109
    .line 110
    invoke-virtual {v1, p1}, Lcom/join/android/app/component/optimizetext/b;->e(Lcom/join/android/app/component/optimizetext/c;)V

    .line 111
    .line 112
    .line 113
    :cond_3
    iget-object v1, v0, Lcom/join/mgps/adapter/ForumBaseAdapter$e1;->b:Lcom/join/android/app/component/optimizetext/StaticLayoutView;

    .line 114
    .line 115
    iget-object v2, p0, Lcom/join/mgps/adapter/ForumBaseAdapter;->b:Lcom/join/android/app/component/optimizetext/b;

    .line 116
    .line 117
    new-instance v3, Ljava/lang/StringBuilder;

    .line 118
    .line 119
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 120
    .line 121
    .line 122
    iget v4, p1, Lcom/join/mgps/adapter/ForumBaseAdapter$r1$o;->e:I

    .line 123
    .line 124
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 125
    .line 126
    .line 127
    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 128
    .line 129
    .line 130
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 131
    .line 132
    .line 133
    move-result-object p3

    .line 134
    invoke-virtual {v2, p3}, Lcom/join/android/app/component/optimizetext/b;->d(Ljava/lang/String;)Landroid/text/StaticLayout;

    .line 135
    .line 136
    .line 137
    move-result-object p3

    .line 138
    invoke-virtual {v1, p3}, Lcom/join/android/app/component/optimizetext/StaticLayoutView;->setLayout(Landroid/text/Layout;)V

    .line 139
    .line 140
    .line 141
    iget-object p3, v0, Lcom/join/mgps/adapter/ForumBaseAdapter$e1;->b:Lcom/join/android/app/component/optimizetext/StaticLayoutView;

    .line 142
    .line 143
    invoke-static {p3}, Lcom/join/mgps/Util/r0;->X0(Landroid/view/View;)V

    .line 144
    .line 145
    .line 146
    iget-boolean p3, p1, Lcom/join/mgps/adapter/ForumBaseAdapter$r1$o;->a:Z

    .line 147
    .line 148
    if-eqz p3, :cond_4

    .line 149
    .line 150
    iget-object p3, v0, Lcom/join/mgps/adapter/ForumBaseAdapter$e1;->c:Landroid/view/View;

    .line 151
    .line 152
    const/4 v1, 0x0

    .line 153
    invoke-virtual {p3, v1}, Landroid/view/View;->setVisibility(I)V

    .line 154
    .line 155
    .line 156
    iget-object p3, v0, Lcom/join/mgps/adapter/ForumBaseAdapter$e1;->d:Landroid/view/View;

    .line 157
    .line 158
    invoke-virtual {p3, v1}, Landroid/view/View;->setVisibility(I)V

    .line 159
    .line 160
    .line 161
    goto :goto_1

    .line 162
    :cond_4
    iget-object p3, v0, Lcom/join/mgps/adapter/ForumBaseAdapter$e1;->c:Landroid/view/View;

    .line 163
    .line 164
    const/16 v1, 0x8

    .line 165
    .line 166
    invoke-virtual {p3, v1}, Landroid/view/View;->setVisibility(I)V

    .line 167
    .line 168
    .line 169
    iget-object p3, v0, Lcom/join/mgps/adapter/ForumBaseAdapter$e1;->d:Landroid/view/View;

    .line 170
    .line 171
    invoke-virtual {p3, v1}, Landroid/view/View;->setVisibility(I)V

    .line 172
    .line 173
    .line 174
    :goto_1
    iget p1, p1, Lcom/join/mgps/adapter/ForumBaseAdapter$r1$o;->e:I

    .line 175
    .line 176
    invoke-virtual {p0, p2, p1}, Lcom/join/mgps/adapter/ForumBaseAdapter;->R0(Landroid/view/View;I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 177
    .line 178
    .line 179
    goto :goto_3

    .line 180
    :cond_5
    :goto_2
    return-object p2

    .line 181
    :catch_0
    move-exception p1

    .line 182
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 183
    .line 184
    .line 185
    :goto_3
    return-object p2
.end method

.method private L(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 5
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
    const/4 p3, 0x0

    .line 2
    if-eqz p2, :cond_0

    .line 3
    .line 4
    :try_start_0
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    .line 5
    .line 6
    .line 7
    move-result-object v0

    .line 8
    instance-of v0, v0, Lcom/join/mgps/adapter/ForumBaseAdapter$f1;

    .line 9
    .line 10
    if-eqz v0, :cond_1

    .line 11
    .line 12
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    .line 13
    .line 14
    .line 15
    move-result-object p3

    .line 16
    check-cast p3, Lcom/join/mgps/adapter/ForumBaseAdapter$f1;

    .line 17
    .line 18
    goto :goto_0

    .line 19
    :cond_0
    new-instance v0, Lcom/join/mgps/adapter/ForumBaseAdapter$f1;

    .line 20
    .line 21
    invoke-direct {v0, p0}, Lcom/join/mgps/adapter/ForumBaseAdapter$f1;-><init>(Lcom/join/mgps/adapter/ForumBaseAdapter;)V

    .line 22
    .line 23
    .line 24
    iget-object v1, p0, Lcom/join/mgps/adapter/ForumBaseAdapter;->e:Landroid/content/Context;

    .line 25
    .line 26
    invoke-static {v1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    .line 27
    .line 28
    .line 29
    move-result-object v1

    .line 30
    const v2, 0x7f0d0686

    .line 31
    .line 32
    .line 33
    invoke-virtual {v1, v2, p3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 34
    .line 35
    .line 36
    move-result-object p2

    .line 37
    const p3, 0x7f0a1b63

    .line 38
    .line 39
    .line 40
    invoke-virtual {p2, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 41
    .line 42
    .line 43
    move-result-object p3

    .line 44
    check-cast p3, Landroid/widget/FrameLayout;

    .line 45
    .line 46
    iput-object p3, v0, Lcom/join/mgps/adapter/ForumBaseAdapter$f1;->b:Landroid/widget/FrameLayout;

    .line 47
    .line 48
    const p3, 0x7f0a015d

    .line 49
    .line 50
    .line 51
    invoke-virtual {p2, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 52
    .line 53
    .line 54
    move-result-object p3

    .line 55
    check-cast p3, Lcom/facebook/drawee/view/SimpleDraweeView;

    .line 56
    .line 57
    iput-object p3, v0, Lcom/join/mgps/adapter/ForumBaseAdapter$f1;->c:Lcom/facebook/drawee/view/SimpleDraweeView;

    .line 58
    .line 59
    invoke-virtual {p2, v0}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 60
    .line 61
    .line 62
    move-object p3, v0

    .line 63
    :cond_1
    :goto_0
    invoke-virtual {p0, p1}, Lcom/join/mgps/adapter/ForumBaseAdapter;->getItem(I)Ljava/lang/Object;

    .line 64
    .line 65
    .line 66
    move-result-object v0

    .line 67
    check-cast v0, Lcom/join/mgps/adapter/ForumBaseAdapter$r1$q;

    .line 68
    .line 69
    if-eqz v0, :cond_6

    .line 70
    .line 71
    if-nez p3, :cond_2

    .line 72
    .line 73
    goto/16 :goto_2

    .line 74
    .line 75
    :cond_2
    iget-object v1, v0, Lcom/join/mgps/adapter/ForumBaseAdapter$r1$q;->b:Ljava/lang/String;

    .line 76
    .line 77
    iget-object v0, v0, Lcom/join/mgps/adapter/ForumBaseAdapter$r1$q;->a:Ljava/lang/String;

    .line 78
    .line 79
    iget-object v2, p3, Lcom/join/mgps/adapter/ForumBaseAdapter$f1;->b:Landroid/widget/FrameLayout;

    .line 80
    .line 81
    if-eqz v2, :cond_7

    .line 82
    .line 83
    new-instance v2, Landroid/widget/RelativeLayout$LayoutParams;

    .line 84
    .line 85
    iget v3, p0, Lcom/join/mgps/adapter/ForumBaseAdapter;->u:I

    .line 86
    .line 87
    const/4 v4, -0x1

    .line 88
    invoke-direct {v2, v4, v3}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 89
    .line 90
    .line 91
    iget-object v3, p3, Lcom/join/mgps/adapter/ForumBaseAdapter$f1;->b:Landroid/widget/FrameLayout;

    .line 92
    .line 93
    invoke-virtual {v3, v2}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 94
    .line 95
    .line 96
    iget-object v2, p3, Lcom/join/mgps/adapter/ForumBaseAdapter$f1;->c:Lcom/facebook/drawee/view/SimpleDraweeView;

    .line 97
    .line 98
    const v3, 0x7f081349

    .line 99
    .line 100
    .line 101
    invoke-static {v2, v3, v0}, Lcom/join/android/app/common/utils/l;->d(Lcom/facebook/drawee/view/SimpleDraweeView;ILjava/lang/String;)V

    .line 102
    .line 103
    .line 104
    add-int/lit8 v2, p1, 0x1

    .line 105
    .line 106
    iget-object v3, p0, Lcom/join/mgps/adapter/ForumBaseAdapter;->g:Lcom/join/android/app/component/video/c;

    .line 107
    .line 108
    invoke-virtual {v3}, Lcom/join/android/app/component/video/c;->A()Ljava/lang/String;

    .line 109
    .line 110
    .line 111
    move-result-object v3

    .line 112
    const-string v4, "ForumGroupPostsFragment"

    .line 113
    .line 114
    invoke-virtual {v3, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 115
    .line 116
    .line 117
    move-result v3

    .line 118
    if-nez v3, :cond_4

    .line 119
    .line 120
    iget-object v3, p0, Lcom/join/mgps/adapter/ForumBaseAdapter;->g:Lcom/join/android/app/component/video/c;

    .line 121
    .line 122
    invoke-virtual {v3}, Lcom/join/android/app/component/video/c;->A()Ljava/lang/String;

    .line 123
    .line 124
    .line 125
    move-result-object v3

    .line 126
    const-string v4, "ForumGroupMemberActivity"

    .line 127
    .line 128
    invoke-virtual {v3, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 129
    .line 130
    .line 131
    move-result v3

    .line 132
    if-nez v3, :cond_4

    .line 133
    .line 134
    iget-object v3, p0, Lcom/join/mgps/adapter/ForumBaseAdapter;->g:Lcom/join/android/app/component/video/c;

    .line 135
    .line 136
    invoke-virtual {v3}, Lcom/join/android/app/component/video/c;->A()Ljava/lang/String;

    .line 137
    .line 138
    .line 139
    move-result-object v3

    .line 140
    const-string v4, "LabelFragment"

    .line 141
    .line 142
    invoke-virtual {v3, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 143
    .line 144
    .line 145
    move-result v3

    .line 146
    if-nez v3, :cond_4

    .line 147
    .line 148
    iget-object v3, p0, Lcom/join/mgps/adapter/ForumBaseAdapter;->g:Lcom/join/android/app/component/video/c;

    .line 149
    .line 150
    invoke-virtual {v3}, Lcom/join/android/app/component/video/c;->A()Ljava/lang/String;

    .line 151
    .line 152
    .line 153
    move-result-object v3

    .line 154
    const-string v4, "ForumPostsFragment"

    .line 155
    .line 156
    invoke-virtual {v3, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 157
    .line 158
    .line 159
    move-result v3

    .line 160
    if-eqz v3, :cond_3

    .line 161
    .line 162
    goto :goto_1

    .line 163
    :cond_3
    move p1, v2

    .line 164
    :cond_4
    :goto_1
    iget-object v2, p3, Lcom/join/mgps/adapter/ForumBaseAdapter$f1;->c:Lcom/facebook/drawee/view/SimpleDraweeView;

    .line 165
    .line 166
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 167
    .line 168
    .line 169
    move-result-object v3

    .line 170
    invoke-virtual {v2, v3}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 171
    .line 172
    .line 173
    invoke-static {v1}, Lcom/join/mgps/Util/t2;->i(Ljava/lang/String;)Z

    .line 174
    .line 175
    .line 176
    move-result v2

    .line 177
    if-eqz v2, :cond_5

    .line 178
    .line 179
    new-instance v2, Lcom/join/android/app/component/video/c$l;

    .line 180
    .line 181
    invoke-direct {v2, p1, v1, v0}, Lcom/join/android/app/component/video/c$l;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    .line 182
    .line 183
    .line 184
    iget-object v0, p0, Lcom/join/mgps/adapter/ForumBaseAdapter;->g:Lcom/join/android/app/component/video/c;

    .line 185
    .line 186
    const/4 v1, 0x0

    .line 187
    new-array v1, v1, [Z

    .line 188
    .line 189
    invoke-virtual {v0, p1, v2, v1}, Lcom/join/android/app/component/video/c;->d(ILcom/join/android/app/component/video/c$l;[Z)V

    .line 190
    .line 191
    .line 192
    :cond_5
    iget-object p3, p3, Lcom/join/mgps/adapter/ForumBaseAdapter$f1;->c:Lcom/facebook/drawee/view/SimpleDraweeView;

    .line 193
    .line 194
    new-instance v0, Lcom/join/mgps/adapter/ForumBaseAdapter$e0;

    .line 195
    .line 196
    invoke-direct {v0, p0, p1}, Lcom/join/mgps/adapter/ForumBaseAdapter$e0;-><init>(Lcom/join/mgps/adapter/ForumBaseAdapter;I)V

    .line 197
    .line 198
    .line 199
    invoke-virtual {p3, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 200
    .line 201
    .line 202
    goto :goto_3

    .line 203
    :cond_6
    :goto_2
    return-object p2

    .line 204
    :catch_0
    move-exception p1

    .line 205
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 206
    .line 207
    .line 208
    :cond_7
    :goto_3
    return-object p2
.end method

.method private P(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
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
    const-string p3, "0"

    .line 2
    .line 3
    const-string v0, ""

    .line 4
    .line 5
    if-eqz p2, :cond_0

    .line 6
    .line 7
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    .line 8
    .line 9
    .line 10
    move-result-object v1

    .line 11
    check-cast v1, Lcom/join/mgps/adapter/ForumBaseAdapter$g1;

    .line 12
    .line 13
    goto :goto_0

    .line 14
    :cond_0
    new-instance v1, Lcom/join/mgps/adapter/ForumBaseAdapter$g1;

    .line 15
    .line 16
    invoke-direct {v1, p0}, Lcom/join/mgps/adapter/ForumBaseAdapter$g1;-><init>(Lcom/join/mgps/adapter/ForumBaseAdapter;)V

    .line 17
    .line 18
    .line 19
    iget-object p2, p0, Lcom/join/mgps/adapter/ForumBaseAdapter;->e:Landroid/content/Context;

    .line 20
    .line 21
    invoke-static {p2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    .line 22
    .line 23
    .line 24
    move-result-object p2

    .line 25
    const v2, 0x7f0d06ee

    .line 26
    .line 27
    .line 28
    const/4 v3, 0x0

    .line 29
    invoke-virtual {p2, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 30
    .line 31
    .line 32
    move-result-object p2

    .line 33
    const v2, 0x7f0a069a

    .line 34
    .line 35
    .line 36
    invoke-virtual {p2, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 37
    .line 38
    .line 39
    move-result-object v2

    .line 40
    check-cast v2, Landroid/widget/TextView;

    .line 41
    .line 42
    iput-object v2, v1, Lcom/join/mgps/adapter/ForumBaseAdapter$g1;->b:Landroid/widget/TextView;

    .line 43
    .line 44
    const v2, 0x7f0a06b1

    .line 45
    .line 46
    .line 47
    invoke-virtual {p2, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 48
    .line 49
    .line 50
    move-result-object v2

    .line 51
    check-cast v2, Landroid/widget/TextView;

    .line 52
    .line 53
    iput-object v2, v1, Lcom/join/mgps/adapter/ForumBaseAdapter$g1;->c:Landroid/widget/TextView;

    .line 54
    .line 55
    const v2, 0x7f0a06a0

    .line 56
    .line 57
    .line 58
    invoke-virtual {p2, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 59
    .line 60
    .line 61
    move-result-object v2

    .line 62
    check-cast v2, Landroid/widget/TextView;

    .line 63
    .line 64
    iput-object v2, v1, Lcom/join/mgps/adapter/ForumBaseAdapter$g1;->d:Landroid/widget/TextView;

    .line 65
    .line 66
    const v2, 0x7f0a06aa

    .line 67
    .line 68
    .line 69
    invoke-virtual {p2, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 70
    .line 71
    .line 72
    move-result-object v2

    .line 73
    check-cast v2, Landroid/widget/TextView;

    .line 74
    .line 75
    iput-object v2, v1, Lcom/join/mgps/adapter/ForumBaseAdapter$g1;->e:Landroid/widget/TextView;

    .line 76
    .line 77
    const v2, 0x7f0a06ab

    .line 78
    .line 79
    .line 80
    invoke-virtual {p2, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 81
    .line 82
    .line 83
    move-result-object v2

    .line 84
    check-cast v2, Landroid/widget/ImageView;

    .line 85
    .line 86
    iput-object v2, v1, Lcom/join/mgps/adapter/ForumBaseAdapter$g1;->h:Landroid/widget/ImageView;

    .line 87
    .line 88
    const v2, 0x7f0a127e

    .line 89
    .line 90
    .line 91
    invoke-virtual {p2, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 92
    .line 93
    .line 94
    move-result-object v2

    .line 95
    iput-object v2, v1, Lcom/join/mgps/adapter/ForumBaseAdapter$g1;->f:Landroid/view/View;

    .line 96
    .line 97
    const v2, 0x7f0a069b

    .line 98
    .line 99
    .line 100
    invoke-virtual {p2, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 101
    .line 102
    .line 103
    move-result-object v2

    .line 104
    iput-object v2, v1, Lcom/join/mgps/adapter/ForumBaseAdapter$g1;->g:Landroid/view/View;

    .line 105
    .line 106
    invoke-virtual {p2, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 107
    .line 108
    .line 109
    :goto_0
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/join/mgps/adapter/ForumBaseAdapter;->getItem(I)Ljava/lang/Object;

    .line 110
    .line 111
    .line 112
    move-result-object p1

    .line 113
    check-cast p1, Lcom/join/mgps/adapter/ForumBaseAdapter$r1$v;

    .line 114
    .line 115
    if-nez p1, :cond_1

    .line 116
    .line 117
    return-object p2

    .line 118
    :cond_1
    iget-boolean v2, p1, Lcom/join/mgps/adapter/ForumBaseAdapter$r1$v;->h:Z

    .line 119
    .line 120
    const/4 v3, 0x0

    .line 121
    const/16 v4, 0x8

    .line 122
    .line 123
    if-eqz v2, :cond_2

    .line 124
    .line 125
    iget-object v2, v1, Lcom/join/mgps/adapter/ForumBaseAdapter$g1;->f:Landroid/view/View;

    .line 126
    .line 127
    invoke-virtual {v2, v3}, Landroid/view/View;->setVisibility(I)V

    .line 128
    .line 129
    .line 130
    goto :goto_1

    .line 131
    :cond_2
    iget-object v2, v1, Lcom/join/mgps/adapter/ForumBaseAdapter$g1;->f:Landroid/view/View;

    .line 132
    .line 133
    invoke-virtual {v2, v4}, Landroid/view/View;->setVisibility(I)V

    .line 134
    .line 135
    .line 136
    :goto_1
    iget-object v2, v1, Lcom/join/mgps/adapter/ForumBaseAdapter$g1;->b:Landroid/widget/TextView;

    .line 137
    .line 138
    iget-object v5, p1, Lcom/join/mgps/adapter/ForumBaseAdapter$r1$v;->b:Ljava/lang/String;

    .line 139
    .line 140
    invoke-virtual {v2, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 141
    .line 142
    .line 143
    iget-object v2, p1, Lcom/join/mgps/adapter/ForumBaseAdapter$r1$v;->b:Ljava/lang/String;

    .line 144
    .line 145
    invoke-static {v2}, Lcom/join/mgps/Util/t2;->h(Ljava/lang/String;)Z

    .line 146
    .line 147
    .line 148
    move-result v2

    .line 149
    if-eqz v2, :cond_3

    .line 150
    .line 151
    iget-object v2, v1, Lcom/join/mgps/adapter/ForumBaseAdapter$g1;->g:Landroid/view/View;

    .line 152
    .line 153
    invoke-virtual {v2, v4}, Landroid/view/View;->setVisibility(I)V

    .line 154
    .line 155
    .line 156
    goto :goto_2

    .line 157
    :cond_3
    iget-object v2, v1, Lcom/join/mgps/adapter/ForumBaseAdapter$g1;->g:Landroid/view/View;

    .line 158
    .line 159
    invoke-virtual {v2, v3}, Landroid/view/View;->setVisibility(I)V

    .line 160
    .line 161
    .line 162
    :goto_2
    iget-object v2, v1, Lcom/join/mgps/adapter/ForumBaseAdapter$g1;->c:Landroid/widget/TextView;

    .line 163
    .line 164
    new-instance v3, Ljava/lang/StringBuilder;

    .line 165
    .line 166
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 167
    .line 168
    .line 169
    iget v4, p1, Lcom/join/mgps/adapter/ForumBaseAdapter$r1$v;->c:I

    .line 170
    .line 171
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 172
    .line 173
    .line 174
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 175
    .line 176
    .line 177
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 178
    .line 179
    .line 180
    move-result-object v3

    .line 181
    invoke-static {v2, v3, p3}, Lcom/join/mgps/Util/r0;->D1(Landroid/widget/TextView;Ljava/lang/String;Ljava/lang/String;)V

    .line 182
    .line 183
    .line 184
    iget-object v2, v1, Lcom/join/mgps/adapter/ForumBaseAdapter$g1;->d:Landroid/widget/TextView;

    .line 185
    .line 186
    new-instance v3, Ljava/lang/StringBuilder;

    .line 187
    .line 188
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 189
    .line 190
    .line 191
    iget v4, p1, Lcom/join/mgps/adapter/ForumBaseAdapter$r1$v;->d:I

    .line 192
    .line 193
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 194
    .line 195
    .line 196
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 197
    .line 198
    .line 199
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 200
    .line 201
    .line 202
    move-result-object v0

    .line 203
    invoke-static {v2, v0, p3}, Lcom/join/mgps/Util/r0;->D1(Landroid/widget/TextView;Ljava/lang/String;Ljava/lang/String;)V

    .line 204
    .line 205
    .line 206
    iget-boolean p3, p1, Lcom/join/mgps/adapter/ForumBaseAdapter$r1$v;->g:Z

    .line 207
    .line 208
    iget v0, p1, Lcom/join/mgps/adapter/ForumBaseAdapter$r1$v;->e:I

    .line 209
    .line 210
    invoke-direct {p0, v1, p3, v0}, Lcom/join/mgps/adapter/ForumBaseAdapter;->r0(Lcom/join/mgps/adapter/ForumBaseAdapter$g1;ZI)V

    .line 211
    .line 212
    .line 213
    iget p3, p1, Lcom/join/mgps/adapter/ForumBaseAdapter$r1$v;->a:I

    .line 214
    .line 215
    iget-object v0, v1, Lcom/join/mgps/adapter/ForumBaseAdapter$g1;->e:Landroid/widget/TextView;

    .line 216
    .line 217
    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    .line 218
    .line 219
    .line 220
    move-result-object v0

    .line 221
    check-cast v0, Landroid/view/View;

    .line 222
    .line 223
    new-instance v2, Lcom/join/mgps/adapter/ForumBaseAdapter$b0;

    .line 224
    .line 225
    invoke-direct {v2, p0, p3}, Lcom/join/mgps/adapter/ForumBaseAdapter$b0;-><init>(Lcom/join/mgps/adapter/ForumBaseAdapter;I)V

    .line 226
    .line 227
    .line 228
    invoke-virtual {v0, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 229
    .line 230
    .line 231
    invoke-virtual {p0, p2, p3}, Lcom/join/mgps/adapter/ForumBaseAdapter;->R0(Landroid/view/View;I)V

    .line 232
    .line 233
    .line 234
    iget v0, p1, Lcom/join/mgps/adapter/ForumBaseAdapter$r1$v;->f:I

    .line 235
    .line 236
    new-instance v2, Lcom/join/mgps/dto/ForumBean;

    .line 237
    .line 238
    invoke-direct {v2}, Lcom/join/mgps/dto/ForumBean;-><init>()V

    .line 239
    .line 240
    .line 241
    invoke-virtual {v2, v0}, Lcom/join/mgps/dto/ForumBean;->setFid(I)V

    .line 242
    .line 243
    .line 244
    iget-object v0, v1, Lcom/join/mgps/adapter/ForumBaseAdapter$g1;->b:Landroid/widget/TextView;

    .line 245
    .line 246
    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    .line 247
    .line 248
    .line 249
    move-result-object v0

    .line 250
    check-cast v0, Landroid/view/View;

    .line 251
    .line 252
    invoke-virtual {p0, v0, v2}, Lcom/join/mgps/adapter/ForumBaseAdapter;->O0(Landroid/view/View;Lcom/join/mgps/dto/ForumBean;)V

    .line 253
    .line 254
    .line 255
    iget-boolean v0, p1, Lcom/join/mgps/adapter/ForumBaseAdapter$r1$v;->g:Z

    .line 256
    .line 257
    iget p1, p1, Lcom/join/mgps/adapter/ForumBaseAdapter$r1$v;->e:I

    .line 258
    .line 259
    iget-object v1, v1, Lcom/join/mgps/adapter/ForumBaseAdapter$g1;->e:Landroid/widget/TextView;

    .line 260
    .line 261
    invoke-virtual {v1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    .line 262
    .line 263
    .line 264
    move-result-object v1

    .line 265
    check-cast v1, Landroid/view/View;

    .line 266
    .line 267
    invoke-virtual {p0, v1, p3, v0, p1}, Lcom/join/mgps/adapter/ForumBaseAdapter;->T0(Landroid/view/View;IZI)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 268
    .line 269
    .line 270
    goto :goto_3

    .line 271
    :catch_0
    move-exception p1

    .line 272
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 273
    .line 274
    .line 275
    :goto_3
    return-object p2
.end method

.method private Q(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
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
    const/4 p3, 0x0

    .line 2
    if-eqz p2, :cond_0

    .line 3
    .line 4
    :try_start_0
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    .line 5
    .line 6
    .line 7
    move-result-object v0

    .line 8
    instance-of v0, v0, Lcom/join/mgps/adapter/ForumBaseAdapter$h1;

    .line 9
    .line 10
    if-eqz v0, :cond_1

    .line 11
    .line 12
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    .line 13
    .line 14
    .line 15
    move-result-object p3

    .line 16
    check-cast p3, Lcom/join/mgps/adapter/ForumBaseAdapter$h1;

    .line 17
    .line 18
    goto/16 :goto_0

    .line 19
    .line 20
    :cond_0
    new-instance v0, Lcom/join/mgps/adapter/ForumBaseAdapter$h1;

    .line 21
    .line 22
    invoke-direct {v0, p0}, Lcom/join/mgps/adapter/ForumBaseAdapter$h1;-><init>(Lcom/join/mgps/adapter/ForumBaseAdapter;)V

    .line 23
    .line 24
    .line 25
    iget-object v1, p0, Lcom/join/mgps/adapter/ForumBaseAdapter;->e:Landroid/content/Context;

    .line 26
    .line 27
    invoke-static {v1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    .line 28
    .line 29
    .line 30
    move-result-object v1

    .line 31
    const v2, 0x7f0d06b6

    .line 32
    .line 33
    .line 34
    invoke-virtual {v1, v2, p3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 35
    .line 36
    .line 37
    move-result-object p2

    .line 38
    const p3, 0x7f0a1044

    .line 39
    .line 40
    .line 41
    invoke-virtual {p2, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 42
    .line 43
    .line 44
    move-result-object p3

    .line 45
    check-cast p3, Lcom/facebook/drawee/view/SimpleDraweeView;

    .line 46
    .line 47
    iput-object p3, v0, Lcom/join/mgps/adapter/ForumBaseAdapter$h1;->b:Lcom/facebook/drawee/view/SimpleDraweeView;

    .line 48
    .line 49
    const p3, 0x7f0a1042

    .line 50
    .line 51
    .line 52
    invoke-virtual {p2, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 53
    .line 54
    .line 55
    move-result-object p3

    .line 56
    check-cast p3, Landroid/widget/TextView;

    .line 57
    .line 58
    iput-object p3, v0, Lcom/join/mgps/adapter/ForumBaseAdapter$h1;->c:Landroid/widget/TextView;

    .line 59
    .line 60
    const p3, 0x7f0a1045

    .line 61
    .line 62
    .line 63
    invoke-virtual {p2, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 64
    .line 65
    .line 66
    move-result-object p3

    .line 67
    check-cast p3, Landroid/widget/Button;

    .line 68
    .line 69
    iput-object p3, v0, Lcom/join/mgps/adapter/ForumBaseAdapter$h1;->d:Landroid/widget/Button;

    .line 70
    .line 71
    const p3, 0x7f0a1046

    .line 72
    .line 73
    .line 74
    invoke-virtual {p2, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 75
    .line 76
    .line 77
    move-result-object p3

    .line 78
    check-cast p3, Landroid/widget/TextView;

    .line 79
    .line 80
    iput-object p3, v0, Lcom/join/mgps/adapter/ForumBaseAdapter$h1;->e:Landroid/widget/TextView;

    .line 81
    .line 82
    const p3, 0x7f0a1043

    .line 83
    .line 84
    .line 85
    invoke-virtual {p2, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 86
    .line 87
    .line 88
    move-result-object p3

    .line 89
    check-cast p3, Landroid/widget/TextView;

    .line 90
    .line 91
    iput-object p3, v0, Lcom/join/mgps/adapter/ForumBaseAdapter$h1;->f:Landroid/widget/TextView;

    .line 92
    .line 93
    const p3, 0x7f0a0e73

    .line 94
    .line 95
    .line 96
    invoke-virtual {p2, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 97
    .line 98
    .line 99
    move-result-object p3

    .line 100
    check-cast p3, Landroid/widget/LinearLayout;

    .line 101
    .line 102
    iput-object p3, v0, Lcom/join/mgps/adapter/ForumBaseAdapter$h1;->g:Landroid/widget/LinearLayout;

    .line 103
    .line 104
    const p3, 0x7f0a1764

    .line 105
    .line 106
    .line 107
    invoke-virtual {p2, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 108
    .line 109
    .line 110
    move-result-object p3

    .line 111
    check-cast p3, Landroid/widget/LinearLayout;

    .line 112
    .line 113
    iput-object p3, v0, Lcom/join/mgps/adapter/ForumBaseAdapter$h1;->h:Landroid/widget/LinearLayout;

    .line 114
    .line 115
    const p3, 0x7f0a00f7

    .line 116
    .line 117
    .line 118
    invoke-virtual {p2, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 119
    .line 120
    .line 121
    move-result-object p3

    .line 122
    check-cast p3, Landroid/widget/TextView;

    .line 123
    .line 124
    iput-object p3, v0, Lcom/join/mgps/adapter/ForumBaseAdapter$h1;->i:Landroid/widget/TextView;

    .line 125
    .line 126
    const p3, 0x7f0a0f94

    .line 127
    .line 128
    .line 129
    invoke-virtual {p2, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 130
    .line 131
    .line 132
    move-result-object p3

    .line 133
    check-cast p3, Landroid/widget/TextView;

    .line 134
    .line 135
    iput-object p3, v0, Lcom/join/mgps/adapter/ForumBaseAdapter$h1;->j:Landroid/widget/TextView;

    .line 136
    .line 137
    const p3, 0x7f0a129e

    .line 138
    .line 139
    .line 140
    invoke-virtual {p2, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 141
    .line 142
    .line 143
    move-result-object p3

    .line 144
    check-cast p3, Landroid/widget/ProgressBar;

    .line 145
    .line 146
    iput-object p3, v0, Lcom/join/mgps/adapter/ForumBaseAdapter$h1;->k:Landroid/widget/ProgressBar;

    .line 147
    .line 148
    const p3, 0x7f0a12a5

    .line 149
    .line 150
    .line 151
    invoke-virtual {p2, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 152
    .line 153
    .line 154
    move-result-object p3

    .line 155
    check-cast p3, Landroid/widget/ProgressBar;

    .line 156
    .line 157
    iput-object p3, v0, Lcom/join/mgps/adapter/ForumBaseAdapter$h1;->l:Landroid/widget/ProgressBar;

    .line 158
    .line 159
    const p3, 0x7f0a0e61

    .line 160
    .line 161
    .line 162
    invoke-virtual {p2, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 163
    .line 164
    .line 165
    move-result-object p3

    .line 166
    iput-object p3, v0, Lcom/join/mgps/adapter/ForumBaseAdapter$h1;->m:Landroid/view/View;

    .line 167
    .line 168
    const p3, 0x7f0a135c

    .line 169
    .line 170
    .line 171
    invoke-virtual {p2, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 172
    .line 173
    .line 174
    move-result-object p3

    .line 175
    iput-object p3, v0, Lcom/join/mgps/adapter/ForumBaseAdapter$h1;->n:Landroid/view/View;

    .line 176
    .line 177
    const p3, 0x7f0a04e1

    .line 178
    .line 179
    .line 180
    invoke-virtual {p2, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 181
    .line 182
    .line 183
    move-result-object p3

    .line 184
    iput-object p3, v0, Lcom/join/mgps/adapter/ForumBaseAdapter$h1;->o:Landroid/view/View;

    .line 185
    .line 186
    invoke-virtual {p2, v0}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 187
    .line 188
    .line 189
    move-object p3, v0

    .line 190
    :cond_1
    :goto_0
    invoke-virtual {p0, p1}, Lcom/join/mgps/adapter/ForumBaseAdapter;->getItem(I)Ljava/lang/Object;

    .line 191
    .line 192
    .line 193
    move-result-object p1

    .line 194
    check-cast p1, Lcom/join/mgps/adapter/ForumBaseAdapter$r1$w;

    .line 195
    .line 196
    if-eqz p1, :cond_5

    .line 197
    .line 198
    if-nez p3, :cond_2

    .line 199
    .line 200
    goto/16 :goto_2

    .line 201
    .line 202
    :cond_2
    iget-object v0, p1, Lcom/join/mgps/adapter/ForumBaseAdapter$r1$w;->c:Lcom/join/mgps/dto/ForumBean$GameInfo;

    .line 203
    .line 204
    invoke-virtual {v0}, Lcom/join/mgps/dto/ForumBean$GameInfo;->getGame_id()Ljava/lang/String;

    .line 205
    .line 206
    .line 207
    iget-boolean v1, p1, Lcom/join/mgps/adapter/ForumBaseAdapter$r1$w;->a:Z

    .line 208
    .line 209
    if-eqz v1, :cond_3

    .line 210
    .line 211
    iget-object v1, p3, Lcom/join/mgps/adapter/ForumBaseAdapter$h1;->o:Landroid/view/View;

    .line 212
    .line 213
    invoke-virtual {v1}, Landroid/view/View;->getVisibility()I

    .line 214
    .line 215
    .line 216
    move-result v1

    .line 217
    if-eqz v1, :cond_4

    .line 218
    .line 219
    iget-object v1, p3, Lcom/join/mgps/adapter/ForumBaseAdapter$h1;->o:Landroid/view/View;

    .line 220
    .line 221
    const/4 v2, 0x0

    .line 222
    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 223
    .line 224
    .line 225
    goto :goto_1

    .line 226
    :cond_3
    iget-object v1, p3, Lcom/join/mgps/adapter/ForumBaseAdapter$h1;->o:Landroid/view/View;

    .line 227
    .line 228
    invoke-virtual {v1}, Landroid/view/View;->getVisibility()I

    .line 229
    .line 230
    .line 231
    move-result v1

    .line 232
    const/16 v2, 0x8

    .line 233
    .line 234
    if-eq v1, v2, :cond_4

    .line 235
    .line 236
    iget-object v1, p3, Lcom/join/mgps/adapter/ForumBaseAdapter$h1;->o:Landroid/view/View;

    .line 237
    .line 238
    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 239
    .line 240
    .line 241
    :cond_4
    :goto_1
    iget-object v1, p3, Lcom/join/mgps/adapter/ForumBaseAdapter$h1;->d:Landroid/widget/Button;

    .line 242
    .line 243
    const v2, 0x7f0804a8

    .line 244
    .line 245
    .line 246
    invoke-virtual {v1, v2}, Landroid/view/View;->setBackgroundResource(I)V

    .line 247
    .line 248
    .line 249
    iget-object v1, p0, Lcom/join/mgps/adapter/ForumBaseAdapter;->e:Landroid/content/Context;

    .line 250
    .line 251
    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 252
    .line 253
    .line 254
    move-result-object v1

    .line 255
    const v2, 0x7f070b2c

    .line 256
    .line 257
    .line 258
    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    .line 259
    .line 260
    .line 261
    move-result v1

    .line 262
    iget-object v2, p3, Lcom/join/mgps/adapter/ForumBaseAdapter$h1;->d:Landroid/widget/Button;

    .line 263
    .line 264
    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 265
    .line 266
    .line 267
    move-result-object v2

    .line 268
    check-cast v2, Landroid/widget/RelativeLayout$LayoutParams;

    .line 269
    .line 270
    iput v1, v2, Landroid/widget/RelativeLayout$LayoutParams;->width:I

    .line 271
    .line 272
    iget-object v1, p3, Lcom/join/mgps/adapter/ForumBaseAdapter$h1;->d:Landroid/widget/Button;

    .line 273
    .line 274
    invoke-virtual {v1, v2}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 275
    .line 276
    .line 277
    iget-object v1, p3, Lcom/join/mgps/adapter/ForumBaseAdapter$h1;->d:Landroid/widget/Button;

    .line 278
    .line 279
    const-string v2, "\u6253\u5f00"

    .line 280
    .line 281
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 282
    .line 283
    .line 284
    iget-object v1, p3, Lcom/join/mgps/adapter/ForumBaseAdapter$h1;->c:Landroid/widget/TextView;

    .line 285
    .line 286
    invoke-virtual {v0}, Lcom/join/mgps/dto/ForumBean$GameInfo;->getGame_name()Ljava/lang/String;

    .line 287
    .line 288
    .line 289
    move-result-object v2

    .line 290
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 291
    .line 292
    .line 293
    iget-object v1, p3, Lcom/join/mgps/adapter/ForumBaseAdapter$h1;->b:Lcom/facebook/drawee/view/SimpleDraweeView;

    .line 294
    .line 295
    invoke-virtual {v0}, Lcom/join/mgps/dto/ForumBean$GameInfo;->getGame_ico_remote()Ljava/lang/String;

    .line 296
    .line 297
    .line 298
    move-result-object v0

    .line 299
    iget-object v2, p0, Lcom/join/mgps/adapter/ForumBaseAdapter;->e:Landroid/content/Context;

    .line 300
    .line 301
    invoke-static {v2}, Lcom/join/android/app/common/utils/l;->B(Landroid/content/Context;)Lcom/facebook/drawee/generic/RoundingParams;

    .line 302
    .line 303
    .line 304
    move-result-object v2

    .line 305
    invoke-static {v1, v0, v2}, Lcom/join/android/app/common/utils/l;->j(Lcom/facebook/drawee/view/SimpleDraweeView;Ljava/lang/String;Lcom/facebook/drawee/generic/RoundingParams;)V

    .line 306
    .line 307
    .line 308
    new-instance v0, Lcom/join/mgps/adapter/f0;

    .line 309
    .line 310
    invoke-direct {v0, p0, p1}, Lcom/join/mgps/adapter/f0;-><init>(Lcom/join/mgps/adapter/ForumBaseAdapter;Lcom/join/mgps/adapter/ForumBaseAdapter$r1$w;)V

    .line 311
    .line 312
    .line 313
    iget-object p1, p3, Lcom/join/mgps/adapter/ForumBaseAdapter$h1;->d:Landroid/widget/Button;

    .line 314
    .line 315
    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 316
    .line 317
    .line 318
    iget-object p1, p3, Lcom/join/mgps/adapter/ForumBaseAdapter$h1;->n:Landroid/view/View;

    .line 319
    .line 320
    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 321
    .line 322
    .line 323
    goto :goto_3

    .line 324
    :cond_5
    :goto_2
    return-object p2

    .line 325
    :catch_0
    move-exception p1

    .line 326
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 327
    .line 328
    .line 329
    :goto_3
    return-object p2
.end method

.method private Q0(Landroid/view/View;I)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x10
        }
        names = {
            "v",
            "fid"
        }
    .end annotation

    .line 1
    if-nez p1, :cond_0

    .line 2
    .line 3
    return-void

    .line 4
    :cond_0
    new-instance v0, Lcom/join/mgps/adapter/ForumBaseAdapter$x;

    .line 5
    .line 6
    invoke-direct {v0, p0, p2}, Lcom/join/mgps/adapter/ForumBaseAdapter$x;-><init>(Lcom/join/mgps/adapter/ForumBaseAdapter;I)V

    .line 7
    .line 8
    .line 9
    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 10
    .line 11
    .line 12
    return-void
.end method

.method private R(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 21
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
    move-object/from16 v7, p0

    .line 2
    .line 3
    const/4 v0, 0x0

    .line 4
    if-eqz p2, :cond_1

    .line 5
    .line 6
    :try_start_0
    invoke-virtual/range {p2 .. p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    .line 7
    .line 8
    .line 9
    move-result-object v1

    .line 10
    instance-of v1, v1, Lcom/join/mgps/adapter/ForumBaseAdapter$h1;

    .line 11
    .line 12
    if-eqz v1, :cond_0

    .line 13
    .line 14
    invoke-virtual/range {p2 .. p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    .line 15
    .line 16
    .line 17
    move-result-object v0

    .line 18
    check-cast v0, Lcom/join/mgps/adapter/ForumBaseAdapter$h1;

    .line 19
    .line 20
    :cond_0
    move-object/from16 v8, p2

    .line 21
    .line 22
    goto/16 :goto_0

    .line 23
    .line 24
    :cond_1
    new-instance v1, Lcom/join/mgps/adapter/ForumBaseAdapter$h1;

    .line 25
    .line 26
    invoke-direct {v1, v7}, Lcom/join/mgps/adapter/ForumBaseAdapter$h1;-><init>(Lcom/join/mgps/adapter/ForumBaseAdapter;)V

    .line 27
    .line 28
    .line 29
    iget-object v2, v7, Lcom/join/mgps/adapter/ForumBaseAdapter;->e:Landroid/content/Context;

    .line 30
    .line 31
    invoke-static {v2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    .line 32
    .line 33
    .line 34
    move-result-object v2

    .line 35
    const v3, 0x7f0d06b5

    .line 36
    .line 37
    .line 38
    invoke-virtual {v2, v3, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 39
    .line 40
    .line 41
    move-result-object v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2

    .line 42
    const v0, 0x7f0a1044

    .line 43
    .line 44
    .line 45
    :try_start_1
    invoke-virtual {v2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 46
    .line 47
    .line 48
    move-result-object v0

    .line 49
    check-cast v0, Lcom/facebook/drawee/view/SimpleDraweeView;

    .line 50
    .line 51
    iput-object v0, v1, Lcom/join/mgps/adapter/ForumBaseAdapter$h1;->b:Lcom/facebook/drawee/view/SimpleDraweeView;

    .line 52
    .line 53
    const v0, 0x7f0a1042

    .line 54
    .line 55
    .line 56
    invoke-virtual {v2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 57
    .line 58
    .line 59
    move-result-object v0

    .line 60
    check-cast v0, Landroid/widget/TextView;

    .line 61
    .line 62
    iput-object v0, v1, Lcom/join/mgps/adapter/ForumBaseAdapter$h1;->c:Landroid/widget/TextView;

    .line 63
    .line 64
    const v0, 0x7f0a1045

    .line 65
    .line 66
    .line 67
    invoke-virtual {v2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 68
    .line 69
    .line 70
    move-result-object v0

    .line 71
    check-cast v0, Landroid/widget/Button;

    .line 72
    .line 73
    iput-object v0, v1, Lcom/join/mgps/adapter/ForumBaseAdapter$h1;->d:Landroid/widget/Button;

    .line 74
    .line 75
    const v0, 0x7f0a1046

    .line 76
    .line 77
    .line 78
    invoke-virtual {v2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 79
    .line 80
    .line 81
    move-result-object v0

    .line 82
    check-cast v0, Landroid/widget/TextView;

    .line 83
    .line 84
    iput-object v0, v1, Lcom/join/mgps/adapter/ForumBaseAdapter$h1;->e:Landroid/widget/TextView;

    .line 85
    .line 86
    const v0, 0x7f0a1043

    .line 87
    .line 88
    .line 89
    invoke-virtual {v2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 90
    .line 91
    .line 92
    move-result-object v0

    .line 93
    check-cast v0, Landroid/widget/TextView;

    .line 94
    .line 95
    iput-object v0, v1, Lcom/join/mgps/adapter/ForumBaseAdapter$h1;->f:Landroid/widget/TextView;

    .line 96
    .line 97
    const v0, 0x7f0a0e73

    .line 98
    .line 99
    .line 100
    invoke-virtual {v2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 101
    .line 102
    .line 103
    move-result-object v0

    .line 104
    check-cast v0, Landroid/widget/LinearLayout;

    .line 105
    .line 106
    iput-object v0, v1, Lcom/join/mgps/adapter/ForumBaseAdapter$h1;->g:Landroid/widget/LinearLayout;

    .line 107
    .line 108
    const v0, 0x7f0a1764

    .line 109
    .line 110
    .line 111
    invoke-virtual {v2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 112
    .line 113
    .line 114
    move-result-object v0

    .line 115
    check-cast v0, Landroid/widget/LinearLayout;

    .line 116
    .line 117
    iput-object v0, v1, Lcom/join/mgps/adapter/ForumBaseAdapter$h1;->h:Landroid/widget/LinearLayout;

    .line 118
    .line 119
    const v0, 0x7f0a00f7

    .line 120
    .line 121
    .line 122
    invoke-virtual {v2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 123
    .line 124
    .line 125
    move-result-object v0

    .line 126
    check-cast v0, Landroid/widget/TextView;

    .line 127
    .line 128
    iput-object v0, v1, Lcom/join/mgps/adapter/ForumBaseAdapter$h1;->i:Landroid/widget/TextView;

    .line 129
    .line 130
    const v0, 0x7f0a0f94

    .line 131
    .line 132
    .line 133
    invoke-virtual {v2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 134
    .line 135
    .line 136
    move-result-object v0

    .line 137
    check-cast v0, Landroid/widget/TextView;

    .line 138
    .line 139
    iput-object v0, v1, Lcom/join/mgps/adapter/ForumBaseAdapter$h1;->j:Landroid/widget/TextView;

    .line 140
    .line 141
    const v0, 0x7f0a129e

    .line 142
    .line 143
    .line 144
    invoke-virtual {v2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 145
    .line 146
    .line 147
    move-result-object v0

    .line 148
    check-cast v0, Landroid/widget/ProgressBar;

    .line 149
    .line 150
    iput-object v0, v1, Lcom/join/mgps/adapter/ForumBaseAdapter$h1;->k:Landroid/widget/ProgressBar;

    .line 151
    .line 152
    const v0, 0x7f0a12a5

    .line 153
    .line 154
    .line 155
    invoke-virtual {v2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 156
    .line 157
    .line 158
    move-result-object v0

    .line 159
    check-cast v0, Landroid/widget/ProgressBar;

    .line 160
    .line 161
    iput-object v0, v1, Lcom/join/mgps/adapter/ForumBaseAdapter$h1;->l:Landroid/widget/ProgressBar;

    .line 162
    .line 163
    const v0, 0x7f0a0e61

    .line 164
    .line 165
    .line 166
    invoke-virtual {v2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 167
    .line 168
    .line 169
    move-result-object v0

    .line 170
    iput-object v0, v1, Lcom/join/mgps/adapter/ForumBaseAdapter$h1;->m:Landroid/view/View;

    .line 171
    .line 172
    const v0, 0x7f0a135c

    .line 173
    .line 174
    .line 175
    invoke-virtual {v2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 176
    .line 177
    .line 178
    move-result-object v0

    .line 179
    iput-object v0, v1, Lcom/join/mgps/adapter/ForumBaseAdapter$h1;->n:Landroid/view/View;

    .line 180
    .line 181
    const v0, 0x7f0a04e1

    .line 182
    .line 183
    .line 184
    invoke-virtual {v2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 185
    .line 186
    .line 187
    move-result-object v0

    .line 188
    iput-object v0, v1, Lcom/join/mgps/adapter/ForumBaseAdapter$h1;->o:Landroid/view/View;

    .line 189
    .line 190
    invoke-virtual {v2, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 191
    .line 192
    .line 193
    move-object v0, v1

    .line 194
    move-object v8, v2

    .line 195
    :goto_0
    :try_start_2
    invoke-virtual/range {p0 .. p1}, Lcom/join/mgps/adapter/ForumBaseAdapter;->getItem(I)Ljava/lang/Object;

    .line 196
    .line 197
    .line 198
    move-result-object v1

    .line 199
    check-cast v1, Lcom/join/mgps/adapter/ForumBaseAdapter$r1$w;

    .line 200
    .line 201
    if-eqz v1, :cond_9

    .line 202
    .line 203
    if-nez v0, :cond_2

    .line 204
    .line 205
    goto/16 :goto_5

    .line 206
    .line 207
    :cond_2
    iget-object v9, v1, Lcom/join/mgps/adapter/ForumBaseAdapter$r1$w;->c:Lcom/join/mgps/dto/ForumBean$GameInfo;

    .line 208
    .line 209
    iget-object v10, v1, Lcom/join/mgps/adapter/ForumBaseAdapter$r1$w;->b:Ljava/lang/String;

    .line 210
    .line 211
    invoke-virtual {v9}, Lcom/join/mgps/dto/ForumBean$GameInfo;->getGame_id()Ljava/lang/String;

    .line 212
    .line 213
    .line 214
    move-result-object v11

    .line 215
    iget-boolean v1, v1, Lcom/join/mgps/adapter/ForumBaseAdapter$r1$w;->a:Z

    .line 216
    .line 217
    const/4 v12, 0x0

    .line 218
    const/16 v13, 0x8

    .line 219
    .line 220
    if-eqz v1, :cond_3

    .line 221
    .line 222
    iget-object v1, v0, Lcom/join/mgps/adapter/ForumBaseAdapter$h1;->o:Landroid/view/View;

    .line 223
    .line 224
    invoke-virtual {v1}, Landroid/view/View;->getVisibility()I

    .line 225
    .line 226
    .line 227
    move-result v1

    .line 228
    if-eqz v1, :cond_4

    .line 229
    .line 230
    iget-object v1, v0, Lcom/join/mgps/adapter/ForumBaseAdapter$h1;->o:Landroid/view/View;

    .line 231
    .line 232
    invoke-virtual {v1, v12}, Landroid/view/View;->setVisibility(I)V

    .line 233
    .line 234
    .line 235
    goto :goto_1

    .line 236
    :cond_3
    iget-object v1, v0, Lcom/join/mgps/adapter/ForumBaseAdapter$h1;->o:Landroid/view/View;

    .line 237
    .line 238
    invoke-virtual {v1}, Landroid/view/View;->getVisibility()I

    .line 239
    .line 240
    .line 241
    move-result v1

    .line 242
    if-eq v1, v13, :cond_4

    .line 243
    .line 244
    iget-object v1, v0, Lcom/join/mgps/adapter/ForumBaseAdapter$h1;->o:Landroid/view/View;

    .line 245
    .line 246
    invoke-virtual {v1, v13}, Landroid/view/View;->setVisibility(I)V

    .line 247
    .line 248
    .line 249
    :cond_4
    :goto_1
    iget-object v1, v0, Lcom/join/mgps/adapter/ForumBaseAdapter$h1;->d:Landroid/widget/Button;

    .line 250
    .line 251
    const v2, 0x7f0804a8

    .line 252
    .line 253
    .line 254
    invoke-virtual {v1, v2}, Landroid/view/View;->setBackgroundResource(I)V

    .line 255
    .line 256
    .line 257
    iget-object v1, v7, Lcom/join/mgps/adapter/ForumBaseAdapter;->e:Landroid/content/Context;

    .line 258
    .line 259
    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 260
    .line 261
    .line 262
    move-result-object v1

    .line 263
    const v2, 0x7f070b2c

    .line 264
    .line 265
    .line 266
    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    .line 267
    .line 268
    .line 269
    move-result v1

    .line 270
    iget-object v2, v0, Lcom/join/mgps/adapter/ForumBaseAdapter$h1;->d:Landroid/widget/Button;

    .line 271
    .line 272
    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 273
    .line 274
    .line 275
    move-result-object v2

    .line 276
    check-cast v2, Landroid/widget/RelativeLayout$LayoutParams;

    .line 277
    .line 278
    iput v1, v2, Landroid/widget/RelativeLayout$LayoutParams;->width:I

    .line 279
    .line 280
    iget-object v1, v0, Lcom/join/mgps/adapter/ForumBaseAdapter$h1;->d:Landroid/widget/Button;

    .line 281
    .line 282
    invoke-virtual {v1, v2}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 283
    .line 284
    .line 285
    iget-object v1, v0, Lcom/join/mgps/adapter/ForumBaseAdapter$h1;->c:Landroid/widget/TextView;

    .line 286
    .line 287
    invoke-virtual {v9}, Lcom/join/mgps/dto/ForumBean$GameInfo;->getGame_name()Ljava/lang/String;

    .line 288
    .line 289
    .line 290
    move-result-object v2

    .line 291
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 292
    .line 293
    .line 294
    iget-object v1, v0, Lcom/join/mgps/adapter/ForumBaseAdapter$h1;->f:Landroid/widget/TextView;

    .line 295
    .line 296
    invoke-virtual {v9}, Lcom/join/mgps/dto/ForumBean$GameInfo;->getGame_desc()Ljava/lang/String;

    .line 297
    .line 298
    .line 299
    move-result-object v2

    .line 300
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 301
    .line 302
    .line 303
    invoke-virtual {v9}, Lcom/join/mgps/dto/ForumBean$GameInfo;->getGame_size()Ljava/lang/String;

    .line 304
    .line 305
    .line 306
    move-result-object v16

    .line 307
    iget-object v1, v0, Lcom/join/mgps/adapter/ForumBaseAdapter$h1;->b:Lcom/facebook/drawee/view/SimpleDraweeView;

    .line 308
    .line 309
    invoke-virtual {v9}, Lcom/join/mgps/dto/ForumBean$GameInfo;->getGame_ico_remote()Ljava/lang/String;

    .line 310
    .line 311
    .line 312
    move-result-object v2

    .line 313
    iget-object v3, v7, Lcom/join/mgps/adapter/ForumBaseAdapter;->e:Landroid/content/Context;

    .line 314
    .line 315
    invoke-static {v3}, Lcom/join/android/app/common/utils/l;->B(Landroid/content/Context;)Lcom/facebook/drawee/generic/RoundingParams;

    .line 316
    .line 317
    .line 318
    move-result-object v3

    .line 319
    invoke-static {v1, v2, v3}, Lcom/join/android/app/common/utils/l;->j(Lcom/facebook/drawee/view/SimpleDraweeView;Ljava/lang/String;Lcom/facebook/drawee/generic/RoundingParams;)V

    .line 320
    .line 321
    .line 322
    invoke-virtual {v9}, Lcom/join/mgps/dto/ForumBean$GameInfo;->getGame_tag_info()Ljava/util/List;

    .line 323
    .line 324
    .line 325
    move-result-object v14

    .line 326
    invoke-direct {v7, v0, v12}, Lcom/join/mgps/adapter/ForumBaseAdapter;->h1(Lcom/join/mgps/adapter/ForumBaseAdapter$h1;I)V

    .line 327
    .line 328
    .line 329
    invoke-virtual {v9}, Lcom/join/mgps/dto/ForumBean$GameInfo;->getDownloadTask()Lcom/github/snowdream/android/app/downloader/DownloadTask;

    .line 330
    .line 331
    .line 332
    move-result-object v4

    .line 333
    if-eqz v4, :cond_6

    .line 334
    .line 335
    invoke-virtual {v9}, Lcom/join/mgps/dto/ForumBean$GameInfo;->getPay_tag_info()Lcom/join/mgps/dto/PayTagInfo;

    .line 336
    .line 337
    .line 338
    move-result-object v1

    .line 339
    if-eqz v1, :cond_5

    .line 340
    .line 341
    invoke-virtual {v9}, Lcom/join/mgps/dto/ForumBean$GameInfo;->getPay_tag_info()Lcom/join/mgps/dto/PayTagInfo;

    .line 342
    .line 343
    .line 344
    move-result-object v1

    .line 345
    invoke-virtual {v1}, Lcom/join/mgps/dto/PayTagInfo;->getPay_game_amount()I

    .line 346
    .line 347
    .line 348
    move-result v1

    .line 349
    invoke-virtual {v4, v1}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->setPay_game_amount(I)V

    .line 350
    .line 351
    .line 352
    :cond_5
    invoke-virtual {v7, v0, v4}, Lcom/join/mgps/adapter/ForumBaseAdapter;->B0(Lcom/join/mgps/adapter/ForumBaseAdapter$h1;Ljava/lang/Object;)V

    .line 353
    .line 354
    .line 355
    goto :goto_3

    .line 356
    :cond_6
    invoke-virtual {v9}, Lcom/join/mgps/dto/ForumBean$GameInfo;->getPay_tag_info()Lcom/join/mgps/dto/PayTagInfo;

    .line 357
    .line 358
    .line 359
    move-result-object v1

    .line 360
    invoke-virtual {v9}, Lcom/join/mgps/dto/ForumBean$GameInfo;->getGame_id()Ljava/lang/String;

    .line 361
    .line 362
    .line 363
    move-result-object v2

    .line 364
    invoke-static {v1, v2}, Lcom/join/mgps/Util/UtilsMy;->x0(Lcom/join/mgps/dto/PayTagInfo;Ljava/lang/String;)I

    .line 365
    .line 366
    .line 367
    move-result v1

    .line 368
    if-lez v1, :cond_7

    .line 369
    .line 370
    iget-object v1, v0, Lcom/join/mgps/adapter/ForumBaseAdapter$h1;->d:Landroid/widget/Button;

    .line 371
    .line 372
    invoke-virtual {v9}, Lcom/join/mgps/dto/ForumBean$GameInfo;->getPay_tag_info()Lcom/join/mgps/dto/PayTagInfo;

    .line 373
    .line 374
    .line 375
    move-result-object v2

    .line 376
    invoke-virtual {v2}, Lcom/join/mgps/dto/PayTagInfo;->getPay_game_amount()I

    .line 377
    .line 378
    .line 379
    move-result v2

    .line 380
    invoke-virtual {v7, v1, v2}, Lcom/join/mgps/adapter/ForumBaseAdapter;->A0(Landroid/widget/TextView;I)V

    .line 381
    .line 382
    .line 383
    goto :goto_2

    .line 384
    :cond_7
    iget-object v1, v0, Lcom/join/mgps/adapter/ForumBaseAdapter$h1;->d:Landroid/widget/Button;

    .line 385
    .line 386
    invoke-virtual {v9}, Lcom/join/mgps/dto/ForumBean$GameInfo;->getDown_status()I

    .line 387
    .line 388
    .line 389
    move-result v2

    .line 390
    invoke-virtual {v7, v1, v2}, Lcom/join/mgps/adapter/ForumBaseAdapter;->z0(Landroid/view/View;I)V

    .line 391
    .line 392
    .line 393
    :goto_2
    iget-object v15, v0, Lcom/join/mgps/adapter/ForumBaseAdapter$h1;->d:Landroid/widget/Button;

    .line 394
    .line 395
    new-instance v6, Lcom/join/mgps/adapter/ForumBaseAdapter$g0;

    .line 396
    .line 397
    move-object v1, v6

    .line 398
    move-object/from16 v2, p0

    .line 399
    .line 400
    move-object v3, v9

    .line 401
    move-object v5, v10

    .line 402
    move-object v12, v6

    .line 403
    move-object v6, v11

    .line 404
    invoke-direct/range {v1 .. v6}, Lcom/join/mgps/adapter/ForumBaseAdapter$g0;-><init>(Lcom/join/mgps/adapter/ForumBaseAdapter;Lcom/join/mgps/dto/ForumBean$GameInfo;Lcom/github/snowdream/android/app/downloader/DownloadTask;Ljava/lang/String;Ljava/lang/String;)V

    .line 405
    .line 406
    .line 407
    invoke-virtual {v15, v12}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 408
    .line 409
    .line 410
    :goto_3
    new-instance v1, Ljava/lang/StringBuilder;

    .line 411
    .line 412
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 413
    .line 414
    .line 415
    sget-object v2, Lcom/join/mgps/enums/ConstantIntEnum;->H5:Lcom/join/mgps/enums/ConstantIntEnum;

    .line 416
    .line 417
    invoke-virtual {v2}, Lcom/join/mgps/enums/ConstantIntEnum;->value()I

    .line 418
    .line 419
    .line 420
    move-result v2

    .line 421
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 422
    .line 423
    .line 424
    const-string v2, ""

    .line 425
    .line 426
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 427
    .line 428
    .line 429
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 430
    .line 431
    .line 432
    move-result-object v1

    .line 433
    invoke-virtual {v9}, Lcom/join/mgps/dto/ForumBean$GameInfo;->getPlugin_num()Ljava/lang/String;

    .line 434
    .line 435
    .line 436
    move-result-object v2

    .line 437
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 438
    .line 439
    .line 440
    move-result v1

    .line 441
    if-eqz v1, :cond_8

    .line 442
    .line 443
    iget-object v1, v0, Lcom/join/mgps/adapter/ForumBaseAdapter$h1;->h:Landroid/widget/LinearLayout;

    .line 444
    .line 445
    invoke-virtual {v1, v13}, Landroid/view/View;->setVisibility(I)V

    .line 446
    .line 447
    .line 448
    iget-object v1, v0, Lcom/join/mgps/adapter/ForumBaseAdapter$h1;->d:Landroid/widget/Button;

    .line 449
    .line 450
    const v2, 0x7f080f8b

    .line 451
    .line 452
    .line 453
    invoke-virtual {v1, v2}, Landroid/view/View;->setBackgroundResource(I)V

    .line 454
    .line 455
    .line 456
    iget-object v1, v0, Lcom/join/mgps/adapter/ForumBaseAdapter$h1;->d:Landroid/widget/Button;

    .line 457
    .line 458
    const-string v2, "\u5f00\u59cb"

    .line 459
    .line 460
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 461
    .line 462
    .line 463
    iget-object v1, v0, Lcom/join/mgps/adapter/ForumBaseAdapter$h1;->d:Landroid/widget/Button;

    .line 464
    .line 465
    iget-object v2, v7, Lcom/join/mgps/adapter/ForumBaseAdapter;->e:Landroid/content/Context;

    .line 466
    .line 467
    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 468
    .line 469
    .line 470
    move-result-object v2

    .line 471
    const v3, 0x7f06002b

    .line 472
    .line 473
    .line 474
    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getColor(I)I

    .line 475
    .line 476
    .line 477
    move-result v2

    .line 478
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 479
    .line 480
    .line 481
    goto :goto_4

    .line 482
    :cond_8
    iget-object v1, v0, Lcom/join/mgps/adapter/ForumBaseAdapter$h1;->h:Landroid/widget/LinearLayout;

    .line 483
    .line 484
    const/4 v2, 0x0

    .line 485
    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 486
    .line 487
    .line 488
    iget-object v1, v0, Lcom/join/mgps/adapter/ForumBaseAdapter$h1;->h:Landroid/widget/LinearLayout;

    .line 489
    .line 490
    iget-object v2, v7, Lcom/join/mgps/adapter/ForumBaseAdapter;->e:Landroid/content/Context;

    .line 491
    .line 492
    invoke-static {v14, v1, v2}, Lcom/join/mgps/Util/r0;->c(Ljava/util/List;Landroid/widget/LinearLayout;Landroid/content/Context;)V

    .line 493
    .line 494
    .line 495
    invoke-virtual {v9}, Lcom/join/mgps/dto/ForumBean$GameInfo;->getScore()Ljava/lang/String;

    .line 496
    .line 497
    .line 498
    move-result-object v14

    .line 499
    invoke-virtual {v9}, Lcom/join/mgps/dto/ForumBean$GameInfo;->getDown_count()I

    .line 500
    .line 501
    .line 502
    move-result v15

    .line 503
    invoke-virtual {v9}, Lcom/join/mgps/dto/ForumBean$GameInfo;->getSp_tag_info()Lcom/join/mgps/dto/TipNew;

    .line 504
    .line 505
    .line 506
    move-result-object v17

    .line 507
    const/16 v18, 0x0

    .line 508
    .line 509
    iget-object v1, v0, Lcom/join/mgps/adapter/ForumBaseAdapter$h1;->h:Landroid/widget/LinearLayout;

    .line 510
    .line 511
    iget-object v2, v7, Lcom/join/mgps/adapter/ForumBaseAdapter;->e:Landroid/content/Context;

    .line 512
    .line 513
    move-object/from16 v19, v1

    .line 514
    .line 515
    move-object/from16 v20, v2

    .line 516
    .line 517
    invoke-static/range {v14 .. v20}, Lcom/join/mgps/Util/UtilsMy;->K(Ljava/lang/String;ILjava/lang/String;Lcom/join/mgps/dto/TipNew;Ljava/util/List;Landroid/widget/LinearLayout;Landroid/content/Context;)V

    .line 518
    .line 519
    .line 520
    invoke-virtual {v9}, Lcom/join/mgps/dto/ForumBean$GameInfo;->getSp_tag_info()Lcom/join/mgps/dto/TipNew;

    .line 521
    .line 522
    .line 523
    move-result-object v1

    .line 524
    invoke-virtual {v9}, Lcom/join/mgps/dto/ForumBean$GameInfo;->getDownloadTask()Lcom/github/snowdream/android/app/downloader/DownloadTask;

    .line 525
    .line 526
    .line 527
    move-result-object v2

    .line 528
    invoke-static {v1, v8, v2}, Lcom/join/mgps/Util/UtilsMy;->A3(Lcom/join/mgps/dto/TipNew;Landroid/view/View;Lcom/github/snowdream/android/app/downloader/DownloadTask;)V

    .line 529
    .line 530
    .line 531
    :goto_4
    iget-object v0, v0, Lcom/join/mgps/adapter/ForumBaseAdapter$h1;->n:Landroid/view/View;

    .line 532
    .line 533
    new-instance v1, Lcom/join/mgps/adapter/ForumBaseAdapter$a;

    .line 534
    .line 535
    invoke-direct {v1, v7, v10, v11, v9}, Lcom/join/mgps/adapter/ForumBaseAdapter$a;-><init>(Lcom/join/mgps/adapter/ForumBaseAdapter;Ljava/lang/String;Ljava/lang/String;Lcom/join/mgps/dto/ForumBean$GameInfo;)V

    .line 536
    .line 537
    .line 538
    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .line 539
    .line 540
    .line 541
    goto :goto_7

    .line 542
    :cond_9
    :goto_5
    return-object v8

    .line 543
    :catch_0
    move-exception v0

    .line 544
    goto :goto_6

    .line 545
    :catch_1
    move-exception v0

    .line 546
    move-object v8, v2

    .line 547
    goto :goto_6

    .line 548
    :catch_2
    move-exception v0

    .line 549
    move-object/from16 v8, p2

    .line 550
    .line 551
    :goto_6
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 552
    .line 553
    .line 554
    :goto_7
    return-object v8
.end method

.method private S(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
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
    check-cast p3, Lcom/join/mgps/adapter/ForumBaseAdapter$i1;

    .line 8
    .line 9
    goto/16 :goto_0

    .line 10
    .line 11
    :cond_0
    new-instance p3, Lcom/join/mgps/adapter/ForumBaseAdapter$i1;

    .line 12
    .line 13
    invoke-direct {p3, p0}, Lcom/join/mgps/adapter/ForumBaseAdapter$i1;-><init>(Lcom/join/mgps/adapter/ForumBaseAdapter;)V

    .line 14
    .line 15
    .line 16
    iget-object p2, p0, Lcom/join/mgps/adapter/ForumBaseAdapter;->e:Landroid/content/Context;

    .line 17
    .line 18
    invoke-static {p2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    .line 19
    .line 20
    .line 21
    move-result-object p2

    .line 22
    const v0, 0x7f0d06ef

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
    iput-object v0, p3, Lcom/join/mgps/adapter/ForumBaseAdapter$i1;->f:Landroid/view/View;

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
    iput-object v0, p3, Lcom/join/mgps/adapter/ForumBaseAdapter$i1;->b:Lcom/facebook/drawee/view/SimpleDraweeView;

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
    iput-object v0, p3, Lcom/join/mgps/adapter/ForumBaseAdapter$i1;->c:Landroid/widget/TextView;

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
    iput-object v0, p3, Lcom/join/mgps/adapter/ForumBaseAdapter$i1;->d:Landroid/widget/TextView;

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
    iput-object v0, p3, Lcom/join/mgps/adapter/ForumBaseAdapter$i1;->e:Landroid/widget/TextView;

    .line 82
    .line 83
    const v0, 0x7f0a0683

    .line 84
    .line 85
    .line 86
    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 87
    .line 88
    .line 89
    move-result-object v0

    .line 90
    check-cast v0, Landroid/widget/RelativeLayout;

    .line 91
    .line 92
    iput-object v0, p3, Lcom/join/mgps/adapter/ForumBaseAdapter$i1;->g:Landroid/widget/RelativeLayout;

    .line 93
    .line 94
    const v0, 0x7f0a06a7

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
    iput-object v0, p3, Lcom/join/mgps/adapter/ForumBaseAdapter$i1;->h:Landroid/widget/ImageView;

    .line 104
    .line 105
    const v0, 0x7f0a1186

    .line 106
    .line 107
    .line 108
    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 109
    .line 110
    .line 111
    move-result-object v0

    .line 112
    check-cast v0, Landroid/widget/ImageView;

    .line 113
    .line 114
    iput-object v0, p3, Lcom/join/mgps/adapter/ForumBaseAdapter$i1;->i:Landroid/widget/ImageView;

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
    iput-object v0, p3, Lcom/join/mgps/adapter/ForumBaseAdapter$i1;->j:Lcom/join/mgps/customview/VipView;

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
    iput-object v0, p3, Lcom/join/mgps/adapter/ForumBaseAdapter$i1;->k:Landroid/widget/TextView;

    .line 137
    .line 138
    invoke-virtual {p2, p3}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 139
    .line 140
    .line 141
    :goto_0
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/join/mgps/adapter/ForumBaseAdapter;->getItem(I)Ljava/lang/Object;

    .line 142
    .line 143
    .line 144
    move-result-object p1

    .line 145
    check-cast p1, Lcom/join/mgps/adapter/ForumBaseAdapter$r1$x;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 146
    .line 147
    if-nez p1, :cond_1

    .line 148
    .line 149
    return-object p2

    .line 150
    :cond_1
    :try_start_1
    iget-object v0, p0, Lcom/join/mgps/adapter/ForumBaseAdapter;->e:Landroid/content/Context;

    .line 151
    .line 152
    iget-object v1, p3, Lcom/join/mgps/adapter/ForumBaseAdapter$i1;->c:Landroid/widget/TextView;

    .line 153
    .line 154
    iget v2, p1, Lcom/join/mgps/adapter/ForumBaseAdapter$r1$x;->k:I

    .line 155
    .line 156
    iget v3, p1, Lcom/join/mgps/adapter/ForumBaseAdapter$r1$x;->l:I

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
    iget-object v0, p3, Lcom/join/mgps/adapter/ForumBaseAdapter$i1;->j:Lcom/join/mgps/customview/VipView;

    .line 165
    .line 166
    iget v1, p1, Lcom/join/mgps/adapter/ForumBaseAdapter$r1$x;->k:I

    .line 167
    .line 168
    iget v2, p1, Lcom/join/mgps/adapter/ForumBaseAdapter$r1$x;->l:I

    .line 169
    .line 170
    invoke-virtual {v0, v1, v2}, Lcom/join/mgps/customview/VipView;->setVipData(II)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 171
    .line 172
    .line 173
    goto :goto_1

    .line 174
    :catch_0
    move-exception v0

    .line 175
    :try_start_2
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 176
    .line 177
    .line 178
    :goto_1
    iget-boolean v0, p1, Lcom/join/mgps/adapter/ForumBaseAdapter$r1$x;->a:Z

    .line 179
    .line 180
    const/16 v1, 0x8

    .line 181
    .line 182
    const/4 v2, 0x0

    .line 183
    if-eqz v0, :cond_2

    .line 184
    .line 185
    iget-object v0, p3, Lcom/join/mgps/adapter/ForumBaseAdapter$i1;->f:Landroid/view/View;

    .line 186
    .line 187
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 188
    .line 189
    .line 190
    goto :goto_2

    .line 191
    :cond_2
    iget-object v0, p3, Lcom/join/mgps/adapter/ForumBaseAdapter$i1;->f:Landroid/view/View;

    .line 192
    .line 193
    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 194
    .line 195
    .line 196
    :goto_2
    iget-object v0, p3, Lcom/join/mgps/adapter/ForumBaseAdapter$i1;->c:Landroid/widget/TextView;

    .line 197
    .line 198
    iget-object v3, p1, Lcom/join/mgps/adapter/ForumBaseAdapter$r1$x;->c:Ljava/lang/String;

    .line 199
    .line 200
    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 201
    .line 202
    .line 203
    iget-object v0, p3, Lcom/join/mgps/adapter/ForumBaseAdapter$i1;->d:Landroid/widget/TextView;

    .line 204
    .line 205
    iget-wide v3, p1, Lcom/join/mgps/adapter/ForumBaseAdapter$r1$x;->d:J

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
    iget-boolean v0, p1, Lcom/join/mgps/adapter/ForumBaseAdapter$r1$x;->e:Z

    .line 219
    .line 220
    if-eqz v0, :cond_3

    .line 221
    .line 222
    iget-object v0, p3, Lcom/join/mgps/adapter/ForumBaseAdapter$i1;->e:Landroid/widget/TextView;

    .line 223
    .line 224
    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 225
    .line 226
    .line 227
    goto :goto_3

    .line 228
    :cond_3
    iget-object v0, p3, Lcom/join/mgps/adapter/ForumBaseAdapter$i1;->e:Landroid/widget/TextView;

    .line 229
    .line 230
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 231
    .line 232
    .line 233
    :goto_3
    iget-boolean v0, p1, Lcom/join/mgps/adapter/ForumBaseAdapter$r1$x;->i:Z

    .line 234
    .line 235
    if-eqz v0, :cond_4

    .line 236
    .line 237
    iget-object v0, p3, Lcom/join/mgps/adapter/ForumBaseAdapter$i1;->h:Landroid/widget/ImageView;

    .line 238
    .line 239
    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 240
    .line 241
    .line 242
    goto :goto_4

    .line 243
    :cond_4
    iget-object v0, p3, Lcom/join/mgps/adapter/ForumBaseAdapter$i1;->h:Landroid/widget/ImageView;

    .line 244
    .line 245
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 246
    .line 247
    .line 248
    :goto_4
    iget-boolean v0, p1, Lcom/join/mgps/adapter/ForumBaseAdapter$r1$x;->j:Z

    .line 249
    .line 250
    if-eqz v0, :cond_5

    .line 251
    .line 252
    iget-object v0, p3, Lcom/join/mgps/adapter/ForumBaseAdapter$i1;->i:Landroid/widget/ImageView;

    .line 253
    .line 254
    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 255
    .line 256
    .line 257
    goto :goto_5

    .line 258
    :cond_5
    iget-object v0, p3, Lcom/join/mgps/adapter/ForumBaseAdapter$i1;->i:Landroid/widget/ImageView;

    .line 259
    .line 260
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 261
    .line 262
    .line 263
    :goto_5
    iget-object v0, p3, Lcom/join/mgps/adapter/ForumBaseAdapter$i1;->b:Lcom/facebook/drawee/view/SimpleDraweeView;

    .line 264
    .line 265
    iget-object v3, p1, Lcom/join/mgps/adapter/ForumBaseAdapter$r1$x;->b:Ljava/lang/String;

    .line 266
    .line 267
    invoke-static {v0, v3}, Lcom/join/android/app/common/utils/l;->y(Lcom/facebook/drawee/view/SimpleDraweeView;Ljava/lang/String;)V

    .line 268
    .line 269
    .line 270
    iget-object v0, p3, Lcom/join/mgps/adapter/ForumBaseAdapter$i1;->b:Lcom/facebook/drawee/view/SimpleDraweeView;

    .line 271
    .line 272
    new-instance v3, Lcom/join/mgps/adapter/ForumBaseAdapter$a0;

    .line 273
    .line 274
    invoke-direct {v3, p0, p1}, Lcom/join/mgps/adapter/ForumBaseAdapter$a0;-><init>(Lcom/join/mgps/adapter/ForumBaseAdapter;Lcom/join/mgps/adapter/ForumBaseAdapter$r1$x;)V

    .line 275
    .line 276
    .line 277
    invoke-virtual {v0, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 278
    .line 279
    .line 280
    iget v0, p1, Lcom/join/mgps/adapter/ForumBaseAdapter$r1$x;->f:I

    .line 281
    .line 282
    invoke-virtual {p0, p2, v0}, Lcom/join/mgps/adapter/ForumBaseAdapter;->R0(Landroid/view/View;I)V

    .line 283
    .line 284
    .line 285
    iget-object v3, p3, Lcom/join/mgps/adapter/ForumBaseAdapter$i1;->g:Landroid/widget/RelativeLayout;

    .line 286
    .line 287
    invoke-virtual {p0, v3, v0}, Lcom/join/mgps/adapter/ForumBaseAdapter;->K0(Landroid/view/View;I)V

    .line 288
    .line 289
    .line 290
    const/4 v0, 0x3

    .line 291
    new-array v0, v0, [Landroid/view/View;

    .line 292
    .line 293
    iget-object v3, p3, Lcom/join/mgps/adapter/ForumBaseAdapter$i1;->b:Lcom/facebook/drawee/view/SimpleDraweeView;

    .line 294
    .line 295
    aput-object v3, v0, v2

    .line 296
    .line 297
    iget-object v3, p3, Lcom/join/mgps/adapter/ForumBaseAdapter$i1;->c:Landroid/widget/TextView;

    .line 298
    .line 299
    const/4 v4, 0x1

    .line 300
    aput-object v3, v0, v4

    .line 301
    .line 302
    iget-object v3, p3, Lcom/join/mgps/adapter/ForumBaseAdapter$i1;->d:Landroid/widget/TextView;

    .line 303
    .line 304
    const/4 v5, 0x2

    .line 305
    aput-object v3, v0, v5

    .line 306
    .line 307
    invoke-static {v0}, Lcom/join/mgps/Util/r0;->S0([Landroid/view/View;)V

    .line 308
    .line 309
    .line 310
    new-array v0, v4, [Landroid/view/View;

    .line 311
    .line 312
    iget-object v3, p3, Lcom/join/mgps/adapter/ForumBaseAdapter$i1;->j:Lcom/join/mgps/customview/VipView;

    .line 313
    .line 314
    aput-object v3, v0, v2

    .line 315
    .line 316
    invoke-static {v0}, Lcom/join/mgps/Util/r0;->U0([Landroid/view/View;)V

    .line 317
    .line 318
    .line 319
    iget-object v0, p1, Lcom/join/mgps/adapter/ForumBaseAdapter$r1$x;->o:Ljava/lang/String;

    .line 320
    .line 321
    iget-object p1, p1, Lcom/join/mgps/adapter/ForumBaseAdapter$r1$x;->n:Ljava/lang/String;

    .line 322
    .line 323
    iget-object v3, p3, Lcom/join/mgps/adapter/ForumBaseAdapter$i1;->k:Landroid/widget/TextView;

    .line 324
    .line 325
    if-eqz v3, :cond_8

    .line 326
    .line 327
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 328
    .line 329
    .line 330
    move-result v3

    .line 331
    if-nez v3, :cond_7

    .line 332
    .line 333
    iget-object v1, p3, Lcom/join/mgps/adapter/ForumBaseAdapter$i1;->k:Landroid/widget/TextView;

    .line 334
    .line 335
    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 336
    .line 337
    .line 338
    iget-object v1, p3, Lcom/join/mgps/adapter/ForumBaseAdapter$i1;->k:Landroid/widget/TextView;

    .line 339
    .line 340
    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 341
    .line 342
    .line 343
    iget-object v0, p0, Lcom/join/mgps/adapter/ForumBaseAdapter;->e:Landroid/content/Context;

    .line 344
    .line 345
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 346
    .line 347
    .line 348
    move-result-object v0

    .line 349
    const v1, 0x7f0805d1

    .line 350
    .line 351
    .line 352
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    .line 353
    .line 354
    .line 355
    move-result-object v0

    .line 356
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 357
    .line 358
    .line 359
    move-result v1

    .line 360
    if-nez v1, :cond_6

    .line 361
    .line 362
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    .line 363
    .line 364
    .line 365
    move-result v1

    .line 366
    const/4 v2, 0x7

    .line 367
    if-ne v1, v2, :cond_6

    .line 368
    .line 369
    const-string v1, "#"

    .line 370
    .line 371
    invoke-virtual {p1, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 372
    .line 373
    .line 374
    move-result v1

    .line 375
    if-eqz v1, :cond_6

    .line 376
    .line 377
    goto :goto_6

    .line 378
    :cond_6
    const-string p1, "#2fccdf"

    .line 379
    .line 380
    :goto_6
    new-instance v1, Landroid/graphics/LightingColorFilter;

    .line 381
    .line 382
    invoke-static {p1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    .line 383
    .line 384
    .line 385
    move-result v2

    .line 386
    invoke-static {p1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    .line 387
    .line 388
    .line 389
    move-result p1

    .line 390
    invoke-direct {v1, v2, p1}, Landroid/graphics/LightingColorFilter;-><init>(II)V

    .line 391
    .line 392
    .line 393
    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setColorFilter(Landroid/graphics/ColorFilter;)V

    .line 394
    .line 395
    .line 396
    iget-object p1, p3, Lcom/join/mgps/adapter/ForumBaseAdapter$i1;->k:Landroid/widget/TextView;

    .line 397
    .line 398
    invoke-virtual {p1, v0}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 399
    .line 400
    .line 401
    goto :goto_7

    .line 402
    :cond_7
    iget-object p1, p3, Lcom/join/mgps/adapter/ForumBaseAdapter$i1;->k:Landroid/widget/TextView;

    .line 403
    .line 404
    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    .line 405
    .line 406
    .line 407
    goto :goto_7

    .line 408
    :catch_1
    move-exception p1

    .line 409
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 410
    .line 411
    .line 412
    :cond_8
    :goto_7
    return-object p2
.end method

.method private T(Landroid/content/Context;)I
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
    if-nez p1, :cond_0

    .line 2
    .line 3
    const/4 p1, 0x0

    .line 4
    return p1

    .line 5
    :cond_0
    iget v0, p0, Lcom/join/mgps/adapter/ForumBaseAdapter;->j:I

    .line 6
    .line 7
    if-nez v0, :cond_1

    .line 8
    .line 9
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 10
    .line 11
    .line 12
    move-result-object p1

    .line 13
    invoke-virtual {p1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    iget v0, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    .line 18
    .line 19
    const v1, 0x7f070ed4

    .line 20
    .line 21
    .line 22
    invoke-virtual {p1, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    .line 23
    .line 24
    .line 25
    move-result p1

    .line 26
    mul-int/lit8 p1, p1, 0x2

    .line 27
    .line 28
    sub-int/2addr v0, p1

    .line 29
    const/high16 p1, 0x3f800000    # 1.0f

    .line 30
    .line 31
    int-to-float v0, v0

    .line 32
    mul-float v0, v0, p1

    .line 33
    .line 34
    const/high16 p1, 0x3fc00000    # 1.5f

    .line 35
    .line 36
    div-float/2addr v0, p1

    .line 37
    float-to-int p1, v0

    .line 38
    iput p1, p0, Lcom/join/mgps/adapter/ForumBaseAdapter;->j:I

    .line 39
    .line 40
    :cond_1
    iget p1, p0, Lcom/join/mgps/adapter/ForumBaseAdapter;->j:I

    .line 41
    .line 42
    return p1
.end method

.method private U(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
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
    check-cast p3, Lcom/join/mgps/adapter/ForumBaseAdapter$j1;

    .line 8
    .line 9
    goto :goto_0

    .line 10
    :cond_0
    new-instance p3, Lcom/join/mgps/adapter/ForumBaseAdapter$j1;

    .line 11
    .line 12
    invoke-direct {p3, p0}, Lcom/join/mgps/adapter/ForumBaseAdapter$j1;-><init>(Lcom/join/mgps/adapter/ForumBaseAdapter;)V

    .line 13
    .line 14
    .line 15
    iget-object p2, p0, Lcom/join/mgps/adapter/ForumBaseAdapter;->e:Landroid/content/Context;

    .line 16
    .line 17
    invoke-static {p2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    .line 18
    .line 19
    .line 20
    move-result-object p2

    .line 21
    const v0, 0x7f0d06f1

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
    const v0, 0x7f0a06a4

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
    iput-object v0, p3, Lcom/join/mgps/adapter/ForumBaseAdapter$j1;->c:Landroid/widget/RelativeLayout;

    .line 39
    .line 40
    const v0, 0x7f0a08ce

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
    iput-object v0, p3, Lcom/join/mgps/adapter/ForumBaseAdapter$j1;->b:Landroid/widget/TextView;

    .line 50
    .line 51
    const v0, 0x7f0a092d

    .line 52
    .line 53
    .line 54
    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 55
    .line 56
    .line 57
    move-result-object v0

    .line 58
    check-cast v0, Lcom/facebook/drawee/view/SimpleDraweeView;

    .line 59
    .line 60
    iput-object v0, p3, Lcom/join/mgps/adapter/ForumBaseAdapter$j1;->d:Lcom/facebook/drawee/view/SimpleDraweeView;

    .line 61
    .line 62
    const v0, 0x7f0a092e

    .line 63
    .line 64
    .line 65
    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 66
    .line 67
    .line 68
    move-result-object v0

    .line 69
    check-cast v0, Lcom/facebook/drawee/view/SimpleDraweeView;

    .line 70
    .line 71
    iput-object v0, p3, Lcom/join/mgps/adapter/ForumBaseAdapter$j1;->e:Lcom/facebook/drawee/view/SimpleDraweeView;

    .line 72
    .line 73
    const v0, 0x7f0a092f

    .line 74
    .line 75
    .line 76
    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 77
    .line 78
    .line 79
    move-result-object v0

    .line 80
    check-cast v0, Lcom/facebook/drawee/view/SimpleDraweeView;

    .line 81
    .line 82
    iput-object v0, p3, Lcom/join/mgps/adapter/ForumBaseAdapter$j1;->f:Lcom/facebook/drawee/view/SimpleDraweeView;

    .line 83
    .line 84
    invoke-virtual {p2, p3}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 85
    .line 86
    .line 87
    :goto_0
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/join/mgps/adapter/ForumBaseAdapter;->getItem(I)Ljava/lang/Object;

    .line 88
    .line 89
    .line 90
    move-result-object p1

    .line 91
    check-cast p1, Lcom/join/mgps/adapter/ForumBaseAdapter$r1$y;

    .line 92
    .line 93
    if-nez p1, :cond_1

    .line 94
    .line 95
    return-object p2

    .line 96
    :cond_1
    invoke-direct {p0, p3, p1}, Lcom/join/mgps/adapter/ForumBaseAdapter;->u0(Lcom/join/mgps/adapter/ForumBaseAdapter$j1;Lcom/join/mgps/adapter/ForumBaseAdapter$r1$y;)V

    .line 97
    .line 98
    .line 99
    iget p1, p1, Lcom/join/mgps/adapter/ForumBaseAdapter$r1$y;->c:I

    .line 100
    .line 101
    invoke-virtual {p0, p2, p1}, Lcom/join/mgps/adapter/ForumBaseAdapter;->R0(Landroid/view/View;I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 102
    .line 103
    .line 104
    goto :goto_1

    .line 105
    :catch_0
    move-exception p1

    .line 106
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 107
    .line 108
    .line 109
    :goto_1
    return-object p2
.end method

.method private U0(Landroid/view/View;Lcom/join/mgps/dto/RecommendLabelTag;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x10
        }
        names = {
            "v",
            "tag"
        }
    .end annotation

    .line 1
    if-nez p1, :cond_0

    .line 2
    .line 3
    return-void

    .line 4
    :cond_0
    new-instance v0, Lcom/join/mgps/adapter/ForumBaseAdapter$w;

    .line 5
    .line 6
    invoke-direct {v0, p0, p2}, Lcom/join/mgps/adapter/ForumBaseAdapter$w;-><init>(Lcom/join/mgps/adapter/ForumBaseAdapter;Lcom/join/mgps/dto/RecommendLabelTag;)V

    .line 7
    .line 8
    .line 9
    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 10
    .line 11
    .line 12
    return-void
.end method

.method private V(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 5
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
    const-string p3, ""

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
    check-cast v0, Lcom/join/mgps/adapter/ForumBaseAdapter$k1;

    .line 10
    .line 11
    goto :goto_0

    .line 12
    :cond_0
    new-instance v0, Lcom/join/mgps/adapter/ForumBaseAdapter$k1;

    .line 13
    .line 14
    invoke-direct {v0, p0}, Lcom/join/mgps/adapter/ForumBaseAdapter$k1;-><init>(Lcom/join/mgps/adapter/ForumBaseAdapter;)V

    .line 15
    .line 16
    .line 17
    iget-object p2, p0, Lcom/join/mgps/adapter/ForumBaseAdapter;->e:Landroid/content/Context;

    .line 18
    .line 19
    invoke-static {p2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    .line 20
    .line 21
    .line 22
    move-result-object p2

    .line 23
    const v1, 0x7f0d06bc

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
    const v1, 0x7f0a06a6

    .line 32
    .line 33
    .line 34
    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 35
    .line 36
    .line 37
    move-result-object v1

    .line 38
    check-cast v1, Lcom/join/android/app/component/optimizetext/StaticLayoutView;

    .line 39
    .line 40
    iput-object v1, v0, Lcom/join/mgps/adapter/ForumBaseAdapter$k1;->b:Lcom/join/android/app/component/optimizetext/StaticLayoutView;

    .line 41
    .line 42
    invoke-virtual {p2, v0}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 43
    .line 44
    .line 45
    :goto_0
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/join/mgps/adapter/ForumBaseAdapter;->getItem(I)Ljava/lang/Object;

    .line 46
    .line 47
    .line 48
    move-result-object p1

    .line 49
    check-cast p1, Lcom/join/mgps/adapter/ForumBaseAdapter$r1$z;

    .line 50
    .line 51
    if-nez p1, :cond_1

    .line 52
    .line 53
    return-object p2

    .line 54
    :cond_1
    iget-object v1, p0, Lcom/join/mgps/adapter/ForumBaseAdapter;->b:Lcom/join/android/app/component/optimizetext/b;

    .line 55
    .line 56
    new-instance v2, Ljava/lang/StringBuilder;

    .line 57
    .line 58
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 59
    .line 60
    .line 61
    iget v3, p1, Lcom/join/mgps/adapter/ForumBaseAdapter$r1$z;->d:I

    .line 62
    .line 63
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 64
    .line 65
    .line 66
    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 67
    .line 68
    .line 69
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 70
    .line 71
    .line 72
    move-result-object v2

    .line 73
    invoke-virtual {v1, v2}, Lcom/join/android/app/component/optimizetext/b;->d(Ljava/lang/String;)Landroid/text/StaticLayout;

    .line 74
    .line 75
    .line 76
    move-result-object v1

    .line 77
    if-nez v1, :cond_2

    .line 78
    .line 79
    iget-object v1, p0, Lcom/join/mgps/adapter/ForumBaseAdapter;->b:Lcom/join/android/app/component/optimizetext/b;

    .line 80
    .line 81
    invoke-virtual {v1, p1}, Lcom/join/android/app/component/optimizetext/b;->e(Lcom/join/android/app/component/optimizetext/c;)V

    .line 82
    .line 83
    .line 84
    :cond_2
    iget-object v1, v0, Lcom/join/mgps/adapter/ForumBaseAdapter$k1;->b:Lcom/join/android/app/component/optimizetext/StaticLayoutView;

    .line 85
    .line 86
    iget-object v2, p0, Lcom/join/mgps/adapter/ForumBaseAdapter;->b:Lcom/join/android/app/component/optimizetext/b;

    .line 87
    .line 88
    new-instance v3, Ljava/lang/StringBuilder;

    .line 89
    .line 90
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 91
    .line 92
    .line 93
    iget v4, p1, Lcom/join/mgps/adapter/ForumBaseAdapter$r1$z;->d:I

    .line 94
    .line 95
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 96
    .line 97
    .line 98
    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 99
    .line 100
    .line 101
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 102
    .line 103
    .line 104
    move-result-object p3

    .line 105
    invoke-virtual {v2, p3}, Lcom/join/android/app/component/optimizetext/b;->d(Ljava/lang/String;)Landroid/text/StaticLayout;

    .line 106
    .line 107
    .line 108
    move-result-object p3

    .line 109
    invoke-virtual {v1, p3}, Lcom/join/android/app/component/optimizetext/StaticLayoutView;->setLayout(Landroid/text/Layout;)V

    .line 110
    .line 111
    .line 112
    iget-object p3, v0, Lcom/join/mgps/adapter/ForumBaseAdapter$k1;->b:Lcom/join/android/app/component/optimizetext/StaticLayoutView;

    .line 113
    .line 114
    invoke-static {p3}, Lcom/join/mgps/Util/r0;->X0(Landroid/view/View;)V

    .line 115
    .line 116
    .line 117
    iget p1, p1, Lcom/join/mgps/adapter/ForumBaseAdapter$r1$z;->d:I

    .line 118
    .line 119
    invoke-virtual {p0, p2, p1}, Lcom/join/mgps/adapter/ForumBaseAdapter;->R0(Landroid/view/View;I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 120
    .line 121
    .line 122
    goto :goto_1

    .line 123
    :catch_0
    move-exception p1

    .line 124
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 125
    .line 126
    .line 127
    :goto_1
    return-object p2
.end method

.method private W(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
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
    move-object/from16 v12, p0

    .line 2
    .line 3
    const-string v0, "#FFFF6464"

    .line 4
    .line 5
    const-string v1, "#FF8378FF"

    .line 6
    .line 7
    const/4 v2, 0x0

    .line 8
    if-eqz p2, :cond_1

    .line 9
    .line 10
    :try_start_0
    invoke-virtual/range {p2 .. p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    .line 11
    .line 12
    .line 13
    move-result-object v3

    .line 14
    instance-of v3, v3, Lcom/join/mgps/adapter/ForumBaseAdapter$m1;

    .line 15
    .line 16
    if-eqz v3, :cond_0

    .line 17
    .line 18
    invoke-virtual/range {p2 .. p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    .line 19
    .line 20
    .line 21
    move-result-object v2

    .line 22
    check-cast v2, Lcom/join/mgps/adapter/ForumBaseAdapter$m1;

    .line 23
    .line 24
    :cond_0
    move-object/from16 v13, p2

    .line 25
    .line 26
    move-object v14, v2

    .line 27
    goto :goto_0

    .line 28
    :cond_1
    new-instance v3, Lcom/join/mgps/adapter/ForumBaseAdapter$m1;

    .line 29
    .line 30
    invoke-direct {v3, v12}, Lcom/join/mgps/adapter/ForumBaseAdapter$m1;-><init>(Lcom/join/mgps/adapter/ForumBaseAdapter;)V

    .line 31
    .line 32
    .line 33
    iget-object v4, v12, Lcom/join/mgps/adapter/ForumBaseAdapter;->e:Landroid/content/Context;

    .line 34
    .line 35
    invoke-static {v4}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    .line 36
    .line 37
    .line 38
    move-result-object v4

    .line 39
    const v5, 0x7f0d0684

    .line 40
    .line 41
    .line 42
    invoke-virtual {v4, v5, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 43
    .line 44
    .line 45
    move-result-object v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2

    .line 46
    const v4, 0x7f0a0391

    .line 47
    .line 48
    .line 49
    :try_start_1
    invoke-virtual {v2, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 50
    .line 51
    .line 52
    move-result-object v4

    .line 53
    check-cast v4, Lcom/join/kotlin/domain/widget/CornersLinearLayout;

    .line 54
    .line 55
    iput-object v4, v3, Lcom/join/mgps/adapter/ForumBaseAdapter$m1;->b:Lcom/join/kotlin/domain/widget/CornersLinearLayout;

    .line 56
    .line 57
    const v4, 0x7f0a01fe

    .line 58
    .line 59
    .line 60
    invoke-virtual {v2, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 61
    .line 62
    .line 63
    move-result-object v4

    .line 64
    check-cast v4, Landroid/widget/Button;

    .line 65
    .line 66
    iput-object v4, v3, Lcom/join/mgps/adapter/ForumBaseAdapter$m1;->c:Landroid/widget/Button;

    .line 67
    .line 68
    const v4, 0x7f0a1644

    .line 69
    .line 70
    .line 71
    invoke-virtual {v2, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 72
    .line 73
    .line 74
    move-result-object v4

    .line 75
    check-cast v4, Landroid/widget/TextView;

    .line 76
    .line 77
    iput-object v4, v3, Lcom/join/mgps/adapter/ForumBaseAdapter$m1;->d:Landroid/widget/TextView;

    .line 78
    .line 79
    const v4, 0x7f0a1645

    .line 80
    .line 81
    .line 82
    invoke-virtual {v2, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 83
    .line 84
    .line 85
    move-result-object v4

    .line 86
    iput-object v4, v3, Lcom/join/mgps/adapter/ForumBaseAdapter$m1;->f:Landroid/view/View;

    .line 87
    .line 88
    const v4, 0x7f0a06a1

    .line 89
    .line 90
    .line 91
    invoke-virtual {v2, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 92
    .line 93
    .line 94
    move-result-object v4

    .line 95
    iput-object v4, v3, Lcom/join/mgps/adapter/ForumBaseAdapter$m1;->e:Landroid/view/View;

    .line 96
    .line 97
    invoke-virtual {v2, v3}, Landroid/view/View;->setTag(Ljava/lang/Object;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 98
    .line 99
    .line 100
    move-object v13, v2

    .line 101
    move-object v14, v3

    .line 102
    :goto_0
    const/4 v2, 0x0

    .line 103
    if-nez p1, :cond_2

    .line 104
    .line 105
    :try_start_2
    iget-object v3, v14, Lcom/join/mgps/adapter/ForumBaseAdapter$m1;->b:Lcom/join/kotlin/domain/widget/CornersLinearLayout;

    .line 106
    .line 107
    invoke-virtual {v3, v2}, Lcom/join/kotlin/domain/widget/CornersLinearLayout;->setConner_top_left(I)V

    .line 108
    .line 109
    .line 110
    iget-object v3, v14, Lcom/join/mgps/adapter/ForumBaseAdapter$m1;->b:Lcom/join/kotlin/domain/widget/CornersLinearLayout;

    .line 111
    .line 112
    invoke-virtual {v3, v2}, Lcom/join/kotlin/domain/widget/CornersLinearLayout;->setConner_top_right(I)V

    .line 113
    .line 114
    .line 115
    goto :goto_1

    .line 116
    :cond_2
    iget-object v3, v14, Lcom/join/mgps/adapter/ForumBaseAdapter$m1;->b:Lcom/join/kotlin/domain/widget/CornersLinearLayout;

    .line 117
    .line 118
    iget-object v4, v12, Lcom/join/mgps/adapter/ForumBaseAdapter;->e:Landroid/content/Context;

    .line 119
    .line 120
    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 121
    .line 122
    .line 123
    move-result-object v4

    .line 124
    const v5, 0x7f071305

    .line 125
    .line 126
    .line 127
    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimension(I)F

    .line 128
    .line 129
    .line 130
    move-result v4

    .line 131
    float-to-int v4, v4

    .line 132
    invoke-virtual {v3, v4}, Lcom/join/kotlin/domain/widget/CornersLinearLayout;->setConner_top_right(I)V

    .line 133
    .line 134
    .line 135
    iget-object v3, v14, Lcom/join/mgps/adapter/ForumBaseAdapter$m1;->b:Lcom/join/kotlin/domain/widget/CornersLinearLayout;

    .line 136
    .line 137
    iget-object v4, v12, Lcom/join/mgps/adapter/ForumBaseAdapter;->e:Landroid/content/Context;

    .line 138
    .line 139
    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 140
    .line 141
    .line 142
    move-result-object v4

    .line 143
    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimension(I)F

    .line 144
    .line 145
    .line 146
    move-result v4

    .line 147
    float-to-int v4, v4

    .line 148
    invoke-virtual {v3, v4}, Lcom/join/kotlin/domain/widget/CornersLinearLayout;->setConner_top_right(I)V

    .line 149
    .line 150
    .line 151
    :goto_1
    invoke-virtual/range {p0 .. p1}, Lcom/join/mgps/adapter/ForumBaseAdapter;->getItem(I)Ljava/lang/Object;

    .line 152
    .line 153
    .line 154
    move-result-object v3

    .line 155
    move-object v15, v3

    .line 156
    check-cast v15, Lcom/join/mgps/adapter/ForumBaseAdapter$r1$p;

    .line 157
    .line 158
    if-eqz v15, :cond_8

    .line 159
    .line 160
    if-nez v14, :cond_3

    .line 161
    .line 162
    goto/16 :goto_3

    .line 163
    .line 164
    :cond_3
    iget-boolean v3, v15, Lcom/join/mgps/adapter/ForumBaseAdapter$r1$p;->a:Z

    .line 165
    .line 166
    if-eqz v3, :cond_4

    .line 167
    .line 168
    iget-object v3, v14, Lcom/join/mgps/adapter/ForumBaseAdapter$m1;->e:Landroid/view/View;

    .line 169
    .line 170
    invoke-virtual {v3, v2}, Landroid/view/View;->setVisibility(I)V

    .line 171
    .line 172
    .line 173
    goto :goto_2

    .line 174
    :cond_4
    iget-object v3, v14, Lcom/join/mgps/adapter/ForumBaseAdapter$m1;->e:Landroid/view/View;

    .line 175
    .line 176
    const/16 v4, 0x8

    .line 177
    .line 178
    invoke-virtual {v3, v4}, Landroid/view/View;->setVisibility(I)V

    .line 179
    .line 180
    .line 181
    :goto_2
    iget-object v3, v14, Lcom/join/mgps/adapter/ForumBaseAdapter$m1;->d:Landroid/widget/TextView;

    .line 182
    .line 183
    invoke-static {}, Landroid/text/method/LinkMovementMethod;->getInstance()Landroid/text/method/MovementMethod;

    .line 184
    .line 185
    .line 186
    move-result-object v4

    .line 187
    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setMovementMethod(Landroid/text/method/MovementMethod;)V

    .line 188
    .line 189
    .line 190
    new-instance v7, Ljava/util/ArrayList;

    .line 191
    .line 192
    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 193
    .line 194
    .line 195
    iget-boolean v3, v15, Lcom/join/mgps/adapter/ForumBaseAdapter$r1$p;->b:Z
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .line 196
    .line 197
    const-string v4, "#00FFFFFF"

    .line 198
    .line 199
    if-eqz v3, :cond_5

    .line 200
    .line 201
    :try_start_3
    new-instance v3, Lcom/join/mgps/dto/ForumBean$ForumPostsBean$TagInfo;

    .line 202
    .line 203
    invoke-direct {v3}, Lcom/join/mgps/dto/ForumBean$ForumPostsBean$TagInfo;-><init>()V

    .line 204
    .line 205
    .line 206
    const-string v5, "\u7cbe"

    .line 207
    .line 208
    invoke-virtual {v3, v5}, Lcom/join/mgps/dto/ForumBean$ForumPostsBean$TagInfo;->setName(Ljava/lang/String;)V

    .line 209
    .line 210
    .line 211
    invoke-virtual {v3, v4}, Lcom/join/mgps/dto/ForumBean$ForumPostsBean$TagInfo;->setColor(Ljava/lang/String;)V

    .line 212
    .line 213
    .line 214
    invoke-virtual {v3, v1}, Lcom/join/mgps/dto/ForumBean$ForumPostsBean$TagInfo;->setFont_color(Ljava/lang/String;)V

    .line 215
    .line 216
    .line 217
    invoke-virtual {v3, v1}, Lcom/join/mgps/dto/ForumBean$ForumPostsBean$TagInfo;->setBorder_color(Ljava/lang/String;)V

    .line 218
    .line 219
    .line 220
    const v1, 0x7f0808ae

    .line 221
    .line 222
    .line 223
    invoke-virtual {v3, v1}, Lcom/join/mgps/dto/ForumBean$ForumPostsBean$TagInfo;->setResId(I)V

    .line 224
    .line 225
    .line 226
    invoke-interface {v7, v2, v3}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 227
    .line 228
    .line 229
    :cond_5
    iget-boolean v1, v15, Lcom/join/mgps/adapter/ForumBaseAdapter$r1$p;->c:Z

    .line 230
    .line 231
    if-eqz v1, :cond_6

    .line 232
    .line 233
    new-instance v1, Lcom/join/mgps/dto/ForumBean$ForumPostsBean$TagInfo;

    .line 234
    .line 235
    invoke-direct {v1}, Lcom/join/mgps/dto/ForumBean$ForumPostsBean$TagInfo;-><init>()V

    .line 236
    .line 237
    .line 238
    const-string v3, "\u9876"

    .line 239
    .line 240
    invoke-virtual {v1, v3}, Lcom/join/mgps/dto/ForumBean$ForumPostsBean$TagInfo;->setName(Ljava/lang/String;)V

    .line 241
    .line 242
    .line 243
    const v3, 0x7f0808af

    .line 244
    .line 245
    .line 246
    invoke-virtual {v1, v3}, Lcom/join/mgps/dto/ForumBean$ForumPostsBean$TagInfo;->setResId(I)V

    .line 247
    .line 248
    .line 249
    invoke-virtual {v1, v4}, Lcom/join/mgps/dto/ForumBean$ForumPostsBean$TagInfo;->setColor(Ljava/lang/String;)V

    .line 250
    .line 251
    .line 252
    invoke-virtual {v1, v0}, Lcom/join/mgps/dto/ForumBean$ForumPostsBean$TagInfo;->setFont_color(Ljava/lang/String;)V

    .line 253
    .line 254
    .line 255
    invoke-virtual {v1, v0}, Lcom/join/mgps/dto/ForumBean$ForumPostsBean$TagInfo;->setBorder_color(Ljava/lang/String;)V

    .line 256
    .line 257
    .line 258
    invoke-interface {v7, v2, v1}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 259
    .line 260
    .line 261
    :cond_6
    iget-object v0, v15, Lcom/join/mgps/adapter/ForumBaseAdapter$r1$p;->i:Ljava/util/List;

    .line 262
    .line 263
    if-eqz v0, :cond_7

    .line 264
    .line 265
    invoke-interface {v7, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 266
    .line 267
    .line 268
    :cond_7
    iget-object v2, v14, Lcom/join/mgps/adapter/ForumBaseAdapter$m1;->d:Landroid/widget/TextView;

    .line 269
    .line 270
    iget-object v3, v15, Lcom/join/mgps/adapter/ForumBaseAdapter$r1$p;->d:Ljava/lang/String;

    .line 271
    .line 272
    iget-boolean v4, v15, Lcom/join/mgps/adapter/ForumBaseAdapter$r1$p;->b:Z

    .line 273
    .line 274
    iget-boolean v5, v15, Lcom/join/mgps/adapter/ForumBaseAdapter$r1$p;->g:Z

    .line 275
    .line 276
    iget-object v6, v15, Lcom/join/mgps/adapter/ForumBaseAdapter$r1$p;->h:Ljava/lang/String;

    .line 277
    .line 278
    iget-object v8, v15, Lcom/join/mgps/adapter/ForumBaseAdapter$r1$p;->j:Ljava/util/List;

    .line 279
    .line 280
    iget v9, v15, Lcom/join/mgps/adapter/ForumBaseAdapter$r1$p;->f:I

    .line 281
    .line 282
    iget-object v10, v15, Lcom/join/mgps/adapter/ForumBaseAdapter$r1$p;->k:Ljava/lang/String;

    .line 283
    .line 284
    iget v11, v15, Lcom/join/mgps/adapter/ForumBaseAdapter$r1$p;->l:I

    .line 285
    .line 286
    move-object/from16 v1, p0

    .line 287
    .line 288
    invoke-direct/range {v1 .. v11}, Lcom/join/mgps/adapter/ForumBaseAdapter;->y0(Landroid/widget/TextView;Ljava/lang/String;ZZLjava/lang/String;Ljava/util/List;Ljava/util/List;ILjava/lang/String;I)V

    .line 289
    .line 290
    .line 291
    iget v0, v15, Lcom/join/mgps/adapter/ForumBaseAdapter$r1$p;->e:I

    .line 292
    .line 293
    iget-object v1, v14, Lcom/join/mgps/adapter/ForumBaseAdapter$m1;->d:Landroid/widget/TextView;

    .line 294
    .line 295
    invoke-direct {v12, v1, v0}, Lcom/join/mgps/adapter/ForumBaseAdapter;->k0(Landroid/widget/TextView;I)V

    .line 296
    .line 297
    .line 298
    invoke-virtual {v12, v13, v0}, Lcom/join/mgps/adapter/ForumBaseAdapter;->R0(Landroid/view/View;I)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    .line 299
    .line 300
    .line 301
    goto :goto_5

    .line 302
    :cond_8
    :goto_3
    return-object v13

    .line 303
    :catch_0
    move-exception v0

    .line 304
    goto :goto_4

    .line 305
    :catch_1
    move-exception v0

    .line 306
    move-object v13, v2

    .line 307
    goto :goto_4

    .line 308
    :catch_2
    move-exception v0

    .line 309
    move-object/from16 v13, p2

    .line 310
    .line 311
    :goto_4
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 312
    .line 313
    .line 314
    :goto_5
    return-object v13
.end method

.method private X(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
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
    move-object/from16 v12, p0

    .line 2
    .line 3
    const-string v0, "#FFFF6464"

    .line 4
    .line 5
    const-string v1, "#FF8378FF"

    .line 6
    .line 7
    const/4 v2, 0x0

    .line 8
    if-eqz p2, :cond_1

    .line 9
    .line 10
    :try_start_0
    invoke-virtual/range {p2 .. p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    .line 11
    .line 12
    .line 13
    move-result-object v3

    .line 14
    instance-of v3, v3, Lcom/join/mgps/adapter/ForumBaseAdapter$m1;

    .line 15
    .line 16
    if-eqz v3, :cond_0

    .line 17
    .line 18
    invoke-virtual/range {p2 .. p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    .line 19
    .line 20
    .line 21
    move-result-object v2

    .line 22
    check-cast v2, Lcom/join/mgps/adapter/ForumBaseAdapter$m1;

    .line 23
    .line 24
    :cond_0
    move-object/from16 v13, p2

    .line 25
    .line 26
    move-object v14, v2

    .line 27
    goto :goto_0

    .line 28
    :cond_1
    new-instance v3, Lcom/join/mgps/adapter/ForumBaseAdapter$m1;

    .line 29
    .line 30
    invoke-direct {v3, v12}, Lcom/join/mgps/adapter/ForumBaseAdapter$m1;-><init>(Lcom/join/mgps/adapter/ForumBaseAdapter;)V

    .line 31
    .line 32
    .line 33
    iget-object v4, v12, Lcom/join/mgps/adapter/ForumBaseAdapter;->e:Landroid/content/Context;

    .line 34
    .line 35
    invoke-static {v4}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    .line 36
    .line 37
    .line 38
    move-result-object v4

    .line 39
    const v5, 0x7f0d0685

    .line 40
    .line 41
    .line 42
    invoke-virtual {v4, v5, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 43
    .line 44
    .line 45
    move-result-object v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2

    .line 46
    const v4, 0x7f0a01fe

    .line 47
    .line 48
    .line 49
    :try_start_1
    invoke-virtual {v2, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 50
    .line 51
    .line 52
    move-result-object v4

    .line 53
    check-cast v4, Landroid/widget/Button;

    .line 54
    .line 55
    iput-object v4, v3, Lcom/join/mgps/adapter/ForumBaseAdapter$m1;->c:Landroid/widget/Button;

    .line 56
    .line 57
    const v4, 0x7f0a1644

    .line 58
    .line 59
    .line 60
    invoke-virtual {v2, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 61
    .line 62
    .line 63
    move-result-object v4

    .line 64
    check-cast v4, Landroid/widget/TextView;

    .line 65
    .line 66
    iput-object v4, v3, Lcom/join/mgps/adapter/ForumBaseAdapter$m1;->d:Landroid/widget/TextView;

    .line 67
    .line 68
    const v4, 0x7f0a1645

    .line 69
    .line 70
    .line 71
    invoke-virtual {v2, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 72
    .line 73
    .line 74
    move-result-object v4

    .line 75
    iput-object v4, v3, Lcom/join/mgps/adapter/ForumBaseAdapter$m1;->f:Landroid/view/View;

    .line 76
    .line 77
    const v4, 0x7f0a06a1

    .line 78
    .line 79
    .line 80
    invoke-virtual {v2, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 81
    .line 82
    .line 83
    move-result-object v4

    .line 84
    iput-object v4, v3, Lcom/join/mgps/adapter/ForumBaseAdapter$m1;->e:Landroid/view/View;

    .line 85
    .line 86
    invoke-virtual {v2, v3}, Landroid/view/View;->setTag(Ljava/lang/Object;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 87
    .line 88
    .line 89
    move-object v13, v2

    .line 90
    move-object v14, v3

    .line 91
    :goto_0
    :try_start_2
    invoke-virtual/range {p0 .. p1}, Lcom/join/mgps/adapter/ForumBaseAdapter;->getItem(I)Ljava/lang/Object;

    .line 92
    .line 93
    .line 94
    move-result-object v2

    .line 95
    move-object v15, v2

    .line 96
    check-cast v15, Lcom/join/mgps/adapter/ForumBaseAdapter$r1$p;

    .line 97
    .line 98
    if-eqz v15, :cond_7

    .line 99
    .line 100
    if-nez v14, :cond_2

    .line 101
    .line 102
    goto/16 :goto_2

    .line 103
    .line 104
    :cond_2
    iget-boolean v2, v15, Lcom/join/mgps/adapter/ForumBaseAdapter$r1$p;->a:Z

    .line 105
    .line 106
    const/4 v3, 0x0

    .line 107
    if-eqz v2, :cond_3

    .line 108
    .line 109
    iget-object v2, v14, Lcom/join/mgps/adapter/ForumBaseAdapter$m1;->e:Landroid/view/View;

    .line 110
    .line 111
    invoke-virtual {v2, v3}, Landroid/view/View;->setVisibility(I)V

    .line 112
    .line 113
    .line 114
    goto :goto_1

    .line 115
    :cond_3
    iget-object v2, v14, Lcom/join/mgps/adapter/ForumBaseAdapter$m1;->e:Landroid/view/View;

    .line 116
    .line 117
    const/16 v4, 0x8

    .line 118
    .line 119
    invoke-virtual {v2, v4}, Landroid/view/View;->setVisibility(I)V

    .line 120
    .line 121
    .line 122
    :goto_1
    iget-object v2, v14, Lcom/join/mgps/adapter/ForumBaseAdapter$m1;->d:Landroid/widget/TextView;

    .line 123
    .line 124
    invoke-static {}, Landroid/text/method/LinkMovementMethod;->getInstance()Landroid/text/method/MovementMethod;

    .line 125
    .line 126
    .line 127
    move-result-object v4

    .line 128
    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setMovementMethod(Landroid/text/method/MovementMethod;)V

    .line 129
    .line 130
    .line 131
    new-instance v7, Ljava/util/ArrayList;

    .line 132
    .line 133
    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 134
    .line 135
    .line 136
    iget-boolean v2, v15, Lcom/join/mgps/adapter/ForumBaseAdapter$r1$p;->b:Z
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .line 137
    .line 138
    const-string v4, "#00FFFFFF"

    .line 139
    .line 140
    if-eqz v2, :cond_4

    .line 141
    .line 142
    :try_start_3
    new-instance v2, Lcom/join/mgps/dto/ForumBean$ForumPostsBean$TagInfo;

    .line 143
    .line 144
    invoke-direct {v2}, Lcom/join/mgps/dto/ForumBean$ForumPostsBean$TagInfo;-><init>()V

    .line 145
    .line 146
    .line 147
    const-string v5, "\u7cbe"

    .line 148
    .line 149
    invoke-virtual {v2, v5}, Lcom/join/mgps/dto/ForumBean$ForumPostsBean$TagInfo;->setName(Ljava/lang/String;)V

    .line 150
    .line 151
    .line 152
    const v5, 0x7f0808ae

    .line 153
    .line 154
    .line 155
    invoke-virtual {v2, v5}, Lcom/join/mgps/dto/ForumBean$ForumPostsBean$TagInfo;->setResId(I)V

    .line 156
    .line 157
    .line 158
    invoke-virtual {v2, v4}, Lcom/join/mgps/dto/ForumBean$ForumPostsBean$TagInfo;->setColor(Ljava/lang/String;)V

    .line 159
    .line 160
    .line 161
    invoke-virtual {v2, v1}, Lcom/join/mgps/dto/ForumBean$ForumPostsBean$TagInfo;->setFont_color(Ljava/lang/String;)V

    .line 162
    .line 163
    .line 164
    invoke-virtual {v2, v1}, Lcom/join/mgps/dto/ForumBean$ForumPostsBean$TagInfo;->setBorder_color(Ljava/lang/String;)V

    .line 165
    .line 166
    .line 167
    invoke-interface {v7, v3, v2}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 168
    .line 169
    .line 170
    :cond_4
    iget-boolean v1, v15, Lcom/join/mgps/adapter/ForumBaseAdapter$r1$p;->c:Z

    .line 171
    .line 172
    if-eqz v1, :cond_5

    .line 173
    .line 174
    new-instance v1, Lcom/join/mgps/dto/ForumBean$ForumPostsBean$TagInfo;

    .line 175
    .line 176
    invoke-direct {v1}, Lcom/join/mgps/dto/ForumBean$ForumPostsBean$TagInfo;-><init>()V

    .line 177
    .line 178
    .line 179
    const-string v2, "\u9876"

    .line 180
    .line 181
    invoke-virtual {v1, v2}, Lcom/join/mgps/dto/ForumBean$ForumPostsBean$TagInfo;->setName(Ljava/lang/String;)V

    .line 182
    .line 183
    .line 184
    const v2, 0x7f0808af

    .line 185
    .line 186
    .line 187
    invoke-virtual {v1, v2}, Lcom/join/mgps/dto/ForumBean$ForumPostsBean$TagInfo;->setResId(I)V

    .line 188
    .line 189
    .line 190
    invoke-virtual {v1, v4}, Lcom/join/mgps/dto/ForumBean$ForumPostsBean$TagInfo;->setColor(Ljava/lang/String;)V

    .line 191
    .line 192
    .line 193
    invoke-virtual {v1, v0}, Lcom/join/mgps/dto/ForumBean$ForumPostsBean$TagInfo;->setFont_color(Ljava/lang/String;)V

    .line 194
    .line 195
    .line 196
    invoke-virtual {v1, v0}, Lcom/join/mgps/dto/ForumBean$ForumPostsBean$TagInfo;->setBorder_color(Ljava/lang/String;)V

    .line 197
    .line 198
    .line 199
    invoke-interface {v7, v3, v1}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 200
    .line 201
    .line 202
    :cond_5
    iget-object v0, v15, Lcom/join/mgps/adapter/ForumBaseAdapter$r1$p;->i:Ljava/util/List;

    .line 203
    .line 204
    if-eqz v0, :cond_6

    .line 205
    .line 206
    invoke-interface {v7, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 207
    .line 208
    .line 209
    :cond_6
    iget-object v2, v14, Lcom/join/mgps/adapter/ForumBaseAdapter$m1;->d:Landroid/widget/TextView;

    .line 210
    .line 211
    iget-object v3, v15, Lcom/join/mgps/adapter/ForumBaseAdapter$r1$p;->d:Ljava/lang/String;

    .line 212
    .line 213
    iget-boolean v4, v15, Lcom/join/mgps/adapter/ForumBaseAdapter$r1$p;->b:Z

    .line 214
    .line 215
    iget-boolean v5, v15, Lcom/join/mgps/adapter/ForumBaseAdapter$r1$p;->g:Z

    .line 216
    .line 217
    iget-object v6, v15, Lcom/join/mgps/adapter/ForumBaseAdapter$r1$p;->h:Ljava/lang/String;

    .line 218
    .line 219
    iget-object v8, v15, Lcom/join/mgps/adapter/ForumBaseAdapter$r1$p;->j:Ljava/util/List;

    .line 220
    .line 221
    iget v9, v15, Lcom/join/mgps/adapter/ForumBaseAdapter$r1$p;->f:I

    .line 222
    .line 223
    iget-object v10, v15, Lcom/join/mgps/adapter/ForumBaseAdapter$r1$p;->k:Ljava/lang/String;

    .line 224
    .line 225
    iget v11, v15, Lcom/join/mgps/adapter/ForumBaseAdapter$r1$p;->l:I

    .line 226
    .line 227
    move-object/from16 v1, p0

    .line 228
    .line 229
    invoke-direct/range {v1 .. v11}, Lcom/join/mgps/adapter/ForumBaseAdapter;->y0(Landroid/widget/TextView;Ljava/lang/String;ZZLjava/lang/String;Ljava/util/List;Ljava/util/List;ILjava/lang/String;I)V

    .line 230
    .line 231
    .line 232
    iget v0, v15, Lcom/join/mgps/adapter/ForumBaseAdapter$r1$p;->e:I

    .line 233
    .line 234
    iget-object v1, v14, Lcom/join/mgps/adapter/ForumBaseAdapter$m1;->d:Landroid/widget/TextView;

    .line 235
    .line 236
    invoke-direct {v12, v1, v0}, Lcom/join/mgps/adapter/ForumBaseAdapter;->k0(Landroid/widget/TextView;I)V

    .line 237
    .line 238
    .line 239
    invoke-virtual {v12, v13, v0}, Lcom/join/mgps/adapter/ForumBaseAdapter;->R0(Landroid/view/View;I)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    .line 240
    .line 241
    .line 242
    goto :goto_4

    .line 243
    :cond_7
    :goto_2
    return-object v13

    .line 244
    :catch_0
    move-exception v0

    .line 245
    goto :goto_3

    .line 246
    :catch_1
    move-exception v0

    .line 247
    move-object v13, v2

    .line 248
    goto :goto_3

    .line 249
    :catch_2
    move-exception v0

    .line 250
    move-object/from16 v13, p2

    .line 251
    .line 252
    :goto_3
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 253
    .line 254
    .line 255
    :goto_4
    return-object v13
.end method

.method private Y(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
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
    check-cast p3, Lcom/join/mgps/adapter/ForumBaseAdapter$n1;

    .line 8
    .line 9
    goto :goto_0

    .line 10
    :cond_0
    new-instance p3, Lcom/join/mgps/adapter/ForumBaseAdapter$n1;

    .line 11
    .line 12
    invoke-direct {p3, p0}, Lcom/join/mgps/adapter/ForumBaseAdapter$n1;-><init>(Lcom/join/mgps/adapter/ForumBaseAdapter;)V

    .line 13
    .line 14
    .line 15
    iget-object p2, p0, Lcom/join/mgps/adapter/ForumBaseAdapter;->e:Landroid/content/Context;

    .line 16
    .line 17
    invoke-static {p2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    .line 18
    .line 19
    .line 20
    move-result-object p2

    .line 21
    const v0, 0x7f0d06f0

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
    const v0, 0x7f0a069f

    .line 30
    .line 31
    .line 32
    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 33
    .line 34
    .line 35
    move-result-object v0

    .line 36
    check-cast v0, Landroid/widget/Button;

    .line 37
    .line 38
    iput-object v0, p3, Lcom/join/mgps/adapter/ForumBaseAdapter$n1;->b:Landroid/widget/Button;

    .line 39
    .line 40
    const v0, 0x7f0a06af

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
    iput-object v0, p3, Lcom/join/mgps/adapter/ForumBaseAdapter$n1;->c:Landroid/widget/TextView;

    .line 50
    .line 51
    invoke-virtual {p2, p3}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 52
    .line 53
    .line 54
    :goto_0
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/join/mgps/adapter/ForumBaseAdapter;->getItem(I)Ljava/lang/Object;

    .line 55
    .line 56
    .line 57
    move-result-object p1

    .line 58
    check-cast p1, Lcom/join/mgps/adapter/ForumBaseAdapter$r1$a0;

    .line 59
    .line 60
    if-nez p1, :cond_1

    .line 61
    .line 62
    return-object p2

    .line 63
    :cond_1
    iget-object v1, p3, Lcom/join/mgps/adapter/ForumBaseAdapter$n1;->c:Landroid/widget/TextView;

    .line 64
    .line 65
    iget-object v2, p1, Lcom/join/mgps/adapter/ForumBaseAdapter$r1$a0;->b:Ljava/lang/String;

    .line 66
    .line 67
    iget-boolean v3, p1, Lcom/join/mgps/adapter/ForumBaseAdapter$r1$a0;->a:Z

    .line 68
    .line 69
    iget-boolean v4, p1, Lcom/join/mgps/adapter/ForumBaseAdapter$r1$a0;->e:Z

    .line 70
    .line 71
    iget-object v5, p1, Lcom/join/mgps/adapter/ForumBaseAdapter$r1$a0;->f:Ljava/lang/String;

    .line 72
    .line 73
    iget-object v6, p1, Lcom/join/mgps/adapter/ForumBaseAdapter$r1$a0;->g:Ljava/util/List;

    .line 74
    .line 75
    move-object v0, p0

    .line 76
    invoke-direct/range {v0 .. v6}, Lcom/join/mgps/adapter/ForumBaseAdapter;->x0(Landroid/widget/TextView;Ljava/lang/String;ZZLjava/lang/String;Ljava/util/List;)V

    .line 77
    .line 78
    .line 79
    iget p1, p1, Lcom/join/mgps/adapter/ForumBaseAdapter$r1$a0;->c:I

    .line 80
    .line 81
    invoke-virtual {p0, p2, p1}, Lcom/join/mgps/adapter/ForumBaseAdapter;->R0(Landroid/view/View;I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 82
    .line 83
    .line 84
    goto :goto_1

    .line 85
    :catch_0
    move-exception p1

    .line 86
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 87
    .line 88
    .line 89
    :goto_1
    return-object p2
.end method

.method private Z(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
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
    check-cast p3, Lcom/join/mgps/adapter/ForumBaseAdapter$k0;

    .line 8
    .line 9
    goto :goto_0

    .line 10
    :cond_0
    new-instance p3, Lcom/join/mgps/adapter/ForumBaseAdapter$k0;

    .line 11
    .line 12
    invoke-direct {p3, p0}, Lcom/join/mgps/adapter/ForumBaseAdapter$k0;-><init>(Lcom/join/mgps/adapter/ForumBaseAdapter;)V

    .line 13
    .line 14
    .line 15
    iget-object v0, p0, Lcom/join/mgps/adapter/ForumBaseAdapter;->e:Landroid/content/Context;

    .line 16
    .line 17
    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    .line 18
    .line 19
    .line 20
    move-result-object v0

    .line 21
    const v1, 0x7f0d0694

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
    const v0, 0x7f0a06af

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
    iput-object v0, p3, Lcom/join/mgps/adapter/ForumBaseAdapter$k0;->b:Landroid/widget/TextView;

    .line 39
    .line 40
    const v0, 0x7f0a06ae

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
    iput-object v0, p3, Lcom/join/mgps/adapter/ForumBaseAdapter$k0;->c:Landroid/widget/TextView;

    .line 50
    .line 51
    const v0, 0x7f0a069f

    .line 52
    .line 53
    .line 54
    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 55
    .line 56
    .line 57
    move-result-object v0

    .line 58
    check-cast v0, Landroid/widget/Button;

    .line 59
    .line 60
    iput-object v0, p3, Lcom/join/mgps/adapter/ForumBaseAdapter$k0;->d:Landroid/widget/Button;

    .line 61
    .line 62
    const v0, 0x7f0a06a9

    .line 63
    .line 64
    .line 65
    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 66
    .line 67
    .line 68
    move-result-object v0

    .line 69
    check-cast v0, Landroid/widget/ImageView;

    .line 70
    .line 71
    iput-object v0, p3, Lcom/join/mgps/adapter/ForumBaseAdapter$k0;->e:Landroid/widget/ImageView;

    .line 72
    .line 73
    const v0, 0x7f0a06b0

    .line 74
    .line 75
    .line 76
    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 77
    .line 78
    .line 79
    move-result-object v0

    .line 80
    check-cast v0, Landroid/widget/ImageView;

    .line 81
    .line 82
    iput-object v0, p3, Lcom/join/mgps/adapter/ForumBaseAdapter$k0;->f:Landroid/widget/ImageView;

    .line 83
    .line 84
    invoke-virtual {p2, p3}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 85
    .line 86
    .line 87
    :goto_0
    invoke-virtual {p0, p1}, Lcom/join/mgps/adapter/ForumBaseAdapter;->getItem(I)Ljava/lang/Object;

    .line 88
    .line 89
    .line 90
    move-result-object p1

    .line 91
    check-cast p1, Lcom/join/mgps/adapter/ForumBaseAdapter$r1$b0;

    .line 92
    .line 93
    if-nez p1, :cond_1

    .line 94
    .line 95
    return-object p2

    .line 96
    :cond_1
    iget-object v0, p1, Lcom/join/mgps/adapter/ForumBaseAdapter$r1$b0;->b:Ljava/lang/String;

    .line 97
    .line 98
    invoke-static {v0}, Lcom/join/mgps/Util/t2;->h(Ljava/lang/String;)Z

    .line 99
    .line 100
    .line 101
    move-result v0

    .line 102
    const/16 v1, 0x8

    .line 103
    .line 104
    const/4 v2, 0x0

    .line 105
    if-eqz v0, :cond_2

    .line 106
    .line 107
    iget-object v0, p3, Lcom/join/mgps/adapter/ForumBaseAdapter$k0;->b:Landroid/widget/TextView;

    .line 108
    .line 109
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 110
    .line 111
    .line 112
    goto :goto_1

    .line 113
    :cond_2
    iget-object v0, p3, Lcom/join/mgps/adapter/ForumBaseAdapter$k0;->b:Landroid/widget/TextView;

    .line 114
    .line 115
    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 116
    .line 117
    .line 118
    iget-object v0, p3, Lcom/join/mgps/adapter/ForumBaseAdapter$k0;->b:Landroid/widget/TextView;

    .line 119
    .line 120
    iget-object v3, p1, Lcom/join/mgps/adapter/ForumBaseAdapter$r1$b0;->b:Ljava/lang/String;

    .line 121
    .line 122
    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 123
    .line 124
    .line 125
    :goto_1
    :try_start_1
    iget-object v0, p3, Lcom/join/mgps/adapter/ForumBaseAdapter$k0;->c:Landroid/widget/TextView;

    .line 126
    .line 127
    const v3, 0x7f0812fa

    .line 128
    .line 129
    .line 130
    if-eqz v0, :cond_6

    .line 131
    .line 132
    invoke-static {p1}, Lcom/join/mgps/adapter/ForumBaseAdapter$r1$b0;->a(Lcom/join/mgps/adapter/ForumBaseAdapter$r1$b0;)Ljava/util/List;

    .line 133
    .line 134
    .line 135
    move-result-object v0

    .line 136
    if-eqz v0, :cond_6

    .line 137
    .line 138
    invoke-static {p1}, Lcom/join/mgps/adapter/ForumBaseAdapter$r1$b0;->a(Lcom/join/mgps/adapter/ForumBaseAdapter$r1$b0;)Ljava/util/List;

    .line 139
    .line 140
    .line 141
    move-result-object v0

    .line 142
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 143
    .line 144
    .line 145
    move-result v0

    .line 146
    if-eqz v0, :cond_6

    .line 147
    .line 148
    iget-object v0, p3, Lcom/join/mgps/adapter/ForumBaseAdapter$k0;->c:Landroid/widget/TextView;

    .line 149
    .line 150
    invoke-virtual {v0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    .line 151
    .line 152
    .line 153
    iget-object v0, p3, Lcom/join/mgps/adapter/ForumBaseAdapter$k0;->c:Landroid/widget/TextView;

    .line 154
    .line 155
    invoke-virtual {v0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    .line 156
    .line 157
    .line 158
    move-result-object v0

    .line 159
    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    .line 160
    .line 161
    .line 162
    move-result-object v0

    .line 163
    invoke-static {p1}, Lcom/join/mgps/adapter/ForumBaseAdapter$r1$b0;->a(Lcom/join/mgps/adapter/ForumBaseAdapter$r1$b0;)Ljava/util/List;

    .line 164
    .line 165
    .line 166
    move-result-object v4

    .line 167
    invoke-interface {v4, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 168
    .line 169
    .line 170
    move-result-object v4

    .line 171
    check-cast v4, Lcom/join/mgps/dto/ForumBean$ForumPostsBean$TagInfo;

    .line 172
    .line 173
    invoke-virtual {v4}, Lcom/join/mgps/dto/ForumBean$ForumPostsBean$TagInfo;->getId()Ljava/lang/String;

    .line 174
    .line 175
    .line 176
    move-result-object v5

    .line 177
    invoke-static {v5}, Lcom/join/mgps/Util/t2;->i(Ljava/lang/String;)Z

    .line 178
    .line 179
    .line 180
    move-result v5

    .line 181
    const/4 v6, 0x1

    .line 182
    if-eqz v5, :cond_3

    .line 183
    .line 184
    invoke-virtual {v4}, Lcom/join/mgps/dto/ForumBean$ForumPostsBean$TagInfo;->getId()Ljava/lang/String;

    .line 185
    .line 186
    .line 187
    move-result-object v5

    .line 188
    const-string v7, "1"

    .line 189
    .line 190
    invoke-virtual {v5, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 191
    .line 192
    .line 193
    move-result v5

    .line 194
    if-eqz v5, :cond_3

    .line 195
    .line 196
    const/4 v5, 0x1

    .line 197
    goto :goto_2

    .line 198
    :cond_3
    const/4 v5, 0x0

    .line 199
    :goto_2
    if-eqz v5, :cond_5

    .line 200
    .line 201
    iget-object v3, p3, Lcom/join/mgps/adapter/ForumBaseAdapter$k0;->c:Landroid/widget/TextView;

    .line 202
    .line 203
    invoke-virtual {v4}, Lcom/join/mgps/dto/ForumBean$ForumPostsBean$TagInfo;->getName()Ljava/lang/String;

    .line 204
    .line 205
    .line 206
    move-result-object v5

    .line 207
    invoke-virtual {v3, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 208
    .line 209
    .line 210
    iget-object v3, p3, Lcom/join/mgps/adapter/ForumBaseAdapter$k0;->c:Landroid/widget/TextView;

    .line 211
    .line 212
    invoke-virtual {v4}, Lcom/join/mgps/dto/ForumBean$ForumPostsBean$TagInfo;->getFont_color()Ljava/lang/String;

    .line 213
    .line 214
    .line 215
    move-result-object v5

    .line 216
    invoke-static {v5}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    .line 217
    .line 218
    .line 219
    move-result v5

    .line 220
    invoke-virtual {v3, v5}, Landroid/widget/TextView;->setTextColor(I)V

    .line 221
    .line 222
    .line 223
    new-instance v3, Landroid/graphics/drawable/ColorDrawable;

    .line 224
    .line 225
    invoke-virtual {v4}, Lcom/join/mgps/dto/ForumBean$ForumPostsBean$TagInfo;->getColor()Ljava/lang/String;

    .line 226
    .line 227
    .line 228
    move-result-object v5

    .line 229
    invoke-static {v5}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    .line 230
    .line 231
    .line 232
    move-result v5

    .line 233
    invoke-direct {v3, v5}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    .line 234
    .line 235
    .line 236
    invoke-static {v3}, Lcom/join/mgps/customview/l0;->c(Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    .line 237
    .line 238
    .line 239
    move-result-object v3

    .line 240
    if-eqz v3, :cond_4

    .line 241
    .line 242
    instance-of v5, v3, Lcom/join/mgps/customview/l0;

    .line 243
    .line 244
    if-eqz v5, :cond_4

    .line 245
    .line 246
    move-object v5, v3

    .line 247
    check-cast v5, Lcom/join/mgps/customview/l0;

    .line 248
    .line 249
    invoke-virtual {v4}, Lcom/join/mgps/dto/ForumBean$ForumPostsBean$TagInfo;->getBorder_color()Ljava/lang/String;

    .line 250
    .line 251
    .line 252
    move-result-object v4

    .line 253
    invoke-static {v4}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    .line 254
    .line 255
    .line 256
    move-result v4

    .line 257
    invoke-virtual {v5, v4}, Lcom/join/mgps/customview/l0;->l(I)Lcom/join/mgps/customview/l0;

    .line 258
    .line 259
    .line 260
    move-object v4, v3

    .line 261
    check-cast v4, Lcom/join/mgps/customview/l0;

    .line 262
    .line 263
    const/high16 v5, 0x3f800000    # 1.0f

    .line 264
    .line 265
    invoke-static {v6, v5, v0}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    .line 266
    .line 267
    .line 268
    move-result v0

    .line 269
    invoke-virtual {v4, v0}, Lcom/join/mgps/customview/l0;->n(F)Lcom/join/mgps/customview/l0;

    .line 270
    .line 271
    .line 272
    move-object v0, v3

    .line 273
    check-cast v0, Lcom/join/mgps/customview/l0;

    .line 274
    .line 275
    const v4, 0x3f99999a    # 1.2f

    .line 276
    .line 277
    .line 278
    invoke-virtual {v0, v4}, Lcom/join/mgps/customview/l0;->o(F)Lcom/join/mgps/customview/l0;

    .line 279
    .line 280
    .line 281
    move-object v0, v3

    .line 282
    check-cast v0, Lcom/join/mgps/customview/l0;

    .line 283
    .line 284
    sget-object v4, Landroid/widget/ImageView$ScaleType;->FIT_XY:Landroid/widget/ImageView$ScaleType;

    .line 285
    .line 286
    invoke-virtual {v0, v4}, Lcom/join/mgps/customview/l0;->q(Landroid/widget/ImageView$ScaleType;)Lcom/join/mgps/customview/l0;

    .line 287
    .line 288
    .line 289
    :cond_4
    iget-object v0, p3, Lcom/join/mgps/adapter/ForumBaseAdapter$k0;->c:Landroid/widget/TextView;

    .line 290
    .line 291
    invoke-virtual {v0, v3}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 292
    .line 293
    .line 294
    goto :goto_3

    .line 295
    :cond_5
    iget-object v0, p3, Lcom/join/mgps/adapter/ForumBaseAdapter$k0;->c:Landroid/widget/TextView;

    .line 296
    .line 297
    invoke-virtual {v0, v3}, Landroid/view/View;->setBackgroundResource(I)V

    .line 298
    .line 299
    .line 300
    goto :goto_3

    .line 301
    :cond_6
    iget-object v0, p3, Lcom/join/mgps/adapter/ForumBaseAdapter$k0;->c:Landroid/widget/TextView;

    .line 302
    .line 303
    invoke-virtual {v0, v3}, Landroid/view/View;->setBackgroundResource(I)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 304
    .line 305
    .line 306
    goto :goto_3

    .line 307
    :catch_0
    move-exception v0

    .line 308
    :try_start_2
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 309
    .line 310
    .line 311
    :goto_3
    iget-boolean v0, p1, Lcom/join/mgps/adapter/ForumBaseAdapter$r1$b0;->c:Z

    .line 312
    .line 313
    if-eqz v0, :cond_7

    .line 314
    .line 315
    iget-object v0, p3, Lcom/join/mgps/adapter/ForumBaseAdapter$k0;->d:Landroid/widget/Button;

    .line 316
    .line 317
    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 318
    .line 319
    .line 320
    goto :goto_4

    .line 321
    :cond_7
    iget-object v0, p3, Lcom/join/mgps/adapter/ForumBaseAdapter$k0;->d:Landroid/widget/Button;

    .line 322
    .line 323
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 324
    .line 325
    .line 326
    :goto_4
    iget-object v0, p3, Lcom/join/mgps/adapter/ForumBaseAdapter$k0;->e:Landroid/widget/ImageView;

    .line 327
    .line 328
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 329
    .line 330
    .line 331
    iget-object p3, p3, Lcom/join/mgps/adapter/ForumBaseAdapter$k0;->f:Landroid/widget/ImageView;

    .line 332
    .line 333
    invoke-virtual {p3, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 334
    .line 335
    .line 336
    iget p1, p1, Lcom/join/mgps/adapter/ForumBaseAdapter$r1$b0;->a:I

    .line 337
    .line 338
    new-instance p3, Lcom/join/mgps/adapter/ForumBaseAdapter$v;

    .line 339
    .line 340
    invoke-direct {p3, p0, p1}, Lcom/join/mgps/adapter/ForumBaseAdapter$v;-><init>(Lcom/join/mgps/adapter/ForumBaseAdapter;I)V

    .line 341
    .line 342
    .line 343
    invoke-virtual {p2, p3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    .line 344
    .line 345
    .line 346
    goto :goto_5

    .line 347
    :catch_1
    move-exception p1

    .line 348
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 349
    .line 350
    .line 351
    :goto_5
    return-object p2
.end method

.method public static synthetic a(Lcom/join/mgps/adapter/ForumBaseAdapter;Lcom/join/mgps/adapter/ForumBaseAdapter$r1$w;Landroid/view/View;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/join/mgps/adapter/ForumBaseAdapter;->n0(Lcom/join/mgps/adapter/ForumBaseAdapter$r1$w;Landroid/view/View;)V

    return-void
.end method

.method private a0(Landroid/content/Context;)I
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
    if-nez p1, :cond_0

    .line 2
    .line 3
    const/4 p1, 0x0

    .line 4
    return p1

    .line 5
    :cond_0
    iget v0, p0, Lcom/join/mgps/adapter/ForumBaseAdapter;->m:I

    .line 6
    .line 7
    if-nez v0, :cond_1

    .line 8
    .line 9
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 10
    .line 11
    .line 12
    move-result-object p1

    .line 13
    invoke-virtual {p1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    iget v0, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    .line 18
    .line 19
    const v1, 0x7f070ed4

    .line 20
    .line 21
    .line 22
    invoke-virtual {p1, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    .line 23
    .line 24
    .line 25
    move-result p1

    .line 26
    mul-int/lit8 p1, p1, 0x2

    .line 27
    .line 28
    sub-int/2addr v0, p1

    .line 29
    const/high16 p1, 0x3f800000    # 1.0f

    .line 30
    .line 31
    int-to-float v0, v0

    .line 32
    mul-float v0, v0, p1

    .line 33
    .line 34
    const p1, 0x3fe66666    # 1.8f

    .line 35
    .line 36
    .line 37
    div-float/2addr v0, p1

    .line 38
    float-to-int p1, v0

    .line 39
    iput p1, p0, Lcom/join/mgps/adapter/ForumBaseAdapter;->m:I

    .line 40
    .line 41
    :cond_1
    iget p1, p0, Lcom/join/mgps/adapter/ForumBaseAdapter;->m:I

    .line 42
    .line 43
    return p1
.end method

.method private a1(Ljava/lang/String;Landroid/view/View;Lcom/facebook/imagepipeline/image/g;)Landroid/view/ViewGroup$LayoutParams;
    .locals 7
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x10,
            0x0
        }
        names = {
            "s",
            "view",
            "imageInfo"
        }
    .end annotation

    .line 1
    if-eqz p3, :cond_0

    .line 2
    .line 3
    invoke-interface {p3}, Lcom/facebook/imagepipeline/image/g;->getWidth()I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    invoke-interface {p3}, Lcom/facebook/imagepipeline/image/g;->getHeight()I

    .line 8
    .line 9
    .line 10
    move-result p3

    .line 11
    invoke-virtual {p2}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 12
    .line 13
    .line 14
    move-result-object v1

    .line 15
    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 16
    .line 17
    .line 18
    move-result-object v1

    .line 19
    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    .line 20
    .line 21
    .line 22
    move-result-object v2

    .line 23
    iget v2, v2, Landroid/util/DisplayMetrics;->widthPixels:I

    .line 24
    .line 25
    const v3, 0x7f070ed4

    .line 26
    .line 27
    .line 28
    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    .line 29
    .line 30
    .line 31
    move-result v1

    .line 32
    mul-int/lit8 v1, v1, 0x2

    .line 33
    .line 34
    sub-int/2addr v2, v1

    .line 35
    int-to-float v1, v2

    .line 36
    const/high16 v3, 0x3f800000    # 1.0f

    .line 37
    .line 38
    mul-float v1, v1, v3

    .line 39
    .line 40
    int-to-float v4, p3

    .line 41
    mul-float v4, v4, v3

    .line 42
    .line 43
    int-to-float v3, v0

    .line 44
    div-float/2addr v4, v3

    .line 45
    mul-float v1, v1, v4

    .line 46
    .line 47
    float-to-int v1, v1

    .line 48
    invoke-virtual {p2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 49
    .line 50
    .line 51
    move-result-object v3

    .line 52
    iput v2, v3, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 53
    .line 54
    iput v1, v3, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 55
    .line 56
    new-instance v5, Ljava/lang/StringBuilder;

    .line 57
    .line 58
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 59
    .line 60
    .line 61
    const-string v6, "setPostImageParam-->rawHeight="

    .line 62
    .line 63
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 64
    .line 65
    .line 66
    invoke-virtual {v5, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 67
    .line 68
    .line 69
    const-string p3, " rawWidth="

    .line 70
    .line 71
    invoke-virtual {v5, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 72
    .line 73
    .line 74
    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 75
    .line 76
    .line 77
    const-string p3, " ratio="

    .line 78
    .line 79
    invoke-virtual {v5, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 80
    .line 81
    .line 82
    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 83
    .line 84
    .line 85
    const-string p3, " itemHeight="

    .line 86
    .line 87
    invoke-virtual {v5, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 88
    .line 89
    .line 90
    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 91
    .line 92
    .line 93
    const-string p3, " itemWidth="

    .line 94
    .line 95
    invoke-virtual {v5, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 96
    .line 97
    .line 98
    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 99
    .line 100
    .line 101
    const-string p3, "\n"

    .line 102
    .line 103
    invoke-virtual {v5, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 104
    .line 105
    .line 106
    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 107
    .line 108
    .line 109
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 110
    .line 111
    .line 112
    move-result-object p1

    .line 113
    filled-new-array {p1}, [Ljava/lang/String;

    .line 114
    .line 115
    .line 116
    move-result-object p1

    .line 117
    invoke-static {p1}, Lcom/join/mgps/Util/h1;->e([Ljava/lang/String;)V

    .line 118
    .line 119
    .line 120
    const/4 p1, 0x0

    .line 121
    invoke-virtual {p2, p1}, Landroid/view/View;->setMinimumHeight(I)V

    .line 122
    .line 123
    .line 124
    invoke-virtual {p2, v3}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 125
    .line 126
    .line 127
    return-object v3

    .line 128
    :cond_0
    const/4 p1, 0x0

    .line 129
    return-object p1
.end method

.method static synthetic b(Lcom/join/mgps/adapter/ForumBaseAdapter;)Lcom/join/mgps/adapter/ForumBaseAdapter$t0;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/join/mgps/adapter/ForumBaseAdapter;->o:Lcom/join/mgps/adapter/ForumBaseAdapter$t0;

    .line 2
    .line 3
    return-object p0
.end method

.method private b0(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 5
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
    if-eqz p2, :cond_0

    .line 2
    .line 3
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object p3

    .line 7
    check-cast p3, Lcom/join/mgps/adapter/ForumBaseAdapter$o1;

    .line 8
    .line 9
    goto :goto_0

    .line 10
    :cond_0
    new-instance p3, Lcom/join/mgps/adapter/ForumBaseAdapter$o1;

    .line 11
    .line 12
    invoke-direct {p3, p0}, Lcom/join/mgps/adapter/ForumBaseAdapter$o1;-><init>(Lcom/join/mgps/adapter/ForumBaseAdapter;)V

    .line 13
    .line 14
    .line 15
    iget-object p2, p0, Lcom/join/mgps/adapter/ForumBaseAdapter;->e:Landroid/content/Context;

    .line 16
    .line 17
    invoke-static {p2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    .line 18
    .line 19
    .line 20
    move-result-object p2

    .line 21
    const v0, 0x7f0d06c1

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
    const v0, 0x7f0a1b63

    .line 30
    .line 31
    .line 32
    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 33
    .line 34
    .line 35
    move-result-object v0

    .line 36
    check-cast v0, Landroid/widget/FrameLayout;

    .line 37
    .line 38
    iput-object v0, p3, Lcom/join/mgps/adapter/ForumBaseAdapter$o1;->c:Landroid/widget/FrameLayout;

    .line 39
    .line 40
    const v0, 0x7f0a015d

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
    iput-object v0, p3, Lcom/join/mgps/adapter/ForumBaseAdapter$o1;->b:Lcom/facebook/drawee/view/SimpleDraweeView;

    .line 50
    .line 51
    invoke-virtual {p2, p3}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 52
    .line 53
    .line 54
    :goto_0
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/join/mgps/adapter/ForumBaseAdapter;->getItem(I)Ljava/lang/Object;

    .line 55
    .line 56
    .line 57
    move-result-object v0

    .line 58
    check-cast v0, Lcom/join/mgps/adapter/ForumBaseAdapter$r1$c0;

    .line 59
    .line 60
    if-nez v0, :cond_1

    .line 61
    .line 62
    return-object p2

    .line 63
    :cond_1
    iget-object v1, p0, Lcom/join/mgps/adapter/ForumBaseAdapter;->e:Landroid/content/Context;

    .line 64
    .line 65
    invoke-direct {p0, v1}, Lcom/join/mgps/adapter/ForumBaseAdapter;->a0(Landroid/content/Context;)I

    .line 66
    .line 67
    .line 68
    move-result v1

    .line 69
    iget-object v2, v0, Lcom/join/mgps/adapter/ForumBaseAdapter$r1$c0;->b:Ljava/lang/String;

    .line 70
    .line 71
    iget-object v0, v0, Lcom/join/mgps/adapter/ForumBaseAdapter$r1$c0;->a:Ljava/lang/String;

    .line 72
    .line 73
    iget-object v3, p3, Lcom/join/mgps/adapter/ForumBaseAdapter$o1;->c:Landroid/widget/FrameLayout;

    .line 74
    .line 75
    if-eqz v3, :cond_3

    .line 76
    .line 77
    new-instance v3, Landroid/widget/RelativeLayout$LayoutParams;

    .line 78
    .line 79
    const/4 v4, -0x1

    .line 80
    invoke-direct {v3, v4, v1}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 81
    .line 82
    .line 83
    iget-object v1, p3, Lcom/join/mgps/adapter/ForumBaseAdapter$o1;->c:Landroid/widget/FrameLayout;

    .line 84
    .line 85
    invoke-virtual {v1, v3}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 86
    .line 87
    .line 88
    iget-object v1, p3, Lcom/join/mgps/adapter/ForumBaseAdapter$o1;->b:Lcom/facebook/drawee/view/SimpleDraweeView;

    .line 89
    .line 90
    const v3, 0x7f081349

    .line 91
    .line 92
    .line 93
    invoke-static {v1, v3, v0}, Lcom/join/android/app/common/utils/l;->d(Lcom/facebook/drawee/view/SimpleDraweeView;ILjava/lang/String;)V

    .line 94
    .line 95
    .line 96
    add-int/lit8 p1, p1, 0x1

    .line 97
    .line 98
    iget-object v1, p3, Lcom/join/mgps/adapter/ForumBaseAdapter$o1;->b:Lcom/facebook/drawee/view/SimpleDraweeView;

    .line 99
    .line 100
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 101
    .line 102
    .line 103
    move-result-object v3

    .line 104
    invoke-virtual {v1, v3}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 105
    .line 106
    .line 107
    invoke-static {v2}, Lcom/join/mgps/Util/t2;->i(Ljava/lang/String;)Z

    .line 108
    .line 109
    .line 110
    move-result v1

    .line 111
    if-eqz v1, :cond_2

    .line 112
    .line 113
    new-instance v1, Lcom/join/android/app/component/video/c$l;

    .line 114
    .line 115
    invoke-direct {v1, p1, v2, v0}, Lcom/join/android/app/component/video/c$l;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    .line 116
    .line 117
    .line 118
    iget-object v0, p0, Lcom/join/mgps/adapter/ForumBaseAdapter;->g:Lcom/join/android/app/component/video/c;

    .line 119
    .line 120
    const/4 v2, 0x0

    .line 121
    new-array v2, v2, [Z

    .line 122
    .line 123
    invoke-virtual {v0, p1, v1, v2}, Lcom/join/android/app/component/video/c;->d(ILcom/join/android/app/component/video/c$l;[Z)V

    .line 124
    .line 125
    .line 126
    :cond_2
    iget-object p3, p3, Lcom/join/mgps/adapter/ForumBaseAdapter$o1;->b:Lcom/facebook/drawee/view/SimpleDraweeView;

    .line 127
    .line 128
    new-instance v0, Lcom/join/mgps/adapter/ForumBaseAdapter$d0;

    .line 129
    .line 130
    invoke-direct {v0, p0, p1}, Lcom/join/mgps/adapter/ForumBaseAdapter$d0;-><init>(Lcom/join/mgps/adapter/ForumBaseAdapter;I)V

    .line 131
    .line 132
    .line 133
    invoke-virtual {p3, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 134
    .line 135
    .line 136
    goto :goto_1

    .line 137
    :catch_0
    move-exception p1

    .line 138
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 139
    .line 140
    .line 141
    :cond_3
    :goto_1
    return-object p2
.end method

.method static synthetic c(Lcom/join/mgps/adapter/ForumBaseAdapter;)Lw6/f;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/join/mgps/adapter/ForumBaseAdapter;->i:Lw6/f;

    .line 2
    .line 3
    return-object p0
.end method

.method private c1(Landroid/view/View;Ljava/lang/CharSequence;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "v",
            "text"
        }
    .end annotation

    .line 1
    if-nez p1, :cond_0

    .line 2
    .line 3
    return-void

    .line 4
    :cond_0
    instance-of v0, p1, Landroid/widget/TextView;

    .line 5
    .line 6
    if-eqz v0, :cond_1

    .line 7
    .line 8
    check-cast p1, Landroid/widget/TextView;

    .line 9
    .line 10
    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 11
    .line 12
    .line 13
    goto :goto_0

    .line 14
    :cond_1
    instance-of v0, p1, Landroid/widget/Button;

    .line 15
    .line 16
    if-eqz v0, :cond_2

    .line 17
    .line 18
    check-cast p1, Landroid/widget/Button;

    .line 19
    .line 20
    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 21
    .line 22
    .line 23
    :cond_2
    :goto_0
    return-void
.end method

.method static synthetic d(Lcom/join/mgps/adapter/ForumBaseAdapter;Ljava/lang/String;Landroid/view/View;Lcom/facebook/imagepipeline/image/g;)Landroid/view/ViewGroup$LayoutParams;
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2, p3}, Lcom/join/mgps/adapter/ForumBaseAdapter;->a1(Ljava/lang/String;Landroid/view/View;Lcom/facebook/imagepipeline/image/g;)Landroid/view/ViewGroup$LayoutParams;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method private d0(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
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
    const/4 p3, 0x0

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
    check-cast v0, Lcom/join/mgps/adapter/ForumBaseAdapter$l1;

    .line 9
    .line 10
    goto :goto_0

    .line 11
    :cond_0
    new-instance v0, Lcom/join/mgps/adapter/ForumBaseAdapter$l1;

    .line 12
    .line 13
    invoke-direct {v0, p0}, Lcom/join/mgps/adapter/ForumBaseAdapter$l1;-><init>(Lcom/join/mgps/adapter/ForumBaseAdapter;)V

    .line 14
    .line 15
    .line 16
    iget-object p2, p0, Lcom/join/mgps/adapter/ForumBaseAdapter;->e:Landroid/content/Context;

    .line 17
    .line 18
    invoke-static {p2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    .line 19
    .line 20
    .line 21
    move-result-object p2

    .line 22
    const v1, 0x7f0d06d3

    .line 23
    .line 24
    .line 25
    invoke-virtual {p2, v1, p3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 26
    .line 27
    .line 28
    move-result-object p2

    .line 29
    const v1, 0x7f0a0f2d

    .line 30
    .line 31
    .line 32
    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 33
    .line 34
    .line 35
    move-result-object v1

    .line 36
    check-cast v1, Landroid/widget/LinearLayout;

    .line 37
    .line 38
    iput-object v1, v0, Lcom/join/mgps/adapter/ForumBaseAdapter$l1;->b:Landroid/widget/LinearLayout;

    .line 39
    .line 40
    invoke-virtual {p2, v0}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 41
    .line 42
    .line 43
    :goto_0
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/join/mgps/adapter/ForumBaseAdapter;->getItem(I)Ljava/lang/Object;

    .line 44
    .line 45
    .line 46
    move-result-object p1

    .line 47
    check-cast p1, Lcom/join/mgps/adapter/ForumBaseAdapter$r1$e0;

    .line 48
    .line 49
    if-nez p1, :cond_1

    .line 50
    .line 51
    return-object p2

    .line 52
    :cond_1
    iget-object v1, p1, Lcom/join/mgps/adapter/ForumBaseAdapter$r1$e0;->b:Ljava/util/List;

    .line 53
    .line 54
    if-eqz v1, :cond_8

    .line 55
    .line 56
    invoke-interface {v1}, Ljava/util/List;->size()I

    .line 57
    .line 58
    .line 59
    move-result v1

    .line 60
    if-lez v1, :cond_8

    .line 61
    .line 62
    const/4 v1, 0x0

    .line 63
    :goto_1
    iget-object v2, p1, Lcom/join/mgps/adapter/ForumBaseAdapter$r1$e0;->b:Ljava/util/List;

    .line 64
    .line 65
    invoke-interface {v2}, Ljava/util/List;->size()I

    .line 66
    .line 67
    .line 68
    move-result v2

    .line 69
    if-ge v1, v2, :cond_8

    .line 70
    .line 71
    const/16 v2, 0x8

    .line 72
    .line 73
    if-le v1, v2, :cond_2

    .line 74
    .line 75
    goto/16 :goto_3

    .line 76
    .line 77
    :cond_2
    iget-object v2, p1, Lcom/join/mgps/adapter/ForumBaseAdapter$r1$e0;->b:Ljava/util/List;

    .line 78
    .line 79
    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 80
    .line 81
    .line 82
    move-result-object v2

    .line 83
    check-cast v2, Lcom/join/mgps/adapter/ForumBaseAdapter$r1;

    .line 84
    .line 85
    invoke-virtual {v2}, Lcom/join/mgps/adapter/ForumBaseAdapter$r1;->b()Lcom/join/mgps/adapter/ForumBaseAdapter$ViewType;

    .line 86
    .line 87
    .line 88
    move-result-object v3

    .line 89
    invoke-virtual {v3}, Ljava/lang/Enum;->ordinal()I

    .line 90
    .line 91
    .line 92
    move-result v3

    .line 93
    sget-object v4, Lcom/join/mgps/adapter/ForumBaseAdapter$ViewType;->POST_IMAGE:Lcom/join/mgps/adapter/ForumBaseAdapter$ViewType;

    .line 94
    .line 95
    invoke-virtual {v4}, Ljava/lang/Enum;->ordinal()I

    .line 96
    .line 97
    .line 98
    move-result v4

    .line 99
    if-ne v3, v4, :cond_3

    .line 100
    .line 101
    new-instance v3, Lcom/join/mgps/base/b;

    .line 102
    .line 103
    iget-object v4, p0, Lcom/join/mgps/adapter/ForumBaseAdapter;->e:Landroid/content/Context;

    .line 104
    .line 105
    const v5, 0x7f0d06b9

    .line 106
    .line 107
    .line 108
    invoke-static {v4, v5, p3}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 109
    .line 110
    .line 111
    move-result-object v4

    .line 112
    invoke-direct {v3, v4}, Lcom/join/mgps/base/b;-><init>(Landroid/view/View;)V

    .line 113
    .line 114
    .line 115
    invoke-direct {p0, v3, v2}, Lcom/join/mgps/adapter/ForumBaseAdapter;->i(Lcom/join/mgps/base/b;Lcom/join/mgps/adapter/ForumBaseAdapter$r1;)V

    .line 116
    .line 117
    .line 118
    goto :goto_2

    .line 119
    :cond_3
    sget-object v4, Lcom/join/mgps/adapter/ForumBaseAdapter$ViewType;->POST_VIDEO:Lcom/join/mgps/adapter/ForumBaseAdapter$ViewType;

    .line 120
    .line 121
    invoke-virtual {v4}, Ljava/lang/Enum;->ordinal()I

    .line 122
    .line 123
    .line 124
    move-result v4

    .line 125
    if-ne v3, v4, :cond_4

    .line 126
    .line 127
    new-instance v3, Lcom/join/mgps/base/b;

    .line 128
    .line 129
    iget-object v4, p0, Lcom/join/mgps/adapter/ForumBaseAdapter;->e:Landroid/content/Context;

    .line 130
    .line 131
    const v5, 0x7f0d06c2

    .line 132
    .line 133
    .line 134
    invoke-static {v4, v5, p3}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 135
    .line 136
    .line 137
    move-result-object v4

    .line 138
    invoke-direct {v3, v4}, Lcom/join/mgps/base/b;-><init>(Landroid/view/View;)V

    .line 139
    .line 140
    .line 141
    invoke-direct {p0, v3, v2}, Lcom/join/mgps/adapter/ForumBaseAdapter;->l(Lcom/join/mgps/base/b;Lcom/join/mgps/adapter/ForumBaseAdapter$r1;)V

    .line 142
    .line 143
    .line 144
    goto :goto_2

    .line 145
    :cond_4
    sget-object v4, Lcom/join/mgps/adapter/ForumBaseAdapter$ViewType;->POST_MESSAGE:Lcom/join/mgps/adapter/ForumBaseAdapter$ViewType;

    .line 146
    .line 147
    invoke-virtual {v4}, Ljava/lang/Enum;->ordinal()I

    .line 148
    .line 149
    .line 150
    move-result v4

    .line 151
    if-ne v3, v4, :cond_5

    .line 152
    .line 153
    new-instance v3, Lcom/join/mgps/base/b;

    .line 154
    .line 155
    iget-object v4, p0, Lcom/join/mgps/adapter/ForumBaseAdapter;->e:Landroid/content/Context;

    .line 156
    .line 157
    const v5, 0x7f0d06bb

    .line 158
    .line 159
    .line 160
    invoke-static {v4, v5, p3}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 161
    .line 162
    .line 163
    move-result-object v4

    .line 164
    invoke-direct {v3, v4}, Lcom/join/mgps/base/b;-><init>(Landroid/view/View;)V

    .line 165
    .line 166
    .line 167
    invoke-direct {p0, v3, v2}, Lcom/join/mgps/adapter/ForumBaseAdapter;->j(Lcom/join/mgps/base/b;Lcom/join/mgps/adapter/ForumBaseAdapter$r1;)V

    .line 168
    .line 169
    .line 170
    goto :goto_2

    .line 171
    :cond_5
    sget-object v4, Lcom/join/mgps/adapter/ForumBaseAdapter$ViewType;->POST_RICH_MESSAGE:Lcom/join/mgps/adapter/ForumBaseAdapter$ViewType;

    .line 172
    .line 173
    invoke-virtual {v4}, Ljava/lang/Enum;->ordinal()I

    .line 174
    .line 175
    .line 176
    move-result v4

    .line 177
    if-ne v3, v4, :cond_6

    .line 178
    .line 179
    new-instance v3, Lcom/join/mgps/base/b;

    .line 180
    .line 181
    iget-object v4, p0, Lcom/join/mgps/adapter/ForumBaseAdapter;->e:Landroid/content/Context;

    .line 182
    .line 183
    const v5, 0x7f0d06be

    .line 184
    .line 185
    .line 186
    invoke-static {v4, v5, p3}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 187
    .line 188
    .line 189
    move-result-object v4

    .line 190
    invoke-direct {v3, v4}, Lcom/join/mgps/base/b;-><init>(Landroid/view/View;)V

    .line 191
    .line 192
    .line 193
    invoke-direct {p0, v3, v2}, Lcom/join/mgps/adapter/ForumBaseAdapter;->k(Lcom/join/mgps/base/b;Lcom/join/mgps/adapter/ForumBaseAdapter$r1;)V

    .line 194
    .line 195
    .line 196
    goto :goto_2

    .line 197
    :cond_6
    move-object v3, p3

    .line 198
    :goto_2
    if-eqz v3, :cond_7

    .line 199
    .line 200
    iget-object v2, v0, Lcom/join/mgps/adapter/ForumBaseAdapter$l1;->b:Landroid/widget/LinearLayout;

    .line 201
    .line 202
    iget-object v3, v3, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    .line 203
    .line 204
    invoke-virtual {v2, v3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 205
    .line 206
    .line 207
    :cond_7
    add-int/lit8 v1, v1, 0x1

    .line 208
    .line 209
    goto/16 :goto_1

    .line 210
    .line 211
    :cond_8
    :goto_3
    iget p1, p1, Lcom/join/mgps/adapter/ForumBaseAdapter$r1$e0;->a:I

    .line 212
    .line 213
    iget-object p3, v0, Lcom/join/mgps/adapter/ForumBaseAdapter$l1;->b:Landroid/widget/LinearLayout;

    .line 214
    .line 215
    invoke-virtual {p0, p3, p1}, Lcom/join/mgps/adapter/ForumBaseAdapter;->R0(Landroid/view/View;I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 216
    .line 217
    .line 218
    goto :goto_4

    .line 219
    :catch_0
    move-exception p1

    .line 220
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 221
    .line 222
    .line 223
    :goto_4
    return-object p2
.end method

.method private d1(Landroid/view/View;I)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "v",
            "color"
        }
    .end annotation

    .line 1
    if-nez p1, :cond_0

    .line 2
    .line 3
    return-void

    .line 4
    :cond_0
    instance-of v0, p1, Landroid/widget/TextView;

    .line 5
    .line 6
    if-eqz v0, :cond_1

    .line 7
    .line 8
    check-cast p1, Landroid/widget/TextView;

    .line 9
    .line 10
    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 11
    .line 12
    .line 13
    goto :goto_0

    .line 14
    :cond_1
    instance-of v0, p1, Landroid/widget/Button;

    .line 15
    .line 16
    if-eqz v0, :cond_2

    .line 17
    .line 18
    check-cast p1, Landroid/widget/Button;

    .line 19
    .line 20
    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 21
    .line 22
    .line 23
    :cond_2
    :goto_0
    return-void
.end method

.method static synthetic e(Lcom/join/mgps/adapter/ForumBaseAdapter;)Landroid/content/Context;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/join/mgps/adapter/ForumBaseAdapter;->e:Landroid/content/Context;

    .line 2
    .line 3
    return-object p0
.end method

.method private e0(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
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
    :try_start_0
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object p3

    .line 7
    check-cast p3, Lcom/join/mgps/adapter/ForumBaseAdapter$p1;

    .line 8
    .line 9
    goto :goto_0

    .line 10
    :cond_0
    new-instance p3, Lcom/join/mgps/adapter/ForumBaseAdapter$p1;

    .line 11
    .line 12
    invoke-direct {p3, p0}, Lcom/join/mgps/adapter/ForumBaseAdapter$p1;-><init>(Lcom/join/mgps/adapter/ForumBaseAdapter;)V

    .line 13
    .line 14
    .line 15
    iget-object v0, p0, Lcom/join/mgps/adapter/ForumBaseAdapter;->e:Landroid/content/Context;

    .line 16
    .line 17
    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    .line 18
    .line 19
    .line 20
    move-result-object v0

    .line 21
    const v1, 0x7f0d068e

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
    const v0, 0x7f0a066f

    .line 30
    .line 31
    .line 32
    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 33
    .line 34
    .line 35
    move-result-object v0

    .line 36
    check-cast v0, Lcom/join/mgps/customview/FlowLayout;

    .line 37
    .line 38
    iput-object v0, p3, Lcom/join/mgps/adapter/ForumBaseAdapter$p1;->b:Lcom/join/mgps/customview/FlowLayout;

    .line 39
    .line 40
    invoke-virtual {p2, p3}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 41
    .line 42
    .line 43
    :goto_0
    invoke-virtual {p0, p1}, Lcom/join/mgps/adapter/ForumBaseAdapter;->getItem(I)Ljava/lang/Object;

    .line 44
    .line 45
    .line 46
    move-result-object p1

    .line 47
    check-cast p1, Lcom/join/mgps/adapter/ForumBaseAdapter$r1$f0;

    .line 48
    .line 49
    if-nez p1, :cond_1

    .line 50
    .line 51
    return-object p2

    .line 52
    :cond_1
    iget-object v0, p1, Lcom/join/mgps/adapter/ForumBaseAdapter$r1$f0;->c:Ljava/util/List;

    .line 53
    .line 54
    if-eqz v0, :cond_5

    .line 55
    .line 56
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 57
    .line 58
    .line 59
    move-result v0

    .line 60
    const/4 v1, 0x1

    .line 61
    if-ge v0, v1, :cond_2

    .line 62
    .line 63
    goto :goto_4

    .line 64
    :cond_2
    iget-object v0, p3, Lcom/join/mgps/adapter/ForumBaseAdapter$p1;->b:Lcom/join/mgps/customview/FlowLayout;

    .line 65
    .line 66
    invoke-virtual {v0}, Landroid/view/ViewGroup;->removeAllViews()V

    .line 67
    .line 68
    .line 69
    const/4 v0, 0x0

    .line 70
    const/4 v2, 0x0

    .line 71
    :goto_1
    iget-object v3, p1, Lcom/join/mgps/adapter/ForumBaseAdapter$r1$f0;->c:Ljava/util/List;

    .line 72
    .line 73
    invoke-interface {v3}, Ljava/util/List;->size()I

    .line 74
    .line 75
    .line 76
    move-result v3

    .line 77
    if-ge v2, v3, :cond_6

    .line 78
    .line 79
    iget-object v3, p1, Lcom/join/mgps/adapter/ForumBaseAdapter$r1$f0;->c:Ljava/util/List;

    .line 80
    .line 81
    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 82
    .line 83
    .line 84
    move-result-object v3

    .line 85
    check-cast v3, Lcom/join/mgps/dto/RecommendLabelTag;

    .line 86
    .line 87
    if-nez v2, :cond_3

    .line 88
    .line 89
    const/4 v4, 0x1

    .line 90
    goto :goto_2

    .line 91
    :cond_3
    const/4 v4, 0x0

    .line 92
    :goto_2
    iget v5, p1, Lcom/join/mgps/adapter/ForumBaseAdapter$r1$f0;->a:I

    .line 93
    .line 94
    iget-object v6, p1, Lcom/join/mgps/adapter/ForumBaseAdapter$r1$f0;->b:Ljava/lang/String;

    .line 95
    .line 96
    invoke-direct {p0, v3, v4, v5, v6}, Lcom/join/mgps/adapter/ForumBaseAdapter;->p0(Lcom/join/mgps/dto/RecommendLabelTag;ZILjava/lang/String;)Landroid/view/View;

    .line 97
    .line 98
    .line 99
    move-result-object v3

    .line 100
    if-nez v3, :cond_4

    .line 101
    .line 102
    goto :goto_3

    .line 103
    :cond_4
    iget-object v4, p3, Lcom/join/mgps/adapter/ForumBaseAdapter$p1;->b:Lcom/join/mgps/customview/FlowLayout;

    .line 104
    .line 105
    invoke-virtual {v4, v3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 106
    .line 107
    .line 108
    :goto_3
    add-int/lit8 v2, v2, 0x1

    .line 109
    .line 110
    goto :goto_1

    .line 111
    :cond_5
    :goto_4
    return-object p2

    .line 112
    :catch_0
    move-exception p1

    .line 113
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 114
    .line 115
    .line 116
    :cond_6
    return-object p2
.end method

.method private e1(Lcom/facebook/drawee/view/SimpleDraweeView;Lcom/join/mgps/dto/BannerBean;I)V
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x0,
            0x10
        }
        names = {
            "imageView",
            "bean",
            "position"
        }
    .end annotation

    .line 1
    if-eqz p2, :cond_2

    .line 2
    .line 3
    if-nez p1, :cond_0

    .line 4
    .line 5
    goto/16 :goto_0

    .line 6
    .line 7
    :cond_0
    invoke-virtual {p2}, Lcom/join/mgps/dto/BannerBean;->getPic_remote()Ljava/lang/String;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 12
    .line 13
    .line 14
    move-result-object v1

    .line 15
    invoke-static {v1}, Lcom/join/android/app/common/utils/l;->A(Landroid/content/Context;)Lcom/facebook/drawee/generic/RoundingParams;

    .line 16
    .line 17
    .line 18
    move-result-object v1

    .line 19
    invoke-static {p1, v0, v1}, Lcom/join/android/app/common/utils/l;->j(Lcom/facebook/drawee/view/SimpleDraweeView;Ljava/lang/String;Lcom/facebook/drawee/generic/RoundingParams;)V

    .line 20
    .line 21
    .line 22
    iget-object v0, p0, Lcom/join/mgps/adapter/ForumBaseAdapter;->n:Landroid/widget/LinearLayout$LayoutParams;

    .line 23
    .line 24
    if-nez v0, :cond_1

    .line 25
    .line 26
    iget-object v0, p0, Lcom/join/mgps/adapter/ForumBaseAdapter;->e:Landroid/content/Context;

    .line 27
    .line 28
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 29
    .line 30
    .line 31
    move-result-object v0

    .line 32
    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    .line 33
    .line 34
    .line 35
    move-result-object v0

    .line 36
    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    .line 37
    .line 38
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 39
    .line 40
    .line 41
    move-result-object v1

    .line 42
    check-cast v1, Landroid/widget/LinearLayout$LayoutParams;

    .line 43
    .line 44
    iget-object v2, p0, Lcom/join/mgps/adapter/ForumBaseAdapter;->e:Landroid/content/Context;

    .line 45
    .line 46
    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 47
    .line 48
    .line 49
    move-result-object v2

    .line 50
    invoke-virtual {v2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    .line 51
    .line 52
    .line 53
    move-result-object v2

    .line 54
    iget v2, v2, Landroid/util/DisplayMetrics;->widthPixels:I

    .line 55
    .line 56
    int-to-float v2, v2

    .line 57
    const/high16 v3, 0x41900000    # 18.0f

    .line 58
    .line 59
    mul-float v0, v0, v3

    .line 60
    .line 61
    sub-float/2addr v2, v0

    .line 62
    float-to-int v0, v2

    .line 63
    div-int/lit8 v0, v0, 0x2

    .line 64
    .line 65
    iput v0, v1, Landroid/widget/LinearLayout$LayoutParams;->width:I

    .line 66
    .line 67
    const/high16 v2, 0x3f800000    # 1.0f

    .line 68
    .line 69
    int-to-float v0, v0

    .line 70
    mul-float v0, v0, v2

    .line 71
    .line 72
    const v2, 0x40047ae1    # 2.07f

    .line 73
    .line 74
    .line 75
    div-float/2addr v0, v2

    .line 76
    float-to-int v0, v0

    .line 77
    iput v0, v1, Landroid/widget/LinearLayout$LayoutParams;->height:I

    .line 78
    .line 79
    iput-object v1, p0, Lcom/join/mgps/adapter/ForumBaseAdapter;->n:Landroid/widget/LinearLayout$LayoutParams;

    .line 80
    .line 81
    :cond_1
    iget-object v0, p0, Lcom/join/mgps/adapter/ForumBaseAdapter;->n:Landroid/widget/LinearLayout$LayoutParams;

    .line 82
    .line 83
    invoke-virtual {p1, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 84
    .line 85
    .line 86
    invoke-static {p2}, Lcom/join/mgps/Util/r0;->j0(Lcom/join/mgps/dto/BannerBean;)Lcom/join/mgps/Util/IntentDateBean;

    .line 87
    .line 88
    .line 89
    move-result-object p2

    .line 90
    new-instance v0, Lcom/join/mgps/dto/ExtBean;

    .line 91
    .line 92
    invoke-direct {v0}, Lcom/join/mgps/dto/ExtBean;-><init>()V

    .line 93
    .line 94
    .line 95
    const-string v1, "forum"

    .line 96
    .line 97
    invoke-virtual {v0, v1}, Lcom/join/mgps/dto/ExtBean;->setFrom(Ljava/lang/String;)Lcom/join/mgps/dto/ExtBean;

    .line 98
    .line 99
    .line 100
    new-instance v1, Ljava/lang/StringBuilder;

    .line 101
    .line 102
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 103
    .line 104
    .line 105
    const-string v2, "banner"

    .line 106
    .line 107
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 108
    .line 109
    .line 110
    add-int/lit8 v2, p3, 0x1

    .line 111
    .line 112
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 113
    .line 114
    .line 115
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 116
    .line 117
    .line 118
    move-result-object v1

    .line 119
    invoke-virtual {v0, v1}, Lcom/join/mgps/dto/ExtBean;->setPosition(Ljava/lang/String;)Lcom/join/mgps/dto/ExtBean;

    .line 120
    .line 121
    .line 122
    invoke-virtual {p2, v0}, Lcom/join/mgps/Util/IntentDateBean;->setExtBean(Lcom/join/mgps/dto/ExtBean;)V

    .line 123
    .line 124
    .line 125
    new-instance v0, Lcom/join/mgps/adapter/ForumBaseAdapter$h;

    .line 126
    .line 127
    invoke-direct {v0, p0, p2, p3}, Lcom/join/mgps/adapter/ForumBaseAdapter$h;-><init>(Lcom/join/mgps/adapter/ForumBaseAdapter;Lcom/join/mgps/Util/IntentDateBean;I)V

    .line 128
    .line 129
    .line 130
    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 131
    .line 132
    .line 133
    :cond_2
    :goto_0
    return-void
.end method

.method private f0(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 4
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
    const-string p3, "#"

    .line 2
    .line 3
    if-eqz p2, :cond_0

    .line 4
    .line 5
    :try_start_0
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    check-cast v0, Lcom/join/mgps/adapter/ForumBaseAdapter$q1;

    .line 10
    .line 11
    goto :goto_0

    .line 12
    :cond_0
    new-instance v0, Lcom/join/mgps/adapter/ForumBaseAdapter$q1;

    .line 13
    .line 14
    invoke-direct {v0, p0}, Lcom/join/mgps/adapter/ForumBaseAdapter$q1;-><init>(Lcom/join/mgps/adapter/ForumBaseAdapter;)V

    .line 15
    .line 16
    .line 17
    iget-object v1, p0, Lcom/join/mgps/adapter/ForumBaseAdapter;->e:Landroid/content/Context;

    .line 18
    .line 19
    invoke-static {v1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    .line 20
    .line 21
    .line 22
    move-result-object v1

    .line 23
    const v2, 0x7f0d06df

    .line 24
    .line 25
    .line 26
    const/4 v3, 0x0

    .line 27
    invoke-virtual {v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 28
    .line 29
    .line 30
    move-result-object p2

    .line 31
    const v1, 0x7f0a10d8

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
    iput-object v1, v0, Lcom/join/mgps/adapter/ForumBaseAdapter$q1;->b:Landroid/widget/TextView;

    .line 41
    .line 42
    const v1, 0x7f0a04ed

    .line 43
    .line 44
    .line 45
    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 46
    .line 47
    .line 48
    move-result-object v1

    .line 49
    check-cast v1, Landroid/widget/ImageView;

    .line 50
    .line 51
    iput-object v1, v0, Lcom/join/mgps/adapter/ForumBaseAdapter$q1;->c:Landroid/widget/ImageView;

    .line 52
    .line 53
    invoke-virtual {p2, v0}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 54
    .line 55
    .line 56
    :goto_0
    invoke-virtual {p0, p1}, Lcom/join/mgps/adapter/ForumBaseAdapter;->getItem(I)Ljava/lang/Object;

    .line 57
    .line 58
    .line 59
    move-result-object p1

    .line 60
    check-cast p1, Lcom/join/mgps/adapter/ForumBaseAdapter$r1$g0;

    .line 61
    .line 62
    if-nez p1, :cond_1

    .line 63
    .line 64
    return-object p2

    .line 65
    :cond_1
    iget-object v1, p1, Lcom/join/mgps/adapter/ForumBaseAdapter$r1$g0;->a:Lcom/join/mgps/dto/RecommendLabelTag;

    .line 66
    .line 67
    if-eqz v1, :cond_2

    .line 68
    .line 69
    invoke-virtual {v1}, Lcom/join/mgps/dto/RecommendLabelTag;->getTag_name()Ljava/lang/String;

    .line 70
    .line 71
    .line 72
    move-result-object v1

    .line 73
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 74
    .line 75
    .line 76
    move-result v1

    .line 77
    if-nez v1, :cond_2

    .line 78
    .line 79
    iget-object v1, v0, Lcom/join/mgps/adapter/ForumBaseAdapter$q1;->b:Landroid/widget/TextView;

    .line 80
    .line 81
    new-instance v2, Ljava/lang/StringBuilder;

    .line 82
    .line 83
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 84
    .line 85
    .line 86
    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 87
    .line 88
    .line 89
    iget-object v3, p1, Lcom/join/mgps/adapter/ForumBaseAdapter$r1$g0;->a:Lcom/join/mgps/dto/RecommendLabelTag;

    .line 90
    .line 91
    invoke-virtual {v3}, Lcom/join/mgps/dto/RecommendLabelTag;->getTag_name()Ljava/lang/String;

    .line 92
    .line 93
    .line 94
    move-result-object v3

    .line 95
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 96
    .line 97
    .line 98
    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 99
    .line 100
    .line 101
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 102
    .line 103
    .line 104
    move-result-object p3

    .line 105
    invoke-virtual {v1, p3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 106
    .line 107
    .line 108
    goto :goto_1

    .line 109
    :cond_2
    iget-object p3, v0, Lcom/join/mgps/adapter/ForumBaseAdapter$q1;->b:Landroid/widget/TextView;

    .line 110
    .line 111
    const-string v1, ""

    .line 112
    .line 113
    invoke-virtual {p3, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 114
    .line 115
    .line 116
    :goto_1
    iget-boolean p3, p1, Lcom/join/mgps/adapter/ForumBaseAdapter$r1$g0;->b:Z

    .line 117
    .line 118
    if-eqz p3, :cond_3

    .line 119
    .line 120
    iget-object p3, v0, Lcom/join/mgps/adapter/ForumBaseAdapter$q1;->c:Landroid/widget/ImageView;

    .line 121
    .line 122
    const/4 v0, 0x0

    .line 123
    invoke-virtual {p3, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 124
    .line 125
    .line 126
    goto :goto_2

    .line 127
    :cond_3
    iget-object p3, v0, Lcom/join/mgps/adapter/ForumBaseAdapter$q1;->c:Landroid/widget/ImageView;

    .line 128
    .line 129
    const/16 v0, 0x8

    .line 130
    .line 131
    invoke-virtual {p3, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 132
    .line 133
    .line 134
    :goto_2
    iget-object p1, p1, Lcom/join/mgps/adapter/ForumBaseAdapter$r1$g0;->a:Lcom/join/mgps/dto/RecommendLabelTag;

    .line 135
    .line 136
    invoke-direct {p0, p2, p1}, Lcom/join/mgps/adapter/ForumBaseAdapter;->U0(Landroid/view/View;Lcom/join/mgps/dto/RecommendLabelTag;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 137
    .line 138
    .line 139
    goto :goto_3

    .line 140
    :catch_0
    move-exception p1

    .line 141
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 142
    .line 143
    .line 144
    :goto_3
    return-object p2
.end method

.method private h0(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
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
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object p3

    .line 7
    check-cast p3, Lcom/join/mgps/adapter/ForumBaseAdapter$h0;

    .line 8
    .line 9
    goto :goto_0

    .line 10
    :cond_0
    new-instance p3, Lcom/join/mgps/adapter/ForumBaseAdapter$h0;

    .line 11
    .line 12
    invoke-direct {p3, p0}, Lcom/join/mgps/adapter/ForumBaseAdapter$h0;-><init>(Lcom/join/mgps/adapter/ForumBaseAdapter;)V

    .line 13
    .line 14
    .line 15
    iget-object p2, p0, Lcom/join/mgps/adapter/ForumBaseAdapter;->e:Landroid/content/Context;

    .line 16
    .line 17
    invoke-static {p2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    .line 18
    .line 19
    .line 20
    move-result-object p2

    .line 21
    const v0, 0x7f0d06e3

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
    const v0, 0x7f0a0692

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
    iput-object v0, p3, Lcom/join/mgps/adapter/ForumBaseAdapter$h0;->b:Landroid/widget/TextView;

    .line 39
    .line 40
    const v0, 0x7f0a0e20

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
    iput-object v0, p3, Lcom/join/mgps/adapter/ForumBaseAdapter$h0;->c:Lcom/facebook/drawee/view/SimpleDraweeView;

    .line 50
    .line 51
    const v0, 0x7f0a0e21

    .line 52
    .line 53
    .line 54
    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 55
    .line 56
    .line 57
    move-result-object v0

    .line 58
    check-cast v0, Lcom/facebook/drawee/view/SimpleDraweeView;

    .line 59
    .line 60
    iput-object v0, p3, Lcom/join/mgps/adapter/ForumBaseAdapter$h0;->d:Lcom/facebook/drawee/view/SimpleDraweeView;

    .line 61
    .line 62
    const v0, 0x7f0a0e22

    .line 63
    .line 64
    .line 65
    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 66
    .line 67
    .line 68
    move-result-object v0

    .line 69
    check-cast v0, Lcom/facebook/drawee/view/SimpleDraweeView;

    .line 70
    .line 71
    iput-object v0, p3, Lcom/join/mgps/adapter/ForumBaseAdapter$h0;->e:Lcom/facebook/drawee/view/SimpleDraweeView;

    .line 72
    .line 73
    const v0, 0x7f0a0e23

    .line 74
    .line 75
    .line 76
    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 77
    .line 78
    .line 79
    move-result-object v0

    .line 80
    check-cast v0, Lcom/facebook/drawee/view/SimpleDraweeView;

    .line 81
    .line 82
    iput-object v0, p3, Lcom/join/mgps/adapter/ForumBaseAdapter$h0;->f:Lcom/facebook/drawee/view/SimpleDraweeView;

    .line 83
    .line 84
    invoke-virtual {p2, p3}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 85
    .line 86
    .line 87
    :goto_0
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/join/mgps/adapter/ForumBaseAdapter;->getItem(I)Ljava/lang/Object;

    .line 88
    .line 89
    .line 90
    move-result-object p1

    .line 91
    check-cast p1, Lcom/join/mgps/adapter/ForumBaseAdapter$r1$a;

    .line 92
    .line 93
    if-eqz p1, :cond_4

    .line 94
    .line 95
    iget-object v0, p1, Lcom/join/mgps/adapter/ForumBaseAdapter$r1$a;->a:Lcom/join/mgps/dto/ForumBean$ForumWelcomeAdBean;

    .line 96
    .line 97
    if-nez v0, :cond_1

    .line 98
    .line 99
    goto :goto_3

    .line 100
    :cond_1
    const/4 v0, 0x4

    .line 101
    new-array v0, v0, [Lcom/facebook/drawee/view/SimpleDraweeView;

    .line 102
    .line 103
    iget-object v1, p3, Lcom/join/mgps/adapter/ForumBaseAdapter$h0;->c:Lcom/facebook/drawee/view/SimpleDraweeView;

    .line 104
    .line 105
    const/4 v2, 0x0

    .line 106
    aput-object v1, v0, v2

    .line 107
    .line 108
    iget-object v1, p3, Lcom/join/mgps/adapter/ForumBaseAdapter$h0;->d:Lcom/facebook/drawee/view/SimpleDraweeView;

    .line 109
    .line 110
    const/4 v3, 0x1

    .line 111
    aput-object v1, v0, v3

    .line 112
    .line 113
    iget-object v1, p3, Lcom/join/mgps/adapter/ForumBaseAdapter$h0;->e:Lcom/facebook/drawee/view/SimpleDraweeView;

    .line 114
    .line 115
    const/4 v4, 0x2

    .line 116
    aput-object v1, v0, v4

    .line 117
    .line 118
    iget-object p3, p3, Lcom/join/mgps/adapter/ForumBaseAdapter$h0;->f:Lcom/facebook/drawee/view/SimpleDraweeView;

    .line 119
    .line 120
    const/4 v1, 0x3

    .line 121
    aput-object p3, v0, v1

    .line 122
    .line 123
    const/4 p3, 0x0

    .line 124
    :goto_1
    iget-object v4, p1, Lcom/join/mgps/adapter/ForumBaseAdapter$r1$a;->a:Lcom/join/mgps/dto/ForumBean$ForumWelcomeAdBean;

    .line 125
    .line 126
    invoke-virtual {v4}, Lcom/join/mgps/dto/ForumBean$ForumWelcomeAdBean;->getAdBeans()Ljava/util/List;

    .line 127
    .line 128
    .line 129
    move-result-object v4

    .line 130
    if-eqz v4, :cond_5

    .line 131
    .line 132
    iget-object v4, p1, Lcom/join/mgps/adapter/ForumBaseAdapter$r1$a;->a:Lcom/join/mgps/dto/ForumBean$ForumWelcomeAdBean;

    .line 133
    .line 134
    invoke-virtual {v4}, Lcom/join/mgps/dto/ForumBean$ForumWelcomeAdBean;->getAdBeans()Ljava/util/List;

    .line 135
    .line 136
    .line 137
    move-result-object v4

    .line 138
    invoke-interface {v4}, Ljava/util/List;->size()I

    .line 139
    .line 140
    .line 141
    move-result v4

    .line 142
    if-ge p3, v4, :cond_5

    .line 143
    .line 144
    iget-object v4, p1, Lcom/join/mgps/adapter/ForumBaseAdapter$r1$a;->a:Lcom/join/mgps/dto/ForumBean$ForumWelcomeAdBean;

    .line 145
    .line 146
    invoke-virtual {v4}, Lcom/join/mgps/dto/ForumBean$ForumWelcomeAdBean;->getAdBeans()Ljava/util/List;

    .line 147
    .line 148
    .line 149
    move-result-object v4

    .line 150
    invoke-interface {v4, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 151
    .line 152
    .line 153
    move-result-object v4

    .line 154
    check-cast v4, Lcom/join/mgps/dto/BannerBean;

    .line 155
    .line 156
    aget-object v5, v0, p3

    .line 157
    .line 158
    invoke-direct {p0, v5, v4, p3}, Lcom/join/mgps/adapter/ForumBaseAdapter;->e1(Lcom/facebook/drawee/view/SimpleDraweeView;Lcom/join/mgps/dto/BannerBean;I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 159
    .line 160
    .line 161
    if-eq p3, v3, :cond_2

    .line 162
    .line 163
    if-ne p3, v1, :cond_3

    .line 164
    .line 165
    :cond_2
    :try_start_1
    new-instance v4, Landroid/widget/LinearLayout$LayoutParams;

    .line 166
    .line 167
    invoke-virtual {v5}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 168
    .line 169
    .line 170
    move-result-object v6

    .line 171
    iget v6, v6, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 172
    .line 173
    invoke-virtual {v5}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 174
    .line 175
    .line 176
    move-result-object v7

    .line 177
    iget v7, v7, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 178
    .line 179
    invoke-direct {v4, v6, v7}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 180
    .line 181
    .line 182
    invoke-virtual {v5}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    .line 183
    .line 184
    .line 185
    move-result-object v6

    .line 186
    invoke-virtual {v6}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    .line 187
    .line 188
    .line 189
    move-result-object v6

    .line 190
    iget v6, v6, Landroid/util/DisplayMetrics;->density:F

    .line 191
    .line 192
    const/high16 v7, 0x40c00000    # 6.0f

    .line 193
    .line 194
    mul-float v6, v6, v7

    .line 195
    .line 196
    float-to-int v6, v6

    .line 197
    invoke-virtual {v4, v6, v2, v2, v2}, Landroid/view/ViewGroup$MarginLayoutParams;->setMargins(IIII)V

    .line 198
    .line 199
    .line 200
    invoke-virtual {v5, v4}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 201
    .line 202
    .line 203
    goto :goto_2

    .line 204
    :catch_0
    move-exception v4

    .line 205
    :try_start_2
    invoke-virtual {v4}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    .line 206
    .line 207
    .line 208
    :cond_3
    :goto_2
    add-int/lit8 p3, p3, 0x1

    .line 209
    .line 210
    goto :goto_1

    .line 211
    :cond_4
    :goto_3
    return-object p2

    .line 212
    :catch_1
    move-exception p1

    .line 213
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 214
    .line 215
    .line 216
    :cond_5
    return-object p2
.end method

.method private h1(Lcom/join/mgps/adapter/ForumBaseAdapter$h1;I)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "holder",
            "type"
        }
    .end annotation

    .line 1
    const/4 v0, 0x0

    .line 2
    const/16 v1, 0x8

    .line 3
    .line 4
    if-nez p2, :cond_0

    .line 5
    .line 6
    iget-object p2, p1, Lcom/join/mgps/adapter/ForumBaseAdapter$h1;->g:Landroid/widget/LinearLayout;

    .line 7
    .line 8
    invoke-virtual {p2, v1}, Landroid/view/View;->setVisibility(I)V

    .line 9
    .line 10
    .line 11
    iget-object p2, p1, Lcom/join/mgps/adapter/ForumBaseAdapter$h1;->k:Landroid/widget/ProgressBar;

    .line 12
    .line 13
    invoke-virtual {p2, v1}, Landroid/view/View;->setVisibility(I)V

    .line 14
    .line 15
    .line 16
    iget-object p2, p1, Lcom/join/mgps/adapter/ForumBaseAdapter$h1;->l:Landroid/widget/ProgressBar;

    .line 17
    .line 18
    invoke-virtual {p2, v1}, Landroid/view/View;->setVisibility(I)V

    .line 19
    .line 20
    .line 21
    iget-object p2, p1, Lcom/join/mgps/adapter/ForumBaseAdapter$h1;->h:Landroid/widget/LinearLayout;

    .line 22
    .line 23
    invoke-virtual {p2, v0}, Landroid/view/View;->setVisibility(I)V

    .line 24
    .line 25
    .line 26
    iget-object p1, p1, Lcom/join/mgps/adapter/ForumBaseAdapter$h1;->f:Landroid/widget/TextView;

    .line 27
    .line 28
    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 29
    .line 30
    .line 31
    goto :goto_1

    .line 32
    :cond_0
    iget-object v2, p1, Lcom/join/mgps/adapter/ForumBaseAdapter$h1;->g:Landroid/widget/LinearLayout;

    .line 33
    .line 34
    invoke-virtual {v2, v0}, Landroid/view/View;->setVisibility(I)V

    .line 35
    .line 36
    .line 37
    const/16 v2, 0x11

    .line 38
    .line 39
    if-ne p2, v2, :cond_1

    .line 40
    .line 41
    iget-object p2, p1, Lcom/join/mgps/adapter/ForumBaseAdapter$h1;->k:Landroid/widget/ProgressBar;

    .line 42
    .line 43
    invoke-virtual {p2, v1}, Landroid/view/View;->setVisibility(I)V

    .line 44
    .line 45
    .line 46
    iget-object p2, p1, Lcom/join/mgps/adapter/ForumBaseAdapter$h1;->l:Landroid/widget/ProgressBar;

    .line 47
    .line 48
    invoke-virtual {p2, v0}, Landroid/view/View;->setVisibility(I)V

    .line 49
    .line 50
    .line 51
    goto :goto_0

    .line 52
    :cond_1
    iget-object p2, p1, Lcom/join/mgps/adapter/ForumBaseAdapter$h1;->l:Landroid/widget/ProgressBar;

    .line 53
    .line 54
    invoke-virtual {p2, v1}, Landroid/view/View;->setVisibility(I)V

    .line 55
    .line 56
    .line 57
    iget-object p2, p1, Lcom/join/mgps/adapter/ForumBaseAdapter$h1;->k:Landroid/widget/ProgressBar;

    .line 58
    .line 59
    invoke-virtual {p2, v0}, Landroid/view/View;->setVisibility(I)V

    .line 60
    .line 61
    .line 62
    :goto_0
    iget-object p2, p1, Lcom/join/mgps/adapter/ForumBaseAdapter$h1;->h:Landroid/widget/LinearLayout;

    .line 63
    .line 64
    invoke-virtual {p2, v1}, Landroid/view/View;->setVisibility(I)V

    .line 65
    .line 66
    .line 67
    iget-object p1, p1, Lcom/join/mgps/adapter/ForumBaseAdapter$h1;->f:Landroid/widget/TextView;

    .line 68
    .line 69
    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    .line 70
    .line 71
    .line 72
    :goto_1
    return-void
.end method

.method private i(Lcom/join/mgps/base/b;Lcom/join/mgps/adapter/ForumBaseAdapter$r1;)V
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "helper",
            "viewBean"
        }
    .end annotation

    .line 1
    :try_start_0
    invoke-virtual {p2}, Lcom/join/mgps/adapter/ForumBaseAdapter$r1;->a()Ljava/lang/Object;

    .line 2
    .line 3
    .line 4
    move-result-object p2

    .line 5
    check-cast p2, Lcom/join/mgps/adapter/ForumBaseAdapter$r1$r;

    .line 6
    .line 7
    if-nez p2, :cond_0

    .line 8
    .line 9
    return-void

    .line 10
    :cond_0
    iget-object v0, p0, Lcom/join/mgps/adapter/ForumBaseAdapter;->e:Landroid/content/Context;

    .line 11
    .line 12
    iget-object v1, p2, Lcom/join/mgps/adapter/ForumBaseAdapter$r1$r;->c:Ljava/util/List;

    .line 13
    .line 14
    iget v2, p2, Lcom/join/mgps/adapter/ForumBaseAdapter$r1$r;->b:I

    .line 15
    .line 16
    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 17
    .line 18
    .line 19
    move-result-object v1

    .line 20
    check-cast v1, Ljava/lang/String;

    .line 21
    .line 22
    invoke-virtual {p0, v0, v1}, Lcom/join/mgps/adapter/ForumBaseAdapter;->t0(Landroid/content/Context;Ljava/lang/String;)V

    .line 23
    .line 24
    .line 25
    iget-object v0, p2, Lcom/join/mgps/adapter/ForumBaseAdapter$r1$r;->a:Ljava/lang/String;

    .line 26
    .line 27
    invoke-virtual {p0, v0}, Lcom/join/mgps/adapter/ForumBaseAdapter;->M(Ljava/lang/String;)Lcom/join/mgps/adapter/ForumBaseAdapter$u0;

    .line 28
    .line 29
    .line 30
    move-result-object v0

    .line 31
    const v1, 0x7f0a08cf

    .line 32
    .line 33
    .line 34
    if-eqz v0, :cond_1

    .line 35
    .line 36
    new-instance v2, Landroid/widget/RelativeLayout$LayoutParams;

    .line 37
    .line 38
    iget v3, v0, Lcom/join/mgps/adapter/ForumBaseAdapter$u0;->a:I

    .line 39
    .line 40
    iget v0, v0, Lcom/join/mgps/adapter/ForumBaseAdapter$u0;->b:I

    .line 41
    .line 42
    invoke-direct {v2, v3, v0}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 43
    .line 44
    .line 45
    invoke-virtual {p1, v1}, Lcom/join/mgps/base/b;->getView(I)Landroid/view/View;

    .line 46
    .line 47
    .line 48
    move-result-object v0

    .line 49
    invoke-virtual {v0, v2}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 50
    .line 51
    .line 52
    invoke-virtual {p1, v1}, Lcom/join/mgps/base/b;->getView(I)Landroid/view/View;

    .line 53
    .line 54
    .line 55
    move-result-object p1

    .line 56
    check-cast p1, Lcom/facebook/drawee/view/SimpleDraweeView;

    .line 57
    .line 58
    iget-object p2, p2, Lcom/join/mgps/adapter/ForumBaseAdapter$r1$r;->a:Ljava/lang/String;

    .line 59
    .line 60
    invoke-static {p1, p2}, Lcom/join/android/app/common/utils/l;->h(Lcom/facebook/drawee/view/SimpleDraweeView;Ljava/lang/String;)V

    .line 61
    .line 62
    .line 63
    goto :goto_0

    .line 64
    :cond_1
    invoke-virtual {p1, v1}, Lcom/join/mgps/base/b;->getView(I)Landroid/view/View;

    .line 65
    .line 66
    .line 67
    move-result-object p1

    .line 68
    check-cast p1, Lcom/facebook/drawee/view/SimpleDraweeView;

    .line 69
    .line 70
    iget-object p2, p2, Lcom/join/mgps/adapter/ForumBaseAdapter$r1$r;->a:Ljava/lang/String;

    .line 71
    .line 72
    invoke-virtual {p0, p1, p2}, Lcom/join/mgps/adapter/ForumBaseAdapter;->o0(Lcom/facebook/drawee/view/SimpleDraweeView;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 73
    .line 74
    .line 75
    goto :goto_0

    .line 76
    :catch_0
    move-exception p1

    .line 77
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 78
    .line 79
    .line 80
    :goto_0
    return-void
.end method

.method private i0()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/adapter/ForumBaseAdapter;->l:Landroid/widget/LinearLayout$LayoutParams;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {p0}, Lcom/join/mgps/adapter/ForumBaseAdapter;->g0()Landroid/widget/LinearLayout$LayoutParams;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    iput-object v0, p0, Lcom/join/mgps/adapter/ForumBaseAdapter;->l:Landroid/widget/LinearLayout$LayoutParams;

    .line 10
    .line 11
    :cond_0
    return-void
.end method

.method private j(Lcom/join/mgps/base/b;Lcom/join/mgps/adapter/ForumBaseAdapter$r1;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "helper",
            "viewBean"
        }
    .end annotation

    .line 1
    :try_start_0
    invoke-virtual {p2}, Lcom/join/mgps/adapter/ForumBaseAdapter$r1;->a()Ljava/lang/Object;

    .line 2
    .line 3
    .line 4
    move-result-object p2

    .line 5
    check-cast p2, Lcom/join/mgps/adapter/ForumBaseAdapter$r1$s;

    .line 6
    .line 7
    if-nez p2, :cond_0

    .line 8
    .line 9
    return-void

    .line 10
    :cond_0
    const v0, 0x7f0a06a6

    .line 11
    .line 12
    .line 13
    invoke-virtual {p1, v0}, Lcom/join/mgps/base/b;->getView(I)Landroid/view/View;

    .line 14
    .line 15
    .line 16
    move-result-object v1

    .line 17
    check-cast v1, Landroid/widget/TextView;

    .line 18
    .line 19
    invoke-virtual {p1, v0}, Lcom/join/mgps/base/b;->getView(I)Landroid/view/View;

    .line 20
    .line 21
    .line 22
    move-result-object p1

    .line 23
    check-cast p1, Landroid/widget/TextView;

    .line 24
    .line 25
    const v0, 0x3ca3d70a    # 0.02f

    .line 26
    .line 27
    .line 28
    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setLetterSpacing(F)V

    .line 29
    .line 30
    .line 31
    iget-object p1, p0, Lcom/join/mgps/adapter/ForumBaseAdapter;->e:Landroid/content/Context;

    .line 32
    .line 33
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 34
    .line 35
    .line 36
    move-result-object p1

    .line 37
    const v0, 0x7f070b2d

    .line 38
    .line 39
    .line 40
    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    .line 41
    .line 42
    .line 43
    move-result p1

    .line 44
    int-to-float p1, p1

    .line 45
    const/4 v0, 0x0

    .line 46
    invoke-virtual {v1, v0, p1}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 47
    .line 48
    .line 49
    iget-object p1, p0, Lcom/join/mgps/adapter/ForumBaseAdapter;->e:Landroid/content/Context;

    .line 50
    .line 51
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 52
    .line 53
    .line 54
    move-result-object p1

    .line 55
    const v0, 0x7f06014e

    .line 56
    .line 57
    .line 58
    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getColor(I)I

    .line 59
    .line 60
    .line 61
    move-result p1

    .line 62
    invoke-virtual {v1, p1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 63
    .line 64
    .line 65
    const/4 p1, 0x0

    .line 66
    const v0, 0x3fb33333    # 1.4f

    .line 67
    .line 68
    .line 69
    invoke-virtual {v1, p1, v0}, Landroid/widget/TextView;->setLineSpacing(FF)V

    .line 70
    .line 71
    .line 72
    const p1, 0x7fffffff

    .line 73
    .line 74
    .line 75
    invoke-virtual {v1, p1}, Landroid/widget/TextView;->setMaxLines(I)V

    .line 76
    .line 77
    .line 78
    iget-object p1, p2, Lcom/join/mgps/adapter/ForumBaseAdapter$r1$s;->a:Landroid/text/SpannableStringBuilder;

    .line 79
    .line 80
    invoke-virtual {p1}, Landroid/text/SpannableStringBuilder;->toString()Ljava/lang/String;

    .line 81
    .line 82
    .line 83
    move-result-object p1

    .line 84
    const-string p2, "<br/>"

    .line 85
    .line 86
    const-string v0, ""

    .line 87
    .line 88
    invoke-virtual {p1, p2, v0}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    .line 89
    .line 90
    .line 91
    move-result-object p1

    .line 92
    invoke-virtual {v1, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 93
    .line 94
    .line 95
    goto :goto_0

    .line 96
    :catch_0
    move-exception p1

    .line 97
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 98
    .line 99
    .line 100
    :goto_0
    return-void
.end method

.method private j0(Landroid/widget/TextView;)V
    .locals 9
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "tv"
        }
    .end annotation

    .line 1
    invoke-static {}, Lcom/join/mgps/Util/d0;->a()Lcom/join/mgps/Util/d0;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setMovementMethod(Landroid/text/method/MovementMethod;)V

    .line 6
    .line 7
    .line 8
    invoke-virtual {p1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    instance-of v1, v0, Landroid/text/Spannable;

    .line 13
    .line 14
    if-eqz v1, :cond_4

    .line 15
    .line 16
    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    .line 17
    .line 18
    .line 19
    move-result v1

    .line 20
    invoke-virtual {p1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    .line 21
    .line 22
    .line 23
    move-result-object v2

    .line 24
    check-cast v2, Landroid/text/Spannable;

    .line 25
    .line 26
    const-class v3, Landroid/text/style/URLSpan;

    .line 27
    .line 28
    const/4 v4, 0x0

    .line 29
    invoke-interface {v2, v4, v1, v3}, Landroid/text/Spanned;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    .line 30
    .line 31
    .line 32
    move-result-object v1

    .line 33
    check-cast v1, [Landroid/text/style/URLSpan;

    .line 34
    .line 35
    array-length v3, v1

    .line 36
    if-nez v3, :cond_0

    .line 37
    .line 38
    return-void

    .line 39
    :cond_0
    new-instance v3, Landroid/text/SpannableStringBuilder;

    .line 40
    .line 41
    invoke-direct {v3, v0}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    .line 42
    .line 43
    .line 44
    array-length v0, v1

    .line 45
    :goto_0
    if-ge v4, v0, :cond_3

    .line 46
    .line 47
    aget-object v5, v1, v4

    .line 48
    .line 49
    invoke-virtual {v5}, Landroid/text/style/URLSpan;->getURL()Ljava/lang/String;

    .line 50
    .line 51
    .line 52
    move-result-object v6

    .line 53
    const-string v7, "http://"

    .line 54
    .line 55
    invoke-virtual {v6, v7}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    .line 56
    .line 57
    .line 58
    move-result v7

    .line 59
    if-eqz v7, :cond_1

    .line 60
    .line 61
    const-string v7, "https://"

    .line 62
    .line 63
    invoke-virtual {v6, v7}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    .line 64
    .line 65
    .line 66
    move-result v7

    .line 67
    if-nez v7, :cond_2

    .line 68
    .line 69
    :cond_1
    new-instance v7, Lcom/join/mgps/adapter/ForumBaseAdapter$i0;

    .line 70
    .line 71
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 72
    .line 73
    .line 74
    move-result-object v8

    .line 75
    invoke-direct {v7, p0, v8, v6}, Lcom/join/mgps/adapter/ForumBaseAdapter$i0;-><init>(Lcom/join/mgps/adapter/ForumBaseAdapter;Landroid/content/Context;Ljava/lang/String;)V

    .line 76
    .line 77
    .line 78
    invoke-interface {v2, v5}, Landroid/text/Spanned;->getSpanStart(Ljava/lang/Object;)I

    .line 79
    .line 80
    .line 81
    move-result v6

    .line 82
    invoke-interface {v2, v5}, Landroid/text/Spanned;->getSpanEnd(Ljava/lang/Object;)I

    .line 83
    .line 84
    .line 85
    move-result v5

    .line 86
    const/16 v8, 0x11

    .line 87
    .line 88
    invoke-virtual {v3, v7, v6, v5, v8}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 89
    .line 90
    .line 91
    :cond_2
    add-int/lit8 v4, v4, 0x1

    .line 92
    .line 93
    goto :goto_0

    .line 94
    :cond_3
    invoke-virtual {p1, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 95
    .line 96
    .line 97
    :cond_4
    return-void
.end method

.method private k(Lcom/join/mgps/base/b;Lcom/join/mgps/adapter/ForumBaseAdapter$r1;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "helper",
            "viewBean"
        }
    .end annotation

    .line 1
    :try_start_0
    invoke-virtual {p2}, Lcom/join/mgps/adapter/ForumBaseAdapter$r1;->a()Ljava/lang/Object;

    .line 2
    .line 3
    .line 4
    move-result-object p2

    .line 5
    check-cast p2, Lcom/join/mgps/adapter/ForumBaseAdapter$r1$t;

    .line 6
    .line 7
    if-nez p2, :cond_0

    .line 8
    .line 9
    return-void

    .line 10
    :cond_0
    const v0, 0x7f0a06a6

    .line 11
    .line 12
    .line 13
    invoke-virtual {p1, v0}, Lcom/join/mgps/base/b;->getView(I)Landroid/view/View;

    .line 14
    .line 15
    .line 16
    move-result-object p1

    .line 17
    check-cast p1, Landroid/widget/TextView;

    .line 18
    .line 19
    iget-object p2, p2, Lcom/join/mgps/adapter/ForumBaseAdapter$r1$t;->a:Landroid/text/Spanned;

    .line 20
    .line 21
    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 22
    .line 23
    .line 24
    goto :goto_0

    .line 25
    :catch_0
    move-exception p1

    .line 26
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 27
    .line 28
    .line 29
    :goto_0
    return-void
.end method

.method private k0(Landroid/widget/TextView;I)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x10
        }
        names = {
            "textView",
            "pid"
        }
    .end annotation

    .line 1
    new-instance v0, Lcom/join/mgps/adapter/ForumBaseAdapter$z;

    .line 2
    .line 3
    invoke-direct {v0, p0, p2}, Lcom/join/mgps/adapter/ForumBaseAdapter$z;-><init>(Lcom/join/mgps/adapter/ForumBaseAdapter;I)V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p1, v0}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 7
    .line 8
    .line 9
    return-void
.end method

.method private l(Lcom/join/mgps/base/b;Lcom/join/mgps/adapter/ForumBaseAdapter$r1;)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "helper",
            "viewBean"
        }
    .end annotation

    .line 1
    :try_start_0
    invoke-virtual {p2}, Lcom/join/mgps/adapter/ForumBaseAdapter$r1;->a()Ljava/lang/Object;

    .line 2
    .line 3
    .line 4
    move-result-object p2

    .line 5
    check-cast p2, Lcom/join/mgps/adapter/ForumBaseAdapter$r1$u;

    .line 6
    .line 7
    if-nez p2, :cond_0

    .line 8
    .line 9
    return-void

    .line 10
    :cond_0
    iget-object p2, p2, Lcom/join/mgps/adapter/ForumBaseAdapter$r1$u;->a:Ljava/lang/String;

    .line 11
    .line 12
    const v0, 0x7f0a015d

    .line 13
    .line 14
    .line 15
    invoke-virtual {p1, v0}, Lcom/join/mgps/base/b;->getView(I)Landroid/view/View;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    check-cast v0, Lcom/facebook/drawee/view/SimpleDraweeView;

    .line 20
    .line 21
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->getLayoutPosition()I

    .line 22
    .line 23
    .line 24
    move-result p1

    .line 25
    if-eqz v0, :cond_1

    .line 26
    .line 27
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 28
    .line 29
    .line 30
    move-result-object p1

    .line 31
    invoke-virtual {v0, p1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 32
    .line 33
    .line 34
    new-instance p1, Landroid/widget/RelativeLayout$LayoutParams;

    .line 35
    .line 36
    iget v1, p0, Lcom/join/mgps/adapter/ForumBaseAdapter;->m:I

    .line 37
    .line 38
    const/4 v2, -0x1

    .line 39
    invoke-direct {p1, v2, v1}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 40
    .line 41
    .line 42
    invoke-virtual {v0, p1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 43
    .line 44
    .line 45
    sget-object p1, Landroid/widget/ImageView$ScaleType;->FIT_XY:Landroid/widget/ImageView$ScaleType;

    .line 46
    .line 47
    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 48
    .line 49
    .line 50
    const p1, 0x7f081349

    .line 51
    .line 52
    .line 53
    invoke-static {v0, p1, p2}, Lcom/join/android/app/common/utils/l;->d(Lcom/facebook/drawee/view/SimpleDraweeView;ILjava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 54
    .line 55
    .line 56
    goto :goto_0

    .line 57
    :catch_0
    move-exception p1

    .line 58
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 59
    .line 60
    .line 61
    :cond_1
    :goto_0
    return-void
.end method

.method private n(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
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
    const-string p3, ""

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
    check-cast v0, Lcom/join/mgps/adapter/ForumBaseAdapter$h0;

    .line 10
    .line 11
    goto :goto_0

    .line 12
    :cond_0
    new-instance v0, Lcom/join/mgps/adapter/ForumBaseAdapter$h0;

    .line 13
    .line 14
    invoke-direct {v0, p0}, Lcom/join/mgps/adapter/ForumBaseAdapter$h0;-><init>(Lcom/join/mgps/adapter/ForumBaseAdapter;)V

    .line 15
    .line 16
    .line 17
    iget-object p2, p0, Lcom/join/mgps/adapter/ForumBaseAdapter;->e:Landroid/content/Context;

    .line 18
    .line 19
    invoke-static {p2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    .line 20
    .line 21
    .line 22
    move-result-object p2

    .line 23
    const v1, 0x7f0d06e2

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
    const v1, 0x7f0a14da

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
    iput-object v1, v0, Lcom/join/mgps/adapter/ForumBaseAdapter$h0;->b:Landroid/widget/TextView;

    .line 41
    .line 42
    const v1, 0x7f0a14d9

    .line 43
    .line 44
    .line 45
    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 46
    .line 47
    .line 48
    move-result-object v1

    .line 49
    check-cast v1, Landroid/widget/TextView;

    .line 50
    .line 51
    iput-object v1, v0, Lcom/join/mgps/adapter/ForumBaseAdapter$h0;->h:Landroid/widget/TextView;

    .line 52
    .line 53
    const v1, 0x7f0a0683

    .line 54
    .line 55
    .line 56
    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 57
    .line 58
    .line 59
    move-result-object v1

    .line 60
    check-cast v1, Landroid/widget/RelativeLayout;

    .line 61
    .line 62
    iput-object v1, v0, Lcom/join/mgps/adapter/ForumBaseAdapter$h0;->g:Landroid/widget/RelativeLayout;

    .line 63
    .line 64
    const v1, 0x7f0a08fb

    .line 65
    .line 66
    .line 67
    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 68
    .line 69
    .line 70
    move-result-object v1

    .line 71
    check-cast v1, Lcom/facebook/drawee/view/SimpleDraweeView;

    .line 72
    .line 73
    iput-object v1, v0, Lcom/join/mgps/adapter/ForumBaseAdapter$h0;->c:Lcom/facebook/drawee/view/SimpleDraweeView;

    .line 74
    .line 75
    const v1, 0x7f0a08fc

    .line 76
    .line 77
    .line 78
    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 79
    .line 80
    .line 81
    move-result-object v1

    .line 82
    check-cast v1, Lcom/facebook/drawee/view/SimpleDraweeView;

    .line 83
    .line 84
    iput-object v1, v0, Lcom/join/mgps/adapter/ForumBaseAdapter$h0;->d:Lcom/facebook/drawee/view/SimpleDraweeView;

    .line 85
    .line 86
    const v1, 0x7f0a08fd

    .line 87
    .line 88
    .line 89
    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 90
    .line 91
    .line 92
    move-result-object v1

    .line 93
    check-cast v1, Lcom/facebook/drawee/view/SimpleDraweeView;

    .line 94
    .line 95
    iput-object v1, v0, Lcom/join/mgps/adapter/ForumBaseAdapter$h0;->e:Lcom/facebook/drawee/view/SimpleDraweeView;

    .line 96
    .line 97
    invoke-virtual {p2, v0}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 98
    .line 99
    .line 100
    :goto_0
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/join/mgps/adapter/ForumBaseAdapter;->getItem(I)Ljava/lang/Object;

    .line 101
    .line 102
    .line 103
    move-result-object p1

    .line 104
    check-cast p1, Lcom/join/mgps/adapter/ForumBaseAdapter$r1$a;

    .line 105
    .line 106
    if-eqz p1, :cond_7

    .line 107
    .line 108
    iget-object v1, p1, Lcom/join/mgps/adapter/ForumBaseAdapter$r1$a;->a:Lcom/join/mgps/dto/ForumBean$ForumWelcomeAdBean;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 109
    .line 110
    if-nez v1, :cond_1

    .line 111
    .line 112
    goto/16 :goto_6

    .line 113
    .line 114
    :cond_1
    const/4 v2, 0x0

    .line 115
    :try_start_1
    invoke-virtual {v1}, Lcom/join/mgps/dto/ForumBean$ForumWelcomeAdBean;->getTitle()Ljava/lang/String;

    .line 116
    .line 117
    .line 118
    move-result-object v1

    .line 119
    new-instance v3, Landroid/text/SpannableStringBuilder;

    .line 120
    .line 121
    invoke-direct {v3}, Landroid/text/SpannableStringBuilder;-><init>()V

    .line 122
    .line 123
    .line 124
    const-string v4, "\u76f4\u64ad"

    .line 125
    .line 126
    const-string v5, "#f38548"

    .line 127
    .line 128
    new-instance v6, Landroid/text/SpannableString;

    .line 129
    .line 130
    invoke-direct {v6, v4}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    .line 131
    .line 132
    .line 133
    iget-object v4, p0, Lcom/join/mgps/adapter/ForumBaseAdapter;->e:Landroid/content/Context;

    .line 134
    .line 135
    new-instance v7, Ljava/lang/StringBuilder;

    .line 136
    .line 137
    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    .line 138
    .line 139
    .line 140
    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 141
    .line 142
    .line 143
    invoke-virtual {v7, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 144
    .line 145
    .line 146
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 147
    .line 148
    .line 149
    move-result-object v5

    .line 150
    invoke-static {v4, v5}, Lcom/join/mgps/Util/z2;->a(Landroid/content/Context;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    .line 151
    .line 152
    .line 153
    move-result-object v4

    .line 154
    invoke-static {v4}, Lcom/join/mgps/Util/r0;->S(Landroid/graphics/drawable/Drawable;)Landroid/text/style/ImageSpan;

    .line 155
    .line 156
    .line 157
    move-result-object v4

    .line 158
    invoke-virtual {v6}, Landroid/text/SpannableString;->length()I

    .line 159
    .line 160
    .line 161
    move-result v5

    .line 162
    const/16 v7, 0x21

    .line 163
    .line 164
    invoke-virtual {v6, v4, v2, v5, v7}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    .line 165
    .line 166
    .line 167
    invoke-static {v1}, Lcom/join/mgps/Util/t2;->h(Ljava/lang/String;)Z

    .line 168
    .line 169
    .line 170
    move-result v4

    .line 171
    if-eqz v4, :cond_2

    .line 172
    .line 173
    invoke-virtual {v3, v6}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 174
    .line 175
    .line 176
    goto :goto_1

    .line 177
    :cond_2
    invoke-virtual {v3, v6}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 178
    .line 179
    .line 180
    new-instance v4, Ljava/lang/StringBuilder;

    .line 181
    .line 182
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 183
    .line 184
    .line 185
    const-string v5, " "

    .line 186
    .line 187
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 188
    .line 189
    .line 190
    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 191
    .line 192
    .line 193
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 194
    .line 195
    .line 196
    move-result-object v1

    .line 197
    invoke-virtual {v3, v1}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 198
    .line 199
    .line 200
    :goto_1
    iget-object v1, v0, Lcom/join/mgps/adapter/ForumBaseAdapter$h0;->b:Landroid/widget/TextView;

    .line 201
    .line 202
    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 203
    .line 204
    .line 205
    iget-object v1, p1, Lcom/join/mgps/adapter/ForumBaseAdapter$r1$a;->a:Lcom/join/mgps/dto/ForumBean$ForumWelcomeAdBean;

    .line 206
    .line 207
    invoke-virtual {v1}, Lcom/join/mgps/dto/ForumBean$ForumWelcomeAdBean;->getSub_title()Ljava/lang/String;

    .line 208
    .line 209
    .line 210
    move-result-object v1

    .line 211
    invoke-static {v1}, Lcom/join/mgps/Util/t2;->h(Ljava/lang/String;)Z

    .line 212
    .line 213
    .line 214
    move-result v3

    .line 215
    if-eqz v3, :cond_3

    .line 216
    .line 217
    goto :goto_2

    .line 218
    :cond_3
    move-object p3, v1

    .line 219
    :goto_2
    iget-object v1, v0, Lcom/join/mgps/adapter/ForumBaseAdapter$h0;->h:Landroid/widget/TextView;

    .line 220
    .line 221
    invoke-virtual {v1, p3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 222
    .line 223
    .line 224
    iget-object p3, v0, Lcom/join/mgps/adapter/ForumBaseAdapter$h0;->g:Landroid/widget/RelativeLayout;

    .line 225
    .line 226
    iget-object v1, p1, Lcom/join/mgps/adapter/ForumBaseAdapter$r1$a;->a:Lcom/join/mgps/dto/ForumBean$ForumWelcomeAdBean;

    .line 227
    .line 228
    invoke-virtual {v1}, Lcom/join/mgps/dto/ForumBean$ForumWelcomeAdBean;->getTitle()Ljava/lang/String;

    .line 229
    .line 230
    .line 231
    move-result-object v1

    .line 232
    invoke-direct {p0, p3, v1}, Lcom/join/mgps/adapter/ForumBaseAdapter;->D0(Landroid/view/View;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 233
    .line 234
    .line 235
    goto :goto_3

    .line 236
    :catch_0
    move-exception p3

    .line 237
    :try_start_2
    invoke-virtual {p3}, Ljava/lang/Throwable;->printStackTrace()V

    .line 238
    .line 239
    .line 240
    :goto_3
    const/4 p3, 0x3

    .line 241
    new-array v1, p3, [Lcom/facebook/drawee/view/SimpleDraweeView;

    .line 242
    .line 243
    iget-object v3, v0, Lcom/join/mgps/adapter/ForumBaseAdapter$h0;->c:Lcom/facebook/drawee/view/SimpleDraweeView;

    .line 244
    .line 245
    aput-object v3, v1, v2

    .line 246
    .line 247
    iget-object v3, v0, Lcom/join/mgps/adapter/ForumBaseAdapter$h0;->d:Lcom/facebook/drawee/view/SimpleDraweeView;

    .line 248
    .line 249
    const/4 v4, 0x1

    .line 250
    aput-object v3, v1, v4

    .line 251
    .line 252
    iget-object v0, v0, Lcom/join/mgps/adapter/ForumBaseAdapter$h0;->e:Lcom/facebook/drawee/view/SimpleDraweeView;

    .line 253
    .line 254
    const/4 v3, 0x2

    .line 255
    aput-object v0, v1, v3

    .line 256
    .line 257
    const/4 v0, 0x0

    .line 258
    const/4 v3, 0x0

    .line 259
    :goto_4
    if-ge v0, p3, :cond_8

    .line 260
    .line 261
    aget-object v5, v1, v0

    .line 262
    .line 263
    iget-object v6, p1, Lcom/join/mgps/adapter/ForumBaseAdapter$r1$a;->a:Lcom/join/mgps/dto/ForumBean$ForumWelcomeAdBean;

    .line 264
    .line 265
    invoke-virtual {v6}, Lcom/join/mgps/dto/ForumBean$ForumWelcomeAdBean;->getAdBeans()Ljava/util/List;

    .line 266
    .line 267
    .line 268
    move-result-object v6

    .line 269
    invoke-interface {v6}, Ljava/util/List;->size()I

    .line 270
    .line 271
    .line 272
    move-result v6

    .line 273
    const/16 v7, 0x8

    .line 274
    .line 275
    if-ge v0, v6, :cond_5

    .line 276
    .line 277
    iget-object v5, p1, Lcom/join/mgps/adapter/ForumBaseAdapter$r1$a;->a:Lcom/join/mgps/dto/ForumBean$ForumWelcomeAdBean;

    .line 278
    .line 279
    invoke-virtual {v5}, Lcom/join/mgps/dto/ForumBean$ForumWelcomeAdBean;->getAdBeans()Ljava/util/List;

    .line 280
    .line 281
    .line 282
    move-result-object v5

    .line 283
    invoke-interface {v5, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 284
    .line 285
    .line 286
    move-result-object v5

    .line 287
    check-cast v5, Lcom/join/mgps/dto/BannerBean;

    .line 288
    .line 289
    invoke-virtual {v5}, Lcom/join/mgps/dto/BannerBean;->getAd_switch()I

    .line 290
    .line 291
    .line 292
    move-result v6

    .line 293
    if-ne v6, v4, :cond_4

    .line 294
    .line 295
    aget-object v6, v1, v3

    .line 296
    .line 297
    invoke-virtual {v6, v2}, Landroid/view/View;->setVisibility(I)V

    .line 298
    .line 299
    .line 300
    aget-object v6, v1, v3

    .line 301
    .line 302
    invoke-direct {p0, v6, v5, v3}, Lcom/join/mgps/adapter/ForumBaseAdapter;->v0(Lcom/facebook/drawee/view/SimpleDraweeView;Lcom/join/mgps/dto/BannerBean;I)V

    .line 303
    .line 304
    .line 305
    add-int/lit8 v3, v3, 0x1

    .line 306
    .line 307
    goto :goto_5

    .line 308
    :cond_4
    rsub-int/lit8 v5, v3, 0x3

    .line 309
    .line 310
    sub-int/2addr v5, v4

    .line 311
    if-ge v5, p3, :cond_6

    .line 312
    .line 313
    if-ltz v5, :cond_6

    .line 314
    .line 315
    aget-object v5, v1, v5

    .line 316
    .line 317
    invoke-virtual {v5, v7}, Landroid/view/View;->setVisibility(I)V

    .line 318
    .line 319
    .line 320
    goto :goto_5

    .line 321
    :cond_5
    invoke-virtual {v5, v7}, Landroid/view/View;->setVisibility(I)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    .line 322
    .line 323
    .line 324
    :cond_6
    :goto_5
    add-int/lit8 v0, v0, 0x1

    .line 325
    .line 326
    goto :goto_4

    .line 327
    :cond_7
    :goto_6
    return-object p2

    .line 328
    :catch_1
    move-exception p1

    .line 329
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 330
    .line 331
    .line 332
    :cond_8
    return-object p2
.end method

.method private synthetic n0(Lcom/join/mgps/adapter/ForumBaseAdapter$r1$w;Landroid/view/View;)V
    .locals 1

    .line 1
    iget-object p2, p1, Lcom/join/mgps/adapter/ForumBaseAdapter$r1$w;->d:Ljava/lang/String;

    .line 2
    .line 3
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 4
    .line 5
    .line 6
    move-result p2

    .line 7
    if-nez p2, :cond_0

    .line 8
    .line 9
    new-instance p2, Lcom/join/mgps/Util/IntentDateBean;

    .line 10
    .line 11
    invoke-direct {p2}, Lcom/join/mgps/Util/IntentDateBean;-><init>()V

    .line 12
    .line 13
    .line 14
    const/4 v0, 0x4

    .line 15
    invoke-virtual {p2, v0}, Lcom/join/mgps/Util/IntentDateBean;->setLink_type(I)V

    .line 16
    .line 17
    .line 18
    iget-object p1, p1, Lcom/join/mgps/adapter/ForumBaseAdapter$r1$w;->d:Ljava/lang/String;

    .line 19
    .line 20
    invoke-virtual {p2, p1}, Lcom/join/mgps/Util/IntentDateBean;->setLink_type_val(Ljava/lang/String;)V

    .line 21
    .line 22
    .line 23
    invoke-static {}, Lcom/join/mgps/Util/IntentUtil;->getInstance()Lcom/join/mgps/Util/IntentUtil;

    .line 24
    .line 25
    .line 26
    move-result-object p1

    .line 27
    iget-object v0, p0, Lcom/join/mgps/adapter/ForumBaseAdapter;->e:Landroid/content/Context;

    .line 28
    .line 29
    invoke-virtual {p1, v0, p2}, Lcom/join/mgps/Util/IntentUtil;->intentActivity(Landroid/content/Context;Lcom/join/mgps/Util/IntentDateBean;)V

    .line 30
    .line 31
    .line 32
    :cond_0
    return-void
.end method

.method private o(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 0
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
    return-object p2
.end method

.method private p0(Lcom/join/mgps/dto/RecommendLabelTag;ZILjava/lang/String;)Landroid/view/View;
    .locals 7
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10,
            0x10,
            0x10
        }
        names = {
            "tag",
            "allTag",
            "fid",
            "fname"
        }
    .end annotation

    .line 1
    const-string v0, "#"

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    :try_start_0
    iget-object v2, p0, Lcom/join/mgps/adapter/ForumBaseAdapter;->e:Landroid/content/Context;

    .line 5
    .line 6
    const v3, 0x7f0d0274

    .line 7
    .line 8
    .line 9
    invoke-static {v2, v3, v1}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 10
    .line 11
    .line 12
    move-result-object v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2

    .line 13
    :try_start_1
    new-instance v3, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 14
    .line 15
    const/4 v4, -0x2

    .line 16
    invoke-direct {v3, v4, v4}, Landroid/view/ViewGroup$MarginLayoutParams;-><init>(II)V

    .line 17
    .line 18
    .line 19
    iget-object v4, p0, Lcom/join/mgps/adapter/ForumBaseAdapter;->e:Landroid/content/Context;

    .line 20
    .line 21
    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 22
    .line 23
    .line 24
    move-result-object v4

    .line 25
    invoke-virtual {v4}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    .line 26
    .line 27
    .line 28
    move-result-object v4

    .line 29
    const/4 v5, 0x1

    .line 30
    const/high16 v6, 0x41400000    # 12.0f

    .line 31
    .line 32
    invoke-static {v5, v6, v4}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    .line 33
    .line 34
    .line 35
    move-result v4

    .line 36
    float-to-int v4, v4

    .line 37
    iput v4, v3, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    .line 38
    .line 39
    iget-object v4, p0, Lcom/join/mgps/adapter/ForumBaseAdapter;->e:Landroid/content/Context;

    .line 40
    .line 41
    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 42
    .line 43
    .line 44
    move-result-object v4

    .line 45
    invoke-virtual {v4}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    .line 46
    .line 47
    .line 48
    move-result-object v4

    .line 49
    const/high16 v6, 0x41700000    # 15.0f

    .line 50
    .line 51
    invoke-static {v5, v6, v4}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    .line 52
    .line 53
    .line 54
    move-result v4

    .line 55
    float-to-int v4, v4

    .line 56
    iput v4, v3, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    .line 57
    .line 58
    invoke-virtual {v2, v3}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 59
    .line 60
    .line 61
    const v3, 0x7f0a167a

    .line 62
    .line 63
    .line 64
    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 65
    .line 66
    .line 67
    move-result-object v3

    .line 68
    check-cast v3, Landroid/widget/TextView;

    .line 69
    .line 70
    if-nez v3, :cond_0

    .line 71
    .line 72
    return-object v1

    .line 73
    :cond_0
    const v4, 0x7f0604e5

    .line 74
    .line 75
    .line 76
    invoke-virtual {v3, v4}, Landroid/view/View;->setBackgroundResource(I)V

    .line 77
    .line 78
    .line 79
    const-string v4, "#3CA4FD"

    .line 80
    .line 81
    invoke-static {v4}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    .line 82
    .line 83
    .line 84
    move-result v4

    .line 85
    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setTextColor(I)V

    .line 86
    .line 87
    .line 88
    new-instance v4, Ljava/lang/StringBuilder;

    .line 89
    .line 90
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 91
    .line 92
    .line 93
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 94
    .line 95
    .line 96
    invoke-virtual {p1}, Lcom/join/mgps/dto/RecommendLabelTag;->getTag_name()Ljava/lang/String;

    .line 97
    .line 98
    .line 99
    move-result-object v6

    .line 100
    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 101
    .line 102
    .line 103
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 104
    .line 105
    .line 106
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 107
    .line 108
    .line 109
    move-result-object v0
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 110
    if-eqz p2, :cond_1

    .line 111
    .line 112
    :try_start_2
    invoke-virtual {v3}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 113
    .line 114
    .line 115
    move-result-object p2

    .line 116
    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 117
    .line 118
    .line 119
    move-result-object p2

    .line 120
    const v4, 0x7f080ce9

    .line 121
    .line 122
    .line 123
    invoke-virtual {p2, v4}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    .line 124
    .line 125
    .line 126
    move-result-object p2

    .line 127
    invoke-virtual {v3, p2, v1, v1, v1}, Landroid/widget/TextView;->setCompoundDrawablesWithIntrinsicBounds(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 128
    .line 129
    .line 130
    invoke-virtual {v3}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 131
    .line 132
    .line 133
    move-result-object p2

    .line 134
    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 135
    .line 136
    .line 137
    move-result-object p2

    .line 138
    invoke-virtual {p2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    .line 139
    .line 140
    .line 141
    move-result-object p2

    .line 142
    const/high16 v1, 0x40000000    # 2.0f

    .line 143
    .line 144
    invoke-static {v5, v1, p2}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    .line 145
    .line 146
    .line 147
    move-result p2

    .line 148
    float-to-int p2, p2

    .line 149
    invoke-virtual {v3, p2}, Landroid/widget/TextView;->setCompoundDrawablePadding(I)V

    .line 150
    .line 151
    .line 152
    const p2, 0x7f08116a

    .line 153
    .line 154
    .line 155
    invoke-virtual {v3, p2}, Landroid/view/View;->setBackgroundResource(I)V

    .line 156
    .line 157
    .line 158
    const-string p2, "#FFFF4343"

    .line 159
    .line 160
    invoke-static {p2}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    .line 161
    .line 162
    .line 163
    move-result p2

    .line 164
    invoke-virtual {v3, p2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 165
    .line 166
    .line 167
    invoke-virtual {p1}, Lcom/join/mgps/dto/RecommendLabelTag;->getTag_name()Ljava/lang/String;

    .line 168
    .line 169
    .line 170
    move-result-object p2

    .line 171
    move-object v0, p2

    .line 172
    goto :goto_0

    .line 173
    :cond_1
    invoke-virtual {v3}, Landroid/widget/TextView;->getPaint()Landroid/text/TextPaint;

    .line 174
    .line 175
    .line 176
    move-result-object p2

    .line 177
    const/4 v1, 0x0

    .line 178
    invoke-virtual {p2, v1}, Landroid/graphics/Paint;->setFakeBoldText(Z)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .line 179
    .line 180
    .line 181
    goto :goto_0

    .line 182
    :catch_0
    move-exception p2

    .line 183
    :try_start_3
    invoke-virtual {p2}, Ljava/lang/Throwable;->printStackTrace()V

    .line 184
    .line 185
    .line 186
    :goto_0
    invoke-virtual {v3, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 187
    .line 188
    .line 189
    new-instance p2, Lcom/join/mgps/adapter/ForumBaseAdapter$y;

    .line 190
    .line 191
    invoke-direct {p2, p0, p1, p3, p4}, Lcom/join/mgps/adapter/ForumBaseAdapter$y;-><init>(Lcom/join/mgps/adapter/ForumBaseAdapter;Lcom/join/mgps/dto/RecommendLabelTag;ILjava/lang/String;)V

    .line 192
    .line 193
    .line 194
    invoke-virtual {v3, p2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    .line 195
    .line 196
    .line 197
    goto :goto_2

    .line 198
    :catch_1
    move-exception p1

    .line 199
    move-object v1, v2

    .line 200
    goto :goto_1

    .line 201
    :catch_2
    move-exception p1

    .line 202
    :goto_1
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 203
    .line 204
    .line 205
    move-object v2, v1

    .line 206
    :goto_2
    return-object v2
.end method

.method private q(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
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
    check-cast p3, Lcom/join/mgps/adapter/ForumBaseAdapter$m0;

    .line 8
    .line 9
    goto :goto_0

    .line 10
    :cond_0
    new-instance p3, Lcom/join/mgps/adapter/ForumBaseAdapter$m0;

    .line 11
    .line 12
    invoke-direct {p3, p0}, Lcom/join/mgps/adapter/ForumBaseAdapter$m0;-><init>(Lcom/join/mgps/adapter/ForumBaseAdapter;)V

    .line 13
    .line 14
    .line 15
    iget-object p2, p0, Lcom/join/mgps/adapter/ForumBaseAdapter;->e:Landroid/content/Context;

    .line 16
    .line 17
    invoke-static {p2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    .line 18
    .line 19
    .line 20
    move-result-object p2

    .line 21
    const v0, 0x7f0d06e4

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
    const v0, 0x7f0a0e84

    .line 30
    .line 31
    .line 32
    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 33
    .line 34
    .line 35
    move-result-object v0

    .line 36
    check-cast v0, Lit/sephiroth/android/library/widget/HListView;

    .line 37
    .line 38
    iput-object v0, p3, Lcom/join/mgps/adapter/ForumBaseAdapter$m0;->c:Lit/sephiroth/android/library/widget/HListView;

    .line 39
    .line 40
    const v0, 0x7f0a14da

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
    iput-object v0, p3, Lcom/join/mgps/adapter/ForumBaseAdapter$m0;->b:Landroid/widget/TextView;

    .line 50
    .line 51
    invoke-virtual {p2, p3}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 52
    .line 53
    .line 54
    :goto_0
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/join/mgps/adapter/ForumBaseAdapter;->getItem(I)Ljava/lang/Object;

    .line 55
    .line 56
    .line 57
    move-result-object p1

    .line 58
    check-cast p1, Lcom/join/mgps/adapter/ForumBaseAdapter$r1$b;

    .line 59
    .line 60
    iget-object v0, p3, Lcom/join/mgps/adapter/ForumBaseAdapter$m0;->b:Landroid/widget/TextView;

    .line 61
    .line 62
    const-string v1, "\u7cbe\u5f69\u8bdd\u9898"

    .line 63
    .line 64
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 65
    .line 66
    .line 67
    if-nez p1, :cond_1

    .line 68
    .line 69
    const/16 p1, 0x8

    .line 70
    .line 71
    invoke-virtual {p2, p1}, Landroid/view/View;->setVisibility(I)V

    .line 72
    .line 73
    .line 74
    return-object p2

    .line 75
    :cond_1
    const/4 v0, 0x0

    .line 76
    invoke-virtual {p2, v0}, Landroid/view/View;->setVisibility(I)V

    .line 77
    .line 78
    .line 79
    iget-object v0, p3, Lcom/join/mgps/adapter/ForumBaseAdapter$m0;->c:Lit/sephiroth/android/library/widget/HListView;

    .line 80
    .line 81
    invoke-virtual {v0}, Lit/sephiroth/android/library/widget/HListView;->getAdapter()Landroid/widget/ListAdapter;

    .line 82
    .line 83
    .line 84
    move-result-object v0

    .line 85
    check-cast v0, Lcom/join/mgps/adapter/ForumBaseAdapter$l0;

    .line 86
    .line 87
    if-nez v0, :cond_2

    .line 88
    .line 89
    new-instance v0, Lcom/join/mgps/adapter/ForumBaseAdapter$l0;

    .line 90
    .line 91
    invoke-direct {v0, p0}, Lcom/join/mgps/adapter/ForumBaseAdapter$l0;-><init>(Lcom/join/mgps/adapter/ForumBaseAdapter;)V

    .line 92
    .line 93
    .line 94
    iget-object p3, p3, Lcom/join/mgps/adapter/ForumBaseAdapter$m0;->c:Lit/sephiroth/android/library/widget/HListView;

    .line 95
    .line 96
    invoke-virtual {p3, v0}, Lit/sephiroth/android/library/widget/HListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 97
    .line 98
    .line 99
    :cond_2
    iget-object p1, p1, Lcom/join/mgps/adapter/ForumBaseAdapter$r1$b;->a:Ljava/util/List;

    .line 100
    .line 101
    invoke-virtual {v0, p1}, Lcom/join/mgps/adapter/ForumBaseAdapter$l0;->b(Ljava/util/List;)V

    .line 102
    .line 103
    .line 104
    invoke-virtual {v0}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 105
    .line 106
    .line 107
    goto :goto_1

    .line 108
    :catch_0
    move-exception p1

    .line 109
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 110
    .line 111
    .line 112
    :goto_1
    return-object p2
.end method

.method private q0(Lcom/join/mgps/adapter/ForumBaseAdapter$c1;ZII)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x0,
            0x0,
            0x10
        }
        names = {
            "holder",
            "like",
            "count",
            "pid"
        }
    .end annotation

    .line 1
    iget-object v0, p1, Lcom/join/mgps/adapter/ForumBaseAdapter$c1;->d:Landroid/widget/TextView;

    .line 2
    .line 3
    iget-object v1, p1, Lcom/join/mgps/adapter/ForumBaseAdapter$c1;->i:Landroid/widget/ImageView;

    .line 4
    .line 5
    const-string v2, ""

    .line 6
    .line 7
    if-eqz p2, :cond_0

    .line 8
    .line 9
    const p2, 0x7f080c51

    .line 10
    .line 11
    .line 12
    invoke-virtual {v1, p2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 13
    .line 14
    .line 15
    new-instance p2, Ljava/lang/StringBuilder;

    .line 16
    .line 17
    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    .line 18
    .line 19
    .line 20
    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 21
    .line 22
    .line 23
    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 24
    .line 25
    .line 26
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 27
    .line 28
    .line 29
    move-result-object p2

    .line 30
    invoke-virtual {v0, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 31
    .line 32
    .line 33
    goto :goto_0

    .line 34
    :cond_0
    const p2, 0x7f081320

    .line 35
    .line 36
    .line 37
    invoke-virtual {v1, p2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 38
    .line 39
    .line 40
    new-instance p2, Ljava/lang/StringBuilder;

    .line 41
    .line 42
    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    .line 43
    .line 44
    .line 45
    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 46
    .line 47
    .line 48
    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 49
    .line 50
    .line 51
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 52
    .line 53
    .line 54
    move-result-object p2

    .line 55
    invoke-virtual {v0, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 56
    .line 57
    .line 58
    :goto_0
    iget-object p2, p1, Lcom/join/mgps/adapter/ForumBaseAdapter$c1;->d:Landroid/widget/TextView;

    .line 59
    .line 60
    invoke-virtual {p2}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    .line 61
    .line 62
    .line 63
    move-result-object p2

    .line 64
    check-cast p2, Landroid/view/View;

    .line 65
    .line 66
    new-instance p3, Lcom/join/mgps/adapter/ForumBaseAdapter$f;

    .line 67
    .line 68
    invoke-direct {p3, p0, p1, p4}, Lcom/join/mgps/adapter/ForumBaseAdapter$f;-><init>(Lcom/join/mgps/adapter/ForumBaseAdapter;Lcom/join/mgps/adapter/ForumBaseAdapter$c1;I)V

    .line 69
    .line 70
    .line 71
    invoke-virtual {p2, p3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 72
    .line 73
    .line 74
    return-void
.end method

.method private r(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
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
    check-cast p3, Lcom/join/mgps/adapter/ForumBaseAdapter$n0;

    .line 8
    .line 9
    goto :goto_0

    .line 10
    :cond_0
    new-instance p3, Lcom/join/mgps/adapter/ForumBaseAdapter$n0;

    .line 11
    .line 12
    invoke-direct {p3, p0}, Lcom/join/mgps/adapter/ForumBaseAdapter$n0;-><init>(Lcom/join/mgps/adapter/ForumBaseAdapter;)V

    .line 13
    .line 14
    .line 15
    iget-object p2, p0, Lcom/join/mgps/adapter/ForumBaseAdapter;->e:Landroid/content/Context;

    .line 16
    .line 17
    invoke-static {p2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    .line 18
    .line 19
    .line 20
    move-result-object p2

    .line 21
    const v0, 0x7f0d06a7

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
    const v0, 0x7f0a0697

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
    iput-object v0, p3, Lcom/join/mgps/adapter/ForumBaseAdapter$n0;->b:Lcom/facebook/drawee/view/SimpleDraweeView;

    .line 39
    .line 40
    const v0, 0x7f0a069a

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
    iput-object v0, p3, Lcom/join/mgps/adapter/ForumBaseAdapter$n0;->c:Landroid/widget/TextView;

    .line 50
    .line 51
    const v0, 0x7f0a0693

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
    iput-object v0, p3, Lcom/join/mgps/adapter/ForumBaseAdapter$n0;->d:Landroid/widget/TextView;

    .line 61
    .line 62
    const v0, 0x7f0a0446

    .line 63
    .line 64
    .line 65
    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 66
    .line 67
    .line 68
    move-result-object v0

    .line 69
    check-cast v0, Landroid/widget/TextView;

    .line 70
    .line 71
    iput-object v0, p3, Lcom/join/mgps/adapter/ForumBaseAdapter$n0;->e:Landroid/widget/TextView;

    .line 72
    .line 73
    const v0, 0x7f0a011d

    .line 74
    .line 75
    .line 76
    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 77
    .line 78
    .line 79
    move-result-object v0

    .line 80
    iput-object v0, p3, Lcom/join/mgps/adapter/ForumBaseAdapter$n0;->f:Landroid/view/View;

    .line 81
    .line 82
    invoke-virtual {p2, p3}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 83
    .line 84
    .line 85
    :goto_0
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/join/mgps/adapter/ForumBaseAdapter;->getItem(I)Ljava/lang/Object;

    .line 86
    .line 87
    .line 88
    move-result-object p1

    .line 89
    check-cast p1, Lcom/join/mgps/adapter/ForumBaseAdapter$r1$d0;

    .line 90
    .line 91
    if-nez p1, :cond_1

    .line 92
    .line 93
    return-object p2

    .line 94
    :cond_1
    iget-object v0, p3, Lcom/join/mgps/adapter/ForumBaseAdapter$n0;->b:Lcom/facebook/drawee/view/SimpleDraweeView;

    .line 95
    .line 96
    iget-object v1, p1, Lcom/join/mgps/adapter/ForumBaseAdapter$r1$d0;->a:Ljava/lang/String;

    .line 97
    .line 98
    invoke-static {v0, v1}, Lcom/join/android/app/common/utils/l;->h(Lcom/facebook/drawee/view/SimpleDraweeView;Ljava/lang/String;)V

    .line 99
    .line 100
    .line 101
    iget-object v0, p3, Lcom/join/mgps/adapter/ForumBaseAdapter$n0;->c:Landroid/widget/TextView;

    .line 102
    .line 103
    iget-object v1, p1, Lcom/join/mgps/adapter/ForumBaseAdapter$r1$d0;->b:Ljava/lang/String;

    .line 104
    .line 105
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 106
    .line 107
    .line 108
    iget-object v0, p3, Lcom/join/mgps/adapter/ForumBaseAdapter$n0;->d:Landroid/widget/TextView;

    .line 109
    .line 110
    iget-object v1, p1, Lcom/join/mgps/adapter/ForumBaseAdapter$r1$d0;->c:Ljava/lang/String;

    .line 111
    .line 112
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 113
    .line 114
    .line 115
    iget v0, p1, Lcom/join/mgps/adapter/ForumBaseAdapter$r1$d0;->e:I

    .line 116
    .line 117
    if-lez v0, :cond_2

    .line 118
    .line 119
    iget-object v0, p3, Lcom/join/mgps/adapter/ForumBaseAdapter$n0;->e:Landroid/widget/TextView;

    .line 120
    .line 121
    new-instance v1, Ljava/lang/StringBuilder;

    .line 122
    .line 123
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 124
    .line 125
    .line 126
    const-string v2, "\u4eca\u65e5\u66f4\u65b0\uff1a"

    .line 127
    .line 128
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 129
    .line 130
    .line 131
    iget v2, p1, Lcom/join/mgps/adapter/ForumBaseAdapter$r1$d0;->e:I

    .line 132
    .line 133
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 134
    .line 135
    .line 136
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 137
    .line 138
    .line 139
    move-result-object v1

    .line 140
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 141
    .line 142
    .line 143
    goto :goto_1

    .line 144
    :cond_2
    iget-object v0, p3, Lcom/join/mgps/adapter/ForumBaseAdapter$n0;->e:Landroid/widget/TextView;

    .line 145
    .line 146
    const-string v1, "\u4eca\u65e5\u66f4\u65b0\uff1a0"

    .line 147
    .line 148
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 149
    .line 150
    .line 151
    :goto_1
    iget-boolean v0, p1, Lcom/join/mgps/adapter/ForumBaseAdapter$r1$d0;->g:Z

    .line 152
    .line 153
    const/4 v1, 0x0

    .line 154
    if-eqz v0, :cond_3

    .line 155
    .line 156
    iget-object v0, p3, Lcom/join/mgps/adapter/ForumBaseAdapter$n0;->e:Landroid/widget/TextView;

    .line 157
    .line 158
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 159
    .line 160
    .line 161
    goto :goto_2

    .line 162
    :cond_3
    iget-object v0, p3, Lcom/join/mgps/adapter/ForumBaseAdapter$n0;->e:Landroid/widget/TextView;

    .line 163
    .line 164
    const/16 v2, 0x8

    .line 165
    .line 166
    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 167
    .line 168
    .line 169
    :goto_2
    iget-object p3, p3, Lcom/join/mgps/adapter/ForumBaseAdapter$n0;->d:Landroid/widget/TextView;

    .line 170
    .line 171
    invoke-virtual {p3, v1}, Landroid/view/View;->setVisibility(I)V

    .line 172
    .line 173
    .line 174
    iget p1, p1, Lcom/join/mgps/adapter/ForumBaseAdapter$r1$d0;->f:I

    .line 175
    .line 176
    invoke-direct {p0, p2, p1}, Lcom/join/mgps/adapter/ForumBaseAdapter;->Q0(Landroid/view/View;I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 177
    .line 178
    .line 179
    goto :goto_3

    .line 180
    :catch_0
    move-exception p1

    .line 181
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 182
    .line 183
    .line 184
    :goto_3
    return-object p2
.end method

.method private r0(Lcom/join/mgps/adapter/ForumBaseAdapter$g1;ZI)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "holder",
            "like",
            "count"
        }
    .end annotation

    .line 1
    iget-object v0, p1, Lcom/join/mgps/adapter/ForumBaseAdapter$g1;->e:Landroid/widget/TextView;

    .line 2
    .line 3
    iget-object p1, p1, Lcom/join/mgps/adapter/ForumBaseAdapter$g1;->h:Landroid/widget/ImageView;

    .line 4
    .line 5
    const-string v1, ""

    .line 6
    .line 7
    if-eqz p2, :cond_0

    .line 8
    .line 9
    const p2, 0x7f080c51

    .line 10
    .line 11
    .line 12
    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 13
    .line 14
    .line 15
    new-instance p1, Ljava/lang/StringBuilder;

    .line 16
    .line 17
    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    .line 18
    .line 19
    .line 20
    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 21
    .line 22
    .line 23
    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 24
    .line 25
    .line 26
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 27
    .line 28
    .line 29
    move-result-object p1

    .line 30
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 31
    .line 32
    .line 33
    goto :goto_0

    .line 34
    :cond_0
    const p2, 0x7f081320

    .line 35
    .line 36
    .line 37
    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 38
    .line 39
    .line 40
    new-instance p1, Ljava/lang/StringBuilder;

    .line 41
    .line 42
    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    .line 43
    .line 44
    .line 45
    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 46
    .line 47
    .line 48
    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 49
    .line 50
    .line 51
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 52
    .line 53
    .line 54
    move-result-object p1

    .line 55
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 56
    .line 57
    .line 58
    :goto_0
    return-void
.end method

.method private s(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 5
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
    check-cast p3, Lcom/join/mgps/adapter/ForumBaseAdapter$o0;

    .line 8
    .line 9
    goto :goto_0

    .line 10
    :cond_0
    new-instance p3, Lcom/join/mgps/adapter/ForumBaseAdapter$o0;

    .line 11
    .line 12
    invoke-direct {p3, p0}, Lcom/join/mgps/adapter/ForumBaseAdapter$o0;-><init>(Lcom/join/mgps/adapter/ForumBaseAdapter;)V

    .line 13
    .line 14
    .line 15
    iget-object v0, p0, Lcom/join/mgps/adapter/ForumBaseAdapter;->e:Landroid/content/Context;

    .line 16
    .line 17
    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    .line 18
    .line 19
    .line 20
    move-result-object v0

    .line 21
    const v1, 0x7f0d06a1

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
    const v0, 0x7f0a0134

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
    iput-object v0, p3, Lcom/join/mgps/adapter/ForumBaseAdapter$o0;->b:Lcom/facebook/drawee/view/SimpleDraweeView;

    .line 39
    .line 40
    const v0, 0x7f0a112d

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
    iput-object v0, p3, Lcom/join/mgps/adapter/ForumBaseAdapter$o0;->c:Landroid/widget/TextView;

    .line 50
    .line 51
    const v0, 0x7f0a07b6

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
    iput-object v0, p3, Lcom/join/mgps/adapter/ForumBaseAdapter$o0;->d:Landroid/widget/TextView;

    .line 61
    .line 62
    const v0, 0x7f0a00a8

    .line 63
    .line 64
    .line 65
    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 66
    .line 67
    .line 68
    move-result-object v0

    .line 69
    check-cast v0, Landroid/widget/TextView;

    .line 70
    .line 71
    iput-object v0, p3, Lcom/join/mgps/adapter/ForumBaseAdapter$o0;->e:Landroid/widget/TextView;

    .line 72
    .line 73
    const v0, 0x7f0a07c8

    .line 74
    .line 75
    .line 76
    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 77
    .line 78
    .line 79
    move-result-object v0

    .line 80
    check-cast v0, Landroid/widget/TextView;

    .line 81
    .line 82
    iput-object v0, p3, Lcom/join/mgps/adapter/ForumBaseAdapter$o0;->f:Landroid/widget/TextView;

    .line 83
    .line 84
    invoke-virtual {p2, p3}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 85
    .line 86
    .line 87
    :goto_0
    invoke-virtual {p0, p1}, Lcom/join/mgps/adapter/ForumBaseAdapter;->getItem(I)Ljava/lang/Object;

    .line 88
    .line 89
    .line 90
    move-result-object p1

    .line 91
    check-cast p1, Lcom/join/mgps/adapter/ForumBaseAdapter$r1$c;

    .line 92
    .line 93
    if-nez p1, :cond_1

    .line 94
    .line 95
    return-object p2

    .line 96
    :cond_1
    iget-object v0, p3, Lcom/join/mgps/adapter/ForumBaseAdapter$o0;->b:Lcom/facebook/drawee/view/SimpleDraweeView;

    .line 97
    .line 98
    iget-object v1, p1, Lcom/join/mgps/adapter/ForumBaseAdapter$r1$c;->a:Ljava/lang/String;

    .line 99
    .line 100
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 101
    .line 102
    .line 103
    move-result v1

    .line 104
    if-eqz v1, :cond_2

    .line 105
    .line 106
    const-string v1, ""

    .line 107
    .line 108
    goto :goto_1

    .line 109
    :cond_2
    iget-object v1, p1, Lcom/join/mgps/adapter/ForumBaseAdapter$r1$c;->a:Ljava/lang/String;

    .line 110
    .line 111
    :goto_1
    invoke-static {v0, v1}, Lcom/join/android/app/common/utils/l;->y(Lcom/facebook/drawee/view/SimpleDraweeView;Ljava/lang/String;)V

    .line 112
    .line 113
    .line 114
    iget-object v0, p3, Lcom/join/mgps/adapter/ForumBaseAdapter$o0;->b:Lcom/facebook/drawee/view/SimpleDraweeView;

    .line 115
    .line 116
    new-instance v1, Lcom/join/mgps/adapter/ForumBaseAdapter$k;

    .line 117
    .line 118
    invoke-direct {v1, p0, p1}, Lcom/join/mgps/adapter/ForumBaseAdapter$k;-><init>(Lcom/join/mgps/adapter/ForumBaseAdapter;Lcom/join/mgps/adapter/ForumBaseAdapter$r1$c;)V

    .line 119
    .line 120
    .line 121
    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 122
    .line 123
    .line 124
    iget-object v0, p3, Lcom/join/mgps/adapter/ForumBaseAdapter$o0;->c:Landroid/widget/TextView;

    .line 125
    .line 126
    iget-object v1, p1, Lcom/join/mgps/adapter/ForumBaseAdapter$r1$c;->b:Ljava/lang/String;

    .line 127
    .line 128
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 129
    .line 130
    .line 131
    iget-boolean v0, p1, Lcom/join/mgps/adapter/ForumBaseAdapter$r1$c;->c:Z

    .line 132
    .line 133
    const/4 v1, 0x0

    .line 134
    const/16 v2, 0x8

    .line 135
    .line 136
    if-eqz v0, :cond_4

    .line 137
    .line 138
    iget-object v0, p3, Lcom/join/mgps/adapter/ForumBaseAdapter$o0;->d:Landroid/widget/TextView;

    .line 139
    .line 140
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 141
    .line 142
    .line 143
    iget v0, p1, Lcom/join/mgps/adapter/ForumBaseAdapter$r1$c;->d:I

    .line 144
    .line 145
    if-nez v0, :cond_3

    .line 146
    .line 147
    iget-object v0, p3, Lcom/join/mgps/adapter/ForumBaseAdapter$o0;->d:Landroid/widget/TextView;

    .line 148
    .line 149
    const-string v3, "\u7ec4\u957f"

    .line 150
    .line 151
    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 152
    .line 153
    .line 154
    goto :goto_2

    .line 155
    :cond_3
    iget-object v0, p3, Lcom/join/mgps/adapter/ForumBaseAdapter$o0;->d:Landroid/widget/TextView;

    .line 156
    .line 157
    const-string v3, "\u526f\u7ec4\u957f"

    .line 158
    .line 159
    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 160
    .line 161
    .line 162
    goto :goto_2

    .line 163
    :cond_4
    iget-object v0, p3, Lcom/join/mgps/adapter/ForumBaseAdapter$o0;->d:Landroid/widget/TextView;

    .line 164
    .line 165
    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 166
    .line 167
    .line 168
    :goto_2
    iget-object v0, p3, Lcom/join/mgps/adapter/ForumBaseAdapter$o0;->e:Landroid/widget/TextView;

    .line 169
    .line 170
    new-instance v3, Ljava/lang/StringBuilder;

    .line 171
    .line 172
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 173
    .line 174
    .line 175
    iget-object v4, p1, Lcom/join/mgps/adapter/ForumBaseAdapter$r1$c;->e:Ljava/lang/String;

    .line 176
    .line 177
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 178
    .line 179
    .line 180
    const-string v4, "\u52a0\u5165"

    .line 181
    .line 182
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 183
    .line 184
    .line 185
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 186
    .line 187
    .line 188
    move-result-object v3

    .line 189
    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 190
    .line 191
    .line 192
    iget-boolean v0, p1, Lcom/join/mgps/adapter/ForumBaseAdapter$r1$c;->f:Z

    .line 193
    .line 194
    if-eqz v0, :cond_5

    .line 195
    .line 196
    iget-boolean v0, p1, Lcom/join/mgps/adapter/ForumBaseAdapter$r1$c;->g:Z

    .line 197
    .line 198
    if-eqz v0, :cond_5

    .line 199
    .line 200
    iget-object v0, p3, Lcom/join/mgps/adapter/ForumBaseAdapter$o0;->f:Landroid/widget/TextView;

    .line 201
    .line 202
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 203
    .line 204
    .line 205
    iget-object v0, p3, Lcom/join/mgps/adapter/ForumBaseAdapter$o0;->e:Landroid/widget/TextView;

    .line 206
    .line 207
    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 208
    .line 209
    .line 210
    goto :goto_3

    .line 211
    :cond_5
    iget-object v0, p3, Lcom/join/mgps/adapter/ForumBaseAdapter$o0;->f:Landroid/widget/TextView;

    .line 212
    .line 213
    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 214
    .line 215
    .line 216
    iget-boolean v0, p1, Lcom/join/mgps/adapter/ForumBaseAdapter$r1$c;->c:Z

    .line 217
    .line 218
    if-nez v0, :cond_6

    .line 219
    .line 220
    iget-object v0, p3, Lcom/join/mgps/adapter/ForumBaseAdapter$o0;->e:Landroid/widget/TextView;

    .line 221
    .line 222
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 223
    .line 224
    .line 225
    goto :goto_3

    .line 226
    :cond_6
    iget-object v0, p3, Lcom/join/mgps/adapter/ForumBaseAdapter$o0;->e:Landroid/widget/TextView;

    .line 227
    .line 228
    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 229
    .line 230
    .line 231
    :goto_3
    iget-object p3, p3, Lcom/join/mgps/adapter/ForumBaseAdapter$o0;->f:Landroid/widget/TextView;

    .line 232
    .line 233
    iget p1, p1, Lcom/join/mgps/adapter/ForumBaseAdapter$r1$c;->h:I

    .line 234
    .line 235
    invoke-virtual {p0, p3, p1}, Lcom/join/mgps/adapter/ForumBaseAdapter;->N0(Landroid/view/View;I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 236
    .line 237
    .line 238
    goto :goto_4

    .line 239
    :catch_0
    move-exception p1

    .line 240
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 241
    .line 242
    .line 243
    :goto_4
    return-object p2
.end method

.method private t(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
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
    check-cast p3, Lcom/join/mgps/adapter/ForumBaseAdapter$p0;

    .line 8
    .line 9
    goto :goto_0

    .line 10
    :cond_0
    new-instance p3, Lcom/join/mgps/adapter/ForumBaseAdapter$p0;

    .line 11
    .line 12
    invoke-direct {p3, p0}, Lcom/join/mgps/adapter/ForumBaseAdapter$p0;-><init>(Lcom/join/mgps/adapter/ForumBaseAdapter;)V

    .line 13
    .line 14
    .line 15
    iget-object v0, p0, Lcom/join/mgps/adapter/ForumBaseAdapter;->e:Landroid/content/Context;

    .line 16
    .line 17
    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    .line 18
    .line 19
    .line 20
    move-result-object v0

    .line 21
    const v1, 0x7f0d06a2

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
    const v0, 0x7f0a1767

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
    iput-object v0, p3, Lcom/join/mgps/adapter/ForumBaseAdapter$p0;->b:Landroid/widget/TextView;

    .line 39
    .line 40
    invoke-virtual {p2, p3}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 41
    .line 42
    .line 43
    :goto_0
    invoke-virtual {p0, p1}, Lcom/join/mgps/adapter/ForumBaseAdapter;->getItem(I)Ljava/lang/Object;

    .line 44
    .line 45
    .line 46
    move-result-object p1

    .line 47
    check-cast p1, Lcom/join/mgps/adapter/ForumBaseAdapter$r1$d;

    .line 48
    .line 49
    if-nez p1, :cond_1

    .line 50
    .line 51
    return-object p2

    .line 52
    :cond_1
    iget-object p3, p3, Lcom/join/mgps/adapter/ForumBaseAdapter$p0;->b:Landroid/widget/TextView;

    .line 53
    .line 54
    iget-object v0, p1, Lcom/join/mgps/adapter/ForumBaseAdapter$r1$d;->a:Ljava/lang/String;

    .line 55
    .line 56
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 57
    .line 58
    .line 59
    move-result v0

    .line 60
    if-eqz v0, :cond_2

    .line 61
    .line 62
    const-string p1, "\u6210\u5458"

    .line 63
    .line 64
    goto :goto_1

    .line 65
    :cond_2
    iget-object p1, p1, Lcom/join/mgps/adapter/ForumBaseAdapter$r1$d;->a:Ljava/lang/String;

    .line 66
    .line 67
    :goto_1
    invoke-virtual {p3, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 68
    .line 69
    .line 70
    goto :goto_2

    .line 71
    :catch_0
    move-exception p1

    .line 72
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 73
    .line 74
    .line 75
    :goto_2
    return-object p2
.end method

.method private u(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 1
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
    move-result-object p1

    .line 7
    check-cast p1, Lcom/join/mgps/adapter/ForumBaseAdapter$q0;

    .line 8
    .line 9
    goto :goto_0

    .line 10
    :cond_0
    new-instance p1, Lcom/join/mgps/adapter/ForumBaseAdapter$q0;

    .line 11
    .line 12
    invoke-direct {p1, p0}, Lcom/join/mgps/adapter/ForumBaseAdapter$q0;-><init>(Lcom/join/mgps/adapter/ForumBaseAdapter;)V

    .line 13
    .line 14
    .line 15
    iget-object p2, p0, Lcom/join/mgps/adapter/ForumBaseAdapter;->e:Landroid/content/Context;

    .line 16
    .line 17
    invoke-static {p2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    .line 18
    .line 19
    .line 20
    move-result-object p2

    .line 21
    const p3, 0x7f0d06e7

    .line 22
    .line 23
    .line 24
    const/4 v0, 0x0

    .line 25
    invoke-virtual {p2, p3, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 26
    .line 27
    .line 28
    move-result-object p2

    .line 29
    const p3, 0x7f0a06bd

    .line 30
    .line 31
    .line 32
    invoke-virtual {p2, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 33
    .line 34
    .line 35
    move-result-object p3

    .line 36
    iput-object p3, p1, Lcom/join/mgps/adapter/ForumBaseAdapter$q0;->b:Landroid/view/View;

    .line 37
    .line 38
    invoke-virtual {p2, p1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 39
    .line 40
    .line 41
    :goto_0
    :try_start_0
    iget-object p1, p1, Lcom/join/mgps/adapter/ForumBaseAdapter$q0;->b:Landroid/view/View;

    .line 42
    .line 43
    if-eqz p1, :cond_1

    .line 44
    .line 45
    invoke-virtual {p0, p1}, Lcom/join/mgps/adapter/ForumBaseAdapter;->P0(Landroid/view/View;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 46
    .line 47
    .line 48
    goto :goto_1

    .line 49
    :catch_0
    move-exception p1

    .line 50
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 51
    .line 52
    .line 53
    :cond_1
    :goto_1
    return-object p2
.end method

.method private u0(Lcom/join/mgps/adapter/ForumBaseAdapter$j1;Lcom/join/mgps/adapter/ForumBaseAdapter$r1$y;)V
    .locals 11
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "holder",
            "item"
        }
    .end annotation

    .line 1
    const/16 v0, 0x8

    .line 2
    .line 3
    if-eqz p2, :cond_7

    .line 4
    .line 5
    iget-object v1, p2, Lcom/join/mgps/adapter/ForumBaseAdapter$r1$y;->a:Ljava/util/List;

    .line 6
    .line 7
    invoke-interface {v1}, Ljava/util/List;->size()I

    .line 8
    .line 9
    .line 10
    move-result v1

    .line 11
    if-nez v1, :cond_0

    .line 12
    .line 13
    goto/16 :goto_3

    .line 14
    .line 15
    :cond_0
    iget-object v1, p0, Lcom/join/mgps/adapter/ForumBaseAdapter;->l:Landroid/widget/LinearLayout$LayoutParams;

    .line 16
    .line 17
    if-nez v1, :cond_1

    .line 18
    .line 19
    invoke-virtual {p0}, Lcom/join/mgps/adapter/ForumBaseAdapter;->g0()Landroid/widget/LinearLayout$LayoutParams;

    .line 20
    .line 21
    .line 22
    move-result-object v1

    .line 23
    iput-object v1, p0, Lcom/join/mgps/adapter/ForumBaseAdapter;->l:Landroid/widget/LinearLayout$LayoutParams;

    .line 24
    .line 25
    :cond_1
    iget-object v1, p2, Lcom/join/mgps/adapter/ForumBaseAdapter$r1$y;->b:Ljava/util/List;

    .line 26
    .line 27
    iget-object v2, p1, Lcom/join/mgps/adapter/ForumBaseAdapter$j1;->b:Landroid/widget/TextView;

    .line 28
    .line 29
    const/4 v8, 0x3

    .line 30
    const/4 v3, 0x0

    .line 31
    if-eqz v1, :cond_2

    .line 32
    .line 33
    invoke-interface {v1}, Ljava/util/List;->size()I

    .line 34
    .line 35
    .line 36
    move-result v4

    .line 37
    if-le v4, v8, :cond_2

    .line 38
    .line 39
    invoke-virtual {v2, v3}, Landroid/view/View;->setVisibility(I)V

    .line 40
    .line 41
    .line 42
    new-instance v4, Ljava/lang/StringBuilder;

    .line 43
    .line 44
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 45
    .line 46
    .line 47
    invoke-interface {v1}, Ljava/util/List;->size()I

    .line 48
    .line 49
    .line 50
    move-result v5

    .line 51
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 52
    .line 53
    .line 54
    const-string v5, ""

    .line 55
    .line 56
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 57
    .line 58
    .line 59
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 60
    .line 61
    .line 62
    move-result-object v4

    .line 63
    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 64
    .line 65
    .line 66
    goto :goto_0

    .line 67
    :cond_2
    invoke-virtual {v2, v0}, Landroid/view/View;->setVisibility(I)V

    .line 68
    .line 69
    .line 70
    :goto_0
    new-array v9, v8, [Lcom/facebook/drawee/view/SimpleDraweeView;

    .line 71
    .line 72
    iget-object v2, p1, Lcom/join/mgps/adapter/ForumBaseAdapter$j1;->d:Lcom/facebook/drawee/view/SimpleDraweeView;

    .line 73
    .line 74
    aput-object v2, v9, v3

    .line 75
    .line 76
    iget-object v2, p1, Lcom/join/mgps/adapter/ForumBaseAdapter$j1;->e:Lcom/facebook/drawee/view/SimpleDraweeView;

    .line 77
    .line 78
    const/4 v4, 0x1

    .line 79
    aput-object v2, v9, v4

    .line 80
    .line 81
    const/4 v2, 0x2

    .line 82
    iget-object p1, p1, Lcom/join/mgps/adapter/ForumBaseAdapter$j1;->f:Lcom/facebook/drawee/view/SimpleDraweeView;

    .line 83
    .line 84
    aput-object p1, v9, v2

    .line 85
    .line 86
    const/4 p1, 0x0

    .line 87
    const/4 v10, 0x0

    .line 88
    :goto_1
    if-ge p1, v8, :cond_6

    .line 89
    .line 90
    aget-object v3, v9, p1

    .line 91
    .line 92
    iget-object v2, p2, Lcom/join/mgps/adapter/ForumBaseAdapter$r1$y;->a:Ljava/util/List;

    .line 93
    .line 94
    invoke-interface {v2}, Ljava/util/List;->size()I

    .line 95
    .line 96
    .line 97
    move-result v2

    .line 98
    if-lt p1, v2, :cond_3

    .line 99
    .line 100
    invoke-virtual {v3, v0}, Landroid/view/View;->setVisibility(I)V

    .line 101
    .line 102
    .line 103
    goto :goto_2

    .line 104
    :cond_3
    iget-object v2, p2, Lcom/join/mgps/adapter/ForumBaseAdapter$r1$y;->a:Ljava/util/List;

    .line 105
    .line 106
    invoke-interface {v2, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 107
    .line 108
    .line 109
    move-result-object v2

    .line 110
    check-cast v2, Lcom/join/mgps/dto/ForumBean$ForumPostsBean$ResBean;

    .line 111
    .line 112
    invoke-virtual {v2}, Lcom/join/mgps/dto/ForumBean$ForumPostsBean$ResBean;->getType()Ljava/lang/String;

    .line 113
    .line 114
    .line 115
    move-result-object v4

    .line 116
    const-string v5, "pic"

    .line 117
    .line 118
    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 119
    .line 120
    .line 121
    move-result v4

    .line 122
    if-eqz v4, :cond_4

    .line 123
    .line 124
    invoke-virtual {v2}, Lcom/join/mgps/dto/ForumBean$ForumPostsBean$ResBean;->getThumb()Ljava/lang/String;

    .line 125
    .line 126
    .line 127
    move-result-object v5

    .line 128
    sub-int v6, p1, v10

    .line 129
    .line 130
    move-object v2, p0

    .line 131
    move v4, p1

    .line 132
    move-object v7, v1

    .line 133
    invoke-virtual/range {v2 .. v7}, Lcom/join/mgps/adapter/ForumBaseAdapter;->F0(Lcom/facebook/drawee/view/SimpleDraweeView;ILjava/lang/String;ILjava/util/List;)V

    .line 134
    .line 135
    .line 136
    goto :goto_2

    .line 137
    :cond_4
    invoke-virtual {v2}, Lcom/join/mgps/dto/ForumBean$ForumPostsBean$ResBean;->getType()Ljava/lang/String;

    .line 138
    .line 139
    .line 140
    move-result-object v4

    .line 141
    const-string v5, "video"

    .line 142
    .line 143
    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 144
    .line 145
    .line 146
    move-result v4

    .line 147
    if-eqz v4, :cond_5

    .line 148
    .line 149
    add-int/lit8 v10, v10, 0x1

    .line 150
    .line 151
    invoke-virtual {v2}, Lcom/join/mgps/dto/ForumBean$ForumPostsBean$ResBean;->getThumb()Ljava/lang/String;

    .line 152
    .line 153
    .line 154
    move-result-object v4

    .line 155
    invoke-virtual {v2}, Lcom/join/mgps/dto/ForumBean$ForumPostsBean$ResBean;->getRaw()Ljava/lang/String;

    .line 156
    .line 157
    .line 158
    move-result-object v2

    .line 159
    invoke-virtual {p0, v3, p1, v4, v2}, Lcom/join/mgps/adapter/ForumBaseAdapter;->g1(Lcom/facebook/drawee/view/SimpleDraweeView;ILjava/lang/String;Ljava/lang/String;)V

    .line 160
    .line 161
    .line 162
    :cond_5
    :goto_2
    add-int/lit8 p1, p1, 0x1

    .line 163
    .line 164
    goto :goto_1

    .line 165
    :cond_6
    return-void

    .line 166
    :cond_7
    :goto_3
    iget-object p1, p1, Lcom/join/mgps/adapter/ForumBaseAdapter$j1;->c:Landroid/widget/RelativeLayout;

    .line 167
    .line 168
    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 169
    .line 170
    .line 171
    return-void
.end method

.method private v(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
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
    :try_start_0
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    check-cast p1, Lcom/join/mgps/adapter/ForumBaseAdapter$r0;

    .line 8
    .line 9
    goto :goto_0

    .line 10
    :cond_0
    new-instance p1, Lcom/join/mgps/adapter/ForumBaseAdapter$r0;

    .line 11
    .line 12
    invoke-direct {p1, p0}, Lcom/join/mgps/adapter/ForumBaseAdapter$r0;-><init>(Lcom/join/mgps/adapter/ForumBaseAdapter;)V

    .line 13
    .line 14
    .line 15
    iget-object p3, p0, Lcom/join/mgps/adapter/ForumBaseAdapter;->e:Landroid/content/Context;

    .line 16
    .line 17
    invoke-static {p3}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    .line 18
    .line 19
    .line 20
    move-result-object p3

    .line 21
    const v0, 0x7f0d06e8

    .line 22
    .line 23
    .line 24
    const/4 v1, 0x0

    .line 25
    invoke-virtual {p3, v0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 26
    .line 27
    .line 28
    move-result-object p2

    .line 29
    const p3, 0x7f0a0687

    .line 30
    .line 31
    .line 32
    invoke-virtual {p2, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 33
    .line 34
    .line 35
    move-result-object p3

    .line 36
    check-cast p3, Landroid/widget/LinearLayout;

    .line 37
    .line 38
    iput-object p3, p1, Lcom/join/mgps/adapter/ForumBaseAdapter$r0;->b:Landroid/widget/LinearLayout;

    .line 39
    .line 40
    invoke-virtual {p2, p1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 41
    .line 42
    .line 43
    :goto_0
    iget-object p1, p1, Lcom/join/mgps/adapter/ForumBaseAdapter$r0;->b:Landroid/widget/LinearLayout;

    .line 44
    .line 45
    if-eqz p1, :cond_1

    .line 46
    .line 47
    invoke-virtual {p0, p1}, Lcom/join/mgps/adapter/ForumBaseAdapter;->P0(Landroid/view/View;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 48
    .line 49
    .line 50
    goto :goto_1

    .line 51
    :catch_0
    move-exception p1

    .line 52
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 53
    .line 54
    .line 55
    :cond_1
    :goto_1
    return-object p2
.end method

.method private v0(Lcom/facebook/drawee/view/SimpleDraweeView;Lcom/join/mgps/dto/BannerBean;I)V
    .locals 5
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x0,
            0x10
        }
        names = {
            "imageView",
            "bean",
            "position"
        }
    .end annotation

    .line 1
    if-eqz p2, :cond_3

    .line 2
    .line 3
    if-nez p1, :cond_0

    .line 4
    .line 5
    goto :goto_1

    .line 6
    :cond_0
    iget-object v0, p0, Lcom/join/mgps/adapter/ForumBaseAdapter;->l:Landroid/widget/LinearLayout$LayoutParams;

    .line 7
    .line 8
    if-nez v0, :cond_1

    .line 9
    .line 10
    invoke-virtual {p0}, Lcom/join/mgps/adapter/ForumBaseAdapter;->g0()Landroid/widget/LinearLayout$LayoutParams;

    .line 11
    .line 12
    .line 13
    move-result-object v0

    .line 14
    iput-object v0, p0, Lcom/join/mgps/adapter/ForumBaseAdapter;->l:Landroid/widget/LinearLayout$LayoutParams;

    .line 15
    .line 16
    :cond_1
    invoke-virtual {p2}, Lcom/join/mgps/dto/BannerBean;->getPic_remote()Ljava/lang/String;

    .line 17
    .line 18
    .line 19
    move-result-object v0

    .line 20
    iget-object v1, p0, Lcom/join/mgps/adapter/ForumBaseAdapter;->e:Landroid/content/Context;

    .line 21
    .line 22
    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 23
    .line 24
    .line 25
    move-result-object v1

    .line 26
    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    .line 27
    .line 28
    .line 29
    move-result-object v1

    .line 30
    iget v1, v1, Landroid/util/DisplayMetrics;->density:F

    .line 31
    .line 32
    const/high16 v2, 0x40c00000    # 6.0f

    .line 33
    .line 34
    mul-float v1, v1, v2

    .line 35
    .line 36
    float-to-int v1, v1

    .line 37
    new-instance v2, Landroid/widget/TableRow$LayoutParams;

    .line 38
    .line 39
    iget-object v3, p0, Lcom/join/mgps/adapter/ForumBaseAdapter;->l:Landroid/widget/LinearLayout$LayoutParams;

    .line 40
    .line 41
    iget v4, v3, Landroid/widget/LinearLayout$LayoutParams;->width:I

    .line 42
    .line 43
    iget v3, v3, Landroid/widget/LinearLayout$LayoutParams;->height:I

    .line 44
    .line 45
    invoke-direct {v2, v4, v3}, Landroid/widget/TableRow$LayoutParams;-><init>(II)V

    .line 46
    .line 47
    .line 48
    const/4 v3, 0x0

    .line 49
    if-lez p3, :cond_2

    .line 50
    .line 51
    invoke-virtual {v2, v1, v3, v3, v3}, Landroid/view/ViewGroup$MarginLayoutParams;->setMargins(IIII)V

    .line 52
    .line 53
    .line 54
    goto :goto_0

    .line 55
    :cond_2
    invoke-virtual {v2, v3, v3, v3, v3}, Landroid/view/ViewGroup$MarginLayoutParams;->setMargins(IIII)V

    .line 56
    .line 57
    .line 58
    :goto_0
    invoke-virtual {p1, v3}, Landroid/view/View;->setVisibility(I)V

    .line 59
    .line 60
    .line 61
    invoke-virtual {p1, v2}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 62
    .line 63
    .line 64
    sget-object v1, Landroid/widget/ImageView$ScaleType;->FIT_XY:Landroid/widget/ImageView$ScaleType;

    .line 65
    .line 66
    invoke-virtual {p1, v1}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 67
    .line 68
    .line 69
    sget-object v1, Lcom/facebook/drawee/drawable/s$c;->a:Lcom/facebook/drawee/drawable/s$c;

    .line 70
    .line 71
    invoke-static {p1, v0, v1}, Lcom/join/android/app/common/utils/l;->i(Lcom/facebook/drawee/view/SimpleDraweeView;Ljava/lang/String;Lcom/facebook/drawee/drawable/s$c;)V

    .line 72
    .line 73
    .line 74
    invoke-static {p2}, Lcom/join/mgps/Util/r0;->j0(Lcom/join/mgps/dto/BannerBean;)Lcom/join/mgps/Util/IntentDateBean;

    .line 75
    .line 76
    .line 77
    move-result-object p2

    .line 78
    new-instance v0, Lcom/join/mgps/dto/ExtBean;

    .line 79
    .line 80
    invoke-direct {v0}, Lcom/join/mgps/dto/ExtBean;-><init>()V

    .line 81
    .line 82
    .line 83
    const-string v1, "forum"

    .line 84
    .line 85
    invoke-virtual {v0, v1}, Lcom/join/mgps/dto/ExtBean;->setFrom(Ljava/lang/String;)Lcom/join/mgps/dto/ExtBean;

    .line 86
    .line 87
    .line 88
    new-instance v1, Ljava/lang/StringBuilder;

    .line 89
    .line 90
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 91
    .line 92
    .line 93
    const-string v2, "banner3"

    .line 94
    .line 95
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 96
    .line 97
    .line 98
    add-int/lit8 v2, p3, 0x1

    .line 99
    .line 100
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 101
    .line 102
    .line 103
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 104
    .line 105
    .line 106
    move-result-object v1

    .line 107
    invoke-virtual {v0, v1}, Lcom/join/mgps/dto/ExtBean;->setPosition(Ljava/lang/String;)Lcom/join/mgps/dto/ExtBean;

    .line 108
    .line 109
    .line 110
    invoke-virtual {p2, v0}, Lcom/join/mgps/Util/IntentDateBean;->setExtBean(Lcom/join/mgps/dto/ExtBean;)V

    .line 111
    .line 112
    .line 113
    new-instance v0, Lcom/join/mgps/adapter/ForumBaseAdapter$g;

    .line 114
    .line 115
    invoke-direct {v0, p0, p2, p3}, Lcom/join/mgps/adapter/ForumBaseAdapter$g;-><init>(Lcom/join/mgps/adapter/ForumBaseAdapter;Lcom/join/mgps/Util/IntentDateBean;I)V

    .line 116
    .line 117
    .line 118
    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 119
    .line 120
    .line 121
    :cond_3
    :goto_1
    return-void
.end method

.method private w(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 5
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
    const-string p3, ""

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
    check-cast v0, Lcom/join/mgps/adapter/ForumBaseAdapter$s0;

    .line 10
    .line 11
    goto :goto_0

    .line 12
    :cond_0
    new-instance v0, Lcom/join/mgps/adapter/ForumBaseAdapter$s0;

    .line 13
    .line 14
    invoke-direct {v0, p0}, Lcom/join/mgps/adapter/ForumBaseAdapter$s0;-><init>(Lcom/join/mgps/adapter/ForumBaseAdapter;)V

    .line 15
    .line 16
    .line 17
    iget-object p2, p0, Lcom/join/mgps/adapter/ForumBaseAdapter;->e:Landroid/content/Context;

    .line 18
    .line 19
    invoke-static {p2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    .line 20
    .line 21
    .line 22
    move-result-object p2

    .line 23
    const v1, 0x7f0d06e9

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
    const v1, 0x7f0a1051

    .line 32
    .line 33
    .line 34
    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 35
    .line 36
    .line 37
    move-result-object v1

    .line 38
    iput-object v1, v0, Lcom/join/mgps/adapter/ForumBaseAdapter$s0;->b:Landroid/view/View;

    .line 39
    .line 40
    const v2, 0x7f0a0697

    .line 41
    .line 42
    .line 43
    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 44
    .line 45
    .line 46
    move-result-object v1

    .line 47
    check-cast v1, Lcom/facebook/drawee/view/SimpleDraweeView;

    .line 48
    .line 49
    iput-object v1, v0, Lcom/join/mgps/adapter/ForumBaseAdapter$s0;->c:Lcom/facebook/drawee/view/SimpleDraweeView;

    .line 50
    .line 51
    iget-object v1, v0, Lcom/join/mgps/adapter/ForumBaseAdapter$s0;->b:Landroid/view/View;

    .line 52
    .line 53
    const v2, 0x7f0a069a

    .line 54
    .line 55
    .line 56
    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 57
    .line 58
    .line 59
    move-result-object v1

    .line 60
    check-cast v1, Landroid/widget/TextView;

    .line 61
    .line 62
    iput-object v1, v0, Lcom/join/mgps/adapter/ForumBaseAdapter$s0;->d:Landroid/widget/TextView;

    .line 63
    .line 64
    iget-object v1, v0, Lcom/join/mgps/adapter/ForumBaseAdapter$s0;->b:Landroid/view/View;

    .line 65
    .line 66
    const v2, 0x7f0a0693

    .line 67
    .line 68
    .line 69
    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 70
    .line 71
    .line 72
    move-result-object v1

    .line 73
    check-cast v1, Landroid/widget/TextView;

    .line 74
    .line 75
    iput-object v1, v0, Lcom/join/mgps/adapter/ForumBaseAdapter$s0;->i:Landroid/widget/TextView;

    .line 76
    .line 77
    iget-object v1, v0, Lcom/join/mgps/adapter/ForumBaseAdapter$s0;->b:Landroid/view/View;

    .line 78
    .line 79
    const v2, 0x7f0a0694

    .line 80
    .line 81
    .line 82
    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 83
    .line 84
    .line 85
    move-result-object v1

    .line 86
    check-cast v1, Landroid/widget/Button;

    .line 87
    .line 88
    iput-object v1, v0, Lcom/join/mgps/adapter/ForumBaseAdapter$s0;->g:Landroid/widget/Button;

    .line 89
    .line 90
    iget-object v1, v0, Lcom/join/mgps/adapter/ForumBaseAdapter$s0;->b:Landroid/view/View;

    .line 91
    .line 92
    const v2, 0x7f0a06ba

    .line 93
    .line 94
    .line 95
    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 96
    .line 97
    .line 98
    move-result-object v1

    .line 99
    check-cast v1, Landroid/widget/TextView;

    .line 100
    .line 101
    iput-object v1, v0, Lcom/join/mgps/adapter/ForumBaseAdapter$s0;->h:Landroid/widget/TextView;

    .line 102
    .line 103
    invoke-virtual {p2, v0}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 104
    .line 105
    .line 106
    :goto_0
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/join/mgps/adapter/ForumBaseAdapter;->getItem(I)Ljava/lang/Object;

    .line 107
    .line 108
    .line 109
    move-result-object p1

    .line 110
    check-cast p1, Lcom/join/mgps/adapter/ForumBaseAdapter$r1$g;

    .line 111
    .line 112
    if-nez p1, :cond_1

    .line 113
    .line 114
    return-object p2

    .line 115
    :cond_1
    iget-object p1, p1, Lcom/join/mgps/adapter/ForumBaseAdapter$r1$g;->a:Lcom/join/mgps/dto/ForumBean;

    .line 116
    .line 117
    iget-object v1, v0, Lcom/join/mgps/adapter/ForumBaseAdapter$s0;->d:Landroid/widget/TextView;

    .line 118
    .line 119
    new-instance v2, Ljava/lang/StringBuilder;

    .line 120
    .line 121
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 122
    .line 123
    .line 124
    invoke-virtual {p1}, Lcom/join/mgps/dto/ForumBean;->getName()Ljava/lang/String;

    .line 125
    .line 126
    .line 127
    move-result-object v3

    .line 128
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 129
    .line 130
    .line 131
    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 132
    .line 133
    .line 134
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 135
    .line 136
    .line 137
    move-result-object v2

    .line 138
    invoke-static {v1, v2, p3}, Lcom/join/mgps/Util/r0;->D1(Landroid/widget/TextView;Ljava/lang/String;Ljava/lang/String;)V

    .line 139
    .line 140
    .line 141
    iget-object v1, v0, Lcom/join/mgps/adapter/ForumBaseAdapter$s0;->i:Landroid/widget/TextView;

    .line 142
    .line 143
    new-instance v2, Ljava/lang/StringBuilder;

    .line 144
    .line 145
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 146
    .line 147
    .line 148
    invoke-virtual {p1}, Lcom/join/mgps/dto/ForumBean;->getDescription()Ljava/lang/String;

    .line 149
    .line 150
    .line 151
    move-result-object v3

    .line 152
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 153
    .line 154
    .line 155
    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 156
    .line 157
    .line 158
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 159
    .line 160
    .line 161
    move-result-object v2

    .line 162
    invoke-static {v1, v2, p3}, Lcom/join/mgps/Util/r0;->D1(Landroid/widget/TextView;Ljava/lang/String;Ljava/lang/String;)V

    .line 163
    .line 164
    .line 165
    iget-object p3, v0, Lcom/join/mgps/adapter/ForumBaseAdapter$s0;->b:Landroid/view/View;

    .line 166
    .line 167
    invoke-virtual {p0, p3, p1}, Lcom/join/mgps/adapter/ForumBaseAdapter;->O0(Landroid/view/View;Lcom/join/mgps/dto/ForumBean;)V

    .line 168
    .line 169
    .line 170
    iget-object p3, v0, Lcom/join/mgps/adapter/ForumBaseAdapter$s0;->c:Lcom/facebook/drawee/view/SimpleDraweeView;

    .line 171
    .line 172
    invoke-virtual {p1}, Lcom/join/mgps/dto/ForumBean;->getIcon_src()Ljava/lang/String;

    .line 173
    .line 174
    .line 175
    move-result-object v1

    .line 176
    iget-object v2, p0, Lcom/join/mgps/adapter/ForumBaseAdapter;->e:Landroid/content/Context;

    .line 177
    .line 178
    invoke-static {v2}, Lcom/join/android/app/common/utils/l;->C(Landroid/content/Context;)Lcom/facebook/drawee/generic/RoundingParams;

    .line 179
    .line 180
    .line 181
    move-result-object v2

    .line 182
    invoke-static {p3, v1, v2}, Lcom/join/android/app/common/utils/l;->j(Lcom/facebook/drawee/view/SimpleDraweeView;Ljava/lang/String;Lcom/facebook/drawee/generic/RoundingParams;)V

    .line 183
    .line 184
    .line 185
    iget-object p3, v0, Lcom/join/mgps/adapter/ForumBaseAdapter$s0;->h:Landroid/widget/TextView;

    .line 186
    .line 187
    invoke-virtual {p3}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    .line 188
    .line 189
    .line 190
    move-result-object p3

    .line 191
    iget-object v1, v0, Lcom/join/mgps/adapter/ForumBaseAdapter$s0;->h:Landroid/widget/TextView;

    .line 192
    .line 193
    const/4 v2, 0x1

    .line 194
    new-array v2, v2, [Ljava/lang/Object;

    .line 195
    .line 196
    invoke-virtual {p1}, Lcom/join/mgps/dto/ForumBean;->getToday_posts()I

    .line 197
    .line 198
    .line 199
    move-result v3

    .line 200
    invoke-static {v3}, Lcom/join/mgps/Util/r0;->R(I)Ljava/lang/String;

    .line 201
    .line 202
    .line 203
    move-result-object v3

    .line 204
    const/4 v4, 0x0

    .line 205
    aput-object v3, v2, v4

    .line 206
    .line 207
    const v3, 0x7f120132

    .line 208
    .line 209
    .line 210
    invoke-virtual {p3, v3, v2}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    .line 211
    .line 212
    .line 213
    move-result-object p3

    .line 214
    const-string v2, "\u4eca\u65e5 0"

    .line 215
    .line 216
    invoke-static {v1, p3, v2}, Lcom/join/mgps/Util/r0;->D1(Landroid/widget/TextView;Ljava/lang/String;Ljava/lang/String;)V

    .line 217
    .line 218
    .line 219
    invoke-virtual {p1}, Lcom/join/mgps/dto/ForumBean;->is_follow()Z

    .line 220
    .line 221
    .line 222
    move-result p3

    .line 223
    if-eqz p3, :cond_2

    .line 224
    .line 225
    iget-object p3, v0, Lcom/join/mgps/adapter/ForumBaseAdapter$s0;->g:Landroid/widget/Button;

    .line 226
    .line 227
    const/16 v1, 0x8

    .line 228
    .line 229
    invoke-virtual {p3, v1}, Landroid/view/View;->setVisibility(I)V

    .line 230
    .line 231
    .line 232
    goto :goto_1

    .line 233
    :cond_2
    iget-object p3, v0, Lcom/join/mgps/adapter/ForumBaseAdapter$s0;->g:Landroid/widget/Button;

    .line 234
    .line 235
    invoke-virtual {p3, v4}, Landroid/view/View;->setVisibility(I)V

    .line 236
    .line 237
    .line 238
    :goto_1
    iget-object p3, v0, Lcom/join/mgps/adapter/ForumBaseAdapter$s0;->g:Landroid/widget/Button;

    .line 239
    .line 240
    invoke-virtual {p0, p3, p1}, Lcom/join/mgps/adapter/ForumBaseAdapter;->L0(Landroid/view/View;Lcom/join/mgps/dto/ForumBean;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 241
    .line 242
    .line 243
    goto :goto_2

    .line 244
    :catch_0
    move-exception p1

    .line 245
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 246
    .line 247
    .line 248
    :goto_2
    return-object p2
.end method

.method private x0(Landroid/widget/TextView;Ljava/lang/String;ZZLjava/lang/String;Ljava/util/List;)V
    .locals 11
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
            "tv",
            "message",
            "best",
            "ask",
            "moneyForAnswer",
            "tagInfos"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/TextView;",
            "Ljava/lang/String;",
            "ZZ",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lcom/join/mgps/dto/ForumBean$ForumPostsBean$TagInfo;",
            ">;)V"
        }
    .end annotation

    .line 1
    const/4 v7, 0x0

    .line 2
    const/4 v8, 0x0

    .line 3
    const-string v9, ""

    .line 4
    .line 5
    const/4 v10, 0x0

    .line 6
    move-object v0, p0

    .line 7
    move-object v1, p1

    .line 8
    move-object v2, p2

    .line 9
    move v3, p3

    .line 10
    move v4, p4

    .line 11
    move-object/from16 v5, p5

    .line 12
    .line 13
    move-object/from16 v6, p6

    .line 14
    .line 15
    invoke-direct/range {v0 .. v10}, Lcom/join/mgps/adapter/ForumBaseAdapter;->y0(Landroid/widget/TextView;Ljava/lang/String;ZZLjava/lang/String;Ljava/util/List;Ljava/util/List;ILjava/lang/String;I)V

    .line 16
    .line 17
    .line 18
    return-void
.end method

.method private y0(Landroid/widget/TextView;Ljava/lang/String;ZZLjava/lang/String;Ljava/util/List;Ljava/util/List;ILjava/lang/String;I)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "tv",
            "message",
            "best",
            "ask",
            "moneyForAnswer",
            "tagInfos",
            "tags",
            "fid",
            "fname",
            "solve_flg"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/TextView;",
            "Ljava/lang/String;",
            "ZZ",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lcom/join/mgps/dto/ForumBean$ForumPostsBean$TagInfo;",
            ">;",
            "Ljava/util/List<",
            "Lcom/join/mgps/dto/RecommendLabelTag;",
            ">;I",
            "Ljava/lang/String;",
            "I)V"
        }
    .end annotation

    .line 1
    new-instance v0, Landroid/text/SpannableStringBuilder;

    .line 2
    .line 3
    invoke-direct {v0}, Landroid/text/SpannableStringBuilder;-><init>()V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 7
    .line 8
    .line 9
    move-result-object v1

    .line 10
    invoke-static {v1, v0, p6}, Lcom/join/mgps/Util/r0;->h(Landroid/content/Context;Landroid/text/SpannableStringBuilder;Ljava/util/List;)V

    .line 11
    .line 12
    .line 13
    const/4 p6, 0x1

    .line 14
    if-eqz p4, :cond_0

    .line 15
    .line 16
    if-ne p10, p6, :cond_0

    .line 17
    .line 18
    const/4 v1, 0x0

    .line 19
    goto :goto_0

    .line 20
    :cond_0
    move v1, p4

    .line 21
    :goto_0
    invoke-static {p1, v0, p3, v1, p5}, Lcom/join/mgps/Util/r0;->g(Landroid/widget/TextView;Landroid/text/SpannableStringBuilder;ZZLjava/lang/String;)V

    .line 22
    .line 23
    .line 24
    if-eqz p4, :cond_1

    .line 25
    .line 26
    if-ne p10, p6, :cond_1

    .line 27
    .line 28
    invoke-static {p1, v0}, Lcom/join/mgps/Util/r0;->d(Landroid/widget/TextView;Landroid/text/SpannableStringBuilder;)V

    .line 29
    .line 30
    .line 31
    :cond_1
    iget-boolean p3, p0, Lcom/join/mgps/adapter/ForumBaseAdapter;->d:Z

    .line 32
    .line 33
    if-eqz p3, :cond_2

    .line 34
    .line 35
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 36
    .line 37
    .line 38
    move-result-object p3

    .line 39
    invoke-static {p3, v0, p7, p8, p9}, Lcom/join/mgps/Util/r0;->i(Landroid/content/Context;Landroid/text/SpannableStringBuilder;Ljava/util/List;ILjava/lang/String;)V

    .line 40
    .line 41
    .line 42
    :cond_2
    invoke-virtual {v0, p2}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 43
    .line 44
    .line 45
    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 46
    .line 47
    .line 48
    return-void
.end method


# virtual methods
.method A()I
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/join/mgps/adapter/ForumBaseAdapter;->e:Landroid/content/Context;

    .line 2
    .line 3
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    iget v0, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    .line 12
    .line 13
    const/high16 v1, 0x3fb40000    # 1.40625f

    .line 14
    .line 15
    int-to-float v0, v0

    .line 16
    div-float/2addr v0, v1

    .line 17
    float-to-int v0, v0

    .line 18
    return v0
.end method

.method A0(Landroid/widget/TextView;I)V
    .locals 5
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "view",
            "payGameAmount"
        }
    .end annotation

    .line 1
    const/4 v0, 0x1

    .line 2
    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 3
    .line 4
    .line 5
    const v1, -0xc35b03

    .line 6
    .line 7
    .line 8
    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 9
    .line 10
    .line 11
    invoke-virtual {p1}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    .line 12
    .line 13
    .line 14
    move-result-object v2

    .line 15
    new-array v0, v0, [Ljava/lang/Object;

    .line 16
    .line 17
    int-to-double v3, p2

    .line 18
    invoke-static {v3, v4}, Lcom/join/mgps/Util/t2;->n(D)Ljava/lang/String;

    .line 19
    .line 20
    .line 21
    move-result-object p2

    .line 22
    const/4 v3, 0x0

    .line 23
    aput-object p2, v0, v3

    .line 24
    .line 25
    const p2, 0x7f12037c

    .line 26
    .line 27
    .line 28
    invoke-virtual {v2, p2, v0}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    .line 29
    .line 30
    .line 31
    move-result-object p2

    .line 32
    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 33
    .line 34
    .line 35
    const/4 p2, 0x2

    .line 36
    const/high16 v0, 0x41500000    # 13.0f

    .line 37
    .line 38
    invoke-virtual {p1, p2, v0}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 39
    .line 40
    .line 41
    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 42
    .line 43
    .line 44
    const p2, 0x7f080f8b

    .line 45
    .line 46
    .line 47
    invoke-virtual {p1, p2}, Landroid/view/View;->setBackgroundResource(I)V

    .line 48
    .line 49
    .line 50
    return-void
.end method

.method B0(Lcom/join/mgps/adapter/ForumBaseAdapter$h1;Ljava/lang/Object;)V
    .locals 19
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "holder",
            "businessBean"
        }
    .end annotation

    .line 1
    move-object/from16 v1, p0

    .line 2
    .line 3
    move-object/from16 v2, p1

    .line 4
    .line 5
    move-object/from16 v3, p2

    .line 6
    .line 7
    iget-object v4, v2, Lcom/join/mgps/adapter/ForumBaseAdapter$h1;->d:Landroid/widget/Button;

    .line 8
    .line 9
    if-eqz v4, :cond_18

    .line 10
    .line 11
    if-nez v3, :cond_0

    .line 12
    .line 13
    goto/16 :goto_a

    .line 14
    .line 15
    :cond_0
    invoke-virtual {v4}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 20
    .line 21
    .line 22
    move-result-object v5

    .line 23
    instance-of v6, v3, Lcom/github/snowdream/android/app/downloader/DownloadTask;

    .line 24
    .line 25
    if-eqz v6, :cond_1

    .line 26
    .line 27
    move-object v6, v3

    .line 28
    check-cast v6, Lcom/github/snowdream/android/app/downloader/DownloadTask;

    .line 29
    .line 30
    goto :goto_0

    .line 31
    :cond_1
    const/4 v6, 0x0

    .line 32
    :goto_0
    if-eqz v6, :cond_18

    .line 33
    .line 34
    invoke-virtual {v6}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getStatus()I

    .line 35
    .line 36
    .line 37
    move-result v7

    .line 38
    invoke-virtual {v6}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getVer()Ljava/lang/String;

    .line 39
    .line 40
    .line 41
    move-result-object v8

    .line 42
    invoke-virtual {v6}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getPackageName()Ljava/lang/String;

    .line 43
    .line 44
    .line 45
    move-result-object v9

    .line 46
    invoke-virtual {v6}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getTipBeans()Ljava/util/List;

    .line 47
    .line 48
    .line 49
    move-result-object v10

    .line 50
    invoke-virtual {v6}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getSize()J

    .line 51
    .line 52
    .line 53
    move-result-wide v11

    .line 54
    invoke-virtual {v6}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getPay_game_amount()I

    .line 55
    .line 56
    .line 57
    move-result v13

    .line 58
    if-lez v13, :cond_2

    .line 59
    .line 60
    invoke-static {}, Lt6/e0;->o()Lt6/e0;

    .line 61
    .line 62
    .line 63
    move-result-object v15

    .line 64
    invoke-virtual {v6}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getCrc_link_type_val()Ljava/lang/String;

    .line 65
    .line 66
    .line 67
    move-result-object v14

    .line 68
    invoke-virtual {v15, v14}, Lt6/e0;->p(Ljava/lang/String;)Z

    .line 69
    .line 70
    .line 71
    move-result v14

    .line 72
    if-eqz v14, :cond_2

    .line 73
    .line 74
    const/4 v13, 0x0

    .line 75
    :cond_2
    instance-of v14, v3, Lcom/join/mgps/dto/CollectionBeanSub;

    .line 76
    .line 77
    if-eqz v14, :cond_5

    .line 78
    .line 79
    move-object v6, v3

    .line 80
    check-cast v6, Lcom/join/mgps/dto/CollectionBeanSub;

    .line 81
    .line 82
    invoke-virtual {v6}, Lcom/join/kotlin/base/impl/BaseDownloadable;->getDownloadTask()Lcom/github/snowdream/android/app/downloader/DownloadTask;

    .line 83
    .line 84
    .line 85
    move-result-object v8

    .line 86
    invoke-virtual {v6}, Lcom/join/mgps/dto/CollectionBeanSub;->getVer()Ljava/lang/String;

    .line 87
    .line 88
    .line 89
    move-result-object v14

    .line 90
    invoke-virtual {v6}, Lcom/join/mgps/dto/CollectionBeanSub;->getPay_tag_info()Lcom/join/mgps/dto/PayTagInfo;

    .line 91
    .line 92
    .line 93
    move-result-object v15

    .line 94
    if-eqz v15, :cond_3

    .line 95
    .line 96
    invoke-virtual {v6}, Lcom/join/mgps/dto/CollectionBeanSub;->getPay_tag_info()Lcom/join/mgps/dto/PayTagInfo;

    .line 97
    .line 98
    .line 99
    move-result-object v13

    .line 100
    invoke-virtual {v13}, Lcom/join/mgps/dto/PayTagInfo;->getPay_game_amount()I

    .line 101
    .line 102
    .line 103
    move-result v13

    .line 104
    :cond_3
    if-lez v13, :cond_4

    .line 105
    .line 106
    invoke-static {}, Lt6/e0;->o()Lt6/e0;

    .line 107
    .line 108
    .line 109
    move-result-object v15

    .line 110
    invoke-virtual {v6}, Lcom/join/mgps/dto/CollectionBeanSub;->getCrc_sign_id()Ljava/lang/String;

    .line 111
    .line 112
    .line 113
    move-result-object v6

    .line 114
    invoke-virtual {v15, v6}, Lt6/e0;->p(Ljava/lang/String;)Z

    .line 115
    .line 116
    .line 117
    move-result v6

    .line 118
    if-eqz v6, :cond_4

    .line 119
    .line 120
    const/4 v13, 0x0

    .line 121
    :cond_4
    move-object v6, v8

    .line 122
    move-object v8, v14

    .line 123
    goto :goto_1

    .line 124
    :cond_5
    instance-of v14, v3, Lcom/join/mgps/business/RecomDatabeanBusiness;

    .line 125
    .line 126
    if-eqz v14, :cond_7

    .line 127
    .line 128
    move-object v14, v3

    .line 129
    check-cast v14, Lcom/join/mgps/business/RecomDatabeanBusiness;

    .line 130
    .line 131
    invoke-virtual {v14}, Lcom/join/mgps/dto/RecomDatabean;->getSub()Ljava/util/List;

    .line 132
    .line 133
    .line 134
    move-result-object v14

    .line 135
    const/4 v15, 0x0

    .line 136
    invoke-interface {v14, v15}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 137
    .line 138
    .line 139
    move-result-object v14

    .line 140
    check-cast v14, Lcom/join/mgps/dto/AppBeanMain;

    .line 141
    .line 142
    invoke-virtual {v14}, Lcom/join/mgps/dto/AppBeanMain;->getGame_info()Lcom/join/mgps/dto/AppBean;

    .line 143
    .line 144
    .line 145
    move-result-object v14

    .line 146
    invoke-virtual {v14}, Lcom/join/mgps/dto/AppBean;->getPay_tag_info()Lcom/join/mgps/dto/PayTagInfo;

    .line 147
    .line 148
    .line 149
    move-result-object v15

    .line 150
    if-eqz v15, :cond_6

    .line 151
    .line 152
    invoke-virtual {v14}, Lcom/join/mgps/dto/AppBean;->getPay_tag_info()Lcom/join/mgps/dto/PayTagInfo;

    .line 153
    .line 154
    .line 155
    move-result-object v13

    .line 156
    invoke-virtual {v13}, Lcom/join/mgps/dto/PayTagInfo;->getPay_game_amount()I

    .line 157
    .line 158
    .line 159
    move-result v13

    .line 160
    :cond_6
    if-lez v13, :cond_7

    .line 161
    .line 162
    invoke-static {}, Lt6/e0;->o()Lt6/e0;

    .line 163
    .line 164
    .line 165
    move-result-object v15

    .line 166
    invoke-virtual {v14}, Lcom/join/mgps/dto/AppBean;->getCrc_sign_id()Ljava/lang/String;

    .line 167
    .line 168
    .line 169
    move-result-object v14

    .line 170
    invoke-virtual {v15, v14}, Lt6/e0;->p(Ljava/lang/String;)Z

    .line 171
    .line 172
    .line 173
    move-result v14

    .line 174
    if-eqz v14, :cond_7

    .line 175
    .line 176
    const/4 v13, 0x0

    .line 177
    :cond_7
    :goto_1
    const-string v14, "\u66f4\u65b0"

    .line 178
    .line 179
    const v15, 0x7f080f90

    .line 180
    .line 181
    .line 182
    if-nez v6, :cond_e

    .line 183
    .line 184
    invoke-static {v10}, Lcom/join/mgps/Util/UtilsMy;->p0(Ljava/util/List;)Z

    .line 185
    .line 186
    .line 187
    move-result v6

    .line 188
    if-eqz v6, :cond_c

    .line 189
    .line 190
    invoke-static {v0}, Lcom/join/android/app/common/utils/g;->t0(Landroid/content/Context;)Lcom/join/android/app/common/utils/g;

    .line 191
    .line 192
    .line 193
    move-result-object v6

    .line 194
    invoke-virtual {v6, v0, v9}, Lcom/join/android/app/common/utils/APKUtils;->e(Landroid/content/Context;Ljava/lang/String;)Z

    .line 195
    .line 196
    .line 197
    move-result v6

    .line 198
    if-lez v13, :cond_8

    .line 199
    .line 200
    const/16 v16, 0x0

    .line 201
    .line 202
    goto :goto_2

    .line 203
    :cond_8
    move/from16 v16, v6

    .line 204
    .line 205
    :goto_2
    if-eqz v16, :cond_a

    .line 206
    .line 207
    invoke-static {v0}, Lcom/join/android/app/common/utils/g;->t0(Landroid/content/Context;)Lcom/join/android/app/common/utils/g;

    .line 208
    .line 209
    .line 210
    move-result-object v2

    .line 211
    invoke-virtual {v2, v0, v9}, Lcom/join/android/app/common/utils/APKUtils;->n(Landroid/content/Context;Ljava/lang/String;)Lcom/join/android/app/common/utils/APKUtils$a;

    .line 212
    .line 213
    .line 214
    move-result-object v2

    .line 215
    invoke-static {v8}, Lcom/join/mgps/Util/t2;->i(Ljava/lang/String;)Z

    .line 216
    .line 217
    .line 218
    move-result v6

    .line 219
    if-eqz v6, :cond_9

    .line 220
    .line 221
    invoke-virtual {v2}, Lcom/join/android/app/common/utils/APKUtils$a;->d()I

    .line 222
    .line 223
    .line 224
    move-result v2

    .line 225
    invoke-static {v8}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 226
    .line 227
    .line 228
    move-result v6

    .line 229
    if-ge v2, v6, :cond_9

    .line 230
    .line 231
    invoke-virtual {v4, v15}, Landroid/view/View;->setBackgroundResource(I)V

    .line 232
    .line 233
    .line 234
    invoke-direct {v1, v4, v14}, Lcom/join/mgps/adapter/ForumBaseAdapter;->c1(Landroid/view/View;Ljava/lang/CharSequence;)V

    .line 235
    .line 236
    .line 237
    const v0, 0x7f060031

    .line 238
    .line 239
    .line 240
    invoke-virtual {v5, v0}, Landroid/content/res/Resources;->getColor(I)I

    .line 241
    .line 242
    .line 243
    move-result v0

    .line 244
    invoke-direct {v1, v4, v0}, Lcom/join/mgps/adapter/ForumBaseAdapter;->d1(Landroid/view/View;I)V

    .line 245
    .line 246
    .line 247
    goto/16 :goto_9

    .line 248
    .line 249
    :cond_9
    const v2, 0x7f080f97

    .line 250
    .line 251
    .line 252
    invoke-virtual {v4, v2}, Landroid/view/View;->setBackgroundResource(I)V

    .line 253
    .line 254
    .line 255
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 256
    .line 257
    .line 258
    move-result-object v0

    .line 259
    const v2, 0x7f120105

    .line 260
    .line 261
    .line 262
    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    .line 263
    .line 264
    .line 265
    move-result-object v0

    .line 266
    invoke-direct {v1, v4, v0}, Lcom/join/mgps/adapter/ForumBaseAdapter;->c1(Landroid/view/View;Ljava/lang/CharSequence;)V

    .line 267
    .line 268
    .line 269
    const v0, 0x7f060034

    .line 270
    .line 271
    .line 272
    invoke-virtual {v5, v0}, Landroid/content/res/Resources;->getColor(I)I

    .line 273
    .line 274
    .line 275
    move-result v0

    .line 276
    invoke-direct {v1, v4, v0}, Lcom/join/mgps/adapter/ForumBaseAdapter;->d1(Landroid/view/View;I)V

    .line 277
    .line 278
    .line 279
    goto/16 :goto_9

    .line 280
    .line 281
    :cond_a
    invoke-virtual {v4, v15}, Landroid/view/View;->setBackgroundResource(I)V

    .line 282
    .line 283
    .line 284
    if-lez v13, :cond_b

    .line 285
    .line 286
    iget-object v0, v2, Lcom/join/mgps/adapter/ForumBaseAdapter$h1;->d:Landroid/widget/Button;

    .line 287
    .line 288
    invoke-virtual {v1, v0, v13}, Lcom/join/mgps/adapter/ForumBaseAdapter;->A0(Landroid/widget/TextView;I)V

    .line 289
    .line 290
    .line 291
    goto/16 :goto_9

    .line 292
    .line 293
    :cond_b
    invoke-virtual {v1, v4, v7}, Lcom/join/mgps/adapter/ForumBaseAdapter;->z0(Landroid/view/View;I)V

    .line 294
    .line 295
    .line 296
    goto/16 :goto_9

    .line 297
    .line 298
    :cond_c
    invoke-virtual {v4, v15}, Landroid/view/View;->setBackgroundResource(I)V

    .line 299
    .line 300
    .line 301
    if-lez v13, :cond_d

    .line 302
    .line 303
    iget-object v0, v2, Lcom/join/mgps/adapter/ForumBaseAdapter$h1;->d:Landroid/widget/Button;

    .line 304
    .line 305
    invoke-virtual {v1, v0, v13}, Lcom/join/mgps/adapter/ForumBaseAdapter;->A0(Landroid/widget/TextView;I)V

    .line 306
    .line 307
    .line 308
    goto/16 :goto_9

    .line 309
    .line 310
    :cond_d
    invoke-virtual {v1, v4, v7}, Lcom/join/mgps/adapter/ForumBaseAdapter;->z0(Landroid/view/View;I)V

    .line 311
    .line 312
    .line 313
    goto/16 :goto_9

    .line 314
    .line 315
    :cond_e
    invoke-virtual {v6}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getStatus()I

    .line 316
    .line 317
    .line 318
    move-result v8

    .line 319
    if-lez v13, :cond_f

    .line 320
    .line 321
    const/16 v8, 0x2b

    .line 322
    .line 323
    :cond_f
    if-eqz v8, :cond_10

    .line 324
    .line 325
    const/16 v10, 0x1b

    .line 326
    .line 327
    const-string v15, "\u6682\u505c\u4e2d"

    .line 328
    .line 329
    if-eq v8, v10, :cond_16

    .line 330
    .line 331
    const/4 v10, 0x2

    .line 332
    const-wide/16 v17, 0x0

    .line 333
    .line 334
    const-string v9, "/"

    .line 335
    .line 336
    if-eq v8, v10, :cond_14

    .line 337
    .line 338
    const/4 v10, 0x3

    .line 339
    if-eq v8, v10, :cond_12

    .line 340
    .line 341
    const/4 v10, 0x5

    .line 342
    if-eq v8, v10, :cond_11

    .line 343
    .line 344
    const/4 v10, 0x6

    .line 345
    if-eq v8, v10, :cond_12

    .line 346
    .line 347
    const/4 v10, 0x7

    .line 348
    if-eq v8, v10, :cond_10

    .line 349
    .line 350
    const/16 v10, 0x2a

    .line 351
    .line 352
    if-eq v8, v10, :cond_11

    .line 353
    .line 354
    const/16 v10, 0x2b

    .line 355
    .line 356
    if-eq v8, v10, :cond_10

    .line 357
    .line 358
    const/16 v0, 0x11

    .line 359
    .line 360
    packed-switch v8, :pswitch_data_0

    .line 361
    .line 362
    .line 363
    goto/16 :goto_9

    .line 364
    .line 365
    :pswitch_0
    invoke-direct {v1, v2, v0}, Lcom/join/mgps/adapter/ForumBaseAdapter;->h1(Lcom/join/mgps/adapter/ForumBaseAdapter$h1;I)V

    .line 366
    .line 367
    .line 368
    iget-object v0, v2, Lcom/join/mgps/adapter/ForumBaseAdapter$h1;->i:Landroid/widget/TextView;

    .line 369
    .line 370
    new-instance v7, Ljava/lang/StringBuilder;

    .line 371
    .line 372
    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    .line 373
    .line 374
    .line 375
    invoke-static {v11, v12}, Lcom/join/mgps/Util/UtilsMy;->c(J)Ljava/lang/String;

    .line 376
    .line 377
    .line 378
    move-result-object v8

    .line 379
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 380
    .line 381
    .line 382
    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 383
    .line 384
    .line 385
    invoke-static {v11, v12}, Lcom/join/mgps/Util/UtilsMy;->c(J)Ljava/lang/String;

    .line 386
    .line 387
    .line 388
    move-result-object v8

    .line 389
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 390
    .line 391
    .line 392
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 393
    .line 394
    .line 395
    move-result-object v7

    .line 396
    invoke-virtual {v0, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 397
    .line 398
    .line 399
    iget-object v0, v2, Lcom/join/mgps/adapter/ForumBaseAdapter$h1;->j:Landroid/widget/TextView;

    .line 400
    .line 401
    const-string v7, "\u70b9\u51fb\u91cd\u65b0\u89e3\u538b"

    .line 402
    .line 403
    invoke-virtual {v0, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 404
    .line 405
    .line 406
    iget-object v0, v2, Lcom/join/mgps/adapter/ForumBaseAdapter$h1;->l:Landroid/widget/ProgressBar;

    .line 407
    .line 408
    invoke-virtual {v6}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getProgress()J

    .line 409
    .line 410
    .line 411
    move-result-wide v6

    .line 412
    long-to-int v2, v6

    .line 413
    invoke-virtual {v0, v2}, Landroid/widget/ProgressBar;->setProgress(I)V

    .line 414
    .line 415
    .line 416
    const v0, 0x7f080fb6

    .line 417
    .line 418
    .line 419
    invoke-virtual {v4, v0}, Landroid/view/View;->setBackgroundResource(I)V

    .line 420
    .line 421
    .line 422
    const-string v0, "\u89e3\u538b"

    .line 423
    .line 424
    invoke-direct {v1, v4, v0}, Lcom/join/mgps/adapter/ForumBaseAdapter;->c1(Landroid/view/View;Ljava/lang/CharSequence;)V

    .line 425
    .line 426
    .line 427
    const v0, 0x7f06002b

    .line 428
    .line 429
    .line 430
    invoke-virtual {v5, v0}, Landroid/content/res/Resources;->getColor(I)I

    .line 431
    .line 432
    .line 433
    move-result v0

    .line 434
    invoke-direct {v1, v4, v0}, Lcom/join/mgps/adapter/ForumBaseAdapter;->d1(Landroid/view/View;I)V

    .line 435
    .line 436
    .line 437
    goto/16 :goto_9

    .line 438
    .line 439
    :pswitch_1
    invoke-direct {v1, v2, v0}, Lcom/join/mgps/adapter/ForumBaseAdapter;->h1(Lcom/join/mgps/adapter/ForumBaseAdapter$h1;I)V

    .line 440
    .line 441
    .line 442
    iget-object v0, v2, Lcom/join/mgps/adapter/ForumBaseAdapter$h1;->i:Landroid/widget/TextView;

    .line 443
    .line 444
    new-instance v7, Ljava/lang/StringBuilder;

    .line 445
    .line 446
    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    .line 447
    .line 448
    .line 449
    invoke-static {v11, v12}, Lcom/join/mgps/Util/UtilsMy;->c(J)Ljava/lang/String;

    .line 450
    .line 451
    .line 452
    move-result-object v8

    .line 453
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 454
    .line 455
    .line 456
    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 457
    .line 458
    .line 459
    invoke-static {v11, v12}, Lcom/join/mgps/Util/UtilsMy;->c(J)Ljava/lang/String;

    .line 460
    .line 461
    .line 462
    move-result-object v8

    .line 463
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 464
    .line 465
    .line 466
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 467
    .line 468
    .line 469
    move-result-object v7

    .line 470
    invoke-virtual {v0, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 471
    .line 472
    .line 473
    iget-object v0, v2, Lcom/join/mgps/adapter/ForumBaseAdapter$h1;->j:Landroid/widget/TextView;

    .line 474
    .line 475
    const-string v7, "\u89e3\u538b\u4e2d.."

    .line 476
    .line 477
    invoke-virtual {v0, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 478
    .line 479
    .line 480
    iget-object v0, v2, Lcom/join/mgps/adapter/ForumBaseAdapter$h1;->l:Landroid/widget/ProgressBar;

    .line 481
    .line 482
    invoke-virtual {v6}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getProgress()J

    .line 483
    .line 484
    .line 485
    move-result-wide v6

    .line 486
    long-to-int v2, v6

    .line 487
    invoke-virtual {v0, v2}, Landroid/widget/ProgressBar;->setProgress(I)V

    .line 488
    .line 489
    .line 490
    const v0, 0x7f080550

    .line 491
    .line 492
    .line 493
    invoke-virtual {v4, v0}, Landroid/view/View;->setBackgroundResource(I)V

    .line 494
    .line 495
    .line 496
    const-string v0, "\u89e3\u538b\u4e2d"

    .line 497
    .line 498
    invoke-direct {v1, v4, v0}, Lcom/join/mgps/adapter/ForumBaseAdapter;->c1(Landroid/view/View;Ljava/lang/CharSequence;)V

    .line 499
    .line 500
    .line 501
    const v0, 0x7f060032

    .line 502
    .line 503
    .line 504
    invoke-virtual {v5, v0}, Landroid/content/res/Resources;->getColor(I)I

    .line 505
    .line 506
    .line 507
    move-result v0

    .line 508
    invoke-direct {v1, v4, v0}, Lcom/join/mgps/adapter/ForumBaseAdapter;->d1(Landroid/view/View;I)V

    .line 509
    .line 510
    .line 511
    goto/16 :goto_9

    .line 512
    .line 513
    :pswitch_2
    const/4 v0, 0x0

    .line 514
    invoke-direct {v1, v2, v0}, Lcom/join/mgps/adapter/ForumBaseAdapter;->h1(Lcom/join/mgps/adapter/ForumBaseAdapter$h1;I)V

    .line 515
    .line 516
    .line 517
    const v0, 0x7f080f90

    .line 518
    .line 519
    .line 520
    invoke-virtual {v4, v0}, Landroid/view/View;->setBackgroundResource(I)V

    .line 521
    .line 522
    .line 523
    const-string v0, "\u5b89\u88c5"

    .line 524
    .line 525
    invoke-direct {v1, v4, v0}, Lcom/join/mgps/adapter/ForumBaseAdapter;->c1(Landroid/view/View;Ljava/lang/CharSequence;)V

    .line 526
    .line 527
    .line 528
    const v0, 0x7f060031

    .line 529
    .line 530
    .line 531
    invoke-virtual {v5, v0}, Landroid/content/res/Resources;->getColor(I)I

    .line 532
    .line 533
    .line 534
    move-result v0

    .line 535
    invoke-direct {v1, v4, v0}, Lcom/join/mgps/adapter/ForumBaseAdapter;->d1(Landroid/view/View;I)V

    .line 536
    .line 537
    .line 538
    goto/16 :goto_9

    .line 539
    .line 540
    :pswitch_3
    const/16 v0, 0x10

    .line 541
    .line 542
    invoke-direct {v1, v2, v0}, Lcom/join/mgps/adapter/ForumBaseAdapter;->h1(Lcom/join/mgps/adapter/ForumBaseAdapter$h1;I)V

    .line 543
    .line 544
    .line 545
    const v0, 0x7f080f8b

    .line 546
    .line 547
    .line 548
    invoke-virtual {v4, v0}, Landroid/view/View;->setBackgroundResource(I)V

    .line 549
    .line 550
    .line 551
    const-string v0, "\u7b49\u5f85"

    .line 552
    .line 553
    invoke-direct {v1, v4, v0}, Lcom/join/mgps/adapter/ForumBaseAdapter;->c1(Landroid/view/View;Ljava/lang/CharSequence;)V

    .line 554
    .line 555
    .line 556
    const v0, 0x7f06002b

    .line 557
    .line 558
    .line 559
    invoke-virtual {v5, v0}, Landroid/content/res/Resources;->getColor(I)I

    .line 560
    .line 561
    .line 562
    move-result v0

    .line 563
    invoke-direct {v1, v4, v0}, Lcom/join/mgps/adapter/ForumBaseAdapter;->d1(Landroid/view/View;I)V

    .line 564
    .line 565
    .line 566
    goto/16 :goto_9

    .line 567
    .line 568
    :pswitch_4
    const/4 v8, 0x0

    .line 569
    invoke-direct {v1, v2, v8}, Lcom/join/mgps/adapter/ForumBaseAdapter;->h1(Lcom/join/mgps/adapter/ForumBaseAdapter$h1;I)V

    .line 570
    .line 571
    .line 572
    const v0, 0x7f080f90

    .line 573
    .line 574
    .line 575
    invoke-virtual {v4, v0}, Landroid/view/View;->setBackgroundResource(I)V

    .line 576
    .line 577
    .line 578
    invoke-direct {v1, v4, v14}, Lcom/join/mgps/adapter/ForumBaseAdapter;->c1(Landroid/view/View;Ljava/lang/CharSequence;)V

    .line 579
    .line 580
    .line 581
    const v0, 0x7f060031

    .line 582
    .line 583
    .line 584
    invoke-virtual {v5, v0}, Landroid/content/res/Resources;->getColor(I)I

    .line 585
    .line 586
    .line 587
    move-result v0

    .line 588
    invoke-direct {v1, v4, v0}, Lcom/join/mgps/adapter/ForumBaseAdapter;->d1(Landroid/view/View;I)V

    .line 589
    .line 590
    .line 591
    goto/16 :goto_9

    .line 592
    .line 593
    :cond_10
    const/4 v0, 0x0

    .line 594
    goto/16 :goto_8

    .line 595
    .line 596
    :cond_11
    const/4 v8, 0x0

    .line 597
    goto :goto_3

    .line 598
    :cond_12
    const v0, 0x7f080f8b

    .line 599
    .line 600
    .line 601
    goto :goto_4

    .line 602
    :goto_3
    invoke-direct {v1, v2, v8}, Lcom/join/mgps/adapter/ForumBaseAdapter;->h1(Lcom/join/mgps/adapter/ForumBaseAdapter$h1;I)V

    .line 603
    .line 604
    .line 605
    const v2, 0x7f080f97

    .line 606
    .line 607
    .line 608
    invoke-virtual {v4, v2}, Landroid/view/View;->setBackgroundResource(I)V

    .line 609
    .line 610
    .line 611
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 612
    .line 613
    .line 614
    move-result-object v0

    .line 615
    const v2, 0x7f120105

    .line 616
    .line 617
    .line 618
    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    .line 619
    .line 620
    .line 621
    move-result-object v0

    .line 622
    invoke-direct {v1, v4, v0}, Lcom/join/mgps/adapter/ForumBaseAdapter;->c1(Landroid/view/View;Ljava/lang/CharSequence;)V

    .line 623
    .line 624
    .line 625
    const v0, 0x7f060034

    .line 626
    .line 627
    .line 628
    invoke-virtual {v5, v0}, Landroid/content/res/Resources;->getColor(I)I

    .line 629
    .line 630
    .line 631
    move-result v0

    .line 632
    invoke-direct {v1, v4, v0}, Lcom/join/mgps/adapter/ForumBaseAdapter;->d1(Landroid/view/View;I)V

    .line 633
    .line 634
    .line 635
    goto/16 :goto_9

    .line 636
    .line 637
    :goto_4
    invoke-virtual {v4, v0}, Landroid/view/View;->setBackgroundResource(I)V

    .line 638
    .line 639
    .line 640
    const-string v0, "\u7ee7\u7eed"

    .line 641
    .line 642
    invoke-direct {v1, v4, v0}, Lcom/join/mgps/adapter/ForumBaseAdapter;->c1(Landroid/view/View;Ljava/lang/CharSequence;)V

    .line 643
    .line 644
    .line 645
    const v0, 0x7f06002b

    .line 646
    .line 647
    .line 648
    invoke-virtual {v5, v0}, Landroid/content/res/Resources;->getColor(I)I

    .line 649
    .line 650
    .line 651
    move-result v0

    .line 652
    invoke-direct {v1, v4, v0}, Lcom/join/mgps/adapter/ForumBaseAdapter;->d1(Landroid/view/View;I)V

    .line 653
    .line 654
    .line 655
    const/16 v0, 0x10

    .line 656
    .line 657
    invoke-direct {v1, v2, v0}, Lcom/join/mgps/adapter/ForumBaseAdapter;->h1(Lcom/join/mgps/adapter/ForumBaseAdapter$h1;I)V

    .line 658
    .line 659
    .line 660
    :try_start_0
    invoke-virtual {v6}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getSize()J

    .line 661
    .line 662
    .line 663
    move-result-wide v7

    .line 664
    cmp-long v0, v7, v17

    .line 665
    .line 666
    if-nez v0, :cond_13

    .line 667
    .line 668
    iget-object v0, v2, Lcom/join/mgps/adapter/ForumBaseAdapter$h1;->i:Landroid/widget/TextView;

    .line 669
    .line 670
    new-instance v5, Ljava/lang/StringBuilder;

    .line 671
    .line 672
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 673
    .line 674
    .line 675
    invoke-virtual {v6}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getCurrentSize()J

    .line 676
    .line 677
    .line 678
    move-result-wide v7

    .line 679
    invoke-static {v7, v8}, Lcom/join/mgps/Util/UtilsMy;->c(J)Ljava/lang/String;

    .line 680
    .line 681
    .line 682
    move-result-object v7

    .line 683
    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 684
    .line 685
    .line 686
    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 687
    .line 688
    .line 689
    invoke-static {v11, v12}, Lcom/join/mgps/Util/UtilsMy;->c(J)Ljava/lang/String;

    .line 690
    .line 691
    .line 692
    move-result-object v7

    .line 693
    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 694
    .line 695
    .line 696
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 697
    .line 698
    .line 699
    move-result-object v5

    .line 700
    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 701
    .line 702
    .line 703
    goto :goto_5

    .line 704
    :cond_13
    iget-object v0, v2, Lcom/join/mgps/adapter/ForumBaseAdapter$h1;->i:Landroid/widget/TextView;

    .line 705
    .line 706
    new-instance v5, Ljava/lang/StringBuilder;

    .line 707
    .line 708
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 709
    .line 710
    .line 711
    invoke-virtual {v6}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getCurrentSize()J

    .line 712
    .line 713
    .line 714
    move-result-wide v7

    .line 715
    invoke-static {v7, v8}, Lcom/join/mgps/Util/UtilsMy;->c(J)Ljava/lang/String;

    .line 716
    .line 717
    .line 718
    move-result-object v7

    .line 719
    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 720
    .line 721
    .line 722
    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 723
    .line 724
    .line 725
    invoke-static {v11, v12}, Lcom/join/mgps/Util/UtilsMy;->c(J)Ljava/lang/String;

    .line 726
    .line 727
    .line 728
    move-result-object v7

    .line 729
    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 730
    .line 731
    .line 732
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 733
    .line 734
    .line 735
    move-result-object v5

    .line 736
    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 737
    .line 738
    .line 739
    :goto_5
    iget-object v0, v2, Lcom/join/mgps/adapter/ForumBaseAdapter$h1;->k:Landroid/widget/ProgressBar;

    .line 740
    .line 741
    invoke-virtual {v6}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getProgress()J

    .line 742
    .line 743
    .line 744
    move-result-wide v5

    .line 745
    long-to-int v6, v5

    .line 746
    invoke-virtual {v0, v6}, Landroid/widget/ProgressBar;->setProgress(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 747
    .line 748
    .line 749
    goto :goto_6

    .line 750
    :catch_0
    move-exception v0

    .line 751
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 752
    .line 753
    .line 754
    :goto_6
    iget-object v0, v2, Lcom/join/mgps/adapter/ForumBaseAdapter$h1;->j:Landroid/widget/TextView;

    .line 755
    .line 756
    invoke-virtual {v0, v15}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 757
    .line 758
    .line 759
    goto/16 :goto_9

    .line 760
    .line 761
    :cond_14
    invoke-static {v6}, Lcom/join/mgps/Util/UtilsMy;->U4(Lcom/github/snowdream/android/app/downloader/DownloadTask;)V

    .line 762
    .line 763
    .line 764
    const v0, 0x7f080f8b

    .line 765
    .line 766
    .line 767
    invoke-virtual {v4, v0}, Landroid/view/View;->setBackgroundResource(I)V

    .line 768
    .line 769
    .line 770
    const-string v0, "\u6682\u505c"

    .line 771
    .line 772
    invoke-direct {v1, v4, v0}, Lcom/join/mgps/adapter/ForumBaseAdapter;->c1(Landroid/view/View;Ljava/lang/CharSequence;)V

    .line 773
    .line 774
    .line 775
    const v0, 0x7f06002b

    .line 776
    .line 777
    .line 778
    invoke-virtual {v5, v0}, Landroid/content/res/Resources;->getColor(I)I

    .line 779
    .line 780
    .line 781
    move-result v0

    .line 782
    invoke-direct {v1, v4, v0}, Lcom/join/mgps/adapter/ForumBaseAdapter;->d1(Landroid/view/View;I)V

    .line 783
    .line 784
    .line 785
    const/16 v0, 0x10

    .line 786
    .line 787
    invoke-direct {v1, v2, v0}, Lcom/join/mgps/adapter/ForumBaseAdapter;->h1(Lcom/join/mgps/adapter/ForumBaseAdapter$h1;I)V

    .line 788
    .line 789
    .line 790
    invoke-virtual {v6}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getSize()J

    .line 791
    .line 792
    .line 793
    move-result-wide v7

    .line 794
    cmp-long v0, v7, v17

    .line 795
    .line 796
    if-nez v0, :cond_15

    .line 797
    .line 798
    iget-object v0, v2, Lcom/join/mgps/adapter/ForumBaseAdapter$h1;->i:Landroid/widget/TextView;

    .line 799
    .line 800
    new-instance v5, Ljava/lang/StringBuilder;

    .line 801
    .line 802
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 803
    .line 804
    .line 805
    invoke-virtual {v6}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getCurrentSize()J

    .line 806
    .line 807
    .line 808
    move-result-wide v7

    .line 809
    invoke-static {v7, v8}, Lcom/join/mgps/Util/UtilsMy;->c(J)Ljava/lang/String;

    .line 810
    .line 811
    .line 812
    move-result-object v7

    .line 813
    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 814
    .line 815
    .line 816
    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 817
    .line 818
    .line 819
    invoke-static {v11, v12}, Lcom/join/mgps/Util/UtilsMy;->c(J)Ljava/lang/String;

    .line 820
    .line 821
    .line 822
    move-result-object v7

    .line 823
    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 824
    .line 825
    .line 826
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 827
    .line 828
    .line 829
    move-result-object v5

    .line 830
    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 831
    .line 832
    .line 833
    goto :goto_7

    .line 834
    :cond_15
    iget-object v0, v2, Lcom/join/mgps/adapter/ForumBaseAdapter$h1;->i:Landroid/widget/TextView;

    .line 835
    .line 836
    new-instance v5, Ljava/lang/StringBuilder;

    .line 837
    .line 838
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 839
    .line 840
    .line 841
    invoke-virtual {v6}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getCurrentSize()J

    .line 842
    .line 843
    .line 844
    move-result-wide v7

    .line 845
    invoke-static {v7, v8}, Lcom/join/mgps/Util/UtilsMy;->c(J)Ljava/lang/String;

    .line 846
    .line 847
    .line 848
    move-result-object v7

    .line 849
    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 850
    .line 851
    .line 852
    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 853
    .line 854
    .line 855
    invoke-static {v11, v12}, Lcom/join/mgps/Util/UtilsMy;->c(J)Ljava/lang/String;

    .line 856
    .line 857
    .line 858
    move-result-object v7

    .line 859
    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 860
    .line 861
    .line 862
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 863
    .line 864
    .line 865
    move-result-object v5

    .line 866
    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 867
    .line 868
    .line 869
    :goto_7
    iget-object v0, v2, Lcom/join/mgps/adapter/ForumBaseAdapter$h1;->k:Landroid/widget/ProgressBar;

    .line 870
    .line 871
    invoke-virtual {v6}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getProgress()J

    .line 872
    .line 873
    .line 874
    move-result-wide v7

    .line 875
    long-to-int v5, v7

    .line 876
    invoke-virtual {v0, v5}, Landroid/widget/ProgressBar;->setProgress(I)V

    .line 877
    .line 878
    .line 879
    invoke-virtual {v6}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getSpeed()Ljava/lang/String;

    .line 880
    .line 881
    .line 882
    move-result-object v0

    .line 883
    iget-object v2, v2, Lcom/join/mgps/adapter/ForumBaseAdapter$h1;->j:Landroid/widget/TextView;

    .line 884
    .line 885
    new-instance v5, Ljava/lang/StringBuilder;

    .line 886
    .line 887
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 888
    .line 889
    .line 890
    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 891
    .line 892
    .line 893
    const-string v0, "/S"

    .line 894
    .line 895
    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 896
    .line 897
    .line 898
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 899
    .line 900
    .line 901
    move-result-object v0

    .line 902
    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 903
    .line 904
    .line 905
    goto :goto_9

    .line 906
    :cond_16
    invoke-direct {v1, v4, v15}, Lcom/join/mgps/adapter/ForumBaseAdapter;->c1(Landroid/view/View;Ljava/lang/CharSequence;)V

    .line 907
    .line 908
    .line 909
    goto :goto_9

    .line 910
    :goto_8
    invoke-direct {v1, v2, v0}, Lcom/join/mgps/adapter/ForumBaseAdapter;->h1(Lcom/join/mgps/adapter/ForumBaseAdapter$h1;I)V

    .line 911
    .line 912
    .line 913
    const v0, 0x7f080f90

    .line 914
    .line 915
    .line 916
    invoke-virtual {v4, v0}, Landroid/view/View;->setBackgroundResource(I)V

    .line 917
    .line 918
    .line 919
    if-lez v13, :cond_17

    .line 920
    .line 921
    iget-object v0, v2, Lcom/join/mgps/adapter/ForumBaseAdapter$h1;->d:Landroid/widget/Button;

    .line 922
    .line 923
    invoke-virtual {v1, v0, v13}, Lcom/join/mgps/adapter/ForumBaseAdapter;->A0(Landroid/widget/TextView;I)V

    .line 924
    .line 925
    .line 926
    goto :goto_9

    .line 927
    :cond_17
    invoke-virtual {v1, v4, v7}, Lcom/join/mgps/adapter/ForumBaseAdapter;->z0(Landroid/view/View;I)V

    .line 928
    .line 929
    .line 930
    :goto_9
    new-instance v0, Lcom/join/mgps/adapter/ForumBaseAdapter$j0;

    .line 931
    .line 932
    invoke-direct {v0, v1, v3}, Lcom/join/mgps/adapter/ForumBaseAdapter$j0;-><init>(Lcom/join/mgps/adapter/ForumBaseAdapter;Ljava/lang/Object;)V

    .line 933
    .line 934
    .line 935
    invoke-virtual {v4, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 936
    .line 937
    .line 938
    :cond_18
    :goto_a
    return-void

    .line 939
    :pswitch_data_0
    .packed-switch 0x9
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public C0(Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "fromActivity"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/join/mgps/adapter/ForumBaseAdapter;->h:Ljava/lang/String;

    .line 2
    .line 3
    return-void
.end method

.method E0(Lcom/facebook/drawee/view/SimpleDraweeView;ILjava/lang/String;ILjava/util/List;)V
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x10,
            0x10
        }
        names = {
            "img",
            "showIndex",
            "url",
            "imgIndex",
            "rawPicList"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/facebook/drawee/view/SimpleDraweeView;",
            "I",
            "Ljava/lang/String;",
            "I",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-static {p3}, Lcom/join/mgps/Util/r0;->i0(Ljava/lang/String;)[Ljava/lang/Integer;

    .line 2
    .line 3
    .line 4
    move-result-object p2

    .line 5
    const/4 v0, 0x0

    .line 6
    if-eqz p2, :cond_1

    .line 7
    .line 8
    aget-object v1, p2, v0

    .line 9
    .line 10
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    .line 11
    .line 12
    .line 13
    move-result v1

    .line 14
    if-eqz v1, :cond_1

    .line 15
    .line 16
    const/4 v1, 0x1

    .line 17
    aget-object v2, p2, v1

    .line 18
    .line 19
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    .line 20
    .line 21
    .line 22
    move-result v2

    .line 23
    if-eqz v2, :cond_1

    .line 24
    .line 25
    aget-object v2, p2, v0

    .line 26
    .line 27
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    .line 28
    .line 29
    .line 30
    move-result v2

    .line 31
    int-to-float v2, v2

    .line 32
    const/high16 v3, 0x3f800000    # 1.0f

    .line 33
    .line 34
    mul-float v2, v2, v3

    .line 35
    .line 36
    aget-object p2, p2, v1

    .line 37
    .line 38
    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    .line 39
    .line 40
    .line 41
    move-result p2

    .line 42
    int-to-float p2, p2

    .line 43
    div-float/2addr v2, p2

    .line 44
    cmpl-float p2, v2, v3

    .line 45
    .line 46
    if-lez p2, :cond_0

    .line 47
    .line 48
    new-instance p2, Landroid/widget/LinearLayout$LayoutParams;

    .line 49
    .line 50
    iget v1, p0, Lcom/join/mgps/adapter/ForumBaseAdapter;->q:I

    .line 51
    .line 52
    iget v2, p0, Lcom/join/mgps/adapter/ForumBaseAdapter;->r:I

    .line 53
    .line 54
    invoke-direct {p2, v1, v2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 55
    .line 56
    .line 57
    goto :goto_0

    .line 58
    :cond_0
    new-instance p2, Landroid/widget/LinearLayout$LayoutParams;

    .line 59
    .line 60
    iget v1, p0, Lcom/join/mgps/adapter/ForumBaseAdapter;->s:I

    .line 61
    .line 62
    iget v2, p0, Lcom/join/mgps/adapter/ForumBaseAdapter;->t:I

    .line 63
    .line 64
    invoke-direct {p2, v1, v2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 65
    .line 66
    .line 67
    goto :goto_0

    .line 68
    :cond_1
    new-instance p2, Landroid/widget/LinearLayout$LayoutParams;

    .line 69
    .line 70
    iget v1, p0, Lcom/join/mgps/adapter/ForumBaseAdapter;->p:I

    .line 71
    .line 72
    invoke-direct {p2, v1, v1}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 73
    .line 74
    .line 75
    :goto_0
    invoke-static {p3}, Lcom/join/mgps/Util/t2;->h(Ljava/lang/String;)Z

    .line 76
    .line 77
    .line 78
    move-result v1

    .line 79
    if-nez v1, :cond_2

    .line 80
    .line 81
    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 82
    .line 83
    .line 84
    invoke-virtual {p1, p2}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 85
    .line 86
    .line 87
    sget-object p2, Landroid/widget/ImageView$ScaleType;->FIT_XY:Landroid/widget/ImageView$ScaleType;

    .line 88
    .line 89
    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 90
    .line 91
    .line 92
    sget-object p2, Lcom/facebook/drawee/drawable/s$c;->a:Lcom/facebook/drawee/drawable/s$c;

    .line 93
    .line 94
    invoke-static {p1, p3, p2}, Lcom/join/android/app/common/utils/l;->i(Lcom/facebook/drawee/view/SimpleDraweeView;Ljava/lang/String;Lcom/facebook/drawee/drawable/s$c;)V

    .line 95
    .line 96
    .line 97
    new-instance p2, Lcom/join/mgps/adapter/ForumBaseAdapter$d;

    .line 98
    .line 99
    invoke-direct {p2, p0, p5, p4}, Lcom/join/mgps/adapter/ForumBaseAdapter$d;-><init>(Lcom/join/mgps/adapter/ForumBaseAdapter;Ljava/util/List;I)V

    .line 100
    .line 101
    .line 102
    invoke-virtual {p1, p2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 103
    .line 104
    .line 105
    goto :goto_1

    .line 106
    :cond_2
    const/16 p2, 0x8

    .line 107
    .line 108
    invoke-virtual {p1, p2}, Landroid/view/View;->setVisibility(I)V

    .line 109
    .line 110
    .line 111
    :goto_1
    return-void
.end method

.method F0(Lcom/facebook/drawee/view/SimpleDraweeView;ILjava/lang/String;ILjava/util/List;)V
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x10,
            0x10
        }
        names = {
            "img",
            "showIndex",
            "url",
            "imgIndex",
            "rawPicList"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/facebook/drawee/view/SimpleDraweeView;",
            "I",
            "Ljava/lang/String;",
            "I",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/adapter/ForumBaseAdapter;->l:Landroid/widget/LinearLayout$LayoutParams;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {p0}, Lcom/join/mgps/adapter/ForumBaseAdapter;->g0()Landroid/widget/LinearLayout$LayoutParams;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    iput-object v0, p0, Lcom/join/mgps/adapter/ForumBaseAdapter;->l:Landroid/widget/LinearLayout$LayoutParams;

    .line 10
    .line 11
    :cond_0
    iget-object v0, p0, Lcom/join/mgps/adapter/ForumBaseAdapter;->e:Landroid/content/Context;

    .line 12
    .line 13
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    .line 18
    .line 19
    .line 20
    move-result-object v0

    .line 21
    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    .line 22
    .line 23
    const/high16 v1, 0x40c00000    # 6.0f

    .line 24
    .line 25
    mul-float v0, v0, v1

    .line 26
    .line 27
    float-to-int v0, v0

    .line 28
    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    .line 29
    .line 30
    iget-object v2, p0, Lcom/join/mgps/adapter/ForumBaseAdapter;->l:Landroid/widget/LinearLayout$LayoutParams;

    .line 31
    .line 32
    iget v3, v2, Landroid/widget/LinearLayout$LayoutParams;->width:I

    .line 33
    .line 34
    iget v2, v2, Landroid/widget/LinearLayout$LayoutParams;->height:I

    .line 35
    .line 36
    invoke-direct {v1, v3, v2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 37
    .line 38
    .line 39
    const/4 v2, 0x0

    .line 40
    if-lez p2, :cond_1

    .line 41
    .line 42
    invoke-virtual {v1, v0, v2, v2, v2}, Landroid/view/ViewGroup$MarginLayoutParams;->setMargins(IIII)V

    .line 43
    .line 44
    .line 45
    goto :goto_0

    .line 46
    :cond_1
    invoke-virtual {v1, v2, v2, v2, v2}, Landroid/view/ViewGroup$MarginLayoutParams;->setMargins(IIII)V

    .line 47
    .line 48
    .line 49
    :goto_0
    invoke-static {p3}, Lcom/join/mgps/Util/t2;->h(Ljava/lang/String;)Z

    .line 50
    .line 51
    .line 52
    move-result p2

    .line 53
    if-nez p2, :cond_2

    .line 54
    .line 55
    invoke-virtual {p1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 56
    .line 57
    .line 58
    invoke-virtual {p1, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 59
    .line 60
    .line 61
    sget-object p2, Landroid/widget/ImageView$ScaleType;->CENTER_CROP:Landroid/widget/ImageView$ScaleType;

    .line 62
    .line 63
    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 64
    .line 65
    .line 66
    sget-object p2, Lcom/facebook/drawee/drawable/s$c;->i:Lcom/facebook/drawee/drawable/s$c;

    .line 67
    .line 68
    invoke-static {p1, p3, p2}, Lcom/join/android/app/common/utils/l;->i(Lcom/facebook/drawee/view/SimpleDraweeView;Ljava/lang/String;Lcom/facebook/drawee/drawable/s$c;)V

    .line 69
    .line 70
    .line 71
    new-instance p2, Lcom/join/mgps/adapter/ForumBaseAdapter$c;

    .line 72
    .line 73
    invoke-direct {p2, p0, p5, p4}, Lcom/join/mgps/adapter/ForumBaseAdapter$c;-><init>(Lcom/join/mgps/adapter/ForumBaseAdapter;Ljava/util/List;I)V

    .line 74
    .line 75
    .line 76
    invoke-virtual {p1, p2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 77
    .line 78
    .line 79
    goto :goto_1

    .line 80
    :cond_2
    const/16 p2, 0x8

    .line 81
    .line 82
    invoke-virtual {p1, p2}, Landroid/view/View;->setVisibility(I)V

    .line 83
    .line 84
    .line 85
    :goto_1
    return-void
.end method

.method public G0(Ljava/util/List;)V
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
            "Lcom/join/mgps/adapter/ForumBaseAdapter$r1;",
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
    iget-object v0, p0, Lcom/join/mgps/adapter/ForumBaseAdapter;->f:Ljava/util/List;

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
    iput-object v0, p0, Lcom/join/mgps/adapter/ForumBaseAdapter;->f:Ljava/util/List;

    .line 14
    .line 15
    :cond_1
    iget-object v0, p0, Lcom/join/mgps/adapter/ForumBaseAdapter;->f:Ljava/util/List;

    .line 16
    .line 17
    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 18
    .line 19
    .line 20
    iget-object v0, p0, Lcom/join/mgps/adapter/ForumBaseAdapter;->f:Ljava/util/List;

    .line 21
    .line 22
    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 23
    .line 24
    .line 25
    return-void
.end method

.method public H0(Lcom/join/android/app/component/optimizetext/b;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "layoutManager"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/join/mgps/adapter/ForumBaseAdapter;->b:Lcom/join/android/app/component/optimizetext/b;

    .line 2
    .line 3
    return-void
.end method

.method public I0(Lcom/join/mgps/adapter/ForumBaseAdapter$t0;)V
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
    iput-object p1, p0, Lcom/join/mgps/adapter/ForumBaseAdapter;->o:Lcom/join/mgps/adapter/ForumBaseAdapter$t0;

    .line 2
    .line 3
    return-void
.end method

.method public K0(Landroid/view/View;I)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x10
        }
        names = {
            "v",
            "fid"
        }
    .end annotation

    .line 1
    new-instance v0, Lcom/join/mgps/adapter/ForumBaseAdapter$o;

    .line 2
    .line 3
    invoke-direct {v0, p0, p2}, Lcom/join/mgps/adapter/ForumBaseAdapter$o;-><init>(Lcom/join/mgps/adapter/ForumBaseAdapter;I)V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 7
    .line 8
    .line 9
    return-void
.end method

.method public L0(Landroid/view/View;Lcom/join/mgps/dto/ForumBean;)V
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
    new-instance v0, Lcom/join/mgps/adapter/ForumBaseAdapter$r;

    .line 2
    .line 3
    invoke-direct {v0, p0, p2}, Lcom/join/mgps/adapter/ForumBaseAdapter$r;-><init>(Lcom/join/mgps/adapter/ForumBaseAdapter;Lcom/join/mgps/dto/ForumBean;)V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 7
    .line 8
    .line 9
    return-void
.end method

.method M(Ljava/lang/String;)Lcom/join/mgps/adapter/ForumBaseAdapter$u0;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "key"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/adapter/ForumBaseAdapter;->k:Ljava/util/Hashtable;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    const/4 p1, 0x0

    .line 6
    return-object p1

    .line 7
    :cond_0
    invoke-virtual {v0, p1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 8
    .line 9
    .line 10
    move-result-object p1

    .line 11
    check-cast p1, Lcom/join/mgps/adapter/ForumBaseAdapter$u0;

    .line 12
    .line 13
    return-object p1
.end method

.method public M0(Landroid/view/View;Lcom/join/mgps/dto/ForumBean;)V
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
    new-instance v0, Lcom/join/mgps/adapter/ForumBaseAdapter$s;

    .line 2
    .line 3
    invoke-direct {v0, p0, p2}, Lcom/join/mgps/adapter/ForumBaseAdapter$s;-><init>(Lcom/join/mgps/adapter/ForumBaseAdapter;Lcom/join/mgps/dto/ForumBean;)V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 7
    .line 8
    .line 9
    return-void
.end method

.method public N()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/join/mgps/adapter/ForumBaseAdapter;->z:I

    .line 2
    .line 3
    return v0
.end method

.method public N0(Landroid/view/View;I)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x10
        }
        names = {
            "v",
            "gid"
        }
    .end annotation

    .line 1
    if-nez p1, :cond_0

    .line 2
    .line 3
    return-void

    .line 4
    :cond_0
    new-instance v0, Lcom/join/mgps/adapter/ForumBaseAdapter$u;

    .line 5
    .line 6
    invoke-direct {v0, p0, p2}, Lcom/join/mgps/adapter/ForumBaseAdapter$u;-><init>(Lcom/join/mgps/adapter/ForumBaseAdapter;I)V

    .line 7
    .line 8
    .line 9
    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 10
    .line 11
    .line 12
    return-void
.end method

.method public O()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/adapter/ForumBaseAdapter;->y:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public O0(Landroid/view/View;Lcom/join/mgps/dto/ForumBean;)V
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
    new-instance v0, Lcom/join/mgps/adapter/ForumBaseAdapter$m;

    .line 2
    .line 3
    invoke-direct {v0, p0, p2}, Lcom/join/mgps/adapter/ForumBaseAdapter$m;-><init>(Lcom/join/mgps/adapter/ForumBaseAdapter;Lcom/join/mgps/dto/ForumBean;)V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 7
    .line 8
    .line 9
    return-void
.end method

.method public P0(Landroid/view/View;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "v"
        }
    .end annotation

    .line 1
    new-instance v0, Lcom/join/mgps/adapter/ForumBaseAdapter$n;

    .line 2
    .line 3
    invoke-direct {v0, p0}, Lcom/join/mgps/adapter/ForumBaseAdapter$n;-><init>(Lcom/join/mgps/adapter/ForumBaseAdapter;)V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 7
    .line 8
    .line 9
    return-void
.end method

.method public R0(Landroid/view/View;I)V
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
    new-instance v0, Lcom/join/mgps/adapter/ForumBaseAdapter$l;

    .line 2
    .line 3
    invoke-direct {v0, p0, p2}, Lcom/join/mgps/adapter/ForumBaseAdapter$l;-><init>(Lcom/join/mgps/adapter/ForumBaseAdapter;I)V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 7
    .line 8
    .line 9
    return-void
.end method

.method public S0(Landroid/view/View;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x10,
            0x10
        }
        names = {
            "v",
            "videoSrc",
            "position"
        }
    .end annotation

    .line 1
    if-nez p1, :cond_0

    .line 2
    .line 3
    return-void

    .line 4
    :cond_0
    new-instance p2, Lcom/join/mgps/adapter/ForumBaseAdapter$t;

    .line 5
    .line 6
    invoke-direct {p2, p0, p3}, Lcom/join/mgps/adapter/ForumBaseAdapter$t;-><init>(Lcom/join/mgps/adapter/ForumBaseAdapter;Ljava/lang/String;)V

    .line 7
    .line 8
    .line 9
    invoke-virtual {p1, p2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 10
    .line 11
    .line 12
    return-void
.end method

.method public T0(Landroid/view/View;IZI)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x10,
            0x10,
            0x10
        }
        names = {
            "v",
            "pid",
            "isPraise",
            "praiseTotal"
        }
    .end annotation

    .line 1
    new-instance p3, Lcom/join/mgps/adapter/ForumBaseAdapter$p;

    .line 2
    .line 3
    invoke-direct {p3, p0, p2}, Lcom/join/mgps/adapter/ForumBaseAdapter$p;-><init>(Lcom/join/mgps/adapter/ForumBaseAdapter;I)V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p1, p3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 7
    .line 8
    .line 9
    return-void
.end method

.method public V0(Landroid/view/View;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "v"
        }
    .end annotation

    .line 1
    new-instance v0, Lcom/join/mgps/adapter/ForumBaseAdapter$q;

    .line 2
    .line 3
    invoke-direct {v0, p0}, Lcom/join/mgps/adapter/ForumBaseAdapter$q;-><init>(Lcom/join/mgps/adapter/ForumBaseAdapter;)V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 7
    .line 8
    .line 9
    return-void
.end method

.method public W0(Z)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "paused"
        }
    .end annotation

    .line 1
    iput-boolean p1, p0, Lcom/join/mgps/adapter/ForumBaseAdapter;->A:Z

    .line 2
    .line 3
    return-void
.end method

.method public X0(I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "playPosition"
        }
    .end annotation

    .line 1
    iput p1, p0, Lcom/join/mgps/adapter/ForumBaseAdapter;->z:I

    .line 2
    .line 3
    return-void
.end method

.method public Y0(Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "playUrl"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/join/mgps/adapter/ForumBaseAdapter;->y:Ljava/lang/String;

    .line 2
    .line 3
    return-void
.end method

.method public Z0(Z)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "playing"
        }
    .end annotation

    .line 1
    iput-boolean p1, p0, Lcom/join/mgps/adapter/ForumBaseAdapter;->B:Z

    .line 2
    .line 3
    return-void
.end method

.method public b1(Z)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "showTags"
        }
    .end annotation

    .line 1
    iput-boolean p1, p0, Lcom/join/mgps/adapter/ForumBaseAdapter;->d:Z

    .line 2
    .line 3
    return-void
.end method

.method public c0(Landroid/content/Context;)Lcom/danikula/videocache/i;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "context"
        }
    .end annotation

    .line 1
    invoke-static {p1}, Lcom/MApplication;->q(Landroid/content/Context;)Lcom/danikula/videocache/i;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    return-object p1
.end method

.method public f(Lcom/join/mgps/adapter/ForumBaseAdapter$r1;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "items"
        }
    .end annotation

    .line 1
    if-nez p1, :cond_0

    .line 2
    .line 3
    return-void

    .line 4
    :cond_0
    iget-object v0, p0, Lcom/join/mgps/adapter/ForumBaseAdapter;->f:Ljava/util/List;

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
    iput-object v0, p0, Lcom/join/mgps/adapter/ForumBaseAdapter;->f:Ljava/util/List;

    .line 14
    .line 15
    :cond_1
    iget-object v0, p0, Lcom/join/mgps/adapter/ForumBaseAdapter;->f:Ljava/util/List;

    .line 16
    .line 17
    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 18
    .line 19
    .line 20
    return-void
.end method

.method public f1(Lw6/f;)V
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
    iput-object p1, p0, Lcom/join/mgps/adapter/ForumBaseAdapter;->i:Lw6/f;

    .line 2
    .line 3
    return-void
.end method

.method public g(Ljava/util/List;)V
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
            "Lcom/join/mgps/adapter/ForumBaseAdapter$r1;",
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
    iget-object v0, p0, Lcom/join/mgps/adapter/ForumBaseAdapter;->f:Ljava/util/List;

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
    iput-object v0, p0, Lcom/join/mgps/adapter/ForumBaseAdapter;->f:Ljava/util/List;

    .line 14
    .line 15
    :cond_1
    iget-object v0, p0, Lcom/join/mgps/adapter/ForumBaseAdapter;->f:Ljava/util/List;

    .line 16
    .line 17
    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 18
    .line 19
    .line 20
    return-void
.end method

.method g0()Landroid/widget/LinearLayout$LayoutParams;
    .locals 7

    .line 1
    iget-object v0, p0, Lcom/join/mgps/adapter/ForumBaseAdapter;->e:Landroid/content/Context;

    .line 2
    .line 3
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    iget v1, v0, Landroid/util/DisplayMetrics;->density:F

    .line 12
    .line 13
    iget v0, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    .line 14
    .line 15
    const/high16 v2, 0x43520000    # 210.0f

    .line 16
    .line 17
    mul-float v2, v2, v1

    .line 18
    .line 19
    float-to-int v2, v2

    .line 20
    const/high16 v3, 0x43200000    # 160.0f

    .line 21
    .line 22
    mul-float v3, v3, v1

    .line 23
    .line 24
    float-to-int v3, v3

    .line 25
    const/high16 v4, 0x40c00000    # 6.0f

    .line 26
    .line 27
    mul-float v4, v4, v1

    .line 28
    .line 29
    float-to-int v4, v4

    .line 30
    iget-object v5, p0, Lcom/join/mgps/adapter/ForumBaseAdapter;->e:Landroid/content/Context;

    .line 31
    .line 32
    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 33
    .line 34
    .line 35
    move-result-object v5

    .line 36
    const v6, 0x7f070ec2

    .line 37
    .line 38
    .line 39
    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    .line 40
    .line 41
    .line 42
    move-result v5

    .line 43
    mul-int/lit8 v5, v5, 0x2

    .line 44
    .line 45
    sub-int/2addr v0, v5

    .line 46
    int-to-float v0, v0

    .line 47
    int-to-float v4, v4

    .line 48
    mul-float v4, v4, v1

    .line 49
    .line 50
    const/high16 v1, 0x40000000    # 2.0f

    .line 51
    .line 52
    mul-float v4, v4, v1

    .line 53
    .line 54
    sub-float/2addr v0, v4

    .line 55
    float-to-int v0, v0

    .line 56
    div-int/lit8 v0, v0, 0x3

    .line 57
    .line 58
    if-le v0, v2, :cond_0

    .line 59
    .line 60
    goto :goto_0

    .line 61
    :cond_0
    if-le v0, v3, :cond_1

    .line 62
    .line 63
    move v2, v3

    .line 64
    goto :goto_0

    .line 65
    :cond_1
    move v2, v0

    .line 66
    :goto_0
    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    .line 67
    .line 68
    invoke-direct {v0, v2, v2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 69
    .line 70
    .line 71
    return-object v0
.end method

.method g1(Lcom/facebook/drawee/view/SimpleDraweeView;ILjava/lang/String;Ljava/lang/String;)V
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x10
        }
        names = {
            "img",
            "showIndex",
            "url",
            "href"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/adapter/ForumBaseAdapter;->l:Landroid/widget/LinearLayout$LayoutParams;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {p0}, Lcom/join/mgps/adapter/ForumBaseAdapter;->g0()Landroid/widget/LinearLayout$LayoutParams;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    iput-object v0, p0, Lcom/join/mgps/adapter/ForumBaseAdapter;->l:Landroid/widget/LinearLayout$LayoutParams;

    .line 10
    .line 11
    :cond_0
    iget-object v0, p0, Lcom/join/mgps/adapter/ForumBaseAdapter;->e:Landroid/content/Context;

    .line 12
    .line 13
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    .line 18
    .line 19
    .line 20
    move-result-object v0

    .line 21
    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    .line 22
    .line 23
    const/high16 v1, 0x40c00000    # 6.0f

    .line 24
    .line 25
    mul-float v0, v0, v1

    .line 26
    .line 27
    float-to-int v0, v0

    .line 28
    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    .line 29
    .line 30
    iget-object v2, p0, Lcom/join/mgps/adapter/ForumBaseAdapter;->l:Landroid/widget/LinearLayout$LayoutParams;

    .line 31
    .line 32
    iget v3, v2, Landroid/widget/LinearLayout$LayoutParams;->width:I

    .line 33
    .line 34
    iget v2, v2, Landroid/widget/LinearLayout$LayoutParams;->height:I

    .line 35
    .line 36
    invoke-direct {v1, v3, v2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 37
    .line 38
    .line 39
    const/4 v2, 0x0

    .line 40
    if-lez p2, :cond_1

    .line 41
    .line 42
    invoke-virtual {v1, v0, v2, v2, v2}, Landroid/view/ViewGroup$MarginLayoutParams;->setMargins(IIII)V

    .line 43
    .line 44
    .line 45
    goto :goto_0

    .line 46
    :cond_1
    invoke-virtual {v1, v2, v2, v2, v2}, Landroid/view/ViewGroup$MarginLayoutParams;->setMargins(IIII)V

    .line 47
    .line 48
    .line 49
    :goto_0
    invoke-static {p3}, Lcom/join/mgps/Util/t2;->h(Ljava/lang/String;)Z

    .line 50
    .line 51
    .line 52
    move-result p2

    .line 53
    if-nez p2, :cond_2

    .line 54
    .line 55
    invoke-virtual {p1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 56
    .line 57
    .line 58
    invoke-virtual {p1, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 59
    .line 60
    .line 61
    sget-object p2, Landroid/widget/ImageView$ScaleType;->CENTER_CROP:Landroid/widget/ImageView$ScaleType;

    .line 62
    .line 63
    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 64
    .line 65
    .line 66
    sget-object p2, Lcom/facebook/drawee/drawable/s$c;->i:Lcom/facebook/drawee/drawable/s$c;

    .line 67
    .line 68
    invoke-static {p1, p3, p2}, Lcom/join/android/app/common/utils/l;->i(Lcom/facebook/drawee/view/SimpleDraweeView;Ljava/lang/String;Lcom/facebook/drawee/drawable/s$c;)V

    .line 69
    .line 70
    .line 71
    new-instance p2, Lcom/join/mgps/adapter/ForumBaseAdapter$e;

    .line 72
    .line 73
    invoke-direct {p2, p0, p4}, Lcom/join/mgps/adapter/ForumBaseAdapter$e;-><init>(Lcom/join/mgps/adapter/ForumBaseAdapter;Ljava/lang/String;)V

    .line 74
    .line 75
    .line 76
    invoke-virtual {p1, p2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 77
    .line 78
    .line 79
    goto :goto_1

    .line 80
    :cond_2
    const/16 p2, 0x8

    .line 81
    .line 82
    invoke-virtual {p1, p2}, Landroid/view/View;->setVisibility(I)V

    .line 83
    .line 84
    .line 85
    :goto_1
    return-void
.end method

.method public getCount()I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/adapter/ForumBaseAdapter;->f:Ljava/util/List;

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
    iget-object v0, p0, Lcom/join/mgps/adapter/ForumBaseAdapter;->f:Ljava/util/List;

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
    check-cast p1, Lcom/join/mgps/adapter/ForumBaseAdapter$r1;

    .line 10
    .line 11
    invoke-virtual {p1}, Lcom/join/mgps/adapter/ForumBaseAdapter$r1;->a()Ljava/lang/Object;

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
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "position"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/adapter/ForumBaseAdapter;->f:Ljava/util/List;

    .line 2
    .line 3
    const/4 v1, -0x1

    .line 4
    if-eqz v0, :cond_2

    .line 5
    .line 6
    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 7
    .line 8
    .line 9
    move-result-object p1

    .line 10
    check-cast p1, Lcom/join/mgps/adapter/ForumBaseAdapter$r1;

    .line 11
    .line 12
    if-nez p1, :cond_0

    .line 13
    .line 14
    return v1

    .line 15
    :cond_0
    invoke-virtual {p1}, Lcom/join/mgps/adapter/ForumBaseAdapter$r1;->b()Lcom/join/mgps/adapter/ForumBaseAdapter$ViewType;

    .line 16
    .line 17
    .line 18
    move-result-object p1

    .line 19
    if-nez p1, :cond_1

    .line 20
    .line 21
    return v1

    .line 22
    :cond_1
    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    .line 23
    .line 24
    .line 25
    move-result p1

    .line 26
    return p1

    .line 27
    :cond_2
    return v1
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
    invoke-virtual {p0, p1}, Lcom/join/mgps/adapter/ForumBaseAdapter;->getItemViewType(I)I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    sget-object v1, Lcom/join/mgps/adapter/ForumBaseAdapter$ViewType;->POST_HEADER:Lcom/join/mgps/adapter/ForumBaseAdapter$ViewType;

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
    invoke-direct {p0, p1, p2, p3}, Lcom/join/mgps/adapter/ForumBaseAdapter;->S(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    .line 14
    .line 15
    .line 16
    move-result-object p2

    .line 17
    goto/16 :goto_0

    .line 18
    .line 19
    :cond_0
    sget-object v1, Lcom/join/mgps/adapter/ForumBaseAdapter$ViewType;->POST_FOOTER:Lcom/join/mgps/adapter/ForumBaseAdapter$ViewType;

    .line 20
    .line 21
    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    .line 22
    .line 23
    .line 24
    move-result v1

    .line 25
    if-ne v0, v1, :cond_1

    .line 26
    .line 27
    invoke-direct {p0, p1, p2, p3}, Lcom/join/mgps/adapter/ForumBaseAdapter;->P(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    .line 28
    .line 29
    .line 30
    move-result-object p2

    .line 31
    goto/16 :goto_0

    .line 32
    .line 33
    :cond_1
    sget-object v1, Lcom/join/mgps/adapter/ForumBaseAdapter$ViewType;->POST_TOP:Lcom/join/mgps/adapter/ForumBaseAdapter$ViewType;

    .line 34
    .line 35
    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    .line 36
    .line 37
    .line 38
    move-result v1

    .line 39
    if-ne v0, v1, :cond_2

    .line 40
    .line 41
    invoke-direct {p0, p1, p2, p3}, Lcom/join/mgps/adapter/ForumBaseAdapter;->Z(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    .line 42
    .line 43
    .line 44
    move-result-object p2

    .line 45
    goto/16 :goto_0

    .line 46
    .line 47
    :cond_2
    sget-object v1, Lcom/join/mgps/adapter/ForumBaseAdapter$ViewType;->P_FOOTER:Lcom/join/mgps/adapter/ForumBaseAdapter$ViewType;

    .line 48
    .line 49
    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    .line 50
    .line 51
    .line 52
    move-result v1

    .line 53
    if-ne v0, v1, :cond_3

    .line 54
    .line 55
    invoke-direct {p0, p1, p2, p3}, Lcom/join/mgps/adapter/ForumBaseAdapter;->I(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    .line 56
    .line 57
    .line 58
    move-result-object p2

    .line 59
    goto/16 :goto_0

    .line 60
    .line 61
    :cond_3
    sget-object v1, Lcom/join/mgps/adapter/ForumBaseAdapter$ViewType;->POST_IMAGE_THUMBNAIL:Lcom/join/mgps/adapter/ForumBaseAdapter$ViewType;

    .line 62
    .line 63
    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    .line 64
    .line 65
    .line 66
    move-result v1

    .line 67
    if-ne v0, v1, :cond_4

    .line 68
    .line 69
    invoke-direct {p0, p1, p2, p3}, Lcom/join/mgps/adapter/ForumBaseAdapter;->U(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    .line 70
    .line 71
    .line 72
    move-result-object p2

    .line 73
    goto/16 :goto_0

    .line 74
    .line 75
    :cond_4
    sget-object v1, Lcom/join/mgps/adapter/ForumBaseAdapter$ViewType;->P_IMGS:Lcom/join/mgps/adapter/ForumBaseAdapter$ViewType;

    .line 76
    .line 77
    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    .line 78
    .line 79
    .line 80
    move-result v1

    .line 81
    if-ne v0, v1, :cond_5

    .line 82
    .line 83
    invoke-direct {p0, p1, p2, p3}, Lcom/join/mgps/adapter/ForumBaseAdapter;->J(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    .line 84
    .line 85
    .line 86
    move-result-object p2

    .line 87
    goto/16 :goto_0

    .line 88
    .line 89
    :cond_5
    sget-object v1, Lcom/join/mgps/adapter/ForumBaseAdapter$ViewType;->POST_VIDEO_THUMBNAIL:Lcom/join/mgps/adapter/ForumBaseAdapter$ViewType;

    .line 90
    .line 91
    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    .line 92
    .line 93
    .line 94
    move-result v1

    .line 95
    if-ne v0, v1, :cond_6

    .line 96
    .line 97
    invoke-direct {p0, p1, p2, p3}, Lcom/join/mgps/adapter/ForumBaseAdapter;->b0(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    .line 98
    .line 99
    .line 100
    move-result-object p2

    .line 101
    goto/16 :goto_0

    .line 102
    .line 103
    :cond_6
    sget-object v1, Lcom/join/mgps/adapter/ForumBaseAdapter$ViewType;->P_VIDEO:Lcom/join/mgps/adapter/ForumBaseAdapter$ViewType;

    .line 104
    .line 105
    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    .line 106
    .line 107
    .line 108
    move-result v1

    .line 109
    if-ne v0, v1, :cond_7

    .line 110
    .line 111
    invoke-direct {p0, p1, p2, p3}, Lcom/join/mgps/adapter/ForumBaseAdapter;->L(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    .line 112
    .line 113
    .line 114
    move-result-object p2

    .line 115
    goto/16 :goto_0

    .line 116
    .line 117
    :cond_7
    sget-object v1, Lcom/join/mgps/adapter/ForumBaseAdapter$ViewType;->POST_GAME_RES_LINK:Lcom/join/mgps/adapter/ForumBaseAdapter$ViewType;

    .line 118
    .line 119
    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    .line 120
    .line 121
    .line 122
    move-result v1

    .line 123
    if-ne v0, v1, :cond_8

    .line 124
    .line 125
    invoke-direct {p0, p1, p2, p3}, Lcom/join/mgps/adapter/ForumBaseAdapter;->Q(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    .line 126
    .line 127
    .line 128
    move-result-object p2

    .line 129
    goto/16 :goto_0

    .line 130
    .line 131
    :cond_8
    sget-object v1, Lcom/join/mgps/adapter/ForumBaseAdapter$ViewType;->POST_MESSAGE:Lcom/join/mgps/adapter/ForumBaseAdapter$ViewType;

    .line 132
    .line 133
    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    .line 134
    .line 135
    .line 136
    move-result v1

    .line 137
    if-ne v0, v1, :cond_9

    .line 138
    .line 139
    invoke-direct {p0, p1, p2, p3}, Lcom/join/mgps/adapter/ForumBaseAdapter;->V(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    .line 140
    .line 141
    .line 142
    move-result-object p2

    .line 143
    goto/16 :goto_0

    .line 144
    .line 145
    :cond_9
    sget-object v1, Lcom/join/mgps/adapter/ForumBaseAdapter$ViewType;->P_MESSAGE:Lcom/join/mgps/adapter/ForumBaseAdapter$ViewType;

    .line 146
    .line 147
    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    .line 148
    .line 149
    .line 150
    move-result v1

    .line 151
    if-ne v0, v1, :cond_a

    .line 152
    .line 153
    invoke-direct {p0, p1, p2, p3}, Lcom/join/mgps/adapter/ForumBaseAdapter;->K(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    .line 154
    .line 155
    .line 156
    move-result-object p2

    .line 157
    goto/16 :goto_0

    .line 158
    .line 159
    :cond_a
    sget-object v1, Lcom/join/mgps/adapter/ForumBaseAdapter$ViewType;->POST_SUBJECT:Lcom/join/mgps/adapter/ForumBaseAdapter$ViewType;

    .line 160
    .line 161
    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    .line 162
    .line 163
    .line 164
    move-result v1

    .line 165
    if-ne v0, v1, :cond_b

    .line 166
    .line 167
    invoke-direct {p0, p1, p2, p3}, Lcom/join/mgps/adapter/ForumBaseAdapter;->Y(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    .line 168
    .line 169
    .line 170
    move-result-object p2

    .line 171
    goto/16 :goto_0

    .line 172
    .line 173
    :cond_b
    sget-object v1, Lcom/join/mgps/adapter/ForumBaseAdapter$ViewType;->P_SUBJECT:Lcom/join/mgps/adapter/ForumBaseAdapter$ViewType;

    .line 174
    .line 175
    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    .line 176
    .line 177
    .line 178
    move-result v1

    .line 179
    if-ne v0, v1, :cond_c

    .line 180
    .line 181
    invoke-direct {p0, p1, p2, p3}, Lcom/join/mgps/adapter/ForumBaseAdapter;->W(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    .line 182
    .line 183
    .line 184
    move-result-object p2

    .line 185
    goto/16 :goto_0

    .line 186
    .line 187
    :cond_c
    sget-object v1, Lcom/join/mgps/adapter/ForumBaseAdapter$ViewType;->P_SUBJECT_LABEL:Lcom/join/mgps/adapter/ForumBaseAdapter$ViewType;

    .line 188
    .line 189
    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    .line 190
    .line 191
    .line 192
    move-result v1

    .line 193
    if-ne v0, v1, :cond_d

    .line 194
    .line 195
    invoke-direct {p0, p1, p2, p3}, Lcom/join/mgps/adapter/ForumBaseAdapter;->X(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    .line 196
    .line 197
    .line 198
    move-result-object p2

    .line 199
    goto/16 :goto_0

    .line 200
    .line 201
    :cond_d
    sget-object v1, Lcom/join/mgps/adapter/ForumBaseAdapter$ViewType;->POST_GAME:Lcom/join/mgps/adapter/ForumBaseAdapter$ViewType;

    .line 202
    .line 203
    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    .line 204
    .line 205
    .line 206
    move-result v1

    .line 207
    if-ne v0, v1, :cond_e

    .line 208
    .line 209
    invoke-direct {p0, p1, p2, p3}, Lcom/join/mgps/adapter/ForumBaseAdapter;->R(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    .line 210
    .line 211
    .line 212
    move-result-object p2

    .line 213
    goto/16 :goto_0

    .line 214
    .line 215
    :cond_e
    sget-object v1, Lcom/join/mgps/adapter/ForumBaseAdapter$ViewType;->MY_FORUM_HEADER:Lcom/join/mgps/adapter/ForumBaseAdapter$ViewType;

    .line 216
    .line 217
    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    .line 218
    .line 219
    .line 220
    move-result v1

    .line 221
    if-ne v0, v1, :cond_f

    .line 222
    .line 223
    invoke-direct {p0, p1, p2, p3}, Lcom/join/mgps/adapter/ForumBaseAdapter;->F(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    .line 224
    .line 225
    .line 226
    move-result-object p2

    .line 227
    goto/16 :goto_0

    .line 228
    .line 229
    :cond_f
    sget-object v1, Lcom/join/mgps/adapter/ForumBaseAdapter$ViewType;->MY_FORUM_ITEM:Lcom/join/mgps/adapter/ForumBaseAdapter$ViewType;

    .line 230
    .line 231
    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    .line 232
    .line 233
    .line 234
    move-result v1

    .line 235
    if-ne v0, v1, :cond_10

    .line 236
    .line 237
    invoke-direct {p0, p1, p2, p3}, Lcom/join/mgps/adapter/ForumBaseAdapter;->G(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    .line 238
    .line 239
    .line 240
    move-result-object p2

    .line 241
    goto/16 :goto_0

    .line 242
    .line 243
    :cond_10
    sget-object v1, Lcom/join/mgps/adapter/ForumBaseAdapter$ViewType;->MY_FORUM_FOOTER:Lcom/join/mgps/adapter/ForumBaseAdapter$ViewType;

    .line 244
    .line 245
    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    .line 246
    .line 247
    .line 248
    move-result v1

    .line 249
    if-ne v0, v1, :cond_11

    .line 250
    .line 251
    invoke-direct {p0, p1, p2, p3}, Lcom/join/mgps/adapter/ForumBaseAdapter;->E(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    .line 252
    .line 253
    .line 254
    move-result-object p2

    .line 255
    goto/16 :goto_0

    .line 256
    .line 257
    :cond_11
    sget-object v1, Lcom/join/mgps/adapter/ForumBaseAdapter$ViewType;->MY_FORUM_MORE_FOOTER:Lcom/join/mgps/adapter/ForumBaseAdapter$ViewType;

    .line 258
    .line 259
    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    .line 260
    .line 261
    .line 262
    move-result v1

    .line 263
    if-ne v0, v1, :cond_12

    .line 264
    .line 265
    invoke-direct {p0, p1, p2, p3}, Lcom/join/mgps/adapter/ForumBaseAdapter;->H(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    .line 266
    .line 267
    .line 268
    move-result-object p2

    .line 269
    goto/16 :goto_0

    .line 270
    .line 271
    :cond_12
    sget-object v1, Lcom/join/mgps/adapter/ForumBaseAdapter$ViewType;->HOT_FORUM_HEADER:Lcom/join/mgps/adapter/ForumBaseAdapter$ViewType;

    .line 272
    .line 273
    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    .line 274
    .line 275
    .line 276
    move-result v1

    .line 277
    if-ne v0, v1, :cond_13

    .line 278
    .line 279
    invoke-direct {p0, p1, p2, p3}, Lcom/join/mgps/adapter/ForumBaseAdapter;->v(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    .line 280
    .line 281
    .line 282
    move-result-object p2

    .line 283
    goto/16 :goto_0

    .line 284
    .line 285
    :cond_13
    sget-object v1, Lcom/join/mgps/adapter/ForumBaseAdapter$ViewType;->HOT_FORUM_ITEM:Lcom/join/mgps/adapter/ForumBaseAdapter$ViewType;

    .line 286
    .line 287
    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    .line 288
    .line 289
    .line 290
    move-result v1

    .line 291
    if-ne v0, v1, :cond_14

    .line 292
    .line 293
    invoke-direct {p0, p1, p2, p3}, Lcom/join/mgps/adapter/ForumBaseAdapter;->w(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    .line 294
    .line 295
    .line 296
    move-result-object p2

    .line 297
    goto/16 :goto_0

    .line 298
    .line 299
    :cond_14
    sget-object v1, Lcom/join/mgps/adapter/ForumBaseAdapter$ViewType;->HOT_FORUM_FOOTER:Lcom/join/mgps/adapter/ForumBaseAdapter$ViewType;

    .line 300
    .line 301
    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    .line 302
    .line 303
    .line 304
    move-result v1

    .line 305
    if-ne v0, v1, :cond_15

    .line 306
    .line 307
    invoke-direct {p0, p1, p2, p3}, Lcom/join/mgps/adapter/ForumBaseAdapter;->u(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    .line 308
    .line 309
    .line 310
    move-result-object p2

    .line 311
    goto/16 :goto_0

    .line 312
    .line 313
    :cond_15
    sget-object v1, Lcom/join/mgps/adapter/ForumBaseAdapter$ViewType;->FORUM_TOPIC:Lcom/join/mgps/adapter/ForumBaseAdapter$ViewType;

    .line 314
    .line 315
    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    .line 316
    .line 317
    .line 318
    move-result v1

    .line 319
    if-ne v0, v1, :cond_16

    .line 320
    .line 321
    invoke-direct {p0, p1, p2, p3}, Lcom/join/mgps/adapter/ForumBaseAdapter;->q(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    .line 322
    .line 323
    .line 324
    move-result-object p2

    .line 325
    goto/16 :goto_0

    .line 326
    .line 327
    :cond_16
    sget-object v1, Lcom/join/mgps/adapter/ForumBaseAdapter$ViewType;->BAIDUAD:Lcom/join/mgps/adapter/ForumBaseAdapter$ViewType;

    .line 328
    .line 329
    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    .line 330
    .line 331
    .line 332
    move-result v1

    .line 333
    if-ne v0, v1, :cond_17

    .line 334
    .line 335
    invoke-direct {p0, p1, p2, p3}, Lcom/join/mgps/adapter/ForumBaseAdapter;->o(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    .line 336
    .line 337
    .line 338
    move-result-object p2

    .line 339
    goto/16 :goto_0

    .line 340
    .line 341
    :cond_17
    sget-object v1, Lcom/join/mgps/adapter/ForumBaseAdapter$ViewType;->TOP_BLOCK:Lcom/join/mgps/adapter/ForumBaseAdapter$ViewType;

    .line 342
    .line 343
    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    .line 344
    .line 345
    .line 346
    move-result v1

    .line 347
    if-ne v0, v1, :cond_18

    .line 348
    .line 349
    invoke-direct {p0, p1, p2, p3}, Lcom/join/mgps/adapter/ForumBaseAdapter;->h0(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    .line 350
    .line 351
    .line 352
    move-result-object p2

    .line 353
    goto/16 :goto_0

    .line 354
    .line 355
    :cond_18
    sget-object v1, Lcom/join/mgps/adapter/ForumBaseAdapter$ViewType;->MID_BLOCK:Lcom/join/mgps/adapter/ForumBaseAdapter$ViewType;

    .line 356
    .line 357
    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    .line 358
    .line 359
    .line 360
    move-result v1

    .line 361
    if-ne v0, v1, :cond_19

    .line 362
    .line 363
    invoke-direct {p0, p1, p2, p3}, Lcom/join/mgps/adapter/ForumBaseAdapter;->D(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    .line 364
    .line 365
    .line 366
    move-result-object p2

    .line 367
    goto/16 :goto_0

    .line 368
    .line 369
    :cond_19
    sget-object v1, Lcom/join/mgps/adapter/ForumBaseAdapter$ViewType;->AD_BLOCK:Lcom/join/mgps/adapter/ForumBaseAdapter$ViewType;

    .line 370
    .line 371
    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    .line 372
    .line 373
    .line 374
    move-result v1

    .line 375
    if-ne v0, v1, :cond_1a

    .line 376
    .line 377
    invoke-direct {p0, p1, p2, p3}, Lcom/join/mgps/adapter/ForumBaseAdapter;->n(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    .line 378
    .line 379
    .line 380
    move-result-object p2

    .line 381
    goto/16 :goto_0

    .line 382
    .line 383
    :cond_1a
    sget-object v1, Lcom/join/mgps/adapter/ForumBaseAdapter$ViewType;->LIVE:Lcom/join/mgps/adapter/ForumBaseAdapter$ViewType;

    .line 384
    .line 385
    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    .line 386
    .line 387
    .line 388
    move-result v1

    .line 389
    if-ne v0, v1, :cond_1b

    .line 390
    .line 391
    invoke-direct {p0, p1, p2, p3}, Lcom/join/mgps/adapter/ForumBaseAdapter;->C(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    .line 392
    .line 393
    .line 394
    move-result-object p2

    .line 395
    goto :goto_0

    .line 396
    :cond_1b
    sget-object v1, Lcom/join/mgps/adapter/ForumBaseAdapter$ViewType;->LIVE_ENTRY:Lcom/join/mgps/adapter/ForumBaseAdapter$ViewType;

    .line 397
    .line 398
    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    .line 399
    .line 400
    .line 401
    move-result v1

    .line 402
    if-ne v0, v1, :cond_1c

    .line 403
    .line 404
    invoke-direct {p0, p1, p2, p3}, Lcom/join/mgps/adapter/ForumBaseAdapter;->B(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    .line 405
    .line 406
    .line 407
    move-result-object p2

    .line 408
    goto :goto_0

    .line 409
    :cond_1c
    sget-object v1, Lcom/join/mgps/adapter/ForumBaseAdapter$ViewType;->GROUP_ITEM:Lcom/join/mgps/adapter/ForumBaseAdapter$ViewType;

    .line 410
    .line 411
    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    .line 412
    .line 413
    .line 414
    move-result v1

    .line 415
    if-ne v0, v1, :cond_1d

    .line 416
    .line 417
    invoke-direct {p0, p1, p2, p3}, Lcom/join/mgps/adapter/ForumBaseAdapter;->r(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    .line 418
    .line 419
    .line 420
    move-result-object p2

    .line 421
    goto :goto_0

    .line 422
    :cond_1d
    sget-object v1, Lcom/join/mgps/adapter/ForumBaseAdapter$ViewType;->TAG_FLOW_LAYOUT:Lcom/join/mgps/adapter/ForumBaseAdapter$ViewType;

    .line 423
    .line 424
    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    .line 425
    .line 426
    .line 427
    move-result v1

    .line 428
    if-ne v0, v1, :cond_1e

    .line 429
    .line 430
    invoke-direct {p0, p1, p2, p3}, Lcom/join/mgps/adapter/ForumBaseAdapter;->e0(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    .line 431
    .line 432
    .line 433
    move-result-object p2

    .line 434
    goto :goto_0

    .line 435
    :cond_1e
    sget-object v1, Lcom/join/mgps/adapter/ForumBaseAdapter$ViewType;->GROUP_MEMBER_SECTION_TITLE:Lcom/join/mgps/adapter/ForumBaseAdapter$ViewType;

    .line 436
    .line 437
    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    .line 438
    .line 439
    .line 440
    move-result v1

    .line 441
    if-ne v0, v1, :cond_1f

    .line 442
    .line 443
    invoke-direct {p0, p1, p2, p3}, Lcom/join/mgps/adapter/ForumBaseAdapter;->t(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    .line 444
    .line 445
    .line 446
    move-result-object p2

    .line 447
    goto :goto_0

    .line 448
    :cond_1f
    sget-object v1, Lcom/join/mgps/adapter/ForumBaseAdapter$ViewType;->GROUP_MEMBER_ITEM:Lcom/join/mgps/adapter/ForumBaseAdapter$ViewType;

    .line 449
    .line 450
    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    .line 451
    .line 452
    .line 453
    move-result v1

    .line 454
    if-ne v0, v1, :cond_20

    .line 455
    .line 456
    invoke-direct {p0, p1, p2, p3}, Lcom/join/mgps/adapter/ForumBaseAdapter;->s(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    .line 457
    .line 458
    .line 459
    move-result-object p2

    .line 460
    goto :goto_0

    .line 461
    :cond_20
    sget-object v1, Lcom/join/mgps/adapter/ForumBaseAdapter$ViewType;->TAG_ITEM:Lcom/join/mgps/adapter/ForumBaseAdapter$ViewType;

    .line 462
    .line 463
    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    .line 464
    .line 465
    .line 466
    move-result v1

    .line 467
    if-ne v0, v1, :cond_21

    .line 468
    .line 469
    invoke-direct {p0, p1, p2, p3}, Lcom/join/mgps/adapter/ForumBaseAdapter;->f0(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    .line 470
    .line 471
    .line 472
    move-result-object p2

    .line 473
    goto :goto_0

    .line 474
    :cond_21
    sget-object v1, Lcom/join/mgps/adapter/ForumBaseAdapter$ViewType;->RICH_MESSAGE:Lcom/join/mgps/adapter/ForumBaseAdapter$ViewType;

    .line 475
    .line 476
    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    .line 477
    .line 478
    .line 479
    move-result v1

    .line 480
    if-ne v0, v1, :cond_22

    .line 481
    .line 482
    invoke-direct {p0, p1, p2, p3}, Lcom/join/mgps/adapter/ForumBaseAdapter;->d0(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    .line 483
    .line 484
    .line 485
    move-result-object p2

    .line 486
    :cond_22
    :goto_0
    return-object p2
.end method

.method public getViewTypeCount()I
    .locals 1

    .line 1
    invoke-static {}, Lcom/join/mgps/adapter/ForumBaseAdapter$ViewType;->values()[Lcom/join/mgps/adapter/ForumBaseAdapter$ViewType;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    array-length v0, v0

    .line 6
    return v0
.end method

.method h(Ljava/lang/String;Lcom/join/mgps/adapter/ForumBaseAdapter$u0;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "key",
            "value"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/adapter/ForumBaseAdapter;->k:Ljava/util/Hashtable;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    new-instance v0, Ljava/util/Hashtable;

    .line 6
    .line 7
    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    .line 8
    .line 9
    .line 10
    iput-object v0, p0, Lcom/join/mgps/adapter/ForumBaseAdapter;->k:Ljava/util/Hashtable;

    .line 11
    .line 12
    :cond_0
    iget-object v0, p0, Lcom/join/mgps/adapter/ForumBaseAdapter;->k:Ljava/util/Hashtable;

    .line 13
    .line 14
    invoke-virtual {v0, p1, p2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 15
    .line 16
    .line 17
    return-void
.end method

.method public l0()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/join/mgps/adapter/ForumBaseAdapter;->A:Z

    .line 2
    .line 3
    return v0
.end method

.method public m()V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/join/mgps/adapter/ForumBaseAdapter;->e:Landroid/content/Context;

    .line 2
    .line 3
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    iget v1, v0, Landroid/util/DisplayMetrics;->density:F

    .line 12
    .line 13
    iget v0, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    .line 14
    .line 15
    iget-object v2, p0, Lcom/join/mgps/adapter/ForumBaseAdapter;->e:Landroid/content/Context;

    .line 16
    .line 17
    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 18
    .line 19
    .line 20
    move-result-object v2

    .line 21
    const v3, 0x7f070ec2

    .line 22
    .line 23
    .line 24
    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    .line 25
    .line 26
    .line 27
    move-result v2

    .line 28
    mul-int/lit8 v2, v2, 0x2

    .line 29
    .line 30
    sub-int/2addr v0, v2

    .line 31
    const/high16 v2, 0x43520000    # 210.0f

    .line 32
    .line 33
    mul-float v2, v2, v1

    .line 34
    .line 35
    float-to-int v2, v2

    .line 36
    const/high16 v3, 0x43200000    # 160.0f

    .line 37
    .line 38
    mul-float v3, v3, v1

    .line 39
    .line 40
    float-to-int v3, v3

    .line 41
    const/high16 v4, 0x40c00000    # 6.0f

    .line 42
    .line 43
    mul-float v4, v4, v1

    .line 44
    .line 45
    float-to-int v4, v4

    .line 46
    int-to-float v0, v0

    .line 47
    int-to-float v4, v4

    .line 48
    mul-float v4, v4, v1

    .line 49
    .line 50
    const/high16 v1, 0x40000000    # 2.0f

    .line 51
    .line 52
    mul-float v4, v4, v1

    .line 53
    .line 54
    sub-float v1, v0, v4

    .line 55
    .line 56
    float-to-int v1, v1

    .line 57
    div-int/lit8 v1, v1, 0x3

    .line 58
    .line 59
    if-le v1, v2, :cond_0

    .line 60
    .line 61
    goto :goto_0

    .line 62
    :cond_0
    if-le v1, v3, :cond_1

    .line 63
    .line 64
    move v2, v3

    .line 65
    goto :goto_0

    .line 66
    :cond_1
    move v2, v1

    .line 67
    :goto_0
    iput v2, p0, Lcom/join/mgps/adapter/ForumBaseAdapter;->p:I

    .line 68
    .line 69
    const v1, 0x3fe66666    # 1.8f

    .line 70
    .line 71
    .line 72
    const/high16 v2, 0x3f800000    # 1.0f

    .line 73
    .line 74
    mul-float v3, v0, v2

    .line 75
    .line 76
    div-float/2addr v3, v1

    .line 77
    float-to-int v1, v3

    .line 78
    iput v1, p0, Lcom/join/mgps/adapter/ForumBaseAdapter;->u:I

    .line 79
    .line 80
    const v1, 0x3f1d70a4    # 0.615f

    .line 81
    .line 82
    .line 83
    mul-float v1, v1, v0

    .line 84
    .line 85
    float-to-int v1, v1

    .line 86
    int-to-float v3, v1

    .line 87
    mul-float v3, v3, v2

    .line 88
    .line 89
    const v4, 0x3feccccd    # 1.85f

    .line 90
    .line 91
    .line 92
    div-float/2addr v3, v4

    .line 93
    float-to-int v3, v3

    .line 94
    iput v1, p0, Lcom/join/mgps/adapter/ForumBaseAdapter;->q:I

    .line 95
    .line 96
    iput v3, p0, Lcom/join/mgps/adapter/ForumBaseAdapter;->r:I

    .line 97
    .line 98
    const v1, 0x3f0a3d71    # 0.54f

    .line 99
    .line 100
    .line 101
    mul-float v0, v0, v1

    .line 102
    .line 103
    float-to-int v0, v0

    .line 104
    int-to-float v1, v0

    .line 105
    mul-float v1, v1, v2

    .line 106
    .line 107
    const v2, 0x3f59999a    # 0.85f

    .line 108
    .line 109
    .line 110
    div-float/2addr v1, v2

    .line 111
    float-to-int v1, v1

    .line 112
    iput v0, p0, Lcom/join/mgps/adapter/ForumBaseAdapter;->s:I

    .line 113
    .line 114
    iput v1, p0, Lcom/join/mgps/adapter/ForumBaseAdapter;->t:I

    .line 115
    .line 116
    return-void
.end method

.method public m0()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/join/mgps/adapter/ForumBaseAdapter;->B:Z

    .line 2
    .line 3
    return v0
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

.method public o0(Lcom/facebook/drawee/view/SimpleDraweeView;Ljava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x0
        }
        names = {
            "view",
            "src"
        }
    .end annotation

    .line 1
    :try_start_0
    invoke-virtual {p1}, Lcom/facebook/drawee/view/DraweeView;->getHierarchy()Ls3/b;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    check-cast v0, Lcom/facebook/drawee/generic/a;

    .line 6
    .line 7
    const v1, 0x7f080caf

    .line 8
    .line 9
    .line 10
    invoke-virtual {v0, v1}, Lcom/facebook/drawee/generic/a;->J(I)V

    .line 11
    .line 12
    .line 13
    new-instance v0, Lcom/join/mgps/adapter/ForumBaseAdapter$f0;

    .line 14
    .line 15
    invoke-direct {v0, p0, p1}, Lcom/join/mgps/adapter/ForumBaseAdapter$f0;-><init>(Lcom/join/mgps/adapter/ForumBaseAdapter;Lcom/facebook/drawee/view/SimpleDraweeView;)V

    .line 16
    .line 17
    .line 18
    invoke-static {}, Lcom/facebook/drawee/backends/pipeline/Fresco;->newDraweeControllerBuilder()Lcom/facebook/drawee/backends/pipeline/e;

    .line 19
    .line 20
    .line 21
    move-result-object v1

    .line 22
    invoke-virtual {v1, v0}, Lcom/facebook/drawee/controller/AbstractDraweeControllerBuilder;->I(Lcom/facebook/drawee/controller/c;)Lcom/facebook/drawee/controller/AbstractDraweeControllerBuilder;

    .line 23
    .line 24
    .line 25
    move-result-object v0

    .line 26
    check-cast v0, Lcom/facebook/drawee/backends/pipeline/e;

    .line 27
    .line 28
    invoke-static {p2}, Lcom/join/android/app/common/utils/l;->I(Ljava/lang/String;)Landroid/net/Uri;

    .line 29
    .line 30
    .line 31
    move-result-object p2

    .line 32
    invoke-virtual {v0, p2}, Lcom/facebook/drawee/backends/pipeline/e;->e0(Landroid/net/Uri;)Lcom/facebook/drawee/backends/pipeline/e;

    .line 33
    .line 34
    .line 35
    move-result-object p2

    .line 36
    invoke-virtual {p2}, Lcom/facebook/drawee/controller/AbstractDraweeControllerBuilder;->d()Lcom/facebook/drawee/controller/a;

    .line 37
    .line 38
    .line 39
    move-result-object p2

    .line 40
    invoke-virtual {p1, p2}, Lcom/facebook/drawee/view/DraweeView;->setController(Ls3/a;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 41
    .line 42
    .line 43
    goto :goto_0

    .line 44
    :catch_0
    move-exception p1

    .line 45
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 46
    .line 47
    .line 48
    :goto_0
    return-void
.end method

.method public p()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/join/mgps/adapter/ForumBaseAdapter;->x:I

    .line 2
    .line 3
    return v0
.end method

.method public s0(Lcom/github/snowdream/android/app/downloader/DownloadTask;I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "downloadTask",
            "event"
        }
    .end annotation

    .line 1
    return-void
.end method

.method t0(Landroid/content/Context;Ljava/lang/String;)V
    .locals 5
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "context",
            "imgUrl"
        }
    .end annotation

    .line 1
    invoke-static {p2}, Lcom/join/mgps/Util/r0;->i0(Ljava/lang/String;)[Ljava/lang/Integer;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    new-instance v1, Lcom/join/mgps/adapter/ForumBaseAdapter$u0;

    .line 8
    .line 9
    invoke-direct {v1, p0}, Lcom/join/mgps/adapter/ForumBaseAdapter$u0;-><init>(Lcom/join/mgps/adapter/ForumBaseAdapter;)V

    .line 10
    .line 11
    .line 12
    const/4 v2, 0x0

    .line 13
    aget-object v2, v0, v2

    .line 14
    .line 15
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    .line 16
    .line 17
    .line 18
    move-result v2

    .line 19
    const/4 v3, 0x1

    .line 20
    aget-object v0, v0, v3

    .line 21
    .line 22
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    .line 23
    .line 24
    .line 25
    move-result v0

    .line 26
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 27
    .line 28
    .line 29
    move-result-object p1

    .line 30
    invoke-virtual {p1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    .line 31
    .line 32
    .line 33
    move-result-object v3

    .line 34
    iget v3, v3, Landroid/util/DisplayMetrics;->widthPixels:I

    .line 35
    .line 36
    const v4, 0x7f070ed4

    .line 37
    .line 38
    .line 39
    invoke-virtual {p1, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    .line 40
    .line 41
    .line 42
    move-result p1

    .line 43
    mul-int/lit8 p1, p1, 0x2

    .line 44
    .line 45
    sub-int/2addr v3, p1

    .line 46
    int-to-float p1, v3

    .line 47
    const/high16 v4, 0x3f800000    # 1.0f

    .line 48
    .line 49
    mul-float p1, p1, v4

    .line 50
    .line 51
    int-to-float v0, v0

    .line 52
    mul-float v0, v0, v4

    .line 53
    .line 54
    int-to-float v2, v2

    .line 55
    div-float/2addr v0, v2

    .line 56
    mul-float p1, p1, v0

    .line 57
    .line 58
    float-to-int p1, p1

    .line 59
    iput v3, v1, Lcom/join/mgps/adapter/ForumBaseAdapter$u0;->a:I

    .line 60
    .line 61
    iput p1, v1, Lcom/join/mgps/adapter/ForumBaseAdapter$u0;->b:I

    .line 62
    .line 63
    invoke-virtual {p0, p2, v1}, Lcom/join/mgps/adapter/ForumBaseAdapter;->h(Ljava/lang/String;Lcom/join/mgps/adapter/ForumBaseAdapter$u0;)V

    .line 64
    .line 65
    .line 66
    :cond_0
    return-void
.end method

.method public w0(I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "currentPosition"
        }
    .end annotation

    .line 1
    iput p1, p0, Lcom/join/mgps/adapter/ForumBaseAdapter;->x:I

    .line 2
    .line 3
    return-void
.end method

.method public x()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/join/mgps/adapter/ForumBaseAdapter$r1;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/adapter/ForumBaseAdapter;->f:Ljava/util/List;

    .line 2
    .line 3
    return-object v0
.end method

.method public y()Lcom/join/android/app/component/optimizetext/b;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/adapter/ForumBaseAdapter;->b:Lcom/join/android/app/component/optimizetext/b;

    .line 2
    .line 3
    return-object v0
.end method

.method public z()Lcom/join/mgps/adapter/ForumBaseAdapter$t0;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/adapter/ForumBaseAdapter;->o:Lcom/join/mgps/adapter/ForumBaseAdapter$t0;

    .line 2
    .line 3
    return-object v0
.end method

.method z0(Landroid/view/View;I)V
    .locals 16
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "view",
            "status"
        }
    .end annotation

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move-object/from16 v1, p1

    .line 4
    .line 5
    move/from16 v2, p2

    .line 6
    .line 7
    const/4 v3, 0x1

    .line 8
    invoke-virtual {v1, v3}, Landroid/view/View;->setEnabled(Z)V

    .line 9
    .line 10
    .line 11
    instance-of v3, v1, Landroid/widget/TextView;

    .line 12
    .line 13
    const v4, 0x7f080f93

    .line 14
    .line 15
    .line 16
    const/4 v5, 0x0

    .line 17
    const v6, -0x767677

    .line 18
    .line 19
    .line 20
    const/high16 v7, 0x41300000    # 11.0f

    .line 21
    .line 22
    const-string v8, "\u5373\u5c06\u5f00\u653e"

    .line 23
    .line 24
    const v10, 0x7f120104

    .line 25
    .line 26
    .line 27
    const/high16 v11, 0x41400000    # 12.0f

    .line 28
    .line 29
    const v12, 0x7f120108

    .line 30
    .line 31
    .line 32
    const/4 v13, 0x3

    .line 33
    const v14, 0x7f080f8b

    .line 34
    .line 35
    .line 36
    const v15, -0xc35b03

    .line 37
    .line 38
    .line 39
    const/4 v9, 0x2

    .line 40
    if-eqz v3, :cond_2

    .line 41
    .line 42
    check-cast v1, Landroid/widget/TextView;

    .line 43
    .line 44
    invoke-virtual {v1, v15}, Landroid/widget/TextView;->setTextColor(I)V

    .line 45
    .line 46
    .line 47
    if-ne v2, v13, :cond_0

    .line 48
    .line 49
    invoke-virtual {v1}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    .line 50
    .line 51
    .line 52
    move-result-object v2

    .line 53
    invoke-virtual {v2, v12}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    .line 54
    .line 55
    .line 56
    move-result-object v2

    .line 57
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 58
    .line 59
    .line 60
    invoke-virtual {v1, v9, v11}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 61
    .line 62
    .line 63
    invoke-virtual {v1, v15}, Landroid/widget/TextView;->setTextColor(I)V

    .line 64
    .line 65
    .line 66
    invoke-virtual {v1, v14}, Landroid/view/View;->setBackgroundResource(I)V

    .line 67
    .line 68
    .line 69
    goto/16 :goto_0

    .line 70
    .line 71
    :cond_0
    if-ne v2, v9, :cond_1

    .line 72
    .line 73
    invoke-virtual {v1, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 74
    .line 75
    .line 76
    invoke-virtual {v1, v9, v7}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 77
    .line 78
    .line 79
    invoke-virtual {v1, v6}, Landroid/widget/TextView;->setTextColor(I)V

    .line 80
    .line 81
    .line 82
    invoke-virtual {v1, v5}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 83
    .line 84
    .line 85
    invoke-virtual {v1, v4}, Landroid/view/View;->setBackgroundResource(I)V

    .line 86
    .line 87
    .line 88
    goto :goto_0

    .line 89
    :cond_1
    iget-object v2, v0, Lcom/join/mgps/adapter/ForumBaseAdapter;->e:Landroid/content/Context;

    .line 90
    .line 91
    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 92
    .line 93
    .line 94
    move-result-object v2

    .line 95
    invoke-virtual {v2, v10}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    .line 96
    .line 97
    .line 98
    move-result-object v2

    .line 99
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 100
    .line 101
    .line 102
    const/high16 v2, 0x41500000    # 13.0f

    .line 103
    .line 104
    invoke-virtual {v1, v9, v2}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 105
    .line 106
    .line 107
    invoke-virtual {v1, v15}, Landroid/widget/TextView;->setTextColor(I)V

    .line 108
    .line 109
    .line 110
    invoke-virtual {v1, v14}, Landroid/view/View;->setBackgroundResource(I)V

    .line 111
    .line 112
    .line 113
    goto :goto_0

    .line 114
    :cond_2
    instance-of v3, v1, Landroid/widget/Button;

    .line 115
    .line 116
    if-eqz v3, :cond_5

    .line 117
    .line 118
    check-cast v1, Landroid/widget/Button;

    .line 119
    .line 120
    invoke-virtual {v1, v15}, Landroid/widget/TextView;->setTextColor(I)V

    .line 121
    .line 122
    .line 123
    if-ne v2, v13, :cond_3

    .line 124
    .line 125
    invoke-virtual {v1}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    .line 126
    .line 127
    .line 128
    move-result-object v2

    .line 129
    invoke-virtual {v2, v12}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    .line 130
    .line 131
    .line 132
    move-result-object v2

    .line 133
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 134
    .line 135
    .line 136
    invoke-virtual {v1, v9, v11}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 137
    .line 138
    .line 139
    invoke-virtual {v1, v15}, Landroid/widget/TextView;->setTextColor(I)V

    .line 140
    .line 141
    .line 142
    invoke-virtual {v1, v14}, Landroid/view/View;->setBackgroundResource(I)V

    .line 143
    .line 144
    .line 145
    goto :goto_0

    .line 146
    :cond_3
    if-ne v2, v9, :cond_4

    .line 147
    .line 148
    invoke-virtual {v1, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 149
    .line 150
    .line 151
    invoke-virtual {v1, v9, v7}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 152
    .line 153
    .line 154
    invoke-virtual {v1, v6}, Landroid/widget/TextView;->setTextColor(I)V

    .line 155
    .line 156
    .line 157
    invoke-virtual {v1, v5}, Landroid/view/View;->setEnabled(Z)V

    .line 158
    .line 159
    .line 160
    invoke-virtual {v1, v4}, Landroid/view/View;->setBackgroundResource(I)V

    .line 161
    .line 162
    .line 163
    goto :goto_0

    .line 164
    :cond_4
    iget-object v2, v0, Lcom/join/mgps/adapter/ForumBaseAdapter;->e:Landroid/content/Context;

    .line 165
    .line 166
    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 167
    .line 168
    .line 169
    move-result-object v2

    .line 170
    invoke-virtual {v2, v10}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    .line 171
    .line 172
    .line 173
    move-result-object v2

    .line 174
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 175
    .line 176
    .line 177
    const/high16 v2, 0x41500000    # 13.0f

    .line 178
    .line 179
    invoke-virtual {v1, v9, v2}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 180
    .line 181
    .line 182
    invoke-virtual {v1, v15}, Landroid/widget/TextView;->setTextColor(I)V

    .line 183
    .line 184
    .line 185
    invoke-virtual {v1, v14}, Landroid/view/View;->setBackgroundResource(I)V

    .line 186
    .line 187
    .line 188
    :cond_5
    :goto_0
    return-void
.end method
