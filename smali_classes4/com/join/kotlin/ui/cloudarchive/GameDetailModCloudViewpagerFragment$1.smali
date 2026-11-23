.class Lcom/join/kotlin/ui/cloudarchive/GameDetailModCloudViewpagerFragment$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/viewpager/widget/ViewPager$OnPageChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/join/kotlin/ui/cloudarchive/GameDetailModCloudViewpagerFragment;->initViewPager()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/join/kotlin/ui/cloudarchive/GameDetailModCloudViewpagerFragment;


# direct methods
.method constructor <init>(Lcom/join/kotlin/ui/cloudarchive/GameDetailModCloudViewpagerFragment;)V
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
    iput-object p1, p0, Lcom/join/kotlin/ui/cloudarchive/GameDetailModCloudViewpagerFragment$1;->this$0:Lcom/join/kotlin/ui/cloudarchive/GameDetailModCloudViewpagerFragment;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public onPageScrollStateChanged(I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "i"
        }
    .end annotation

    return-void
.end method

.method public onPageScrolled(IFI)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "i",
            "v",
            "i1"
        }
    .end annotation

    return-void
.end method

.method public onPageSelected(I)V
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "i"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/kotlin/ui/cloudarchive/GameDetailModCloudViewpagerFragment$1;->this$0:Lcom/join/kotlin/ui/cloudarchive/GameDetailModCloudViewpagerFragment;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/join/kotlin/ui/cloudarchive/GameDetailModCloudViewpagerFragment;->access$000(Lcom/join/kotlin/ui/cloudarchive/GameDetailModCloudViewpagerFragment;)Ljava/util/ArrayList;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 12
    .line 13
    .line 14
    move-result v1

    .line 15
    if-eqz v1, :cond_2

    .line 16
    .line 17
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 18
    .line 19
    .line 20
    move-result-object v1

    .line 21
    check-cast v1, Lcom/join/mgps/dto/ModGameArchiveTagBean;

    .line 22
    .line 23
    iget-object v2, p0, Lcom/join/kotlin/ui/cloudarchive/GameDetailModCloudViewpagerFragment$1;->this$0:Lcom/join/kotlin/ui/cloudarchive/GameDetailModCloudViewpagerFragment;

    .line 24
    .line 25
    invoke-static {v2}, Lcom/join/kotlin/ui/cloudarchive/GameDetailModCloudViewpagerFragment;->access$000(Lcom/join/kotlin/ui/cloudarchive/GameDetailModCloudViewpagerFragment;)Ljava/util/ArrayList;

    .line 26
    .line 27
    .line 28
    move-result-object v2

    .line 29
    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    .line 30
    .line 31
    .line 32
    move-result v2

    .line 33
    const/4 v3, 0x0

    .line 34
    if-ne v2, p1, :cond_0

    .line 35
    .line 36
    invoke-virtual {v1, v3}, Lcom/join/mgps/dto/ModGameArchiveTagBean;->setCount(I)V

    .line 37
    .line 38
    .line 39
    :cond_0
    iget-object v2, p0, Lcom/join/kotlin/ui/cloudarchive/GameDetailModCloudViewpagerFragment$1;->this$0:Lcom/join/kotlin/ui/cloudarchive/GameDetailModCloudViewpagerFragment;

    .line 40
    .line 41
    invoke-static {v2}, Lcom/join/kotlin/ui/cloudarchive/GameDetailModCloudViewpagerFragment;->access$000(Lcom/join/kotlin/ui/cloudarchive/GameDetailModCloudViewpagerFragment;)Ljava/util/ArrayList;

    .line 42
    .line 43
    .line 44
    move-result-object v2

    .line 45
    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    .line 46
    .line 47
    .line 48
    move-result v2

    .line 49
    if-ne v2, p1, :cond_1

    .line 50
    .line 51
    const/4 v3, 0x1

    .line 52
    :cond_1
    invoke-virtual {v1, v3}, Lcom/join/mgps/dto/ModGameArchiveTagBean;->setSelected(Z)V

    .line 53
    .line 54
    .line 55
    goto :goto_0

    .line 56
    :cond_2
    iget-object v0, p0, Lcom/join/kotlin/ui/cloudarchive/GameDetailModCloudViewpagerFragment$1;->this$0:Lcom/join/kotlin/ui/cloudarchive/GameDetailModCloudViewpagerFragment;

    .line 57
    .line 58
    invoke-static {v0}, Lcom/join/kotlin/ui/cloudarchive/GameDetailModCloudViewpagerFragment;->access$100(Lcom/join/kotlin/ui/cloudarchive/GameDetailModCloudViewpagerFragment;)Lcom/join/mgps/adapter/h;

    .line 59
    .line 60
    .line 61
    move-result-object v0

    .line 62
    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    .line 63
    .line 64
    .line 65
    iget-object v0, p0, Lcom/join/kotlin/ui/cloudarchive/GameDetailModCloudViewpagerFragment$1;->this$0:Lcom/join/kotlin/ui/cloudarchive/GameDetailModCloudViewpagerFragment;

    .line 66
    .line 67
    iget-object v0, v0, Lcom/join/kotlin/ui/cloudarchive/GameDetailModCloudViewpagerFragment;->subTabList:Landroidx/recyclerview/widget/RecyclerView;

    .line 68
    .line 69
    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView;->getLayoutManager()Landroidx/recyclerview/widget/RecyclerView$LayoutManager;

    .line 70
    .line 71
    .line 72
    move-result-object v0

    .line 73
    check-cast v0, Landroidx/recyclerview/widget/LinearLayoutManager;

    .line 74
    .line 75
    if-eqz v0, :cond_4

    .line 76
    .line 77
    invoke-virtual {v0}, Landroidx/recyclerview/widget/LinearLayoutManager;->findLastCompletelyVisibleItemPosition()I

    .line 78
    .line 79
    .line 80
    move-result v1

    .line 81
    if-lt v1, p1, :cond_3

    .line 82
    .line 83
    invoke-virtual {v0}, Landroidx/recyclerview/widget/LinearLayoutManager;->findFirstCompletelyVisibleItemPosition()I

    .line 84
    .line 85
    .line 86
    move-result v0

    .line 87
    if-le v0, p1, :cond_4

    .line 88
    .line 89
    :cond_3
    iget-object v0, p0, Lcom/join/kotlin/ui/cloudarchive/GameDetailModCloudViewpagerFragment$1;->this$0:Lcom/join/kotlin/ui/cloudarchive/GameDetailModCloudViewpagerFragment;

    .line 90
    .line 91
    iget-object v0, v0, Lcom/join/kotlin/ui/cloudarchive/GameDetailModCloudViewpagerFragment;->subTabList:Landroidx/recyclerview/widget/RecyclerView;

    .line 92
    .line 93
    invoke-virtual {v0, p1}, Landroidx/recyclerview/widget/RecyclerView;->smoothScrollToPosition(I)V

    .line 94
    .line 95
    .line 96
    :cond_4
    iget-object v0, p0, Lcom/join/kotlin/ui/cloudarchive/GameDetailModCloudViewpagerFragment$1;->this$0:Lcom/join/kotlin/ui/cloudarchive/GameDetailModCloudViewpagerFragment;

    .line 97
    .line 98
    invoke-static {v0}, Lcom/join/kotlin/ui/cloudarchive/GameDetailModCloudViewpagerFragment;->access$200(Lcom/join/kotlin/ui/cloudarchive/GameDetailModCloudViewpagerFragment;)I

    .line 99
    .line 100
    .line 101
    move-result v0

    .line 102
    if-eq v0, p1, :cond_5

    .line 103
    .line 104
    new-instance v0, Lcom/papa/sim/statistic/Ext;

    .line 105
    .line 106
    invoke-direct {v0}, Lcom/papa/sim/statistic/Ext;-><init>()V

    .line 107
    .line 108
    .line 109
    iget-object v1, p0, Lcom/join/kotlin/ui/cloudarchive/GameDetailModCloudViewpagerFragment$1;->this$0:Lcom/join/kotlin/ui/cloudarchive/GameDetailModCloudViewpagerFragment;

    .line 110
    .line 111
    invoke-static {v1}, Lcom/join/kotlin/ui/cloudarchive/GameDetailModCloudViewpagerFragment;->access$000(Lcom/join/kotlin/ui/cloudarchive/GameDetailModCloudViewpagerFragment;)Ljava/util/ArrayList;

    .line 112
    .line 113
    .line 114
    move-result-object v1

    .line 115
    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 116
    .line 117
    .line 118
    move-result-object v1

    .line 119
    check-cast v1, Lcom/join/mgps/dto/ModGameArchiveTagBean;

    .line 120
    .line 121
    invoke-virtual {v1}, Lcom/join/mgps/dto/ModGameArchiveTagBean;->getType()I

    .line 122
    .line 123
    .line 124
    move-result v1

    .line 125
    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 126
    .line 127
    .line 128
    move-result-object v1

    .line 129
    invoke-virtual {v0, v1}, Lcom/papa/sim/statistic/Ext;->setFrom(Ljava/lang/String;)Lcom/papa/sim/statistic/Ext;

    .line 130
    .line 131
    .line 132
    move-result-object v0

    .line 133
    iget-object v1, p0, Lcom/join/kotlin/ui/cloudarchive/GameDetailModCloudViewpagerFragment$1;->this$0:Lcom/join/kotlin/ui/cloudarchive/GameDetailModCloudViewpagerFragment;

    .line 134
    .line 135
    invoke-static {v1}, Lcom/join/kotlin/ui/cloudarchive/GameDetailModCloudViewpagerFragment;->access$300(Lcom/join/kotlin/ui/cloudarchive/GameDetailModCloudViewpagerFragment;)Ljava/lang/String;

    .line 136
    .line 137
    .line 138
    move-result-object v1

    .line 139
    invoke-virtual {v0, v1}, Lcom/papa/sim/statistic/Ext;->setGameId(Ljava/lang/String;)Lcom/papa/sim/statistic/Ext;

    .line 140
    .line 141
    .line 142
    move-result-object v0

    .line 143
    iget-object v1, p0, Lcom/join/kotlin/ui/cloudarchive/GameDetailModCloudViewpagerFragment$1;->this$0:Lcom/join/kotlin/ui/cloudarchive/GameDetailModCloudViewpagerFragment;

    .line 144
    .line 145
    invoke-static {v1}, Lcom/join/kotlin/ui/cloudarchive/GameDetailModCloudViewpagerFragment;->access$000(Lcom/join/kotlin/ui/cloudarchive/GameDetailModCloudViewpagerFragment;)Ljava/util/ArrayList;

    .line 146
    .line 147
    .line 148
    move-result-object v1

    .line 149
    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 150
    .line 151
    .line 152
    move-result-object p1

    .line 153
    check-cast p1, Lcom/join/mgps/dto/ModGameArchiveTagBean;

    .line 154
    .line 155
    invoke-virtual {p1}, Lcom/join/mgps/dto/ModGameArchiveTagBean;->getTagId()Ljava/lang/String;

    .line 156
    .line 157
    .line 158
    move-result-object p1

    .line 159
    invoke-virtual {v0, p1}, Lcom/papa/sim/statistic/Ext;->setPosition(Ljava/lang/String;)Lcom/papa/sim/statistic/Ext;

    .line 160
    .line 161
    .line 162
    move-result-object p1

    .line 163
    iget-object v0, p0, Lcom/join/kotlin/ui/cloudarchive/GameDetailModCloudViewpagerFragment$1;->this$0:Lcom/join/kotlin/ui/cloudarchive/GameDetailModCloudViewpagerFragment;

    .line 164
    .line 165
    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    .line 166
    .line 167
    .line 168
    move-result-object v0

    .line 169
    invoke-static {v0}, Lcom/papa/sim/statistic/t;->l(Landroid/content/Context;)Lcom/papa/sim/statistic/t;

    .line 170
    .line 171
    .line 172
    move-result-object v0

    .line 173
    sget-object v1, Lcom/papa/sim/statistic/Event;->clickCloudLabelButton:Lcom/papa/sim/statistic/Event;

    .line 174
    .line 175
    invoke-virtual {v0, v1, p1}, Lcom/papa/sim/statistic/t;->R1(Lcom/papa/sim/statistic/Event;Lcom/papa/sim/statistic/Ext;)V

    .line 176
    .line 177
    .line 178
    :cond_5
    return-void
.end method
