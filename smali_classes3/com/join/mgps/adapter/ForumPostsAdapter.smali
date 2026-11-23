.class public Lcom/join/mgps/adapter/ForumPostsAdapter;
.super Lcom/join/mgps/base/a;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/join/mgps/adapter/ForumPostsAdapter$e0;,
        Lcom/join/mgps/adapter/ForumPostsAdapter$b0;,
        Lcom/join/mgps/adapter/ForumPostsAdapter$ViewType;,
        Lcom/join/mgps/adapter/ForumPostsAdapter$c0;,
        Lcom/join/mgps/adapter/ForumPostsAdapter$d0;,
        Lcom/join/mgps/adapter/ForumPostsAdapter$x;,
        Lcom/join/mgps/adapter/ForumPostsAdapter$a0;,
        Lcom/join/mgps/adapter/ForumPostsAdapter$z;,
        Lcom/join/mgps/adapter/ForumPostsAdapter$y;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/join/mgps/base/a<",
        "Lcom/join/mgps/adapter/ForumPostsAdapter$e0;",
        "Lcom/join/mgps/base/b;",
        ">;"
    }
.end annotation


# instance fields
.field private final h:Ljava/lang/String;

.field i:Lcom/danikula/videocache/i;

.field private j:Ljava/lang/String;

.field private k:Landroid/content/Context;

.field l:Lcom/join/android/app/component/video/c;

.field m:Lcom/join/mgps/adapter/ForumPostsAdapter$c0;

.field n:Landroid/widget/LinearLayout$LayoutParams;

.field o:I

.field p:I

.field q:Landroid/widget/LinearLayout$LayoutParams;

.field r:Ljava/util/Hashtable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Hashtable<",
            "Ljava/lang/String;",
            "Lcom/join/mgps/adapter/ForumPostsAdapter$d0;",
            ">;"
        }
    .end annotation
.end field

.field s:Lcom/join/mgps/adapter/ForumPostsAdapter$x;

.field t:Z

.field u:Lcom/join/mgps/adapter/ForumPostsAdapter$a0;

.field private v:Lcom/join/mgps/adapter/ForumPostsAdapter$b0;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/join/android/app/component/video/c;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "mContext",
            "helper"
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
    iput-object v0, p0, Lcom/join/mgps/adapter/ForumPostsAdapter;->h:Ljava/lang/String;

    .line 18
    .line 19
    const-string v0, ""

    .line 20
    .line 21
    iput-object v0, p0, Lcom/join/mgps/adapter/ForumPostsAdapter;->j:Ljava/lang/String;

    .line 22
    .line 23
    const/4 v0, 0x0

    .line 24
    iput v0, p0, Lcom/join/mgps/adapter/ForumPostsAdapter;->o:I

    .line 25
    .line 26
    iput v0, p0, Lcom/join/mgps/adapter/ForumPostsAdapter;->p:I

    .line 27
    .line 28
    iput-boolean v0, p0, Lcom/join/mgps/adapter/ForumPostsAdapter;->t:Z

    .line 29
    .line 30
    const/4 v0, 0x0

    .line 31
    iput-object v0, p0, Lcom/join/mgps/adapter/ForumPostsAdapter;->v:Lcom/join/mgps/adapter/ForumPostsAdapter$b0;

    .line 32
    .line 33
    iput-object p1, p0, Lcom/join/mgps/adapter/ForumPostsAdapter;->k:Landroid/content/Context;

    .line 34
    .line 35
    iput-object p2, p0, Lcom/join/mgps/adapter/ForumPostsAdapter;->l:Lcom/join/android/app/component/video/c;

    .line 36
    .line 37
    invoke-virtual {p0, p1}, Lcom/join/mgps/adapter/ForumPostsAdapter;->j0(Landroid/content/Context;)Lcom/danikula/videocache/i;

    .line 38
    .line 39
    .line 40
    move-result-object p2

    .line 41
    iput-object p2, p0, Lcom/join/mgps/adapter/ForumPostsAdapter;->i:Lcom/danikula/videocache/i;

    .line 42
    .line 43
    invoke-direct {p0, p1}, Lcom/join/mgps/adapter/ForumPostsAdapter;->i0(Landroid/content/Context;)I

    .line 44
    .line 45
    .line 46
    move-result p2

    .line 47
    iput p2, p0, Lcom/join/mgps/adapter/ForumPostsAdapter;->o:I

    .line 48
    .line 49
    invoke-direct {p0, p1}, Lcom/join/mgps/adapter/ForumPostsAdapter;->h0(Landroid/content/Context;)I

    .line 50
    .line 51
    .line 52
    move-result p1

    .line 53
    iput p1, p0, Lcom/join/mgps/adapter/ForumPostsAdapter;->p:I

    .line 54
    .line 55
    sget-object p1, Lcom/join/mgps/adapter/ForumPostsAdapter$ViewType;->POST_HEADER:Lcom/join/mgps/adapter/ForumPostsAdapter$ViewType;

    .line 56
    .line 57
    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    .line 58
    .line 59
    .line 60
    move-result p1

    .line 61
    const p2, 0x7f0d06b7

    .line 62
    .line 63
    .line 64
    invoke-virtual {p0, p1, p2}, Lcom/join/mgps/base/a;->r(II)V

    .line 65
    .line 66
    .line 67
    sget-object p1, Lcom/join/mgps/adapter/ForumPostsAdapter$ViewType;->POST_HEADER1:Lcom/join/mgps/adapter/ForumPostsAdapter$ViewType;

    .line 68
    .line 69
    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    .line 70
    .line 71
    .line 72
    move-result p1

    .line 73
    const p2, 0x7f0d06b8

    .line 74
    .line 75
    .line 76
    invoke-virtual {p0, p1, p2}, Lcom/join/mgps/base/a;->r(II)V

    .line 77
    .line 78
    .line 79
    sget-object p1, Lcom/join/mgps/adapter/ForumPostsAdapter$ViewType;->POST_FOOTER:Lcom/join/mgps/adapter/ForumPostsAdapter$ViewType;

    .line 80
    .line 81
    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    .line 82
    .line 83
    .line 84
    move-result p1

    .line 85
    const p2, 0x7f0d06b3

    .line 86
    .line 87
    .line 88
    invoke-virtual {p0, p1, p2}, Lcom/join/mgps/base/a;->r(II)V

    .line 89
    .line 90
    .line 91
    sget-object p1, Lcom/join/mgps/adapter/ForumPostsAdapter$ViewType;->POST_FOOTER1:Lcom/join/mgps/adapter/ForumPostsAdapter$ViewType;

    .line 92
    .line 93
    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    .line 94
    .line 95
    .line 96
    move-result p1

    .line 97
    const p2, 0x7f0d06b4

    .line 98
    .line 99
    .line 100
    invoke-virtual {p0, p1, p2}, Lcom/join/mgps/base/a;->r(II)V

    .line 101
    .line 102
    .line 103
    sget-object p1, Lcom/join/mgps/adapter/ForumPostsAdapter$ViewType;->POST_GAME_RES_LINK:Lcom/join/mgps/adapter/ForumPostsAdapter$ViewType;

    .line 104
    .line 105
    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    .line 106
    .line 107
    .line 108
    move-result p1

    .line 109
    const p2, 0x7f0d06b6

    .line 110
    .line 111
    .line 112
    invoke-virtual {p0, p1, p2}, Lcom/join/mgps/base/a;->r(II)V

    .line 113
    .line 114
    .line 115
    sget-object p1, Lcom/join/mgps/adapter/ForumPostsAdapter$ViewType;->POST_GAME:Lcom/join/mgps/adapter/ForumPostsAdapter$ViewType;

    .line 116
    .line 117
    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    .line 118
    .line 119
    .line 120
    move-result p1

    .line 121
    const p2, 0x7f0d06b5

    .line 122
    .line 123
    .line 124
    invoke-virtual {p0, p1, p2}, Lcom/join/mgps/base/a;->r(II)V

    .line 125
    .line 126
    .line 127
    sget-object p1, Lcom/join/mgps/adapter/ForumPostsAdapter$ViewType;->POST_IMAGE:Lcom/join/mgps/adapter/ForumPostsAdapter$ViewType;

    .line 128
    .line 129
    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    .line 130
    .line 131
    .line 132
    move-result p1

    .line 133
    const p2, 0x7f0d06b9

    .line 134
    .line 135
    .line 136
    invoke-virtual {p0, p1, p2}, Lcom/join/mgps/base/a;->r(II)V

    .line 137
    .line 138
    .line 139
    sget-object p1, Lcom/join/mgps/adapter/ForumPostsAdapter$ViewType;->POST_VIDEO:Lcom/join/mgps/adapter/ForumPostsAdapter$ViewType;

    .line 140
    .line 141
    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    .line 142
    .line 143
    .line 144
    move-result p1

    .line 145
    const p2, 0x7f0d06c2

    .line 146
    .line 147
    .line 148
    invoke-virtual {p0, p1, p2}, Lcom/join/mgps/base/a;->r(II)V

    .line 149
    .line 150
    .line 151
    sget-object p1, Lcom/join/mgps/adapter/ForumPostsAdapter$ViewType;->POST_IMAGE_THUMBNAIL:Lcom/join/mgps/adapter/ForumPostsAdapter$ViewType;

    .line 152
    .line 153
    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    .line 154
    .line 155
    .line 156
    move-result p1

    .line 157
    const p2, 0x7f0d06ba

    .line 158
    .line 159
    .line 160
    invoke-virtual {p0, p1, p2}, Lcom/join/mgps/base/a;->r(II)V

    .line 161
    .line 162
    .line 163
    sget-object p1, Lcom/join/mgps/adapter/ForumPostsAdapter$ViewType;->POST_MESSAGE:Lcom/join/mgps/adapter/ForumPostsAdapter$ViewType;

    .line 164
    .line 165
    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    .line 166
    .line 167
    .line 168
    move-result p1

    .line 169
    const p2, 0x7f0d06bb

    .line 170
    .line 171
    .line 172
    invoke-virtual {p0, p1, p2}, Lcom/join/mgps/base/a;->r(II)V

    .line 173
    .line 174
    .line 175
    sget-object p1, Lcom/join/mgps/adapter/ForumPostsAdapter$ViewType;->POST_RICH_MESSAGE:Lcom/join/mgps/adapter/ForumPostsAdapter$ViewType;

    .line 176
    .line 177
    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    .line 178
    .line 179
    .line 180
    move-result p1

    .line 181
    const p2, 0x7f0d06be

    .line 182
    .line 183
    .line 184
    invoke-virtual {p0, p1, p2}, Lcom/join/mgps/base/a;->r(II)V

    .line 185
    .line 186
    .line 187
    sget-object p1, Lcom/join/mgps/adapter/ForumPostsAdapter$ViewType;->POST_SUBJECT:Lcom/join/mgps/adapter/ForumPostsAdapter$ViewType;

    .line 188
    .line 189
    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    .line 190
    .line 191
    .line 192
    move-result p1

    .line 193
    const p2, 0x7f0d06bf

    .line 194
    .line 195
    .line 196
    invoke-virtual {p0, p1, p2}, Lcom/join/mgps/base/a;->r(II)V

    .line 197
    .line 198
    .line 199
    sget-object p1, Lcom/join/mgps/adapter/ForumPostsAdapter$ViewType;->EMPLOYEE_TAGS:Lcom/join/mgps/adapter/ForumPostsAdapter$ViewType;

    .line 200
    .line 201
    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    .line 202
    .line 203
    .line 204
    move-result p1

    .line 205
    const p2, 0x7f0d06b2

    .line 206
    .line 207
    .line 208
    invoke-virtual {p0, p1, p2}, Lcom/join/mgps/base/a;->r(II)V

    .line 209
    .line 210
    .line 211
    sget-object p1, Lcom/join/mgps/adapter/ForumPostsAdapter$ViewType;->DIVIDER:Lcom/join/mgps/adapter/ForumPostsAdapter$ViewType;

    .line 212
    .line 213
    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    .line 214
    .line 215
    .line 216
    move-result p1

    .line 217
    const p2, 0x7f0d06b0

    .line 218
    .line 219
    .line 220
    invoke-virtual {p0, p1, p2}, Lcom/join/mgps/base/a;->r(II)V

    .line 221
    .line 222
    .line 223
    invoke-direct {p0}, Lcom/join/mgps/adapter/ForumPostsAdapter;->l0()V

    .line 224
    .line 225
    .line 226
    return-void
.end method

.method static synthetic A(Lcom/join/mgps/adapter/ForumPostsAdapter;)Lcom/join/mgps/adapter/ForumPostsAdapter$b0;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/join/mgps/adapter/ForumPostsAdapter;->v:Lcom/join/mgps/adapter/ForumPostsAdapter$b0;

    .line 2
    .line 3
    return-object p0
.end method

.method static synthetic B(Lcom/join/mgps/adapter/ForumPostsAdapter;)Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/join/mgps/adapter/ForumPostsAdapter;->j:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method

.method static synthetic C(Lcom/join/mgps/adapter/ForumPostsAdapter;Ljava/lang/String;Landroid/view/View;Lcom/facebook/imagepipeline/image/g;)Landroid/view/ViewGroup$LayoutParams;
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2, p3}, Lcom/join/mgps/adapter/ForumPostsAdapter;->P0(Ljava/lang/String;Landroid/view/View;Lcom/facebook/imagepipeline/image/g;)Landroid/view/ViewGroup$LayoutParams;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method static synthetic D(Lcom/join/mgps/adapter/ForumPostsAdapter;Landroid/content/Context;)Landroid/widget/LinearLayout$LayoutParams;
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/join/mgps/adapter/ForumPostsAdapter;->e0(Landroid/content/Context;)Landroid/widget/LinearLayout$LayoutParams;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method static synthetic E(Lcom/join/mgps/adapter/ForumPostsAdapter;Landroid/widget/PopupWindow;Landroid/view/MotionEvent;)Z
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/join/mgps/adapter/ForumPostsAdapter;->Z(Landroid/widget/PopupWindow;Landroid/view/MotionEvent;)Z

    .line 2
    .line 3
    .line 4
    move-result p0

    .line 5
    return p0
.end method

.method static synthetic F(Lcom/join/mgps/adapter/ForumPostsAdapter;Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/join/mgps/adapter/ForumPostsAdapter;->a0(Landroid/view/View;Landroid/view/MotionEvent;)Z

    .line 2
    .line 3
    .line 4
    move-result p0

    .line 5
    return p0
.end method

.method static synthetic G(Lcom/join/mgps/adapter/ForumPostsAdapter;Landroid/view/View;Lcom/join/mgps/adapter/ForumPostsAdapter$e0$a;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/join/mgps/adapter/ForumPostsAdapter;->T0(Landroid/view/View;Lcom/join/mgps/adapter/ForumPostsAdapter$e0$a;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method private I(Lcom/join/mgps/base/b;Lcom/join/mgps/adapter/ForumPostsAdapter$e0;)V
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
    invoke-virtual {p2}, Lcom/join/mgps/adapter/ForumPostsAdapter$e0;->a()Ljava/lang/Object;

    .line 2
    .line 3
    .line 4
    move-result-object p2

    .line 5
    check-cast p2, Lcom/join/mgps/adapter/ForumPostsAdapter$e0$a;

    .line 6
    .line 7
    if-nez p2, :cond_0

    .line 8
    .line 9
    return-void

    .line 10
    :cond_0
    iget-boolean v0, p2, Lcom/join/mgps/adapter/ForumPostsAdapter$e0$a;->a:Z

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
    iget v2, p2, Lcom/join/mgps/adapter/ForumPostsAdapter$e0$a;->o:I

    .line 28
    .line 29
    iget v3, p2, Lcom/join/mgps/adapter/ForumPostsAdapter$e0$a;->p:I

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
    iget v1, p2, Lcom/join/mgps/adapter/ForumPostsAdapter$e0$a;->k:I

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
    iget-object v1, p2, Lcom/join/mgps/adapter/ForumPostsAdapter$e0$a;->e:Ljava/lang/String;

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
    iget-wide v5, p2, Lcom/join/mgps/adapter/ForumPostsAdapter$e0$a;->f:J

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
    iget-object v7, p2, Lcom/join/mgps/adapter/ForumPostsAdapter$e0$a;->d:Ljava/lang/String;

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
    new-instance v7, Lcom/join/mgps/adapter/ForumPostsAdapter$v;

    .line 97
    .line 98
    invoke-direct {v7, p0, p2}, Lcom/join/mgps/adapter/ForumPostsAdapter$v;-><init>(Lcom/join/mgps/adapter/ForumPostsAdapter;Lcom/join/mgps/adapter/ForumPostsAdapter$e0$a;)V

    .line 99
    .line 100
    .line 101
    invoke-virtual {v6, v7}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 102
    .line 103
    .line 104
    iget-boolean v6, p2, Lcom/join/mgps/adapter/ForumPostsAdapter$e0$a;->g:Z

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
    iget-boolean v6, p2, Lcom/join/mgps/adapter/ForumPostsAdapter$e0$a;->j:Z

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
    iget-boolean v6, p2, Lcom/join/mgps/adapter/ForumPostsAdapter$e0$a;->i:Z

    .line 121
    .line 122
    const v7, 0x7f0a06a7

    .line 123
    .line 124
    .line 125
    if-eqz v6, :cond_2

    .line 126
    .line 127
    iget-object v6, p0, Lcom/join/mgps/adapter/ForumPostsAdapter;->k:Landroid/content/Context;

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
    iget-object v6, p0, Lcom/join/mgps/adapter/ForumPostsAdapter;->k:Landroid/content/Context;

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
    iget v9, p2, Lcom/join/mgps/adapter/ForumPostsAdapter$e0$a;->o:I

    .line 156
    .line 157
    iget v10, p2, Lcom/join/mgps/adapter/ForumPostsAdapter$e0$a;->p:I

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
    iget-boolean v6, p2, Lcom/join/mgps/adapter/ForumPostsAdapter$e0$a;->q:Z

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
    iget-object v6, p2, Lcom/join/mgps/adapter/ForumPostsAdapter$e0$a;->r:Ljava/lang/String;

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
    iget-object v6, p2, Lcom/join/mgps/adapter/ForumPostsAdapter$e0$a;->r:Ljava/lang/String;

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
    iget v6, p2, Lcom/join/mgps/adapter/ForumPostsAdapter$e0$a;->h:I

    .line 200
    .line 201
    const/4 v7, 0x2

    .line 202
    if-ne v6, v3, :cond_4

    .line 203
    .line 204
    iget-object v6, p0, Lcom/join/mgps/adapter/ForumPostsAdapter;->k:Landroid/content/Context;

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
    iget-object v6, p0, Lcom/join/mgps/adapter/ForumPostsAdapter;->k:Landroid/content/Context;

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
    iget-object v6, p0, Lcom/join/mgps/adapter/ForumPostsAdapter;->k:Landroid/content/Context;

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
    iget v9, p2, Lcom/join/mgps/adapter/ForumPostsAdapter$e0$a;->h:I

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
    invoke-virtual {p0, v6}, Lcom/join/mgps/adapter/ForumPostsAdapter;->G0(Landroid/view/View;)V

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
    invoke-virtual {p0, v6, p2}, Lcom/join/mgps/adapter/ForumPostsAdapter;->F0(Landroid/view/View;Lcom/join/mgps/adapter/ForumPostsAdapter$e0$a;)V

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
    iget p2, p2, Lcom/join/mgps/adapter/ForumPostsAdapter$e0$a;->b:I

    .line 318
    .line 319
    invoke-direct {p0, p1, p2}, Lcom/join/mgps/adapter/ForumPostsAdapter;->O0(Landroid/view/View;I)V
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

.method private J(Lcom/join/mgps/base/b;Lcom/join/mgps/adapter/ForumPostsAdapter$e0;)V
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
    invoke-virtual {p2}, Lcom/join/mgps/adapter/ForumPostsAdapter$e0;->a()Ljava/lang/Object;

    .line 2
    .line 3
    .line 4
    move-result-object p2

    .line 5
    check-cast p2, Lcom/join/mgps/adapter/ForumPostsAdapter$e0$b;

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
    iget-object v0, p0, Lcom/join/mgps/adapter/ForumPostsAdapter;->k:Landroid/content/Context;

    .line 26
    .line 27
    iget-object v1, p2, Lcom/join/mgps/adapter/ForumPostsAdapter$e0$b;->c:Ljava/util/List;

    .line 28
    .line 29
    iget v2, p2, Lcom/join/mgps/adapter/ForumPostsAdapter$e0$b;->b:I

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
    invoke-direct {p0, v0, v1}, Lcom/join/mgps/adapter/ForumPostsAdapter;->t0(Landroid/content/Context;Ljava/lang/String;)V

    .line 38
    .line 39
    .line 40
    iget-object v0, p2, Lcom/join/mgps/adapter/ForumPostsAdapter$e0$b;->a:Ljava/lang/String;

    .line 41
    .line 42
    invoke-virtual {p0, v0}, Lcom/join/mgps/adapter/ForumPostsAdapter;->g0(Ljava/lang/String;)Lcom/join/mgps/adapter/ForumPostsAdapter$d0;

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
    iget v2, v0, Lcom/join/mgps/adapter/ForumPostsAdapter$d0;->a:I

    .line 51
    .line 52
    iget v0, v0, Lcom/join/mgps/adapter/ForumPostsAdapter$d0;->b:I

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
    iget-object v2, p0, Lcom/join/mgps/adapter/ForumPostsAdapter;->k:Landroid/content/Context;

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
    iget-object v0, p2, Lcom/join/mgps/adapter/ForumPostsAdapter$e0$b;->a:Ljava/lang/String;

    .line 82
    .line 83
    invoke-static {p1, v0}, Lcom/join/android/app/common/utils/l;->h(Lcom/facebook/drawee/view/SimpleDraweeView;Ljava/lang/String;)V

    .line 84
    .line 85
    .line 86
    goto :goto_0

    .line 87
    :cond_1
    iget-object v0, p2, Lcom/join/mgps/adapter/ForumPostsAdapter$e0$b;->a:Ljava/lang/String;

    .line 88
    .line 89
    invoke-virtual {p0, p1, v0}, Lcom/join/mgps/adapter/ForumPostsAdapter;->o0(Lcom/facebook/drawee/view/SimpleDraweeView;Ljava/lang/String;)V

    .line 90
    .line 91
    .line 92
    :goto_0
    iget v0, p2, Lcom/join/mgps/adapter/ForumPostsAdapter$e0$b;->b:I

    .line 93
    .line 94
    iget-object p2, p2, Lcom/join/mgps/adapter/ForumPostsAdapter$e0$b;->c:Ljava/util/List;

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

.method private K(Lcom/join/mgps/base/b;Lcom/join/mgps/adapter/ForumPostsAdapter$e0;)V
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
    invoke-virtual {p2}, Lcom/join/mgps/adapter/ForumPostsAdapter$e0;->a()Ljava/lang/Object;

    .line 2
    .line 3
    .line 4
    move-result-object p2

    .line 5
    check-cast p2, Lcom/join/mgps/adapter/ForumPostsAdapter$e0$c;

    .line 6
    .line 7
    if-nez p2, :cond_0

    .line 8
    .line 9
    return-void

    .line 10
    :cond_0
    iget-object v0, p2, Lcom/join/mgps/adapter/ForumPostsAdapter$e0$c;->b:Ljava/lang/String;

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
    invoke-direct {p0, v0}, Lcom/join/mgps/adapter/ForumPostsAdapter;->m0(Landroid/widget/TextView;)V

    .line 25
    .line 26
    .line 27
    iget-object v0, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    .line 28
    .line 29
    invoke-virtual {p0, v0}, Lcom/join/mgps/adapter/ForumPostsAdapter;->G0(Landroid/view/View;)V

    .line 30
    .line 31
    .line 32
    invoke-virtual {p1, v1}, Lcom/join/mgps/base/b;->getView(I)Landroid/view/View;

    .line 33
    .line 34
    .line 35
    move-result-object p1

    .line 36
    invoke-virtual {p0, p1, p2}, Lcom/join/mgps/adapter/ForumPostsAdapter;->E0(Landroid/view/View;Lcom/join/mgps/adapter/ForumPostsAdapter$e0$c;)V
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

.method private K0(Landroid/view/View;Ljava/lang/String;)V
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
    new-instance v0, Lcom/join/mgps/adapter/ForumPostsAdapter$l;

    .line 2
    .line 3
    invoke-direct {v0, p0, p2}, Lcom/join/mgps/adapter/ForumPostsAdapter$l;-><init>(Lcom/join/mgps/adapter/ForumPostsAdapter;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 7
    .line 8
    .line 9
    return-void
.end method

.method private L(Lcom/join/mgps/base/b;Lcom/join/mgps/adapter/ForumPostsAdapter$e0;)V
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
    invoke-virtual {p2}, Lcom/join/mgps/adapter/ForumPostsAdapter$e0;->a()Ljava/lang/Object;

    .line 5
    .line 6
    .line 7
    move-result-object p2

    .line 8
    check-cast p2, Lcom/join/mgps/adapter/ForumPostsAdapter$e0$e;

    .line 9
    .line 10
    iget v0, p2, Lcom/join/mgps/adapter/ForumPostsAdapter$e0$e;->b:I

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
    iget p2, p2, Lcom/join/mgps/adapter/ForumPostsAdapter$e0$e;->a:I

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

.method private L0(Landroid/view/View;I)V
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
    new-instance v0, Lcom/join/mgps/adapter/ForumPostsAdapter$n;

    .line 5
    .line 6
    invoke-direct {v0, p0, p2}, Lcom/join/mgps/adapter/ForumPostsAdapter$n;-><init>(Lcom/join/mgps/adapter/ForumPostsAdapter;I)V

    .line 7
    .line 8
    .line 9
    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 10
    .line 11
    .line 12
    return-void
.end method

.method private M(Lcom/join/mgps/base/b;Lcom/join/mgps/adapter/ForumPostsAdapter$e0;)V
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
    invoke-virtual {p2}, Lcom/join/mgps/adapter/ForumPostsAdapter$e0;->a()Ljava/lang/Object;

    .line 2
    .line 3
    .line 4
    move-result-object p2

    .line 5
    check-cast p2, Lcom/join/mgps/adapter/ForumPostsAdapter$e0$f;

    .line 6
    .line 7
    if-nez p2, :cond_0

    .line 8
    .line 9
    return-void

    .line 10
    :cond_0
    iget-object v0, p0, Lcom/join/mgps/adapter/ForumPostsAdapter;->m:Lcom/join/mgps/adapter/ForumPostsAdapter$c0;

    .line 11
    .line 12
    if-nez v0, :cond_1

    .line 13
    .line 14
    new-instance v0, Lcom/join/mgps/adapter/ForumPostsAdapter$c0;

    .line 15
    .line 16
    iget-object v1, p0, Lcom/join/mgps/adapter/ForumPostsAdapter;->k:Landroid/content/Context;

    .line 17
    .line 18
    invoke-direct {v0, v1}, Lcom/join/mgps/adapter/ForumPostsAdapter$c0;-><init>(Landroid/content/Context;)V

    .line 19
    .line 20
    .line 21
    iput-object v0, p0, Lcom/join/mgps/adapter/ForumPostsAdapter;->m:Lcom/join/mgps/adapter/ForumPostsAdapter$c0;

    .line 22
    .line 23
    :cond_1
    iget-object v0, p0, Lcom/join/mgps/adapter/ForumPostsAdapter;->m:Lcom/join/mgps/adapter/ForumPostsAdapter$c0;

    .line 24
    .line 25
    iget v1, p2, Lcom/join/mgps/adapter/ForumPostsAdapter$e0$f;->b:I

    .line 26
    .line 27
    invoke-virtual {v0, v1}, Lcom/join/mgps/adapter/ForumPostsAdapter$c0;->d(I)V

    .line 28
    .line 29
    .line 30
    iget-object v0, p0, Lcom/join/mgps/adapter/ForumPostsAdapter;->m:Lcom/join/mgps/adapter/ForumPostsAdapter$c0;

    .line 31
    .line 32
    iget-object v1, p2, Lcom/join/mgps/adapter/ForumPostsAdapter$e0$f;->c:Ljava/lang/String;

    .line 33
    .line 34
    invoke-virtual {v0, v1}, Lcom/join/mgps/adapter/ForumPostsAdapter$c0;->e(Ljava/lang/String;)V

    .line 35
    .line 36
    .line 37
    iget-object v0, p0, Lcom/join/mgps/adapter/ForumPostsAdapter;->m:Lcom/join/mgps/adapter/ForumPostsAdapter$c0;

    .line 38
    .line 39
    invoke-virtual {v0}, Lcom/join/mgps/adapter/ForumPostsAdapter$c0;->c()Ljava/util/List;

    .line 40
    .line 41
    .line 42
    move-result-object v0

    .line 43
    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 44
    .line 45
    .line 46
    iget-object v0, p0, Lcom/join/mgps/adapter/ForumPostsAdapter;->m:Lcom/join/mgps/adapter/ForumPostsAdapter$c0;

    .line 47
    .line 48
    invoke-virtual {v0}, Lcom/join/mgps/adapter/ForumPostsAdapter$c0;->c()Ljava/util/List;

    .line 49
    .line 50
    .line 51
    move-result-object v0

    .line 52
    iget-object p2, p2, Lcom/join/mgps/adapter/ForumPostsAdapter$e0$f;->a:Ljava/util/List;

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
    iget-object p2, p0, Lcom/join/mgps/adapter/ForumPostsAdapter;->m:Lcom/join/mgps/adapter/ForumPostsAdapter$c0;

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

.method private M0(Landroid/view/View;Lcom/join/mgps/dto/ForumBean$GameInfo;)V
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
    new-instance v0, Lcom/join/mgps/adapter/ForumPostsAdapter$j;

    .line 2
    .line 3
    invoke-direct {v0, p0, p2}, Lcom/join/mgps/adapter/ForumPostsAdapter$j;-><init>(Lcom/join/mgps/adapter/ForumPostsAdapter;Lcom/join/mgps/dto/ForumBean$GameInfo;)V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 7
    .line 8
    .line 9
    return-void
.end method

.method private N(Lcom/join/mgps/base/b;Lcom/join/mgps/adapter/ForumPostsAdapter$e0;)V
    .locals 0
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
    return-void
.end method

.method private O(Lcom/join/mgps/base/b;Lcom/join/mgps/adapter/ForumPostsAdapter$e0;)V
    .locals 5
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
    const-string v0, "0"

    .line 2
    .line 3
    const-string v1, ""

    .line 4
    .line 5
    :try_start_0
    invoke-virtual {p2}, Lcom/join/mgps/adapter/ForumPostsAdapter$e0;->a()Ljava/lang/Object;

    .line 6
    .line 7
    .line 8
    move-result-object p2

    .line 9
    check-cast p2, Lcom/join/mgps/adapter/ForumPostsAdapter$e0$g;

    .line 10
    .line 11
    if-nez p2, :cond_0

    .line 12
    .line 13
    return-void

    .line 14
    :cond_0
    iget-boolean v2, p2, Lcom/join/mgps/adapter/ForumPostsAdapter$e0$g;->h:Z

    .line 15
    .line 16
    const v3, 0x7f0a127e

    .line 17
    .line 18
    .line 19
    invoke-virtual {p1, v3, v2}, Lcom/join/mgps/base/b;->setGone(IZ)Lcom/join/mgps/base/b;

    .line 20
    .line 21
    .line 22
    iget-object v2, p2, Lcom/join/mgps/adapter/ForumPostsAdapter$e0$g;->b:Ljava/lang/String;

    .line 23
    .line 24
    const v3, 0x7f0a069a

    .line 25
    .line 26
    .line 27
    invoke-virtual {p1, v3, v2}, Lcom/join/mgps/base/b;->setText(ILjava/lang/CharSequence;)Lcom/join/mgps/base/b;

    .line 28
    .line 29
    .line 30
    iget-object v2, p2, Lcom/join/mgps/adapter/ForumPostsAdapter$e0$g;->b:Ljava/lang/String;

    .line 31
    .line 32
    invoke-static {v2}, Lcom/join/mgps/Util/t2;->i(Ljava/lang/String;)Z

    .line 33
    .line 34
    .line 35
    move-result v2

    .line 36
    invoke-virtual {p1, v3, v2}, Lcom/join/mgps/base/b;->setGone(IZ)Lcom/join/mgps/base/b;

    .line 37
    .line 38
    .line 39
    const v2, 0x7f0a06b1

    .line 40
    .line 41
    .line 42
    invoke-virtual {p1, v2}, Lcom/join/mgps/base/b;->getView(I)Landroid/view/View;

    .line 43
    .line 44
    .line 45
    move-result-object v2

    .line 46
    check-cast v2, Landroid/widget/TextView;

    .line 47
    .line 48
    new-instance v3, Ljava/lang/StringBuilder;

    .line 49
    .line 50
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 51
    .line 52
    .line 53
    iget v4, p2, Lcom/join/mgps/adapter/ForumPostsAdapter$e0$g;->c:I

    .line 54
    .line 55
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 56
    .line 57
    .line 58
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 59
    .line 60
    .line 61
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 62
    .line 63
    .line 64
    move-result-object v3

    .line 65
    invoke-static {v2, v3, v0}, Lcom/join/mgps/Util/r0;->D1(Landroid/widget/TextView;Ljava/lang/String;Ljava/lang/String;)V

    .line 66
    .line 67
    .line 68
    const v2, 0x7f0a06a0

    .line 69
    .line 70
    .line 71
    invoke-virtual {p1, v2}, Lcom/join/mgps/base/b;->getView(I)Landroid/view/View;

    .line 72
    .line 73
    .line 74
    move-result-object v2

    .line 75
    check-cast v2, Landroid/widget/TextView;

    .line 76
    .line 77
    new-instance v3, Ljava/lang/StringBuilder;

    .line 78
    .line 79
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 80
    .line 81
    .line 82
    iget v4, p2, Lcom/join/mgps/adapter/ForumPostsAdapter$e0$g;->d:I

    .line 83
    .line 84
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 85
    .line 86
    .line 87
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 88
    .line 89
    .line 90
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 91
    .line 92
    .line 93
    move-result-object v1

    .line 94
    invoke-static {v2, v1, v0}, Lcom/join/mgps/Util/r0;->D1(Landroid/widget/TextView;Ljava/lang/String;Ljava/lang/String;)V

    .line 95
    .line 96
    .line 97
    iget-object v0, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    .line 98
    .line 99
    iget-boolean v1, p2, Lcom/join/mgps/adapter/ForumPostsAdapter$e0$g;->g:Z

    .line 100
    .line 101
    iget v2, p2, Lcom/join/mgps/adapter/ForumPostsAdapter$e0$g;->e:I

    .line 102
    .line 103
    invoke-direct {p0, v0, v1, v2}, Lcom/join/mgps/adapter/ForumPostsAdapter;->q0(Landroid/view/View;ZI)V

    .line 104
    .line 105
    .line 106
    iget p2, p2, Lcom/join/mgps/adapter/ForumPostsAdapter$e0$g;->a:I

    .line 107
    .line 108
    const v0, 0x7f0a06aa

    .line 109
    .line 110
    .line 111
    invoke-virtual {p1, v0}, Lcom/join/mgps/base/b;->getView(I)Landroid/view/View;

    .line 112
    .line 113
    .line 114
    move-result-object p1

    .line 115
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    .line 116
    .line 117
    .line 118
    move-result-object p1

    .line 119
    check-cast p1, Landroid/view/View;

    .line 120
    .line 121
    new-instance v0, Lcom/join/mgps/adapter/ForumPostsAdapter$r;

    .line 122
    .line 123
    invoke-direct {v0, p0, p2}, Lcom/join/mgps/adapter/ForumPostsAdapter$r;-><init>(Lcom/join/mgps/adapter/ForumPostsAdapter;I)V

    .line 124
    .line 125
    .line 126
    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 127
    .line 128
    .line 129
    goto :goto_0

    .line 130
    :catch_0
    move-exception p1

    .line 131
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 132
    .line 133
    .line 134
    :goto_0
    return-void
.end method

.method private O0(Landroid/view/View;I)V
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
    new-instance v0, Lcom/join/mgps/adapter/ForumPostsAdapter$o;

    .line 5
    .line 6
    invoke-direct {v0, p0, p2}, Lcom/join/mgps/adapter/ForumPostsAdapter$o;-><init>(Lcom/join/mgps/adapter/ForumPostsAdapter;I)V

    .line 7
    .line 8
    .line 9
    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 10
    .line 11
    .line 12
    return-void
.end method

.method private P(Lcom/join/mgps/base/b;Lcom/join/mgps/adapter/ForumPostsAdapter$e0;)V
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
    invoke-virtual {p2}, Lcom/join/mgps/adapter/ForumPostsAdapter$e0;->a()Ljava/lang/Object;

    .line 2
    .line 3
    .line 4
    move-result-object p2

    .line 5
    check-cast p2, Lcom/join/mgps/adapter/ForumPostsAdapter$e0$h;

    .line 6
    .line 7
    if-nez p2, :cond_0

    .line 8
    .line 9
    return-void

    .line 10
    :cond_0
    iget-object v0, p2, Lcom/join/mgps/adapter/ForumPostsAdapter$e0$h;->b:Lcom/join/mgps/dto/ForumBean$GameInfo;

    .line 11
    .line 12
    invoke-virtual {v0}, Lcom/join/mgps/dto/ForumBean$GameInfo;->getGame_id()Ljava/lang/String;

    .line 13
    .line 14
    .line 15
    const v1, 0x7f0804a8

    .line 16
    .line 17
    .line 18
    const v2, 0x7f0a1045

    .line 19
    .line 20
    .line 21
    invoke-virtual {p1, v2, v1}, Lcom/join/mgps/base/b;->setBackgroundRes(II)Lcom/join/mgps/base/b;

    .line 22
    .line 23
    .line 24
    iget-object v1, p0, Lcom/join/mgps/adapter/ForumPostsAdapter;->k:Landroid/content/Context;

    .line 25
    .line 26
    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 27
    .line 28
    .line 29
    move-result-object v1

    .line 30
    const v3, 0x7f070b2c

    .line 31
    .line 32
    .line 33
    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    .line 34
    .line 35
    .line 36
    move-result v1

    .line 37
    invoke-virtual {p1, v2}, Lcom/join/mgps/base/b;->getView(I)Landroid/view/View;

    .line 38
    .line 39
    .line 40
    move-result-object v3

    .line 41
    invoke-virtual {v3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 42
    .line 43
    .line 44
    move-result-object v3

    .line 45
    check-cast v3, Landroid/widget/RelativeLayout$LayoutParams;

    .line 46
    .line 47
    iput v1, v3, Landroid/widget/RelativeLayout$LayoutParams;->width:I

    .line 48
    .line 49
    invoke-virtual {p1, v2}, Lcom/join/mgps/base/b;->getView(I)Landroid/view/View;

    .line 50
    .line 51
    .line 52
    move-result-object v1

    .line 53
    invoke-virtual {v1, v3}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 54
    .line 55
    .line 56
    const-string v1, "\u6253\u5f00"

    .line 57
    .line 58
    invoke-virtual {p1, v2, v1}, Lcom/join/mgps/base/b;->setText(ILjava/lang/CharSequence;)Lcom/join/mgps/base/b;

    .line 59
    .line 60
    .line 61
    invoke-virtual {v0}, Lcom/join/mgps/dto/ForumBean$GameInfo;->getGame_name()Ljava/lang/String;

    .line 62
    .line 63
    .line 64
    move-result-object v1

    .line 65
    const v3, 0x7f0a1042

    .line 66
    .line 67
    .line 68
    invoke-virtual {p1, v3, v1}, Lcom/join/mgps/base/b;->setText(ILjava/lang/CharSequence;)Lcom/join/mgps/base/b;

    .line 69
    .line 70
    .line 71
    const v1, 0x7f0a1044

    .line 72
    .line 73
    .line 74
    invoke-virtual {p1, v1}, Lcom/join/mgps/base/b;->getView(I)Landroid/view/View;

    .line 75
    .line 76
    .line 77
    move-result-object v1

    .line 78
    check-cast v1, Lcom/facebook/drawee/view/SimpleDraweeView;

    .line 79
    .line 80
    invoke-virtual {v0}, Lcom/join/mgps/dto/ForumBean$GameInfo;->getGame_ico_remote()Ljava/lang/String;

    .line 81
    .line 82
    .line 83
    move-result-object v0

    .line 84
    iget-object v3, p0, Lcom/join/mgps/adapter/ForumPostsAdapter;->k:Landroid/content/Context;

    .line 85
    .line 86
    invoke-static {v3}, Lcom/join/android/app/common/utils/l;->B(Landroid/content/Context;)Lcom/facebook/drawee/generic/RoundingParams;

    .line 87
    .line 88
    .line 89
    move-result-object v3

    .line 90
    invoke-static {v1, v0, v3}, Lcom/join/android/app/common/utils/l;->j(Lcom/facebook/drawee/view/SimpleDraweeView;Ljava/lang/String;Lcom/facebook/drawee/generic/RoundingParams;)V

    .line 91
    .line 92
    .line 93
    new-instance v0, Lcom/join/mgps/adapter/g0;

    .line 94
    .line 95
    invoke-direct {v0, p0, p2}, Lcom/join/mgps/adapter/g0;-><init>(Lcom/join/mgps/adapter/ForumPostsAdapter;Lcom/join/mgps/adapter/ForumPostsAdapter$e0$h;)V

    .line 96
    .line 97
    .line 98
    invoke-virtual {p1, v2}, Lcom/join/mgps/base/b;->getView(I)Landroid/view/View;

    .line 99
    .line 100
    .line 101
    move-result-object p2

    .line 102
    invoke-virtual {p2, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 103
    .line 104
    .line 105
    const p2, 0x7f0a135c

    .line 106
    .line 107
    .line 108
    invoke-virtual {p1, p2}, Lcom/join/mgps/base/b;->getView(I)Landroid/view/View;

    .line 109
    .line 110
    .line 111
    move-result-object p1

    .line 112
    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 113
    .line 114
    .line 115
    goto :goto_0

    .line 116
    :catch_0
    move-exception p1

    .line 117
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 118
    .line 119
    .line 120
    :goto_0
    return-void
.end method

.method private P0(Ljava/lang/String;Landroid/view/View;Lcom/facebook/imagepipeline/image/g;)Landroid/view/ViewGroup$LayoutParams;
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
    iget-object v6, p0, Lcom/join/mgps/adapter/ForumPostsAdapter;->h:Ljava/lang/String;

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

.method private Q(Lcom/join/mgps/base/b;Lcom/join/mgps/adapter/ForumPostsAdapter$e0;)V
    .locals 19
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
    move-object/from16 v7, p0

    .line 2
    .line 3
    move-object/from16 v0, p1

    .line 4
    .line 5
    :try_start_0
    invoke-virtual/range {p2 .. p2}, Lcom/join/mgps/adapter/ForumPostsAdapter$e0;->a()Ljava/lang/Object;

    .line 6
    .line 7
    .line 8
    move-result-object v1

    .line 9
    check-cast v1, Lcom/join/mgps/adapter/ForumPostsAdapter$e0$h;

    .line 10
    .line 11
    if-nez v1, :cond_0

    .line 12
    .line 13
    return-void

    .line 14
    :cond_0
    iget-object v8, v1, Lcom/join/mgps/adapter/ForumPostsAdapter$e0$h;->b:Lcom/join/mgps/dto/ForumBean$GameInfo;

    .line 15
    .line 16
    iget-object v9, v1, Lcom/join/mgps/adapter/ForumPostsAdapter$e0$h;->a:Ljava/lang/String;

    .line 17
    .line 18
    invoke-virtual {v8}, Lcom/join/mgps/dto/ForumBean$GameInfo;->getGame_id()Ljava/lang/String;

    .line 19
    .line 20
    .line 21
    move-result-object v10

    .line 22
    const v1, 0x7f0804a8

    .line 23
    .line 24
    .line 25
    const v11, 0x7f0a1045

    .line 26
    .line 27
    .line 28
    invoke-virtual {v0, v11, v1}, Lcom/join/mgps/base/b;->setBackgroundRes(II)Lcom/join/mgps/base/b;

    .line 29
    .line 30
    .line 31
    iget-object v1, v7, Lcom/join/mgps/adapter/ForumPostsAdapter;->k:Landroid/content/Context;

    .line 32
    .line 33
    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 34
    .line 35
    .line 36
    move-result-object v1

    .line 37
    const v2, 0x7f070b2c

    .line 38
    .line 39
    .line 40
    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    .line 41
    .line 42
    .line 43
    move-result v1

    .line 44
    invoke-virtual {v0, v11}, Lcom/join/mgps/base/b;->getView(I)Landroid/view/View;

    .line 45
    .line 46
    .line 47
    move-result-object v2

    .line 48
    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 49
    .line 50
    .line 51
    move-result-object v2

    .line 52
    check-cast v2, Landroid/widget/RelativeLayout$LayoutParams;

    .line 53
    .line 54
    iput v1, v2, Landroid/widget/RelativeLayout$LayoutParams;->width:I

    .line 55
    .line 56
    invoke-virtual {v0, v11}, Lcom/join/mgps/base/b;->getView(I)Landroid/view/View;

    .line 57
    .line 58
    .line 59
    move-result-object v1

    .line 60
    invoke-virtual {v1, v2}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 61
    .line 62
    .line 63
    invoke-virtual {v8}, Lcom/join/mgps/dto/ForumBean$GameInfo;->getGame_name()Ljava/lang/String;

    .line 64
    .line 65
    .line 66
    move-result-object v1

    .line 67
    const v2, 0x7f0a1042

    .line 68
    .line 69
    .line 70
    invoke-virtual {v0, v2, v1}, Lcom/join/mgps/base/b;->setText(ILjava/lang/CharSequence;)Lcom/join/mgps/base/b;

    .line 71
    .line 72
    .line 73
    invoke-virtual {v8}, Lcom/join/mgps/dto/ForumBean$GameInfo;->getGame_desc()Ljava/lang/String;

    .line 74
    .line 75
    .line 76
    move-result-object v1

    .line 77
    const v2, 0x7f0a1043

    .line 78
    .line 79
    .line 80
    invoke-virtual {v0, v2, v1}, Lcom/join/mgps/base/b;->setText(ILjava/lang/CharSequence;)Lcom/join/mgps/base/b;

    .line 81
    .line 82
    .line 83
    invoke-virtual {v8}, Lcom/join/mgps/dto/ForumBean$GameInfo;->getGame_size()Ljava/lang/String;

    .line 84
    .line 85
    .line 86
    move-result-object v14

    .line 87
    const v1, 0x7f0a1044

    .line 88
    .line 89
    .line 90
    invoke-virtual {v0, v1}, Lcom/join/mgps/base/b;->getView(I)Landroid/view/View;

    .line 91
    .line 92
    .line 93
    move-result-object v1

    .line 94
    check-cast v1, Lcom/facebook/drawee/view/SimpleDraweeView;

    .line 95
    .line 96
    invoke-virtual {v8}, Lcom/join/mgps/dto/ForumBean$GameInfo;->getGame_ico_remote()Ljava/lang/String;

    .line 97
    .line 98
    .line 99
    move-result-object v2

    .line 100
    iget-object v3, v7, Lcom/join/mgps/adapter/ForumPostsAdapter;->k:Landroid/content/Context;

    .line 101
    .line 102
    invoke-static {v3}, Lcom/join/android/app/common/utils/l;->B(Landroid/content/Context;)Lcom/facebook/drawee/generic/RoundingParams;

    .line 103
    .line 104
    .line 105
    move-result-object v3

    .line 106
    invoke-static {v1, v2, v3}, Lcom/join/android/app/common/utils/l;->j(Lcom/facebook/drawee/view/SimpleDraweeView;Ljava/lang/String;Lcom/facebook/drawee/generic/RoundingParams;)V

    .line 107
    .line 108
    .line 109
    invoke-virtual {v8}, Lcom/join/mgps/dto/ForumBean$GameInfo;->getGame_tag_info()Ljava/util/List;

    .line 110
    .line 111
    .line 112
    move-result-object v12

    .line 113
    const/4 v13, 0x0

    .line 114
    invoke-direct {v7, v0, v13}, Lcom/join/mgps/adapter/ForumPostsAdapter;->U0(Lcom/join/mgps/base/b;I)V

    .line 115
    .line 116
    .line 117
    invoke-virtual {v8}, Lcom/join/mgps/dto/ForumBean$GameInfo;->getDownloadTask()Lcom/github/snowdream/android/app/downloader/DownloadTask;

    .line 118
    .line 119
    .line 120
    move-result-object v4

    .line 121
    if-eqz v4, :cond_1

    .line 122
    .line 123
    invoke-virtual {v7, v0, v4}, Lcom/join/mgps/adapter/ForumPostsAdapter;->C0(Lcom/join/mgps/base/b;Ljava/lang/Object;)V

    .line 124
    .line 125
    .line 126
    goto :goto_1

    .line 127
    :cond_1
    invoke-virtual {v8}, Lcom/join/mgps/dto/ForumBean$GameInfo;->getPay_tag_info()Lcom/join/mgps/dto/PayTagInfo;

    .line 128
    .line 129
    .line 130
    move-result-object v1

    .line 131
    if-eqz v1, :cond_2

    .line 132
    .line 133
    invoke-virtual {v8}, Lcom/join/mgps/dto/ForumBean$GameInfo;->getPay_tag_info()Lcom/join/mgps/dto/PayTagInfo;

    .line 134
    .line 135
    .line 136
    move-result-object v1

    .line 137
    invoke-virtual {v1}, Lcom/join/mgps/dto/PayTagInfo;->getPay_game_amount()I

    .line 138
    .line 139
    .line 140
    move-result v1

    .line 141
    if-lez v1, :cond_2

    .line 142
    .line 143
    invoke-static {}, Lt6/e0;->o()Lt6/e0;

    .line 144
    .line 145
    .line 146
    move-result-object v1

    .line 147
    invoke-virtual {v8}, Lcom/join/mgps/dto/ForumBean$GameInfo;->getGame_id()Ljava/lang/String;

    .line 148
    .line 149
    .line 150
    move-result-object v2

    .line 151
    invoke-virtual {v1, v2}, Lt6/e0;->p(Ljava/lang/String;)Z

    .line 152
    .line 153
    .line 154
    move-result v1

    .line 155
    if-nez v1, :cond_2

    .line 156
    .line 157
    invoke-virtual {v0, v11}, Lcom/join/mgps/base/b;->getView(I)Landroid/view/View;

    .line 158
    .line 159
    .line 160
    move-result-object v1

    .line 161
    check-cast v1, Landroid/widget/TextView;

    .line 162
    .line 163
    invoke-virtual {v8}, Lcom/join/mgps/dto/ForumBean$GameInfo;->getPay_tag_info()Lcom/join/mgps/dto/PayTagInfo;

    .line 164
    .line 165
    .line 166
    move-result-object v2

    .line 167
    invoke-virtual {v2}, Lcom/join/mgps/dto/PayTagInfo;->getPay_game_amount()I

    .line 168
    .line 169
    .line 170
    move-result v2

    .line 171
    invoke-virtual {v7, v1, v2}, Lcom/join/mgps/adapter/ForumPostsAdapter;->B0(Landroid/widget/TextView;I)V

    .line 172
    .line 173
    .line 174
    goto :goto_0

    .line 175
    :cond_2
    invoke-virtual {v0, v11}, Lcom/join/mgps/base/b;->getView(I)Landroid/view/View;

    .line 176
    .line 177
    .line 178
    move-result-object v1

    .line 179
    invoke-virtual {v8}, Lcom/join/mgps/dto/ForumBean$GameInfo;->getDown_status()I

    .line 180
    .line 181
    .line 182
    move-result v2

    .line 183
    invoke-virtual {v7, v1, v2}, Lcom/join/mgps/adapter/ForumPostsAdapter;->A0(Landroid/view/View;I)V

    .line 184
    .line 185
    .line 186
    :goto_0
    invoke-virtual {v0, v11}, Lcom/join/mgps/base/b;->getView(I)Landroid/view/View;

    .line 187
    .line 188
    .line 189
    move-result-object v15

    .line 190
    new-instance v6, Lcom/join/mgps/adapter/ForumPostsAdapter$k;

    .line 191
    .line 192
    move-object v1, v6

    .line 193
    move-object/from16 v2, p0

    .line 194
    .line 195
    move-object v3, v8

    .line 196
    move-object v5, v9

    .line 197
    move-object v11, v6

    .line 198
    move-object v6, v10

    .line 199
    invoke-direct/range {v1 .. v6}, Lcom/join/mgps/adapter/ForumPostsAdapter$k;-><init>(Lcom/join/mgps/adapter/ForumPostsAdapter;Lcom/join/mgps/dto/ForumBean$GameInfo;Lcom/github/snowdream/android/app/downloader/DownloadTask;Ljava/lang/String;Ljava/lang/String;)V

    .line 200
    .line 201
    .line 202
    invoke-virtual {v15, v11}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 203
    .line 204
    .line 205
    :goto_1
    new-instance v1, Ljava/lang/StringBuilder;

    .line 206
    .line 207
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 208
    .line 209
    .line 210
    sget-object v2, Lcom/join/mgps/enums/ConstantIntEnum;->H5:Lcom/join/mgps/enums/ConstantIntEnum;

    .line 211
    .line 212
    invoke-virtual {v2}, Lcom/join/mgps/enums/ConstantIntEnum;->value()I

    .line 213
    .line 214
    .line 215
    move-result v2

    .line 216
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 217
    .line 218
    .line 219
    const-string v2, ""

    .line 220
    .line 221
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 222
    .line 223
    .line 224
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 225
    .line 226
    .line 227
    move-result-object v1

    .line 228
    invoke-virtual {v8}, Lcom/join/mgps/dto/ForumBean$GameInfo;->getPlugin_num()Ljava/lang/String;

    .line 229
    .line 230
    .line 231
    move-result-object v2

    .line 232
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 233
    .line 234
    .line 235
    move-result v1

    .line 236
    const v2, 0x7f0a1764

    .line 237
    .line 238
    .line 239
    if-eqz v1, :cond_3

    .line 240
    .line 241
    invoke-virtual {v0, v2, v13}, Lcom/join/mgps/base/b;->setGone(IZ)Lcom/join/mgps/base/b;

    .line 242
    .line 243
    .line 244
    const v1, 0x7f080f8b

    .line 245
    .line 246
    .line 247
    const v2, 0x7f0a1045

    .line 248
    .line 249
    .line 250
    invoke-virtual {v0, v2, v1}, Lcom/join/mgps/base/b;->setBackgroundRes(II)Lcom/join/mgps/base/b;

    .line 251
    .line 252
    .line 253
    const-string v1, "\u5f00\u59cb"

    .line 254
    .line 255
    invoke-virtual {v0, v2, v1}, Lcom/join/mgps/base/b;->setText(ILjava/lang/CharSequence;)Lcom/join/mgps/base/b;

    .line 256
    .line 257
    .line 258
    iget-object v1, v7, Lcom/join/mgps/adapter/ForumPostsAdapter;->k:Landroid/content/Context;

    .line 259
    .line 260
    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 261
    .line 262
    .line 263
    move-result-object v1

    .line 264
    const v3, 0x7f06002b

    .line 265
    .line 266
    .line 267
    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getColor(I)I

    .line 268
    .line 269
    .line 270
    move-result v1

    .line 271
    invoke-virtual {v0, v2, v1}, Lcom/join/mgps/base/b;->setTextColor(II)Lcom/join/mgps/base/b;

    .line 272
    .line 273
    .line 274
    goto :goto_2

    .line 275
    :cond_3
    const/4 v1, 0x1

    .line 276
    invoke-virtual {v0, v2, v1}, Lcom/join/mgps/base/b;->setGone(IZ)Lcom/join/mgps/base/b;

    .line 277
    .line 278
    .line 279
    invoke-virtual {v0, v2}, Lcom/join/mgps/base/b;->getView(I)Landroid/view/View;

    .line 280
    .line 281
    .line 282
    move-result-object v1

    .line 283
    check-cast v1, Landroid/widget/LinearLayout;

    .line 284
    .line 285
    iget-object v3, v7, Lcom/join/mgps/adapter/ForumPostsAdapter;->k:Landroid/content/Context;

    .line 286
    .line 287
    invoke-static {v12, v1, v3}, Lcom/join/mgps/Util/r0;->c(Ljava/util/List;Landroid/widget/LinearLayout;Landroid/content/Context;)V

    .line 288
    .line 289
    .line 290
    invoke-virtual {v8}, Lcom/join/mgps/dto/ForumBean$GameInfo;->getScore()Ljava/lang/String;

    .line 291
    .line 292
    .line 293
    move-result-object v12

    .line 294
    invoke-virtual {v8}, Lcom/join/mgps/dto/ForumBean$GameInfo;->getDown_count()I

    .line 295
    .line 296
    .line 297
    move-result v13

    .line 298
    invoke-virtual {v8}, Lcom/join/mgps/dto/ForumBean$GameInfo;->getSp_tag_info()Lcom/join/mgps/dto/TipNew;

    .line 299
    .line 300
    .line 301
    move-result-object v15

    .line 302
    const/16 v16, 0x0

    .line 303
    .line 304
    invoke-virtual {v0, v2}, Lcom/join/mgps/base/b;->getView(I)Landroid/view/View;

    .line 305
    .line 306
    .line 307
    move-result-object v1

    .line 308
    move-object/from16 v17, v1

    .line 309
    .line 310
    check-cast v17, Landroid/widget/LinearLayout;

    .line 311
    .line 312
    iget-object v1, v7, Lcom/join/mgps/adapter/ForumPostsAdapter;->k:Landroid/content/Context;

    .line 313
    .line 314
    move-object/from16 v18, v1

    .line 315
    .line 316
    invoke-static/range {v12 .. v18}, Lcom/join/mgps/Util/UtilsMy;->K(Ljava/lang/String;ILjava/lang/String;Lcom/join/mgps/dto/TipNew;Ljava/util/List;Landroid/widget/LinearLayout;Landroid/content/Context;)V

    .line 317
    .line 318
    .line 319
    invoke-virtual {v8}, Lcom/join/mgps/dto/ForumBean$GameInfo;->getSp_tag_info()Lcom/join/mgps/dto/TipNew;

    .line 320
    .line 321
    .line 322
    move-result-object v1

    .line 323
    iget-object v2, v0, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    .line 324
    .line 325
    invoke-virtual {v8}, Lcom/join/mgps/dto/ForumBean$GameInfo;->getDownloadTask()Lcom/github/snowdream/android/app/downloader/DownloadTask;

    .line 326
    .line 327
    .line 328
    move-result-object v3

    .line 329
    invoke-static {v1, v2, v3}, Lcom/join/mgps/Util/UtilsMy;->A3(Lcom/join/mgps/dto/TipNew;Landroid/view/View;Lcom/github/snowdream/android/app/downloader/DownloadTask;)V

    .line 330
    .line 331
    .line 332
    :goto_2
    const v1, 0x7f0a135c

    .line 333
    .line 334
    .line 335
    invoke-virtual {v0, v1}, Lcom/join/mgps/base/b;->getView(I)Landroid/view/View;

    .line 336
    .line 337
    .line 338
    move-result-object v0

    .line 339
    new-instance v1, Lcom/join/mgps/adapter/ForumPostsAdapter$p;

    .line 340
    .line 341
    invoke-direct {v1, v7, v9, v10, v8}, Lcom/join/mgps/adapter/ForumPostsAdapter$p;-><init>(Lcom/join/mgps/adapter/ForumPostsAdapter;Ljava/lang/String;Ljava/lang/String;Lcom/join/mgps/dto/ForumBean$GameInfo;)V

    .line 342
    .line 343
    .line 344
    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 345
    .line 346
    .line 347
    goto :goto_3

    .line 348
    :catch_0
    move-exception v0

    .line 349
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 350
    .line 351
    .line 352
    :goto_3
    return-void
.end method

.method private Q0(Landroid/view/View;Ljava/lang/CharSequence;)V
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

.method private R(Lcom/join/mgps/base/b;Lcom/join/mgps/adapter/ForumPostsAdapter$e0;)V
    .locals 8
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
    invoke-virtual {p2}, Lcom/join/mgps/adapter/ForumPostsAdapter$e0;->a()Ljava/lang/Object;

    .line 2
    .line 3
    .line 4
    move-result-object p2

    .line 5
    check-cast p2, Lcom/join/mgps/adapter/ForumPostsAdapter$e0$i;

    .line 6
    .line 7
    if-nez p2, :cond_0

    .line 8
    .line 9
    return-void

    .line 10
    :cond_0
    iget v0, p2, Lcom/join/mgps/adapter/ForumPostsAdapter$e0$i;->j:I

    .line 11
    .line 12
    const v1, 0x7f0a0669

    .line 13
    .line 14
    .line 15
    const/4 v2, 0x0

    .line 16
    const/4 v3, 0x1

    .line 17
    if-eq v0, v3, :cond_1

    .line 18
    .line 19
    invoke-virtual {p1, v1, v2}, Lcom/join/mgps/base/b;->setGone(IZ)Lcom/join/mgps/base/b;

    .line 20
    .line 21
    .line 22
    goto :goto_0

    .line 23
    :cond_1
    invoke-virtual {p1, v1, v3}, Lcom/join/mgps/base/b;->setGone(IZ)Lcom/join/mgps/base/b;

    .line 24
    .line 25
    .line 26
    :goto_0
    new-instance v0, Ljava/lang/StringBuilder;

    .line 27
    .line 28
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 29
    .line 30
    .line 31
    const-string v1, "\u53d1\u5e03\u4e8e "

    .line 32
    .line 33
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 34
    .line 35
    .line 36
    iget-wide v4, p2, Lcom/join/mgps/adapter/ForumPostsAdapter$e0$i;->e:J

    .line 37
    .line 38
    const-wide/16 v6, 0x3e8

    .line 39
    .line 40
    mul-long v4, v4, v6

    .line 41
    .line 42
    invoke-static {v4, v5}, Lcom/join/android/app/common/utils/i;->a(J)Ljava/lang/String;

    .line 43
    .line 44
    .line 45
    move-result-object v1

    .line 46
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 47
    .line 48
    .line 49
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 50
    .line 51
    .line 52
    move-result-object v0

    .line 53
    const v1, 0x7f0a069d

    .line 54
    .line 55
    .line 56
    invoke-virtual {p1, v1, v0}, Lcom/join/mgps/base/b;->setText(ILjava/lang/CharSequence;)Lcom/join/mgps/base/b;

    .line 57
    .line 58
    .line 59
    iget-object v0, p2, Lcom/join/mgps/adapter/ForumPostsAdapter$e0$i;->q:Ljava/lang/String;

    .line 60
    .line 61
    const v4, 0x7f0a07ce

    .line 62
    .line 63
    .line 64
    invoke-virtual {p1, v4, v0}, Lcom/join/mgps/base/b;->setText(ILjava/lang/CharSequence;)Lcom/join/mgps/base/b;

    .line 65
    .line 66
    .line 67
    const v0, 0x7f0a07cf

    .line 68
    .line 69
    .line 70
    invoke-virtual {p1, v0}, Lcom/join/mgps/base/b;->getView(I)Landroid/view/View;

    .line 71
    .line 72
    .line 73
    move-result-object v0

    .line 74
    iget v4, p2, Lcom/join/mgps/adapter/ForumPostsAdapter$e0$i;->r:I

    .line 75
    .line 76
    invoke-direct {p0, v0, v4}, Lcom/join/mgps/adapter/ForumPostsAdapter;->L0(Landroid/view/View;I)V

    .line 77
    .line 78
    .line 79
    iget-object v0, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    .line 80
    .line 81
    invoke-virtual {p0, v0}, Lcom/join/mgps/adapter/ForumPostsAdapter;->G0(Landroid/view/View;)V

    .line 82
    .line 83
    .line 84
    const v0, 0x7f0a0683

    .line 85
    .line 86
    .line 87
    invoke-virtual {p1, v0, v2}, Lcom/join/mgps/base/b;->setGone(IZ)Lcom/join/mgps/base/b;

    .line 88
    .line 89
    .line 90
    invoke-virtual {p1, v0}, Lcom/join/mgps/base/b;->getView(I)Landroid/view/View;

    .line 91
    .line 92
    .line 93
    move-result-object v0

    .line 94
    iget v4, p2, Lcom/join/mgps/adapter/ForumPostsAdapter$e0$i;->g:I

    .line 95
    .line 96
    invoke-virtual {p0, v0, v4}, Lcom/join/mgps/adapter/ForumPostsAdapter;->J0(Landroid/view/View;I)V

    .line 97
    .line 98
    .line 99
    new-array v0, v3, [Landroid/view/View;

    .line 100
    .line 101
    invoke-virtual {p1, v1}, Lcom/join/mgps/base/b;->getView(I)Landroid/view/View;

    .line 102
    .line 103
    .line 104
    move-result-object v1

    .line 105
    aput-object v1, v0, v2

    .line 106
    .line 107
    invoke-static {v0}, Lcom/join/mgps/Util/r0;->S0([Landroid/view/View;)V

    .line 108
    .line 109
    .line 110
    iget-boolean v0, p2, Lcom/join/mgps/adapter/ForumPostsAdapter$e0$i;->s:Z

    .line 111
    .line 112
    const v1, 0x7f0a17f6

    .line 113
    .line 114
    .line 115
    if-eqz v0, :cond_2

    .line 116
    .line 117
    new-instance v0, Ljava/lang/StringBuilder;

    .line 118
    .line 119
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 120
    .line 121
    .line 122
    const-string v2, "\u8d4f"

    .line 123
    .line 124
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 125
    .line 126
    .line 127
    iget-object p2, p2, Lcom/join/mgps/adapter/ForumPostsAdapter$e0$i;->t:Ljava/lang/String;

    .line 128
    .line 129
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 130
    .line 131
    .line 132
    const-string p2, "\u94dc\u677f"

    .line 133
    .line 134
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 135
    .line 136
    .line 137
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 138
    .line 139
    .line 140
    move-result-object p2

    .line 141
    invoke-virtual {p1, v1, p2}, Lcom/join/mgps/base/b;->setText(ILjava/lang/CharSequence;)Lcom/join/mgps/base/b;

    .line 142
    .line 143
    .line 144
    invoke-virtual {p1, v1}, Lcom/join/mgps/base/b;->getView(I)Landroid/view/View;

    .line 145
    .line 146
    .line 147
    move-result-object p2

    .line 148
    check-cast p2, Landroid/widget/TextView;

    .line 149
    .line 150
    const/16 v0, 0x11

    .line 151
    .line 152
    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setGravity(I)V

    .line 153
    .line 154
    .line 155
    invoke-virtual {p1, v1, v3}, Lcom/join/mgps/base/b;->setGone(IZ)Lcom/join/mgps/base/b;

    .line 156
    .line 157
    .line 158
    goto :goto_1

    .line 159
    :cond_2
    invoke-virtual {p1, v1, v2}, Lcom/join/mgps/base/b;->setGone(IZ)Lcom/join/mgps/base/b;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 160
    .line 161
    .line 162
    goto :goto_1

    .line 163
    :catch_0
    move-exception p1

    .line 164
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 165
    .line 166
    .line 167
    :goto_1
    return-void
.end method

.method private R0(Landroid/view/View;I)V
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

.method private S(Lcom/join/mgps/base/b;Lcom/join/mgps/adapter/ForumPostsAdapter$e0;)V
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
    invoke-virtual {p2}, Lcom/join/mgps/adapter/ForumPostsAdapter$e0;->a()Ljava/lang/Object;

    .line 2
    .line 3
    .line 4
    move-result-object p2

    .line 5
    check-cast p2, Lcom/join/mgps/adapter/ForumPostsAdapter$e0$j;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 6
    .line 7
    if-nez p2, :cond_0

    .line 8
    .line 9
    return-void

    .line 10
    :cond_0
    const v0, 0x7f0a1ba6

    .line 11
    .line 12
    .line 13
    :try_start_1
    invoke-virtual {p1, v0}, Lcom/join/mgps/base/b;->getView(I)Landroid/view/View;

    .line 14
    .line 15
    .line 16
    move-result-object v1

    .line 17
    check-cast v1, Lcom/join/mgps/customview/VipView;

    .line 18
    .line 19
    iget v2, p2, Lcom/join/mgps/adapter/ForumPostsAdapter$e0$j;->j:I

    .line 20
    .line 21
    iget v3, p2, Lcom/join/mgps/adapter/ForumPostsAdapter$e0$j;->k:I

    .line 22
    .line 23
    invoke-virtual {v1, v2, v3}, Lcom/join/mgps/customview/VipView;->setVipData(II)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 24
    .line 25
    .line 26
    goto :goto_0

    .line 27
    :catch_0
    move-exception v1

    .line 28
    :try_start_2
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 29
    .line 30
    .line 31
    :goto_0
    iget v1, p2, Lcom/join/mgps/adapter/ForumPostsAdapter$e0$j;->i:I

    .line 32
    .line 33
    const v2, 0x7f0a0669

    .line 34
    .line 35
    .line 36
    const/4 v3, 0x0

    .line 37
    const/4 v4, 0x1

    .line 38
    if-eq v1, v4, :cond_1

    .line 39
    .line 40
    invoke-virtual {p1, v2, v3}, Lcom/join/mgps/base/b;->setGone(IZ)Lcom/join/mgps/base/b;

    .line 41
    .line 42
    .line 43
    goto :goto_1

    .line 44
    :cond_1
    invoke-virtual {p1, v2, v4}, Lcom/join/mgps/base/b;->setGone(IZ)Lcom/join/mgps/base/b;

    .line 45
    .line 46
    .line 47
    :goto_1
    const v1, 0x7f0a0683

    .line 48
    .line 49
    .line 50
    invoke-virtual {p1, v1, v4}, Lcom/join/mgps/base/b;->setGone(IZ)Lcom/join/mgps/base/b;

    .line 51
    .line 52
    .line 53
    iget-boolean v2, p2, Lcom/join/mgps/adapter/ForumPostsAdapter$e0$j;->a:Z

    .line 54
    .line 55
    if-nez v2, :cond_2

    .line 56
    .line 57
    const/4 v2, 0x1

    .line 58
    goto :goto_2

    .line 59
    :cond_2
    const/4 v2, 0x0

    .line 60
    :goto_2
    const v5, 0x7f0a06a1

    .line 61
    .line 62
    .line 63
    invoke-virtual {p1, v5, v2}, Lcom/join/mgps/base/b;->setGone(IZ)Lcom/join/mgps/base/b;

    .line 64
    .line 65
    .line 66
    const v2, 0x7f0a06a3

    .line 67
    .line 68
    .line 69
    invoke-virtual {p1, v2, v4}, Lcom/join/mgps/base/b;->setGone(IZ)Lcom/join/mgps/base/b;

    .line 70
    .line 71
    .line 72
    iget-object v2, p2, Lcom/join/mgps/adapter/ForumPostsAdapter$e0$j;->c:Ljava/lang/String;

    .line 73
    .line 74
    const v5, 0x7f0a06a8

    .line 75
    .line 76
    .line 77
    invoke-virtual {p1, v5, v2}, Lcom/join/mgps/base/b;->setText(ILjava/lang/CharSequence;)Lcom/join/mgps/base/b;

    .line 78
    .line 79
    .line 80
    iget-wide v6, p2, Lcom/join/mgps/adapter/ForumPostsAdapter$e0$j;->d:J

    .line 81
    .line 82
    const-wide/16 v8, 0x3e8

    .line 83
    .line 84
    mul-long v6, v6, v8

    .line 85
    .line 86
    invoke-static {v6, v7}, Lcom/join/android/app/common/utils/i;->a(J)Ljava/lang/String;

    .line 87
    .line 88
    .line 89
    move-result-object v2

    .line 90
    const v6, 0x7f0a069d

    .line 91
    .line 92
    .line 93
    invoke-virtual {p1, v6, v2}, Lcom/join/mgps/base/b;->setText(ILjava/lang/CharSequence;)Lcom/join/mgps/base/b;

    .line 94
    .line 95
    .line 96
    iget-boolean v2, p2, Lcom/join/mgps/adapter/ForumPostsAdapter$e0$j;->e:Z

    .line 97
    .line 98
    const v7, 0x7f0a06ae

    .line 99
    .line 100
    .line 101
    invoke-virtual {p1, v7, v2}, Lcom/join/mgps/base/b;->setGone(IZ)Lcom/join/mgps/base/b;

    .line 102
    .line 103
    .line 104
    iget-boolean v2, p2, Lcom/join/mgps/adapter/ForumPostsAdapter$e0$j;->h:Z

    .line 105
    .line 106
    const v7, 0x7f0a1186

    .line 107
    .line 108
    .line 109
    invoke-virtual {p1, v7, v2}, Lcom/join/mgps/base/b;->setGone(IZ)Lcom/join/mgps/base/b;

    .line 110
    .line 111
    .line 112
    iget-boolean v2, p2, Lcom/join/mgps/adapter/ForumPostsAdapter$e0$j;->g:Z

    .line 113
    .line 114
    const v7, 0x7f0a06a7

    .line 115
    .line 116
    .line 117
    if-eqz v2, :cond_3

    .line 118
    .line 119
    iget-object v2, p0, Lcom/join/mgps/adapter/ForumPostsAdapter;->k:Landroid/content/Context;

    .line 120
    .line 121
    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 122
    .line 123
    .line 124
    move-result-object v2

    .line 125
    const v8, 0x7f06002b

    .line 126
    .line 127
    .line 128
    invoke-virtual {v2, v8}, Landroid/content/res/Resources;->getColor(I)I

    .line 129
    .line 130
    .line 131
    move-result v2

    .line 132
    invoke-virtual {p1, v5, v2}, Lcom/join/mgps/base/b;->setTextColor(II)Lcom/join/mgps/base/b;

    .line 133
    .line 134
    .line 135
    invoke-virtual {p1, v7, v4}, Lcom/join/mgps/base/b;->setGone(IZ)Lcom/join/mgps/base/b;

    .line 136
    .line 137
    .line 138
    goto :goto_3

    .line 139
    :cond_3
    iget-object v2, p0, Lcom/join/mgps/adapter/ForumPostsAdapter;->k:Landroid/content/Context;

    .line 140
    .line 141
    invoke-virtual {p1, v5}, Lcom/join/mgps/base/b;->getView(I)Landroid/view/View;

    .line 142
    .line 143
    .line 144
    move-result-object v8

    .line 145
    check-cast v8, Landroid/widget/TextView;

    .line 146
    .line 147
    iget v9, p2, Lcom/join/mgps/adapter/ForumPostsAdapter$e0$j;->j:I

    .line 148
    .line 149
    iget v10, p2, Lcom/join/mgps/adapter/ForumPostsAdapter$e0$j;->k:I

    .line 150
    .line 151
    const v11, 0x7f06014c

    .line 152
    .line 153
    .line 154
    invoke-static {v2, v8, v9, v10, v11}, Lcom/join/mgps/Util/UtilsMy;->R3(Landroid/content/Context;Landroid/widget/TextView;III)Z

    .line 155
    .line 156
    .line 157
    invoke-virtual {p1, v7, v3}, Lcom/join/mgps/base/b;->setGone(IZ)Lcom/join/mgps/base/b;

    .line 158
    .line 159
    .line 160
    :goto_3
    const v2, 0x7f0a069e

    .line 161
    .line 162
    .line 163
    invoke-virtual {p1, v2}, Lcom/join/mgps/base/b;->getView(I)Landroid/view/View;

    .line 164
    .line 165
    .line 166
    move-result-object v7

    .line 167
    check-cast v7, Lcom/facebook/drawee/view/SimpleDraweeView;

    .line 168
    .line 169
    iget-object v8, p2, Lcom/join/mgps/adapter/ForumPostsAdapter$e0$j;->b:Ljava/lang/String;

    .line 170
    .line 171
    invoke-static {v7, v8}, Lcom/join/android/app/common/utils/l;->y(Lcom/facebook/drawee/view/SimpleDraweeView;Ljava/lang/String;)V

    .line 172
    .line 173
    .line 174
    invoke-virtual {p1, v2}, Lcom/join/mgps/base/b;->getView(I)Landroid/view/View;

    .line 175
    .line 176
    .line 177
    move-result-object v7

    .line 178
    new-instance v8, Lcom/join/mgps/adapter/ForumPostsAdapter$q;

    .line 179
    .line 180
    invoke-direct {v8, p0, p2}, Lcom/join/mgps/adapter/ForumPostsAdapter$q;-><init>(Lcom/join/mgps/adapter/ForumPostsAdapter;Lcom/join/mgps/adapter/ForumPostsAdapter$e0$j;)V

    .line 181
    .line 182
    .line 183
    invoke-virtual {v7, v8}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 184
    .line 185
    .line 186
    iget-object v7, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    .line 187
    .line 188
    invoke-virtual {p0, v7}, Lcom/join/mgps/adapter/ForumPostsAdapter;->G0(Landroid/view/View;)V

    .line 189
    .line 190
    .line 191
    invoke-virtual {p1, v1, v3}, Lcom/join/mgps/base/b;->setGone(IZ)Lcom/join/mgps/base/b;

    .line 192
    .line 193
    .line 194
    invoke-virtual {p1, v1}, Lcom/join/mgps/base/b;->getView(I)Landroid/view/View;

    .line 195
    .line 196
    .line 197
    move-result-object v1

    .line 198
    iget v7, p2, Lcom/join/mgps/adapter/ForumPostsAdapter$e0$j;->f:I

    .line 199
    .line 200
    invoke-virtual {p0, v1, v7}, Lcom/join/mgps/adapter/ForumPostsAdapter;->J0(Landroid/view/View;I)V

    .line 201
    .line 202
    .line 203
    const/4 v1, 0x3

    .line 204
    new-array v1, v1, [Landroid/view/View;

    .line 205
    .line 206
    invoke-virtual {p1, v2}, Lcom/join/mgps/base/b;->getView(I)Landroid/view/View;

    .line 207
    .line 208
    .line 209
    move-result-object v2

    .line 210
    aput-object v2, v1, v3

    .line 211
    .line 212
    invoke-virtual {p1, v5}, Lcom/join/mgps/base/b;->getView(I)Landroid/view/View;

    .line 213
    .line 214
    .line 215
    move-result-object v2

    .line 216
    aput-object v2, v1, v4

    .line 217
    .line 218
    invoke-virtual {p1, v6}, Lcom/join/mgps/base/b;->getView(I)Landroid/view/View;

    .line 219
    .line 220
    .line 221
    move-result-object v2

    .line 222
    const/4 v5, 0x2

    .line 223
    aput-object v2, v1, v5

    .line 224
    .line 225
    invoke-static {v1}, Lcom/join/mgps/Util/r0;->S0([Landroid/view/View;)V

    .line 226
    .line 227
    .line 228
    new-array v1, v4, [Landroid/view/View;

    .line 229
    .line 230
    invoke-virtual {p1, v0}, Lcom/join/mgps/base/b;->getView(I)Landroid/view/View;

    .line 231
    .line 232
    .line 233
    move-result-object v0

    .line 234
    aput-object v0, v1, v3

    .line 235
    .line 236
    invoke-static {v1}, Lcom/join/mgps/Util/r0;->U0([Landroid/view/View;)V

    .line 237
    .line 238
    .line 239
    iget-object v0, p2, Lcom/join/mgps/adapter/ForumPostsAdapter$e0$j;->m:Ljava/lang/String;

    .line 240
    .line 241
    iget-object p2, p2, Lcom/join/mgps/adapter/ForumPostsAdapter$e0$j;->n:Ljava/lang/String;

    .line 242
    .line 243
    const v1, 0x7f0a043d

    .line 244
    .line 245
    .line 246
    invoke-virtual {p1, v1}, Lcom/join/mgps/base/b;->getView(I)Landroid/view/View;

    .line 247
    .line 248
    .line 249
    move-result-object v2

    .line 250
    if-eqz v2, :cond_6

    .line 251
    .line 252
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 253
    .line 254
    .line 255
    move-result v2

    .line 256
    if-nez v2, :cond_5

    .line 257
    .line 258
    invoke-virtual {p1, v1, v4}, Lcom/join/mgps/base/b;->setGone(IZ)Lcom/join/mgps/base/b;

    .line 259
    .line 260
    .line 261
    invoke-virtual {p1, v1, v0}, Lcom/join/mgps/base/b;->setText(ILjava/lang/CharSequence;)Lcom/join/mgps/base/b;

    .line 262
    .line 263
    .line 264
    iget-object v0, p0, Lcom/join/mgps/adapter/ForumPostsAdapter;->k:Landroid/content/Context;

    .line 265
    .line 266
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 267
    .line 268
    .line 269
    move-result-object v0

    .line 270
    const v2, 0x7f0805d1

    .line 271
    .line 272
    .line 273
    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    .line 274
    .line 275
    .line 276
    move-result-object v0

    .line 277
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 278
    .line 279
    .line 280
    move-result v2

    .line 281
    if-nez v2, :cond_4

    .line 282
    .line 283
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    .line 284
    .line 285
    .line 286
    move-result v2

    .line 287
    const/4 v3, 0x7

    .line 288
    if-ne v2, v3, :cond_4

    .line 289
    .line 290
    const-string v2, "#"

    .line 291
    .line 292
    invoke-virtual {p2, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 293
    .line 294
    .line 295
    move-result v2

    .line 296
    if-eqz v2, :cond_4

    .line 297
    .line 298
    goto :goto_4

    .line 299
    :cond_4
    const-string p2, "#2fccdf"

    .line 300
    .line 301
    :goto_4
    new-instance v2, Landroid/graphics/LightingColorFilter;

    .line 302
    .line 303
    invoke-static {p2}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    .line 304
    .line 305
    .line 306
    move-result v3

    .line 307
    invoke-static {p2}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    .line 308
    .line 309
    .line 310
    move-result p2

    .line 311
    invoke-direct {v2, v3, p2}, Landroid/graphics/LightingColorFilter;-><init>(II)V

    .line 312
    .line 313
    .line 314
    invoke-virtual {v0, v2}, Landroid/graphics/drawable/Drawable;->setColorFilter(Landroid/graphics/ColorFilter;)V

    .line 315
    .line 316
    .line 317
    invoke-virtual {p1, v1}, Lcom/join/mgps/base/b;->getView(I)Landroid/view/View;

    .line 318
    .line 319
    .line 320
    move-result-object p1

    .line 321
    invoke-virtual {p1, v0}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 322
    .line 323
    .line 324
    goto :goto_5

    .line 325
    :cond_5
    invoke-virtual {p1, v1, v3}, Lcom/join/mgps/base/b;->setGone(IZ)Lcom/join/mgps/base/b;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    .line 326
    .line 327
    .line 328
    goto :goto_5

    .line 329
    :catch_1
    move-exception p1

    .line 330
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 331
    .line 332
    .line 333
    :cond_6
    :goto_5
    return-void
.end method

.method private T(Lcom/join/mgps/base/b;Lcom/join/mgps/adapter/ForumPostsAdapter$e0;)V
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
    invoke-virtual {p2}, Lcom/join/mgps/adapter/ForumPostsAdapter$e0;->a()Ljava/lang/Object;

    .line 2
    .line 3
    .line 4
    move-result-object p2

    .line 5
    check-cast p2, Lcom/join/mgps/adapter/ForumPostsAdapter$e0$l;

    .line 6
    .line 7
    if-nez p2, :cond_0

    .line 8
    .line 9
    return-void

    .line 10
    :cond_0
    const v0, 0x7f0a06a4

    .line 11
    .line 12
    .line 13
    invoke-virtual {p1, v0}, Lcom/join/mgps/base/b;->getView(I)Landroid/view/View;

    .line 14
    .line 15
    .line 16
    move-result-object p1

    .line 17
    check-cast p1, Landroid/widget/RelativeLayout;

    .line 18
    .line 19
    iget-object v0, p2, Lcom/join/mgps/adapter/ForumPostsAdapter$e0$l;->a:Ljava/util/List;

    .line 20
    .line 21
    iget-object p2, p2, Lcom/join/mgps/adapter/ForumPostsAdapter$e0$l;->b:Ljava/util/List;

    .line 22
    .line 23
    invoke-direct {p0, p1, v0, p2}, Lcom/join/mgps/adapter/ForumPostsAdapter;->u0(Landroid/widget/RelativeLayout;Ljava/util/List;Ljava/util/List;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 24
    .line 25
    .line 26
    goto :goto_0

    .line 27
    :catch_0
    move-exception p1

    .line 28
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 29
    .line 30
    .line 31
    :goto_0
    return-void
.end method

.method private T0(Landroid/view/View;Lcom/join/mgps/adapter/ForumPostsAdapter$e0$a;)V
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
    iget-object v0, p0, Lcom/join/mgps/adapter/ForumPostsAdapter;->s:Lcom/join/mgps/adapter/ForumPostsAdapter$x;

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
    iget-object v0, p0, Lcom/join/mgps/adapter/ForumPostsAdapter;->s:Lcom/join/mgps/adapter/ForumPostsAdapter$x;

    .line 15
    .line 16
    invoke-virtual {v0}, Lcom/join/mgps/adapter/ForumPostsAdapter$x;->dismiss()V

    .line 17
    .line 18
    .line 19
    :cond_1
    iget-object v0, p0, Lcom/join/mgps/adapter/ForumPostsAdapter;->s:Lcom/join/mgps/adapter/ForumPostsAdapter$x;

    .line 20
    .line 21
    if-nez v0, :cond_2

    .line 22
    .line 23
    new-instance v0, Lcom/join/mgps/adapter/ForumPostsAdapter$x;

    .line 24
    .line 25
    iget-object v1, p0, Lcom/join/mgps/adapter/ForumPostsAdapter;->k:Landroid/content/Context;

    .line 26
    .line 27
    invoke-direct {v0, p0, v1}, Lcom/join/mgps/adapter/ForumPostsAdapter$x;-><init>(Lcom/join/mgps/adapter/ForumPostsAdapter;Landroid/content/Context;)V

    .line 28
    .line 29
    .line 30
    iput-object v0, p0, Lcom/join/mgps/adapter/ForumPostsAdapter;->s:Lcom/join/mgps/adapter/ForumPostsAdapter$x;

    .line 31
    .line 32
    :cond_2
    iget-object v0, p0, Lcom/join/mgps/adapter/ForumPostsAdapter;->s:Lcom/join/mgps/adapter/ForumPostsAdapter$x;

    .line 33
    .line 34
    iget v1, p2, Lcom/join/mgps/adapter/ForumPostsAdapter$e0$a;->c:I

    .line 35
    .line 36
    invoke-virtual {v0, v1}, Lcom/join/mgps/adapter/ForumPostsAdapter$x;->f(I)V

    .line 37
    .line 38
    .line 39
    iget-object v0, p0, Lcom/join/mgps/adapter/ForumPostsAdapter;->s:Lcom/join/mgps/adapter/ForumPostsAdapter$x;

    .line 40
    .line 41
    iget-object v1, p2, Lcom/join/mgps/adapter/ForumPostsAdapter$e0$a;->e:Ljava/lang/String;

    .line 42
    .line 43
    invoke-virtual {v0, v1}, Lcom/join/mgps/adapter/ForumPostsAdapter$x;->h(Ljava/lang/String;)V

    .line 44
    .line 45
    .line 46
    iget-object v0, p0, Lcom/join/mgps/adapter/ForumPostsAdapter;->k:Landroid/content/Context;

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
    iget-object v1, p0, Lcom/join/mgps/adapter/ForumPostsAdapter;->k:Landroid/content/Context;

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
    iget-object v2, p0, Lcom/join/mgps/adapter/ForumPostsAdapter;->k:Landroid/content/Context;

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
    iget-boolean v3, p2, Lcom/join/mgps/adapter/ForumPostsAdapter$e0$a;->l:Z

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
    iget-object v3, p0, Lcom/join/mgps/adapter/ForumPostsAdapter;->s:Lcom/join/mgps/adapter/ForumPostsAdapter$x;

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
    iget-object v3, p0, Lcom/join/mgps/adapter/ForumPostsAdapter;->s:Lcom/join/mgps/adapter/ForumPostsAdapter$x;

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
    iget-object v3, p0, Lcom/join/mgps/adapter/ForumPostsAdapter;->s:Lcom/join/mgps/adapter/ForumPostsAdapter$x;

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
    iget-object v3, p0, Lcom/join/mgps/adapter/ForumPostsAdapter;->s:Lcom/join/mgps/adapter/ForumPostsAdapter$x;

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
    iget-boolean v3, p2, Lcom/join/mgps/adapter/ForumPostsAdapter$e0$a;->m:Z

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
    iget-object v3, p0, Lcom/join/mgps/adapter/ForumPostsAdapter;->s:Lcom/join/mgps/adapter/ForumPostsAdapter$x;

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
    iget-object v3, p0, Lcom/join/mgps/adapter/ForumPostsAdapter;->s:Lcom/join/mgps/adapter/ForumPostsAdapter$x;

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
    iget-object v3, p0, Lcom/join/mgps/adapter/ForumPostsAdapter;->s:Lcom/join/mgps/adapter/ForumPostsAdapter$x;

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
    iget-object v3, p0, Lcom/join/mgps/adapter/ForumPostsAdapter;->s:Lcom/join/mgps/adapter/ForumPostsAdapter$x;

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
    iget-boolean p2, p2, Lcom/join/mgps/adapter/ForumPostsAdapter$e0$a;->n:Z

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
    iget-object p2, p0, Lcom/join/mgps/adapter/ForumPostsAdapter;->s:Lcom/join/mgps/adapter/ForumPostsAdapter$x;

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
    iget-object p2, p0, Lcom/join/mgps/adapter/ForumPostsAdapter;->s:Lcom/join/mgps/adapter/ForumPostsAdapter$x;

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
    iget-object p2, p0, Lcom/join/mgps/adapter/ForumPostsAdapter;->s:Lcom/join/mgps/adapter/ForumPostsAdapter$x;

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
    iget-object p2, p0, Lcom/join/mgps/adapter/ForumPostsAdapter;->s:Lcom/join/mgps/adapter/ForumPostsAdapter$x;

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
    iget-object p2, p0, Lcom/join/mgps/adapter/ForumPostsAdapter;->s:Lcom/join/mgps/adapter/ForumPostsAdapter$x;

    .line 284
    .line 285
    invoke-virtual {p2, v0}, Landroid/widget/PopupWindow;->setWidth(I)V

    .line 286
    .line 287
    .line 288
    iget-object p2, p0, Lcom/join/mgps/adapter/ForumPostsAdapter;->s:Lcom/join/mgps/adapter/ForumPostsAdapter$x;

    .line 289
    .line 290
    invoke-virtual {p2}, Landroid/widget/PopupWindow;->getWidth()I

    .line 291
    .line 292
    .line 293
    move-result p2

    .line 294
    iget-object v0, p0, Lcom/join/mgps/adapter/ForumPostsAdapter;->s:Lcom/join/mgps/adapter/ForumPostsAdapter$x;

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
    iget-object v1, p0, Lcom/join/mgps/adapter/ForumPostsAdapter;->s:Lcom/join/mgps/adapter/ForumPostsAdapter$x;

    .line 316
    .line 317
    invoke-virtual {v1, p1, p2, v0}, Lcom/join/mgps/adapter/ForumPostsAdapter$x;->showAsDropDown(Landroid/view/View;II)V

    .line 318
    .line 319
    .line 320
    iget-object p2, p0, Lcom/join/mgps/adapter/ForumPostsAdapter;->s:Lcom/join/mgps/adapter/ForumPostsAdapter$x;

    .line 321
    .line 322
    new-instance v0, Lcom/join/mgps/adapter/ForumPostsAdapter$c;

    .line 323
    .line 324
    invoke-direct {v0, p0, p1}, Lcom/join/mgps/adapter/ForumPostsAdapter$c;-><init>(Lcom/join/mgps/adapter/ForumPostsAdapter;Landroid/view/View;)V

    .line 325
    .line 326
    .line 327
    invoke-virtual {p2, v0}, Landroid/widget/PopupWindow;->setTouchInterceptor(Landroid/view/View$OnTouchListener;)V

    .line 328
    .line 329
    .line 330
    return-void
.end method

.method private U(Lcom/join/mgps/base/b;Lcom/join/mgps/adapter/ForumPostsAdapter$e0;)V
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
    invoke-virtual {p2}, Lcom/join/mgps/adapter/ForumPostsAdapter$e0;->a()Ljava/lang/Object;

    .line 2
    .line 3
    .line 4
    move-result-object p2

    .line 5
    check-cast p2, Lcom/join/mgps/adapter/ForumPostsAdapter$e0$k;

    .line 6
    .line 7
    if-nez p2, :cond_0

    .line 8
    .line 9
    return-void

    .line 10
    :cond_0
    iget-object v0, p0, Lcom/join/mgps/adapter/ForumPostsAdapter;->k:Landroid/content/Context;

    .line 11
    .line 12
    iget-object v1, p2, Lcom/join/mgps/adapter/ForumPostsAdapter$e0$k;->c:Ljava/util/List;

    .line 13
    .line 14
    iget v2, p2, Lcom/join/mgps/adapter/ForumPostsAdapter$e0$k;->b:I

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
    invoke-virtual {p0, v0, v1}, Lcom/join/mgps/adapter/ForumPostsAdapter;->s0(Landroid/content/Context;Ljava/lang/String;)V

    .line 23
    .line 24
    .line 25
    iget-object v0, p2, Lcom/join/mgps/adapter/ForumPostsAdapter$e0$k;->a:Ljava/lang/String;

    .line 26
    .line 27
    invoke-virtual {p0, v0}, Lcom/join/mgps/adapter/ForumPostsAdapter;->g0(Ljava/lang/String;)Lcom/join/mgps/adapter/ForumPostsAdapter$d0;

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
    iget v3, v0, Lcom/join/mgps/adapter/ForumPostsAdapter$d0;->a:I

    .line 39
    .line 40
    iget v0, v0, Lcom/join/mgps/adapter/ForumPostsAdapter$d0;->b:I

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
    move-result-object v0

    .line 56
    check-cast v0, Lcom/facebook/drawee/view/SimpleDraweeView;

    .line 57
    .line 58
    iget-object v2, p2, Lcom/join/mgps/adapter/ForumPostsAdapter$e0$k;->a:Ljava/lang/String;

    .line 59
    .line 60
    invoke-static {v0, v2}, Lcom/join/android/app/common/utils/l;->h(Lcom/facebook/drawee/view/SimpleDraweeView;Ljava/lang/String;)V

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
    move-result-object v0

    .line 68
    check-cast v0, Lcom/facebook/drawee/view/SimpleDraweeView;

    .line 69
    .line 70
    iget-object v2, p2, Lcom/join/mgps/adapter/ForumPostsAdapter$e0$k;->a:Ljava/lang/String;

    .line 71
    .line 72
    invoke-virtual {p0, v0, v2}, Lcom/join/mgps/adapter/ForumPostsAdapter;->p0(Lcom/facebook/drawee/view/SimpleDraweeView;Ljava/lang/String;)V

    .line 73
    .line 74
    .line 75
    :goto_0
    invoke-virtual {p1, v1}, Lcom/join/mgps/base/b;->getView(I)Landroid/view/View;

    .line 76
    .line 77
    .line 78
    move-result-object p1

    .line 79
    check-cast p1, Landroid/widget/ImageView;

    .line 80
    .line 81
    iget v0, p2, Lcom/join/mgps/adapter/ForumPostsAdapter$e0$k;->b:I

    .line 82
    .line 83
    iget-object p2, p2, Lcom/join/mgps/adapter/ForumPostsAdapter$e0$k;->c:Ljava/util/List;

    .line 84
    .line 85
    invoke-static {p1, v0, p2}, Lcom/join/mgps/Util/r0;->C1(Landroid/widget/ImageView;ILjava/util/List;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 86
    .line 87
    .line 88
    goto :goto_1

    .line 89
    :catch_0
    move-exception p1

    .line 90
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 91
    .line 92
    .line 93
    :goto_1
    return-void
.end method

.method private U0(Lcom/join/mgps/base/b;I)V
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

.method private V(Lcom/join/mgps/base/b;Lcom/join/mgps/adapter/ForumPostsAdapter$e0;)V
    .locals 9
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
    invoke-virtual {p2}, Lcom/join/mgps/adapter/ForumPostsAdapter$e0;->a()Ljava/lang/Object;

    .line 2
    .line 3
    .line 4
    move-result-object p2

    .line 5
    check-cast p2, Lcom/join/mgps/adapter/ForumPostsAdapter$e0$m;

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
    move-object v3, v1

    .line 18
    check-cast v3, Landroid/widget/TextView;

    .line 19
    .line 20
    invoke-virtual {p1, v0}, Lcom/join/mgps/base/b;->getView(I)Landroid/view/View;

    .line 21
    .line 22
    .line 23
    move-result-object v0

    .line 24
    check-cast v0, Landroid/widget/TextView;

    .line 25
    .line 26
    const v1, 0x3ca3d70a    # 0.02f

    .line 27
    .line 28
    .line 29
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setLetterSpacing(F)V

    .line 30
    .line 31
    .line 32
    invoke-direct {p0, v3}, Lcom/join/mgps/adapter/ForumPostsAdapter;->m0(Landroid/widget/TextView;)V

    .line 33
    .line 34
    .line 35
    iget-object v0, p0, Lcom/join/mgps/adapter/ForumPostsAdapter;->k:Landroid/content/Context;

    .line 36
    .line 37
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 38
    .line 39
    .line 40
    move-result-object v0

    .line 41
    const v1, 0x7f06014e

    .line 42
    .line 43
    .line 44
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    .line 45
    .line 46
    .line 47
    move-result v0

    .line 48
    invoke-virtual {v3, v0}, Landroid/widget/TextView;->setTextColor(I)V

    .line 49
    .line 50
    .line 51
    invoke-static {}, Landroid/text/method/LinkMovementMethod;->getInstance()Landroid/text/method/MovementMethod;

    .line 52
    .line 53
    .line 54
    move-result-object v0

    .line 55
    invoke-virtual {v3, v0}, Landroid/widget/TextView;->setMovementMethod(Landroid/text/method/MovementMethod;)V

    .line 56
    .line 57
    .line 58
    const v0, 0x7fffffff

    .line 59
    .line 60
    .line 61
    invoke-virtual {v3, v0}, Landroid/widget/TextView;->setMaxLines(I)V

    .line 62
    .line 63
    .line 64
    new-instance v0, Lcom/join/mgps/adapter/ForumPostsAdapter$t;

    .line 65
    .line 66
    invoke-direct {v0, p0}, Lcom/join/mgps/adapter/ForumPostsAdapter$t;-><init>(Lcom/join/mgps/adapter/ForumPostsAdapter;)V

    .line 67
    .line 68
    .line 69
    invoke-virtual {v3, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 70
    .line 71
    .line 72
    iget-object v4, p2, Lcom/join/mgps/adapter/ForumPostsAdapter$e0$m;->b:Landroid/text/SpannableStringBuilder;

    .line 73
    .line 74
    iget-boolean v5, p2, Lcom/join/mgps/adapter/ForumPostsAdapter$e0$m;->a:Z

    .line 75
    .line 76
    iget-boolean v6, p2, Lcom/join/mgps/adapter/ForumPostsAdapter$e0$m;->c:Z

    .line 77
    .line 78
    iget-object v7, p2, Lcom/join/mgps/adapter/ForumPostsAdapter$e0$m;->d:Ljava/lang/String;

    .line 79
    .line 80
    iget-object v8, p2, Lcom/join/mgps/adapter/ForumPostsAdapter$e0$m;->e:Ljava/util/List;

    .line 81
    .line 82
    move-object v2, p0

    .line 83
    invoke-direct/range {v2 .. v8}, Lcom/join/mgps/adapter/ForumPostsAdapter;->z0(Landroid/widget/TextView;Landroid/text/SpannableStringBuilder;ZZLjava/lang/String;Ljava/util/List;)V

    .line 84
    .line 85
    .line 86
    iget-object p1, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    .line 87
    .line 88
    invoke-virtual {p0, p1}, Lcom/join/mgps/adapter/ForumPostsAdapter;->G0(Landroid/view/View;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 89
    .line 90
    .line 91
    goto :goto_0

    .line 92
    :catch_0
    move-exception p1

    .line 93
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 94
    .line 95
    .line 96
    :goto_0
    return-void
.end method

.method private W(Lcom/join/mgps/base/b;Lcom/join/mgps/adapter/ForumPostsAdapter$e0;)V
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
    invoke-virtual {p2}, Lcom/join/mgps/adapter/ForumPostsAdapter$e0;->a()Ljava/lang/Object;

    .line 2
    .line 3
    .line 4
    move-result-object p2

    .line 5
    check-cast p2, Lcom/join/mgps/adapter/ForumPostsAdapter$e0$n;

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
    move-result-object v0

    .line 17
    check-cast v0, Landroid/widget/TextView;

    .line 18
    .line 19
    invoke-direct {p0, v0}, Lcom/join/mgps/adapter/ForumPostsAdapter;->m0(Landroid/widget/TextView;)V

    .line 20
    .line 21
    .line 22
    new-instance v1, Lcom/join/mgps/adapter/ForumPostsAdapter$u;

    .line 23
    .line 24
    invoke-direct {v1, p0}, Lcom/join/mgps/adapter/ForumPostsAdapter$u;-><init>(Lcom/join/mgps/adapter/ForumPostsAdapter;)V

    .line 25
    .line 26
    .line 27
    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 28
    .line 29
    .line 30
    iget-object p2, p2, Lcom/join/mgps/adapter/ForumPostsAdapter$e0$n;->b:Landroid/text/Spanned;

    .line 31
    .line 32
    invoke-virtual {v0, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 33
    .line 34
    .line 35
    iget-object p1, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    .line 36
    .line 37
    invoke-virtual {p0, p1}, Lcom/join/mgps/adapter/ForumPostsAdapter;->G0(Landroid/view/View;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 38
    .line 39
    .line 40
    goto :goto_0

    .line 41
    :catch_0
    move-exception p1

    .line 42
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 43
    .line 44
    .line 45
    :goto_0
    return-void
.end method

.method private X(Lcom/join/mgps/base/b;Lcom/join/mgps/adapter/ForumPostsAdapter$e0;)V
    .locals 11
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
    invoke-virtual {p2}, Lcom/join/mgps/adapter/ForumPostsAdapter$e0;->a()Ljava/lang/Object;

    .line 2
    .line 3
    .line 4
    move-result-object p2

    .line 5
    check-cast p2, Lcom/join/mgps/adapter/ForumPostsAdapter$e0$o;

    .line 6
    .line 7
    if-nez p2, :cond_0

    .line 8
    .line 9
    return-void

    .line 10
    :cond_0
    const v0, 0x7f0a06af

    .line 11
    .line 12
    .line 13
    invoke-virtual {p1, v0}, Lcom/join/mgps/base/b;->getView(I)Landroid/view/View;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    move-object v2, v0

    .line 18
    check-cast v2, Landroid/widget/TextView;

    .line 19
    .line 20
    iget-object v0, p0, Lcom/join/mgps/adapter/ForumPostsAdapter;->k:Landroid/content/Context;

    .line 21
    .line 22
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 23
    .line 24
    .line 25
    move-result-object v0

    .line 26
    const v1, 0x7f070b2e

    .line 27
    .line 28
    .line 29
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    .line 30
    .line 31
    .line 32
    move-result v0

    .line 33
    int-to-float v0, v0

    .line 34
    const/4 v1, 0x0

    .line 35
    invoke-virtual {v2, v1, v0}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 36
    .line 37
    .line 38
    sget-object v0, Landroid/graphics/Typeface;->DEFAULT_BOLD:Landroid/graphics/Typeface;

    .line 39
    .line 40
    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 41
    .line 42
    .line 43
    invoke-static {}, Landroid/text/method/LinkMovementMethod;->getInstance()Landroid/text/method/MovementMethod;

    .line 44
    .line 45
    .line 46
    move-result-object v0

    .line 47
    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setMovementMethod(Landroid/text/method/MovementMethod;)V

    .line 48
    .line 49
    .line 50
    iget-object v3, p2, Lcom/join/mgps/adapter/ForumPostsAdapter$e0$o;->b:Ljava/lang/String;

    .line 51
    .line 52
    iget-boolean v4, p2, Lcom/join/mgps/adapter/ForumPostsAdapter$e0$o;->a:Z

    .line 53
    .line 54
    iget-boolean v5, p2, Lcom/join/mgps/adapter/ForumPostsAdapter$e0$o;->c:Z

    .line 55
    .line 56
    iget-object v6, p2, Lcom/join/mgps/adapter/ForumPostsAdapter$e0$o;->d:Ljava/lang/String;

    .line 57
    .line 58
    iget-object v7, p2, Lcom/join/mgps/adapter/ForumPostsAdapter$e0$o;->e:Ljava/util/List;

    .line 59
    .line 60
    iget-object v8, p2, Lcom/join/mgps/adapter/ForumPostsAdapter$e0$o;->f:Ljava/util/List;

    .line 61
    .line 62
    iget v9, p2, Lcom/join/mgps/adapter/ForumPostsAdapter$e0$o;->g:I

    .line 63
    .line 64
    iget-object v10, p2, Lcom/join/mgps/adapter/ForumPostsAdapter$e0$o;->h:Ljava/lang/String;

    .line 65
    .line 66
    move-object v1, p0

    .line 67
    invoke-direct/range {v1 .. v10}, Lcom/join/mgps/adapter/ForumPostsAdapter;->y0(Landroid/widget/TextView;Ljava/lang/String;ZZLjava/lang/String;Ljava/util/List;Ljava/util/List;ILjava/lang/String;)V

    .line 68
    .line 69
    .line 70
    iget-object p1, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    .line 71
    .line 72
    invoke-virtual {p0, p1}, Lcom/join/mgps/adapter/ForumPostsAdapter;->G0(Landroid/view/View;)V
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

.method private Y(Lcom/join/mgps/base/b;Lcom/join/mgps/adapter/ForumPostsAdapter$e0;)V
    .locals 6
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
    invoke-virtual {p2}, Lcom/join/mgps/adapter/ForumPostsAdapter$e0;->a()Ljava/lang/Object;

    .line 2
    .line 3
    .line 4
    move-result-object p2

    .line 5
    check-cast p2, Lcom/join/mgps/adapter/ForumPostsAdapter$e0$p;

    .line 6
    .line 7
    if-nez p2, :cond_0

    .line 8
    .line 9
    return-void

    .line 10
    :cond_0
    iget-object v0, p2, Lcom/join/mgps/adapter/ForumPostsAdapter$e0$p;->b:Ljava/lang/String;

    .line 11
    .line 12
    iget-object p2, p2, Lcom/join/mgps/adapter/ForumPostsAdapter$e0$p;->a:Ljava/lang/String;

    .line 13
    .line 14
    const v1, 0x7f0a015d

    .line 15
    .line 16
    .line 17
    invoke-virtual {p1, v1}, Lcom/join/mgps/base/b;->getView(I)Landroid/view/View;

    .line 18
    .line 19
    .line 20
    move-result-object v1

    .line 21
    check-cast v1, Lcom/facebook/drawee/view/SimpleDraweeView;

    .line 22
    .line 23
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->getLayoutPosition()I

    .line 24
    .line 25
    .line 26
    move-result v2

    .line 27
    const/4 v3, -0x1

    .line 28
    if-eqz v1, :cond_1

    .line 29
    .line 30
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 31
    .line 32
    .line 33
    move-result-object v4

    .line 34
    invoke-virtual {v1, v4}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 35
    .line 36
    .line 37
    new-instance v4, Landroid/widget/RelativeLayout$LayoutParams;

    .line 38
    .line 39
    iget v5, p0, Lcom/join/mgps/adapter/ForumPostsAdapter;->o:I

    .line 40
    .line 41
    invoke-direct {v4, v3, v5}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 42
    .line 43
    .line 44
    invoke-virtual {v1, v4}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 45
    .line 46
    .line 47
    sget-object v4, Landroid/widget/ImageView$ScaleType;->FIT_XY:Landroid/widget/ImageView$ScaleType;

    .line 48
    .line 49
    invoke-virtual {v1, v4}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 50
    .line 51
    .line 52
    const v4, 0x7f081349

    .line 53
    .line 54
    .line 55
    invoke-static {v1, v4, p2}, Lcom/join/android/app/common/utils/l;->d(Lcom/facebook/drawee/view/SimpleDraweeView;ILjava/lang/String;)V

    .line 56
    .line 57
    .line 58
    new-instance v4, Lcom/join/mgps/adapter/ForumPostsAdapter$s;

    .line 59
    .line 60
    invoke-direct {v4, p0, v2}, Lcom/join/mgps/adapter/ForumPostsAdapter$s;-><init>(Lcom/join/mgps/adapter/ForumPostsAdapter;I)V

    .line 61
    .line 62
    .line 63
    invoke-virtual {v1, v4}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 64
    .line 65
    .line 66
    :cond_1
    const v1, 0x7f0a1b63

    .line 67
    .line 68
    .line 69
    invoke-virtual {p1, v1}, Lcom/join/mgps/base/b;->getView(I)Landroid/view/View;

    .line 70
    .line 71
    .line 72
    move-result-object p1

    .line 73
    check-cast p1, Landroid/widget/FrameLayout;

    .line 74
    .line 75
    if-eqz p1, :cond_3

    .line 76
    .line 77
    new-instance v1, Landroid/widget/RelativeLayout$LayoutParams;

    .line 78
    .line 79
    iget v4, p0, Lcom/join/mgps/adapter/ForumPostsAdapter;->o:I

    .line 80
    .line 81
    invoke-direct {v1, v3, v4}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 82
    .line 83
    .line 84
    invoke-virtual {p1, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 85
    .line 86
    .line 87
    iget-object p1, p0, Lcom/join/mgps/adapter/ForumPostsAdapter;->i:Lcom/danikula/videocache/i;

    .line 88
    .line 89
    if-eqz p1, :cond_2

    .line 90
    .line 91
    invoke-virtual {p1, v0}, Lcom/danikula/videocache/i;->j(Ljava/lang/String;)Ljava/lang/String;

    .line 92
    .line 93
    .line 94
    move-result-object v0

    .line 95
    :cond_2
    invoke-static {v0}, Lcom/join/mgps/Util/t2;->i(Ljava/lang/String;)Z

    .line 96
    .line 97
    .line 98
    move-result p1

    .line 99
    if-eqz p1, :cond_3

    .line 100
    .line 101
    new-instance p1, Lcom/join/android/app/component/video/c$l;

    .line 102
    .line 103
    invoke-direct {p1, v2, v0, p2}, Lcom/join/android/app/component/video/c$l;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    .line 104
    .line 105
    .line 106
    iget-object p2, p0, Lcom/join/mgps/adapter/ForumPostsAdapter;->l:Lcom/join/android/app/component/video/c;

    .line 107
    .line 108
    const/4 v0, 0x0

    .line 109
    new-array v0, v0, [Z

    .line 110
    .line 111
    invoke-virtual {p2, v2, p1, v0}, Lcom/join/android/app/component/video/c;->d(ILcom/join/android/app/component/video/c$l;[Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 112
    .line 113
    .line 114
    goto :goto_0

    .line 115
    :catch_0
    move-exception p1

    .line 116
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 117
    .line 118
    .line 119
    :cond_3
    :goto_0
    return-void
.end method

.method private Z(Landroid/widget/PopupWindow;Landroid/view/MotionEvent;)Z
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
    invoke-direct {p0, p1, p2}, Lcom/join/mgps/adapter/ForumPostsAdapter;->a0(Landroid/view/View;Landroid/view/MotionEvent;)Z

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

.method private a0(Landroid/view/View;Landroid/view/MotionEvent;)Z
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

.method private e0(Landroid/content/Context;)Landroid/widget/LinearLayout$LayoutParams;
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
    iget-object v0, p0, Lcom/join/mgps/adapter/ForumPostsAdapter;->q:Landroid/widget/LinearLayout$LayoutParams;

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
    iput-object v2, p0, Lcom/join/mgps/adapter/ForumPostsAdapter;->q:Landroid/widget/LinearLayout$LayoutParams;

    .line 69
    .line 70
    :cond_1
    iget-object p1, p0, Lcom/join/mgps/adapter/ForumPostsAdapter;->q:Landroid/widget/LinearLayout$LayoutParams;

    .line 71
    .line 72
    return-object p1
.end method

.method private h0(Landroid/content/Context;)I
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
    iget v0, p0, Lcom/join/mgps/adapter/ForumPostsAdapter;->p:I

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
    iput p1, p0, Lcom/join/mgps/adapter/ForumPostsAdapter;->p:I

    .line 39
    .line 40
    :cond_1
    iget p1, p0, Lcom/join/mgps/adapter/ForumPostsAdapter;->p:I

    .line 41
    .line 42
    return p1
.end method

.method private i0(Landroid/content/Context;)I
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
    iget v0, p0, Lcom/join/mgps/adapter/ForumPostsAdapter;->o:I

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
    iput p1, p0, Lcom/join/mgps/adapter/ForumPostsAdapter;->o:I

    .line 40
    .line 41
    :cond_1
    iget p1, p0, Lcom/join/mgps/adapter/ForumPostsAdapter;->o:I

    .line 42
    .line 43
    return p1
.end method

.method private l0()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/adapter/ForumPostsAdapter;->n:Landroid/widget/LinearLayout$LayoutParams;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {p0}, Lcom/join/mgps/adapter/ForumPostsAdapter;->k0()Landroid/widget/LinearLayout$LayoutParams;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    iput-object v0, p0, Lcom/join/mgps/adapter/ForumPostsAdapter;->n:Landroid/widget/LinearLayout$LayoutParams;

    .line 10
    .line 11
    :cond_0
    return-void
.end method

.method private m0(Landroid/widget/TextView;)V
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
    new-instance v7, Lcom/join/mgps/adapter/ForumPostsAdapter$y;

    .line 70
    .line 71
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 72
    .line 73
    .line 74
    move-result-object v8

    .line 75
    invoke-direct {v7, p0, v8, v6}, Lcom/join/mgps/adapter/ForumPostsAdapter$y;-><init>(Lcom/join/mgps/adapter/ForumPostsAdapter;Landroid/content/Context;Ljava/lang/String;)V

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

.method private synthetic n0(Lcom/join/mgps/adapter/ForumPostsAdapter$e0$h;Landroid/view/View;)V
    .locals 1

    .line 1
    iget-object p2, p1, Lcom/join/mgps/adapter/ForumPostsAdapter$e0$h;->c:Ljava/lang/String;

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
    iget-object p1, p1, Lcom/join/mgps/adapter/ForumPostsAdapter$e0$h;->c:Ljava/lang/String;

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
    iget-object v0, p0, Lcom/join/mgps/adapter/ForumPostsAdapter;->k:Landroid/content/Context;

    .line 28
    .line 29
    invoke-virtual {p1, v0, p2}, Lcom/join/mgps/Util/IntentUtil;->intentActivity(Landroid/content/Context;Lcom/join/mgps/Util/IntentDateBean;)V

    .line 30
    .line 31
    .line 32
    :cond_0
    return-void
.end method

.method private q0(Landroid/view/View;ZI)V
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

.method private t0(Landroid/content/Context;Ljava/lang/String;)V
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
    new-instance v1, Lcom/join/mgps/adapter/ForumPostsAdapter$d0;

    .line 8
    .line 9
    invoke-direct {v1, p0}, Lcom/join/mgps/adapter/ForumPostsAdapter$d0;-><init>(Lcom/join/mgps/adapter/ForumPostsAdapter;)V

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
    iput p1, v1, Lcom/join/mgps/adapter/ForumPostsAdapter$d0;->a:I

    .line 73
    .line 74
    iput v0, v1, Lcom/join/mgps/adapter/ForumPostsAdapter$d0;->b:I

    .line 75
    .line 76
    invoke-virtual {p0, p2, v1}, Lcom/join/mgps/adapter/ForumPostsAdapter;->H(Ljava/lang/String;Lcom/join/mgps/adapter/ForumPostsAdapter$d0;)V

    .line 77
    .line 78
    .line 79
    :cond_0
    return-void
.end method

.method private u0(Landroid/widget/RelativeLayout;Ljava/util/List;Ljava/util/List;)V
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
    iget-object v1, p0, Lcom/join/mgps/adapter/ForumPostsAdapter;->n:Landroid/widget/LinearLayout$LayoutParams;

    .line 14
    .line 15
    if-nez v1, :cond_1

    .line 16
    .line 17
    invoke-virtual {p0}, Lcom/join/mgps/adapter/ForumPostsAdapter;->k0()Landroid/widget/LinearLayout$LayoutParams;

    .line 18
    .line 19
    .line 20
    move-result-object v1

    .line 21
    iput-object v1, p0, Lcom/join/mgps/adapter/ForumPostsAdapter;->n:Landroid/widget/LinearLayout$LayoutParams;

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
    iget-object v1, p0, Lcom/join/mgps/adapter/ForumPostsAdapter;->k:Landroid/content/Context;

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
    iget-object v8, p0, Lcom/join/mgps/adapter/ForumPostsAdapter;->n:Landroid/widget/LinearLayout$LayoutParams;

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
    new-instance v7, Lcom/join/mgps/adapter/ForumPostsAdapter$w;

    .line 166
    .line 167
    invoke-direct {v7, p0, p3, v5}, Lcom/join/mgps/adapter/ForumPostsAdapter$w;-><init>(Lcom/join/mgps/adapter/ForumPostsAdapter;Ljava/util/List;I)V

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

.method public static synthetic y(Lcom/join/mgps/adapter/ForumPostsAdapter;Lcom/join/mgps/adapter/ForumPostsAdapter$e0$h;Landroid/view/View;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/join/mgps/adapter/ForumPostsAdapter;->n0(Lcom/join/mgps/adapter/ForumPostsAdapter$e0$h;Landroid/view/View;)V

    return-void
.end method

.method private y0(Landroid/widget/TextView;Ljava/lang/String;ZZLjava/lang/String;Ljava/util/List;Ljava/util/List;ILjava/lang/String;)V
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

.method static synthetic z(Lcom/join/mgps/adapter/ForumPostsAdapter;)Landroid/content/Context;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/join/mgps/adapter/ForumPostsAdapter;->k:Landroid/content/Context;

    .line 2
    .line 3
    return-object p0
.end method

.method private z0(Landroid/widget/TextView;Landroid/text/SpannableStringBuilder;ZZLjava/lang/String;Ljava/util/List;)V
    .locals 0
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
            "Landroid/text/SpannableStringBuilder;",
            "ZZ",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lcom/join/mgps/dto/ForumBean$ForumPostsBean$TagInfo;",
            ">;)V"
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
    invoke-virtual {p3, p2}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 14
    .line 15
    .line 16
    invoke-virtual {p3}, Landroid/text/SpannableStringBuilder;->toString()Ljava/lang/String;

    .line 17
    .line 18
    .line 19
    move-result-object p2

    .line 20
    const-string p3, "<br/>"

    .line 21
    .line 22
    const-string p4, ""

    .line 23
    .line 24
    invoke-virtual {p2, p3, p4}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    .line 25
    .line 26
    .line 27
    move-result-object p2

    .line 28
    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 29
    .line 30
    .line 31
    return-void
.end method


# virtual methods
.method A0(Landroid/view/View;I)V
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
    iget-object v2, v0, Lcom/join/mgps/adapter/ForumPostsAdapter;->k:Landroid/content/Context;

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
    iget-object v2, v0, Lcom/join/mgps/adapter/ForumPostsAdapter;->k:Landroid/content/Context;

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

.method B0(Landroid/widget/TextView;I)V
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

.method C0(Lcom/join/mgps/base/b;Ljava/lang/Object;)V
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
    const v0, 0x7f0a1045

    .line 8
    .line 9
    .line 10
    invoke-virtual {v2, v0}, Lcom/join/mgps/base/b;->getView(I)Landroid/view/View;

    .line 11
    .line 12
    .line 13
    move-result-object v0

    .line 14
    move-object v4, v0

    .line 15
    check-cast v4, Landroid/widget/Button;

    .line 16
    .line 17
    if-eqz v4, :cond_19

    .line 18
    .line 19
    if-nez v3, :cond_0

    .line 20
    .line 21
    goto/16 :goto_c

    .line 22
    .line 23
    :cond_0
    invoke-virtual {v4}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 24
    .line 25
    .line 26
    move-result-object v0

    .line 27
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 28
    .line 29
    .line 30
    move-result-object v5

    .line 31
    move-object v6, v3

    .line 32
    check-cast v6, Lcom/github/snowdream/android/app/downloader/DownloadTask;

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
    instance-of v13, v3, Lcom/join/mgps/dto/CollectionBeanSub;

    .line 55
    .line 56
    if-eqz v13, :cond_3

    .line 57
    .line 58
    move-object v6, v3

    .line 59
    check-cast v6, Lcom/join/mgps/dto/CollectionBeanSub;

    .line 60
    .line 61
    invoke-virtual {v6}, Lcom/join/kotlin/base/impl/BaseDownloadable;->getDownloadTask()Lcom/github/snowdream/android/app/downloader/DownloadTask;

    .line 62
    .line 63
    .line 64
    move-result-object v8

    .line 65
    invoke-virtual {v6}, Lcom/join/mgps/dto/CollectionBeanSub;->getVer()Ljava/lang/String;

    .line 66
    .line 67
    .line 68
    move-result-object v13

    .line 69
    invoke-virtual {v6}, Lcom/join/mgps/dto/CollectionBeanSub;->getPay_tag_info()Lcom/join/mgps/dto/PayTagInfo;

    .line 70
    .line 71
    .line 72
    move-result-object v15

    .line 73
    if-eqz v15, :cond_1

    .line 74
    .line 75
    invoke-virtual {v6}, Lcom/join/mgps/dto/CollectionBeanSub;->getPay_tag_info()Lcom/join/mgps/dto/PayTagInfo;

    .line 76
    .line 77
    .line 78
    move-result-object v15

    .line 79
    invoke-virtual {v15}, Lcom/join/mgps/dto/PayTagInfo;->getPay_game_amount()I

    .line 80
    .line 81
    .line 82
    move-result v15

    .line 83
    goto :goto_0

    .line 84
    :cond_1
    const/4 v15, 0x0

    .line 85
    :goto_0
    if-lez v15, :cond_2

    .line 86
    .line 87
    invoke-static {}, Lt6/e0;->o()Lt6/e0;

    .line 88
    .line 89
    .line 90
    move-result-object v14

    .line 91
    invoke-virtual {v6}, Lcom/join/mgps/dto/CollectionBeanSub;->getCrc_sign_id()Ljava/lang/String;

    .line 92
    .line 93
    .line 94
    move-result-object v6

    .line 95
    invoke-virtual {v14, v6}, Lt6/e0;->p(Ljava/lang/String;)Z

    .line 96
    .line 97
    .line 98
    move-result v6

    .line 99
    if-eqz v6, :cond_2

    .line 100
    .line 101
    const/4 v15, 0x0

    .line 102
    :cond_2
    move-object v6, v8

    .line 103
    move-object v8, v13

    .line 104
    goto :goto_3

    .line 105
    :cond_3
    instance-of v13, v3, Lcom/join/mgps/business/RecomDatabeanBusiness;

    .line 106
    .line 107
    if-eqz v13, :cond_6

    .line 108
    .line 109
    move-object v13, v3

    .line 110
    check-cast v13, Lcom/join/mgps/business/RecomDatabeanBusiness;

    .line 111
    .line 112
    invoke-virtual {v13}, Lcom/join/mgps/dto/RecomDatabean;->getSub()Ljava/util/List;

    .line 113
    .line 114
    .line 115
    move-result-object v13

    .line 116
    const/4 v14, 0x0

    .line 117
    invoke-interface {v13, v14}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 118
    .line 119
    .line 120
    move-result-object v13

    .line 121
    check-cast v13, Lcom/join/mgps/dto/AppBeanMain;

    .line 122
    .line 123
    invoke-virtual {v13}, Lcom/join/mgps/dto/AppBeanMain;->getGame_info()Lcom/join/mgps/dto/AppBean;

    .line 124
    .line 125
    .line 126
    move-result-object v13

    .line 127
    invoke-virtual {v13}, Lcom/join/mgps/dto/AppBean;->getPay_tag_info()Lcom/join/mgps/dto/PayTagInfo;

    .line 128
    .line 129
    .line 130
    move-result-object v14

    .line 131
    if-eqz v14, :cond_4

    .line 132
    .line 133
    invoke-virtual {v13}, Lcom/join/mgps/dto/AppBean;->getPay_tag_info()Lcom/join/mgps/dto/PayTagInfo;

    .line 134
    .line 135
    .line 136
    move-result-object v14

    .line 137
    invoke-virtual {v14}, Lcom/join/mgps/dto/PayTagInfo;->getPay_game_amount()I

    .line 138
    .line 139
    .line 140
    move-result v14

    .line 141
    goto :goto_1

    .line 142
    :cond_4
    const/4 v14, 0x0

    .line 143
    :goto_1
    if-lez v14, :cond_5

    .line 144
    .line 145
    invoke-static {}, Lt6/e0;->o()Lt6/e0;

    .line 146
    .line 147
    .line 148
    move-result-object v15

    .line 149
    invoke-virtual {v13}, Lcom/join/mgps/dto/AppBean;->getCrc_sign_id()Ljava/lang/String;

    .line 150
    .line 151
    .line 152
    move-result-object v13

    .line 153
    invoke-virtual {v15, v13}, Lt6/e0;->p(Ljava/lang/String;)Z

    .line 154
    .line 155
    .line 156
    move-result v13

    .line 157
    if-eqz v13, :cond_5

    .line 158
    .line 159
    goto :goto_2

    .line 160
    :cond_5
    move v15, v14

    .line 161
    goto :goto_3

    .line 162
    :cond_6
    :goto_2
    const/4 v15, 0x0

    .line 163
    :goto_3
    const-string v13, "\u66f4\u65b0"

    .line 164
    .line 165
    const v14, 0x7f080f90

    .line 166
    .line 167
    .line 168
    if-nez v6, :cond_d

    .line 169
    .line 170
    invoke-static {v10}, Lcom/join/mgps/Util/UtilsMy;->p0(Ljava/util/List;)Z

    .line 171
    .line 172
    .line 173
    move-result v2

    .line 174
    if-eqz v2, :cond_b

    .line 175
    .line 176
    invoke-static {v0}, Lcom/join/android/app/common/utils/g;->t0(Landroid/content/Context;)Lcom/join/android/app/common/utils/g;

    .line 177
    .line 178
    .line 179
    move-result-object v2

    .line 180
    invoke-virtual {v2, v0, v9}, Lcom/join/android/app/common/utils/APKUtils;->e(Landroid/content/Context;Ljava/lang/String;)Z

    .line 181
    .line 182
    .line 183
    move-result v2

    .line 184
    if-lez v15, :cond_7

    .line 185
    .line 186
    const/16 v16, 0x0

    .line 187
    .line 188
    goto :goto_4

    .line 189
    :cond_7
    move/from16 v16, v2

    .line 190
    .line 191
    :goto_4
    if-eqz v16, :cond_9

    .line 192
    .line 193
    invoke-static {v0}, Lcom/join/android/app/common/utils/g;->t0(Landroid/content/Context;)Lcom/join/android/app/common/utils/g;

    .line 194
    .line 195
    .line 196
    move-result-object v2

    .line 197
    invoke-virtual {v2, v0, v9}, Lcom/join/android/app/common/utils/APKUtils;->n(Landroid/content/Context;Ljava/lang/String;)Lcom/join/android/app/common/utils/APKUtils$a;

    .line 198
    .line 199
    .line 200
    move-result-object v2

    .line 201
    invoke-static {v8}, Lcom/join/mgps/Util/t2;->i(Ljava/lang/String;)Z

    .line 202
    .line 203
    .line 204
    move-result v6

    .line 205
    if-eqz v6, :cond_8

    .line 206
    .line 207
    invoke-virtual {v2}, Lcom/join/android/app/common/utils/APKUtils$a;->d()I

    .line 208
    .line 209
    .line 210
    move-result v2

    .line 211
    invoke-static {v8}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 212
    .line 213
    .line 214
    move-result v6

    .line 215
    if-ge v2, v6, :cond_8

    .line 216
    .line 217
    invoke-virtual {v4, v14}, Landroid/view/View;->setBackgroundResource(I)V

    .line 218
    .line 219
    .line 220
    invoke-direct {v1, v4, v13}, Lcom/join/mgps/adapter/ForumPostsAdapter;->Q0(Landroid/view/View;Ljava/lang/CharSequence;)V

    .line 221
    .line 222
    .line 223
    const v0, 0x7f060031

    .line 224
    .line 225
    .line 226
    invoke-virtual {v5, v0}, Landroid/content/res/Resources;->getColor(I)I

    .line 227
    .line 228
    .line 229
    move-result v0

    .line 230
    invoke-direct {v1, v4, v0}, Lcom/join/mgps/adapter/ForumPostsAdapter;->R0(Landroid/view/View;I)V

    .line 231
    .line 232
    .line 233
    goto/16 :goto_b

    .line 234
    .line 235
    :cond_8
    const v2, 0x7f080f97

    .line 236
    .line 237
    .line 238
    invoke-virtual {v4, v2}, Landroid/view/View;->setBackgroundResource(I)V

    .line 239
    .line 240
    .line 241
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 242
    .line 243
    .line 244
    move-result-object v0

    .line 245
    const v2, 0x7f120105

    .line 246
    .line 247
    .line 248
    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    .line 249
    .line 250
    .line 251
    move-result-object v0

    .line 252
    invoke-direct {v1, v4, v0}, Lcom/join/mgps/adapter/ForumPostsAdapter;->Q0(Landroid/view/View;Ljava/lang/CharSequence;)V

    .line 253
    .line 254
    .line 255
    const v0, 0x7f060034

    .line 256
    .line 257
    .line 258
    invoke-virtual {v5, v0}, Landroid/content/res/Resources;->getColor(I)I

    .line 259
    .line 260
    .line 261
    move-result v0

    .line 262
    invoke-direct {v1, v4, v0}, Lcom/join/mgps/adapter/ForumPostsAdapter;->R0(Landroid/view/View;I)V

    .line 263
    .line 264
    .line 265
    goto/16 :goto_b

    .line 266
    .line 267
    :cond_9
    invoke-virtual {v4, v14}, Landroid/view/View;->setBackgroundResource(I)V

    .line 268
    .line 269
    .line 270
    if-lez v15, :cond_a

    .line 271
    .line 272
    invoke-virtual {v1, v4, v15}, Lcom/join/mgps/adapter/ForumPostsAdapter;->B0(Landroid/widget/TextView;I)V

    .line 273
    .line 274
    .line 275
    goto/16 :goto_b

    .line 276
    .line 277
    :cond_a
    invoke-virtual {v1, v4, v7}, Lcom/join/mgps/adapter/ForumPostsAdapter;->A0(Landroid/view/View;I)V

    .line 278
    .line 279
    .line 280
    goto/16 :goto_b

    .line 281
    .line 282
    :cond_b
    invoke-virtual {v4, v14}, Landroid/view/View;->setBackgroundResource(I)V

    .line 283
    .line 284
    .line 285
    if-lez v15, :cond_c

    .line 286
    .line 287
    invoke-virtual {v1, v4, v15}, Lcom/join/mgps/adapter/ForumPostsAdapter;->B0(Landroid/widget/TextView;I)V

    .line 288
    .line 289
    .line 290
    goto/16 :goto_b

    .line 291
    .line 292
    :cond_c
    invoke-virtual {v1, v4, v7}, Lcom/join/mgps/adapter/ForumPostsAdapter;->A0(Landroid/view/View;I)V

    .line 293
    .line 294
    .line 295
    goto/16 :goto_b

    .line 296
    .line 297
    :cond_d
    invoke-virtual {v6}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getStatus()I

    .line 298
    .line 299
    .line 300
    move-result v8

    .line 301
    if-lez v15, :cond_e

    .line 302
    .line 303
    const/16 v8, 0x2b

    .line 304
    .line 305
    :cond_e
    if-eqz v8, :cond_11

    .line 306
    .line 307
    const/16 v10, 0x1b

    .line 308
    .line 309
    const-string v14, "\u6682\u505c\u4e2d"

    .line 310
    .line 311
    if-eq v8, v10, :cond_16

    .line 312
    .line 313
    const/4 v10, 0x2

    .line 314
    const-wide/16 v17, 0x0

    .line 315
    .line 316
    const-string v9, "/"

    .line 317
    .line 318
    const v3, 0x7f0a00f7

    .line 319
    .line 320
    .line 321
    if-eq v8, v10, :cond_14

    .line 322
    .line 323
    const/4 v10, 0x3

    .line 324
    if-eq v8, v10, :cond_12

    .line 325
    .line 326
    const/4 v10, 0x5

    .line 327
    if-eq v8, v10, :cond_10

    .line 328
    .line 329
    const/4 v10, 0x6

    .line 330
    if-eq v8, v10, :cond_12

    .line 331
    .line 332
    const/4 v10, 0x7

    .line 333
    if-eq v8, v10, :cond_11

    .line 334
    .line 335
    const/16 v7, 0x2a

    .line 336
    .line 337
    if-eq v8, v7, :cond_10

    .line 338
    .line 339
    const/16 v7, 0x2b

    .line 340
    .line 341
    if-eq v8, v7, :cond_f

    .line 342
    .line 343
    const v0, 0x7f0a12a5

    .line 344
    .line 345
    .line 346
    const/16 v7, 0x11

    .line 347
    .line 348
    packed-switch v8, :pswitch_data_0

    .line 349
    .line 350
    .line 351
    goto/16 :goto_b

    .line 352
    .line 353
    :pswitch_0
    invoke-direct {v1, v2, v7}, Lcom/join/mgps/adapter/ForumPostsAdapter;->U0(Lcom/join/mgps/base/b;I)V

    .line 354
    .line 355
    .line 356
    new-instance v7, Ljava/lang/StringBuilder;

    .line 357
    .line 358
    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    .line 359
    .line 360
    .line 361
    invoke-static {v11, v12}, Lcom/join/mgps/Util/UtilsMy;->c(J)Ljava/lang/String;

    .line 362
    .line 363
    .line 364
    move-result-object v8

    .line 365
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 366
    .line 367
    .line 368
    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 369
    .line 370
    .line 371
    invoke-static {v11, v12}, Lcom/join/mgps/Util/UtilsMy;->c(J)Ljava/lang/String;

    .line 372
    .line 373
    .line 374
    move-result-object v8

    .line 375
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 376
    .line 377
    .line 378
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 379
    .line 380
    .line 381
    move-result-object v7

    .line 382
    invoke-virtual {v2, v3, v7}, Lcom/join/mgps/base/b;->setText(ILjava/lang/CharSequence;)Lcom/join/mgps/base/b;

    .line 383
    .line 384
    .line 385
    const-string v3, "\u70b9\u51fb\u91cd\u65b0\u89e3\u538b"

    .line 386
    .line 387
    const v7, 0x7f0a0f94

    .line 388
    .line 389
    .line 390
    invoke-virtual {v2, v7, v3}, Lcom/join/mgps/base/b;->setText(ILjava/lang/CharSequence;)Lcom/join/mgps/base/b;

    .line 391
    .line 392
    .line 393
    invoke-virtual {v2, v0}, Lcom/join/mgps/base/b;->getView(I)Landroid/view/View;

    .line 394
    .line 395
    .line 396
    move-result-object v0

    .line 397
    check-cast v0, Landroid/widget/ProgressBar;

    .line 398
    .line 399
    invoke-virtual {v6}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getProgress()J

    .line 400
    .line 401
    .line 402
    move-result-wide v2

    .line 403
    long-to-int v3, v2

    .line 404
    invoke-virtual {v0, v3}, Landroid/widget/ProgressBar;->setProgress(I)V

    .line 405
    .line 406
    .line 407
    const v0, 0x7f080fb6

    .line 408
    .line 409
    .line 410
    invoke-virtual {v4, v0}, Landroid/view/View;->setBackgroundResource(I)V

    .line 411
    .line 412
    .line 413
    const-string v0, "\u89e3\u538b"

    .line 414
    .line 415
    invoke-direct {v1, v4, v0}, Lcom/join/mgps/adapter/ForumPostsAdapter;->Q0(Landroid/view/View;Ljava/lang/CharSequence;)V

    .line 416
    .line 417
    .line 418
    const v0, 0x7f06002b

    .line 419
    .line 420
    .line 421
    invoke-virtual {v5, v0}, Landroid/content/res/Resources;->getColor(I)I

    .line 422
    .line 423
    .line 424
    move-result v0

    .line 425
    invoke-direct {v1, v4, v0}, Lcom/join/mgps/adapter/ForumPostsAdapter;->R0(Landroid/view/View;I)V

    .line 426
    .line 427
    .line 428
    goto/16 :goto_b

    .line 429
    .line 430
    :pswitch_1
    invoke-direct {v1, v2, v7}, Lcom/join/mgps/adapter/ForumPostsAdapter;->U0(Lcom/join/mgps/base/b;I)V

    .line 431
    .line 432
    .line 433
    new-instance v7, Ljava/lang/StringBuilder;

    .line 434
    .line 435
    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    .line 436
    .line 437
    .line 438
    invoke-static {v11, v12}, Lcom/join/mgps/Util/UtilsMy;->c(J)Ljava/lang/String;

    .line 439
    .line 440
    .line 441
    move-result-object v8

    .line 442
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 443
    .line 444
    .line 445
    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 446
    .line 447
    .line 448
    invoke-static {v11, v12}, Lcom/join/mgps/Util/UtilsMy;->c(J)Ljava/lang/String;

    .line 449
    .line 450
    .line 451
    move-result-object v8

    .line 452
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 453
    .line 454
    .line 455
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 456
    .line 457
    .line 458
    move-result-object v7

    .line 459
    invoke-virtual {v2, v3, v7}, Lcom/join/mgps/base/b;->setText(ILjava/lang/CharSequence;)Lcom/join/mgps/base/b;

    .line 460
    .line 461
    .line 462
    const-string v3, "\u89e3\u538b\u4e2d.."

    .line 463
    .line 464
    const v7, 0x7f0a0f94

    .line 465
    .line 466
    .line 467
    invoke-virtual {v2, v7, v3}, Lcom/join/mgps/base/b;->setText(ILjava/lang/CharSequence;)Lcom/join/mgps/base/b;

    .line 468
    .line 469
    .line 470
    invoke-virtual {v2, v0}, Lcom/join/mgps/base/b;->getView(I)Landroid/view/View;

    .line 471
    .line 472
    .line 473
    move-result-object v0

    .line 474
    check-cast v0, Landroid/widget/ProgressBar;

    .line 475
    .line 476
    invoke-virtual {v6}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getProgress()J

    .line 477
    .line 478
    .line 479
    move-result-wide v2

    .line 480
    long-to-int v3, v2

    .line 481
    invoke-virtual {v0, v3}, Landroid/widget/ProgressBar;->setProgress(I)V

    .line 482
    .line 483
    .line 484
    const v0, 0x7f080550

    .line 485
    .line 486
    .line 487
    invoke-virtual {v4, v0}, Landroid/view/View;->setBackgroundResource(I)V

    .line 488
    .line 489
    .line 490
    const-string v0, "\u89e3\u538b\u4e2d"

    .line 491
    .line 492
    invoke-direct {v1, v4, v0}, Lcom/join/mgps/adapter/ForumPostsAdapter;->Q0(Landroid/view/View;Ljava/lang/CharSequence;)V

    .line 493
    .line 494
    .line 495
    const v0, 0x7f060032

    .line 496
    .line 497
    .line 498
    invoke-virtual {v5, v0}, Landroid/content/res/Resources;->getColor(I)I

    .line 499
    .line 500
    .line 501
    move-result v0

    .line 502
    invoke-direct {v1, v4, v0}, Lcom/join/mgps/adapter/ForumPostsAdapter;->R0(Landroid/view/View;I)V

    .line 503
    .line 504
    .line 505
    goto/16 :goto_b

    .line 506
    .line 507
    :pswitch_2
    const/4 v0, 0x0

    .line 508
    invoke-direct {v1, v2, v0}, Lcom/join/mgps/adapter/ForumPostsAdapter;->U0(Lcom/join/mgps/base/b;I)V

    .line 509
    .line 510
    .line 511
    const v0, 0x7f080f90

    .line 512
    .line 513
    .line 514
    invoke-virtual {v4, v0}, Landroid/view/View;->setBackgroundResource(I)V

    .line 515
    .line 516
    .line 517
    const-string v0, "\u5b89\u88c5"

    .line 518
    .line 519
    invoke-direct {v1, v4, v0}, Lcom/join/mgps/adapter/ForumPostsAdapter;->Q0(Landroid/view/View;Ljava/lang/CharSequence;)V

    .line 520
    .line 521
    .line 522
    const v0, 0x7f060031

    .line 523
    .line 524
    .line 525
    invoke-virtual {v5, v0}, Landroid/content/res/Resources;->getColor(I)I

    .line 526
    .line 527
    .line 528
    move-result v0

    .line 529
    invoke-direct {v1, v4, v0}, Lcom/join/mgps/adapter/ForumPostsAdapter;->R0(Landroid/view/View;I)V

    .line 530
    .line 531
    .line 532
    goto/16 :goto_b

    .line 533
    .line 534
    :pswitch_3
    const/16 v0, 0x10

    .line 535
    .line 536
    invoke-direct {v1, v2, v0}, Lcom/join/mgps/adapter/ForumPostsAdapter;->U0(Lcom/join/mgps/base/b;I)V

    .line 537
    .line 538
    .line 539
    const v0, 0x7f080f8b

    .line 540
    .line 541
    .line 542
    invoke-virtual {v4, v0}, Landroid/view/View;->setBackgroundResource(I)V

    .line 543
    .line 544
    .line 545
    const-string v0, "\u7b49\u5f85"

    .line 546
    .line 547
    invoke-direct {v1, v4, v0}, Lcom/join/mgps/adapter/ForumPostsAdapter;->Q0(Landroid/view/View;Ljava/lang/CharSequence;)V

    .line 548
    .line 549
    .line 550
    const v0, 0x7f06002b

    .line 551
    .line 552
    .line 553
    invoke-virtual {v5, v0}, Landroid/content/res/Resources;->getColor(I)I

    .line 554
    .line 555
    .line 556
    move-result v0

    .line 557
    invoke-direct {v1, v4, v0}, Lcom/join/mgps/adapter/ForumPostsAdapter;->R0(Landroid/view/View;I)V

    .line 558
    .line 559
    .line 560
    goto/16 :goto_b

    .line 561
    .line 562
    :pswitch_4
    const/4 v8, 0x0

    .line 563
    invoke-direct {v1, v2, v8}, Lcom/join/mgps/adapter/ForumPostsAdapter;->U0(Lcom/join/mgps/base/b;I)V

    .line 564
    .line 565
    .line 566
    const v0, 0x7f080f90

    .line 567
    .line 568
    .line 569
    invoke-virtual {v4, v0}, Landroid/view/View;->setBackgroundResource(I)V

    .line 570
    .line 571
    .line 572
    invoke-direct {v1, v4, v13}, Lcom/join/mgps/adapter/ForumPostsAdapter;->Q0(Landroid/view/View;Ljava/lang/CharSequence;)V

    .line 573
    .line 574
    .line 575
    const v0, 0x7f060031

    .line 576
    .line 577
    .line 578
    invoke-virtual {v5, v0}, Landroid/content/res/Resources;->getColor(I)I

    .line 579
    .line 580
    .line 581
    move-result v0

    .line 582
    invoke-direct {v1, v4, v0}, Lcom/join/mgps/adapter/ForumPostsAdapter;->R0(Landroid/view/View;I)V

    .line 583
    .line 584
    .line 585
    goto/16 :goto_b

    .line 586
    .line 587
    :cond_f
    const v0, 0x7f080f90

    .line 588
    .line 589
    .line 590
    const/4 v8, 0x0

    .line 591
    invoke-direct {v1, v2, v8}, Lcom/join/mgps/adapter/ForumPostsAdapter;->U0(Lcom/join/mgps/base/b;I)V

    .line 592
    .line 593
    .line 594
    invoke-virtual {v4, v0}, Landroid/view/View;->setBackgroundResource(I)V

    .line 595
    .line 596
    .line 597
    if-lez v15, :cond_18

    .line 598
    .line 599
    invoke-virtual {v1, v4, v15}, Lcom/join/mgps/adapter/ForumPostsAdapter;->B0(Landroid/widget/TextView;I)V

    .line 600
    .line 601
    .line 602
    goto/16 :goto_b

    .line 603
    .line 604
    :cond_10
    const/4 v8, 0x0

    .line 605
    goto :goto_5

    .line 606
    :cond_11
    const/4 v0, 0x0

    .line 607
    goto/16 :goto_a

    .line 608
    .line 609
    :cond_12
    const v0, 0x7f080f8b

    .line 610
    .line 611
    .line 612
    goto :goto_6

    .line 613
    :goto_5
    invoke-direct {v1, v2, v8}, Lcom/join/mgps/adapter/ForumPostsAdapter;->U0(Lcom/join/mgps/base/b;I)V

    .line 614
    .line 615
    .line 616
    const v2, 0x7f080f97

    .line 617
    .line 618
    .line 619
    invoke-virtual {v4, v2}, Landroid/view/View;->setBackgroundResource(I)V

    .line 620
    .line 621
    .line 622
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 623
    .line 624
    .line 625
    move-result-object v0

    .line 626
    const v2, 0x7f120105

    .line 627
    .line 628
    .line 629
    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    .line 630
    .line 631
    .line 632
    move-result-object v0

    .line 633
    invoke-direct {v1, v4, v0}, Lcom/join/mgps/adapter/ForumPostsAdapter;->Q0(Landroid/view/View;Ljava/lang/CharSequence;)V

    .line 634
    .line 635
    .line 636
    const v0, 0x7f060034

    .line 637
    .line 638
    .line 639
    invoke-virtual {v5, v0}, Landroid/content/res/Resources;->getColor(I)I

    .line 640
    .line 641
    .line 642
    move-result v0

    .line 643
    invoke-direct {v1, v4, v0}, Lcom/join/mgps/adapter/ForumPostsAdapter;->R0(Landroid/view/View;I)V

    .line 644
    .line 645
    .line 646
    goto/16 :goto_b

    .line 647
    .line 648
    :goto_6
    invoke-virtual {v4, v0}, Landroid/view/View;->setBackgroundResource(I)V

    .line 649
    .line 650
    .line 651
    const-string v0, "\u7ee7\u7eed"

    .line 652
    .line 653
    invoke-direct {v1, v4, v0}, Lcom/join/mgps/adapter/ForumPostsAdapter;->Q0(Landroid/view/View;Ljava/lang/CharSequence;)V

    .line 654
    .line 655
    .line 656
    const v0, 0x7f06002b

    .line 657
    .line 658
    .line 659
    invoke-virtual {v5, v0}, Landroid/content/res/Resources;->getColor(I)I

    .line 660
    .line 661
    .line 662
    move-result v0

    .line 663
    invoke-direct {v1, v4, v0}, Lcom/join/mgps/adapter/ForumPostsAdapter;->R0(Landroid/view/View;I)V

    .line 664
    .line 665
    .line 666
    const/16 v0, 0x10

    .line 667
    .line 668
    invoke-direct {v1, v2, v0}, Lcom/join/mgps/adapter/ForumPostsAdapter;->U0(Lcom/join/mgps/base/b;I)V

    .line 669
    .line 670
    .line 671
    :try_start_0
    invoke-virtual {v6}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getSize()J

    .line 672
    .line 673
    .line 674
    move-result-wide v7

    .line 675
    cmp-long v0, v7, v17

    .line 676
    .line 677
    if-nez v0, :cond_13

    .line 678
    .line 679
    new-instance v0, Ljava/lang/StringBuilder;

    .line 680
    .line 681
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 682
    .line 683
    .line 684
    invoke-virtual {v6}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getCurrentSize()J

    .line 685
    .line 686
    .line 687
    move-result-wide v7

    .line 688
    invoke-static {v7, v8}, Lcom/join/mgps/Util/UtilsMy;->c(J)Ljava/lang/String;

    .line 689
    .line 690
    .line 691
    move-result-object v5

    .line 692
    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 693
    .line 694
    .line 695
    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 696
    .line 697
    .line 698
    invoke-static {v11, v12}, Lcom/join/mgps/Util/UtilsMy;->c(J)Ljava/lang/String;

    .line 699
    .line 700
    .line 701
    move-result-object v5

    .line 702
    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 703
    .line 704
    .line 705
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 706
    .line 707
    .line 708
    move-result-object v0

    .line 709
    invoke-virtual {v2, v3, v0}, Lcom/join/mgps/base/b;->setText(ILjava/lang/CharSequence;)Lcom/join/mgps/base/b;

    .line 710
    .line 711
    .line 712
    goto :goto_7

    .line 713
    :cond_13
    new-instance v0, Ljava/lang/StringBuilder;

    .line 714
    .line 715
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 716
    .line 717
    .line 718
    invoke-virtual {v6}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getCurrentSize()J

    .line 719
    .line 720
    .line 721
    move-result-wide v7

    .line 722
    invoke-static {v7, v8}, Lcom/join/mgps/Util/UtilsMy;->c(J)Ljava/lang/String;

    .line 723
    .line 724
    .line 725
    move-result-object v5

    .line 726
    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 727
    .line 728
    .line 729
    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 730
    .line 731
    .line 732
    invoke-static {v11, v12}, Lcom/join/mgps/Util/UtilsMy;->c(J)Ljava/lang/String;

    .line 733
    .line 734
    .line 735
    move-result-object v5

    .line 736
    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 737
    .line 738
    .line 739
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 740
    .line 741
    .line 742
    move-result-object v0

    .line 743
    invoke-virtual {v2, v3, v0}, Lcom/join/mgps/base/b;->setText(ILjava/lang/CharSequence;)Lcom/join/mgps/base/b;

    .line 744
    .line 745
    .line 746
    :goto_7
    const v0, 0x7f0a129e

    .line 747
    .line 748
    .line 749
    invoke-virtual {v2, v0}, Lcom/join/mgps/base/b;->getView(I)Landroid/view/View;

    .line 750
    .line 751
    .line 752
    move-result-object v0

    .line 753
    check-cast v0, Landroid/widget/ProgressBar;

    .line 754
    .line 755
    invoke-virtual {v6}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getProgress()J

    .line 756
    .line 757
    .line 758
    move-result-wide v5

    .line 759
    long-to-int v3, v5

    .line 760
    invoke-virtual {v0, v3}, Landroid/widget/ProgressBar;->setProgress(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 761
    .line 762
    .line 763
    goto :goto_8

    .line 764
    :catch_0
    move-exception v0

    .line 765
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 766
    .line 767
    .line 768
    :goto_8
    const v3, 0x7f0a0f94

    .line 769
    .line 770
    .line 771
    invoke-virtual {v2, v3, v14}, Lcom/join/mgps/base/b;->setText(ILjava/lang/CharSequence;)Lcom/join/mgps/base/b;

    .line 772
    .line 773
    .line 774
    goto/16 :goto_b

    .line 775
    .line 776
    :cond_14
    invoke-static {v6}, Lcom/join/mgps/Util/UtilsMy;->U4(Lcom/github/snowdream/android/app/downloader/DownloadTask;)V

    .line 777
    .line 778
    .line 779
    const v0, 0x7f080f8b

    .line 780
    .line 781
    .line 782
    invoke-virtual {v4, v0}, Landroid/view/View;->setBackgroundResource(I)V

    .line 783
    .line 784
    .line 785
    const-string v0, "\u6682\u505c"

    .line 786
    .line 787
    invoke-direct {v1, v4, v0}, Lcom/join/mgps/adapter/ForumPostsAdapter;->Q0(Landroid/view/View;Ljava/lang/CharSequence;)V

    .line 788
    .line 789
    .line 790
    const v0, 0x7f06002b

    .line 791
    .line 792
    .line 793
    invoke-virtual {v5, v0}, Landroid/content/res/Resources;->getColor(I)I

    .line 794
    .line 795
    .line 796
    move-result v0

    .line 797
    invoke-direct {v1, v4, v0}, Lcom/join/mgps/adapter/ForumPostsAdapter;->R0(Landroid/view/View;I)V

    .line 798
    .line 799
    .line 800
    const/16 v0, 0x10

    .line 801
    .line 802
    invoke-direct {v1, v2, v0}, Lcom/join/mgps/adapter/ForumPostsAdapter;->U0(Lcom/join/mgps/base/b;I)V

    .line 803
    .line 804
    .line 805
    invoke-virtual {v6}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getSize()J

    .line 806
    .line 807
    .line 808
    move-result-wide v7

    .line 809
    cmp-long v0, v7, v17

    .line 810
    .line 811
    if-nez v0, :cond_15

    .line 812
    .line 813
    new-instance v0, Ljava/lang/StringBuilder;

    .line 814
    .line 815
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 816
    .line 817
    .line 818
    invoke-virtual {v6}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getCurrentSize()J

    .line 819
    .line 820
    .line 821
    move-result-wide v7

    .line 822
    invoke-static {v7, v8}, Lcom/join/mgps/Util/UtilsMy;->c(J)Ljava/lang/String;

    .line 823
    .line 824
    .line 825
    move-result-object v5

    .line 826
    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 827
    .line 828
    .line 829
    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 830
    .line 831
    .line 832
    invoke-static {v11, v12}, Lcom/join/mgps/Util/UtilsMy;->c(J)Ljava/lang/String;

    .line 833
    .line 834
    .line 835
    move-result-object v5

    .line 836
    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 837
    .line 838
    .line 839
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 840
    .line 841
    .line 842
    move-result-object v0

    .line 843
    invoke-virtual {v2, v3, v0}, Lcom/join/mgps/base/b;->setText(ILjava/lang/CharSequence;)Lcom/join/mgps/base/b;

    .line 844
    .line 845
    .line 846
    goto :goto_9

    .line 847
    :cond_15
    new-instance v0, Ljava/lang/StringBuilder;

    .line 848
    .line 849
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 850
    .line 851
    .line 852
    invoke-virtual {v6}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getCurrentSize()J

    .line 853
    .line 854
    .line 855
    move-result-wide v7

    .line 856
    invoke-static {v7, v8}, Lcom/join/mgps/Util/UtilsMy;->c(J)Ljava/lang/String;

    .line 857
    .line 858
    .line 859
    move-result-object v5

    .line 860
    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 861
    .line 862
    .line 863
    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 864
    .line 865
    .line 866
    invoke-static {v11, v12}, Lcom/join/mgps/Util/UtilsMy;->c(J)Ljava/lang/String;

    .line 867
    .line 868
    .line 869
    move-result-object v5

    .line 870
    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 871
    .line 872
    .line 873
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 874
    .line 875
    .line 876
    move-result-object v0

    .line 877
    invoke-virtual {v2, v3, v0}, Lcom/join/mgps/base/b;->setText(ILjava/lang/CharSequence;)Lcom/join/mgps/base/b;

    .line 878
    .line 879
    .line 880
    :goto_9
    const v0, 0x7f0a129e

    .line 881
    .line 882
    .line 883
    invoke-virtual {v2, v0}, Lcom/join/mgps/base/b;->getView(I)Landroid/view/View;

    .line 884
    .line 885
    .line 886
    move-result-object v0

    .line 887
    check-cast v0, Landroid/widget/ProgressBar;

    .line 888
    .line 889
    invoke-virtual {v6}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getProgress()J

    .line 890
    .line 891
    .line 892
    move-result-wide v7

    .line 893
    long-to-int v3, v7

    .line 894
    invoke-virtual {v0, v3}, Landroid/widget/ProgressBar;->setProgress(I)V

    .line 895
    .line 896
    .line 897
    invoke-virtual {v6}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getSpeed()Ljava/lang/String;

    .line 898
    .line 899
    .line 900
    move-result-object v0

    .line 901
    new-instance v3, Ljava/lang/StringBuilder;

    .line 902
    .line 903
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 904
    .line 905
    .line 906
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 907
    .line 908
    .line 909
    const-string v0, "/S"

    .line 910
    .line 911
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 912
    .line 913
    .line 914
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 915
    .line 916
    .line 917
    move-result-object v0

    .line 918
    const v3, 0x7f0a0f94

    .line 919
    .line 920
    .line 921
    invoke-virtual {v2, v3, v0}, Lcom/join/mgps/base/b;->setText(ILjava/lang/CharSequence;)Lcom/join/mgps/base/b;

    .line 922
    .line 923
    .line 924
    goto :goto_b

    .line 925
    :cond_16
    invoke-direct {v1, v4, v14}, Lcom/join/mgps/adapter/ForumPostsAdapter;->Q0(Landroid/view/View;Ljava/lang/CharSequence;)V

    .line 926
    .line 927
    .line 928
    goto :goto_b

    .line 929
    :goto_a
    invoke-direct {v1, v2, v0}, Lcom/join/mgps/adapter/ForumPostsAdapter;->U0(Lcom/join/mgps/base/b;I)V

    .line 930
    .line 931
    .line 932
    const v0, 0x7f080f90

    .line 933
    .line 934
    .line 935
    invoke-virtual {v4, v0}, Landroid/view/View;->setBackgroundResource(I)V

    .line 936
    .line 937
    .line 938
    if-lez v15, :cond_17

    .line 939
    .line 940
    invoke-virtual {v1, v4, v15}, Lcom/join/mgps/adapter/ForumPostsAdapter;->B0(Landroid/widget/TextView;I)V

    .line 941
    .line 942
    .line 943
    goto :goto_b

    .line 944
    :cond_17
    invoke-virtual {v1, v4, v7}, Lcom/join/mgps/adapter/ForumPostsAdapter;->A0(Landroid/view/View;I)V

    .line 945
    .line 946
    .line 947
    :cond_18
    :goto_b
    new-instance v0, Lcom/join/mgps/adapter/ForumPostsAdapter$z;

    .line 948
    .line 949
    move-object/from16 v2, p2

    .line 950
    .line 951
    invoke-direct {v0, v1, v2}, Lcom/join/mgps/adapter/ForumPostsAdapter$z;-><init>(Lcom/join/mgps/adapter/ForumPostsAdapter;Ljava/lang/Object;)V

    .line 952
    .line 953
    .line 954
    invoke-virtual {v4, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 955
    .line 956
    .line 957
    :cond_19
    :goto_c
    return-void

    .line 958
    nop

    .line 959
    :pswitch_data_0
    .packed-switch 0x9
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public D0(Lcom/join/mgps/adapter/ForumPostsAdapter$b0;)V
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
    iput-object p1, p0, Lcom/join/mgps/adapter/ForumPostsAdapter;->v:Lcom/join/mgps/adapter/ForumPostsAdapter$b0;

    .line 2
    .line 3
    return-void
.end method

.method public E0(Landroid/view/View;Lcom/join/mgps/adapter/ForumPostsAdapter$e0$c;)V
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
    new-instance v0, Lcom/join/mgps/adapter/ForumPostsAdapter$g;

    .line 2
    .line 3
    invoke-direct {v0, p0, p2}, Lcom/join/mgps/adapter/ForumPostsAdapter$g;-><init>(Lcom/join/mgps/adapter/ForumPostsAdapter;Lcom/join/mgps/adapter/ForumPostsAdapter$e0$c;)V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p1, v0}, Landroid/view/View;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 7
    .line 8
    .line 9
    return-void
.end method

.method public F0(Landroid/view/View;Lcom/join/mgps/adapter/ForumPostsAdapter$e0$a;)V
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
    new-instance v0, Lcom/join/mgps/adapter/ForumPostsAdapter$f;

    .line 2
    .line 3
    invoke-direct {v0, p0, p2}, Lcom/join/mgps/adapter/ForumPostsAdapter$f;-><init>(Lcom/join/mgps/adapter/ForumPostsAdapter;Lcom/join/mgps/adapter/ForumPostsAdapter$e0$a;)V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 7
    .line 8
    .line 9
    return-void
.end method

.method public G0(Landroid/view/View;)V
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
    new-instance v0, Lcom/join/mgps/adapter/ForumPostsAdapter$e;

    .line 2
    .line 3
    invoke-direct {v0, p0}, Lcom/join/mgps/adapter/ForumPostsAdapter$e;-><init>(Lcom/join/mgps/adapter/ForumPostsAdapter;)V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 7
    .line 8
    .line 9
    return-void
.end method

.method H(Ljava/lang/String;Lcom/join/mgps/adapter/ForumPostsAdapter$d0;)V
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
    iget-object v0, p0, Lcom/join/mgps/adapter/ForumPostsAdapter;->r:Ljava/util/Hashtable;

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
    iput-object v0, p0, Lcom/join/mgps/adapter/ForumPostsAdapter;->r:Ljava/util/Hashtable;

    .line 11
    .line 12
    :cond_0
    iget-object v0, p0, Lcom/join/mgps/adapter/ForumPostsAdapter;->r:Ljava/util/Hashtable;

    .line 13
    .line 14
    invoke-virtual {v0, p1, p2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 15
    .line 16
    .line 17
    return-void
.end method

.method public H0(Landroid/view/View;ZZIILjava/lang/String;Ljava/lang/String;)V
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
    new-instance v8, Lcom/join/mgps/adapter/ForumPostsAdapter$i;

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
    invoke-direct/range {v0 .. v7}, Lcom/join/mgps/adapter/ForumPostsAdapter$i;-><init>(Lcom/join/mgps/adapter/ForumPostsAdapter;IZZILjava/lang/String;Ljava/lang/String;)V

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

.method public I0(Landroid/view/View;IILjava/lang/String;)V
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
    new-instance v0, Lcom/join/mgps/adapter/ForumPostsAdapter$h;

    .line 44
    .line 45
    invoke-direct {v0, p0, p2, p3, p4}, Lcom/join/mgps/adapter/ForumPostsAdapter$h;-><init>(Lcom/join/mgps/adapter/ForumPostsAdapter;IILjava/lang/String;)V

    .line 46
    .line 47
    .line 48
    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 49
    .line 50
    .line 51
    return-void
.end method

.method public J0(Landroid/view/View;I)V
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
    new-instance v0, Lcom/join/mgps/adapter/ForumPostsAdapter$d;

    .line 2
    .line 3
    invoke-direct {v0, p0, p2}, Lcom/join/mgps/adapter/ForumPostsAdapter$d;-><init>(Lcom/join/mgps/adapter/ForumPostsAdapter;I)V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 7
    .line 8
    .line 9
    return-void
.end method

.method public N0(Landroid/view/View;Ljava/lang/String;Ljava/lang/String;)V
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
    new-instance p2, Lcom/join/mgps/adapter/ForumPostsAdapter$m;

    .line 5
    .line 6
    invoke-direct {p2, p0, p3}, Lcom/join/mgps/adapter/ForumPostsAdapter$m;-><init>(Lcom/join/mgps/adapter/ForumPostsAdapter;Ljava/lang/String;)V

    .line 7
    .line 8
    .line 9
    invoke-virtual {p1, p2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 10
    .line 11
    .line 12
    return-void
.end method

.method S0(Landroid/view/View;IZZIILjava/lang/String;Ljava/lang/String;)V
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
    iget-object v0, p0, Lcom/join/mgps/adapter/ForumPostsAdapter;->u:Lcom/join/mgps/adapter/ForumPostsAdapter$a0;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    new-instance v0, Lcom/join/mgps/adapter/ForumPostsAdapter$a0;

    .line 6
    .line 7
    iget-object v1, p0, Lcom/join/mgps/adapter/ForumPostsAdapter;->k:Landroid/content/Context;

    .line 8
    .line 9
    invoke-direct {v0, p0, v1}, Lcom/join/mgps/adapter/ForumPostsAdapter$a0;-><init>(Lcom/join/mgps/adapter/ForumPostsAdapter;Landroid/content/Context;)V

    .line 10
    .line 11
    .line 12
    iput-object v0, p0, Lcom/join/mgps/adapter/ForumPostsAdapter;->u:Lcom/join/mgps/adapter/ForumPostsAdapter$a0;

    .line 13
    .line 14
    :cond_0
    iget-object v0, p0, Lcom/join/mgps/adapter/ForumPostsAdapter;->u:Lcom/join/mgps/adapter/ForumPostsAdapter$a0;

    .line 15
    .line 16
    invoke-virtual {v0, p5}, Lcom/join/mgps/adapter/ForumPostsAdapter$a0;->q(I)V

    .line 17
    .line 18
    .line 19
    iget-object p5, p0, Lcom/join/mgps/adapter/ForumPostsAdapter;->u:Lcom/join/mgps/adapter/ForumPostsAdapter$a0;

    .line 20
    .line 21
    invoke-virtual {p5, p6}, Lcom/join/mgps/adapter/ForumPostsAdapter$a0;->A(I)V

    .line 22
    .line 23
    .line 24
    iget-object p5, p0, Lcom/join/mgps/adapter/ForumPostsAdapter;->u:Lcom/join/mgps/adapter/ForumPostsAdapter$a0;

    .line 25
    .line 26
    invoke-virtual {p5, p8}, Lcom/join/mgps/adapter/ForumPostsAdapter$a0;->x(Ljava/lang/String;)V

    .line 27
    .line 28
    .line 29
    iget-object p5, p0, Lcom/join/mgps/adapter/ForumPostsAdapter;->u:Lcom/join/mgps/adapter/ForumPostsAdapter$a0;

    .line 30
    .line 31
    invoke-virtual {p5, p2}, Lcom/join/mgps/adapter/ForumPostsAdapter$a0;->w(I)V

    .line 32
    .line 33
    .line 34
    iget-object p2, p0, Lcom/join/mgps/adapter/ForumPostsAdapter;->u:Lcom/join/mgps/adapter/ForumPostsAdapter$a0;

    .line 35
    .line 36
    const/4 p5, 0x0

    .line 37
    invoke-virtual {p2, p5}, Lcom/join/mgps/adapter/ForumPostsAdapter$a0;->t(I)V

    .line 38
    .line 39
    .line 40
    const/16 p2, 0x8

    .line 41
    .line 42
    if-eqz p3, :cond_1

    .line 43
    .line 44
    iget-object p3, p0, Lcom/join/mgps/adapter/ForumPostsAdapter;->u:Lcom/join/mgps/adapter/ForumPostsAdapter$a0;

    .line 45
    .line 46
    invoke-virtual {p3, p5}, Lcom/join/mgps/adapter/ForumPostsAdapter$a0;->v(I)V

    .line 47
    .line 48
    .line 49
    goto :goto_0

    .line 50
    :cond_1
    iget-object p3, p0, Lcom/join/mgps/adapter/ForumPostsAdapter;->u:Lcom/join/mgps/adapter/ForumPostsAdapter$a0;

    .line 51
    .line 52
    invoke-virtual {p3, p2}, Lcom/join/mgps/adapter/ForumPostsAdapter$a0;->v(I)V

    .line 53
    .line 54
    .line 55
    :goto_0
    if-eqz p4, :cond_2

    .line 56
    .line 57
    iget-object p2, p0, Lcom/join/mgps/adapter/ForumPostsAdapter;->u:Lcom/join/mgps/adapter/ForumPostsAdapter$a0;

    .line 58
    .line 59
    invoke-virtual {p2, p5}, Lcom/join/mgps/adapter/ForumPostsAdapter$a0;->z(I)V

    .line 60
    .line 61
    .line 62
    goto :goto_1

    .line 63
    :cond_2
    iget-object p3, p0, Lcom/join/mgps/adapter/ForumPostsAdapter;->u:Lcom/join/mgps/adapter/ForumPostsAdapter$a0;

    .line 64
    .line 65
    invoke-virtual {p3, p2}, Lcom/join/mgps/adapter/ForumPostsAdapter$a0;->z(I)V

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
    iget-object p2, p0, Lcom/join/mgps/adapter/ForumPostsAdapter;->u:Lcom/join/mgps/adapter/ForumPostsAdapter$a0;

    .line 77
    .line 78
    invoke-virtual {p2, p7}, Lcom/join/mgps/adapter/ForumPostsAdapter$a0;->y(Ljava/lang/String;)V

    .line 79
    .line 80
    .line 81
    iget-object p2, p0, Lcom/join/mgps/adapter/ForumPostsAdapter;->u:Lcom/join/mgps/adapter/ForumPostsAdapter$a0;

    .line 82
    .line 83
    invoke-virtual {p2, p1}, Lcom/join/mgps/adapter/ForumPostsAdapter$a0;->showAsDropDown(Landroid/view/View;)V

    .line 84
    .line 85
    .line 86
    return-void
.end method

.method public b0()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/adapter/ForumPostsAdapter;->r:Ljava/util/Hashtable;

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

.method protected c0(Lcom/join/mgps/base/b;Lcom/join/mgps/adapter/ForumPostsAdapter$e0;)V
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
    invoke-virtual {p2}, Lcom/join/mgps/adapter/ForumPostsAdapter$e0;->getItemType()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    sget-object v1, Lcom/join/mgps/adapter/ForumPostsAdapter$ViewType;->POST_HEADER:Lcom/join/mgps/adapter/ForumPostsAdapter$ViewType;

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
    invoke-direct {p0, p1, p2}, Lcom/join/mgps/adapter/ForumPostsAdapter;->S(Lcom/join/mgps/base/b;Lcom/join/mgps/adapter/ForumPostsAdapter$e0;)V

    .line 14
    .line 15
    .line 16
    goto/16 :goto_0

    .line 17
    .line 18
    :cond_0
    sget-object v1, Lcom/join/mgps/adapter/ForumPostsAdapter$ViewType;->POST_HEADER1:Lcom/join/mgps/adapter/ForumPostsAdapter$ViewType;

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
    invoke-direct {p0, p1, p2}, Lcom/join/mgps/adapter/ForumPostsAdapter;->R(Lcom/join/mgps/base/b;Lcom/join/mgps/adapter/ForumPostsAdapter$e0;)V

    .line 27
    .line 28
    .line 29
    goto/16 :goto_0

    .line 30
    .line 31
    :cond_1
    sget-object v1, Lcom/join/mgps/adapter/ForumPostsAdapter$ViewType;->POST_FOOTER:Lcom/join/mgps/adapter/ForumPostsAdapter$ViewType;

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
    invoke-direct {p0, p1, p2}, Lcom/join/mgps/adapter/ForumPostsAdapter;->O(Lcom/join/mgps/base/b;Lcom/join/mgps/adapter/ForumPostsAdapter$e0;)V

    .line 40
    .line 41
    .line 42
    goto/16 :goto_0

    .line 43
    .line 44
    :cond_2
    sget-object v1, Lcom/join/mgps/adapter/ForumPostsAdapter$ViewType;->POST_FOOTER1:Lcom/join/mgps/adapter/ForumPostsAdapter$ViewType;

    .line 45
    .line 46
    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    .line 47
    .line 48
    .line 49
    move-result v1

    .line 50
    if-ne v0, v1, :cond_3

    .line 51
    .line 52
    invoke-direct {p0, p1, p2}, Lcom/join/mgps/adapter/ForumPostsAdapter;->N(Lcom/join/mgps/base/b;Lcom/join/mgps/adapter/ForumPostsAdapter$e0;)V

    .line 53
    .line 54
    .line 55
    goto/16 :goto_0

    .line 56
    .line 57
    :cond_3
    sget-object v1, Lcom/join/mgps/adapter/ForumPostsAdapter$ViewType;->POST_GAME_RES_LINK:Lcom/join/mgps/adapter/ForumPostsAdapter$ViewType;

    .line 58
    .line 59
    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    .line 60
    .line 61
    .line 62
    move-result v1

    .line 63
    if-ne v0, v1, :cond_4

    .line 64
    .line 65
    invoke-direct {p0, p1, p2}, Lcom/join/mgps/adapter/ForumPostsAdapter;->P(Lcom/join/mgps/base/b;Lcom/join/mgps/adapter/ForumPostsAdapter$e0;)V

    .line 66
    .line 67
    .line 68
    goto/16 :goto_0

    .line 69
    .line 70
    :cond_4
    sget-object v1, Lcom/join/mgps/adapter/ForumPostsAdapter$ViewType;->POST_GAME:Lcom/join/mgps/adapter/ForumPostsAdapter$ViewType;

    .line 71
    .line 72
    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    .line 73
    .line 74
    .line 75
    move-result v1

    .line 76
    if-ne v0, v1, :cond_5

    .line 77
    .line 78
    invoke-direct {p0, p1, p2}, Lcom/join/mgps/adapter/ForumPostsAdapter;->Q(Lcom/join/mgps/base/b;Lcom/join/mgps/adapter/ForumPostsAdapter$e0;)V

    .line 79
    .line 80
    .line 81
    goto :goto_0

    .line 82
    :cond_5
    sget-object v1, Lcom/join/mgps/adapter/ForumPostsAdapter$ViewType;->POST_IMAGE:Lcom/join/mgps/adapter/ForumPostsAdapter$ViewType;

    .line 83
    .line 84
    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    .line 85
    .line 86
    .line 87
    move-result v1

    .line 88
    if-ne v0, v1, :cond_6

    .line 89
    .line 90
    invoke-direct {p0, p1, p2}, Lcom/join/mgps/adapter/ForumPostsAdapter;->U(Lcom/join/mgps/base/b;Lcom/join/mgps/adapter/ForumPostsAdapter$e0;)V

    .line 91
    .line 92
    .line 93
    goto :goto_0

    .line 94
    :cond_6
    sget-object v1, Lcom/join/mgps/adapter/ForumPostsAdapter$ViewType;->POST_VIDEO:Lcom/join/mgps/adapter/ForumPostsAdapter$ViewType;

    .line 95
    .line 96
    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    .line 97
    .line 98
    .line 99
    move-result v1

    .line 100
    if-ne v0, v1, :cond_7

    .line 101
    .line 102
    invoke-direct {p0, p1, p2}, Lcom/join/mgps/adapter/ForumPostsAdapter;->Y(Lcom/join/mgps/base/b;Lcom/join/mgps/adapter/ForumPostsAdapter$e0;)V

    .line 103
    .line 104
    .line 105
    goto :goto_0

    .line 106
    :cond_7
    sget-object v1, Lcom/join/mgps/adapter/ForumPostsAdapter$ViewType;->POST_IMAGE_THUMBNAIL:Lcom/join/mgps/adapter/ForumPostsAdapter$ViewType;

    .line 107
    .line 108
    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    .line 109
    .line 110
    .line 111
    move-result v1

    .line 112
    if-ne v0, v1, :cond_8

    .line 113
    .line 114
    invoke-direct {p0, p1, p2}, Lcom/join/mgps/adapter/ForumPostsAdapter;->T(Lcom/join/mgps/base/b;Lcom/join/mgps/adapter/ForumPostsAdapter$e0;)V

    .line 115
    .line 116
    .line 117
    goto :goto_0

    .line 118
    :cond_8
    sget-object v1, Lcom/join/mgps/adapter/ForumPostsAdapter$ViewType;->POST_MESSAGE:Lcom/join/mgps/adapter/ForumPostsAdapter$ViewType;

    .line 119
    .line 120
    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    .line 121
    .line 122
    .line 123
    move-result v1

    .line 124
    if-ne v0, v1, :cond_9

    .line 125
    .line 126
    invoke-direct {p0, p1, p2}, Lcom/join/mgps/adapter/ForumPostsAdapter;->V(Lcom/join/mgps/base/b;Lcom/join/mgps/adapter/ForumPostsAdapter$e0;)V

    .line 127
    .line 128
    .line 129
    goto :goto_0

    .line 130
    :cond_9
    sget-object v1, Lcom/join/mgps/adapter/ForumPostsAdapter$ViewType;->POST_RICH_MESSAGE:Lcom/join/mgps/adapter/ForumPostsAdapter$ViewType;

    .line 131
    .line 132
    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    .line 133
    .line 134
    .line 135
    move-result v1

    .line 136
    if-ne v0, v1, :cond_a

    .line 137
    .line 138
    invoke-direct {p0, p1, p2}, Lcom/join/mgps/adapter/ForumPostsAdapter;->W(Lcom/join/mgps/base/b;Lcom/join/mgps/adapter/ForumPostsAdapter$e0;)V

    .line 139
    .line 140
    .line 141
    goto :goto_0

    .line 142
    :cond_a
    sget-object v1, Lcom/join/mgps/adapter/ForumPostsAdapter$ViewType;->POST_SUBJECT:Lcom/join/mgps/adapter/ForumPostsAdapter$ViewType;

    .line 143
    .line 144
    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    .line 145
    .line 146
    .line 147
    move-result v1

    .line 148
    if-ne v0, v1, :cond_b

    .line 149
    .line 150
    invoke-direct {p0, p1, p2}, Lcom/join/mgps/adapter/ForumPostsAdapter;->X(Lcom/join/mgps/base/b;Lcom/join/mgps/adapter/ForumPostsAdapter$e0;)V

    .line 151
    .line 152
    .line 153
    goto :goto_0

    .line 154
    :cond_b
    sget-object v1, Lcom/join/mgps/adapter/ForumPostsAdapter$ViewType;->EMPLOYEE_TAGS:Lcom/join/mgps/adapter/ForumPostsAdapter$ViewType;

    .line 155
    .line 156
    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    .line 157
    .line 158
    .line 159
    move-result v1

    .line 160
    if-ne v0, v1, :cond_c

    .line 161
    .line 162
    invoke-direct {p0, p1, p2}, Lcom/join/mgps/adapter/ForumPostsAdapter;->M(Lcom/join/mgps/base/b;Lcom/join/mgps/adapter/ForumPostsAdapter$e0;)V

    .line 163
    .line 164
    .line 165
    goto :goto_0

    .line 166
    :cond_c
    sget-object v1, Lcom/join/mgps/adapter/ForumPostsAdapter$ViewType;->DIVIDER:Lcom/join/mgps/adapter/ForumPostsAdapter$ViewType;

    .line 167
    .line 168
    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    .line 169
    .line 170
    .line 171
    move-result v1

    .line 172
    if-ne v0, v1, :cond_d

    .line 173
    .line 174
    invoke-direct {p0, p1, p2}, Lcom/join/mgps/adapter/ForumPostsAdapter;->L(Lcom/join/mgps/base/b;Lcom/join/mgps/adapter/ForumPostsAdapter$e0;)V

    .line 175
    .line 176
    .line 177
    :cond_d
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
    check-cast p2, Lcom/join/mgps/adapter/ForumPostsAdapter$e0;

    .line 2
    .line 3
    invoke-virtual {p0, p1, p2}, Lcom/join/mgps/adapter/ForumPostsAdapter;->c0(Lcom/join/mgps/base/b;Lcom/join/mgps/adapter/ForumPostsAdapter$e0;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public d0()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/adapter/ForumPostsAdapter;->j:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method f0(Ljava/lang/String;)Landroid/graphics/BitmapFactory$Options;
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

.method g0(Ljava/lang/String;)Lcom/join/mgps/adapter/ForumPostsAdapter$d0;
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
    iget-object v0, p0, Lcom/join/mgps/adapter/ForumPostsAdapter;->r:Ljava/util/Hashtable;

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
    check-cast p1, Lcom/join/mgps/adapter/ForumPostsAdapter$d0;

    .line 12
    .line 13
    return-object p1
.end method

.method public j0(Landroid/content/Context;)Lcom/danikula/videocache/i;
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

.method k0()Landroid/widget/LinearLayout$LayoutParams;
    .locals 7

    .line 1
    iget-object v0, p0, Lcom/join/mgps/adapter/ForumPostsAdapter;->k:Landroid/content/Context;

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
    iget-object v5, p0, Lcom/join/mgps/adapter/ForumPostsAdapter;->k:Landroid/content/Context;

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
    new-instance v0, Lcom/join/mgps/adapter/ForumPostsAdapter$b;

    .line 14
    .line 15
    invoke-direct {v0, p0, p1}, Lcom/join/mgps/adapter/ForumPostsAdapter$b;-><init>(Lcom/join/mgps/adapter/ForumPostsAdapter;Lcom/facebook/drawee/view/SimpleDraweeView;)V

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

.method public p0(Lcom/facebook/drawee/view/SimpleDraweeView;Ljava/lang/String;)V
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
    new-instance v0, Lcom/join/mgps/adapter/ForumPostsAdapter$a;

    .line 14
    .line 15
    invoke-direct {v0, p0, p1}, Lcom/join/mgps/adapter/ForumPostsAdapter$a;-><init>(Lcom/join/mgps/adapter/ForumPostsAdapter;Lcom/facebook/drawee/view/SimpleDraweeView;)V

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

.method public r0(Lcom/github/snowdream/android/app/downloader/DownloadTask;I)V
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

.method s0(Landroid/content/Context;Ljava/lang/String;)V
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
    new-instance v1, Lcom/join/mgps/adapter/ForumPostsAdapter$d0;

    .line 8
    .line 9
    invoke-direct {v1, p0}, Lcom/join/mgps/adapter/ForumPostsAdapter$d0;-><init>(Lcom/join/mgps/adapter/ForumPostsAdapter;)V

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
    iput v3, v1, Lcom/join/mgps/adapter/ForumPostsAdapter$d0;->a:I

    .line 60
    .line 61
    iput p1, v1, Lcom/join/mgps/adapter/ForumPostsAdapter$d0;->b:I

    .line 62
    .line 63
    invoke-virtual {p0, p2, v1}, Lcom/join/mgps/adapter/ForumPostsAdapter;->H(Ljava/lang/String;Lcom/join/mgps/adapter/ForumPostsAdapter$d0;)V

    .line 64
    .line 65
    .line 66
    :cond_0
    return-void
.end method

.method public v0(Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "allText"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/join/mgps/adapter/ForumPostsAdapter;->j:Ljava/lang/String;

    .line 2
    .line 3
    return-void
.end method

.method w0(Ljava/lang/String;Landroid/view/View;Lcom/facebook/imagepipeline/image/g;)Landroid/widget/LinearLayout$LayoutParams;
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
    iget-object v6, p0, Lcom/join/mgps/adapter/ForumPostsAdapter;->h:Ljava/lang/String;

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

.method x0(Lcom/join/mgps/adapter/ForumPostsAdapter$e0;Z)V
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
    invoke-virtual {p1}, Lcom/join/mgps/adapter/ForumPostsAdapter$e0;->a()Ljava/lang/Object;

    .line 5
    .line 6
    .line 7
    move-result-object p1

    .line 8
    check-cast p1, Lcom/join/mgps/adapter/ForumPostsAdapter$e0$d;

    .line 9
    .line 10
    iput-boolean p2, p1, Lcom/join/mgps/adapter/ForumPostsAdapter$e0$d;->h:Z
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
