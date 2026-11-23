.class Lcom/join/mgps/adapter/x1$j3;
.super Lf7/a;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/join/mgps/adapter/x1;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "j3"
.end annotation


# instance fields
.field d:Lit/sephiroth/android/library/widget/HListView;

.field private e:Lcom/facebook/drawee/view/SimpleDraweeView;

.field private f:Landroid/widget/TextView;

.field public g:Landroid/widget/ProgressBar;

.field public h:Landroid/widget/ProgressBar;

.field private i:Landroid/widget/TextView;

.field private j:Landroid/widget/LinearLayout;

.field private k:Landroid/widget/RelativeLayout;

.field private l:Lcom/join/mgps/customview/DownloadNormalView;

.field private m:Landroid/widget/LinearLayout;

.field private n:Landroid/widget/LinearLayout;

.field public o:Landroid/widget/TextView;

.field public p:Landroid/widget/TextView;

.field public q:Landroid/widget/TextView;

.field public r:Landroid/widget/TextView;

.field s:Landroid/widget/TextView;

.field t:Landroid/widget/LinearLayout;

.field final synthetic u:Lcom/join/mgps/adapter/x1;


# direct methods
.method public constructor <init>(Lcom/join/mgps/adapter/x1;Landroid/view/View;)V
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
    iput-object p1, p0, Lcom/join/mgps/adapter/x1$j3;->u:Lcom/join/mgps/adapter/x1;

    .line 2
    .line 3
    invoke-direct {p0, p2}, Lf7/a;-><init>(Landroid/view/View;)V

    .line 4
    .line 5
    .line 6
    const p1, 0x7f0a1486

    .line 7
    .line 8
    .line 9
    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 10
    .line 11
    .line 12
    move-result-object p1

    .line 13
    check-cast p1, Lit/sephiroth/android/library/widget/HListView;

    .line 14
    .line 15
    iput-object p1, p0, Lcom/join/mgps/adapter/x1$j3;->d:Lit/sephiroth/android/library/widget/HListView;

    .line 16
    .line 17
    const p1, 0x7f0a1044

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
    iput-object p1, p0, Lcom/join/mgps/adapter/x1$j3;->e:Lcom/facebook/drawee/view/SimpleDraweeView;

    .line 27
    .line 28
    const p1, 0x7f0a1042

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
    iput-object p1, p0, Lcom/join/mgps/adapter/x1$j3;->f:Landroid/widget/TextView;

    .line 38
    .line 39
    const p1, 0x7f0a12a5

    .line 40
    .line 41
    .line 42
    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 43
    .line 44
    .line 45
    move-result-object p1

    .line 46
    check-cast p1, Landroid/widget/ProgressBar;

    .line 47
    .line 48
    iput-object p1, p0, Lcom/join/mgps/adapter/x1$j3;->g:Landroid/widget/ProgressBar;

    .line 49
    .line 50
    const p1, 0x7f0a129e

    .line 51
    .line 52
    .line 53
    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 54
    .line 55
    .line 56
    move-result-object p1

    .line 57
    check-cast p1, Landroid/widget/ProgressBar;

    .line 58
    .line 59
    iput-object p1, p0, Lcom/join/mgps/adapter/x1$j3;->h:Landroid/widget/ProgressBar;

    .line 60
    .line 61
    const p1, 0x7f0a1764

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
    iput-object p1, p0, Lcom/join/mgps/adapter/x1$j3;->j:Landroid/widget/LinearLayout;

    .line 71
    .line 72
    const p1, 0x7f0a128f

    .line 73
    .line 74
    .line 75
    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 76
    .line 77
    .line 78
    move-result-object p1

    .line 79
    check-cast p1, Landroid/widget/TextView;

    .line 80
    .line 81
    iput-object p1, p0, Lcom/join/mgps/adapter/x1$j3;->i:Landroid/widget/TextView;

    .line 82
    .line 83
    const p1, 0x7f0a12f8

    .line 84
    .line 85
    .line 86
    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 87
    .line 88
    .line 89
    move-result-object p1

    .line 90
    check-cast p1, Landroid/widget/RelativeLayout;

    .line 91
    .line 92
    iput-object p1, p0, Lcom/join/mgps/adapter/x1$j3;->k:Landroid/widget/RelativeLayout;

    .line 93
    .line 94
    const p1, 0x7f0a054e

    .line 95
    .line 96
    .line 97
    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 98
    .line 99
    .line 100
    move-result-object p1

    .line 101
    check-cast p1, Lcom/join/mgps/customview/DownloadNormalView;

    .line 102
    .line 103
    iput-object p1, p0, Lcom/join/mgps/adapter/x1$j3;->l:Lcom/join/mgps/customview/DownloadNormalView;

    .line 104
    .line 105
    const p1, 0x7f0a0e73

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
    iput-object p1, p0, Lcom/join/mgps/adapter/x1$j3;->m:Landroid/widget/LinearLayout;

    .line 115
    .line 116
    const p1, 0x7f0a00f7

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
    iput-object p1, p0, Lcom/join/mgps/adapter/x1$j3;->o:Landroid/widget/TextView;

    .line 126
    .line 127
    const p1, 0x7f0a1941

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
    iput-object p1, p0, Lcom/join/mgps/adapter/x1$j3;->p:Landroid/widget/TextView;

    .line 137
    .line 138
    const p1, 0x7f0a0f94

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
    iput-object p1, p0, Lcom/join/mgps/adapter/x1$j3;->r:Landroid/widget/TextView;

    .line 148
    .line 149
    const p1, 0x7f0a194e

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
    iput-object p1, p0, Lcom/join/mgps/adapter/x1$j3;->s:Landroid/widget/TextView;

    .line 159
    .line 160
    const p1, 0x7f0a13e4

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
    iput-object p1, p0, Lcom/join/mgps/adapter/x1$j3;->n:Landroid/widget/LinearLayout;

    .line 170
    .line 171
    const p1, 0x7f0a1043

    .line 172
    .line 173
    .line 174
    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 175
    .line 176
    .line 177
    move-result-object p1

    .line 178
    check-cast p1, Landroid/widget/TextView;

    .line 179
    .line 180
    iput-object p1, p0, Lcom/join/mgps/adapter/x1$j3;->q:Landroid/widget/TextView;

    .line 181
    .line 182
    const p1, 0x7f0a1765

    .line 183
    .line 184
    .line 185
    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 186
    .line 187
    .line 188
    move-result-object p1

    .line 189
    check-cast p1, Landroid/widget/LinearLayout;

    .line 190
    .line 191
    iput-object p1, p0, Lcom/join/mgps/adapter/x1$j3;->t:Landroid/widget/LinearLayout;

    .line 192
    .line 193
    return-void
.end method

.method static synthetic a(Lcom/join/mgps/adapter/x1$j3;)Landroid/widget/LinearLayout;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/join/mgps/adapter/x1$j3;->n:Landroid/widget/LinearLayout;

    .line 2
    .line 3
    return-object p0
.end method

.method static synthetic b(Lcom/join/mgps/adapter/x1$j3;)Landroid/widget/TextView;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/join/mgps/adapter/x1$j3;->f:Landroid/widget/TextView;

    .line 2
    .line 3
    return-object p0
.end method

.method static synthetic c(Lcom/join/mgps/adapter/x1$j3;)Lcom/facebook/drawee/view/SimpleDraweeView;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/join/mgps/adapter/x1$j3;->e:Lcom/facebook/drawee/view/SimpleDraweeView;

    .line 2
    .line 3
    return-object p0
.end method

.method static synthetic d(Lcom/join/mgps/adapter/x1$j3;)Lcom/join/mgps/customview/DownloadNormalView;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/join/mgps/adapter/x1$j3;->l:Lcom/join/mgps/customview/DownloadNormalView;

    .line 2
    .line 3
    return-object p0
.end method

.method static synthetic e(Lcom/join/mgps/adapter/x1$j3;)Landroid/widget/LinearLayout;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/join/mgps/adapter/x1$j3;->j:Landroid/widget/LinearLayout;

    .line 2
    .line 3
    return-object p0
.end method

.method static synthetic f(Lcom/join/mgps/adapter/x1$j3;)Landroid/widget/LinearLayout;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/join/mgps/adapter/x1$j3;->m:Landroid/widget/LinearLayout;

    .line 2
    .line 3
    return-object p0
.end method
