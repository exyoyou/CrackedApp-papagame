.class Lcom/join/mgps/adapter/y7$f;
.super Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/join/mgps/adapter/y7;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "f"
.end annotation


# instance fields
.field private t:Landroidx/recyclerview/widget/LinearLayoutManager;

.field private u:Lcom/join/mgps/dto/SimulatorFastEntryListBean;

.field private v:I

.field private w:I

.field final synthetic x:Lcom/join/mgps/adapter/y7;


# direct methods
.method public constructor <init>(Lcom/join/mgps/adapter/y7;Lcom/join/mgps/dto/SimulatorFastEntryListBean;Landroidx/recyclerview/widget/LinearLayoutManager;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010,
            0x0,
            0x0
        }
        names = {
            "this$0",
            "shopItem",
            "layoutManager"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/join/mgps/adapter/y7$f;->x:Lcom/join/mgps/adapter/y7;

    .line 2
    .line 3
    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;-><init>()V

    .line 4
    .line 5
    .line 6
    iput-object p3, p0, Lcom/join/mgps/adapter/y7$f;->t:Landroidx/recyclerview/widget/LinearLayoutManager;

    .line 7
    .line 8
    iput-object p2, p0, Lcom/join/mgps/adapter/y7$f;->u:Lcom/join/mgps/dto/SimulatorFastEntryListBean;

    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method public onScrollStateChanged(Landroidx/recyclerview/widget/RecyclerView;I)V
    .locals 7
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "recyclerView",
            "newState"
        }
    .end annotation

    .line 1
    invoke-super {p0, p1, p2}, Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;->onScrollStateChanged(Landroidx/recyclerview/widget/RecyclerView;I)V

    .line 2
    .line 3
    .line 4
    if-eqz p2, :cond_0

    .line 5
    .line 6
    goto/16 :goto_2

    .line 7
    .line 8
    :cond_0
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView;->computeHorizontalScrollOffset()I

    .line 9
    .line 10
    .line 11
    move-result p2

    .line 12
    iget-object v0, p0, Lcom/join/mgps/adapter/y7$f;->u:Lcom/join/mgps/dto/SimulatorFastEntryListBean;

    .line 13
    .line 14
    iget-object v1, p0, Lcom/join/mgps/adapter/y7$f;->t:Landroidx/recyclerview/widget/LinearLayoutManager;

    .line 15
    .line 16
    invoke-virtual {v1}, Landroidx/recyclerview/widget/LinearLayoutManager;->findFirstVisibleItemPosition()I

    .line 17
    .line 18
    .line 19
    move-result v1

    .line 20
    const/4 v2, 0x1

    .line 21
    if-gez v1, :cond_1

    .line 22
    .line 23
    iget-object v1, p0, Lcom/join/mgps/adapter/y7$f;->u:Lcom/join/mgps/dto/SimulatorFastEntryListBean;

    .line 24
    .line 25
    invoke-virtual {v1}, Lcom/join/mgps/dto/SimulatorFastEntryListBean;->getScrollPosition()I

    .line 26
    .line 27
    .line 28
    move-result v1

    .line 29
    goto :goto_0

    .line 30
    :cond_1
    iget-object v1, p0, Lcom/join/mgps/adapter/y7$f;->t:Landroidx/recyclerview/widget/LinearLayoutManager;

    .line 31
    .line 32
    invoke-virtual {v1}, Landroidx/recyclerview/widget/LinearLayoutManager;->findFirstVisibleItemPosition()I

    .line 33
    .line 34
    .line 35
    move-result v1

    .line 36
    add-int/2addr v1, v2

    .line 37
    :goto_0
    invoke-virtual {v0, v1}, Lcom/join/mgps/dto/SimulatorFastEntryListBean;->setScrollPosition(I)V

    .line 38
    .line 39
    .line 40
    iget v0, p0, Lcom/join/mgps/adapter/y7$f;->v:I

    .line 41
    .line 42
    if-gtz v0, :cond_2

    .line 43
    .line 44
    iget-object v0, p0, Lcom/join/mgps/adapter/y7$f;->t:Landroidx/recyclerview/widget/LinearLayoutManager;

    .line 45
    .line 46
    iget-object v1, p0, Lcom/join/mgps/adapter/y7$f;->u:Lcom/join/mgps/dto/SimulatorFastEntryListBean;

    .line 47
    .line 48
    invoke-virtual {v1}, Lcom/join/mgps/dto/SimulatorFastEntryListBean;->getScrollPosition()I

    .line 49
    .line 50
    .line 51
    move-result v1

    .line 52
    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/LinearLayoutManager;->findViewByPosition(I)Landroid/view/View;

    .line 53
    .line 54
    .line 55
    move-result-object v0

    .line 56
    if-eqz v0, :cond_2

    .line 57
    .line 58
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 59
    .line 60
    .line 61
    move-result-object v1

    .line 62
    check-cast v1, Landroidx/recyclerview/widget/RecyclerView$LayoutParams;

    .line 63
    .line 64
    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    .line 65
    .line 66
    .line 67
    move-result v0

    .line 68
    iput v0, p0, Lcom/join/mgps/adapter/y7$f;->v:I

    .line 69
    .line 70
    iget v0, v1, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    .line 71
    .line 72
    iput v0, p0, Lcom/join/mgps/adapter/y7$f;->w:I

    .line 73
    .line 74
    :cond_2
    if-lez p2, :cond_3

    .line 75
    .line 76
    iget v0, p0, Lcom/join/mgps/adapter/y7$f;->v:I

    .line 77
    .line 78
    if-lez v0, :cond_3

    .line 79
    .line 80
    iget-object v1, p0, Lcom/join/mgps/adapter/y7$f;->u:Lcom/join/mgps/dto/SimulatorFastEntryListBean;

    .line 81
    .line 82
    rem-int/2addr p2, v0

    .line 83
    sub-int/2addr v0, p2

    .line 84
    invoke-virtual {v1}, Lcom/join/mgps/dto/SimulatorFastEntryListBean;->getScrollPosition()I

    .line 85
    .line 86
    .line 87
    move-result p2

    .line 88
    iget v3, p0, Lcom/join/mgps/adapter/y7$f;->w:I

    .line 89
    .line 90
    mul-int p2, p2, v3

    .line 91
    .line 92
    add-int/2addr v0, p2

    .line 93
    invoke-virtual {v1, v0}, Lcom/join/mgps/dto/SimulatorFastEntryListBean;->setScrollOffset(I)V

    .line 94
    .line 95
    .line 96
    :cond_3
    invoke-static {p1}, Lcom/join/android/app/component/video/h;->m(Landroidx/recyclerview/widget/RecyclerView;)[I

    .line 97
    .line 98
    .line 99
    move-result-object p2

    .line 100
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView;->getAdapter()Landroidx/recyclerview/widget/RecyclerView$Adapter;

    .line 101
    .line 102
    .line 103
    move-result-object v0

    .line 104
    check-cast v0, Lcom/join/mgps/adapter/a8;

    .line 105
    .line 106
    const/4 v1, 0x0

    .line 107
    aget v1, p2, v1

    .line 108
    .line 109
    :goto_1
    aget v3, p2, v2

    .line 110
    .line 111
    if-gt v1, v3, :cond_5

    .line 112
    .line 113
    if-eqz v0, :cond_4

    .line 114
    .line 115
    invoke-virtual {v0, v1}, Lcom/join/mgps/base/BaseQuickAdapter;->getItem(I)Ljava/lang/Object;

    .line 116
    .line 117
    .line 118
    move-result-object v3

    .line 119
    check-cast v3, Lcom/join/mgps/dto/SimulatorFastEntryBean$GameInfo;

    .line 120
    .line 121
    invoke-virtual {v3}, Lcom/join/mgps/dto/SimulatorFastEntryBean$GameInfo;->getExtBean()Lcom/join/mgps/dto/ExtBean;

    .line 122
    .line 123
    .line 124
    move-result-object v4

    .line 125
    if-eqz v4, :cond_4

    .line 126
    .line 127
    invoke-virtual {v3}, Lcom/join/mgps/dto/SimulatorFastEntryBean$GameInfo;->getExtBean()Lcom/join/mgps/dto/ExtBean;

    .line 128
    .line 129
    .line 130
    move-result-object v4

    .line 131
    invoke-virtual {v4}, Lcom/join/mgps/dto/ExtBean;->hasExplore()Z

    .line 132
    .line 133
    .line 134
    move-result v4

    .line 135
    if-nez v4, :cond_4

    .line 136
    .line 137
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 138
    .line 139
    .line 140
    move-result-object v4

    .line 141
    invoke-static {v4}, Lcom/papa/sim/statistic/t;->l(Landroid/content/Context;)Lcom/papa/sim/statistic/t;

    .line 142
    .line 143
    .line 144
    move-result-object v4

    .line 145
    sget-object v5, Lcom/papa/sim/statistic/Event;->expGameAdPage:Lcom/papa/sim/statistic/Event;

    .line 146
    .line 147
    invoke-virtual {v3}, Lcom/join/mgps/dto/SimulatorFastEntryBean$GameInfo;->getExtBean()Lcom/join/mgps/dto/ExtBean;

    .line 148
    .line 149
    .line 150
    move-result-object v6

    .line 151
    invoke-virtual {v6}, Lcom/join/mgps/dto/ExtBean;->buildScene()Lcom/join/mgps/dto/ExtBean;

    .line 152
    .line 153
    .line 154
    move-result-object v6

    .line 155
    invoke-virtual {v6}, Lcom/join/mgps/dto/ExtBean;->toExt()Lcom/papa/sim/statistic/Ext;

    .line 156
    .line 157
    .line 158
    move-result-object v6

    .line 159
    invoke-virtual {v4, v5, v6}, Lcom/papa/sim/statistic/t;->R1(Lcom/papa/sim/statistic/Event;Lcom/papa/sim/statistic/Ext;)V

    .line 160
    .line 161
    .line 162
    invoke-virtual {v3}, Lcom/join/mgps/dto/SimulatorFastEntryBean$GameInfo;->getExtBean()Lcom/join/mgps/dto/ExtBean;

    .line 163
    .line 164
    .line 165
    move-result-object v3

    .line 166
    invoke-virtual {v3, v2}, Lcom/join/mgps/dto/ExtBean;->setHasExplore(Z)V

    .line 167
    .line 168
    .line 169
    :cond_4
    add-int/lit8 v1, v1, 0x1

    .line 170
    .line 171
    goto :goto_1

    .line 172
    :cond_5
    :goto_2
    return-void
.end method

.method public onScrolled(Landroidx/recyclerview/widget/RecyclerView;II)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "recyclerView",
            "dx",
            "dy"
        }
    .end annotation

    .line 1
    invoke-super {p0, p1, p2, p3}, Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;->onScrolled(Landroidx/recyclerview/widget/RecyclerView;II)V

    .line 2
    .line 3
    .line 4
    return-void
.end method
