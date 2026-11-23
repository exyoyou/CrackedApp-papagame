.class Lcom/join/mgps/activity/GameDetailActivity$l;
.super Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/join/mgps/activity/GameDetailActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "l"
.end annotation


# instance fields
.field d:Lcom/facebook/drawee/view/SimpleDraweeView;

.field e:Landroid/widget/TextView;

.field f:Landroid/widget/TextView;

.field g:Landroid/widget/TextView;

.field h:Landroid/widget/TextView;

.field i:Landroid/widget/LinearLayout;

.field j:Landroid/widget/LinearLayout;

.field k:Lcom/join/mgps/customview/MStarBar;

.field l:Lit/sephiroth/android/library/widget/HListView;

.field m:Lit/sephiroth/android/library/widget/HListView;

.field n:Landroid/widget/LinearLayout;

.field o:Landroid/widget/ImageView;

.field p:Landroid/widget/ImageView;

.field q:Lcom/facebook/drawee/view/SimpleDraweeView;

.field r:Landroid/widget/TextView;

.field s:Landroid/widget/LinearLayout;

.field t:Landroid/view/View;

.field final synthetic u:Lcom/join/mgps/activity/GameDetailActivity;


# direct methods
.method public constructor <init>(Lcom/join/mgps/activity/GameDetailActivity;Landroid/view/View;)V
    .locals 0
    .param p1    # Lcom/join/mgps/activity/GameDetailActivity;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x0
        }
        names = {
            "this$0",
            "itemView"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/join/mgps/activity/GameDetailActivity$l;->u:Lcom/join/mgps/activity/GameDetailActivity;

    .line 2
    .line 3
    invoke-direct {p0, p2}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;-><init>(Landroid/view/View;)V

    .line 4
    .line 5
    .line 6
    const p1, 0x7f0a00e6

    .line 7
    .line 8
    .line 9
    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 10
    .line 11
    .line 12
    move-result-object p1

    .line 13
    check-cast p1, Lcom/facebook/drawee/view/SimpleDraweeView;

    .line 14
    .line 15
    iput-object p1, p0, Lcom/join/mgps/activity/GameDetailActivity$l;->d:Lcom/facebook/drawee/view/SimpleDraweeView;

    .line 16
    .line 17
    const p1, 0x7f0a00ee

    .line 18
    .line 19
    .line 20
    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 21
    .line 22
    .line 23
    move-result-object p1

    .line 24
    check-cast p1, Landroid/widget/TextView;

    .line 25
    .line 26
    iput-object p1, p0, Lcom/join/mgps/activity/GameDetailActivity$l;->e:Landroid/widget/TextView;

    .line 27
    .line 28
    const p1, 0x7f0a03de

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
    iput-object p1, p0, Lcom/join/mgps/activity/GameDetailActivity$l;->f:Landroid/widget/TextView;

    .line 38
    .line 39
    const p1, 0x7f0a048d

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
    iput-object p1, p0, Lcom/join/mgps/activity/GameDetailActivity$l;->g:Landroid/widget/TextView;

    .line 49
    .line 50
    const p1, 0x7f0a1763

    .line 51
    .line 52
    .line 53
    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 54
    .line 55
    .line 56
    move-result-object p1

    .line 57
    check-cast p1, Landroid/widget/LinearLayout;

    .line 58
    .line 59
    iput-object p1, p0, Lcom/join/mgps/activity/GameDetailActivity$l;->i:Landroid/widget/LinearLayout;

    .line 60
    .line 61
    const p1, 0x7f0a1482

    .line 62
    .line 63
    .line 64
    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 65
    .line 66
    .line 67
    move-result-object p1

    .line 68
    check-cast p1, Landroid/widget/LinearLayout;

    .line 69
    .line 70
    iput-object p1, p0, Lcom/join/mgps/activity/GameDetailActivity$l;->j:Landroid/widget/LinearLayout;

    .line 71
    .line 72
    const p1, 0x7f0a03db

    .line 73
    .line 74
    .line 75
    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 76
    .line 77
    .line 78
    move-result-object p1

    .line 79
    check-cast p1, Lcom/join/mgps/customview/MStarBar;

    .line 80
    .line 81
    iput-object p1, p0, Lcom/join/mgps/activity/GameDetailActivity$l;->k:Lcom/join/mgps/customview/MStarBar;

    .line 82
    .line 83
    const p1, 0x7f0a1486

    .line 84
    .line 85
    .line 86
    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 87
    .line 88
    .line 89
    move-result-object p1

    .line 90
    check-cast p1, Lit/sephiroth/android/library/widget/HListView;

    .line 91
    .line 92
    iput-object p1, p0, Lcom/join/mgps/activity/GameDetailActivity$l;->l:Lit/sephiroth/android/library/widget/HListView;

    .line 93
    .line 94
    const p1, 0x7f0a03cb

    .line 95
    .line 96
    .line 97
    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 98
    .line 99
    .line 100
    move-result-object p1

    .line 101
    check-cast p1, Lit/sephiroth/android/library/widget/HListView;

    .line 102
    .line 103
    iput-object p1, p0, Lcom/join/mgps/activity/GameDetailActivity$l;->m:Lit/sephiroth/android/library/widget/HListView;

    .line 104
    .line 105
    const p1, 0x7f0a050e

    .line 106
    .line 107
    .line 108
    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 109
    .line 110
    .line 111
    move-result-object p1

    .line 112
    check-cast p1, Landroid/widget/LinearLayout;

    .line 113
    .line 114
    iput-object p1, p0, Lcom/join/mgps/activity/GameDetailActivity$l;->n:Landroid/widget/LinearLayout;

    .line 115
    .line 116
    const p1, 0x7f0a04f3

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
    iput-object p1, p0, Lcom/join/mgps/activity/GameDetailActivity$l;->h:Landroid/widget/TextView;

    .line 126
    .line 127
    const p1, 0x7f0a04fe

    .line 128
    .line 129
    .line 130
    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 131
    .line 132
    .line 133
    move-result-object p1

    .line 134
    check-cast p1, Landroid/widget/ImageView;

    .line 135
    .line 136
    iput-object p1, p0, Lcom/join/mgps/activity/GameDetailActivity$l;->p:Landroid/widget/ImageView;

    .line 137
    .line 138
    const p1, 0x7f0a10a0

    .line 139
    .line 140
    .line 141
    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 142
    .line 143
    .line 144
    move-result-object p1

    .line 145
    check-cast p1, Lcom/facebook/drawee/view/SimpleDraweeView;

    .line 146
    .line 147
    iput-object p1, p0, Lcom/join/mgps/activity/GameDetailActivity$l;->q:Lcom/facebook/drawee/view/SimpleDraweeView;

    .line 148
    .line 149
    const p1, 0x7f0a0215

    .line 150
    .line 151
    .line 152
    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 153
    .line 154
    .line 155
    move-result-object p1

    .line 156
    check-cast p1, Landroid/widget/TextView;

    .line 157
    .line 158
    iput-object p1, p0, Lcom/join/mgps/activity/GameDetailActivity$l;->r:Landroid/widget/TextView;

    .line 159
    .line 160
    const p1, 0x7f0a048e

    .line 161
    .line 162
    .line 163
    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 164
    .line 165
    .line 166
    move-result-object p1

    .line 167
    check-cast p1, Landroid/widget/LinearLayout;

    .line 168
    .line 169
    iput-object p1, p0, Lcom/join/mgps/activity/GameDetailActivity$l;->s:Landroid/widget/LinearLayout;

    .line 170
    .line 171
    const p1, 0x7f0a00f6

    .line 172
    .line 173
    .line 174
    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 175
    .line 176
    .line 177
    move-result-object p1

    .line 178
    iput-object p1, p0, Lcom/join/mgps/activity/GameDetailActivity$l;->t:Landroid/view/View;

    .line 179
    .line 180
    const p1, 0x7f0a0a26

    .line 181
    .line 182
    .line 183
    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 184
    .line 185
    .line 186
    move-result-object p1

    .line 187
    check-cast p1, Landroid/widget/ImageView;

    .line 188
    .line 189
    iput-object p1, p0, Lcom/join/mgps/activity/GameDetailActivity$l;->o:Landroid/widget/ImageView;

    .line 190
    .line 191
    return-void
.end method
