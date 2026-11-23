.class Lcom/join/mgps/adapter/CommentAllListFragmentAdapter$k;
.super Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/join/mgps/adapter/CommentAllListFragmentAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "k"
.end annotation


# instance fields
.field private d:Landroid/widget/LinearLayout;

.field private e:Landroid/widget/LinearLayout;

.field private f:Landroid/widget/LinearLayout;

.field private g:Lcom/join/mgps/customview/MStarBar;

.field private h:Landroid/widget/TextView;

.field private i:Landroid/widget/TextView;

.field private j:Landroid/widget/TextView;

.field private k:Landroid/widget/TextView;

.field private l:Lcom/join/mgps/customview/HistogramView;

.field private m:Lcom/join/mgps/customview/HistogramView;

.field private n:Lcom/join/mgps/customview/HistogramView;

.field private o:Lcom/join/mgps/customview/HistogramView;

.field private p:Lcom/join/mgps/customview/HistogramView;

.field final synthetic q:Lcom/join/mgps/adapter/CommentAllListFragmentAdapter;


# direct methods
.method public constructor <init>(Lcom/join/mgps/adapter/CommentAllListFragmentAdapter;Landroid/view/View;)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x0
        }
        names = {
            "this$0",
            "headView"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/join/mgps/adapter/CommentAllListFragmentAdapter$k;->q:Lcom/join/mgps/adapter/CommentAllListFragmentAdapter;

    .line 2
    .line 3
    invoke-direct {p0, p2}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;-><init>(Landroid/view/View;)V

    .line 4
    .line 5
    .line 6
    const v0, 0x7f0a1195

    .line 7
    .line 8
    .line 9
    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    check-cast v0, Lcom/join/mgps/customview/HistogramView;

    .line 14
    .line 15
    iput-object v0, p0, Lcom/join/mgps/adapter/CommentAllListFragmentAdapter$k;->l:Lcom/join/mgps/customview/HistogramView;

    .line 16
    .line 17
    const v0, 0x7f0a1a76

    .line 18
    .line 19
    .line 20
    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 21
    .line 22
    .line 23
    move-result-object v0

    .line 24
    check-cast v0, Lcom/join/mgps/customview/HistogramView;

    .line 25
    .line 26
    iput-object v0, p0, Lcom/join/mgps/adapter/CommentAllListFragmentAdapter$k;->m:Lcom/join/mgps/customview/HistogramView;

    .line 27
    .line 28
    const v0, 0x7f0a1745

    .line 29
    .line 30
    .line 31
    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 32
    .line 33
    .line 34
    move-result-object v0

    .line 35
    check-cast v0, Lcom/join/mgps/customview/HistogramView;

    .line 36
    .line 37
    iput-object v0, p0, Lcom/join/mgps/adapter/CommentAllListFragmentAdapter$k;->n:Lcom/join/mgps/customview/HistogramView;

    .line 38
    .line 39
    const v0, 0x7f0a06be

    .line 40
    .line 41
    .line 42
    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 43
    .line 44
    .line 45
    move-result-object v0

    .line 46
    check-cast v0, Lcom/join/mgps/customview/HistogramView;

    .line 47
    .line 48
    iput-object v0, p0, Lcom/join/mgps/adapter/CommentAllListFragmentAdapter$k;->o:Lcom/join/mgps/customview/HistogramView;

    .line 49
    .line 50
    const v0, 0x7f0a063f

    .line 51
    .line 52
    .line 53
    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 54
    .line 55
    .line 56
    move-result-object v0

    .line 57
    check-cast v0, Lcom/join/mgps/customview/HistogramView;

    .line 58
    .line 59
    iput-object v0, p0, Lcom/join/mgps/adapter/CommentAllListFragmentAdapter$k;->p:Lcom/join/mgps/customview/HistogramView;

    .line 60
    .line 61
    const v0, 0x7f0a03db

    .line 62
    .line 63
    .line 64
    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 65
    .line 66
    .line 67
    move-result-object v0

    .line 68
    check-cast v0, Lcom/join/mgps/customview/MStarBar;

    .line 69
    .line 70
    iput-object v0, p0, Lcom/join/mgps/adapter/CommentAllListFragmentAdapter$k;->g:Lcom/join/mgps/customview/MStarBar;

    .line 71
    .line 72
    const v0, 0x7f0a03de

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
    iput-object v0, p0, Lcom/join/mgps/adapter/CommentAllListFragmentAdapter$k;->j:Landroid/widget/TextView;

    .line 82
    .line 83
    const v0, 0x7f0a03dc

    .line 84
    .line 85
    .line 86
    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 87
    .line 88
    .line 89
    move-result-object v0

    .line 90
    check-cast v0, Landroid/widget/TextView;

    .line 91
    .line 92
    iput-object v0, p0, Lcom/join/mgps/adapter/CommentAllListFragmentAdapter$k;->i:Landroid/widget/TextView;

    .line 93
    .line 94
    const v0, 0x7f0a03dd

    .line 95
    .line 96
    .line 97
    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 98
    .line 99
    .line 100
    move-result-object v0

    .line 101
    check-cast v0, Landroid/widget/TextView;

    .line 102
    .line 103
    iput-object v0, p0, Lcom/join/mgps/adapter/CommentAllListFragmentAdapter$k;->k:Landroid/widget/TextView;

    .line 104
    .line 105
    const v0, 0x7f0a0563

    .line 106
    .line 107
    .line 108
    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 109
    .line 110
    .line 111
    move-result-object v0

    .line 112
    check-cast v0, Landroid/widget/TextView;

    .line 113
    .line 114
    iput-object v0, p0, Lcom/join/mgps/adapter/CommentAllListFragmentAdapter$k;->h:Landroid/widget/TextView;

    .line 115
    .line 116
    const-string v1, "\u5199\u8bc4\u8bba"

    .line 117
    .line 118
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 119
    .line 120
    .line 121
    const v0, 0x7f0a1621

    .line 122
    .line 123
    .line 124
    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 125
    .line 126
    .line 127
    move-result-object v0

    .line 128
    check-cast v0, Landroid/widget/LinearLayout;

    .line 129
    .line 130
    iput-object v0, p0, Lcom/join/mgps/adapter/CommentAllListFragmentAdapter$k;->d:Landroid/widget/LinearLayout;

    .line 131
    .line 132
    const v0, 0x7f0a126e

    .line 133
    .line 134
    .line 135
    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 136
    .line 137
    .line 138
    move-result-object v0

    .line 139
    check-cast v0, Landroid/widget/LinearLayout;

    .line 140
    .line 141
    iput-object v0, p0, Lcom/join/mgps/adapter/CommentAllListFragmentAdapter$k;->e:Landroid/widget/LinearLayout;

    .line 142
    .line 143
    const v0, 0x7f0a07a4

    .line 144
    .line 145
    .line 146
    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 147
    .line 148
    .line 149
    move-result-object v1

    .line 150
    new-instance v2, Lcom/join/mgps/adapter/CommentAllListFragmentAdapter$k$a;

    .line 151
    .line 152
    invoke-direct {v2, p0, p1}, Lcom/join/mgps/adapter/CommentAllListFragmentAdapter$k$a;-><init>(Lcom/join/mgps/adapter/CommentAllListFragmentAdapter$k;Lcom/join/mgps/adapter/CommentAllListFragmentAdapter;)V

    .line 153
    .line 154
    .line 155
    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 156
    .line 157
    .line 158
    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 159
    .line 160
    .line 161
    move-result-object p2

    .line 162
    invoke-static {p1}, Lcom/join/mgps/adapter/CommentAllListFragmentAdapter;->c(Lcom/join/mgps/adapter/CommentAllListFragmentAdapter;)I

    .line 163
    .line 164
    .line 165
    move-result v0

    .line 166
    const/4 v1, 0x0

    .line 167
    if-eqz v0, :cond_1

    .line 168
    .line 169
    sget-object v0, Lcom/join/android/app/common/utils/APKUtils;->a:Lcom/join/android/app/common/utils/APKUtils$b;

    .line 170
    .line 171
    invoke-static {p1}, Lcom/join/mgps/adapter/CommentAllListFragmentAdapter;->c(Lcom/join/mgps/adapter/CommentAllListFragmentAdapter;)I

    .line 172
    .line 173
    .line 174
    move-result p1

    .line 175
    invoke-virtual {v0, p1}, Lcom/join/android/app/common/utils/APKUtils$b;->z(I)Z

    .line 176
    .line 177
    .line 178
    move-result p1

    .line 179
    if-eqz p1, :cond_0

    .line 180
    .line 181
    goto :goto_0

    .line 182
    :cond_0
    const/16 p1, 0x8

    .line 183
    .line 184
    goto :goto_1

    .line 185
    :cond_1
    :goto_0
    const/4 p1, 0x0

    .line 186
    :goto_1
    invoke-virtual {p2, p1}, Landroid/view/View;->setVisibility(I)V

    .line 187
    .line 188
    .line 189
    iget-object p1, p0, Lcom/join/mgps/adapter/CommentAllListFragmentAdapter$k;->g:Lcom/join/mgps/customview/MStarBar;

    .line 190
    .line 191
    invoke-virtual {p1, v1}, Lcom/join/mgps/customview/MStarBar;->setIntegerMark(Z)V

    .line 192
    .line 193
    .line 194
    iget-object p1, p0, Lcom/join/mgps/adapter/CommentAllListFragmentAdapter$k;->g:Lcom/join/mgps/customview/MStarBar;

    .line 195
    .line 196
    invoke-virtual {p1, v1}, Landroid/view/View;->setEnabled(Z)V

    .line 197
    .line 198
    .line 199
    return-void
.end method

.method static synthetic a(Lcom/join/mgps/adapter/CommentAllListFragmentAdapter$k;)Lcom/join/mgps/customview/HistogramView;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/join/mgps/adapter/CommentAllListFragmentAdapter$k;->l:Lcom/join/mgps/customview/HistogramView;

    .line 2
    .line 3
    return-object p0
.end method

.method static synthetic b(Lcom/join/mgps/adapter/CommentAllListFragmentAdapter$k;)Lcom/join/mgps/customview/HistogramView;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/join/mgps/adapter/CommentAllListFragmentAdapter$k;->m:Lcom/join/mgps/customview/HistogramView;

    .line 2
    .line 3
    return-object p0
.end method

.method static synthetic c(Lcom/join/mgps/adapter/CommentAllListFragmentAdapter$k;)Lcom/join/mgps/customview/HistogramView;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/join/mgps/adapter/CommentAllListFragmentAdapter$k;->n:Lcom/join/mgps/customview/HistogramView;

    .line 2
    .line 3
    return-object p0
.end method

.method static synthetic d(Lcom/join/mgps/adapter/CommentAllListFragmentAdapter$k;)Lcom/join/mgps/customview/HistogramView;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/join/mgps/adapter/CommentAllListFragmentAdapter$k;->o:Lcom/join/mgps/customview/HistogramView;

    .line 2
    .line 3
    return-object p0
.end method

.method static synthetic e(Lcom/join/mgps/adapter/CommentAllListFragmentAdapter$k;)Lcom/join/mgps/customview/HistogramView;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/join/mgps/adapter/CommentAllListFragmentAdapter$k;->p:Lcom/join/mgps/customview/HistogramView;

    .line 2
    .line 3
    return-object p0
.end method

.method static synthetic f(Lcom/join/mgps/adapter/CommentAllListFragmentAdapter$k;)Landroid/widget/TextView;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/join/mgps/adapter/CommentAllListFragmentAdapter$k;->j:Landroid/widget/TextView;

    .line 2
    .line 3
    return-object p0
.end method

.method static synthetic g(Lcom/join/mgps/adapter/CommentAllListFragmentAdapter$k;)Lcom/join/mgps/customview/MStarBar;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/join/mgps/adapter/CommentAllListFragmentAdapter$k;->g:Lcom/join/mgps/customview/MStarBar;

    .line 2
    .line 3
    return-object p0
.end method

.method static synthetic h(Lcom/join/mgps/adapter/CommentAllListFragmentAdapter$k;)Landroid/widget/TextView;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/join/mgps/adapter/CommentAllListFragmentAdapter$k;->k:Landroid/widget/TextView;

    .line 2
    .line 3
    return-object p0
.end method

.method static synthetic i(Lcom/join/mgps/adapter/CommentAllListFragmentAdapter$k;)Landroid/widget/TextView;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/join/mgps/adapter/CommentAllListFragmentAdapter$k;->i:Landroid/widget/TextView;

    .line 2
    .line 3
    return-object p0
.end method

.method static synthetic j(Lcom/join/mgps/adapter/CommentAllListFragmentAdapter$k;)Landroid/widget/LinearLayout;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/join/mgps/adapter/CommentAllListFragmentAdapter$k;->e:Landroid/widget/LinearLayout;

    .line 2
    .line 3
    return-object p0
.end method
