.class public Lcom/join/mgps/adapter/ForumCommentAdapter;
.super Lcom/join/mgps/base/a;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/join/mgps/adapter/ForumCommentAdapter$z;,
        Lcom/join/mgps/adapter/ForumCommentAdapter$w;,
        Lcom/join/mgps/adapter/ForumCommentAdapter$ViewType;,
        Lcom/join/mgps/adapter/ForumCommentAdapter$x;,
        Lcom/join/mgps/adapter/ForumCommentAdapter$y;,
        Lcom/join/mgps/adapter/ForumCommentAdapter$t;,
        Lcom/join/mgps/adapter/ForumCommentAdapter$v;,
        Lcom/join/mgps/adapter/ForumCommentAdapter$u;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/join/mgps/base/a<",
        "Lcom/join/mgps/adapter/ForumCommentAdapter$z;",
        "Lcom/join/mgps/base/b;",
        ">;"
    }
.end annotation


# instance fields
.field private final h:Ljava/lang/String;

.field i:Lcom/danikula/videocache/i;

.field private j:Landroid/content/Context;

.field k:Lcom/join/mgps/adapter/ForumCommentAdapter$x;

.field l:Landroid/widget/LinearLayout$LayoutParams;

.field m:I

.field n:I

.field o:Landroid/widget/LinearLayout$LayoutParams;

.field p:Ljava/util/Hashtable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Hashtable<",
            "Ljava/lang/String;",
            "Lcom/join/mgps/adapter/ForumCommentAdapter$y;",
            ">;"
        }
    .end annotation
.end field

.field q:Lcom/join/mgps/adapter/ForumCommentAdapter$t;

.field r:Z

.field s:Lcom/join/mgps/adapter/ForumCommentAdapter$v;

.field private t:Lcom/join/mgps/adapter/ForumCommentAdapter$w;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "mContext"
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
    invoke-direct {p0, v0}, Lcom/join/mgps/base/a;-><init>(Ljava/util/List;)V

    .line 7
    .line 8
    .line 9
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    iput-object v0, p0, Lcom/join/mgps/adapter/ForumCommentAdapter;->h:Ljava/lang/String;

    .line 18
    .line 19
    const/4 v0, 0x0

    .line 20
    iput v0, p0, Lcom/join/mgps/adapter/ForumCommentAdapter;->m:I

    .line 21
    .line 22
    iput v0, p0, Lcom/join/mgps/adapter/ForumCommentAdapter;->n:I

    .line 23
    .line 24
    iput-boolean v0, p0, Lcom/join/mgps/adapter/ForumCommentAdapter;->r:Z

    .line 25
    .line 26
    const/4 v0, 0x0

    .line 27
    iput-object v0, p0, Lcom/join/mgps/adapter/ForumCommentAdapter;->t:Lcom/join/mgps/adapter/ForumCommentAdapter$w;

    .line 28
    .line 29
    iput-object p1, p0, Lcom/join/mgps/adapter/ForumCommentAdapter;->j:Landroid/content/Context;

    .line 30
    .line 31
    invoke-virtual {p0, p1}, Lcom/join/mgps/adapter/ForumCommentAdapter;->W(Landroid/content/Context;)Lcom/danikula/videocache/i;

    .line 32
    .line 33
    .line 34
    move-result-object p1

    .line 35
    iput-object p1, p0, Lcom/join/mgps/adapter/ForumCommentAdapter;->i:Lcom/danikula/videocache/i;

    .line 36
    .line 37
    sget-object p1, Lcom/join/mgps/adapter/ForumCommentAdapter$ViewType;->COMMENT_HEADER:Lcom/join/mgps/adapter/ForumCommentAdapter$ViewType;

    .line 38
    .line 39
    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    .line 40
    .line 41
    .line 42
    move-result p1

    .line 43
    const v0, 0x7f0d06ac

    .line 44
    .line 45
    .line 46
    invoke-virtual {p0, p1, v0}, Lcom/join/mgps/base/a;->r(II)V

    .line 47
    .line 48
    .line 49
    sget-object p1, Lcom/join/mgps/adapter/ForumCommentAdapter$ViewType;->COMMENT_MESSAGE:Lcom/join/mgps/adapter/ForumCommentAdapter$ViewType;

    .line 50
    .line 51
    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    .line 52
    .line 53
    .line 54
    move-result p1

    .line 55
    const v0, 0x7f0d06ae

    .line 56
    .line 57
    .line 58
    invoke-virtual {p0, p1, v0}, Lcom/join/mgps/base/a;->r(II)V

    .line 59
    .line 60
    .line 61
    sget-object p1, Lcom/join/mgps/adapter/ForumCommentAdapter$ViewType;->COMMENT_IMAGE:Lcom/join/mgps/adapter/ForumCommentAdapter$ViewType;

    .line 62
    .line 63
    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    .line 64
    .line 65
    .line 66
    move-result p1

    .line 67
    const v0, 0x7f0d06ad

    .line 68
    .line 69
    .line 70
    invoke-virtual {p0, p1, v0}, Lcom/join/mgps/base/a;->r(II)V

    .line 71
    .line 72
    .line 73
    sget-object p1, Lcom/join/mgps/adapter/ForumCommentAdapter$ViewType;->COMMENT_MESSAGE_REPLY:Lcom/join/mgps/adapter/ForumCommentAdapter$ViewType;

    .line 74
    .line 75
    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    .line 76
    .line 77
    .line 78
    move-result p1

    .line 79
    const v0, 0x7f0d06af

    .line 80
    .line 81
    .line 82
    invoke-virtual {p0, p1, v0}, Lcom/join/mgps/base/a;->r(II)V

    .line 83
    .line 84
    .line 85
    sget-object p1, Lcom/join/mgps/adapter/ForumCommentAdapter$ViewType;->EMPLOYEE_TAGS:Lcom/join/mgps/adapter/ForumCommentAdapter$ViewType;

    .line 86
    .line 87
    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    .line 88
    .line 89
    .line 90
    move-result p1

    .line 91
    const v0, 0x7f0d06b2

    .line 92
    .line 93
    .line 94
    invoke-virtual {p0, p1, v0}, Lcom/join/mgps/base/a;->r(II)V

    .line 95
    .line 96
    .line 97
    sget-object p1, Lcom/join/mgps/adapter/ForumCommentAdapter$ViewType;->DIVIDER:Lcom/join/mgps/adapter/ForumCommentAdapter$ViewType;

    .line 98
    .line 99
    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    .line 100
    .line 101
    .line 102
    move-result p1

    .line 103
    const v0, 0x7f0d06b0

    .line 104
    .line 105
    .line 106
    invoke-virtual {p0, p1, v0}, Lcom/join/mgps/base/a;->r(II)V

    .line 107
    .line 108
    .line 109
    invoke-direct {p0}, Lcom/join/mgps/adapter/ForumCommentAdapter;->Y()V

    .line 110
    .line 111
    .line 112
    return-void
.end method

.method static synthetic A(Lcom/join/mgps/adapter/ForumCommentAdapter;Ljava/lang/String;Landroid/view/View;Lcom/facebook/imagepipeline/image/g;)Landroid/view/ViewGroup$LayoutParams;
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2, p3}, Lcom/join/mgps/adapter/ForumCommentAdapter;->w0(Ljava/lang/String;Landroid/view/View;Lcom/facebook/imagepipeline/image/g;)Landroid/view/ViewGroup$LayoutParams;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method private A0(Landroid/view/View;Lcom/join/mgps/adapter/ForumCommentAdapter$z$a;)V
    .locals 8
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10
        }
        names = {
            "view",
            "item"
        }
    .end annotation

    .line 1
    if-nez p2, :cond_0

    .line 2
    .line 3
    return-void

    .line 4
    :cond_0
    iget-object v0, p0, Lcom/join/mgps/adapter/ForumCommentAdapter;->q:Lcom/join/mgps/adapter/ForumCommentAdapter$t;

    .line 5
    .line 6
    if-eqz v0, :cond_1

    .line 7
    .line 8
    invoke-virtual {v0}, Landroid/widget/PopupWindow;->isShowing()Z

    .line 9
    .line 10
    .line 11
    move-result v0

    .line 12
    if-eqz v0, :cond_1

    .line 13
    .line 14
    iget-object v0, p0, Lcom/join/mgps/adapter/ForumCommentAdapter;->q:Lcom/join/mgps/adapter/ForumCommentAdapter$t;

    .line 15
    .line 16
    invoke-virtual {v0}, Lcom/join/mgps/adapter/ForumCommentAdapter$t;->dismiss()V

    .line 17
    .line 18
    .line 19
    :cond_1
    iget-object v0, p0, Lcom/join/mgps/adapter/ForumCommentAdapter;->q:Lcom/join/mgps/adapter/ForumCommentAdapter$t;

    .line 20
    .line 21
    if-nez v0, :cond_2

    .line 22
    .line 23
    new-instance v0, Lcom/join/mgps/adapter/ForumCommentAdapter$t;

    .line 24
    .line 25
    iget-object v1, p0, Lcom/join/mgps/adapter/ForumCommentAdapter;->j:Landroid/content/Context;

    .line 26
    .line 27
    invoke-direct {v0, p0, v1}, Lcom/join/mgps/adapter/ForumCommentAdapter$t;-><init>(Lcom/join/mgps/adapter/ForumCommentAdapter;Landroid/content/Context;)V

    .line 28
    .line 29
    .line 30
    iput-object v0, p0, Lcom/join/mgps/adapter/ForumCommentAdapter;->q:Lcom/join/mgps/adapter/ForumCommentAdapter$t;

    .line 31
    .line 32
    :cond_2
    iget-object v0, p0, Lcom/join/mgps/adapter/ForumCommentAdapter;->q:Lcom/join/mgps/adapter/ForumCommentAdapter$t;

    .line 33
    .line 34
    iget v1, p2, Lcom/join/mgps/adapter/ForumCommentAdapter$z$a;->c:I

    .line 35
    .line 36
    invoke-virtual {v0, v1}, Lcom/join/mgps/adapter/ForumCommentAdapter$t;->f(I)V

    .line 37
    .line 38
    .line 39
    iget-object v0, p0, Lcom/join/mgps/adapter/ForumCommentAdapter;->q:Lcom/join/mgps/adapter/ForumCommentAdapter$t;

    .line 40
    .line 41
    iget-object v1, p2, Lcom/join/mgps/adapter/ForumCommentAdapter$z$a;->e:Ljava/lang/String;

    .line 42
    .line 43
    invoke-virtual {v0, v1}, Lcom/join/mgps/adapter/ForumCommentAdapter$t;->h(Ljava/lang/String;)V

    .line 44
    .line 45
    .line 46
    iget-object v0, p0, Lcom/join/mgps/adapter/ForumCommentAdapter;->j:Landroid/content/Context;

    .line 47
    .line 48
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 49
    .line 50
    .line 51
    move-result-object v0

    .line 52
    const v1, 0x7f071402

    .line 53
    .line 54
    .line 55
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    .line 56
    .line 57
    .line 58
    move-result v0

    .line 59
    float-to-int v0, v0

    .line 60
    iget-object v1, p0, Lcom/join/mgps/adapter/ForumCommentAdapter;->j:Landroid/content/Context;

    .line 61
    .line 62
    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 63
    .line 64
    .line 65
    move-result-object v1

    .line 66
    const v2, 0x7f07163a

    .line 67
    .line 68
    .line 69
    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimension(I)F

    .line 70
    .line 71
    .line 72
    move-result v1

    .line 73
    float-to-int v1, v1

    .line 74
    iget-object v2, p0, Lcom/join/mgps/adapter/ForumCommentAdapter;->j:Landroid/content/Context;

    .line 75
    .line 76
    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 77
    .line 78
    .line 79
    move-result-object v2

    .line 80
    const v3, 0x7f07157e

    .line 81
    .line 82
    .line 83
    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimension(I)F

    .line 84
    .line 85
    .line 86
    move-result v2

    .line 87
    float-to-int v2, v2

    .line 88
    iget-boolean v3, p2, Lcom/join/mgps/adapter/ForumCommentAdapter$z$a;->l:Z

    .line 89
    .line 90
    const v4, 0x7f0a1b49

    .line 91
    .line 92
    .line 93
    const v5, 0x7f0a137c

    .line 94
    .line 95
    .line 96
    const/4 v6, 0x0

    .line 97
    const/16 v7, 0x8

    .line 98
    .line 99
    if-eqz v3, :cond_3

    .line 100
    .line 101
    iget-object v3, p0, Lcom/join/mgps/adapter/ForumCommentAdapter;->q:Lcom/join/mgps/adapter/ForumCommentAdapter$t;

    .line 102
    .line 103
    invoke-virtual {v3}, Landroid/widget/PopupWindow;->getContentView()Landroid/view/View;

    .line 104
    .line 105
    .line 106
    move-result-object v3

    .line 107
    invoke-virtual {v3, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 108
    .line 109
    .line 110
    move-result-object v3

    .line 111
    invoke-virtual {v3, v6}, Landroid/view/View;->setVisibility(I)V

    .line 112
    .line 113
    .line 114
    iget-object v3, p0, Lcom/join/mgps/adapter/ForumCommentAdapter;->q:Lcom/join/mgps/adapter/ForumCommentAdapter$t;

    .line 115
    .line 116
    invoke-virtual {v3}, Landroid/widget/PopupWindow;->getContentView()Landroid/view/View;

    .line 117
    .line 118
    .line 119
    move-result-object v3

    .line 120
    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 121
    .line 122
    .line 123
    move-result-object v3

    .line 124
    invoke-virtual {v3, v6}, Landroid/view/View;->setVisibility(I)V

    .line 125
    .line 126
    .line 127
    goto :goto_0

    .line 128
    :cond_3
    iget-object v3, p0, Lcom/join/mgps/adapter/ForumCommentAdapter;->q:Lcom/join/mgps/adapter/ForumCommentAdapter$t;

    .line 129
    .line 130
    invoke-virtual {v3}, Landroid/widget/PopupWindow;->getContentView()Landroid/view/View;

    .line 131
    .line 132
    .line 133
    move-result-object v3

    .line 134
    invoke-virtual {v3, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 135
    .line 136
    .line 137
    move-result-object v3

    .line 138
    invoke-virtual {v3, v7}, Landroid/view/View;->setVisibility(I)V

    .line 139
    .line 140
    .line 141
    iget-object v3, p0, Lcom/join/mgps/adapter/ForumCommentAdapter;->q:Lcom/join/mgps/adapter/ForumCommentAdapter$t;

    .line 142
    .line 143
    invoke-virtual {v3}, Landroid/widget/PopupWindow;->getContentView()Landroid/view/View;

    .line 144
    .line 145
    .line 146
    move-result-object v3

    .line 147
    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 148
    .line 149
    .line 150
    move-result-object v3

    .line 151
    invoke-virtual {v3, v7}, Landroid/view/View;->setVisibility(I)V

    .line 152
    .line 153
    .line 154
    sub-int/2addr v0, v2

    .line 155
    :goto_0
    iget-boolean v3, p2, Lcom/join/mgps/adapter/ForumCommentAdapter$z$a;->m:Z

    .line 156
    .line 157
    const v4, 0x7f0a1b48

    .line 158
    .line 159
    .line 160
    const v5, 0x7f0a1372

    .line 161
    .line 162
    .line 163
    if-eqz v3, :cond_4

    .line 164
    .line 165
    iget-object v3, p0, Lcom/join/mgps/adapter/ForumCommentAdapter;->q:Lcom/join/mgps/adapter/ForumCommentAdapter$t;

    .line 166
    .line 167
    invoke-virtual {v3}, Landroid/widget/PopupWindow;->getContentView()Landroid/view/View;

    .line 168
    .line 169
    .line 170
    move-result-object v3

    .line 171
    invoke-virtual {v3, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 172
    .line 173
    .line 174
    move-result-object v3

    .line 175
    invoke-virtual {v3, v6}, Landroid/view/View;->setVisibility(I)V

    .line 176
    .line 177
    .line 178
    iget-object v3, p0, Lcom/join/mgps/adapter/ForumCommentAdapter;->q:Lcom/join/mgps/adapter/ForumCommentAdapter$t;

    .line 179
    .line 180
    invoke-virtual {v3}, Landroid/widget/PopupWindow;->getContentView()Landroid/view/View;

    .line 181
    .line 182
    .line 183
    move-result-object v3

    .line 184
    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 185
    .line 186
    .line 187
    move-result-object v3

    .line 188
    invoke-virtual {v3, v6}, Landroid/view/View;->setVisibility(I)V

    .line 189
    .line 190
    .line 191
    goto :goto_1

    .line 192
    :cond_4
    iget-object v3, p0, Lcom/join/mgps/adapter/ForumCommentAdapter;->q:Lcom/join/mgps/adapter/ForumCommentAdapter$t;

    .line 193
    .line 194
    invoke-virtual {v3}, Landroid/widget/PopupWindow;->getContentView()Landroid/view/View;

    .line 195
    .line 196
    .line 197
    move-result-object v3

    .line 198
    invoke-virtual {v3, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 199
    .line 200
    .line 201
    move-result-object v3

    .line 202
    invoke-virtual {v3, v7}, Landroid/view/View;->setVisibility(I)V

    .line 203
    .line 204
    .line 205
    iget-object v3, p0, Lcom/join/mgps/adapter/ForumCommentAdapter;->q:Lcom/join/mgps/adapter/ForumCommentAdapter$t;

    .line 206
    .line 207
    invoke-virtual {v3}, Landroid/widget/PopupWindow;->getContentView()Landroid/view/View;

    .line 208
    .line 209
    .line 210
    move-result-object v3

    .line 211
    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 212
    .line 213
    .line 214
    move-result-object v3

    .line 215
    invoke-virtual {v3, v7}, Landroid/view/View;->setVisibility(I)V

    .line 216
    .line 217
    .line 218
    sub-int/2addr v0, v2

    .line 219
    :goto_1
    iget-boolean p2, p2, Lcom/join/mgps/adapter/ForumCommentAdapter$z$a;->n:Z

    .line 220
    .line 221
    const v3, 0x7f0a1b34

    .line 222
    .line 223
    .line 224
    const v4, 0x7f0a0483

    .line 225
    .line 226
    .line 227
    if-eqz p2, :cond_5

    .line 228
    .line 229
    iget-object p2, p0, Lcom/join/mgps/adapter/ForumCommentAdapter;->q:Lcom/join/mgps/adapter/ForumCommentAdapter$t;

    .line 230
    .line 231
    invoke-virtual {p2}, Landroid/widget/PopupWindow;->getContentView()Landroid/view/View;

    .line 232
    .line 233
    .line 234
    move-result-object p2

    .line 235
    invoke-virtual {p2, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 236
    .line 237
    .line 238
    move-result-object p2

    .line 239
    invoke-virtual {p2, v6}, Landroid/view/View;->setVisibility(I)V

    .line 240
    .line 241
    .line 242
    iget-object p2, p0, Lcom/join/mgps/adapter/ForumCommentAdapter;->q:Lcom/join/mgps/adapter/ForumCommentAdapter$t;

    .line 243
    .line 244
    invoke-virtual {p2}, Landroid/widget/PopupWindow;->getContentView()Landroid/view/View;

    .line 245
    .line 246
    .line 247
    move-result-object p2

    .line 248
    invoke-virtual {p2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 249
    .line 250
    .line 251
    move-result-object p2

    .line 252
    invoke-virtual {p2, v6}, Landroid/view/View;->setVisibility(I)V

    .line 253
    .line 254
    .line 255
    goto :goto_2

    .line 256
    :cond_5
    iget-object p2, p0, Lcom/join/mgps/adapter/ForumCommentAdapter;->q:Lcom/join/mgps/adapter/ForumCommentAdapter$t;

    .line 257
    .line 258
    invoke-virtual {p2}, Landroid/widget/PopupWindow;->getContentView()Landroid/view/View;

    .line 259
    .line 260
    .line 261
    move-result-object p2

    .line 262
    invoke-virtual {p2, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 263
    .line 264
    .line 265
    move-result-object p2

    .line 266
    invoke-virtual {p2, v7}, Landroid/view/View;->setVisibility(I)V

    .line 267
    .line 268
    .line 269
    iget-object p2, p0, Lcom/join/mgps/adapter/ForumCommentAdapter;->q:Lcom/join/mgps/adapter/ForumCommentAdapter$t;

    .line 270
    .line 271
    invoke-virtual {p2}, Landroid/widget/PopupWindow;->getContentView()Landroid/view/View;

    .line 272
    .line 273
    .line 274
    move-result-object p2

    .line 275
    invoke-virtual {p2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 276
    .line 277
    .line 278
    move-result-object p2

    .line 279
    invoke-virtual {p2, v7}, Landroid/view/View;->setVisibility(I)V

    .line 280
    .line 281
    .line 282
    sub-int/2addr v0, v2

    .line 283
    :goto_2
    iget-object p2, p0, Lcom/join/mgps/adapter/ForumCommentAdapter;->q:Lcom/join/mgps/adapter/ForumCommentAdapter$t;

    .line 284
    .line 285
    invoke-virtual {p2, v0}, Landroid/widget/PopupWindow;->setWidth(I)V

    .line 286
    .line 287
    .line 288
    iget-object p2, p0, Lcom/join/mgps/adapter/ForumCommentAdapter;->q:Lcom/join/mgps/adapter/ForumCommentAdapter$t;

    .line 289
    .line 290
    invoke-virtual {p2}, Landroid/widget/PopupWindow;->getWidth()I

    .line 291
    .line 292
    .line 293
    move-result p2

    .line 294
    iget-object v0, p0, Lcom/join/mgps/adapter/ForumCommentAdapter;->q:Lcom/join/mgps/adapter/ForumCommentAdapter$t;

    .line 295
    .line 296
    invoke-virtual {v0}, Lcom/join/mgps/customview/h;->getHeight()I

    .line 297
    .line 298
    .line 299
    move-result v0

    .line 300
    neg-int p2, p2

    .line 301
    if-nez v0, :cond_6

    .line 302
    .line 303
    goto :goto_3

    .line 304
    :cond_6
    move v1, v0

    .line 305
    :goto_3
    div-int/lit8 v1, v1, 0x2

    .line 306
    .line 307
    invoke-virtual {p1}, Landroid/view/View;->getMeasuredHeight()I

    .line 308
    .line 309
    .line 310
    move-result v0

    .line 311
    div-int/lit8 v0, v0, 0x2

    .line 312
    .line 313
    add-int/2addr v1, v0

    .line 314
    neg-int v0, v1

    .line 315
    iget-object v1, p0, Lcom/join/mgps/adapter/ForumCommentAdapter;->q:Lcom/join/mgps/adapter/ForumCommentAdapter$t;

    .line 316
    .line 317
    invoke-virtual {v1, p1, p2, v0}, Lcom/join/mgps/adapter/ForumCommentAdapter$t;->showAsDropDown(Landroid/view/View;II)V

    .line 318
    .line 319
    .line 320
    iget-object p2, p0, Lcom/join/mgps/adapter/ForumCommentAdapter;->q:Lcom/join/mgps/adapter/ForumCommentAdapter$t;

    .line 321
    .line 322
    new-instance v0, Lcom/join/mgps/adapter/ForumCommentAdapter$r;

    .line 323
    .line 324
    invoke-direct {v0, p0, p1}, Lcom/join/mgps/adapter/ForumCommentAdapter$r;-><init>(Lcom/join/mgps/adapter/ForumCommentAdapter;Landroid/view/View;)V

    .line 325
    .line 326
    .line 327
    invoke-virtual {p2, v0}, Landroid/widget/PopupWindow;->setTouchInterceptor(Landroid/view/View$OnTouchListener;)V

    .line 328
    .line 329
    .line 330
    return-void
.end method

.method static synthetic B(Lcom/join/mgps/adapter/ForumCommentAdapter;Landroid/content/Context;)Landroid/widget/LinearLayout$LayoutParams;
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/join/mgps/adapter/ForumCommentAdapter;->R(Landroid/content/Context;)Landroid/widget/LinearLayout$LayoutParams;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method private B0(Lcom/join/mgps/base/b;I)V
    .locals 7
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
    const v0, 0x7f0a1043

    .line 2
    .line 3
    .line 4
    const v1, 0x7f0a1764

    .line 5
    .line 6
    .line 7
    const v2, 0x7f0a0e73

    .line 8
    .line 9
    .line 10
    const v3, 0x7f0a12a5

    .line 11
    .line 12
    .line 13
    const v4, 0x7f0a129e

    .line 14
    .line 15
    .line 16
    const/4 v5, 0x1

    .line 17
    const/4 v6, 0x0

    .line 18
    if-nez p2, :cond_0

    .line 19
    .line 20
    invoke-virtual {p1, v2, v6}, Lcom/join/mgps/base/b;->setGone(IZ)Lcom/join/mgps/base/b;

    .line 21
    .line 22
    .line 23
    invoke-virtual {p1, v4, v6}, Lcom/join/mgps/base/b;->setGone(IZ)Lcom/join/mgps/base/b;

    .line 24
    .line 25
    .line 26
    invoke-virtual {p1, v3, v6}, Lcom/join/mgps/base/b;->setGone(IZ)Lcom/join/mgps/base/b;

    .line 27
    .line 28
    .line 29
    invoke-virtual {p1, v1, v5}, Lcom/join/mgps/base/b;->setGone(IZ)Lcom/join/mgps/base/b;

    .line 30
    .line 31
    .line 32
    invoke-virtual {p1, v0, v5}, Lcom/join/mgps/base/b;->setGone(IZ)Lcom/join/mgps/base/b;

    .line 33
    .line 34
    .line 35
    goto :goto_1

    .line 36
    :cond_0
    invoke-virtual {p1, v2, v5}, Lcom/join/mgps/base/b;->setGone(IZ)Lcom/join/mgps/base/b;

    .line 37
    .line 38
    .line 39
    const/16 v2, 0x11

    .line 40
    .line 41
    if-ne p2, v2, :cond_1

    .line 42
    .line 43
    invoke-virtual {p1, v4, v6}, Lcom/join/mgps/base/b;->setGone(IZ)Lcom/join/mgps/base/b;

    .line 44
    .line 45
    .line 46
    invoke-virtual {p1, v3, v5}, Lcom/join/mgps/base/b;->setGone(IZ)Lcom/join/mgps/base/b;

    .line 47
    .line 48
    .line 49
    goto :goto_0

    .line 50
    :cond_1
    invoke-virtual {p1, v4, v5}, Lcom/join/mgps/base/b;->setGone(IZ)Lcom/join/mgps/base/b;

    .line 51
    .line 52
    .line 53
    invoke-virtual {p1, v3, v6}, Lcom/join/mgps/base/b;->setGone(IZ)Lcom/join/mgps/base/b;

    .line 54
    .line 55
    .line 56
    :goto_0
    invoke-virtual {p1, v1, v6}, Lcom/join/mgps/base/b;->setGone(IZ)Lcom/join/mgps/base/b;

    .line 57
    .line 58
    .line 59
    invoke-virtual {p1, v0, v6}, Lcom/join/mgps/base/b;->setGone(IZ)Lcom/join/mgps/base/b;

    .line 60
    .line 61
    .line 62
    :goto_1
    return-void
.end method

.method static synthetic C(Lcom/join/mgps/adapter/ForumCommentAdapter;Landroid/widget/PopupWindow;Landroid/view/MotionEvent;)Z
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/join/mgps/adapter/ForumCommentAdapter;->M(Landroid/widget/PopupWindow;Landroid/view/MotionEvent;)Z

    .line 2
    .line 3
    .line 4
    move-result p0

    .line 5
    return p0
.end method

.method static synthetic D(Lcom/join/mgps/adapter/ForumCommentAdapter;Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/join/mgps/adapter/ForumCommentAdapter;->N(Landroid/view/View;Landroid/view/MotionEvent;)Z

    .line 2
    .line 3
    .line 4
    move-result p0

    .line 5
    return p0
.end method

.method static synthetic E(Lcom/join/mgps/adapter/ForumCommentAdapter;Landroid/view/View;Lcom/join/mgps/adapter/ForumCommentAdapter$z$a;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/join/mgps/adapter/ForumCommentAdapter;->A0(Landroid/view/View;Lcom/join/mgps/adapter/ForumCommentAdapter$z$a;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method private G(Lcom/join/mgps/base/b;Lcom/join/mgps/adapter/ForumCommentAdapter$z;)V
    .locals 12
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
    invoke-virtual {p2}, Lcom/join/mgps/adapter/ForumCommentAdapter$z;->a()Ljava/lang/Object;

    .line 2
    .line 3
    .line 4
    move-result-object p2

    .line 5
    check-cast p2, Lcom/join/mgps/adapter/ForumCommentAdapter$z$a;

    .line 6
    .line 7
    if-nez p2, :cond_0

    .line 8
    .line 9
    return-void

    .line 10
    :cond_0
    iget-boolean v0, p2, Lcom/join/mgps/adapter/ForumCommentAdapter$z$a;->a:Z

    .line 11
    .line 12
    const v1, 0x7f0a04e1

    .line 13
    .line 14
    .line 15
    invoke-virtual {p1, v1, v0}, Lcom/join/mgps/base/b;->setGone(IZ)Lcom/join/mgps/base/b;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 16
    .line 17
    .line 18
    const v0, 0x7f0a1ba6

    .line 19
    .line 20
    .line 21
    :try_start_1
    invoke-virtual {p1, v0}, Lcom/join/mgps/base/b;->getView(I)Landroid/view/View;

    .line 22
    .line 23
    .line 24
    move-result-object v1

    .line 25
    check-cast v1, Lcom/join/mgps/customview/VipView;

    .line 26
    .line 27
    iget v2, p2, Lcom/join/mgps/adapter/ForumCommentAdapter$z$a;->o:I

    .line 28
    .line 29
    iget v3, p2, Lcom/join/mgps/adapter/ForumCommentAdapter$z$a;->p:I

    .line 30
    .line 31
    invoke-virtual {v1, v2, v3}, Lcom/join/mgps/customview/VipView;->setVipData(II)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 32
    .line 33
    .line 34
    goto :goto_0

    .line 35
    :catch_0
    move-exception v1

    .line 36
    :try_start_2
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 37
    .line 38
    .line 39
    :goto_0
    iget v1, p2, Lcom/join/mgps/adapter/ForumCommentAdapter$z$a;->k:I

    .line 40
    .line 41
    const/4 v2, 0x0

    .line 42
    const/4 v3, 0x1

    .line 43
    if-ne v1, v3, :cond_1

    .line 44
    .line 45
    const/4 v1, 0x1

    .line 46
    goto :goto_1

    .line 47
    :cond_1
    const/4 v1, 0x0

    .line 48
    :goto_1
    const v4, 0x7f0a0669

    .line 49
    .line 50
    .line 51
    invoke-virtual {p1, v4, v1}, Lcom/join/mgps/base/b;->setGone(IZ)Lcom/join/mgps/base/b;

    .line 52
    .line 53
    .line 54
    iget-object v1, p2, Lcom/join/mgps/adapter/ForumCommentAdapter$z$a;->e:Ljava/lang/String;

    .line 55
    .line 56
    const v4, 0x7f0a03eb

    .line 57
    .line 58
    .line 59
    invoke-virtual {p1, v4, v1}, Lcom/join/mgps/base/b;->setText(ILjava/lang/CharSequence;)Lcom/join/mgps/base/b;

    .line 60
    .line 61
    .line 62
    iget-wide v5, p2, Lcom/join/mgps/adapter/ForumCommentAdapter$z$a;->f:J

    .line 63
    .line 64
    const-wide/16 v7, 0x3e8

    .line 65
    .line 66
    mul-long v5, v5, v7

    .line 67
    .line 68
    invoke-static {v5, v6}, Lcom/join/android/app/common/utils/i;->a(J)Ljava/lang/String;

    .line 69
    .line 70
    .line 71
    move-result-object v1

    .line 72
    const v5, 0x7f0a03d5

    .line 73
    .line 74
    .line 75
    invoke-virtual {p1, v5, v1}, Lcom/join/mgps/base/b;->setText(ILjava/lang/CharSequence;)Lcom/join/mgps/base/b;

    .line 76
    .line 77
    .line 78
    const v1, 0x7f0a03d7

    .line 79
    .line 80
    .line 81
    invoke-virtual {p1, v1}, Lcom/join/mgps/base/b;->getView(I)Landroid/view/View;

    .line 82
    .line 83
    .line 84
    move-result-object v6

    .line 85
    check-cast v6, Lcom/facebook/drawee/view/SimpleDraweeView;

    .line 86
    .line 87
    iget-object v7, p2, Lcom/join/mgps/adapter/ForumCommentAdapter$z$a;->d:Ljava/lang/String;

    .line 88
    .line 89
    invoke-static {v6, v7}, Lcom/join/android/app/common/utils/l;->y(Lcom/facebook/drawee/view/SimpleDraweeView;Ljava/lang/String;)V

    .line 90
    .line 91
    .line 92
    invoke-virtual {p1, v1}, Lcom/join/mgps/base/b;->getView(I)Landroid/view/View;

    .line 93
    .line 94
    .line 95
    move-result-object v6

    .line 96
    new-instance v7, Lcom/join/mgps/adapter/ForumCommentAdapter$k;

    .line 97
    .line 98
    invoke-direct {v7, p0, p2}, Lcom/join/mgps/adapter/ForumCommentAdapter$k;-><init>(Lcom/join/mgps/adapter/ForumCommentAdapter;Lcom/join/mgps/adapter/ForumCommentAdapter$z$a;)V

    .line 99
    .line 100
    .line 101
    invoke-virtual {v6, v7}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 102
    .line 103
    .line 104
    iget-boolean v6, p2, Lcom/join/mgps/adapter/ForumCommentAdapter$z$a;->g:Z

    .line 105
    .line 106
    const v7, 0x7f0a06a3

    .line 107
    .line 108
    .line 109
    invoke-virtual {p1, v7, v6}, Lcom/join/mgps/base/b;->setGone(IZ)Lcom/join/mgps/base/b;

    .line 110
    .line 111
    .line 112
    iget-boolean v6, p2, Lcom/join/mgps/adapter/ForumCommentAdapter$z$a;->j:Z

    .line 113
    .line 114
    const v7, 0x7f0a0979

    .line 115
    .line 116
    .line 117
    invoke-virtual {p1, v7, v6}, Lcom/join/mgps/base/b;->setGone(IZ)Lcom/join/mgps/base/b;

    .line 118
    .line 119
    .line 120
    iget-boolean v6, p2, Lcom/join/mgps/adapter/ForumCommentAdapter$z$a;->i:Z

    .line 121
    .line 122
    const v7, 0x7f0a06a7

    .line 123
    .line 124
    .line 125
    if-eqz v6, :cond_2

    .line 126
    .line 127
    iget-object v6, p0, Lcom/join/mgps/adapter/ForumCommentAdapter;->j:Landroid/content/Context;

    .line 128
    .line 129
    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 130
    .line 131
    .line 132
    move-result-object v6

    .line 133
    const v8, 0x7f06002b

    .line 134
    .line 135
    .line 136
    invoke-virtual {v6, v8}, Landroid/content/res/Resources;->getColor(I)I

    .line 137
    .line 138
    .line 139
    move-result v6

    .line 140
    invoke-virtual {p1, v4, v6}, Lcom/join/mgps/base/b;->setTextColor(II)Lcom/join/mgps/base/b;

    .line 141
    .line 142
    .line 143
    invoke-virtual {p1, v7, v3}, Lcom/join/mgps/base/b;->setGone(IZ)Lcom/join/mgps/base/b;

    .line 144
    .line 145
    .line 146
    goto :goto_2

    .line 147
    :cond_2
    iget-object v6, p0, Lcom/join/mgps/adapter/ForumCommentAdapter;->j:Landroid/content/Context;

    .line 148
    .line 149
    invoke-virtual {p1, v4}, Lcom/join/mgps/base/b;->getView(I)Landroid/view/View;

    .line 150
    .line 151
    .line 152
    move-result-object v8

    .line 153
    check-cast v8, Landroid/widget/TextView;

    .line 154
    .line 155
    iget v9, p2, Lcom/join/mgps/adapter/ForumCommentAdapter$z$a;->o:I

    .line 156
    .line 157
    iget v10, p2, Lcom/join/mgps/adapter/ForumCommentAdapter$z$a;->p:I

    .line 158
    .line 159
    const v11, 0x7f06014c

    .line 160
    .line 161
    .line 162
    invoke-static {v6, v8, v9, v10, v11}, Lcom/join/mgps/Util/UtilsMy;->R3(Landroid/content/Context;Landroid/widget/TextView;III)Z

    .line 163
    .line 164
    .line 165
    invoke-virtual {p1, v7, v2}, Lcom/join/mgps/base/b;->setGone(IZ)Lcom/join/mgps/base/b;

    .line 166
    .line 167
    .line 168
    :goto_2
    iget-boolean v6, p2, Lcom/join/mgps/adapter/ForumCommentAdapter$z$a;->q:Z

    .line 169
    .line 170
    const v7, 0x7f0a1071

    .line 171
    .line 172
    .line 173
    invoke-virtual {p1, v7, v6}, Lcom/join/mgps/base/b;->setGone(IZ)Lcom/join/mgps/base/b;

    .line 174
    .line 175
    .line 176
    iget-object v6, p2, Lcom/join/mgps/adapter/ForumCommentAdapter$z$a;->r:Ljava/lang/String;

    .line 177
    .line 178
    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 179
    .line 180
    .line 181
    move-result v6

    .line 182
    const v7, 0x7f0a102a

    .line 183
    .line 184
    .line 185
    if-nez v6, :cond_3

    .line 186
    .line 187
    invoke-virtual {p1, v7, v3}, Lcom/join/mgps/base/b;->setGone(IZ)Lcom/join/mgps/base/b;

    .line 188
    .line 189
    .line 190
    iget-object v6, p2, Lcom/join/mgps/adapter/ForumCommentAdapter$z$a;->r:Ljava/lang/String;

    .line 191
    .line 192
    invoke-virtual {p1, v7, v6}, Lcom/join/mgps/base/b;->setText(ILjava/lang/CharSequence;)Lcom/join/mgps/base/b;

    .line 193
    .line 194
    .line 195
    goto :goto_3

    .line 196
    :cond_3
    invoke-virtual {p1, v7, v2}, Lcom/join/mgps/base/b;->setGone(IZ)Lcom/join/mgps/base/b;

    .line 197
    .line 198
    .line 199
    :goto_3
    iget v6, p2, Lcom/join/mgps/adapter/ForumCommentAdapter$z$a;->h:I

    .line 200
    .line 201
    const/4 v7, 0x2

    .line 202
    if-ne v6, v3, :cond_4

    .line 203
    .line 204
    iget-object v6, p0, Lcom/join/mgps/adapter/ForumCommentAdapter;->j:Landroid/content/Context;

    .line 205
    .line 206
    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 207
    .line 208
    .line 209
    move-result-object v6

    .line 210
    const v8, 0x7f1200b6

    .line 211
    .line 212
    .line 213
    invoke-virtual {v6, v8}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    .line 214
    .line 215
    .line 216
    move-result-object v6

    .line 217
    goto :goto_4

    .line 218
    :cond_4
    if-ne v6, v7, :cond_5

    .line 219
    .line 220
    iget-object v6, p0, Lcom/join/mgps/adapter/ForumCommentAdapter;->j:Landroid/content/Context;

    .line 221
    .line 222
    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 223
    .line 224
    .line 225
    move-result-object v6

    .line 226
    const v8, 0x7f1200b7

    .line 227
    .line 228
    .line 229
    invoke-virtual {v6, v8}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    .line 230
    .line 231
    .line 232
    move-result-object v6

    .line 233
    goto :goto_4

    .line 234
    :cond_5
    iget-object v6, p0, Lcom/join/mgps/adapter/ForumCommentAdapter;->j:Landroid/content/Context;

    .line 235
    .line 236
    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 237
    .line 238
    .line 239
    move-result-object v6

    .line 240
    new-array v8, v3, [Ljava/lang/Object;

    .line 241
    .line 242
    iget v9, p2, Lcom/join/mgps/adapter/ForumCommentAdapter$z$a;->h:I

    .line 243
    .line 244
    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 245
    .line 246
    .line 247
    move-result-object v9

    .line 248
    aput-object v9, v8, v2

    .line 249
    .line 250
    const v9, 0x7f1200b5

    .line 251
    .line 252
    .line 253
    invoke-virtual {v6, v9, v8}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    .line 254
    .line 255
    .line 256
    move-result-object v6

    .line 257
    :goto_4
    const v8, 0x7f0a03da

    .line 258
    .line 259
    .line 260
    invoke-virtual {p1, v8, v6}, Lcom/join/mgps/base/b;->setText(ILjava/lang/CharSequence;)Lcom/join/mgps/base/b;

    .line 261
    .line 262
    .line 263
    iget-object v6, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    .line 264
    .line 265
    invoke-virtual {p0, v6}, Lcom/join/mgps/adapter/ForumCommentAdapter;->n0(Landroid/view/View;)V

    .line 266
    .line 267
    .line 268
    const v6, 0x7f0a03ed

    .line 269
    .line 270
    .line 271
    invoke-virtual {p1, v6}, Lcom/join/mgps/base/b;->getView(I)Landroid/view/View;

    .line 272
    .line 273
    .line 274
    move-result-object v6

    .line 275
    invoke-virtual {p0, v6, p2}, Lcom/join/mgps/adapter/ForumCommentAdapter;->m0(Landroid/view/View;Lcom/join/mgps/adapter/ForumCommentAdapter$z$a;)V

    .line 276
    .line 277
    .line 278
    const/4 v6, 0x3

    .line 279
    new-array v6, v6, [Landroid/view/View;

    .line 280
    .line 281
    invoke-virtual {p1, v1}, Lcom/join/mgps/base/b;->getView(I)Landroid/view/View;

    .line 282
    .line 283
    .line 284
    move-result-object v8

    .line 285
    aput-object v8, v6, v2

    .line 286
    .line 287
    invoke-virtual {p1, v4}, Lcom/join/mgps/base/b;->getView(I)Landroid/view/View;

    .line 288
    .line 289
    .line 290
    move-result-object v4

    .line 291
    aput-object v4, v6, v3

    .line 292
    .line 293
    invoke-virtual {p1, v5}, Lcom/join/mgps/base/b;->getView(I)Landroid/view/View;

    .line 294
    .line 295
    .line 296
    move-result-object v4

    .line 297
    aput-object v4, v6, v7

    .line 298
    .line 299
    invoke-static {v6}, Lcom/join/mgps/Util/r0;->S0([Landroid/view/View;)V

    .line 300
    .line 301
    .line 302
    new-array v3, v3, [Landroid/view/View;

    .line 303
    .line 304
    invoke-virtual {p1, v0}, Lcom/join/mgps/base/b;->getView(I)Landroid/view/View;

    .line 305
    .line 306
    .line 307
    move-result-object v0

    .line 308
    aput-object v0, v3, v2

    .line 309
    .line 310
    invoke-static {v3}, Lcom/join/mgps/Util/r0;->U0([Landroid/view/View;)V

    .line 311
    .line 312
    .line 313
    invoke-virtual {p1, v1}, Lcom/join/mgps/base/b;->getView(I)Landroid/view/View;

    .line 314
    .line 315
    .line 316
    move-result-object p1

    .line 317
    iget p2, p2, Lcom/join/mgps/adapter/ForumCommentAdapter$z$a;->b:I

    .line 318
    .line 319
    invoke-direct {p0, p1, p2}, Lcom/join/mgps/adapter/ForumCommentAdapter;->v0(Landroid/view/View;I)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    .line 320
    .line 321
    .line 322
    goto :goto_5

    .line 323
    :catch_1
    move-exception p1

    .line 324
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 325
    .line 326
    .line 327
    :goto_5
    return-void
.end method

.method private H(Lcom/join/mgps/base/b;Lcom/join/mgps/adapter/ForumCommentAdapter$z;)V
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
    invoke-virtual {p2}, Lcom/join/mgps/adapter/ForumCommentAdapter$z;->a()Ljava/lang/Object;

    .line 2
    .line 3
    .line 4
    move-result-object p2

    .line 5
    check-cast p2, Lcom/join/mgps/adapter/ForumCommentAdapter$z$b;

    .line 6
    .line 7
    if-nez p2, :cond_0

    .line 8
    .line 9
    return-void

    .line 10
    :cond_0
    const v0, 0x7f0a03e0

    .line 11
    .line 12
    .line 13
    invoke-virtual {p1, v0}, Lcom/join/mgps/base/b;->getView(I)Landroid/view/View;

    .line 14
    .line 15
    .line 16
    move-result-object v1

    .line 17
    if-eqz v1, :cond_2

    .line 18
    .line 19
    invoke-virtual {p1, v0}, Lcom/join/mgps/base/b;->getView(I)Landroid/view/View;

    .line 20
    .line 21
    .line 22
    move-result-object p1

    .line 23
    check-cast p1, Lcom/facebook/drawee/view/SimpleDraweeView;

    .line 24
    .line 25
    iget-object v0, p0, Lcom/join/mgps/adapter/ForumCommentAdapter;->j:Landroid/content/Context;

    .line 26
    .line 27
    iget-object v1, p2, Lcom/join/mgps/adapter/ForumCommentAdapter$z$b;->c:Ljava/util/List;

    .line 28
    .line 29
    iget v2, p2, Lcom/join/mgps/adapter/ForumCommentAdapter$z$b;->b:I

    .line 30
    .line 31
    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 32
    .line 33
    .line 34
    move-result-object v1

    .line 35
    check-cast v1, Ljava/lang/String;

    .line 36
    .line 37
    invoke-direct {p0, v0, v1}, Lcom/join/mgps/adapter/ForumCommentAdapter;->e0(Landroid/content/Context;Ljava/lang/String;)V

    .line 38
    .line 39
    .line 40
    iget-object v0, p2, Lcom/join/mgps/adapter/ForumCommentAdapter$z$b;->a:Ljava/lang/String;

    .line 41
    .line 42
    invoke-virtual {p0, v0}, Lcom/join/mgps/adapter/ForumCommentAdapter;->T(Ljava/lang/String;)Lcom/join/mgps/adapter/ForumCommentAdapter$y;

    .line 43
    .line 44
    .line 45
    move-result-object v0

    .line 46
    if-eqz v0, :cond_1

    .line 47
    .line 48
    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    .line 49
    .line 50
    iget v2, v0, Lcom/join/mgps/adapter/ForumCommentAdapter$y;->a:I

    .line 51
    .line 52
    iget v0, v0, Lcom/join/mgps/adapter/ForumCommentAdapter$y;->b:I

    .line 53
    .line 54
    invoke-direct {v1, v2, v0}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 55
    .line 56
    .line 57
    const/4 v0, 0x4

    .line 58
    int-to-float v0, v0

    .line 59
    iget-object v2, p0, Lcom/join/mgps/adapter/ForumCommentAdapter;->j:Landroid/content/Context;

    .line 60
    .line 61
    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 62
    .line 63
    .line 64
    move-result-object v2

    .line 65
    invoke-virtual {v2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    .line 66
    .line 67
    .line 68
    move-result-object v2

    .line 69
    iget v2, v2, Landroid/util/DisplayMetrics;->density:F

    .line 70
    .line 71
    mul-float v0, v0, v2

    .line 72
    .line 73
    float-to-int v0, v0

    .line 74
    const/4 v2, 0x0

    .line 75
    invoke-virtual {v1, v2, v0, v2, v0}, Landroid/view/ViewGroup$MarginLayoutParams;->setMargins(IIII)V

    .line 76
    .line 77
    .line 78
    invoke-virtual {p1, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 79
    .line 80
    .line 81
    iget-object v0, p2, Lcom/join/mgps/adapter/ForumCommentAdapter$z$b;->a:Ljava/lang/String;

    .line 82
    .line 83
    invoke-static {p1, v0}, Lcom/join/android/app/common/utils/l;->h(Lcom/facebook/drawee/view/SimpleDraweeView;Ljava/lang/String;)V

    .line 84
    .line 85
    .line 86
    goto :goto_0

    .line 87
    :cond_1
    iget-object v0, p2, Lcom/join/mgps/adapter/ForumCommentAdapter$z$b;->a:Ljava/lang/String;

    .line 88
    .line 89
    invoke-virtual {p0, p1, v0}, Lcom/join/mgps/adapter/ForumCommentAdapter;->a0(Lcom/facebook/drawee/view/SimpleDraweeView;Ljava/lang/String;)V

    .line 90
    .line 91
    .line 92
    :goto_0
    iget v0, p2, Lcom/join/mgps/adapter/ForumCommentAdapter$z$b;->b:I

    .line 93
    .line 94
    iget-object p2, p2, Lcom/join/mgps/adapter/ForumCommentAdapter$z$b;->c:Ljava/util/List;

    .line 95
    .line 96
    invoke-static {p1, v0, p2}, Lcom/join/mgps/Util/r0;->C1(Landroid/widget/ImageView;ILjava/util/List;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 97
    .line 98
    .line 99
    goto :goto_1

    .line 100
    :catch_0
    move-exception p1

    .line 101
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 102
    .line 103
    .line 104
    :cond_2
    :goto_1
    return-void
.end method

.method private I(Lcom/join/mgps/base/b;Lcom/join/mgps/adapter/ForumCommentAdapter$z;)V
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
    invoke-virtual {p2}, Lcom/join/mgps/adapter/ForumCommentAdapter$z;->a()Ljava/lang/Object;

    .line 2
    .line 3
    .line 4
    move-result-object p2

    .line 5
    check-cast p2, Lcom/join/mgps/adapter/ForumCommentAdapter$z$d;

    .line 6
    .line 7
    if-eqz p2, :cond_3

    .line 8
    .line 9
    iget-object v0, p2, Lcom/join/mgps/adapter/ForumCommentAdapter$z$d;->b:Lcom/join/mgps/dto/ForumBean$ForumCommentBean;

    .line 10
    .line 11
    if-nez v0, :cond_0

    .line 12
    .line 13
    goto :goto_1

    .line 14
    :cond_0
    iget-boolean v0, p2, Lcom/join/mgps/adapter/ForumCommentAdapter$z$d;->d:Z

    .line 15
    .line 16
    const v1, 0x7f0a03f0

    .line 17
    .line 18
    .line 19
    invoke-virtual {p1, v1, v0}, Lcom/join/mgps/base/b;->setGone(IZ)Lcom/join/mgps/base/b;

    .line 20
    .line 21
    .line 22
    iget-boolean v0, p2, Lcom/join/mgps/adapter/ForumCommentAdapter$z$d;->h:Z

    .line 23
    .line 24
    const v1, 0x7f0a0215

    .line 25
    .line 26
    .line 27
    const v2, 0x7f0a0e61

    .line 28
    .line 29
    .line 30
    const/4 v3, 0x1

    .line 31
    if-nez v0, :cond_1

    .line 32
    .line 33
    invoke-virtual {p1, v2, v3}, Lcom/join/mgps/base/b;->setGone(IZ)Lcom/join/mgps/base/b;

    .line 34
    .line 35
    .line 36
    invoke-virtual {p1, v1, v3}, Lcom/join/mgps/base/b;->setGone(IZ)Lcom/join/mgps/base/b;

    .line 37
    .line 38
    .line 39
    goto :goto_0

    .line 40
    :cond_1
    const/4 v0, 0x0

    .line 41
    invoke-virtual {p1, v2, v0}, Lcom/join/mgps/base/b;->setGone(IZ)Lcom/join/mgps/base/b;

    .line 42
    .line 43
    .line 44
    invoke-virtual {p1, v1, v0}, Lcom/join/mgps/base/b;->setGone(IZ)Lcom/join/mgps/base/b;

    .line 45
    .line 46
    .line 47
    :goto_0
    iget-object v0, p2, Lcom/join/mgps/adapter/ForumCommentAdapter$z$d;->b:Lcom/join/mgps/dto/ForumBean$ForumCommentBean;

    .line 48
    .line 49
    invoke-virtual {v0}, Lcom/join/mgps/dto/ForumBean$ForumCommentBean;->getReply_list()Ljava/util/List;

    .line 50
    .line 51
    .line 52
    move-result-object v0

    .line 53
    const v1, 0x7f0a03ee

    .line 54
    .line 55
    .line 56
    if-eqz v0, :cond_2

    .line 57
    .line 58
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 59
    .line 60
    .line 61
    move-result v0

    .line 62
    if-eqz v0, :cond_2

    .line 63
    .line 64
    invoke-virtual {p1, v1}, Lcom/join/mgps/base/b;->getView(I)Landroid/view/View;

    .line 65
    .line 66
    .line 67
    move-result-object v0

    .line 68
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->getLayoutPosition()I

    .line 69
    .line 70
    .line 71
    move-result p1

    .line 72
    invoke-direct {p0, v0, p2, v3, p1}, Lcom/join/mgps/adapter/ForumCommentAdapter;->f0(Landroid/view/View;Lcom/join/mgps/adapter/ForumCommentAdapter$z$d;ZI)V

    .line 73
    .line 74
    .line 75
    goto :goto_2

    .line 76
    :cond_2
    invoke-virtual {p1, v1}, Lcom/join/mgps/base/b;->getView(I)Landroid/view/View;

    .line 77
    .line 78
    .line 79
    move-result-object p1

    .line 80
    check-cast p1, Landroid/widget/LinearLayout;

    .line 81
    .line 82
    invoke-virtual {p1}, Landroid/view/ViewGroup;->removeAllViews()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 83
    .line 84
    .line 85
    goto :goto_2

    .line 86
    :cond_3
    :goto_1
    return-void

    .line 87
    :catch_0
    move-exception p1

    .line 88
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 89
    .line 90
    .line 91
    :goto_2
    return-void
.end method

.method private J(Lcom/join/mgps/base/b;Lcom/join/mgps/adapter/ForumCommentAdapter$z;)V
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
    invoke-virtual {p2}, Lcom/join/mgps/adapter/ForumCommentAdapter$z;->a()Ljava/lang/Object;

    .line 2
    .line 3
    .line 4
    move-result-object p2

    .line 5
    check-cast p2, Lcom/join/mgps/adapter/ForumCommentAdapter$z$c;

    .line 6
    .line 7
    if-nez p2, :cond_0

    .line 8
    .line 9
    return-void

    .line 10
    :cond_0
    iget-object v0, p2, Lcom/join/mgps/adapter/ForumCommentAdapter$z$c;->b:Ljava/lang/String;

    .line 11
    .line 12
    const v1, 0x7f0a03ea

    .line 13
    .line 14
    .line 15
    invoke-virtual {p1, v1, v0}, Lcom/join/mgps/base/b;->setText(ILjava/lang/CharSequence;)Lcom/join/mgps/base/b;

    .line 16
    .line 17
    .line 18
    invoke-virtual {p1, v1}, Lcom/join/mgps/base/b;->getView(I)Landroid/view/View;

    .line 19
    .line 20
    .line 21
    move-result-object v0

    .line 22
    check-cast v0, Landroid/widget/TextView;

    .line 23
    .line 24
    invoke-direct {p0, v0}, Lcom/join/mgps/adapter/ForumCommentAdapter;->Z(Landroid/widget/TextView;)V

    .line 25
    .line 26
    .line 27
    iget-object v0, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    .line 28
    .line 29
    invoke-virtual {p0, v0}, Lcom/join/mgps/adapter/ForumCommentAdapter;->n0(Landroid/view/View;)V

    .line 30
    .line 31
    .line 32
    invoke-virtual {p1, v1}, Lcom/join/mgps/base/b;->getView(I)Landroid/view/View;

    .line 33
    .line 34
    .line 35
    move-result-object p1

    .line 36
    invoke-virtual {p0, p1, p2}, Lcom/join/mgps/adapter/ForumCommentAdapter;->l0(Landroid/view/View;Lcom/join/mgps/adapter/ForumCommentAdapter$z$c;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 37
    .line 38
    .line 39
    goto :goto_0

    .line 40
    :catch_0
    move-exception p1

    .line 41
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 42
    .line 43
    .line 44
    :goto_0
    return-void
.end method

.method private K(Lcom/join/mgps/base/b;Lcom/join/mgps/adapter/ForumCommentAdapter$z;)V
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
    if-nez p2, :cond_0

    .line 2
    .line 3
    return-void

    .line 4
    :cond_0
    :try_start_0
    invoke-virtual {p2}, Lcom/join/mgps/adapter/ForumCommentAdapter$z;->a()Ljava/lang/Object;

    .line 5
    .line 6
    .line 7
    move-result-object p2

    .line 8
    check-cast p2, Lcom/join/mgps/adapter/ForumCommentAdapter$z$f;

    .line 9
    .line 10
    iget v0, p2, Lcom/join/mgps/adapter/ForumCommentAdapter$z$f;->b:I

    .line 11
    .line 12
    const v1, 0x7f0a1b4f

    .line 13
    .line 14
    .line 15
    invoke-virtual {p1, v1, v0}, Lcom/join/mgps/base/b;->setBackgroundColor(II)Lcom/join/mgps/base/b;

    .line 16
    .line 17
    .line 18
    invoke-virtual {p1, v1}, Lcom/join/mgps/base/b;->getView(I)Landroid/view/View;

    .line 19
    .line 20
    .line 21
    move-result-object p1

    .line 22
    new-instance v0, Landroid/view/ViewGroup$LayoutParams;

    .line 23
    .line 24
    iget p2, p2, Lcom/join/mgps/adapter/ForumCommentAdapter$z$f;->a:I

    .line 25
    .line 26
    const/4 v1, -0x1

    .line 27
    invoke-direct {v0, v1, p2}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    .line 28
    .line 29
    .line 30
    invoke-virtual {p1, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 31
    .line 32
    .line 33
    goto :goto_0

    .line 34
    :catch_0
    move-exception p1

    .line 35
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 36
    .line 37
    .line 38
    :goto_0
    return-void
.end method

.method private L(Lcom/join/mgps/base/b;Lcom/join/mgps/adapter/ForumCommentAdapter$z;)V
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
    invoke-virtual {p2}, Lcom/join/mgps/adapter/ForumCommentAdapter$z;->a()Ljava/lang/Object;

    .line 2
    .line 3
    .line 4
    move-result-object p2

    .line 5
    check-cast p2, Lcom/join/mgps/adapter/ForumCommentAdapter$z$g;

    .line 6
    .line 7
    if-nez p2, :cond_0

    .line 8
    .line 9
    return-void

    .line 10
    :cond_0
    iget-object v0, p0, Lcom/join/mgps/adapter/ForumCommentAdapter;->k:Lcom/join/mgps/adapter/ForumCommentAdapter$x;

    .line 11
    .line 12
    if-nez v0, :cond_1

    .line 13
    .line 14
    new-instance v0, Lcom/join/mgps/adapter/ForumCommentAdapter$x;

    .line 15
    .line 16
    iget-object v1, p0, Lcom/join/mgps/adapter/ForumCommentAdapter;->j:Landroid/content/Context;

    .line 17
    .line 18
    invoke-direct {v0, v1}, Lcom/join/mgps/adapter/ForumCommentAdapter$x;-><init>(Landroid/content/Context;)V

    .line 19
    .line 20
    .line 21
    iput-object v0, p0, Lcom/join/mgps/adapter/ForumCommentAdapter;->k:Lcom/join/mgps/adapter/ForumCommentAdapter$x;

    .line 22
    .line 23
    :cond_1
    iget-object v0, p0, Lcom/join/mgps/adapter/ForumCommentAdapter;->k:Lcom/join/mgps/adapter/ForumCommentAdapter$x;

    .line 24
    .line 25
    iget v1, p2, Lcom/join/mgps/adapter/ForumCommentAdapter$z$g;->b:I

    .line 26
    .line 27
    invoke-virtual {v0, v1}, Lcom/join/mgps/adapter/ForumCommentAdapter$x;->d(I)V

    .line 28
    .line 29
    .line 30
    iget-object v0, p0, Lcom/join/mgps/adapter/ForumCommentAdapter;->k:Lcom/join/mgps/adapter/ForumCommentAdapter$x;

    .line 31
    .line 32
    iget-object v1, p2, Lcom/join/mgps/adapter/ForumCommentAdapter$z$g;->c:Ljava/lang/String;

    .line 33
    .line 34
    invoke-virtual {v0, v1}, Lcom/join/mgps/adapter/ForumCommentAdapter$x;->e(Ljava/lang/String;)V

    .line 35
    .line 36
    .line 37
    iget-object v0, p0, Lcom/join/mgps/adapter/ForumCommentAdapter;->k:Lcom/join/mgps/adapter/ForumCommentAdapter$x;

    .line 38
    .line 39
    invoke-virtual {v0}, Lcom/join/mgps/adapter/ForumCommentAdapter$x;->c()Ljava/util/List;

    .line 40
    .line 41
    .line 42
    move-result-object v0

    .line 43
    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 44
    .line 45
    .line 46
    iget-object v0, p0, Lcom/join/mgps/adapter/ForumCommentAdapter;->k:Lcom/join/mgps/adapter/ForumCommentAdapter$x;

    .line 47
    .line 48
    invoke-virtual {v0}, Lcom/join/mgps/adapter/ForumCommentAdapter$x;->c()Ljava/util/List;

    .line 49
    .line 50
    .line 51
    move-result-object v0

    .line 52
    iget-object p2, p2, Lcom/join/mgps/adapter/ForumCommentAdapter$z$g;->a:Ljava/util/List;

    .line 53
    .line 54
    invoke-interface {v0, p2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 55
    .line 56
    .line 57
    const p2, 0x7f0a0e84

    .line 58
    .line 59
    .line 60
    invoke-virtual {p1, p2}, Lcom/join/mgps/base/b;->getView(I)Landroid/view/View;

    .line 61
    .line 62
    .line 63
    move-result-object p1

    .line 64
    check-cast p1, Lit/sephiroth/android/library/widget/HListView;

    .line 65
    .line 66
    iget-object p2, p0, Lcom/join/mgps/adapter/ForumCommentAdapter;->k:Lcom/join/mgps/adapter/ForumCommentAdapter$x;

    .line 67
    .line 68
    invoke-virtual {p1, p2}, Lit/sephiroth/android/library/widget/HListView;->setAdapter(Landroid/widget/ListAdapter;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 69
    .line 70
    .line 71
    goto :goto_0

    .line 72
    :catch_0
    move-exception p1

    .line 73
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 74
    .line 75
    .line 76
    :goto_0
    return-void
.end method

.method private M(Landroid/widget/PopupWindow;Landroid/view/MotionEvent;)Z
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "w",
            "ev"
        }
    .end annotation

    .line 1
    const/4 v0, 0x0

    .line 2
    if-eqz p1, :cond_2

    .line 3
    .line 4
    if-nez p2, :cond_0

    .line 5
    .line 6
    goto :goto_0

    .line 7
    :cond_0
    invoke-virtual {p1}, Landroid/widget/PopupWindow;->getContentView()Landroid/view/View;

    .line 8
    .line 9
    .line 10
    move-result-object p1

    .line 11
    if-nez p1, :cond_1

    .line 12
    .line 13
    return v0

    .line 14
    :cond_1
    invoke-direct {p0, p1, p2}, Lcom/join/mgps/adapter/ForumCommentAdapter;->N(Landroid/view/View;Landroid/view/MotionEvent;)Z

    .line 15
    .line 16
    .line 17
    move-result p1

    .line 18
    xor-int/lit8 p1, p1, 0x1

    .line 19
    .line 20
    return p1

    .line 21
    :cond_2
    :goto_0
    return v0
.end method

.method private N(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 6
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "v",
            "ev"
        }
    .end annotation

    .line 1
    const/4 v0, 0x0

    .line 2
    if-nez p1, :cond_0

    .line 3
    .line 4
    return v0

    .line 5
    :cond_0
    const/4 v1, 0x2

    .line 6
    new-array v1, v1, [I

    .line 7
    .line 8
    invoke-virtual {p1, v1}, Landroid/view/View;->getLocationOnScreen([I)V

    .line 9
    .line 10
    .line 11
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawX()F

    .line 12
    .line 13
    .line 14
    move-result v2

    .line 15
    float-to-int v2, v2

    .line 16
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawY()F

    .line 17
    .line 18
    .line 19
    move-result p2

    .line 20
    float-to-int p2, p2

    .line 21
    aget v3, v1, v0

    .line 22
    .line 23
    if-ge v3, v2, :cond_1

    .line 24
    .line 25
    const/4 v4, 0x1

    .line 26
    aget v5, v1, v4

    .line 27
    .line 28
    if-ge v5, p2, :cond_1

    .line 29
    .line 30
    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    .line 31
    .line 32
    .line 33
    move-result v5

    .line 34
    add-int/2addr v3, v5

    .line 35
    if-ge v2, v3, :cond_1

    .line 36
    .line 37
    aget v1, v1, v4

    .line 38
    .line 39
    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    .line 40
    .line 41
    .line 42
    move-result p1

    .line 43
    add-int/2addr v1, p1

    .line 44
    if-ge p2, v1, :cond_1

    .line 45
    .line 46
    const/4 v0, 0x1

    .line 47
    :cond_1
    return v0
.end method

.method private R(Landroid/content/Context;)Landroid/widget/LinearLayout$LayoutParams;
    .locals 3
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
    return-object p1

    .line 5
    :cond_0
    iget-object v0, p0, Lcom/join/mgps/adapter/ForumCommentAdapter;->o:Landroid/widget/LinearLayout$LayoutParams;

    .line 6
    .line 7
    if-nez v0, :cond_1

    .line 8
    .line 9
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    .line 14
    .line 15
    .line 16
    move-result-object v1

    .line 17
    iget v1, v1, Landroid/util/DisplayMetrics;->widthPixels:I

    .line 18
    .line 19
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 20
    .line 21
    .line 22
    move-result-object p1

    .line 23
    invoke-virtual {p1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    .line 24
    .line 25
    .line 26
    move-result-object p1

    .line 27
    iget p1, p1, Landroid/util/DisplayMetrics;->density:F

    .line 28
    .line 29
    const v2, 0x7f070ed4

    .line 30
    .line 31
    .line 32
    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    .line 33
    .line 34
    .line 35
    move-result v0

    .line 36
    sub-int/2addr v1, v0

    .line 37
    int-to-float v0, v1

    .line 38
    const/16 v1, 0x1e

    .line 39
    .line 40
    int-to-float v1, v1

    .line 41
    mul-float v1, v1, p1

    .line 42
    .line 43
    sub-float/2addr v0, v1

    .line 44
    float-to-int v0, v0

    .line 45
    const/high16 v1, 0x3f800000    # 1.0f

    .line 46
    .line 47
    int-to-float v2, v0

    .line 48
    mul-float v2, v2, v1

    .line 49
    .line 50
    const/high16 v1, 0x3fc00000    # 1.5f

    .line 51
    .line 52
    div-float/2addr v2, v1

    .line 53
    float-to-int v1, v2

    .line 54
    const/4 v2, 0x4

    .line 55
    int-to-float v2, v2

    .line 56
    mul-float v2, v2, p1

    .line 57
    .line 58
    float-to-int p1, v2

    .line 59
    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    .line 60
    .line 61
    invoke-direct {v2, v0, v1}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 62
    .line 63
    .line 64
    const/4 v0, 0x0

    .line 65
    invoke-virtual {v2, v0, p1, v0, p1}, Landroid/view/ViewGroup$MarginLayoutParams;->setMargins(IIII)V

    .line 66
    .line 67
    .line 68
    iput-object v2, p0, Lcom/join/mgps/adapter/ForumCommentAdapter;->o:Landroid/widget/LinearLayout$LayoutParams;

    .line 69
    .line 70
    :cond_1
    iget-object p1, p0, Lcom/join/mgps/adapter/ForumCommentAdapter;->o:Landroid/widget/LinearLayout$LayoutParams;

    .line 71
    .line 72
    return-object p1
.end method

.method private U(Landroid/content/Context;)I
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
    iget v0, p0, Lcom/join/mgps/adapter/ForumCommentAdapter;->n:I

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
    iput p1, p0, Lcom/join/mgps/adapter/ForumCommentAdapter;->n:I

    .line 39
    .line 40
    :cond_1
    iget p1, p0, Lcom/join/mgps/adapter/ForumCommentAdapter;->n:I

    .line 41
    .line 42
    return p1
.end method

.method private V(Landroid/content/Context;)I
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
    iget v0, p0, Lcom/join/mgps/adapter/ForumCommentAdapter;->m:I

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
    iput p1, p0, Lcom/join/mgps/adapter/ForumCommentAdapter;->m:I

    .line 40
    .line 41
    :cond_1
    iget p1, p0, Lcom/join/mgps/adapter/ForumCommentAdapter;->m:I

    .line 42
    .line 43
    return p1
.end method

.method private Y()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/adapter/ForumCommentAdapter;->l:Landroid/widget/LinearLayout$LayoutParams;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {p0}, Lcom/join/mgps/adapter/ForumCommentAdapter;->X()Landroid/widget/LinearLayout$LayoutParams;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    iput-object v0, p0, Lcom/join/mgps/adapter/ForumCommentAdapter;->l:Landroid/widget/LinearLayout$LayoutParams;

    .line 10
    .line 11
    :cond_0
    return-void
.end method

.method private Z(Landroid/widget/TextView;)V
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
    new-instance v7, Lcom/join/mgps/adapter/ForumCommentAdapter$u;

    .line 70
    .line 71
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 72
    .line 73
    .line 74
    move-result-object v8

    .line 75
    invoke-direct {v7, p0, v8, v6}, Lcom/join/mgps/adapter/ForumCommentAdapter$u;-><init>(Lcom/join/mgps/adapter/ForumCommentAdapter;Landroid/content/Context;Ljava/lang/String;)V

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

.method private c0(Landroid/view/View;ZI)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "parent",
            "like",
            "count"
        }
    .end annotation

    .line 1
    const v0, 0x7f0a06aa

    .line 2
    .line 3
    .line 4
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 5
    .line 6
    .line 7
    move-result-object v0

    .line 8
    check-cast v0, Landroid/widget/TextView;

    .line 9
    .line 10
    const v1, 0x7f0a06ab

    .line 11
    .line 12
    .line 13
    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 14
    .line 15
    .line 16
    move-result-object p1

    .line 17
    check-cast p1, Landroid/widget/ImageView;

    .line 18
    .line 19
    const-string v1, ""

    .line 20
    .line 21
    if-eqz p2, :cond_0

    .line 22
    .line 23
    const p2, 0x7f080c51

    .line 24
    .line 25
    .line 26
    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 27
    .line 28
    .line 29
    new-instance p1, Ljava/lang/StringBuilder;

    .line 30
    .line 31
    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    .line 32
    .line 33
    .line 34
    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 35
    .line 36
    .line 37
    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 38
    .line 39
    .line 40
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 41
    .line 42
    .line 43
    move-result-object p1

    .line 44
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 45
    .line 46
    .line 47
    goto :goto_0

    .line 48
    :cond_0
    const p2, 0x7f081320

    .line 49
    .line 50
    .line 51
    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 52
    .line 53
    .line 54
    new-instance p1, Ljava/lang/StringBuilder;

    .line 55
    .line 56
    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    .line 57
    .line 58
    .line 59
    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 60
    .line 61
    .line 62
    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 63
    .line 64
    .line 65
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 66
    .line 67
    .line 68
    move-result-object p1

    .line 69
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 70
    .line 71
    .line 72
    :goto_0
    return-void
.end method

.method private e0(Landroid/content/Context;Ljava/lang/String;)V
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
    new-instance v1, Lcom/join/mgps/adapter/ForumCommentAdapter$y;

    .line 8
    .line 9
    invoke-direct {v1, p0}, Lcom/join/mgps/adapter/ForumCommentAdapter$y;-><init>(Lcom/join/mgps/adapter/ForumCommentAdapter;)V

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
    move-result v4

    .line 43
    mul-int/lit8 v4, v4, 0x2

    .line 44
    .line 45
    sub-int/2addr v3, v4

    .line 46
    int-to-float v3, v3

    .line 47
    invoke-virtual {p1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    .line 48
    .line 49
    .line 50
    move-result-object p1

    .line 51
    iget p1, p1, Landroid/util/DisplayMetrics;->density:F

    .line 52
    .line 53
    const/high16 v4, 0x42200000    # 40.0f

    .line 54
    .line 55
    mul-float p1, p1, v4

    .line 56
    .line 57
    sub-float/2addr v3, p1

    .line 58
    float-to-int p1, v3

    .line 59
    int-to-float v3, p1

    .line 60
    const/high16 v4, 0x3f800000    # 1.0f

    .line 61
    .line 62
    mul-float v3, v3, v4

    .line 63
    .line 64
    int-to-float v0, v0

    .line 65
    mul-float v0, v0, v4

    .line 66
    .line 67
    int-to-float v2, v2

    .line 68
    div-float/2addr v0, v2

    .line 69
    mul-float v3, v3, v0

    .line 70
    .line 71
    float-to-int v0, v3

    .line 72
    iput p1, v1, Lcom/join/mgps/adapter/ForumCommentAdapter$y;->a:I

    .line 73
    .line 74
    iput v0, v1, Lcom/join/mgps/adapter/ForumCommentAdapter$y;->b:I

    .line 75
    .line 76
    invoke-virtual {p0, p2, v1}, Lcom/join/mgps/adapter/ForumCommentAdapter;->F(Ljava/lang/String;Lcom/join/mgps/adapter/ForumCommentAdapter$y;)V

    .line 77
    .line 78
    .line 79
    :cond_0
    return-void
.end method

.method private f0(Landroid/view/View;Lcom/join/mgps/adapter/ForumCommentAdapter$z$d;ZI)V
    .locals 20
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10,
            0x0,
            0x10
        }
        names = {
            "parent",
            "commentMessageReply",
            "hideMore",
            "position"
        }
    .end annotation

    .line 1
    move-object/from16 v8, p0

    .line 2
    .line 3
    move-object/from16 v9, p2

    .line 4
    .line 5
    iget v10, v9, Lcom/join/mgps/adapter/ForumCommentAdapter$z$d;->a:I

    .line 6
    .line 7
    iget v11, v9, Lcom/join/mgps/adapter/ForumCommentAdapter$z$d;->f:I

    .line 8
    .line 9
    iget-boolean v12, v9, Lcom/join/mgps/adapter/ForumCommentAdapter$z$d;->g:Z

    .line 10
    .line 11
    iget-object v13, v9, Lcom/join/mgps/adapter/ForumCommentAdapter$z$d;->b:Lcom/join/mgps/dto/ForumBean$ForumCommentBean;

    .line 12
    .line 13
    invoke-virtual {v13}, Lcom/join/mgps/dto/ForumBean$ForumCommentBean;->getReply_list()Ljava/util/List;

    .line 14
    .line 15
    .line 16
    move-result-object v14

    .line 17
    move-object/from16 v15, p1

    .line 18
    .line 19
    check-cast v15, Landroid/widget/LinearLayout;

    .line 20
    .line 21
    invoke-virtual {v15}, Landroid/view/ViewGroup;->removeAllViews()V

    .line 22
    .line 23
    .line 24
    invoke-interface {v14}, Ljava/util/List;->size()I

    .line 25
    .line 26
    .line 27
    move-result v7

    .line 28
    const/4 v6, 0x0

    .line 29
    const/4 v5, 0x0

    .line 30
    :goto_0
    add-int/lit8 v0, v7, 0x1

    .line 31
    .line 32
    if-ge v5, v0, :cond_e

    .line 33
    .line 34
    const/4 v0, 0x3

    .line 35
    if-le v5, v0, :cond_0

    .line 36
    .line 37
    if-eqz p3, :cond_0

    .line 38
    .line 39
    move/from16 v16, v11

    .line 40
    .line 41
    move/from16 v17, v12

    .line 42
    .line 43
    move-object/from16 v18, v13

    .line 44
    .line 45
    move-object v0, v15

    .line 46
    move v12, v5

    .line 47
    :goto_1
    move v13, v7

    .line 48
    goto/16 :goto_8

    .line 49
    .line 50
    :cond_0
    iget-object v1, v8, Lcom/join/mgps/adapter/ForumCommentAdapter;->j:Landroid/content/Context;

    .line 51
    .line 52
    invoke-static {v1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    .line 53
    .line 54
    .line 55
    move-result-object v1

    .line 56
    const v2, 0x7f0d016e

    .line 57
    .line 58
    .line 59
    const/4 v3, 0x0

    .line 60
    invoke-virtual {v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 61
    .line 62
    .line 63
    move-result-object v4

    .line 64
    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    .line 65
    .line 66
    const/4 v2, -0x1

    .line 67
    const/4 v3, -0x2

    .line 68
    invoke-direct {v1, v2, v3}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 69
    .line 70
    .line 71
    invoke-virtual {v4, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 72
    .line 73
    .line 74
    const v1, 0x7f0a03ef

    .line 75
    .line 76
    .line 77
    invoke-virtual {v4, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 78
    .line 79
    .line 80
    move-result-object v1

    .line 81
    check-cast v1, Lcom/join/mgps/customview/TextViewWithHyperlink;

    .line 82
    .line 83
    const v2, 0x7f0a03f1

    .line 84
    .line 85
    .line 86
    invoke-virtual {v4, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 87
    .line 88
    .line 89
    move-result-object v2

    .line 90
    check-cast v2, Landroid/widget/TextView;

    .line 91
    .line 92
    const/16 v3, 0x8

    .line 93
    .line 94
    if-ne v5, v7, :cond_1

    .line 95
    .line 96
    if-gt v7, v0, :cond_2

    .line 97
    .line 98
    :cond_1
    if-lez v11, :cond_3

    .line 99
    .line 100
    if-eqz v12, :cond_3

    .line 101
    .line 102
    if-ne v5, v7, :cond_3

    .line 103
    .line 104
    :cond_2
    invoke-virtual {v1, v3}, Landroid/view/View;->setVisibility(I)V

    .line 105
    .line 106
    .line 107
    invoke-virtual {v2, v6}, Landroid/view/View;->setVisibility(I)V

    .line 108
    .line 109
    .line 110
    const-string v0, "\u6536\u8d77"

    .line 111
    .line 112
    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 113
    .line 114
    .line 115
    new-instance v3, Lcom/join/mgps/adapter/ForumCommentAdapter$l;

    .line 116
    .line 117
    move-object v0, v3

    .line 118
    move-object/from16 v1, p0

    .line 119
    .line 120
    move v2, v11

    .line 121
    move-object v6, v3

    .line 122
    move/from16 v3, p4

    .line 123
    .line 124
    move/from16 v16, v11

    .line 125
    .line 126
    move-object v11, v4

    .line 127
    move v4, v10

    .line 128
    move/from16 v17, v12

    .line 129
    .line 130
    move v12, v5

    .line 131
    move-object/from16 v5, p2

    .line 132
    .line 133
    invoke-direct/range {v0 .. v5}, Lcom/join/mgps/adapter/ForumCommentAdapter$l;-><init>(Lcom/join/mgps/adapter/ForumCommentAdapter;IIILcom/join/mgps/adapter/ForumCommentAdapter$z$d;)V

    .line 134
    .line 135
    .line 136
    invoke-virtual {v11, v6}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 137
    .line 138
    .line 139
    move-object/from16 v18, v13

    .line 140
    .line 141
    move-object v0, v15

    .line 142
    :goto_2
    move v13, v7

    .line 143
    goto/16 :goto_6

    .line 144
    .line 145
    :cond_3
    move/from16 v16, v11

    .line 146
    .line 147
    move/from16 v17, v12

    .line 148
    .line 149
    move-object v11, v4

    .line 150
    move v12, v5

    .line 151
    const/4 v4, 0x1

    .line 152
    if-ne v12, v0, :cond_4

    .line 153
    .line 154
    if-eqz p3, :cond_4

    .line 155
    .line 156
    if-le v7, v0, :cond_4

    .line 157
    .line 158
    invoke-virtual {v1, v3}, Landroid/view/View;->setVisibility(I)V

    .line 159
    .line 160
    .line 161
    const/4 v6, 0x0

    .line 162
    invoke-virtual {v2, v6}, Landroid/view/View;->setVisibility(I)V

    .line 163
    .line 164
    .line 165
    invoke-virtual {v2}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    .line 166
    .line 167
    .line 168
    move-result-object v0

    .line 169
    new-array v1, v4, [Ljava/lang/Object;

    .line 170
    .line 171
    add-int/lit8 v3, v7, -0x3

    .line 172
    .line 173
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 174
    .line 175
    .line 176
    move-result-object v3

    .line 177
    aput-object v3, v1, v6

    .line 178
    .line 179
    const v3, 0x7f1200b4

    .line 180
    .line 181
    .line 182
    invoke-virtual {v0, v3, v1}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    .line 183
    .line 184
    .line 185
    move-result-object v0

    .line 186
    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 187
    .line 188
    .line 189
    new-instance v5, Lcom/join/mgps/adapter/ForumCommentAdapter$m;

    .line 190
    .line 191
    move-object v0, v5

    .line 192
    move-object/from16 v1, p0

    .line 193
    .line 194
    move v2, v7

    .line 195
    move-object v3, v13

    .line 196
    move v4, v10

    .line 197
    move-object/from16 v18, v13

    .line 198
    .line 199
    move-object v13, v5

    .line 200
    move-object/from16 v5, p2

    .line 201
    .line 202
    move-object/from16 p1, v15

    .line 203
    .line 204
    const/4 v15, 0x0

    .line 205
    move/from16 v6, p4

    .line 206
    .line 207
    invoke-direct/range {v0 .. v6}, Lcom/join/mgps/adapter/ForumCommentAdapter$m;-><init>(Lcom/join/mgps/adapter/ForumCommentAdapter;ILcom/join/mgps/dto/ForumBean$ForumCommentBean;ILcom/join/mgps/adapter/ForumCommentAdapter$z$d;I)V

    .line 208
    .line 209
    .line 210
    invoke-virtual {v11, v13}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 211
    .line 212
    .line 213
    move-object/from16 v0, p1

    .line 214
    .line 215
    goto :goto_2

    .line 216
    :cond_4
    move-object/from16 v18, v13

    .line 217
    .line 218
    move-object/from16 p1, v15

    .line 219
    .line 220
    const/4 v15, 0x0

    .line 221
    if-ge v12, v7, :cond_d

    .line 222
    .line 223
    if-lt v12, v0, :cond_5

    .line 224
    .line 225
    if-eqz p3, :cond_5

    .line 226
    .line 227
    goto/16 :goto_7

    .line 228
    .line 229
    :cond_5
    invoke-interface {v14, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 230
    .line 231
    .line 232
    move-result-object v5

    .line 233
    check-cast v5, Lcom/join/mgps/dto/ForumBean$ForumCommentReplyBean;

    .line 234
    .line 235
    invoke-virtual {v5}, Lcom/join/mgps/dto/ForumBean$ForumCommentReplyBean;->getNickname()Ljava/lang/String;

    .line 236
    .line 237
    .line 238
    move-result-object v6

    .line 239
    invoke-virtual {v5}, Lcom/join/mgps/dto/ForumBean$ForumCommentReplyBean;->getRnickname()Ljava/lang/String;

    .line 240
    .line 241
    .line 242
    move-result-object v13

    .line 243
    invoke-virtual {v5}, Lcom/join/mgps/dto/ForumBean$ForumCommentReplyBean;->getRrid()I

    .line 244
    .line 245
    .line 246
    move-result v19

    .line 247
    if-nez v19, :cond_6

    .line 248
    .line 249
    const-string v13, ""

    .line 250
    .line 251
    :cond_6
    invoke-virtual {v5}, Lcom/join/mgps/dto/ForumBean$ForumCommentReplyBean;->getMessage()Ljava/lang/String;

    .line 252
    .line 253
    .line 254
    move-result-object v4

    .line 255
    invoke-virtual {v1, v15}, Landroid/view/View;->setVisibility(I)V

    .line 256
    .line 257
    .line 258
    invoke-virtual {v2, v3}, Landroid/view/View;->setVisibility(I)V

    .line 259
    .line 260
    .line 261
    invoke-virtual {v5}, Lcom/join/mgps/dto/ForumBean$ForumCommentReplyBean;->isOfficialAccount()Z

    .line 262
    .line 263
    .line 264
    move-result v2

    .line 265
    const-string v3, "#*#"

    .line 266
    .line 267
    if-eqz v2, :cond_7

    .line 268
    .line 269
    new-instance v2, Ljava/lang/StringBuilder;

    .line 270
    .line 271
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 272
    .line 273
    .line 274
    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 275
    .line 276
    .line 277
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 278
    .line 279
    .line 280
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 281
    .line 282
    .line 283
    move-result-object v6

    .line 284
    :cond_7
    invoke-static {v13}, Lcom/join/mgps/Util/t2;->i(Ljava/lang/String;)Z

    .line 285
    .line 286
    .line 287
    move-result v2

    .line 288
    if-eqz v2, :cond_8

    .line 289
    .line 290
    invoke-virtual {v5}, Lcom/join/mgps/dto/ForumBean$ForumCommentReplyBean;->isrOfficialAccount()Z

    .line 291
    .line 292
    .line 293
    move-result v2

    .line 294
    if-eqz v2, :cond_8

    .line 295
    .line 296
    new-instance v2, Ljava/lang/StringBuilder;

    .line 297
    .line 298
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 299
    .line 300
    .line 301
    invoke-virtual {v2, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 302
    .line 303
    .line 304
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 305
    .line 306
    .line 307
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 308
    .line 309
    .line 310
    move-result-object v13

    .line 311
    :cond_8
    invoke-static {v1, v6, v13, v4}, Lcom/join/mgps/Util/r0;->u1(Landroid/widget/TextView;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 312
    .line 313
    .line 314
    invoke-virtual {v5}, Lcom/join/mgps/dto/ForumBean$ForumCommentReplyBean;->getJump_info()Lcom/join/mgps/dto/BannerBean;

    .line 315
    .line 316
    .line 317
    move-result-object v2

    .line 318
    invoke-virtual {v5}, Lcom/join/mgps/dto/ForumBean$ForumCommentReplyBean;->getRid()I

    .line 319
    .line 320
    .line 321
    move-result v6

    .line 322
    invoke-virtual {v5}, Lcom/join/mgps/dto/ForumBean$ForumCommentReplyBean;->getUid()I

    .line 323
    .line 324
    .line 325
    move-result v3

    .line 326
    invoke-virtual {v5}, Lcom/join/mgps/dto/ForumBean$ForumCommentReplyBean;->getNickname()Ljava/lang/String;

    .line 327
    .line 328
    .line 329
    move-result-object v13

    .line 330
    if-eqz v2, :cond_9

    .line 331
    .line 332
    iget-object v4, v8, Lcom/join/mgps/adapter/ForumCommentAdapter;->j:Landroid/content/Context;

    .line 333
    .line 334
    invoke-virtual {v2}, Lcom/join/mgps/dto/BannerBean;->getTitle()Ljava/lang/String;

    .line 335
    .line 336
    .line 337
    move-result-object v15

    .line 338
    invoke-virtual {v2}, Lcom/join/mgps/dto/BannerBean;->getIntentDataBean()Lcom/join/mgps/Util/IntentDateBean;

    .line 339
    .line 340
    .line 341
    move-result-object v2

    .line 342
    new-instance v0, Lcom/join/mgps/adapter/ForumCommentAdapter$n;

    .line 343
    .line 344
    invoke-direct {v0, v8, v10, v6, v13}, Lcom/join/mgps/adapter/ForumCommentAdapter$n;-><init>(Lcom/join/mgps/adapter/ForumCommentAdapter;IILjava/lang/String;)V

    .line 345
    .line 346
    .line 347
    invoke-virtual {v1, v4, v15, v2, v0}, Lcom/join/mgps/customview/TextViewWithHyperlink;->a(Landroid/content/Context;Ljava/lang/String;Lcom/join/mgps/Util/IntentDateBean;Lcom/join/mgps/customview/TextViewWithHyperlink$a;)I

    .line 348
    .line 349
    .line 350
    :cond_9
    invoke-virtual {v8, v11, v10, v6, v13}, Lcom/join/mgps/adapter/ForumCommentAdapter;->p0(Landroid/view/View;IILjava/lang/String;)V

    .line 351
    .line 352
    .line 353
    iget-object v0, v8, Lcom/join/mgps/adapter/ForumCommentAdapter;->j:Landroid/content/Context;

    .line 354
    .line 355
    invoke-static {v0}, Lcom/join/mgps/Util/AccountUtil_;->getInstance_(Landroid/content/Context;)Lcom/join/mgps/Util/AccountUtil_;

    .line 356
    .line 357
    .line 358
    move-result-object v0

    .line 359
    invoke-virtual {v0}, Lcom/join/mgps/Util/b;->getAccountData()Lcom/wufan/user/service/protobuf/UserInfo;

    .line 360
    .line 361
    .line 362
    move-result-object v0

    .line 363
    iget v1, v9, Lcom/join/mgps/adapter/ForumCommentAdapter$z$d;->c:I

    .line 364
    .line 365
    iget-boolean v2, v9, Lcom/join/mgps/adapter/ForumCommentAdapter$z$d;->e:Z

    .line 366
    .line 367
    if-eqz v0, :cond_a

    .line 368
    .line 369
    invoke-virtual {v0}, Lcom/wufan/user/service/protobuf/UserInfo;->getUid()I

    .line 370
    .line 371
    .line 372
    move-result v0

    .line 373
    if-ne v3, v0, :cond_a

    .line 374
    .line 375
    const/4 v0, 0x1

    .line 376
    goto :goto_3

    .line 377
    :cond_a
    const/4 v0, 0x0

    .line 378
    :goto_3
    const/4 v3, 0x3

    .line 379
    if-eq v1, v3, :cond_c

    .line 380
    .line 381
    const/16 v3, 0x63

    .line 382
    .line 383
    if-eq v1, v3, :cond_c

    .line 384
    .line 385
    if-nez v0, :cond_c

    .line 386
    .line 387
    if-eqz v2, :cond_b

    .line 388
    .line 389
    goto :goto_4

    .line 390
    :cond_b
    const/4 v2, 0x0

    .line 391
    goto :goto_5

    .line 392
    :cond_c
    :goto_4
    const/4 v2, 0x1

    .line 393
    :goto_5
    xor-int/lit8 v3, v0, 0x1

    .line 394
    .line 395
    invoke-virtual {v5}, Lcom/join/mgps/dto/ForumBean$ForumCommentReplyBean;->getMessage()Ljava/lang/String;

    .line 396
    .line 397
    .line 398
    move-result-object v15

    .line 399
    move-object/from16 v0, p0

    .line 400
    .line 401
    move-object v1, v11

    .line 402
    move v4, v10

    .line 403
    move v5, v6

    .line 404
    move-object v6, v13

    .line 405
    move v13, v7

    .line 406
    move-object v7, v15

    .line 407
    invoke-virtual/range {v0 .. v7}, Lcom/join/mgps/adapter/ForumCommentAdapter;->o0(Landroid/view/View;ZZIILjava/lang/String;Ljava/lang/String;)V

    .line 408
    .line 409
    .line 410
    move-object/from16 v0, p1

    .line 411
    .line 412
    :goto_6
    invoke-virtual {v0, v11}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 413
    .line 414
    .line 415
    goto :goto_8

    .line 416
    :cond_d
    :goto_7
    move-object/from16 v0, p1

    .line 417
    .line 418
    goto/16 :goto_1

    .line 419
    .line 420
    :goto_8
    add-int/lit8 v5, v12, 0x1

    .line 421
    .line 422
    move-object v15, v0

    .line 423
    move v7, v13

    .line 424
    move/from16 v11, v16

    .line 425
    .line 426
    move/from16 v12, v17

    .line 427
    .line 428
    move-object/from16 v13, v18

    .line 429
    .line 430
    const/4 v6, 0x0

    .line 431
    goto/16 :goto_0

    .line 432
    .line 433
    :cond_e
    return-void
.end method

.method private g0(Landroid/widget/RelativeLayout;Ljava/util/List;Ljava/util/List;)V
    .locals 10
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x10,
            0x10
        }
        names = {
            "container",
            "image_list",
            "raw_pic_list"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/RelativeLayout;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
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
    iget-object v1, p0, Lcom/join/mgps/adapter/ForumCommentAdapter;->l:Landroid/widget/LinearLayout$LayoutParams;

    .line 14
    .line 15
    if-nez v1, :cond_1

    .line 16
    .line 17
    invoke-virtual {p0}, Lcom/join/mgps/adapter/ForumCommentAdapter;->X()Landroid/widget/LinearLayout$LayoutParams;

    .line 18
    .line 19
    .line 20
    move-result-object v1

    .line 21
    iput-object v1, p0, Lcom/join/mgps/adapter/ForumCommentAdapter;->l:Landroid/widget/LinearLayout$LayoutParams;

    .line 22
    .line 23
    :cond_1
    const v1, 0x7f0a08ce

    .line 24
    .line 25
    .line 26
    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 27
    .line 28
    .line 29
    move-result-object v1

    .line 30
    check-cast v1, Landroid/widget/TextView;

    .line 31
    .line 32
    invoke-interface {p2}, Ljava/util/List;->size()I

    .line 33
    .line 34
    .line 35
    move-result v2

    .line 36
    const/4 v3, 0x3

    .line 37
    const/4 v4, 0x0

    .line 38
    if-le v2, v3, :cond_2

    .line 39
    .line 40
    invoke-virtual {v1, v4}, Landroid/view/View;->setVisibility(I)V

    .line 41
    .line 42
    .line 43
    new-instance v2, Ljava/lang/StringBuilder;

    .line 44
    .line 45
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 46
    .line 47
    .line 48
    const-string v5, "\u5171"

    .line 49
    .line 50
    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 51
    .line 52
    .line 53
    invoke-interface {p2}, Ljava/util/List;->size()I

    .line 54
    .line 55
    .line 56
    move-result v5

    .line 57
    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 58
    .line 59
    .line 60
    const-string v5, "\u5f20"

    .line 61
    .line 62
    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 63
    .line 64
    .line 65
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 66
    .line 67
    .line 68
    move-result-object v2

    .line 69
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 70
    .line 71
    .line 72
    goto :goto_0

    .line 73
    :cond_2
    invoke-virtual {v1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 74
    .line 75
    .line 76
    :goto_0
    iget-object v1, p0, Lcom/join/mgps/adapter/ForumCommentAdapter;->j:Landroid/content/Context;

    .line 77
    .line 78
    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 79
    .line 80
    .line 81
    move-result-object v1

    .line 82
    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    .line 83
    .line 84
    .line 85
    move-result-object v1

    .line 86
    iget v1, v1, Landroid/util/DisplayMetrics;->density:F

    .line 87
    .line 88
    const/high16 v2, 0x40c00000    # 6.0f

    .line 89
    .line 90
    mul-float v1, v1, v2

    .line 91
    .line 92
    float-to-int v1, v1

    .line 93
    const v2, 0x7f0a092e

    .line 94
    .line 95
    .line 96
    const v5, 0x7f0a092f

    .line 97
    .line 98
    .line 99
    const v6, 0x7f0a092d

    .line 100
    .line 101
    .line 102
    filled-new-array {v6, v2, v5}, [I

    .line 103
    .line 104
    .line 105
    move-result-object v2

    .line 106
    const/4 v5, 0x0

    .line 107
    :goto_1
    if-ge v5, v3, :cond_5

    .line 108
    .line 109
    aget v6, v2, v5

    .line 110
    .line 111
    invoke-virtual {p1, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 112
    .line 113
    .line 114
    move-result-object v6

    .line 115
    check-cast v6, Lcom/facebook/drawee/view/SimpleDraweeView;

    .line 116
    .line 117
    new-instance v7, Landroid/widget/LinearLayout$LayoutParams;

    .line 118
    .line 119
    iget-object v8, p0, Lcom/join/mgps/adapter/ForumCommentAdapter;->l:Landroid/widget/LinearLayout$LayoutParams;

    .line 120
    .line 121
    iget v9, v8, Landroid/widget/LinearLayout$LayoutParams;->width:I

    .line 122
    .line 123
    iget v8, v8, Landroid/widget/LinearLayout$LayoutParams;->height:I

    .line 124
    .line 125
    invoke-direct {v7, v9, v8}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 126
    .line 127
    .line 128
    invoke-interface {p2}, Ljava/util/List;->size()I

    .line 129
    .line 130
    .line 131
    move-result v8

    .line 132
    if-ge v5, v8, :cond_4

    .line 133
    .line 134
    invoke-interface {p2, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 135
    .line 136
    .line 137
    move-result-object v8

    .line 138
    check-cast v8, Ljava/lang/String;

    .line 139
    .line 140
    invoke-virtual {v6, v4}, Landroid/view/View;->setVisibility(I)V

    .line 141
    .line 142
    .line 143
    if-lez v5, :cond_3

    .line 144
    .line 145
    invoke-virtual {v7, v1, v4, v4, v4}, Landroid/view/ViewGroup$MarginLayoutParams;->setMargins(IIII)V

    .line 146
    .line 147
    .line 148
    goto :goto_2

    .line 149
    :cond_3
    invoke-virtual {v7, v4, v4, v4, v4}, Landroid/view/ViewGroup$MarginLayoutParams;->setMargins(IIII)V

    .line 150
    .line 151
    .line 152
    :goto_2
    invoke-virtual {v6, v7}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 153
    .line 154
    .line 155
    sget-object v7, Landroid/widget/ImageView$ScaleType;->CENTER_CROP:Landroid/widget/ImageView$ScaleType;

    .line 156
    .line 157
    invoke-virtual {v6, v7}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 158
    .line 159
    .line 160
    sget-object v7, Lcom/facebook/drawee/drawable/s$c;->i:Lcom/facebook/drawee/drawable/s$c;

    .line 161
    .line 162
    invoke-static {v6, v8, v7}, Lcom/join/android/app/common/utils/l;->i(Lcom/facebook/drawee/view/SimpleDraweeView;Ljava/lang/String;Lcom/facebook/drawee/drawable/s$c;)V

    .line 163
    .line 164
    .line 165
    new-instance v7, Lcom/join/mgps/adapter/ForumCommentAdapter$o;

    .line 166
    .line 167
    invoke-direct {v7, p0, p3, v5}, Lcom/join/mgps/adapter/ForumCommentAdapter$o;-><init>(Lcom/join/mgps/adapter/ForumCommentAdapter;Ljava/util/List;I)V

    .line 168
    .line 169
    .line 170
    invoke-virtual {v6, v7}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 171
    .line 172
    .line 173
    goto :goto_3

    .line 174
    :cond_4
    invoke-virtual {v6, v0}, Landroid/view/View;->setVisibility(I)V

    .line 175
    .line 176
    .line 177
    :goto_3
    add-int/lit8 v5, v5, 0x1

    .line 178
    .line 179
    goto :goto_1

    .line 180
    :cond_5
    return-void

    .line 181
    :cond_6
    :goto_4
    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 182
    .line 183
    .line 184
    return-void
.end method

.method private j0(Landroid/widget/TextView;Ljava/lang/String;ZZLjava/lang/String;Ljava/util/List;Ljava/util/List;ILjava/lang/String;)V
    .locals 0
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
            "fname"
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
            ")V"
        }
    .end annotation

    .line 1
    new-instance p3, Landroid/text/SpannableStringBuilder;

    .line 2
    .line 3
    invoke-direct {p3}, Landroid/text/SpannableStringBuilder;-><init>()V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 7
    .line 8
    .line 9
    move-result-object p4

    .line 10
    invoke-static {p4, p3, p6}, Lcom/join/mgps/Util/r0;->h(Landroid/content/Context;Landroid/text/SpannableStringBuilder;Ljava/util/List;)V

    .line 11
    .line 12
    .line 13
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 14
    .line 15
    .line 16
    move-result-object p4

    .line 17
    invoke-static {p4, p3, p7, p8, p9}, Lcom/join/mgps/Util/r0;->i(Landroid/content/Context;Landroid/text/SpannableStringBuilder;Ljava/util/List;ILjava/lang/String;)V

    .line 18
    .line 19
    .line 20
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 21
    .line 22
    .line 23
    move-result p4

    .line 24
    if-eqz p4, :cond_0

    .line 25
    .line 26
    const-string p2, ""

    .line 27
    .line 28
    :cond_0
    invoke-virtual {p3, p2}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 29
    .line 30
    .line 31
    invoke-virtual {p1, p3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 32
    .line 33
    .line 34
    return-void
.end method

.method private r0(Landroid/view/View;Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x10
        }
        names = {
            "v",
            "gameId"
        }
    .end annotation

    .line 1
    new-instance v0, Lcom/join/mgps/adapter/ForumCommentAdapter$g;

    .line 2
    .line 3
    invoke-direct {v0, p0, p2}, Lcom/join/mgps/adapter/ForumCommentAdapter$g;-><init>(Lcom/join/mgps/adapter/ForumCommentAdapter;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 7
    .line 8
    .line 9
    return-void
.end method

.method private s0(Landroid/view/View;I)V
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
    new-instance v0, Lcom/join/mgps/adapter/ForumCommentAdapter$i;

    .line 5
    .line 6
    invoke-direct {v0, p0, p2}, Lcom/join/mgps/adapter/ForumCommentAdapter$i;-><init>(Lcom/join/mgps/adapter/ForumCommentAdapter;I)V

    .line 7
    .line 8
    .line 9
    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 10
    .line 11
    .line 12
    return-void
.end method

.method private t0(Landroid/view/View;Lcom/join/mgps/dto/ForumBean$GameInfo;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x10
        }
        names = {
            "v",
            "gameInfo"
        }
    .end annotation

    .line 1
    new-instance v0, Lcom/join/mgps/adapter/ForumCommentAdapter$f;

    .line 2
    .line 3
    invoke-direct {v0, p0, p2}, Lcom/join/mgps/adapter/ForumCommentAdapter$f;-><init>(Lcom/join/mgps/adapter/ForumCommentAdapter;Lcom/join/mgps/dto/ForumBean$GameInfo;)V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 7
    .line 8
    .line 9
    return-void
.end method

.method private v0(Landroid/view/View;I)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x10
        }
        names = {
            "v",
            "gagUid"
        }
    .end annotation

    .line 1
    if-nez p1, :cond_0

    .line 2
    .line 3
    return-void

    .line 4
    :cond_0
    new-instance v0, Lcom/join/mgps/adapter/ForumCommentAdapter$j;

    .line 5
    .line 6
    invoke-direct {v0, p0, p2}, Lcom/join/mgps/adapter/ForumCommentAdapter$j;-><init>(Lcom/join/mgps/adapter/ForumCommentAdapter;I)V

    .line 7
    .line 8
    .line 9
    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 10
    .line 11
    .line 12
    return-void
.end method

.method private w0(Ljava/lang/String;Landroid/view/View;Lcom/facebook/imagepipeline/image/g;)Landroid/view/ViewGroup$LayoutParams;
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
    iget-object v6, p0, Lcom/join/mgps/adapter/ForumCommentAdapter;->h:Ljava/lang/String;

    .line 62
    .line 63
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 64
    .line 65
    .line 66
    const-string v6, "setPostImageParam-->rawHeight="

    .line 67
    .line 68
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 69
    .line 70
    .line 71
    invoke-virtual {v5, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 72
    .line 73
    .line 74
    const-string p3, " rawWidth="

    .line 75
    .line 76
    invoke-virtual {v5, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 77
    .line 78
    .line 79
    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 80
    .line 81
    .line 82
    const-string p3, " ratio="

    .line 83
    .line 84
    invoke-virtual {v5, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 85
    .line 86
    .line 87
    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 88
    .line 89
    .line 90
    const-string p3, " itemHeight="

    .line 91
    .line 92
    invoke-virtual {v5, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 93
    .line 94
    .line 95
    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 96
    .line 97
    .line 98
    const-string p3, " itemWidth="

    .line 99
    .line 100
    invoke-virtual {v5, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 101
    .line 102
    .line 103
    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 104
    .line 105
    .line 106
    const-string p3, "\n"

    .line 107
    .line 108
    invoke-virtual {v5, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 109
    .line 110
    .line 111
    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 112
    .line 113
    .line 114
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 115
    .line 116
    .line 117
    move-result-object p1

    .line 118
    filled-new-array {p1}, [Ljava/lang/String;

    .line 119
    .line 120
    .line 121
    move-result-object p1

    .line 122
    invoke-static {p1}, Lcom/join/mgps/Util/h1;->e([Ljava/lang/String;)V

    .line 123
    .line 124
    .line 125
    const/4 p1, 0x0

    .line 126
    invoke-virtual {p2, p1}, Landroid/view/View;->setMinimumHeight(I)V

    .line 127
    .line 128
    .line 129
    invoke-virtual {p2, v3}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 130
    .line 131
    .line 132
    return-object v3

    .line 133
    :cond_0
    const/4 p1, 0x0

    .line 134
    return-object p1
.end method

.method private x0(Landroid/view/View;Ljava/lang/CharSequence;)V
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

.method static synthetic y(Lcom/join/mgps/adapter/ForumCommentAdapter;)Lcom/join/mgps/adapter/ForumCommentAdapter$w;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/join/mgps/adapter/ForumCommentAdapter;->t:Lcom/join/mgps/adapter/ForumCommentAdapter$w;

    .line 2
    .line 3
    return-object p0
.end method

.method private y0(Landroid/view/View;I)V
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

.method static synthetic z(Lcom/join/mgps/adapter/ForumCommentAdapter;Landroid/content/Context;)I
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/join/mgps/adapter/ForumCommentAdapter;->U(Landroid/content/Context;)I

    .line 2
    .line 3
    .line 4
    move-result p0

    .line 5
    return p0
.end method


# virtual methods
.method F(Ljava/lang/String;Lcom/join/mgps/adapter/ForumCommentAdapter$y;)V
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
    iget-object v0, p0, Lcom/join/mgps/adapter/ForumCommentAdapter;->p:Ljava/util/Hashtable;

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
    iput-object v0, p0, Lcom/join/mgps/adapter/ForumCommentAdapter;->p:Ljava/util/Hashtable;

    .line 11
    .line 12
    :cond_0
    iget-object v0, p0, Lcom/join/mgps/adapter/ForumCommentAdapter;->p:Ljava/util/Hashtable;

    .line 13
    .line 14
    invoke-virtual {v0, p1, p2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 15
    .line 16
    .line 17
    return-void
.end method

.method public O()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/adapter/ForumCommentAdapter;->p:Ljava/util/Hashtable;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0}, Ljava/util/Hashtable;->clear()V

    .line 6
    .line 7
    .line 8
    invoke-static {}, Ljava/lang/System;->gc()V

    .line 9
    .line 10
    .line 11
    :cond_0
    return-void
.end method

.method protected P(Lcom/join/mgps/base/b;Lcom/join/mgps/adapter/ForumCommentAdapter$z;)V
    .locals 2
    .param p1    # Lcom/join/mgps/base/b;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "helper",
            "item"
        }
    .end annotation

    .line 1
    invoke-virtual {p2}, Lcom/join/mgps/adapter/ForumCommentAdapter$z;->getItemType()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    sget-object v1, Lcom/join/mgps/adapter/ForumCommentAdapter$ViewType;->COMMENT_HEADER:Lcom/join/mgps/adapter/ForumCommentAdapter$ViewType;

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
    invoke-direct {p0, p1, p2}, Lcom/join/mgps/adapter/ForumCommentAdapter;->G(Lcom/join/mgps/base/b;Lcom/join/mgps/adapter/ForumCommentAdapter$z;)V

    .line 14
    .line 15
    .line 16
    goto :goto_0

    .line 17
    :cond_0
    sget-object v1, Lcom/join/mgps/adapter/ForumCommentAdapter$ViewType;->COMMENT_MESSAGE:Lcom/join/mgps/adapter/ForumCommentAdapter$ViewType;

    .line 18
    .line 19
    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    .line 20
    .line 21
    .line 22
    move-result v1

    .line 23
    if-ne v0, v1, :cond_1

    .line 24
    .line 25
    invoke-direct {p0, p1, p2}, Lcom/join/mgps/adapter/ForumCommentAdapter;->J(Lcom/join/mgps/base/b;Lcom/join/mgps/adapter/ForumCommentAdapter$z;)V

    .line 26
    .line 27
    .line 28
    goto :goto_0

    .line 29
    :cond_1
    sget-object v1, Lcom/join/mgps/adapter/ForumCommentAdapter$ViewType;->COMMENT_IMAGE:Lcom/join/mgps/adapter/ForumCommentAdapter$ViewType;

    .line 30
    .line 31
    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    .line 32
    .line 33
    .line 34
    move-result v1

    .line 35
    if-ne v0, v1, :cond_2

    .line 36
    .line 37
    invoke-direct {p0, p1, p2}, Lcom/join/mgps/adapter/ForumCommentAdapter;->H(Lcom/join/mgps/base/b;Lcom/join/mgps/adapter/ForumCommentAdapter$z;)V

    .line 38
    .line 39
    .line 40
    goto :goto_0

    .line 41
    :cond_2
    sget-object v1, Lcom/join/mgps/adapter/ForumCommentAdapter$ViewType;->COMMENT_MESSAGE_REPLY:Lcom/join/mgps/adapter/ForumCommentAdapter$ViewType;

    .line 42
    .line 43
    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    .line 44
    .line 45
    .line 46
    move-result v1

    .line 47
    if-ne v0, v1, :cond_3

    .line 48
    .line 49
    invoke-direct {p0, p1, p2}, Lcom/join/mgps/adapter/ForumCommentAdapter;->I(Lcom/join/mgps/base/b;Lcom/join/mgps/adapter/ForumCommentAdapter$z;)V

    .line 50
    .line 51
    .line 52
    goto :goto_0

    .line 53
    :cond_3
    sget-object v1, Lcom/join/mgps/adapter/ForumCommentAdapter$ViewType;->EMPLOYEE_TAGS:Lcom/join/mgps/adapter/ForumCommentAdapter$ViewType;

    .line 54
    .line 55
    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    .line 56
    .line 57
    .line 58
    move-result v1

    .line 59
    if-ne v0, v1, :cond_4

    .line 60
    .line 61
    invoke-direct {p0, p1, p2}, Lcom/join/mgps/adapter/ForumCommentAdapter;->L(Lcom/join/mgps/base/b;Lcom/join/mgps/adapter/ForumCommentAdapter$z;)V

    .line 62
    .line 63
    .line 64
    goto :goto_0

    .line 65
    :cond_4
    sget-object v1, Lcom/join/mgps/adapter/ForumCommentAdapter$ViewType;->DIVIDER:Lcom/join/mgps/adapter/ForumCommentAdapter$ViewType;

    .line 66
    .line 67
    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    .line 68
    .line 69
    .line 70
    move-result v1

    .line 71
    if-ne v0, v1, :cond_5

    .line 72
    .line 73
    invoke-direct {p0, p1, p2}, Lcom/join/mgps/adapter/ForumCommentAdapter;->K(Lcom/join/mgps/base/b;Lcom/join/mgps/adapter/ForumCommentAdapter$z;)V

    .line 74
    .line 75
    .line 76
    :cond_5
    :goto_0
    return-void
.end method

.method Q(ILcom/join/mgps/dto/ForumBean$ForumCommentBean;IZZ)Lcom/join/mgps/adapter/ForumCommentAdapter$z;
    .locals 9
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "pid",
            "bean",
            "myAuth",
            "showDivider",
            "isMyPost"
        }
    .end annotation

    .line 1
    new-instance v0, Lcom/join/mgps/adapter/ForumCommentAdapter$z;

    .line 2
    .line 3
    sget-object v1, Lcom/join/mgps/adapter/ForumCommentAdapter$ViewType;->COMMENT_MESSAGE_REPLY:Lcom/join/mgps/adapter/ForumCommentAdapter$ViewType;

    .line 4
    .line 5
    new-instance v8, Lcom/join/mgps/adapter/ForumCommentAdapter$z$d;

    .line 6
    .line 7
    move-object v2, v8

    .line 8
    move v3, p1

    .line 9
    move-object v4, p2

    .line 10
    move v5, p3

    .line 11
    move v6, p4

    .line 12
    move v7, p5

    .line 13
    invoke-direct/range {v2 .. v7}, Lcom/join/mgps/adapter/ForumCommentAdapter$z$d;-><init>(ILcom/join/mgps/dto/ForumBean$ForumCommentBean;IZZ)V

    .line 14
    .line 15
    .line 16
    invoke-direct {v0, v1, v8}, Lcom/join/mgps/adapter/ForumCommentAdapter$z;-><init>(Lcom/join/mgps/adapter/ForumCommentAdapter$ViewType;Ljava/lang/Object;)V

    .line 17
    .line 18
    .line 19
    return-object v0
.end method

.method S(Ljava/lang/String;)Landroid/graphics/BitmapFactory$Options;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "path"
        }
    .end annotation

    .line 1
    const/4 p1, 0x0

    return-object p1
.end method

.method T(Ljava/lang/String;)Lcom/join/mgps/adapter/ForumCommentAdapter$y;
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
    iget-object v0, p0, Lcom/join/mgps/adapter/ForumCommentAdapter;->p:Ljava/util/Hashtable;

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
    check-cast p1, Lcom/join/mgps/adapter/ForumCommentAdapter$y;

    .line 12
    .line 13
    return-object p1
.end method

.method public W(Landroid/content/Context;)Lcom/danikula/videocache/i;
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

.method X()Landroid/widget/LinearLayout$LayoutParams;
    .locals 7

    .line 1
    iget-object v0, p0, Lcom/join/mgps/adapter/ForumCommentAdapter;->j:Landroid/content/Context;

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
    iget-object v5, p0, Lcom/join/mgps/adapter/ForumCommentAdapter;->j:Landroid/content/Context;

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

.method public a0(Lcom/facebook/drawee/view/SimpleDraweeView;Ljava/lang/String;)V
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
    new-instance v0, Lcom/join/mgps/adapter/ForumCommentAdapter$q;

    .line 14
    .line 15
    invoke-direct {v0, p0, p1}, Lcom/join/mgps/adapter/ForumCommentAdapter$q;-><init>(Lcom/join/mgps/adapter/ForumCommentAdapter;Lcom/facebook/drawee/view/SimpleDraweeView;)V

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

.method public b0(Lcom/facebook/drawee/view/SimpleDraweeView;Ljava/lang/String;)V
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
    new-instance v0, Lcom/join/mgps/adapter/ForumCommentAdapter$p;

    .line 14
    .line 15
    invoke-direct {v0, p0, p1}, Lcom/join/mgps/adapter/ForumCommentAdapter$p;-><init>(Lcom/join/mgps/adapter/ForumCommentAdapter;Lcom/facebook/drawee/view/SimpleDraweeView;)V

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

.method protected bridge synthetic convert(Lcom/join/mgps/base/b;Ljava/lang/Object;)V
    .locals 0
    .param p1    # Lcom/join/mgps/base/b;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000,
            0x1000
        }
        names = {
            "helper",
            "item"
        }
    .end annotation

    .line 1
    check-cast p2, Lcom/join/mgps/adapter/ForumCommentAdapter$z;

    .line 2
    .line 3
    invoke-virtual {p0, p1, p2}, Lcom/join/mgps/adapter/ForumCommentAdapter;->P(Lcom/join/mgps/base/b;Lcom/join/mgps/adapter/ForumCommentAdapter$z;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method d0(Landroid/content/Context;Ljava/lang/String;)V
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
    new-instance v1, Lcom/join/mgps/adapter/ForumCommentAdapter$y;

    .line 8
    .line 9
    invoke-direct {v1, p0}, Lcom/join/mgps/adapter/ForumCommentAdapter$y;-><init>(Lcom/join/mgps/adapter/ForumCommentAdapter;)V

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
    iput v3, v1, Lcom/join/mgps/adapter/ForumCommentAdapter$y;->a:I

    .line 60
    .line 61
    iput p1, v1, Lcom/join/mgps/adapter/ForumCommentAdapter$y;->b:I

    .line 62
    .line 63
    invoke-virtual {p0, p2, v1}, Lcom/join/mgps/adapter/ForumCommentAdapter;->F(Ljava/lang/String;Lcom/join/mgps/adapter/ForumCommentAdapter$y;)V

    .line 64
    .line 65
    .line 66
    :cond_0
    return-void
.end method

.method h0(Ljava/lang/String;Landroid/view/View;Lcom/facebook/imagepipeline/image/g;)Landroid/widget/LinearLayout$LayoutParams;
    .locals 7
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
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
    move-result-object v2

    .line 19
    invoke-virtual {v2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    .line 20
    .line 21
    .line 22
    move-result-object v3

    .line 23
    iget v3, v3, Landroid/util/DisplayMetrics;->widthPixels:I

    .line 24
    .line 25
    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 26
    .line 27
    .line 28
    move-result-object v1

    .line 29
    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    .line 30
    .line 31
    .line 32
    move-result-object v1

    .line 33
    iget v1, v1, Landroid/util/DisplayMetrics;->density:F

    .line 34
    .line 35
    const v4, 0x7f070ed4

    .line 36
    .line 37
    .line 38
    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    .line 39
    .line 40
    .line 41
    move-result v2

    .line 42
    mul-int/lit8 v2, v2, 0x2

    .line 43
    .line 44
    sub-int/2addr v3, v2

    .line 45
    int-to-float v2, v3

    .line 46
    const/16 v3, 0x28

    .line 47
    .line 48
    int-to-float v3, v3

    .line 49
    mul-float v3, v3, v1

    .line 50
    .line 51
    sub-float/2addr v2, v3

    .line 52
    float-to-int v2, v2

    .line 53
    int-to-float v3, v2

    .line 54
    const/high16 v4, 0x3f800000    # 1.0f

    .line 55
    .line 56
    mul-float v3, v3, v4

    .line 57
    .line 58
    const/4 v5, 0x4

    .line 59
    int-to-float v5, v5

    .line 60
    mul-float v5, v5, v1

    .line 61
    .line 62
    float-to-int v1, v5

    .line 63
    int-to-float v5, p3

    .line 64
    mul-float v5, v5, v4

    .line 65
    .line 66
    int-to-float v4, v0

    .line 67
    div-float/2addr v5, v4

    .line 68
    mul-float v3, v3, v5

    .line 69
    .line 70
    float-to-int v3, v3

    .line 71
    new-instance v4, Ljava/lang/StringBuilder;

    .line 72
    .line 73
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 74
    .line 75
    .line 76
    iget-object v6, p0, Lcom/join/mgps/adapter/ForumCommentAdapter;->h:Ljava/lang/String;

    .line 77
    .line 78
    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 79
    .line 80
    .line 81
    const-string v6, "setCommentImageItemParams-->rawHeight="

    .line 82
    .line 83
    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 84
    .line 85
    .line 86
    invoke-virtual {v4, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 87
    .line 88
    .line 89
    const-string p3, " rawWidth="

    .line 90
    .line 91
    invoke-virtual {v4, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 92
    .line 93
    .line 94
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 95
    .line 96
    .line 97
    const-string p3, " ratio="

    .line 98
    .line 99
    invoke-virtual {v4, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 100
    .line 101
    .line 102
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 103
    .line 104
    .line 105
    const-string p3, " itemHeight="

    .line 106
    .line 107
    invoke-virtual {v4, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 108
    .line 109
    .line 110
    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 111
    .line 112
    .line 113
    const-string p3, " itemWidth="

    .line 114
    .line 115
    invoke-virtual {v4, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 116
    .line 117
    .line 118
    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 119
    .line 120
    .line 121
    const-string p3, "\n"

    .line 122
    .line 123
    invoke-virtual {v4, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 124
    .line 125
    .line 126
    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 127
    .line 128
    .line 129
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 130
    .line 131
    .line 132
    move-result-object p1

    .line 133
    filled-new-array {p1}, [Ljava/lang/String;

    .line 134
    .line 135
    .line 136
    move-result-object p1

    .line 137
    invoke-static {p1}, Lcom/join/mgps/Util/h1;->e([Ljava/lang/String;)V

    .line 138
    .line 139
    .line 140
    new-instance p1, Landroid/widget/LinearLayout$LayoutParams;

    .line 141
    .line 142
    invoke-direct {p1, v2, v3}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 143
    .line 144
    .line 145
    const/4 p3, 0x0

    .line 146
    invoke-virtual {p1, p3, v1, p3, v1}, Landroid/view/ViewGroup$MarginLayoutParams;->setMargins(IIII)V

    .line 147
    .line 148
    .line 149
    invoke-virtual {p2, p1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 150
    .line 151
    .line 152
    return-object p1

    .line 153
    :cond_0
    const/4 p1, 0x0

    .line 154
    return-object p1
.end method

.method i0(Lcom/join/mgps/adapter/ForumCommentAdapter$z;Z)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "bean",
            "hideBottom"
        }
    .end annotation

    .line 1
    if-nez p1, :cond_0

    .line 2
    .line 3
    return-void

    .line 4
    :cond_0
    :try_start_0
    invoke-virtual {p1}, Lcom/join/mgps/adapter/ForumCommentAdapter$z;->a()Ljava/lang/Object;

    .line 5
    .line 6
    .line 7
    move-result-object p1

    .line 8
    check-cast p1, Lcom/join/mgps/adapter/ForumCommentAdapter$z$d;

    .line 9
    .line 10
    iput-boolean p2, p1, Lcom/join/mgps/adapter/ForumCommentAdapter$z$d;->h:Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 11
    .line 12
    goto :goto_0

    .line 13
    :catch_0
    move-exception p1

    .line 14
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 15
    .line 16
    .line 17
    :goto_0
    return-void
.end method

.method public k0(Lcom/join/mgps/adapter/ForumCommentAdapter$w;)V
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
    iput-object p1, p0, Lcom/join/mgps/adapter/ForumCommentAdapter;->t:Lcom/join/mgps/adapter/ForumCommentAdapter$w;

    .line 2
    .line 3
    return-void
.end method

.method public l0(Landroid/view/View;Lcom/join/mgps/adapter/ForumCommentAdapter$z$c;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x10
        }
        names = {
            "v",
            "item"
        }
    .end annotation

    .line 1
    new-instance v0, Lcom/join/mgps/adapter/ForumCommentAdapter$c;

    .line 2
    .line 3
    invoke-direct {v0, p0, p2}, Lcom/join/mgps/adapter/ForumCommentAdapter$c;-><init>(Lcom/join/mgps/adapter/ForumCommentAdapter;Lcom/join/mgps/adapter/ForumCommentAdapter$z$c;)V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p1, v0}, Landroid/view/View;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 7
    .line 8
    .line 9
    return-void
.end method

.method public m0(Landroid/view/View;Lcom/join/mgps/adapter/ForumCommentAdapter$z$a;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x10
        }
        names = {
            "v",
            "item"
        }
    .end annotation

    .line 1
    new-instance v0, Lcom/join/mgps/adapter/ForumCommentAdapter$b;

    .line 2
    .line 3
    invoke-direct {v0, p0, p2}, Lcom/join/mgps/adapter/ForumCommentAdapter$b;-><init>(Lcom/join/mgps/adapter/ForumCommentAdapter;Lcom/join/mgps/adapter/ForumCommentAdapter$z$a;)V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 7
    .line 8
    .line 9
    return-void
.end method

.method public n0(Landroid/view/View;)V
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
    new-instance v0, Lcom/join/mgps/adapter/ForumCommentAdapter$a;

    .line 2
    .line 3
    invoke-direct {v0, p0}, Lcom/join/mgps/adapter/ForumCommentAdapter$a;-><init>(Lcom/join/mgps/adapter/ForumCommentAdapter;)V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 7
    .line 8
    .line 9
    return-void
.end method

.method public o0(Landroid/view/View;ZZIILjava/lang/String;Ljava/lang/String;)V
    .locals 9
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x10,
            0x10,
            0x10,
            0x10,
            0x10,
            0x10
        }
        names = {
            "v",
            "showDelete",
            "showReport",
            "cid",
            "rid",
            "nickname",
            "msg"
        }
    .end annotation

    .line 1
    new-instance v8, Lcom/join/mgps/adapter/ForumCommentAdapter$e;

    .line 2
    .line 3
    move-object v0, v8

    .line 4
    move-object v1, p0

    .line 5
    move v2, p4

    .line 6
    move v3, p2

    .line 7
    move v4, p3

    .line 8
    move v5, p5

    .line 9
    move-object v6, p6

    .line 10
    move-object/from16 v7, p7

    .line 11
    .line 12
    invoke-direct/range {v0 .. v7}, Lcom/join/mgps/adapter/ForumCommentAdapter$e;-><init>(Lcom/join/mgps/adapter/ForumCommentAdapter;IZZILjava/lang/String;Ljava/lang/String;)V

    .line 13
    .line 14
    .line 15
    move-object v0, p1

    .line 16
    invoke-virtual {p1, v8}, Landroid/view/View;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 17
    .line 18
    .line 19
    return-void
.end method

.method public p0(Landroid/view/View;IILjava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x10,
            0x10,
            0x10
        }
        names = {
            "v",
            "cid",
            "rid",
            "rNickname"
        }
    .end annotation

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 4
    .line 5
    .line 6
    const-string v1, "cid="

    .line 7
    .line 8
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 9
    .line 10
    .line 11
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 12
    .line 13
    .line 14
    const-string v1, " rid="

    .line 15
    .line 16
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 17
    .line 18
    .line 19
    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 20
    .line 21
    .line 22
    const-string v1, " rNickname="

    .line 23
    .line 24
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 25
    .line 26
    .line 27
    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 28
    .line 29
    .line 30
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 31
    .line 32
    .line 33
    move-result-object v0

    .line 34
    const-string v1, "setOnCommentReplyReply"

    .line 35
    .line 36
    filled-new-array {v1, v0}, [Ljava/lang/String;

    .line 37
    .line 38
    .line 39
    move-result-object v0

    .line 40
    invoke-static {v0}, Lcom/join/mgps/Util/h1;->e([Ljava/lang/String;)V

    .line 41
    .line 42
    .line 43
    new-instance v0, Lcom/join/mgps/adapter/ForumCommentAdapter$d;

    .line 44
    .line 45
    invoke-direct {v0, p0, p2, p3, p4}, Lcom/join/mgps/adapter/ForumCommentAdapter$d;-><init>(Lcom/join/mgps/adapter/ForumCommentAdapter;IILjava/lang/String;)V

    .line 46
    .line 47
    .line 48
    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 49
    .line 50
    .line 51
    return-void
.end method

.method public q0(Landroid/view/View;I)V
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
    new-instance v0, Lcom/join/mgps/adapter/ForumCommentAdapter$s;

    .line 2
    .line 3
    invoke-direct {v0, p0, p2}, Lcom/join/mgps/adapter/ForumCommentAdapter$s;-><init>(Lcom/join/mgps/adapter/ForumCommentAdapter;I)V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 7
    .line 8
    .line 9
    return-void
.end method

.method public u0(Landroid/view/View;Ljava/lang/String;Ljava/lang/String;)V
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
    new-instance p2, Lcom/join/mgps/adapter/ForumCommentAdapter$h;

    .line 5
    .line 6
    invoke-direct {p2, p0, p3}, Lcom/join/mgps/adapter/ForumCommentAdapter$h;-><init>(Lcom/join/mgps/adapter/ForumCommentAdapter;Ljava/lang/String;)V

    .line 7
    .line 8
    .line 9
    invoke-virtual {p1, p2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 10
    .line 11
    .line 12
    return-void
.end method

.method z0(Landroid/view/View;IZZIILjava/lang/String;Ljava/lang/String;)V
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
            0x0
        }
        names = {
            "v",
            "eventFlag",
            "showDelete",
            "showReport",
            "cid",
            "rid",
            "nickname",
            "mssage"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/adapter/ForumCommentAdapter;->s:Lcom/join/mgps/adapter/ForumCommentAdapter$v;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    new-instance v0, Lcom/join/mgps/adapter/ForumCommentAdapter$v;

    .line 6
    .line 7
    iget-object v1, p0, Lcom/join/mgps/adapter/ForumCommentAdapter;->j:Landroid/content/Context;

    .line 8
    .line 9
    invoke-direct {v0, p0, v1}, Lcom/join/mgps/adapter/ForumCommentAdapter$v;-><init>(Lcom/join/mgps/adapter/ForumCommentAdapter;Landroid/content/Context;)V

    .line 10
    .line 11
    .line 12
    iput-object v0, p0, Lcom/join/mgps/adapter/ForumCommentAdapter;->s:Lcom/join/mgps/adapter/ForumCommentAdapter$v;

    .line 13
    .line 14
    :cond_0
    iget-object v0, p0, Lcom/join/mgps/adapter/ForumCommentAdapter;->s:Lcom/join/mgps/adapter/ForumCommentAdapter$v;

    .line 15
    .line 16
    invoke-virtual {v0, p5}, Lcom/join/mgps/adapter/ForumCommentAdapter$v;->q(I)V

    .line 17
    .line 18
    .line 19
    iget-object p5, p0, Lcom/join/mgps/adapter/ForumCommentAdapter;->s:Lcom/join/mgps/adapter/ForumCommentAdapter$v;

    .line 20
    .line 21
    invoke-virtual {p5, p6}, Lcom/join/mgps/adapter/ForumCommentAdapter$v;->A(I)V

    .line 22
    .line 23
    .line 24
    iget-object p5, p0, Lcom/join/mgps/adapter/ForumCommentAdapter;->s:Lcom/join/mgps/adapter/ForumCommentAdapter$v;

    .line 25
    .line 26
    invoke-virtual {p5, p8}, Lcom/join/mgps/adapter/ForumCommentAdapter$v;->x(Ljava/lang/String;)V

    .line 27
    .line 28
    .line 29
    iget-object p5, p0, Lcom/join/mgps/adapter/ForumCommentAdapter;->s:Lcom/join/mgps/adapter/ForumCommentAdapter$v;

    .line 30
    .line 31
    invoke-virtual {p5, p2}, Lcom/join/mgps/adapter/ForumCommentAdapter$v;->w(I)V

    .line 32
    .line 33
    .line 34
    iget-object p2, p0, Lcom/join/mgps/adapter/ForumCommentAdapter;->s:Lcom/join/mgps/adapter/ForumCommentAdapter$v;

    .line 35
    .line 36
    const/4 p5, 0x0

    .line 37
    invoke-virtual {p2, p5}, Lcom/join/mgps/adapter/ForumCommentAdapter$v;->t(I)V

    .line 38
    .line 39
    .line 40
    const/16 p2, 0x8

    .line 41
    .line 42
    if-eqz p3, :cond_1

    .line 43
    .line 44
    iget-object p3, p0, Lcom/join/mgps/adapter/ForumCommentAdapter;->s:Lcom/join/mgps/adapter/ForumCommentAdapter$v;

    .line 45
    .line 46
    invoke-virtual {p3, p5}, Lcom/join/mgps/adapter/ForumCommentAdapter$v;->v(I)V

    .line 47
    .line 48
    .line 49
    goto :goto_0

    .line 50
    :cond_1
    iget-object p3, p0, Lcom/join/mgps/adapter/ForumCommentAdapter;->s:Lcom/join/mgps/adapter/ForumCommentAdapter$v;

    .line 51
    .line 52
    invoke-virtual {p3, p2}, Lcom/join/mgps/adapter/ForumCommentAdapter$v;->v(I)V

    .line 53
    .line 54
    .line 55
    :goto_0
    if-eqz p4, :cond_2

    .line 56
    .line 57
    iget-object p2, p0, Lcom/join/mgps/adapter/ForumCommentAdapter;->s:Lcom/join/mgps/adapter/ForumCommentAdapter$v;

    .line 58
    .line 59
    invoke-virtual {p2, p5}, Lcom/join/mgps/adapter/ForumCommentAdapter$v;->z(I)V

    .line 60
    .line 61
    .line 62
    goto :goto_1

    .line 63
    :cond_2
    iget-object p3, p0, Lcom/join/mgps/adapter/ForumCommentAdapter;->s:Lcom/join/mgps/adapter/ForumCommentAdapter$v;

    .line 64
    .line 65
    invoke-virtual {p3, p2}, Lcom/join/mgps/adapter/ForumCommentAdapter$v;->z(I)V

    .line 66
    .line 67
    .line 68
    :goto_1
    invoke-static {p7}, Lcom/join/mgps/Util/t2;->h(Ljava/lang/String;)Z

    .line 69
    .line 70
    .line 71
    move-result p2

    .line 72
    if-eqz p2, :cond_3

    .line 73
    .line 74
    const-string p7, ""

    .line 75
    .line 76
    :cond_3
    iget-object p2, p0, Lcom/join/mgps/adapter/ForumCommentAdapter;->s:Lcom/join/mgps/adapter/ForumCommentAdapter$v;

    .line 77
    .line 78
    invoke-virtual {p2, p7}, Lcom/join/mgps/adapter/ForumCommentAdapter$v;->y(Ljava/lang/String;)V

    .line 79
    .line 80
    .line 81
    iget-object p2, p0, Lcom/join/mgps/adapter/ForumCommentAdapter;->s:Lcom/join/mgps/adapter/ForumCommentAdapter$v;

    .line 82
    .line 83
    invoke-virtual {p2, p1}, Lcom/join/mgps/adapter/ForumCommentAdapter$v;->showAsDropDown(Landroid/view/View;)V

    .line 84
    .line 85
    .line 86
    return-void
.end method
