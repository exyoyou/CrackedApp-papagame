.class public Lcom/join/mgps/activity/GameInformationActivityV2$l;
.super Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/join/mgps/activity/GameInformationActivityV2;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "l"
.end annotation


# instance fields
.field private d:Landroid/widget/RelativeLayout;

.field private e:Lcom/facebook/drawee/view/SimpleDraweeView;

.field private f:Landroid/widget/ImageView;

.field private g:Landroid/widget/TextView;

.field private h:Landroid/widget/TextView;

.field private i:Landroid/widget/TextView;

.field private j:Landroid/widget/TextView;

.field private k:Landroid/widget/TextView;

.field public l:Landroid/view/View;

.field public m:Landroid/widget/TextView;

.field public n:Lcom/join/mgps/customview/VipView;

.field final synthetic o:Lcom/join/mgps/activity/GameInformationActivityV2;


# direct methods
.method public constructor <init>(Lcom/join/mgps/activity/GameInformationActivityV2;Landroid/view/View;)V
    .locals 0
    .param p1    # Lcom/join/mgps/activity/GameInformationActivityV2;
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
            "view"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/join/mgps/activity/GameInformationActivityV2$l;->o:Lcom/join/mgps/activity/GameInformationActivityV2;

    .line 2
    .line 3
    invoke-direct {p0, p2}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;-><init>(Landroid/view/View;)V

    .line 4
    .line 5
    .line 6
    const p1, 0x7f0a0fee

    .line 7
    .line 8
    .line 9
    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 10
    .line 11
    .line 12
    move-result-object p1

    .line 13
    check-cast p1, Landroid/widget/RelativeLayout;

    .line 14
    .line 15
    iput-object p1, p0, Lcom/join/mgps/activity/GameInformationActivityV2$l;->d:Landroid/widget/RelativeLayout;

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
    iput-object p1, p0, Lcom/join/mgps/activity/GameInformationActivityV2$l;->e:Lcom/facebook/drawee/view/SimpleDraweeView;

    .line 27
    .line 28
    const p1, 0x7f0a1219

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
    iput-object p1, p0, Lcom/join/mgps/activity/GameInformationActivityV2$l;->f:Landroid/widget/ImageView;

    .line 38
    .line 39
    const p1, 0x7f0a1b1d

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
    iput-object p1, p0, Lcom/join/mgps/activity/GameInformationActivityV2$l;->g:Landroid/widget/TextView;

    .line 49
    .line 50
    const p1, 0x7f0a174b

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
    iput-object p1, p0, Lcom/join/mgps/activity/GameInformationActivityV2$l;->h:Landroid/widget/TextView;

    .line 60
    .line 61
    const p1, 0x7f0a0424

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
    iput-object p1, p0, Lcom/join/mgps/activity/GameInformationActivityV2$l;->i:Landroid/widget/TextView;

    .line 71
    .line 72
    const p1, 0x7f0a121a

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
    iput-object p1, p0, Lcom/join/mgps/activity/GameInformationActivityV2$l;->j:Landroid/widget/TextView;

    .line 82
    .line 83
    const p1, 0x7f0a0e59

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
    iput-object p1, p0, Lcom/join/mgps/activity/GameInformationActivityV2$l;->k:Landroid/widget/TextView;

    .line 93
    .line 94
    const p1, 0x7f0a0e5b

    .line 95
    .line 96
    .line 97
    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 98
    .line 99
    .line 100
    move-result-object p1

    .line 101
    check-cast p1, Lcom/join/mgps/customview/VipView;

    .line 102
    .line 103
    iput-object p1, p0, Lcom/join/mgps/activity/GameInformationActivityV2$l;->n:Lcom/join/mgps/customview/VipView;

    .line 104
    .line 105
    const p1, 0x7f0a0e61

    .line 106
    .line 107
    .line 108
    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 109
    .line 110
    .line 111
    move-result-object p1

    .line 112
    iput-object p1, p0, Lcom/join/mgps/activity/GameInformationActivityV2$l;->l:Landroid/view/View;

    .line 113
    .line 114
    const p1, 0x7f0a1087

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
    iput-object p1, p0, Lcom/join/mgps/activity/GameInformationActivityV2$l;->m:Landroid/widget/TextView;

    .line 124
    .line 125
    return-void
.end method

.method static synthetic a(Lcom/join/mgps/activity/GameInformationActivityV2$l;)Landroid/widget/TextView;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/join/mgps/activity/GameInformationActivityV2$l;->h:Landroid/widget/TextView;

    .line 2
    .line 3
    return-object p0
.end method

.method static synthetic b(Lcom/join/mgps/activity/GameInformationActivityV2$l;)Landroid/widget/TextView;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/join/mgps/activity/GameInformationActivityV2$l;->i:Landroid/widget/TextView;

    .line 2
    .line 3
    return-object p0
.end method

.method static synthetic c(Lcom/join/mgps/activity/GameInformationActivityV2$l;)Landroid/widget/TextView;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/join/mgps/activity/GameInformationActivityV2$l;->j:Landroid/widget/TextView;

    .line 2
    .line 3
    return-object p0
.end method

.method static synthetic d(Lcom/join/mgps/activity/GameInformationActivityV2$l;)Landroid/widget/ImageView;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/join/mgps/activity/GameInformationActivityV2$l;->f:Landroid/widget/ImageView;

    .line 2
    .line 3
    return-object p0
.end method

.method static synthetic e(Lcom/join/mgps/activity/GameInformationActivityV2$l;)Lcom/facebook/drawee/view/SimpleDraweeView;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/join/mgps/activity/GameInformationActivityV2$l;->e:Lcom/facebook/drawee/view/SimpleDraweeView;

    .line 2
    .line 3
    return-object p0
.end method

.method static synthetic f(Lcom/join/mgps/activity/GameInformationActivityV2$l;)Landroid/widget/TextView;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/join/mgps/activity/GameInformationActivityV2$l;->g:Landroid/widget/TextView;

    .line 2
    .line 3
    return-object p0
.end method

.method static synthetic g(Lcom/join/mgps/activity/GameInformationActivityV2$l;)Landroid/widget/RelativeLayout;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/join/mgps/activity/GameInformationActivityV2$l;->d:Landroid/widget/RelativeLayout;

    .line 2
    .line 3
    return-object p0
.end method
