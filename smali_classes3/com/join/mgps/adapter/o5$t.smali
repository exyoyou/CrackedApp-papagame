.class Lcom/join/mgps/adapter/o5$t;
.super Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/join/mgps/adapter/o5;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "t"
.end annotation


# instance fields
.field private d:Landroid/view/View;

.field private e:Landroid/widget/RelativeLayout;

.field private f:Landroid/widget/TextView;

.field private g:Lcom/facebook/drawee/view/SimpleDraweeView;

.field private h:Landroid/widget/RelativeLayout;

.field private i:Landroid/widget/TextView;

.field private j:Landroid/widget/TextView;

.field private k:Lcom/facebook/drawee/view/SimpleDraweeView;

.field private l:Landroid/widget/RelativeLayout;

.field private m:Landroid/widget/TextView;

.field private n:Landroid/widget/TextView;

.field private o:Landroid/widget/LinearLayout;

.field final synthetic p:Lcom/join/mgps/adapter/o5;


# direct methods
.method public constructor <init>(Lcom/join/mgps/adapter/o5;Landroid/view/View;)V
    .locals 0
    .param p1    # Lcom/join/mgps/adapter/o5;
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
            "itemview"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/join/mgps/adapter/o5$t;->p:Lcom/join/mgps/adapter/o5;

    .line 2
    .line 3
    invoke-direct {p0, p2}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;-><init>(Landroid/view/View;)V

    .line 4
    .line 5
    .line 6
    const p1, 0x7f0a07b9

    .line 7
    .line 8
    .line 9
    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 10
    .line 11
    .line 12
    move-result-object p1

    .line 13
    iput-object p1, p0, Lcom/join/mgps/adapter/o5$t;->d:Landroid/view/View;

    .line 14
    .line 15
    const p1, 0x7f0a13b4

    .line 16
    .line 17
    .line 18
    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 19
    .line 20
    .line 21
    move-result-object p1

    .line 22
    check-cast p1, Landroid/widget/RelativeLayout;

    .line 23
    .line 24
    iput-object p1, p0, Lcom/join/mgps/adapter/o5$t;->e:Landroid/widget/RelativeLayout;

    .line 25
    .line 26
    const p1, 0x7f0a0620

    .line 27
    .line 28
    .line 29
    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 30
    .line 31
    .line 32
    move-result-object p1

    .line 33
    check-cast p1, Landroid/widget/TextView;

    .line 34
    .line 35
    iput-object p1, p0, Lcom/join/mgps/adapter/o5$t;->f:Landroid/widget/TextView;

    .line 36
    .line 37
    const p1, 0x7f0a0621

    .line 38
    .line 39
    .line 40
    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 41
    .line 42
    .line 43
    move-result-object p1

    .line 44
    check-cast p1, Lcom/facebook/drawee/view/SimpleDraweeView;

    .line 45
    .line 46
    iput-object p1, p0, Lcom/join/mgps/adapter/o5$t;->g:Lcom/facebook/drawee/view/SimpleDraweeView;

    .line 47
    .line 48
    const p1, 0x7f0a13b6

    .line 49
    .line 50
    .line 51
    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 52
    .line 53
    .line 54
    move-result-object p1

    .line 55
    check-cast p1, Landroid/widget/RelativeLayout;

    .line 56
    .line 57
    iput-object p1, p0, Lcom/join/mgps/adapter/o5$t;->h:Landroid/widget/RelativeLayout;

    .line 58
    .line 59
    const p1, 0x7f0a1878

    .line 60
    .line 61
    .line 62
    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 63
    .line 64
    .line 65
    move-result-object p1

    .line 66
    check-cast p1, Landroid/widget/TextView;

    .line 67
    .line 68
    iput-object p1, p0, Lcom/join/mgps/adapter/o5$t;->i:Landroid/widget/TextView;

    .line 69
    .line 70
    const p1, 0x7f0a1879

    .line 71
    .line 72
    .line 73
    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 74
    .line 75
    .line 76
    move-result-object p1

    .line 77
    check-cast p1, Landroid/widget/TextView;

    .line 78
    .line 79
    iput-object p1, p0, Lcom/join/mgps/adapter/o5$t;->j:Landroid/widget/TextView;

    .line 80
    .line 81
    const p1, 0x7f0a09c6

    .line 82
    .line 83
    .line 84
    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 85
    .line 86
    .line 87
    move-result-object p1

    .line 88
    check-cast p1, Lcom/facebook/drawee/view/SimpleDraweeView;

    .line 89
    .line 90
    iput-object p1, p0, Lcom/join/mgps/adapter/o5$t;->k:Lcom/facebook/drawee/view/SimpleDraweeView;

    .line 91
    .line 92
    const p1, 0x7f0a13b5

    .line 93
    .line 94
    .line 95
    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 96
    .line 97
    .line 98
    move-result-object p1

    .line 99
    check-cast p1, Landroid/widget/RelativeLayout;

    .line 100
    .line 101
    iput-object p1, p0, Lcom/join/mgps/adapter/o5$t;->l:Landroid/widget/RelativeLayout;

    .line 102
    .line 103
    const p1, 0x7f0a1874

    .line 104
    .line 105
    .line 106
    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 107
    .line 108
    .line 109
    move-result-object p1

    .line 110
    check-cast p1, Landroid/widget/TextView;

    .line 111
    .line 112
    iput-object p1, p0, Lcom/join/mgps/adapter/o5$t;->m:Landroid/widget/TextView;

    .line 113
    .line 114
    const p1, 0x7f0a186d

    .line 115
    .line 116
    .line 117
    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 118
    .line 119
    .line 120
    move-result-object p1

    .line 121
    check-cast p1, Landroid/widget/TextView;

    .line 122
    .line 123
    iput-object p1, p0, Lcom/join/mgps/adapter/o5$t;->n:Landroid/widget/TextView;

    .line 124
    .line 125
    const p1, 0x7f0a0ea0

    .line 126
    .line 127
    .line 128
    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 129
    .line 130
    .line 131
    move-result-object p1

    .line 132
    check-cast p1, Landroid/widget/LinearLayout;

    .line 133
    .line 134
    iput-object p1, p0, Lcom/join/mgps/adapter/o5$t;->o:Landroid/widget/LinearLayout;

    .line 135
    .line 136
    return-void
.end method

.method static synthetic a(Lcom/join/mgps/adapter/o5$t;)Lcom/facebook/drawee/view/SimpleDraweeView;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/join/mgps/adapter/o5$t;->g:Lcom/facebook/drawee/view/SimpleDraweeView;

    .line 2
    .line 3
    return-object p0
.end method

.method static synthetic b(Lcom/join/mgps/adapter/o5$t;)Landroid/widget/TextView;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/join/mgps/adapter/o5$t;->f:Landroid/widget/TextView;

    .line 2
    .line 3
    return-object p0
.end method

.method static synthetic c(Lcom/join/mgps/adapter/o5$t;)Landroid/view/View;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/join/mgps/adapter/o5$t;->d:Landroid/view/View;

    .line 2
    .line 3
    return-object p0
.end method

.method static synthetic d(Lcom/join/mgps/adapter/o5$t;)Landroid/widget/RelativeLayout;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/join/mgps/adapter/o5$t;->e:Landroid/widget/RelativeLayout;

    .line 2
    .line 3
    return-object p0
.end method

.method static synthetic e(Lcom/join/mgps/adapter/o5$t;)Landroid/widget/TextView;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/join/mgps/adapter/o5$t;->n:Landroid/widget/TextView;

    .line 2
    .line 3
    return-object p0
.end method

.method static synthetic f(Lcom/join/mgps/adapter/o5$t;)Landroid/widget/RelativeLayout;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/join/mgps/adapter/o5$t;->l:Landroid/widget/RelativeLayout;

    .line 2
    .line 3
    return-object p0
.end method

.method static synthetic g(Lcom/join/mgps/adapter/o5$t;)Landroid/widget/LinearLayout;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/join/mgps/adapter/o5$t;->o:Landroid/widget/LinearLayout;

    .line 2
    .line 3
    return-object p0
.end method

.method static synthetic h(Lcom/join/mgps/adapter/o5$t;)Landroid/widget/TextView;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/join/mgps/adapter/o5$t;->i:Landroid/widget/TextView;

    .line 2
    .line 3
    return-object p0
.end method

.method static synthetic i(Lcom/join/mgps/adapter/o5$t;)Landroid/widget/TextView;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/join/mgps/adapter/o5$t;->j:Landroid/widget/TextView;

    .line 2
    .line 3
    return-object p0
.end method

.method static synthetic j(Lcom/join/mgps/adapter/o5$t;)Lcom/facebook/drawee/view/SimpleDraweeView;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/join/mgps/adapter/o5$t;->k:Lcom/facebook/drawee/view/SimpleDraweeView;

    .line 2
    .line 3
    return-object p0
.end method

.method static synthetic k(Lcom/join/mgps/adapter/o5$t;)Landroid/widget/RelativeLayout;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/join/mgps/adapter/o5$t;->h:Landroid/widget/RelativeLayout;

    .line 2
    .line 3
    return-object p0
.end method
