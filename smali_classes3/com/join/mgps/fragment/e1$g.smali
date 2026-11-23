.class Lcom/join/mgps/fragment/e1$g;
.super Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/join/mgps/fragment/e1;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "g"
.end annotation


# instance fields
.field private final d:Landroid/widget/TextView;

.field private final e:Landroid/widget/TextView;

.field private final f:Landroid/widget/ImageView;

.field private final g:Landroid/widget/TextView;

.field private final h:Landroid/widget/TextView;

.field private final i:Landroid/widget/TextView;

.field public j:Lcom/facebook/drawee/view/SimpleDraweeView;

.field public k:Landroid/widget/FrameLayout;

.field public l:Lcom/join/mgps/customview/MStarBar;

.field public m:Landroid/widget/TextView;

.field public n:Landroid/view/View;

.field public o:Lcom/facebook/drawee/view/SimpleDraweeView;

.field public p:Landroid/widget/TextView;

.field final synthetic q:Lcom/join/mgps/fragment/e1;


# direct methods
.method public constructor <init>(Lcom/join/mgps/fragment/e1;Landroid/view/View;)V
    .locals 0
    .param p1    # Lcom/join/mgps/fragment/e1;
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
    iput-object p1, p0, Lcom/join/mgps/fragment/e1$g;->q:Lcom/join/mgps/fragment/e1;

    .line 2
    .line 3
    invoke-direct {p0, p2}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;-><init>(Landroid/view/View;)V

    .line 4
    .line 5
    .line 6
    const p1, 0x7f0a1897

    .line 7
    .line 8
    .line 9
    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 10
    .line 11
    .line 12
    move-result-object p1

    .line 13
    check-cast p1, Landroid/widget/TextView;

    .line 14
    .line 15
    iput-object p1, p0, Lcom/join/mgps/fragment/e1$g;->d:Landroid/widget/TextView;

    .line 16
    .line 17
    const p1, 0x7f0a18aa

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
    iput-object p1, p0, Lcom/join/mgps/fragment/e1$g;->e:Landroid/widget/TextView;

    .line 27
    .line 28
    const p1, 0x7f0a18b9

    .line 29
    .line 30
    .line 31
    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 32
    .line 33
    .line 34
    move-result-object p1

    .line 35
    check-cast p1, Landroid/widget/ImageView;

    .line 36
    .line 37
    iput-object p1, p0, Lcom/join/mgps/fragment/e1$g;->f:Landroid/widget/ImageView;

    .line 38
    .line 39
    const p1, 0x7f0a18b5

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
    iput-object p1, p0, Lcom/join/mgps/fragment/e1$g;->g:Landroid/widget/TextView;

    .line 49
    .line 50
    const p1, 0x7f0a18b8

    .line 51
    .line 52
    .line 53
    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 54
    .line 55
    .line 56
    move-result-object p1

    .line 57
    check-cast p1, Landroid/widget/TextView;

    .line 58
    .line 59
    iput-object p1, p0, Lcom/join/mgps/fragment/e1$g;->h:Landroid/widget/TextView;

    .line 60
    .line 61
    const p1, 0x7f0a0261

    .line 62
    .line 63
    .line 64
    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 65
    .line 66
    .line 67
    move-result-object p1

    .line 68
    check-cast p1, Landroid/widget/TextView;

    .line 69
    .line 70
    iput-object p1, p0, Lcom/join/mgps/fragment/e1$g;->i:Landroid/widget/TextView;

    .line 71
    .line 72
    const p1, 0x7f0a015d

    .line 73
    .line 74
    .line 75
    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 76
    .line 77
    .line 78
    move-result-object p1

    .line 79
    check-cast p1, Lcom/facebook/drawee/view/SimpleDraweeView;

    .line 80
    .line 81
    iput-object p1, p0, Lcom/join/mgps/fragment/e1$g;->j:Lcom/facebook/drawee/view/SimpleDraweeView;

    .line 82
    .line 83
    const p1, 0x7f0a1b63

    .line 84
    .line 85
    .line 86
    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 87
    .line 88
    .line 89
    move-result-object p1

    .line 90
    check-cast p1, Landroid/widget/FrameLayout;

    .line 91
    .line 92
    iput-object p1, p0, Lcom/join/mgps/fragment/e1$g;->k:Landroid/widget/FrameLayout;

    .line 93
    .line 94
    const p1, 0x7f0a0fe8

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
    iput-object p1, p0, Lcom/join/mgps/fragment/e1$g;->l:Lcom/join/mgps/customview/MStarBar;

    .line 104
    .line 105
    const p1, 0x7f0a1895

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
    iput-object p1, p0, Lcom/join/mgps/fragment/e1$g;->m:Landroid/widget/TextView;

    .line 115
    .line 116
    const p1, 0x7f0a04e1

    .line 117
    .line 118
    .line 119
    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 120
    .line 121
    .line 122
    move-result-object p1

    .line 123
    iput-object p1, p0, Lcom/join/mgps/fragment/e1$g;->n:Landroid/view/View;

    .line 124
    .line 125
    const p1, 0x7f0a06ec

    .line 126
    .line 127
    .line 128
    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 129
    .line 130
    .line 131
    move-result-object p1

    .line 132
    check-cast p1, Lcom/facebook/drawee/view/SimpleDraweeView;

    .line 133
    .line 134
    iput-object p1, p0, Lcom/join/mgps/fragment/e1$g;->o:Lcom/facebook/drawee/view/SimpleDraweeView;

    .line 135
    .line 136
    const p1, 0x7f0a1889

    .line 137
    .line 138
    .line 139
    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 140
    .line 141
    .line 142
    move-result-object p1

    .line 143
    check-cast p1, Landroid/widget/TextView;

    .line 144
    .line 145
    iput-object p1, p0, Lcom/join/mgps/fragment/e1$g;->p:Landroid/widget/TextView;

    .line 146
    .line 147
    return-void
.end method

.method static synthetic a(Lcom/join/mgps/fragment/e1$g;)Landroid/widget/TextView;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/join/mgps/fragment/e1$g;->i:Landroid/widget/TextView;

    .line 2
    .line 3
    return-object p0
.end method

.method static synthetic b(Lcom/join/mgps/fragment/e1$g;)Landroid/widget/TextView;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/join/mgps/fragment/e1$g;->e:Landroid/widget/TextView;

    .line 2
    .line 3
    return-object p0
.end method

.method static synthetic c(Lcom/join/mgps/fragment/e1$g;)Landroid/widget/TextView;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/join/mgps/fragment/e1$g;->d:Landroid/widget/TextView;

    .line 2
    .line 3
    return-object p0
.end method

.method static synthetic d(Lcom/join/mgps/fragment/e1$g;)Landroid/widget/TextView;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/join/mgps/fragment/e1$g;->g:Landroid/widget/TextView;

    .line 2
    .line 3
    return-object p0
.end method

.method static synthetic e(Lcom/join/mgps/fragment/e1$g;)Landroid/widget/ImageView;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/join/mgps/fragment/e1$g;->f:Landroid/widget/ImageView;

    .line 2
    .line 3
    return-object p0
.end method
