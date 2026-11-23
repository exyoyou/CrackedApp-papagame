.class Lcom/join/mgps/fragment/y0$c;
.super Lcom/join/mgps/base/BaseQuickAdapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/join/mgps/fragment/y0;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "c"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/join/mgps/base/BaseQuickAdapter<",
        "Lcom/join/mgps/dto/EndGameDetailBean$RankingListBean;",
        "Lcom/join/mgps/base/b;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic e:Lcom/join/mgps/fragment/y0;


# direct methods
.method public constructor <init>(Lcom/join/mgps/fragment/y0;Ljava/util/List;)V
    .locals 0
    .param p1    # Lcom/join/mgps/fragment/y0;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x0
        }
        names = {
            "this$0",
            "data"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/join/mgps/dto/EndGameDetailBean$RankingListBean;",
            ">;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/join/mgps/fragment/y0$c;->e:Lcom/join/mgps/fragment/y0;

    .line 2
    .line 3
    const p1, 0x7f0d0403

    .line 4
    .line 5
    .line 6
    invoke-direct {p0, p1, p2}, Lcom/join/mgps/base/BaseQuickAdapter;-><init>(ILjava/util/List;)V

    .line 7
    .line 8
    .line 9
    return-void
.end method

.method public static synthetic r(Lcom/join/mgps/fragment/y0$c;Lcom/join/mgps/dto/EndGameDetailBean$RankingListBean;Landroid/view/View;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/join/mgps/fragment/y0$c;->t(Lcom/join/mgps/dto/EndGameDetailBean$RankingListBean;Landroid/view/View;)V

    return-void
.end method

.method private synthetic t(Lcom/join/mgps/dto/EndGameDetailBean$RankingListBean;Landroid/view/View;)V
    .locals 0

    .line 1
    iget-object p2, p0, Lcom/join/mgps/fragment/y0$c;->e:Lcom/join/mgps/fragment/y0;

    .line 2
    .line 3
    invoke-virtual {p2, p1}, Lcom/join/mgps/fragment/y0;->T(Lcom/join/mgps/dto/EndGameDetailBean$RankingListBean;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
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
    check-cast p2, Lcom/join/mgps/dto/EndGameDetailBean$RankingListBean;

    .line 2
    .line 3
    invoke-virtual {p0, p1, p2}, Lcom/join/mgps/fragment/y0$c;->s(Lcom/join/mgps/base/b;Lcom/join/mgps/dto/EndGameDetailBean$RankingListBean;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method protected s(Lcom/join/mgps/base/b;Lcom/join/mgps/dto/EndGameDetailBean$RankingListBean;)V
    .locals 6
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
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->getLayoutPosition()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    const/4 v1, 0x1

    .line 6
    add-int/2addr v0, v1

    .line 7
    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    const v2, 0x7f0a18c3

    .line 12
    .line 13
    .line 14
    invoke-virtual {p1, v2, v0}, Lcom/join/mgps/base/b;->setText(ILjava/lang/CharSequence;)Lcom/join/mgps/base/b;

    .line 15
    .line 16
    .line 17
    move-result-object v0

    .line 18
    invoke-virtual {p2}, Lcom/join/mgps/dto/EndGameDetailBean$RankingListBean;->getNickname()Ljava/lang/String;

    .line 19
    .line 20
    .line 21
    move-result-object v3

    .line 22
    const v4, 0x7f0a190f

    .line 23
    .line 24
    .line 25
    invoke-virtual {v0, v4, v3}, Lcom/join/mgps/base/b;->setText(ILjava/lang/CharSequence;)Lcom/join/mgps/base/b;

    .line 26
    .line 27
    .line 28
    move-result-object v0

    .line 29
    iget-object v3, p0, Lcom/join/mgps/fragment/y0$c;->e:Lcom/join/mgps/fragment/y0;

    .line 30
    .line 31
    invoke-virtual {p2}, Lcom/join/mgps/dto/EndGameDetailBean$RankingListBean;->getElapsedTime()I

    .line 32
    .line 33
    .line 34
    move-result v4

    .line 35
    invoke-static {v3, v4}, Lcom/join/mgps/fragment/y0;->P(Lcom/join/mgps/fragment/y0;I)Ljava/lang/String;

    .line 36
    .line 37
    .line 38
    move-result-object v3

    .line 39
    const v4, 0x7f0a18db

    .line 40
    .line 41
    .line 42
    invoke-virtual {v0, v4, v3}, Lcom/join/mgps/base/b;->setText(ILjava/lang/CharSequence;)Lcom/join/mgps/base/b;

    .line 43
    .line 44
    .line 45
    move-result-object v0

    .line 46
    invoke-virtual {p2}, Lcom/join/mgps/dto/EndGameDetailBean$RankingListBean;->getChange()I

    .line 47
    .line 48
    .line 49
    move-result v3

    .line 50
    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 51
    .line 52
    .line 53
    move-result-object v3

    .line 54
    const v4, 0x7f0a18c4

    .line 55
    .line 56
    .line 57
    invoke-virtual {v0, v4, v3}, Lcom/join/mgps/base/b;->setText(ILjava/lang/CharSequence;)Lcom/join/mgps/base/b;

    .line 58
    .line 59
    .line 60
    move-result-object v0

    .line 61
    invoke-virtual {p2}, Lcom/join/mgps/dto/EndGameDetailBean$RankingListBean;->isPlayback()Z

    .line 62
    .line 63
    .line 64
    move-result v3

    .line 65
    const v4, 0x7f0a09e7

    .line 66
    .line 67
    .line 68
    invoke-virtual {v0, v4, v3}, Lcom/join/mgps/base/b;->setVisible(IZ)Lcom/join/mgps/base/b;

    .line 69
    .line 70
    .line 71
    move-result-object v0

    .line 72
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->getLayoutPosition()I

    .line 73
    .line 74
    .line 75
    move-result v3

    .line 76
    const/4 v5, 0x2

    .line 77
    if-gt v3, v5, :cond_0

    .line 78
    .line 79
    const-string v3, "#097BEC"

    .line 80
    .line 81
    goto :goto_0

    .line 82
    :cond_0
    const-string v3, "#363636"

    .line 83
    .line 84
    :goto_0
    invoke-static {v3}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    .line 85
    .line 86
    .line 87
    move-result v3

    .line 88
    invoke-virtual {v0, v2, v3}, Lcom/join/mgps/base/b;->setTextColor(II)Lcom/join/mgps/base/b;

    .line 89
    .line 90
    .line 91
    invoke-virtual {p1, v2}, Lcom/join/mgps/base/b;->getView(I)Landroid/view/View;

    .line 92
    .line 93
    .line 94
    move-result-object v0

    .line 95
    check-cast v0, Landroid/widget/TextView;

    .line 96
    .line 97
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->getLayoutPosition()I

    .line 98
    .line 99
    .line 100
    move-result v2

    .line 101
    if-gt v2, v5, :cond_1

    .line 102
    .line 103
    goto :goto_1

    .line 104
    :cond_1
    const/4 v1, 0x0

    .line 105
    :goto_1
    const/4 v2, 0x0

    .line 106
    invoke-virtual {v0, v2, v1}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;I)V

    .line 107
    .line 108
    .line 109
    invoke-virtual {p1, v4}, Lcom/join/mgps/base/b;->getView(I)Landroid/view/View;

    .line 110
    .line 111
    .line 112
    move-result-object v0

    .line 113
    new-instance v1, Lcom/join/mgps/fragment/z0;

    .line 114
    .line 115
    invoke-direct {v1, p0, p2}, Lcom/join/mgps/fragment/z0;-><init>(Lcom/join/mgps/fragment/y0$c;Lcom/join/mgps/dto/EndGameDetailBean$RankingListBean;)V

    .line 116
    .line 117
    .line 118
    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 119
    .line 120
    .line 121
    const v0, 0x7f0a09b7

    .line 122
    .line 123
    .line 124
    invoke-virtual {p1, v0}, Lcom/join/mgps/base/b;->getView(I)Landroid/view/View;

    .line 125
    .line 126
    .line 127
    move-result-object p1

    .line 128
    check-cast p1, Lcom/facebook/drawee/view/SimpleDraweeView;

    .line 129
    .line 130
    invoke-virtual {p2}, Lcom/join/mgps/dto/EndGameDetailBean$RankingListBean;->getAvatar()Ljava/lang/String;

    .line 131
    .line 132
    .line 133
    move-result-object p2

    .line 134
    invoke-static {p1, p2}, Lcom/join/android/app/common/utils/l;->h(Lcom/facebook/drawee/view/SimpleDraweeView;Ljava/lang/String;)V

    .line 135
    .line 136
    .line 137
    return-void
.end method
