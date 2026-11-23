.class public Lcom/join/mgps/customview/ForumIndexHeaderView;
.super Landroid/widget/LinearLayout;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/join/mgps/customview/ForumIndexHeaderView$c;
    }
.end annotation


# instance fields
.field A:Lcom/join/mgps/adapter/ForumBaseAdapter;

.field private B:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/join/mgps/dto/RecommendLabelTag;",
            ">;"
        }
    .end annotation
.end field

.field private C:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/join/mgps/dto/RecommenGroup;",
            ">;"
        }
    .end annotation
.end field

.field D:Landroid/view/animation/Animation;

.field E:Landroid/widget/LinearLayout$LayoutParams;

.field F:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field G:Landroid/view/View$OnClickListener;

.field H:Lcom/join/mgps/customview/ForumIndexHeaderView$c;

.field b:Lcom/join/mgps/customview/ViewPagerWithADs;

.field c:Landroid/view/View;

.field d:Landroid/widget/TextView;

.field e:Landroid/view/View;

.field f:Landroid/widget/TextView;

.field g:Lcom/join/mgps/customview/WrapContentListView;

.field h:Landroid/widget/TextView;

.field i:Landroid/view/View;

.field j:Landroid/widget/LinearLayout;

.field k:Landroid/widget/LinearLayout;

.field l:Landroid/view/View;

.field m:Landroid/view/View;

.field n:Lcom/join/mgps/customview/MyFlowLayout;

.field o:Landroid/view/View;

.field p:Landroid/view/View;

.field q:Landroid/widget/TextView;

.field r:Landroid/view/View;

.field s:Landroid/view/View;

.field t:Landroid/view/View;

.field u:Lcom/facebook/drawee/view/SimpleDraweeView;

.field v:Lcom/facebook/drawee/view/SimpleDraweeView;

.field w:Lcom/facebook/drawee/view/SimpleDraweeView;

.field x:Lcom/facebook/drawee/view/SimpleDraweeView;

.field private y:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/join/mgps/dto/BannerBean;",
            ">;"
        }
    .end annotation
.end field

.field private volatile z:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/join/mgps/dto/RecommenGroup;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "context"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 2
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/join/mgps/customview/ForumIndexHeaderView;->F:Ljava/util/List;

    const/4 v0, 0x0

    .line 3
    iput-object v0, p0, Lcom/join/mgps/customview/ForumIndexHeaderView;->G:Landroid/view/View$OnClickListener;

    .line 4
    invoke-direct {p0, p1}, Lcom/join/mgps/customview/ForumIndexHeaderView;->a(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .param p1    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroid/util/AttributeSet;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "context",
            "attrs"
        }
    .end annotation

    .line 5
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 6
    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    iput-object p2, p0, Lcom/join/mgps/customview/ForumIndexHeaderView;->F:Ljava/util/List;

    const/4 p2, 0x0

    .line 7
    iput-object p2, p0, Lcom/join/mgps/customview/ForumIndexHeaderView;->G:Landroid/view/View$OnClickListener;

    .line 8
    invoke-direct {p0, p1}, Lcom/join/mgps/customview/ForumIndexHeaderView;->a(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0
    .param p1    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroid/util/AttributeSet;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p3    # I
        .annotation build Landroidx/annotation/AttrRes;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "context",
            "attrs",
            "defStyleAttr"
        }
    .end annotation

    .line 9
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 10
    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    iput-object p2, p0, Lcom/join/mgps/customview/ForumIndexHeaderView;->F:Ljava/util/List;

    const/4 p2, 0x0

    .line 11
    iput-object p2, p0, Lcom/join/mgps/customview/ForumIndexHeaderView;->G:Landroid/view/View$OnClickListener;

    .line 12
    invoke-direct {p0, p1}, Lcom/join/mgps/customview/ForumIndexHeaderView;->a(Landroid/content/Context;)V

    return-void
.end method

.method private a(Landroid/content/Context;)V
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
    const/4 v0, 0x1

    .line 2
    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 3
    .line 4
    .line 5
    const v0, 0x7f0d0714

    .line 6
    .line 7
    .line 8
    invoke-static {p1, v0, p0}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 9
    .line 10
    .line 11
    const p1, 0x7f0a00a4

    .line 12
    .line 13
    .line 14
    invoke-static {p0, p1}, Lcom/join/mgps/Util/n3;->b(Landroid/view/View;I)Landroid/view/View;

    .line 15
    .line 16
    .line 17
    move-result-object p1

    .line 18
    check-cast p1, Lcom/join/mgps/customview/ViewPagerWithADs;

    .line 19
    .line 20
    iput-object p1, p0, Lcom/join/mgps/customview/ForumIndexHeaderView;->b:Lcom/join/mgps/customview/ViewPagerWithADs;

    .line 21
    .line 22
    const p1, 0x7f0a14db

    .line 23
    .line 24
    .line 25
    invoke-static {p0, p1}, Lcom/join/mgps/Util/n3;->b(Landroid/view/View;I)Landroid/view/View;

    .line 26
    .line 27
    .line 28
    move-result-object p1

    .line 29
    iput-object p1, p0, Lcom/join/mgps/customview/ForumIndexHeaderView;->c:Landroid/view/View;

    .line 30
    .line 31
    const p1, 0x7f0a1767

    .line 32
    .line 33
    .line 34
    invoke-static {p0, p1}, Lcom/join/mgps/Util/n3;->b(Landroid/view/View;I)Landroid/view/View;

    .line 35
    .line 36
    .line 37
    move-result-object p1

    .line 38
    check-cast p1, Landroid/widget/TextView;

    .line 39
    .line 40
    iput-object p1, p0, Lcom/join/mgps/customview/ForumIndexHeaderView;->d:Landroid/widget/TextView;

    .line 41
    .line 42
    const p1, 0x7f0a1087

    .line 43
    .line 44
    .line 45
    invoke-static {p0, p1}, Lcom/join/mgps/Util/n3;->b(Landroid/view/View;I)Landroid/view/View;

    .line 46
    .line 47
    .line 48
    move-result-object p1

    .line 49
    iput-object p1, p0, Lcom/join/mgps/customview/ForumIndexHeaderView;->e:Landroid/view/View;

    .line 50
    .line 51
    const p1, 0x7f0a109d

    .line 52
    .line 53
    .line 54
    invoke-static {p0, p1}, Lcom/join/mgps/Util/n3;->b(Landroid/view/View;I)Landroid/view/View;

    .line 55
    .line 56
    .line 57
    move-result-object p1

    .line 58
    check-cast p1, Landroid/widget/TextView;

    .line 59
    .line 60
    iput-object p1, p0, Lcom/join/mgps/customview/ForumIndexHeaderView;->f:Landroid/widget/TextView;

    .line 61
    .line 62
    const p1, 0x7f0a1c00

    .line 63
    .line 64
    .line 65
    invoke-static {p0, p1}, Lcom/join/mgps/Util/n3;->b(Landroid/view/View;I)Landroid/view/View;

    .line 66
    .line 67
    .line 68
    move-result-object p1

    .line 69
    check-cast p1, Lcom/join/mgps/customview/WrapContentListView;

    .line 70
    .line 71
    iput-object p1, p0, Lcom/join/mgps/customview/ForumIndexHeaderView;->g:Lcom/join/mgps/customview/WrapContentListView;

    .line 72
    .line 73
    const p1, 0x7f0a0699

    .line 74
    .line 75
    .line 76
    invoke-static {p0, p1}, Lcom/join/mgps/Util/n3;->b(Landroid/view/View;I)Landroid/view/View;

    .line 77
    .line 78
    .line 79
    move-result-object p1

    .line 80
    check-cast p1, Landroid/widget/TextView;

    .line 81
    .line 82
    iput-object p1, p0, Lcom/join/mgps/customview/ForumIndexHeaderView;->h:Landroid/widget/TextView;

    .line 83
    .line 84
    const p1, 0x7f0a0ea4

    .line 85
    .line 86
    .line 87
    invoke-static {p0, p1}, Lcom/join/mgps/Util/n3;->b(Landroid/view/View;I)Landroid/view/View;

    .line 88
    .line 89
    .line 90
    move-result-object p1

    .line 91
    iput-object p1, p0, Lcom/join/mgps/customview/ForumIndexHeaderView;->i:Landroid/view/View;

    .line 92
    .line 93
    const p1, 0x7f0a13bd

    .line 94
    .line 95
    .line 96
    invoke-static {p0, p1}, Lcom/join/mgps/Util/n3;->b(Landroid/view/View;I)Landroid/view/View;

    .line 97
    .line 98
    .line 99
    move-result-object p1

    .line 100
    check-cast p1, Landroid/widget/LinearLayout;

    .line 101
    .line 102
    iput-object p1, p0, Lcom/join/mgps/customview/ForumIndexHeaderView;->j:Landroid/widget/LinearLayout;

    .line 103
    .line 104
    const p1, 0x7f0a13be

    .line 105
    .line 106
    .line 107
    invoke-static {p0, p1}, Lcom/join/mgps/Util/n3;->b(Landroid/view/View;I)Landroid/view/View;

    .line 108
    .line 109
    .line 110
    move-result-object p1

    .line 111
    check-cast p1, Landroid/widget/LinearLayout;

    .line 112
    .line 113
    iput-object p1, p0, Lcom/join/mgps/customview/ForumIndexHeaderView;->k:Landroid/widget/LinearLayout;

    .line 114
    .line 115
    const p1, 0x7f0a0683

    .line 116
    .line 117
    .line 118
    invoke-static {p0, p1}, Lcom/join/mgps/Util/n3;->b(Landroid/view/View;I)Landroid/view/View;

    .line 119
    .line 120
    .line 121
    move-result-object p1

    .line 122
    iput-object p1, p0, Lcom/join/mgps/customview/ForumIndexHeaderView;->m:Landroid/view/View;

    .line 123
    .line 124
    const p1, 0x7f0a13bf

    .line 125
    .line 126
    .line 127
    invoke-static {p0, p1}, Lcom/join/mgps/Util/n3;->b(Landroid/view/View;I)Landroid/view/View;

    .line 128
    .line 129
    .line 130
    move-result-object p1

    .line 131
    iput-object p1, p0, Lcom/join/mgps/customview/ForumIndexHeaderView;->l:Landroid/view/View;

    .line 132
    .line 133
    const p1, 0x7f0a066f

    .line 134
    .line 135
    .line 136
    invoke-static {p0, p1}, Lcom/join/mgps/Util/n3;->b(Landroid/view/View;I)Landroid/view/View;

    .line 137
    .line 138
    .line 139
    move-result-object p1

    .line 140
    check-cast p1, Lcom/join/mgps/customview/MyFlowLayout;

    .line 141
    .line 142
    iput-object p1, p0, Lcom/join/mgps/customview/ForumIndexHeaderView;->n:Lcom/join/mgps/customview/MyFlowLayout;

    .line 143
    .line 144
    const p1, 0x7f0a1353

    .line 145
    .line 146
    .line 147
    invoke-static {p0, p1}, Lcom/join/mgps/Util/n3;->b(Landroid/view/View;I)Landroid/view/View;

    .line 148
    .line 149
    .line 150
    move-result-object p1

    .line 151
    iput-object p1, p0, Lcom/join/mgps/customview/ForumIndexHeaderView;->o:Landroid/view/View;

    .line 152
    .line 153
    const p1, 0x7f0a09ef

    .line 154
    .line 155
    .line 156
    invoke-static {p0, p1}, Lcom/join/mgps/Util/n3;->b(Landroid/view/View;I)Landroid/view/View;

    .line 157
    .line 158
    .line 159
    move-result-object p1

    .line 160
    iput-object p1, p0, Lcom/join/mgps/customview/ForumIndexHeaderView;->p:Landroid/view/View;

    .line 161
    .line 162
    const p1, 0x7f0a068c

    .line 163
    .line 164
    .line 165
    invoke-static {p0, p1}, Lcom/join/mgps/Util/n3;->b(Landroid/view/View;I)Landroid/view/View;

    .line 166
    .line 167
    .line 168
    move-result-object p1

    .line 169
    check-cast p1, Landroid/widget/TextView;

    .line 170
    .line 171
    iput-object p1, p0, Lcom/join/mgps/customview/ForumIndexHeaderView;->q:Landroid/widget/TextView;

    .line 172
    .line 173
    const p1, 0x7f0a0eb4

    .line 174
    .line 175
    .line 176
    invoke-static {p0, p1}, Lcom/join/mgps/Util/n3;->b(Landroid/view/View;I)Landroid/view/View;

    .line 177
    .line 178
    .line 179
    move-result-object p1

    .line 180
    iput-object p1, p0, Lcom/join/mgps/customview/ForumIndexHeaderView;->s:Landroid/view/View;

    .line 181
    .line 182
    const p1, 0x7f0a0ea5

    .line 183
    .line 184
    .line 185
    invoke-static {p0, p1}, Lcom/join/mgps/Util/n3;->b(Landroid/view/View;I)Landroid/view/View;

    .line 186
    .line 187
    .line 188
    move-result-object p1

    .line 189
    iput-object p1, p0, Lcom/join/mgps/customview/ForumIndexHeaderView;->t:Landroid/view/View;

    .line 190
    .line 191
    const p1, 0x7f0a13b1

    .line 192
    .line 193
    .line 194
    invoke-static {p0, p1}, Lcom/join/mgps/Util/n3;->b(Landroid/view/View;I)Landroid/view/View;

    .line 195
    .line 196
    .line 197
    move-result-object p1

    .line 198
    iput-object p1, p0, Lcom/join/mgps/customview/ForumIndexHeaderView;->r:Landroid/view/View;

    .line 199
    .line 200
    const p1, 0x7f0a0e20

    .line 201
    .line 202
    .line 203
    invoke-static {p0, p1}, Lcom/join/mgps/Util/n3;->b(Landroid/view/View;I)Landroid/view/View;

    .line 204
    .line 205
    .line 206
    move-result-object p1

    .line 207
    check-cast p1, Lcom/facebook/drawee/view/SimpleDraweeView;

    .line 208
    .line 209
    iput-object p1, p0, Lcom/join/mgps/customview/ForumIndexHeaderView;->u:Lcom/facebook/drawee/view/SimpleDraweeView;

    .line 210
    .line 211
    const p1, 0x7f0a0e21

    .line 212
    .line 213
    .line 214
    invoke-static {p0, p1}, Lcom/join/mgps/Util/n3;->b(Landroid/view/View;I)Landroid/view/View;

    .line 215
    .line 216
    .line 217
    move-result-object p1

    .line 218
    check-cast p1, Lcom/facebook/drawee/view/SimpleDraweeView;

    .line 219
    .line 220
    iput-object p1, p0, Lcom/join/mgps/customview/ForumIndexHeaderView;->v:Lcom/facebook/drawee/view/SimpleDraweeView;

    .line 221
    .line 222
    const p1, 0x7f0a0e22

    .line 223
    .line 224
    .line 225
    invoke-static {p0, p1}, Lcom/join/mgps/Util/n3;->b(Landroid/view/View;I)Landroid/view/View;

    .line 226
    .line 227
    .line 228
    move-result-object p1

    .line 229
    check-cast p1, Lcom/facebook/drawee/view/SimpleDraweeView;

    .line 230
    .line 231
    iput-object p1, p0, Lcom/join/mgps/customview/ForumIndexHeaderView;->w:Lcom/facebook/drawee/view/SimpleDraweeView;

    .line 232
    .line 233
    const p1, 0x7f0a0e23

    .line 234
    .line 235
    .line 236
    invoke-static {p0, p1}, Lcom/join/mgps/Util/n3;->b(Landroid/view/View;I)Landroid/view/View;

    .line 237
    .line 238
    .line 239
    move-result-object p1

    .line 240
    check-cast p1, Lcom/facebook/drawee/view/SimpleDraweeView;

    .line 241
    .line 242
    iput-object p1, p0, Lcom/join/mgps/customview/ForumIndexHeaderView;->x:Lcom/facebook/drawee/view/SimpleDraweeView;

    .line 243
    .line 244
    iget-object p1, p0, Lcom/join/mgps/customview/ForumIndexHeaderView;->o:Landroid/view/View;

    .line 245
    .line 246
    invoke-virtual {p1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 247
    .line 248
    .line 249
    iget-object p1, p0, Lcom/join/mgps/customview/ForumIndexHeaderView;->q:Landroid/widget/TextView;

    .line 250
    .line 251
    invoke-virtual {p1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 252
    .line 253
    .line 254
    iget-object p1, p0, Lcom/join/mgps/customview/ForumIndexHeaderView;->m:Landroid/view/View;

    .line 255
    .line 256
    invoke-virtual {p1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 257
    .line 258
    .line 259
    iget-object p1, p0, Lcom/join/mgps/customview/ForumIndexHeaderView;->e:Landroid/view/View;

    .line 260
    .line 261
    invoke-virtual {p1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 262
    .line 263
    .line 264
    iget-object p1, p0, Lcom/join/mgps/customview/ForumIndexHeaderView;->h:Landroid/widget/TextView;

    .line 265
    .line 266
    invoke-virtual {p1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 267
    .line 268
    .line 269
    iget-object p1, p0, Lcom/join/mgps/customview/ForumIndexHeaderView;->i:Landroid/view/View;

    .line 270
    .line 271
    invoke-virtual {p1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 272
    .line 273
    .line 274
    iget-object p1, p0, Lcom/join/mgps/customview/ForumIndexHeaderView;->s:Landroid/view/View;

    .line 275
    .line 276
    invoke-virtual {p1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 277
    .line 278
    .line 279
    iget-object p1, p0, Lcom/join/mgps/customview/ForumIndexHeaderView;->t:Landroid/view/View;

    .line 280
    .line 281
    invoke-virtual {p1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 282
    .line 283
    .line 284
    new-instance p1, Lcom/join/mgps/adapter/ForumBaseAdapter;

    .line 285
    .line 286
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 287
    .line 288
    .line 289
    move-result-object v0

    .line 290
    const/4 v1, 0x0

    .line 291
    invoke-direct {p1, v0, v1}, Lcom/join/mgps/adapter/ForumBaseAdapter;-><init>(Landroid/content/Context;Lcom/join/android/app/component/video/c;)V

    .line 292
    .line 293
    .line 294
    iput-object p1, p0, Lcom/join/mgps/customview/ForumIndexHeaderView;->A:Lcom/join/mgps/adapter/ForumBaseAdapter;

    .line 295
    .line 296
    iget-object v0, p0, Lcom/join/mgps/customview/ForumIndexHeaderView;->g:Lcom/join/mgps/customview/WrapContentListView;

    .line 297
    .line 298
    invoke-virtual {v0, p1}, Landroid/widget/AbsListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 299
    .line 300
    .line 301
    invoke-virtual {p0}, Lcom/join/mgps/customview/ForumIndexHeaderView;->g()V

    .line 302
    .line 303
    .line 304
    return-void
.end method

.method private b()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/customview/ForumIndexHeaderView;->C:Ljava/util/List;

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
    if-lez v0, :cond_0

    .line 10
    .line 11
    const/4 v0, 0x1

    .line 12
    goto :goto_0

    .line 13
    :cond_0
    const/4 v0, 0x0

    .line 14
    :goto_0
    return v0
.end method

.method private c(Lcom/join/mgps/dto/RecommendLabelTag;)Landroid/view/View;
    .locals 6
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "tag"
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    const v1, 0x7f0d0275

    .line 6
    .line 7
    .line 8
    const/4 v2, 0x0

    .line 9
    invoke-static {v0, v1, v2}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    new-instance v1, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 14
    .line 15
    const/4 v3, -0x2

    .line 16
    invoke-direct {v1, v3, v3}, Landroid/view/ViewGroup$MarginLayoutParams;-><init>(II)V

    .line 17
    .line 18
    .line 19
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    .line 20
    .line 21
    .line 22
    move-result-object v3

    .line 23
    invoke-virtual {v3}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    .line 24
    .line 25
    .line 26
    move-result-object v3

    .line 27
    const/4 v4, 0x1

    .line 28
    const/high16 v5, 0x41200000    # 10.0f

    .line 29
    .line 30
    invoke-static {v4, v5, v3}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    .line 31
    .line 32
    .line 33
    move-result v3

    .line 34
    float-to-int v3, v3

    .line 35
    iput v3, v1, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    .line 36
    .line 37
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    .line 38
    .line 39
    .line 40
    move-result-object v3

    .line 41
    invoke-virtual {v3}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    .line 42
    .line 43
    .line 44
    move-result-object v3

    .line 45
    invoke-static {v4, v5, v3}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    .line 46
    .line 47
    .line 48
    move-result v3

    .line 49
    float-to-int v3, v3

    .line 50
    iput v3, v1, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    .line 51
    .line 52
    invoke-virtual {v0, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 53
    .line 54
    .line 55
    const v1, 0x7f0a167a

    .line 56
    .line 57
    .line 58
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 59
    .line 60
    .line 61
    move-result-object v1

    .line 62
    check-cast v1, Landroid/widget/TextView;

    .line 63
    .line 64
    if-nez v1, :cond_0

    .line 65
    .line 66
    return-object v2

    .line 67
    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    .line 68
    .line 69
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 70
    .line 71
    .line 72
    const-string v3, "#"

    .line 73
    .line 74
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 75
    .line 76
    .line 77
    invoke-virtual {p1}, Lcom/join/mgps/dto/RecommendLabelTag;->getTag_name()Ljava/lang/String;

    .line 78
    .line 79
    .line 80
    move-result-object v5

    .line 81
    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 82
    .line 83
    .line 84
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 85
    .line 86
    .line 87
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 88
    .line 89
    .line 90
    move-result-object v2

    .line 91
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 92
    .line 93
    .line 94
    new-instance v2, Lcom/join/mgps/customview/ForumIndexHeaderView$b;

    .line 95
    .line 96
    invoke-direct {v2, p0, p1}, Lcom/join/mgps/customview/ForumIndexHeaderView$b;-><init>(Lcom/join/mgps/customview/ForumIndexHeaderView;Lcom/join/mgps/dto/RecommendLabelTag;)V

    .line 97
    .line 98
    .line 99
    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 100
    .line 101
    .line 102
    iget-object v2, p0, Lcom/join/mgps/customview/ForumIndexHeaderView;->F:Ljava/util/List;

    .line 103
    .line 104
    invoke-virtual {p1}, Lcom/join/mgps/dto/RecommendLabelTag;->getTag_id()I

    .line 105
    .line 106
    .line 107
    move-result p1

    .line 108
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 109
    .line 110
    .line 111
    move-result-object p1

    .line 112
    invoke-interface {v2, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    .line 113
    .line 114
    .line 115
    move-result p1

    .line 116
    if-eqz p1, :cond_1

    .line 117
    .line 118
    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setSelected(Z)V

    .line 119
    .line 120
    .line 121
    :cond_1
    return-object v0
.end method

.method private d()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/join/mgps/customview/ForumIndexHeaderView;->B:Ljava/util/List;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    iget-object v0, p0, Lcom/join/mgps/customview/ForumIndexHeaderView;->n:Lcom/join/mgps/customview/MyFlowLayout;

    .line 7
    .line 8
    invoke-virtual {v0}, Landroid/view/ViewGroup;->removeAllViews()V

    .line 9
    .line 10
    .line 11
    iget-object v0, p0, Lcom/join/mgps/customview/ForumIndexHeaderView;->B:Ljava/util/List;

    .line 12
    .line 13
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 18
    .line 19
    .line 20
    move-result v1

    .line 21
    if-eqz v1, :cond_2

    .line 22
    .line 23
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 24
    .line 25
    .line 26
    move-result-object v1

    .line 27
    check-cast v1, Lcom/join/mgps/dto/RecommendLabelTag;

    .line 28
    .line 29
    invoke-direct {p0, v1}, Lcom/join/mgps/customview/ForumIndexHeaderView;->c(Lcom/join/mgps/dto/RecommendLabelTag;)Landroid/view/View;

    .line 30
    .line 31
    .line 32
    move-result-object v1

    .line 33
    if-nez v1, :cond_1

    .line 34
    .line 35
    goto :goto_0

    .line 36
    :cond_1
    iget-object v2, p0, Lcom/join/mgps/customview/ForumIndexHeaderView;->n:Lcom/join/mgps/customview/MyFlowLayout;

    .line 37
    .line 38
    invoke-virtual {v2, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 39
    .line 40
    .line 41
    goto :goto_0

    .line 42
    :cond_2
    iget-object v0, p0, Lcom/join/mgps/customview/ForumIndexHeaderView;->n:Lcom/join/mgps/customview/MyFlowLayout;

    .line 43
    .line 44
    invoke-virtual {v0}, Landroid/view/View;->invalidate()V

    .line 45
    .line 46
    .line 47
    return-void
.end method

.method private f(Lcom/facebook/drawee/view/SimpleDraweeView;Lcom/join/mgps/dto/BannerBean;I)V
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
    goto :goto_0

    .line 6
    :cond_0
    invoke-virtual {p2}, Lcom/join/mgps/dto/BannerBean;->getPic_remote()Ljava/lang/String;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 11
    .line 12
    .line 13
    move-result-object v1

    .line 14
    invoke-static {v1}, Lcom/join/android/app/common/utils/l;->A(Landroid/content/Context;)Lcom/facebook/drawee/generic/RoundingParams;

    .line 15
    .line 16
    .line 17
    move-result-object v1

    .line 18
    invoke-static {p1, v0, v1}, Lcom/join/android/app/common/utils/l;->j(Lcom/facebook/drawee/view/SimpleDraweeView;Ljava/lang/String;Lcom/facebook/drawee/generic/RoundingParams;)V

    .line 19
    .line 20
    .line 21
    iget-object v0, p0, Lcom/join/mgps/customview/ForumIndexHeaderView;->E:Landroid/widget/LinearLayout$LayoutParams;

    .line 22
    .line 23
    if-nez v0, :cond_1

    .line 24
    .line 25
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    .line 26
    .line 27
    .line 28
    move-result-object v0

    .line 29
    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    .line 30
    .line 31
    .line 32
    move-result-object v0

    .line 33
    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    .line 34
    .line 35
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 36
    .line 37
    .line 38
    move-result-object v1

    .line 39
    check-cast v1, Landroid/widget/LinearLayout$LayoutParams;

    .line 40
    .line 41
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    .line 42
    .line 43
    .line 44
    move-result-object v2

    .line 45
    invoke-virtual {v2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    .line 46
    .line 47
    .line 48
    move-result-object v2

    .line 49
    iget v2, v2, Landroid/util/DisplayMetrics;->widthPixels:I

    .line 50
    .line 51
    int-to-float v2, v2

    .line 52
    const/high16 v3, 0x41900000    # 18.0f

    .line 53
    .line 54
    mul-float v0, v0, v3

    .line 55
    .line 56
    sub-float/2addr v2, v0

    .line 57
    float-to-int v0, v2

    .line 58
    div-int/lit8 v0, v0, 0x2

    .line 59
    .line 60
    iput v0, v1, Landroid/widget/LinearLayout$LayoutParams;->width:I

    .line 61
    .line 62
    const/high16 v2, 0x3f800000    # 1.0f

    .line 63
    .line 64
    int-to-float v0, v0

    .line 65
    mul-float v0, v0, v2

    .line 66
    .line 67
    const v2, 0x40047ae1    # 2.07f

    .line 68
    .line 69
    .line 70
    div-float/2addr v0, v2

    .line 71
    float-to-int v0, v0

    .line 72
    iput v0, v1, Landroid/widget/LinearLayout$LayoutParams;->height:I

    .line 73
    .line 74
    iput-object v1, p0, Lcom/join/mgps/customview/ForumIndexHeaderView;->E:Landroid/widget/LinearLayout$LayoutParams;

    .line 75
    .line 76
    :cond_1
    iget-object v0, p0, Lcom/join/mgps/customview/ForumIndexHeaderView;->E:Landroid/widget/LinearLayout$LayoutParams;

    .line 77
    .line 78
    invoke-virtual {p1, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 79
    .line 80
    .line 81
    invoke-static {p2}, Lcom/join/mgps/Util/r0;->j0(Lcom/join/mgps/dto/BannerBean;)Lcom/join/mgps/Util/IntentDateBean;

    .line 82
    .line 83
    .line 84
    move-result-object p2

    .line 85
    new-instance v0, Lcom/join/mgps/dto/ExtBean;

    .line 86
    .line 87
    invoke-direct {v0}, Lcom/join/mgps/dto/ExtBean;-><init>()V

    .line 88
    .line 89
    .line 90
    const-string v1, "forum"

    .line 91
    .line 92
    invoke-virtual {v0, v1}, Lcom/join/mgps/dto/ExtBean;->setFrom(Ljava/lang/String;)Lcom/join/mgps/dto/ExtBean;

    .line 93
    .line 94
    .line 95
    new-instance v1, Ljava/lang/StringBuilder;

    .line 96
    .line 97
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 98
    .line 99
    .line 100
    const-string v2, "banner"

    .line 101
    .line 102
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 103
    .line 104
    .line 105
    add-int/lit8 v2, p3, 0x1

    .line 106
    .line 107
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 108
    .line 109
    .line 110
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 111
    .line 112
    .line 113
    move-result-object v1

    .line 114
    invoke-virtual {v0, v1}, Lcom/join/mgps/dto/ExtBean;->setPosition(Ljava/lang/String;)Lcom/join/mgps/dto/ExtBean;

    .line 115
    .line 116
    .line 117
    invoke-virtual {p2, v0}, Lcom/join/mgps/Util/IntentDateBean;->setExtBean(Lcom/join/mgps/dto/ExtBean;)V

    .line 118
    .line 119
    .line 120
    new-instance v0, Lcom/join/mgps/customview/ForumIndexHeaderView$a;

    .line 121
    .line 122
    invoke-direct {v0, p0, p2, p3}, Lcom/join/mgps/customview/ForumIndexHeaderView$a;-><init>(Lcom/join/mgps/customview/ForumIndexHeaderView;Lcom/join/mgps/Util/IntentDateBean;I)V

    .line 123
    .line 124
    .line 125
    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 126
    .line 127
    .line 128
    :cond_2
    :goto_0
    return-void
.end method

.method private setBanner(Ljava/util/List;)V
    .locals 10
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "datas"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/join/mgps/dto/BannerBean;",
            ">;)V"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/customview/ForumIndexHeaderView;->y:Ljava/util/List;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    new-instance v0, Ljava/util/ArrayList;

    .line 6
    .line 7
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 8
    .line 9
    .line 10
    iput-object v0, p0, Lcom/join/mgps/customview/ForumIndexHeaderView;->y:Ljava/util/List;

    .line 11
    .line 12
    :cond_0
    iget-object v0, p0, Lcom/join/mgps/customview/ForumIndexHeaderView;->y:Ljava/util/List;

    .line 13
    .line 14
    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 15
    .line 16
    .line 17
    if-eqz p1, :cond_1

    .line 18
    .line 19
    iget-object v0, p0, Lcom/join/mgps/customview/ForumIndexHeaderView;->y:Ljava/util/List;

    .line 20
    .line 21
    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 22
    .line 23
    .line 24
    :cond_1
    const/4 p1, 0x4

    .line 25
    new-array v0, p1, [Lcom/facebook/drawee/view/SimpleDraweeView;

    .line 26
    .line 27
    iget-object v1, p0, Lcom/join/mgps/customview/ForumIndexHeaderView;->u:Lcom/facebook/drawee/view/SimpleDraweeView;

    .line 28
    .line 29
    const/4 v2, 0x0

    .line 30
    aput-object v1, v0, v2

    .line 31
    .line 32
    iget-object v1, p0, Lcom/join/mgps/customview/ForumIndexHeaderView;->v:Lcom/facebook/drawee/view/SimpleDraweeView;

    .line 33
    .line 34
    const/4 v3, 0x1

    .line 35
    aput-object v1, v0, v3

    .line 36
    .line 37
    iget-object v1, p0, Lcom/join/mgps/customview/ForumIndexHeaderView;->w:Lcom/facebook/drawee/view/SimpleDraweeView;

    .line 38
    .line 39
    const/4 v4, 0x2

    .line 40
    aput-object v1, v0, v4

    .line 41
    .line 42
    iget-object v1, p0, Lcom/join/mgps/customview/ForumIndexHeaderView;->x:Lcom/facebook/drawee/view/SimpleDraweeView;

    .line 43
    .line 44
    const/4 v5, 0x3

    .line 45
    aput-object v1, v0, v5

    .line 46
    .line 47
    const/4 v1, 0x0

    .line 48
    :goto_0
    iget-object v6, p0, Lcom/join/mgps/customview/ForumIndexHeaderView;->y:Ljava/util/List;

    .line 49
    .line 50
    if-eqz v6, :cond_4

    .line 51
    .line 52
    invoke-interface {v6}, Ljava/util/List;->size()I

    .line 53
    .line 54
    .line 55
    move-result v6

    .line 56
    if-ge v1, v6, :cond_4

    .line 57
    .line 58
    iget-object v6, p0, Lcom/join/mgps/customview/ForumIndexHeaderView;->y:Ljava/util/List;

    .line 59
    .line 60
    invoke-interface {v6, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 61
    .line 62
    .line 63
    move-result-object v6

    .line 64
    check-cast v6, Lcom/join/mgps/dto/BannerBean;

    .line 65
    .line 66
    aget-object v7, v0, v1

    .line 67
    .line 68
    invoke-direct {p0, v7, v6, v1}, Lcom/join/mgps/customview/ForumIndexHeaderView;->f(Lcom/facebook/drawee/view/SimpleDraweeView;Lcom/join/mgps/dto/BannerBean;I)V

    .line 69
    .line 70
    .line 71
    if-eq v1, v3, :cond_2

    .line 72
    .line 73
    if-ne v1, v5, :cond_3

    .line 74
    .line 75
    :cond_2
    :try_start_0
    new-instance v6, Landroid/widget/LinearLayout$LayoutParams;

    .line 76
    .line 77
    invoke-virtual {v7}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 78
    .line 79
    .line 80
    move-result-object v8

    .line 81
    iget v8, v8, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 82
    .line 83
    invoke-virtual {v7}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 84
    .line 85
    .line 86
    move-result-object v9

    .line 87
    iget v9, v9, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 88
    .line 89
    invoke-direct {v6, v8, v9}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 90
    .line 91
    .line 92
    invoke-virtual {v7}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    .line 93
    .line 94
    .line 95
    move-result-object v8

    .line 96
    invoke-virtual {v8}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    .line 97
    .line 98
    .line 99
    move-result-object v8

    .line 100
    iget v8, v8, Landroid/util/DisplayMetrics;->density:F

    .line 101
    .line 102
    const/high16 v9, 0x40c00000    # 6.0f

    .line 103
    .line 104
    mul-float v8, v8, v9

    .line 105
    .line 106
    float-to-int v8, v8

    .line 107
    invoke-virtual {v6, v8, v2, v2, v2}, Landroid/view/ViewGroup$MarginLayoutParams;->setMargins(IIII)V

    .line 108
    .line 109
    .line 110
    invoke-virtual {v7, v6}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 111
    .line 112
    .line 113
    goto :goto_1

    .line 114
    :catch_0
    move-exception v6

    .line 115
    invoke-virtual {v6}, Ljava/lang/Throwable;->printStackTrace()V

    .line 116
    .line 117
    .line 118
    :cond_3
    :goto_1
    add-int/lit8 v1, v1, 0x1

    .line 119
    .line 120
    goto :goto_0

    .line 121
    :cond_4
    iget-object v1, p0, Lcom/join/mgps/customview/ForumIndexHeaderView;->y:Ljava/util/List;

    .line 122
    .line 123
    const/16 v3, 0x8

    .line 124
    .line 125
    if-nez v1, :cond_5

    .line 126
    .line 127
    iget-object p1, p0, Lcom/join/mgps/customview/ForumIndexHeaderView;->r:Landroid/view/View;

    .line 128
    .line 129
    invoke-virtual {p1, v3}, Landroid/view/View;->setVisibility(I)V

    .line 130
    .line 131
    .line 132
    goto :goto_2

    .line 133
    :cond_5
    invoke-interface {v1}, Ljava/util/List;->size()I

    .line 134
    .line 135
    .line 136
    move-result v1

    .line 137
    if-ge v1, v4, :cond_6

    .line 138
    .line 139
    iget-object p1, p0, Lcom/join/mgps/customview/ForumIndexHeaderView;->r:Landroid/view/View;

    .line 140
    .line 141
    invoke-virtual {p1, v3}, Landroid/view/View;->setVisibility(I)V

    .line 142
    .line 143
    .line 144
    goto :goto_2

    .line 145
    :cond_6
    iget-object v1, p0, Lcom/join/mgps/customview/ForumIndexHeaderView;->y:Ljava/util/List;

    .line 146
    .line 147
    invoke-interface {v1}, Ljava/util/List;->size()I

    .line 148
    .line 149
    .line 150
    move-result v1

    .line 151
    if-ge v1, p1, :cond_7

    .line 152
    .line 153
    aget-object p1, v0, v4

    .line 154
    .line 155
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    .line 156
    .line 157
    .line 158
    move-result-object p1

    .line 159
    check-cast p1, Landroid/view/ViewGroup;

    .line 160
    .line 161
    invoke-virtual {p1, v3}, Landroid/view/View;->setVisibility(I)V

    .line 162
    .line 163
    .line 164
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 165
    .line 166
    .line 167
    move-result-object p1

    .line 168
    check-cast p1, Landroid/widget/LinearLayout$LayoutParams;

    .line 169
    .line 170
    iput v2, p1, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    .line 171
    .line 172
    :cond_7
    :goto_2
    return-void
.end method

.method private setBanner1(Ljava/util/List;)V
    .locals 7
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "datas"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/join/mgps/dto/BannerBean;",
            ">;)V"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/customview/ForumIndexHeaderView;->b:Lcom/join/mgps/customview/ViewPagerWithADs;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    const/16 v0, 0x8

    .line 7
    .line 8
    if-eqz p1, :cond_4

    .line 9
    .line 10
    invoke-interface {p1}, Ljava/util/List;->size()I

    .line 11
    .line 12
    .line 13
    move-result v1

    .line 14
    if-gtz v1, :cond_1

    .line 15
    .line 16
    goto :goto_0

    .line 17
    :cond_1
    iget-object v1, p0, Lcom/join/mgps/customview/ForumIndexHeaderView;->y:Ljava/util/List;

    .line 18
    .line 19
    if-nez v1, :cond_2

    .line 20
    .line 21
    new-instance v1, Ljava/util/ArrayList;

    .line 22
    .line 23
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 24
    .line 25
    .line 26
    iput-object v1, p0, Lcom/join/mgps/customview/ForumIndexHeaderView;->y:Ljava/util/List;

    .line 27
    .line 28
    :cond_2
    iget-object v1, p0, Lcom/join/mgps/customview/ForumIndexHeaderView;->y:Ljava/util/List;

    .line 29
    .line 30
    invoke-interface {v1}, Ljava/util/List;->clear()V

    .line 31
    .line 32
    .line 33
    iget-object v1, p0, Lcom/join/mgps/customview/ForumIndexHeaderView;->y:Ljava/util/List;

    .line 34
    .line 35
    invoke-interface {v1, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 36
    .line 37
    .line 38
    iget-object p1, p0, Lcom/join/mgps/customview/ForumIndexHeaderView;->b:Lcom/join/mgps/customview/ViewPagerWithADs;

    .line 39
    .line 40
    invoke-virtual {p1}, Landroid/view/View;->getVisibility()I

    .line 41
    .line 42
    .line 43
    move-result p1

    .line 44
    if-ne p1, v0, :cond_3

    .line 45
    .line 46
    iget-object p1, p0, Lcom/join/mgps/customview/ForumIndexHeaderView;->b:Lcom/join/mgps/customview/ViewPagerWithADs;

    .line 47
    .line 48
    const/4 v0, 0x0

    .line 49
    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 50
    .line 51
    .line 52
    :cond_3
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    .line 53
    .line 54
    .line 55
    move-result-object p1

    .line 56
    const v0, 0x7f071374

    .line 57
    .line 58
    .line 59
    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimension(I)F

    .line 60
    .line 61
    .line 62
    move-result p1

    .line 63
    float-to-int v3, p1

    .line 64
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    .line 65
    .line 66
    .line 67
    move-result-object p1

    .line 68
    const v0, 0x7f07150f

    .line 69
    .line 70
    .line 71
    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimension(I)F

    .line 72
    .line 73
    .line 74
    move-result p1

    .line 75
    float-to-int v4, p1

    .line 76
    const/16 v5, 0xfa0

    .line 77
    .line 78
    iget-object v0, p0, Lcom/join/mgps/customview/ForumIndexHeaderView;->b:Lcom/join/mgps/customview/ViewPagerWithADs;

    .line 79
    .line 80
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 81
    .line 82
    .line 83
    move-result-object v1

    .line 84
    iget-object v2, p0, Lcom/join/mgps/customview/ForumIndexHeaderView;->y:Ljava/util/List;

    .line 85
    .line 86
    const/4 v6, 0x1

    .line 87
    invoke-virtual/range {v0 .. v6}, Lcom/join/mgps/customview/ViewPagerWithADs;->setAll(Landroid/content/Context;Ljava/util/List;IIII)V

    .line 88
    .line 89
    .line 90
    return-void

    .line 91
    :cond_4
    :goto_0
    iget-object p1, p0, Lcom/join/mgps/customview/ForumIndexHeaderView;->b:Lcom/join/mgps/customview/ViewPagerWithADs;

    .line 92
    .line 93
    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 94
    .line 95
    .line 96
    return-void
.end method


# virtual methods
.method e()V
    .locals 4

    .line 1
    invoke-direct {p0}, Lcom/join/mgps/customview/ForumIndexHeaderView;->b()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    const-string v1, "\u53d1\u73b0\u66f4\u591a\u5c0f\u7ec4"

    .line 6
    .line 7
    const-string v2, "\u5168\u90e8"

    .line 8
    .line 9
    if-nez v0, :cond_0

    .line 10
    .line 11
    iget-object v0, p0, Lcom/join/mgps/customview/ForumIndexHeaderView;->d:Landroid/widget/TextView;

    .line 12
    .line 13
    const-string v3, "\u63a8\u8350\u5c0f\u7ec4"

    .line 14
    .line 15
    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 16
    .line 17
    .line 18
    iget-object v0, p0, Lcom/join/mgps/customview/ForumIndexHeaderView;->f:Landroid/widget/TextView;

    .line 19
    .line 20
    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 21
    .line 22
    .line 23
    iget-object v0, p0, Lcom/join/mgps/customview/ForumIndexHeaderView;->h:Landroid/widget/TextView;

    .line 24
    .line 25
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 26
    .line 27
    .line 28
    goto :goto_0

    .line 29
    :cond_0
    iget-object v0, p0, Lcom/join/mgps/customview/ForumIndexHeaderView;->d:Landroid/widget/TextView;

    .line 30
    .line 31
    const-string v3, "\u6211\u7684\u5c0f\u7ec4"

    .line 32
    .line 33
    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 34
    .line 35
    .line 36
    iget-object v0, p0, Lcom/join/mgps/customview/ForumIndexHeaderView;->f:Landroid/widget/TextView;

    .line 37
    .line 38
    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 39
    .line 40
    .line 41
    iget-object v0, p0, Lcom/join/mgps/customview/ForumIndexHeaderView;->h:Landroid/widget/TextView;

    .line 42
    .line 43
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 44
    .line 45
    .line 46
    :goto_0
    return-void
.end method

.method g()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/join/mgps/customview/ForumIndexHeaderView;->y:Ljava/util/List;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    new-instance v0, Ljava/util/ArrayList;

    .line 6
    .line 7
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 8
    .line 9
    .line 10
    iget-object v1, p0, Lcom/join/mgps/customview/ForumIndexHeaderView;->y:Ljava/util/List;

    .line 11
    .line 12
    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 13
    .line 14
    .line 15
    invoke-direct {p0, v0}, Lcom/join/mgps/customview/ForumIndexHeaderView;->setBanner(Ljava/util/List;)V

    .line 16
    .line 17
    .line 18
    :cond_0
    return-void
.end method

.method protected bridge synthetic generateDefaultLayoutParams()Landroid/view/ViewGroup$LayoutParams;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/join/mgps/customview/ForumIndexHeaderView;->generateDefaultLayoutParams()Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v0

    return-object v0
.end method

.method protected generateDefaultLayoutParams()Landroid/widget/LinearLayout$LayoutParams;
    .locals 3

    .line 2
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getOrientation()I

    move-result v0

    const/4 v1, -0x2

    if-nez v0, :cond_0

    .line 3
    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v0, v1, v1}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    return-object v0

    .line 4
    :cond_0
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getOrientation()I

    move-result v0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_1

    .line 5
    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v2, -0x1

    invoke-direct {v0, v2, v1}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    return-object v0

    .line 6
    :cond_1
    invoke-super {p0}, Landroid/widget/LinearLayout;->generateDefaultLayoutParams()Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v0

    return-object v0
.end method

.method protected bridge synthetic generateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Landroid/view/ViewGroup$LayoutParams;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            "lp"
        }
    .end annotation

    .line 1
    invoke-virtual {p0, p1}, Lcom/join/mgps/customview/ForumIndexHeaderView;->generateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object p1

    return-object p1
.end method

.method protected generateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Landroid/widget/LinearLayout$LayoutParams;
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "lp"
        }
    .end annotation

    .line 2
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getOrientation()I

    move-result v0

    const/4 v1, -0x2

    if-nez v0, :cond_0

    .line 3
    new-instance p1, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {p1, v1, v1}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    return-object p1

    .line 4
    :cond_0
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getOrientation()I

    move-result v0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_1

    .line 5
    new-instance p1, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v0, -0x1

    invoke-direct {p1, v0, v1}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    return-object p1

    .line 6
    :cond_1
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->generateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Landroid/widget/LinearLayout$LayoutParams;

    move-result-object p1

    return-object p1
.end method

.method public getSelectedIds()Ljava/lang/String;
    .locals 4

    .line 1
    const-string v0, ""

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    move-object v2, v0

    .line 5
    :goto_0
    iget-object v3, p0, Lcom/join/mgps/customview/ForumIndexHeaderView;->F:Ljava/util/List;

    .line 6
    .line 7
    if-eqz v3, :cond_1

    .line 8
    .line 9
    invoke-interface {v3}, Ljava/util/List;->size()I

    .line 10
    .line 11
    .line 12
    move-result v3

    .line 13
    if-ge v1, v3, :cond_1

    .line 14
    .line 15
    new-instance v3, Ljava/lang/StringBuilder;

    .line 16
    .line 17
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 18
    .line 19
    .line 20
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 21
    .line 22
    .line 23
    iget-object v2, p0, Lcom/join/mgps/customview/ForumIndexHeaderView;->F:Ljava/util/List;

    .line 24
    .line 25
    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 26
    .line 27
    .line 28
    move-result-object v2

    .line 29
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 30
    .line 31
    .line 32
    iget-object v2, p0, Lcom/join/mgps/customview/ForumIndexHeaderView;->F:Ljava/util/List;

    .line 33
    .line 34
    invoke-interface {v2}, Ljava/util/List;->size()I

    .line 35
    .line 36
    .line 37
    move-result v2

    .line 38
    add-int/lit8 v2, v2, -0x1

    .line 39
    .line 40
    if-ne v1, v2, :cond_0

    .line 41
    .line 42
    move-object v2, v0

    .line 43
    goto :goto_1

    .line 44
    :cond_0
    const-string v2, ","

    .line 45
    .line 46
    :goto_1
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 47
    .line 48
    .line 49
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 50
    .line 51
    .line 52
    move-result-object v2

    .line 53
    add-int/lit8 v1, v1, 0x1

    .line 54
    .line 55
    goto :goto_0

    .line 56
    :cond_1
    return-object v2
.end method

.method public getSelectedLabel()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/customview/ForumIndexHeaderView;->F:Ljava/util/List;

    .line 2
    .line 3
    return-object v0
.end method

.method public getmOnMeasureHeight()Lcom/join/mgps/customview/ForumIndexHeaderView$c;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/customview/ForumIndexHeaderView;->H:Lcom/join/mgps/customview/ForumIndexHeaderView$c;

    .line 2
    .line 3
    return-object v0
.end method

.method public h()V
    .locals 8

    .line 1
    iget-object v0, p0, Lcom/join/mgps/customview/ForumIndexHeaderView;->p:Landroid/view/View;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    iget-object v0, p0, Lcom/join/mgps/customview/ForumIndexHeaderView;->D:Landroid/view/animation/Animation;

    .line 7
    .line 8
    if-nez v0, :cond_1

    .line 9
    .line 10
    new-instance v0, Landroid/view/animation/RotateAnimation;

    .line 11
    .line 12
    const/4 v2, 0x0

    .line 13
    const/high16 v3, -0x3c4c0000    # -360.0f

    .line 14
    .line 15
    const/4 v4, 0x1

    .line 16
    const/high16 v5, 0x3f000000    # 0.5f

    .line 17
    .line 18
    const/4 v6, 0x1

    .line 19
    const/high16 v7, 0x3f000000    # 0.5f

    .line 20
    .line 21
    move-object v1, v0

    .line 22
    invoke-direct/range {v1 .. v7}, Landroid/view/animation/RotateAnimation;-><init>(FFIFIF)V

    .line 23
    .line 24
    .line 25
    iput-object v0, p0, Lcom/join/mgps/customview/ForumIndexHeaderView;->D:Landroid/view/animation/Animation;

    .line 26
    .line 27
    const-wide/16 v1, 0x12c

    .line 28
    .line 29
    invoke-virtual {v0, v1, v2}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 30
    .line 31
    .line 32
    iget-object v0, p0, Lcom/join/mgps/customview/ForumIndexHeaderView;->D:Landroid/view/animation/Animation;

    .line 33
    .line 34
    const/4 v1, -0x1

    .line 35
    invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->setRepeatCount(I)V

    .line 36
    .line 37
    .line 38
    iget-object v0, p0, Lcom/join/mgps/customview/ForumIndexHeaderView;->D:Landroid/view/animation/Animation;

    .line 39
    .line 40
    const/4 v1, 0x1

    .line 41
    invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->setRepeatMode(I)V

    .line 42
    .line 43
    .line 44
    :cond_1
    iget-object v0, p0, Lcom/join/mgps/customview/ForumIndexHeaderView;->p:Landroid/view/View;

    .line 45
    .line 46
    iget-object v1, p0, Lcom/join/mgps/customview/ForumIndexHeaderView;->D:Landroid/view/animation/Animation;

    .line 47
    .line 48
    invoke-virtual {v0, v1}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 49
    .line 50
    .line 51
    return-void
.end method

.method public i()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/join/mgps/customview/ForumIndexHeaderView;->p:Landroid/view/View;

    .line 2
    .line 3
    if-eqz v0, :cond_1

    .line 4
    .line 5
    iget-object v1, p0, Lcom/join/mgps/customview/ForumIndexHeaderView;->D:Landroid/view/animation/Animation;

    .line 6
    .line 7
    if-nez v1, :cond_0

    .line 8
    .line 9
    goto :goto_0

    .line 10
    :cond_0
    invoke-virtual {v0}, Landroid/view/View;->clearAnimation()V

    .line 11
    .line 12
    .line 13
    :cond_1
    :goto_0
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "view"
        }
    .end annotation

    .line 1
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    iget-object v1, p0, Lcom/join/mgps/customview/ForumIndexHeaderView;->G:Landroid/view/View$OnClickListener;

    .line 6
    .line 7
    if-eqz v1, :cond_0

    .line 8
    .line 9
    invoke-interface {v1, p1}, Landroid/view/View$OnClickListener;->onClick(Landroid/view/View;)V

    .line 10
    .line 11
    .line 12
    :cond_0
    const p1, 0x7f0a0683

    .line 13
    .line 14
    .line 15
    if-ne v0, p1, :cond_1

    .line 16
    .line 17
    const/16 p1, 0x8

    .line 18
    .line 19
    invoke-virtual {p0, p1}, Lcom/join/mgps/customview/ForumIndexHeaderView;->setLabelsTipVisibility(I)V

    .line 20
    .line 21
    .line 22
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 23
    .line 24
    .line 25
    move-result-object p1

    .line 26
    invoke-static {p1}, Lcom/join/mgps/pref/h;->n(Landroid/content/Context;)Lcom/join/mgps/pref/h;

    .line 27
    .line 28
    .line 29
    move-result-object p1

    .line 30
    const/4 v0, 0x0

    .line 31
    invoke-virtual {p1, v0}, Lcom/join/mgps/pref/h;->r0(Z)V

    .line 32
    .line 33
    .line 34
    goto :goto_0

    .line 35
    :cond_1
    const p1, 0x7f0a1087

    .line 36
    .line 37
    .line 38
    if-ne v0, p1, :cond_3

    .line 39
    .line 40
    invoke-direct {p0}, Lcom/join/mgps/customview/ForumIndexHeaderView;->b()Z

    .line 41
    .line 42
    .line 43
    move-result p1

    .line 44
    if-nez p1, :cond_2

    .line 45
    .line 46
    invoke-static {}, Lcom/join/mgps/Util/IntentUtil;->getInstance()Lcom/join/mgps/Util/IntentUtil;

    .line 47
    .line 48
    .line 49
    move-result-object p1

    .line 50
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 51
    .line 52
    .line 53
    move-result-object v0

    .line 54
    invoke-virtual {p1, v0}, Lcom/join/mgps/Util/IntentUtil;->goForumGroupActivity(Landroid/content/Context;)V

    .line 55
    .line 56
    .line 57
    goto :goto_0

    .line 58
    :cond_2
    invoke-static {}, Lcom/join/mgps/Util/IntentUtil;->getInstance()Lcom/join/mgps/Util/IntentUtil;

    .line 59
    .line 60
    .line 61
    move-result-object p1

    .line 62
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 63
    .line 64
    .line 65
    move-result-object v0

    .line 66
    invoke-virtual {p1, v0}, Lcom/join/mgps/Util/IntentUtil;->goForumMyDynamicActivity(Landroid/content/Context;)V

    .line 67
    .line 68
    .line 69
    goto :goto_0

    .line 70
    :cond_3
    const p1, 0x7f0a0eb4

    .line 71
    .line 72
    .line 73
    if-ne v0, p1, :cond_4

    .line 74
    .line 75
    invoke-static {}, Lcom/join/mgps/Util/IntentUtil;->getInstance()Lcom/join/mgps/Util/IntentUtil;

    .line 76
    .line 77
    .line 78
    move-result-object p1

    .line 79
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 80
    .line 81
    .line 82
    move-result-object v0

    .line 83
    invoke-virtual {p1, v0}, Lcom/join/mgps/Util/IntentUtil;->goForumMyDynamicActivity(Landroid/content/Context;)V

    .line 84
    .line 85
    .line 86
    goto :goto_0

    .line 87
    :cond_4
    const p1, 0x7f0a0ea4

    .line 88
    .line 89
    .line 90
    if-eq v0, p1, :cond_5

    .line 91
    .line 92
    const p1, 0x7f0a0ea5

    .line 93
    .line 94
    .line 95
    if-ne v0, p1, :cond_6

    .line 96
    .line 97
    :cond_5
    invoke-static {}, Lcom/join/mgps/Util/IntentUtil;->getInstance()Lcom/join/mgps/Util/IntentUtil;

    .line 98
    .line 99
    .line 100
    move-result-object p1

    .line 101
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 102
    .line 103
    .line 104
    move-result-object v0

    .line 105
    invoke-virtual {p1, v0}, Lcom/join/mgps/Util/IntentUtil;->goForumGroupActivity(Landroid/content/Context;)V

    .line 106
    .line 107
    .line 108
    :cond_6
    :goto_0
    return-void
.end method

.method protected onMeasure(II)V
    .locals 11
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "widthMeasureSpec",
            "heightMeasureSpec"
        }
    .end annotation

    .line 1
    invoke-super {p0, p1, p2}, Landroid/widget/LinearLayout;->onMeasure(II)V

    .line 2
    .line 3
    .line 4
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    .line 5
    .line 6
    .line 7
    move-result v0

    .line 8
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    .line 9
    .line 10
    .line 11
    move-result v1

    .line 12
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    .line 13
    .line 14
    .line 15
    move-result v2

    .line 16
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    .line 17
    .line 18
    .line 19
    move-result v3

    .line 20
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    .line 21
    .line 22
    .line 23
    move-result v4

    .line 24
    const/4 v5, 0x0

    .line 25
    const/4 v6, 0x0

    .line 26
    const/4 v7, 0x0

    .line 27
    :goto_0
    if-ge v6, v4, :cond_4

    .line 28
    .line 29
    invoke-virtual {p0, v6}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    .line 30
    .line 31
    .line 32
    move-result-object v8

    .line 33
    invoke-virtual {v8}, Landroid/view/View;->getVisibility()I

    .line 34
    .line 35
    .line 36
    move-result v9

    .line 37
    const/16 v10, 0x8

    .line 38
    .line 39
    if-ne v9, v10, :cond_0

    .line 40
    .line 41
    goto :goto_2

    .line 42
    :cond_0
    invoke-virtual {p0, v8, p1, p2}, Landroid/view/ViewGroup;->measureChild(Landroid/view/View;II)V

    .line 43
    .line 44
    .line 45
    invoke-virtual {v8}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 46
    .line 47
    .line 48
    move-result-object v9

    .line 49
    instance-of v10, v9, Landroid/widget/FrameLayout$LayoutParams;

    .line 50
    .line 51
    if-eqz v10, :cond_1

    .line 52
    .line 53
    check-cast v9, Landroid/widget/FrameLayout$LayoutParams;

    .line 54
    .line 55
    iget v10, v9, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    .line 56
    .line 57
    iget v10, v9, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    .line 58
    .line 59
    iget v9, v9, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

    .line 60
    .line 61
    goto :goto_1

    .line 62
    :cond_1
    instance-of v10, v9, Landroid/widget/LinearLayout$LayoutParams;

    .line 63
    .line 64
    if-eqz v10, :cond_2

    .line 65
    .line 66
    check-cast v9, Landroid/widget/LinearLayout$LayoutParams;

    .line 67
    .line 68
    iget v10, v9, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    .line 69
    .line 70
    iget v10, v9, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    .line 71
    .line 72
    iget v9, v9, Landroid/widget/LinearLayout$LayoutParams;->bottomMargin:I

    .line 73
    .line 74
    goto :goto_1

    .line 75
    :cond_2
    instance-of v10, v9, Landroid/widget/RelativeLayout$LayoutParams;

    .line 76
    .line 77
    if-eqz v10, :cond_3

    .line 78
    .line 79
    check-cast v9, Landroid/widget/RelativeLayout$LayoutParams;

    .line 80
    .line 81
    iget v10, v9, Landroid/widget/RelativeLayout$LayoutParams;->leftMargin:I

    .line 82
    .line 83
    iget v10, v9, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    .line 84
    .line 85
    iget v9, v9, Landroid/widget/RelativeLayout$LayoutParams;->bottomMargin:I

    .line 86
    .line 87
    goto :goto_1

    .line 88
    :cond_3
    const/4 v9, 0x0

    .line 89
    const/4 v10, 0x0

    .line 90
    :goto_1
    invoke-virtual {v8}, Landroid/view/View;->getMeasuredWidth()I

    .line 91
    .line 92
    .line 93
    invoke-virtual {v8}, Landroid/view/View;->getMeasuredHeight()I

    .line 94
    .line 95
    .line 96
    move-result v8

    .line 97
    add-int/2addr v8, v10

    .line 98
    add-int/2addr v8, v9

    .line 99
    add-int/2addr v7, v8

    .line 100
    :goto_2
    add-int/lit8 v6, v6, 0x1

    .line 101
    .line 102
    goto :goto_0

    .line 103
    :cond_4
    const/high16 p1, 0x40000000    # 2.0f

    .line 104
    .line 105
    if-ne v1, p1, :cond_5

    .line 106
    .line 107
    goto :goto_3

    .line 108
    :cond_5
    const/4 v0, 0x0

    .line 109
    :goto_3
    if-ne v3, p1, :cond_6

    .line 110
    .line 111
    goto :goto_4

    .line 112
    :cond_6
    move v2, v7

    .line 113
    :goto_4
    invoke-virtual {p0, v0, v2}, Landroid/view/View;->setMeasuredDimension(II)V

    .line 114
    .line 115
    .line 116
    iget-object p1, p0, Lcom/join/mgps/customview/ForumIndexHeaderView;->H:Lcom/join/mgps/customview/ForumIndexHeaderView$c;

    .line 117
    .line 118
    if-eqz p1, :cond_8

    .line 119
    .line 120
    invoke-virtual {p0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 121
    .line 122
    .line 123
    move-result-object p1

    .line 124
    instance-of p1, p1, Landroid/widget/RelativeLayout$LayoutParams;

    .line 125
    .line 126
    if-eqz p1, :cond_7

    .line 127
    .line 128
    invoke-virtual {p0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 129
    .line 130
    .line 131
    move-result-object p1

    .line 132
    check-cast p1, Landroid/widget/RelativeLayout$LayoutParams;

    .line 133
    .line 134
    iget v5, p1, Landroid/widget/RelativeLayout$LayoutParams;->bottomMargin:I

    .line 135
    .line 136
    :cond_7
    iget-object p1, p0, Lcom/join/mgps/customview/ForumIndexHeaderView;->H:Lcom/join/mgps/customview/ForumIndexHeaderView$c;

    .line 137
    .line 138
    add-int/2addr v7, v5

    .line 139
    invoke-interface {p1, v7}, Lcom/join/mgps/customview/ForumIndexHeaderView$c;->onMeasure(I)V

    .line 140
    .line 141
    .line 142
    :cond_8
    return-void
.end method

.method public setBannerData(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "banner"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/join/mgps/dto/BannerBean;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1}, Lcom/join/mgps/customview/ForumIndexHeaderView;->setBanner(Ljava/util/List;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public setHeaderClickListener(Landroid/view/View$OnClickListener;)V
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
    iput-object p1, p0, Lcom/join/mgps/customview/ForumIndexHeaderView;->G:Landroid/view/View$OnClickListener;

    .line 2
    .line 3
    return-void
.end method

.method public declared-synchronized setHomepageRecommendGroup(Ljava/util/List;)V
    .locals 12
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "recommenGroups"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/join/mgps/dto/RecommenGroup;",
            ">;)V"
        }
    .end annotation

    .line 1
    monitor-enter p0

    .line 2
    if-nez p1, :cond_0

    .line 3
    .line 4
    monitor-exit p0

    .line 5
    return-void

    .line 6
    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/join/mgps/customview/ForumIndexHeaderView;->z:Ljava/util/List;

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
    iput-object v0, p0, Lcom/join/mgps/customview/ForumIndexHeaderView;->z:Ljava/util/List;

    .line 16
    .line 17
    :cond_1
    iget-object v0, p0, Lcom/join/mgps/customview/ForumIndexHeaderView;->A:Lcom/join/mgps/adapter/ForumBaseAdapter;

    .line 18
    .line 19
    invoke-virtual {v0}, Lcom/join/mgps/adapter/ForumBaseAdapter;->x()Ljava/util/List;

    .line 20
    .line 21
    .line 22
    move-result-object v0

    .line 23
    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 24
    .line 25
    .line 26
    iget-object v0, p0, Lcom/join/mgps/customview/ForumIndexHeaderView;->z:Ljava/util/List;

    .line 27
    .line 28
    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 29
    .line 30
    .line 31
    invoke-direct {p0}, Lcom/join/mgps/customview/ForumIndexHeaderView;->b()Z

    .line 32
    .line 33
    .line 34
    move-result v0

    .line 35
    if-eqz v0, :cond_2

    .line 36
    .line 37
    iget-object p1, p0, Lcom/join/mgps/customview/ForumIndexHeaderView;->z:Ljava/util/List;

    .line 38
    .line 39
    iget-object v0, p0, Lcom/join/mgps/customview/ForumIndexHeaderView;->C:Ljava/util/List;

    .line 40
    .line 41
    invoke-interface {p1, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 42
    .line 43
    .line 44
    goto :goto_0

    .line 45
    :cond_2
    iget-object v0, p0, Lcom/join/mgps/customview/ForumIndexHeaderView;->z:Ljava/util/List;

    .line 46
    .line 47
    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 48
    .line 49
    .line 50
    :goto_0
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 51
    .line 52
    .line 53
    move-result-object p1

    .line 54
    invoke-static {p1}, Lcom/join/mgps/Util/AccountUtil_;->getInstance_(Landroid/content/Context;)Lcom/join/mgps/Util/AccountUtil_;

    .line 55
    .line 56
    .line 57
    move-result-object p1

    .line 58
    invoke-virtual {p1}, Lcom/join/mgps/Util/b;->isTourist()Z

    .line 59
    .line 60
    .line 61
    move-result p1

    .line 62
    const/4 v0, 0x0

    .line 63
    if-nez p1, :cond_3

    .line 64
    .line 65
    const/4 p1, 0x1

    .line 66
    goto :goto_1

    .line 67
    :cond_3
    const/4 p1, 0x0

    .line 68
    :goto_1
    invoke-virtual {p0}, Lcom/join/mgps/customview/ForumIndexHeaderView;->e()V

    .line 69
    .line 70
    .line 71
    :goto_2
    iget-object v1, p0, Lcom/join/mgps/customview/ForumIndexHeaderView;->z:Ljava/util/List;

    .line 72
    .line 73
    invoke-interface {v1}, Ljava/util/List;->size()I

    .line 74
    .line 75
    .line 76
    move-result v1

    .line 77
    if-ge v0, v1, :cond_4

    .line 78
    .line 79
    iget-object v1, p0, Lcom/join/mgps/customview/ForumIndexHeaderView;->z:Ljava/util/List;

    .line 80
    .line 81
    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 82
    .line 83
    .line 84
    move-result-object v1

    .line 85
    check-cast v1, Lcom/join/mgps/dto/RecommenGroup;

    .line 86
    .line 87
    new-instance v9, Lcom/join/mgps/adapter/ForumBaseAdapter$r1;

    .line 88
    .line 89
    sget-object v10, Lcom/join/mgps/adapter/ForumBaseAdapter$ViewType;->GROUP_ITEM:Lcom/join/mgps/adapter/ForumBaseAdapter$ViewType;

    .line 90
    .line 91
    new-instance v11, Lcom/join/mgps/adapter/ForumBaseAdapter$r1$d0;

    .line 92
    .line 93
    invoke-virtual {v1}, Lcom/join/mgps/dto/RecommenGroup;->getIcon_src()Ljava/lang/String;

    .line 94
    .line 95
    .line 96
    move-result-object v2

    .line 97
    invoke-virtual {v1}, Lcom/join/mgps/dto/RecommenGroup;->getName()Ljava/lang/String;

    .line 98
    .line 99
    .line 100
    move-result-object v3

    .line 101
    invoke-virtual {v1}, Lcom/join/mgps/dto/RecommenGroup;->getDescription()Ljava/lang/String;

    .line 102
    .line 103
    .line 104
    move-result-object v4

    .line 105
    invoke-virtual {v1}, Lcom/join/mgps/dto/RecommenGroup;->getToday_posts()I

    .line 106
    .line 107
    .line 108
    move-result v6

    .line 109
    invoke-virtual {v1}, Lcom/join/mgps/dto/RecommenGroup;->getFid()I

    .line 110
    .line 111
    .line 112
    move-result v7

    .line 113
    invoke-direct {p0}, Lcom/join/mgps/customview/ForumIndexHeaderView;->b()Z

    .line 114
    .line 115
    .line 116
    move-result v8

    .line 117
    move-object v1, v11

    .line 118
    move v5, p1

    .line 119
    invoke-direct/range {v1 .. v8}, Lcom/join/mgps/adapter/ForumBaseAdapter$r1$d0;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZIIZ)V

    .line 120
    .line 121
    .line 122
    invoke-direct {v9, v10, v11}, Lcom/join/mgps/adapter/ForumBaseAdapter$r1;-><init>(Lcom/join/mgps/adapter/ForumBaseAdapter$ViewType;Ljava/lang/Object;)V

    .line 123
    .line 124
    .line 125
    iget-object v1, p0, Lcom/join/mgps/customview/ForumIndexHeaderView;->A:Lcom/join/mgps/adapter/ForumBaseAdapter;

    .line 126
    .line 127
    invoke-virtual {v1, v9}, Lcom/join/mgps/adapter/ForumBaseAdapter;->f(Lcom/join/mgps/adapter/ForumBaseAdapter$r1;)V

    .line 128
    .line 129
    .line 130
    add-int/lit8 v0, v0, 0x1

    .line 131
    .line 132
    goto :goto_2

    .line 133
    :cond_4
    iget-object p1, p0, Lcom/join/mgps/customview/ForumIndexHeaderView;->A:Lcom/join/mgps/adapter/ForumBaseAdapter;

    .line 134
    .line 135
    invoke-virtual {p1}, Lcom/join/mgps/adapter/ForumBaseAdapter;->notifyDataSetChanged()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 136
    .line 137
    .line 138
    monitor-exit p0

    .line 139
    return-void

    .line 140
    :catchall_0
    move-exception p1

    .line 141
    monitor-exit p0

    .line 142
    throw p1
.end method

.method public setHomepageRecommendGroupMy(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "homepageRecommendGroupMy"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/join/mgps/dto/RecommenGroup;",
            ">;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/join/mgps/customview/ForumIndexHeaderView;->C:Ljava/util/List;

    .line 2
    .line 3
    return-void
.end method

.method public setHomepageRecommendLabel(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "homepageRecommendLabel"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/join/mgps/dto/RecommendLabelTag;",
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
    iget-object v0, p0, Lcom/join/mgps/customview/ForumIndexHeaderView;->B:Ljava/util/List;

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
    iput-object v0, p0, Lcom/join/mgps/customview/ForumIndexHeaderView;->B:Ljava/util/List;

    .line 14
    .line 15
    :cond_1
    iget-object v0, p0, Lcom/join/mgps/customview/ForumIndexHeaderView;->B:Ljava/util/List;

    .line 16
    .line 17
    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 18
    .line 19
    .line 20
    iget-object v0, p0, Lcom/join/mgps/customview/ForumIndexHeaderView;->B:Ljava/util/List;

    .line 21
    .line 22
    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 23
    .line 24
    .line 25
    invoke-direct {p0}, Lcom/join/mgps/customview/ForumIndexHeaderView;->d()V

    .line 26
    .line 27
    .line 28
    return-void
.end method

.method public setLabelsTipVisibility(I)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "visibility"
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-static {v0}, Lcom/join/mgps/pref/h;->n(Landroid/content/Context;)Lcom/join/mgps/pref/h;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    invoke-virtual {v0}, Lcom/join/mgps/pref/h;->D()Z

    .line 10
    .line 11
    .line 12
    move-result v0

    .line 13
    if-nez v0, :cond_0

    .line 14
    .line 15
    iget-object p1, p0, Lcom/join/mgps/customview/ForumIndexHeaderView;->l:Landroid/view/View;

    .line 16
    .line 17
    const/16 v0, 0x8

    .line 18
    .line 19
    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 20
    .line 21
    .line 22
    return-void

    .line 23
    :cond_0
    iget-object v0, p0, Lcom/join/mgps/customview/ForumIndexHeaderView;->l:Landroid/view/View;

    .line 24
    .line 25
    invoke-virtual {v0, p1}, Landroid/view/View;->setVisibility(I)V

    .line 26
    .line 27
    .line 28
    return-void
.end method

.method public setLabelsVisibility(I)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "visibility"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/customview/ForumIndexHeaderView;->j:Landroid/widget/LinearLayout;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Landroid/view/View;->setVisibility(I)V

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lcom/join/mgps/customview/ForumIndexHeaderView;->n:Lcom/join/mgps/customview/MyFlowLayout;

    .line 7
    .line 8
    invoke-virtual {v0, p1}, Landroid/view/View;->setVisibility(I)V

    .line 9
    .line 10
    .line 11
    iget-object v0, p0, Lcom/join/mgps/customview/ForumIndexHeaderView;->k:Landroid/widget/LinearLayout;

    .line 12
    .line 13
    invoke-virtual {v0, p1}, Landroid/view/View;->setVisibility(I)V

    .line 14
    .line 15
    .line 16
    return-void
.end method

.method public setNoForumBanner()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/join/mgps/customview/ForumIndexHeaderView;->y:Ljava/util/List;

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
    if-nez v0, :cond_1

    .line 10
    .line 11
    :cond_0
    iget-object v0, p0, Lcom/join/mgps/customview/ForumIndexHeaderView;->b:Lcom/join/mgps/customview/ViewPagerWithADs;

    .line 12
    .line 13
    if-eqz v0, :cond_1

    .line 14
    .line 15
    const/16 v1, 0x8

    .line 16
    .line 17
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 18
    .line 19
    .line 20
    :cond_1
    return-void
.end method

.method public setmOnMeasureHeight(Lcom/join/mgps/customview/ForumIndexHeaderView$c;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "mOnMeasureHeight"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/join/mgps/customview/ForumIndexHeaderView;->H:Lcom/join/mgps/customview/ForumIndexHeaderView$c;

    .line 2
    .line 3
    return-void
.end method
