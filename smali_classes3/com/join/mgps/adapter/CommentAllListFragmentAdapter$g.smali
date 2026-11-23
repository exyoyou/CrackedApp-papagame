.class Lcom/join/mgps/adapter/CommentAllListFragmentAdapter$g;
.super Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/join/mgps/adapter/CommentAllListFragmentAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "g"
.end annotation


# instance fields
.field private d:Landroid/widget/LinearLayout;

.field private e:Lcom/facebook/drawee/view/SimpleDraweeView;

.field private f:Landroid/widget/TextView;

.field private g:Landroid/widget/TextView;

.field private h:Landroid/widget/ImageView;

.field private i:Landroid/widget/TextView;

.field private j:Lcom/join/mgps/customview/MStarBar;

.field private k:Landroid/widget/TextView;

.field private l:Landroid/widget/TextView;

.field private m:Landroid/widget/ImageView;

.field private n:Landroid/widget/TextView;

.field private o:Landroid/widget/TextView;

.field public p:Landroid/view/View;

.field private q:Landroid/widget/TextView;

.field private r:Landroid/widget/ImageView;

.field private s:Landroid/widget/TextView;

.field private t:Landroid/widget/ImageView;

.field private u:Landroid/widget/TextView;

.field private v:Landroid/widget/ImageView;

.field private w:Landroid/widget/TextView;

.field private x:Lcom/join/mgps/customview/VipView;

.field final synthetic y:Lcom/join/mgps/adapter/CommentAllListFragmentAdapter;


# direct methods
.method public constructor <init>(Lcom/join/mgps/adapter/CommentAllListFragmentAdapter;Landroid/view/View;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x0
        }
        names = {
            "this$0",
            "view"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/join/mgps/adapter/CommentAllListFragmentAdapter$g;->y:Lcom/join/mgps/adapter/CommentAllListFragmentAdapter;

    .line 2
    .line 3
    invoke-direct {p0, p2}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;-><init>(Landroid/view/View;)V

    .line 4
    .line 5
    .line 6
    const p1, 0x7f0a03cc

    .line 7
    .line 8
    .line 9
    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 10
    .line 11
    .line 12
    move-result-object p1

    .line 13
    check-cast p1, Landroid/widget/LinearLayout;

    .line 14
    .line 15
    iput-object p1, p0, Lcom/join/mgps/adapter/CommentAllListFragmentAdapter$g;->d:Landroid/widget/LinearLayout;

    .line 16
    .line 17
    const p1, 0x7f0a1b1a

    .line 18
    .line 19
    .line 20
    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 21
    .line 22
    .line 23
    move-result-object p1

    .line 24
    check-cast p1, Lcom/facebook/drawee/view/SimpleDraweeView;

    .line 25
    .line 26
    iput-object p1, p0, Lcom/join/mgps/adapter/CommentAllListFragmentAdapter$g;->e:Lcom/facebook/drawee/view/SimpleDraweeView;

    .line 27
    .line 28
    const p1, 0x7f0a1b0c

    .line 29
    .line 30
    .line 31
    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 32
    .line 33
    .line 34
    move-result-object p1

    .line 35
    check-cast p1, Landroid/widget/TextView;

    .line 36
    .line 37
    iput-object p1, p0, Lcom/join/mgps/adapter/CommentAllListFragmentAdapter$g;->f:Landroid/widget/TextView;

    .line 38
    .line 39
    const p1, 0x7f0a0978

    .line 40
    .line 41
    .line 42
    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 43
    .line 44
    .line 45
    move-result-object p1

    .line 46
    check-cast p1, Landroid/widget/TextView;

    .line 47
    .line 48
    iput-object p1, p0, Lcom/join/mgps/adapter/CommentAllListFragmentAdapter$g;->g:Landroid/widget/TextView;

    .line 49
    .line 50
    const p1, 0x7f0a0e59

    .line 51
    .line 52
    .line 53
    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 54
    .line 55
    .line 56
    move-result-object p1

    .line 57
    check-cast p1, Lcom/join/mgps/customview/VipView;

    .line 58
    .line 59
    iput-object p1, p0, Lcom/join/mgps/adapter/CommentAllListFragmentAdapter$g;->x:Lcom/join/mgps/customview/VipView;

    .line 60
    .line 61
    const p1, 0x7f0a096f

    .line 62
    .line 63
    .line 64
    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 65
    .line 66
    .line 67
    move-result-object p1

    .line 68
    check-cast p1, Landroid/widget/ImageView;

    .line 69
    .line 70
    iput-object p1, p0, Lcom/join/mgps/adapter/CommentAllListFragmentAdapter$g;->h:Landroid/widget/ImageView;

    .line 71
    .line 72
    const p1, 0x7f0a0977

    .line 73
    .line 74
    .line 75
    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 76
    .line 77
    .line 78
    move-result-object p1

    .line 79
    check-cast p1, Landroid/widget/ImageView;

    .line 80
    .line 81
    iput-object p1, p0, Lcom/join/mgps/adapter/CommentAllListFragmentAdapter$g;->m:Landroid/widget/ImageView;

    .line 82
    .line 83
    const p1, 0x7f0a0970

    .line 84
    .line 85
    .line 86
    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 87
    .line 88
    .line 89
    move-result-object p1

    .line 90
    check-cast p1, Landroid/widget/TextView;

    .line 91
    .line 92
    iput-object p1, p0, Lcom/join/mgps/adapter/CommentAllListFragmentAdapter$g;->i:Landroid/widget/TextView;

    .line 93
    .line 94
    const p1, 0x7f0a03db

    .line 95
    .line 96
    .line 97
    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 98
    .line 99
    .line 100
    move-result-object p1

    .line 101
    check-cast p1, Lcom/join/mgps/customview/MStarBar;

    .line 102
    .line 103
    iput-object p1, p0, Lcom/join/mgps/adapter/CommentAllListFragmentAdapter$g;->j:Lcom/join/mgps/customview/MStarBar;

    .line 104
    .line 105
    const p1, 0x7f0a03dd

    .line 106
    .line 107
    .line 108
    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 109
    .line 110
    .line 111
    move-result-object p1

    .line 112
    check-cast p1, Landroid/widget/TextView;

    .line 113
    .line 114
    iput-object p1, p0, Lcom/join/mgps/adapter/CommentAllListFragmentAdapter$g;->k:Landroid/widget/TextView;

    .line 115
    .line 116
    const p1, 0x7f0a174b

    .line 117
    .line 118
    .line 119
    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 120
    .line 121
    .line 122
    move-result-object p1

    .line 123
    check-cast p1, Landroid/widget/TextView;

    .line 124
    .line 125
    iput-object p1, p0, Lcom/join/mgps/adapter/CommentAllListFragmentAdapter$g;->l:Landroid/widget/TextView;

    .line 126
    .line 127
    const p1, 0x7f0a0424

    .line 128
    .line 129
    .line 130
    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 131
    .line 132
    .line 133
    move-result-object p1

    .line 134
    check-cast p1, Landroid/widget/TextView;

    .line 135
    .line 136
    iput-object p1, p0, Lcom/join/mgps/adapter/CommentAllListFragmentAdapter$g;->n:Landroid/widget/TextView;

    .line 137
    .line 138
    const p1, 0x7f0a1087

    .line 139
    .line 140
    .line 141
    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 142
    .line 143
    .line 144
    move-result-object p1

    .line 145
    check-cast p1, Landroid/widget/TextView;

    .line 146
    .line 147
    iput-object p1, p0, Lcom/join/mgps/adapter/CommentAllListFragmentAdapter$g;->o:Landroid/widget/TextView;

    .line 148
    .line 149
    const p1, 0x7f0a0e61

    .line 150
    .line 151
    .line 152
    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 153
    .line 154
    .line 155
    move-result-object p1

    .line 156
    iput-object p1, p0, Lcom/join/mgps/adapter/CommentAllListFragmentAdapter$g;->p:Landroid/view/View;

    .line 157
    .line 158
    const p1, 0x7f0a1248

    .line 159
    .line 160
    .line 161
    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 162
    .line 163
    .line 164
    move-result-object p1

    .line 165
    check-cast p1, Landroid/widget/TextView;

    .line 166
    .line 167
    iput-object p1, p0, Lcom/join/mgps/adapter/CommentAllListFragmentAdapter$g;->q:Landroid/widget/TextView;

    .line 168
    .line 169
    const p1, 0x7f0a1219

    .line 170
    .line 171
    .line 172
    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 173
    .line 174
    .line 175
    move-result-object p1

    .line 176
    check-cast p1, Landroid/widget/ImageView;

    .line 177
    .line 178
    iput-object p1, p0, Lcom/join/mgps/adapter/CommentAllListFragmentAdapter$g;->r:Landroid/widget/ImageView;

    .line 179
    .line 180
    const p1, 0x7f0a121a

    .line 181
    .line 182
    .line 183
    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 184
    .line 185
    .line 186
    move-result-object p1

    .line 187
    check-cast p1, Landroid/widget/TextView;

    .line 188
    .line 189
    iput-object p1, p0, Lcom/join/mgps/adapter/CommentAllListFragmentAdapter$g;->s:Landroid/widget/TextView;

    .line 190
    .line 191
    const p1, 0x7f0a04f1

    .line 192
    .line 193
    .line 194
    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 195
    .line 196
    .line 197
    move-result-object p1

    .line 198
    check-cast p1, Landroid/widget/ImageView;

    .line 199
    .line 200
    iput-object p1, p0, Lcom/join/mgps/adapter/CommentAllListFragmentAdapter$g;->t:Landroid/widget/ImageView;

    .line 201
    .line 202
    const p1, 0x7f0a0504

    .line 203
    .line 204
    .line 205
    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 206
    .line 207
    .line 208
    move-result-object p1

    .line 209
    check-cast p1, Landroid/widget/TextView;

    .line 210
    .line 211
    iput-object p1, p0, Lcom/join/mgps/adapter/CommentAllListFragmentAdapter$g;->u:Landroid/widget/TextView;

    .line 212
    .line 213
    const p1, 0x7f0a1032

    .line 214
    .line 215
    .line 216
    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 217
    .line 218
    .line 219
    move-result-object p1

    .line 220
    check-cast p1, Landroid/widget/ImageView;

    .line 221
    .line 222
    iput-object p1, p0, Lcom/join/mgps/adapter/CommentAllListFragmentAdapter$g;->v:Landroid/widget/ImageView;

    .line 223
    .line 224
    const p1, 0x7f0a103d

    .line 225
    .line 226
    .line 227
    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 228
    .line 229
    .line 230
    move-result-object p1

    .line 231
    check-cast p1, Landroid/widget/TextView;

    .line 232
    .line 233
    iput-object p1, p0, Lcom/join/mgps/adapter/CommentAllListFragmentAdapter$g;->w:Landroid/widget/TextView;

    .line 234
    .line 235
    return-void
.end method

.method static synthetic a(Lcom/join/mgps/adapter/CommentAllListFragmentAdapter$g;)Landroid/widget/TextView;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/join/mgps/adapter/CommentAllListFragmentAdapter$g;->f:Landroid/widget/TextView;

    .line 2
    .line 3
    return-object p0
.end method

.method static synthetic b(Lcom/join/mgps/adapter/CommentAllListFragmentAdapter$g;)Lcom/join/mgps/customview/VipView;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/join/mgps/adapter/CommentAllListFragmentAdapter$g;->x:Lcom/join/mgps/customview/VipView;

    .line 2
    .line 3
    return-object p0
.end method

.method static synthetic c(Lcom/join/mgps/adapter/CommentAllListFragmentAdapter$g;)Lcom/join/mgps/customview/MStarBar;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/join/mgps/adapter/CommentAllListFragmentAdapter$g;->j:Lcom/join/mgps/customview/MStarBar;

    .line 2
    .line 3
    return-object p0
.end method

.method static synthetic d(Lcom/join/mgps/adapter/CommentAllListFragmentAdapter$g;)Landroid/widget/TextView;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/join/mgps/adapter/CommentAllListFragmentAdapter$g;->k:Landroid/widget/TextView;

    .line 2
    .line 3
    return-object p0
.end method

.method static synthetic e(Lcom/join/mgps/adapter/CommentAllListFragmentAdapter$g;)Landroid/widget/ImageView;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/join/mgps/adapter/CommentAllListFragmentAdapter$g;->m:Landroid/widget/ImageView;

    .line 2
    .line 3
    return-object p0
.end method

.method static synthetic f(Lcom/join/mgps/adapter/CommentAllListFragmentAdapter$g;)Landroid/widget/ImageView;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/join/mgps/adapter/CommentAllListFragmentAdapter$g;->h:Landroid/widget/ImageView;

    .line 2
    .line 3
    return-object p0
.end method

.method static synthetic g(Lcom/join/mgps/adapter/CommentAllListFragmentAdapter$g;)Landroid/widget/TextView;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/join/mgps/adapter/CommentAllListFragmentAdapter$g;->i:Landroid/widget/TextView;

    .line 2
    .line 3
    return-object p0
.end method

.method static synthetic h(Lcom/join/mgps/adapter/CommentAllListFragmentAdapter$g;)Landroid/widget/ImageView;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/join/mgps/adapter/CommentAllListFragmentAdapter$g;->r:Landroid/widget/ImageView;

    .line 2
    .line 3
    return-object p0
.end method

.method static synthetic i(Lcom/join/mgps/adapter/CommentAllListFragmentAdapter$g;)Landroid/widget/ImageView;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/join/mgps/adapter/CommentAllListFragmentAdapter$g;->t:Landroid/widget/ImageView;

    .line 2
    .line 3
    return-object p0
.end method

.method static synthetic j(Lcom/join/mgps/adapter/CommentAllListFragmentAdapter$g;)Landroid/widget/ImageView;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/join/mgps/adapter/CommentAllListFragmentAdapter$g;->v:Landroid/widget/ImageView;

    .line 2
    .line 3
    return-object p0
.end method

.method static synthetic k(Lcom/join/mgps/adapter/CommentAllListFragmentAdapter$g;)Landroid/widget/LinearLayout;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/join/mgps/adapter/CommentAllListFragmentAdapter$g;->d:Landroid/widget/LinearLayout;

    .line 2
    .line 3
    return-object p0
.end method

.method static synthetic l(Lcom/join/mgps/adapter/CommentAllListFragmentAdapter$g;)Landroid/widget/TextView;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/join/mgps/adapter/CommentAllListFragmentAdapter$g;->o:Landroid/widget/TextView;

    .line 2
    .line 3
    return-object p0
.end method

.method static synthetic m(Lcom/join/mgps/adapter/CommentAllListFragmentAdapter$g;)Landroid/widget/TextView;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/join/mgps/adapter/CommentAllListFragmentAdapter$g;->g:Landroid/widget/TextView;

    .line 2
    .line 3
    return-object p0
.end method

.method static synthetic n(Lcom/join/mgps/adapter/CommentAllListFragmentAdapter$g;)Lcom/facebook/drawee/view/SimpleDraweeView;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/join/mgps/adapter/CommentAllListFragmentAdapter$g;->e:Lcom/facebook/drawee/view/SimpleDraweeView;

    .line 2
    .line 3
    return-object p0
.end method

.method static synthetic o(Lcom/join/mgps/adapter/CommentAllListFragmentAdapter$g;)Landroid/widget/TextView;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/join/mgps/adapter/CommentAllListFragmentAdapter$g;->n:Landroid/widget/TextView;

    .line 2
    .line 3
    return-object p0
.end method

.method static synthetic p(Lcom/join/mgps/adapter/CommentAllListFragmentAdapter$g;)Landroid/widget/TextView;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/join/mgps/adapter/CommentAllListFragmentAdapter$g;->q:Landroid/widget/TextView;

    .line 2
    .line 3
    return-object p0
.end method

.method static synthetic q(Lcom/join/mgps/adapter/CommentAllListFragmentAdapter$g;)Landroid/widget/TextView;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/join/mgps/adapter/CommentAllListFragmentAdapter$g;->s:Landroid/widget/TextView;

    .line 2
    .line 3
    return-object p0
.end method

.method static synthetic r(Lcom/join/mgps/adapter/CommentAllListFragmentAdapter$g;)Landroid/widget/TextView;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/join/mgps/adapter/CommentAllListFragmentAdapter$g;->u:Landroid/widget/TextView;

    .line 2
    .line 3
    return-object p0
.end method

.method static synthetic s(Lcom/join/mgps/adapter/CommentAllListFragmentAdapter$g;)Landroid/widget/TextView;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/join/mgps/adapter/CommentAllListFragmentAdapter$g;->w:Landroid/widget/TextView;

    .line 2
    .line 3
    return-object p0
.end method

.method static synthetic t(Lcom/join/mgps/adapter/CommentAllListFragmentAdapter$g;)Landroid/widget/TextView;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/join/mgps/adapter/CommentAllListFragmentAdapter$g;->l:Landroid/widget/TextView;

    .line 2
    .line 3
    return-object p0
.end method
