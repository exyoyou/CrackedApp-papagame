.class Lcom/join/mgps/activity/EndGameActivity$f;
.super Landroidx/viewpager2/widget/ViewPager2$OnPageChangeCallback;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/join/mgps/activity/EndGameActivity;->afterviews()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/join/mgps/activity/EndGameActivity;


# direct methods
.method constructor <init>(Lcom/join/mgps/activity/EndGameActivity;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            "this$0"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/join/mgps/activity/EndGameActivity$f;->a:Lcom/join/mgps/activity/EndGameActivity;

    .line 2
    .line 3
    invoke-direct {p0}, Landroidx/viewpager2/widget/ViewPager2$OnPageChangeCallback;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public onPageSelected(I)V
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "position"
        }
    .end annotation

    .line 1
    const/4 v0, 0x0

    .line 2
    const/4 v1, 0x0

    .line 3
    :goto_0
    iget-object v2, p0, Lcom/join/mgps/activity/EndGameActivity$f;->a:Lcom/join/mgps/activity/EndGameActivity;

    .line 4
    .line 5
    invoke-static {v2}, Lcom/join/mgps/activity/EndGameActivity;->access$600(Lcom/join/mgps/activity/EndGameActivity;)Ljava/util/List;

    .line 6
    .line 7
    .line 8
    move-result-object v2

    .line 9
    invoke-interface {v2}, Ljava/util/List;->size()I

    .line 10
    .line 11
    .line 12
    move-result v2

    .line 13
    if-ge v1, v2, :cond_1

    .line 14
    .line 15
    iget-object v2, p0, Lcom/join/mgps/activity/EndGameActivity$f;->a:Lcom/join/mgps/activity/EndGameActivity;

    .line 16
    .line 17
    invoke-static {v2}, Lcom/join/mgps/activity/EndGameActivity;->access$600(Lcom/join/mgps/activity/EndGameActivity;)Ljava/util/List;

    .line 18
    .line 19
    .line 20
    move-result-object v2

    .line 21
    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 22
    .line 23
    .line 24
    move-result-object v2

    .line 25
    check-cast v2, Lcom/join/mgps/dto/EndGameTypeBean;

    .line 26
    .line 27
    if-ne v1, p1, :cond_0

    .line 28
    .line 29
    const/4 v3, 0x1

    .line 30
    goto :goto_1

    .line 31
    :cond_0
    const/4 v3, 0x0

    .line 32
    :goto_1
    invoke-virtual {v2, v3}, Lcom/join/mgps/dto/EndGameTypeBean;->setSelected(Z)V

    .line 33
    .line 34
    .line 35
    add-int/lit8 v1, v1, 0x1

    .line 36
    .line 37
    goto :goto_0

    .line 38
    :cond_1
    iget-object v0, p0, Lcom/join/mgps/activity/EndGameActivity$f;->a:Lcom/join/mgps/activity/EndGameActivity;

    .line 39
    .line 40
    invoke-static {v0}, Lcom/join/mgps/activity/EndGameActivity;->access$700(Lcom/join/mgps/activity/EndGameActivity;)Lcom/join/mgps/activity/EndGameActivity$j;

    .line 41
    .line 42
    .line 43
    move-result-object v0

    .line 44
    if-eqz v0, :cond_2

    .line 45
    .line 46
    iget-object v0, p0, Lcom/join/mgps/activity/EndGameActivity$f;->a:Lcom/join/mgps/activity/EndGameActivity;

    .line 47
    .line 48
    invoke-static {v0}, Lcom/join/mgps/activity/EndGameActivity;->access$700(Lcom/join/mgps/activity/EndGameActivity;)Lcom/join/mgps/activity/EndGameActivity$j;

    .line 49
    .line 50
    .line 51
    move-result-object v0

    .line 52
    iget-object v1, p0, Lcom/join/mgps/activity/EndGameActivity$f;->a:Lcom/join/mgps/activity/EndGameActivity;

    .line 53
    .line 54
    invoke-static {v1}, Lcom/join/mgps/activity/EndGameActivity;->access$600(Lcom/join/mgps/activity/EndGameActivity;)Ljava/util/List;

    .line 55
    .line 56
    .line 57
    move-result-object v1

    .line 58
    invoke-virtual {v0, v1}, Lcom/join/mgps/base/BaseQuickAdapter;->replaceData(Ljava/util/Collection;)V

    .line 59
    .line 60
    .line 61
    :cond_2
    iget-object v0, p0, Lcom/join/mgps/activity/EndGameActivity$f;->a:Lcom/join/mgps/activity/EndGameActivity;

    .line 62
    .line 63
    iget-object v0, v0, Lcom/join/mgps/activity/EndGameActivity;->rvGameSelectTag:Landroidx/recyclerview/widget/RecyclerView;

    .line 64
    .line 65
    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView;->getLayoutManager()Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    .line 66
    .line 67
    .line 68
    move-result-object v0

    .line 69
    check-cast v0, Landroidx/recyclerview/widget/LinearLayoutManager;

    .line 70
    .line 71
    if-eqz v0, :cond_4

    .line 72
    .line 73
    invoke-virtual {v0}, Landroidx/recyclerview/widget/LinearLayoutManager;->findLastCompletelyVisibleItemPosition()I

    .line 74
    .line 75
    .line 76
    move-result v1

    .line 77
    invoke-virtual {v0}, Landroidx/recyclerview/widget/LinearLayoutManager;->findFirstCompletelyVisibleItemPosition()I

    .line 78
    .line 79
    .line 80
    move-result v0

    .line 81
    if-lt p1, v0, :cond_3

    .line 82
    .line 83
    if-le p1, v1, :cond_4

    .line 84
    .line 85
    :cond_3
    iget-object v0, p0, Lcom/join/mgps/activity/EndGameActivity$f;->a:Lcom/join/mgps/activity/EndGameActivity;

    .line 86
    .line 87
    iget-object v0, v0, Lcom/join/mgps/activity/EndGameActivity;->rvGameSelectTag:Landroidx/recyclerview/widget/RecyclerView;

    .line 88
    .line 89
    invoke-virtual {v0, p1}, Landroidx/recyclerview/widget/RecyclerView;->smoothScrollToPosition(I)V

    .line 90
    .line 91
    .line 92
    :cond_4
    iget-object v0, p0, Lcom/join/mgps/activity/EndGameActivity$f;->a:Lcom/join/mgps/activity/EndGameActivity;

    .line 93
    .line 94
    invoke-static {v0}, Lcom/join/mgps/activity/EndGameActivity;->access$800(Lcom/join/mgps/activity/EndGameActivity;)Lcom/join/mgps/activity/EndGameActivity$k;

    .line 95
    .line 96
    .line 97
    move-result-object v0

    .line 98
    if-eqz v0, :cond_5

    .line 99
    .line 100
    iget-object v0, p0, Lcom/join/mgps/activity/EndGameActivity$f;->a:Lcom/join/mgps/activity/EndGameActivity;

    .line 101
    .line 102
    invoke-static {v0}, Lcom/join/mgps/activity/EndGameActivity;->access$800(Lcom/join/mgps/activity/EndGameActivity;)Lcom/join/mgps/activity/EndGameActivity$k;

    .line 103
    .line 104
    .line 105
    move-result-object v0

    .line 106
    invoke-static {v0, p1}, Lcom/join/mgps/activity/EndGameActivity$k;->b(Lcom/join/mgps/activity/EndGameActivity$k;I)Lcom/join/mgps/fragment/j1;

    .line 107
    .line 108
    .line 109
    move-result-object p1

    .line 110
    if-eqz p1, :cond_5

    .line 111
    .line 112
    iget-object v0, p0, Lcom/join/mgps/activity/EndGameActivity$f;->a:Lcom/join/mgps/activity/EndGameActivity;

    .line 113
    .line 114
    invoke-static {v0}, Lcom/join/mgps/activity/EndGameActivity;->access$400(Lcom/join/mgps/activity/EndGameActivity;)Lcom/join/mgps/dto/EndGameNameListBean;

    .line 115
    .line 116
    .line 117
    move-result-object v0

    .line 118
    if-eqz v0, :cond_5

    .line 119
    .line 120
    iget-object v0, p0, Lcom/join/mgps/activity/EndGameActivity$f;->a:Lcom/join/mgps/activity/EndGameActivity;

    .line 121
    .line 122
    invoke-static {v0}, Lcom/join/mgps/activity/EndGameActivity;->access$400(Lcom/join/mgps/activity/EndGameActivity;)Lcom/join/mgps/dto/EndGameNameListBean;

    .line 123
    .line 124
    .line 125
    move-result-object v0

    .line 126
    invoke-virtual {v0}, Lcom/join/mgps/dto/EndGameNameListBean;->getGameId()Ljava/lang/String;

    .line 127
    .line 128
    .line 129
    move-result-object v0

    .line 130
    invoke-virtual {p1, v0}, Lcom/join/mgps/fragment/i1;->S(Ljava/lang/String;)V

    .line 131
    .line 132
    .line 133
    :cond_5
    return-void
.end method
