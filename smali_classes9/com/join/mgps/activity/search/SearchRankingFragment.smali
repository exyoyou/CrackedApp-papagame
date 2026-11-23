.class public Lcom/join/mgps/activity/search/SearchRankingFragment;
.super Landroidx/fragment/app/Fragment;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/join/mgps/activity/search/SearchRankingFragment$SearchRankingAdapter;,
        Lcom/join/mgps/activity/search/SearchRankingFragment$SearchRankingHolder;
    }
.end annotation

.annotation build Lorg/androidannotations/annotations/EFragment;
    value = 0x7f0d0828
.end annotation


# instance fields
.field activity:Lcom/join/mgps/activity/SearchHintActivity;

.field adapter:Lcom/join/mgps/activity/search/SearchRankingFragment$SearchRankingAdapter;

.field hotAdInfo:Lcom/join/mgps/activity/search/SearchHotAdInfo;

.field hotAdPosition:I

.field listDatas:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field recyclerView:Landroidx/recyclerview/widget/RecyclerView;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field

.field type:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Landroidx/fragment/app/Fragment;-><init>()V

    .line 2
    .line 3
    .line 4
    const/16 v0, 0x3e7

    .line 5
    .line 6
    iput v0, p0, Lcom/join/mgps/activity/search/SearchRankingFragment;->hotAdPosition:I

    .line 7
    .line 8
    const/4 v0, 0x1

    .line 9
    iput v0, p0, Lcom/join/mgps/activity/search/SearchRankingFragment;->type:I

    .line 10
    .line 11
    return-void
.end method

.method public static getInstance(I)Lcom/join/mgps/activity/search/SearchRankingFragment;
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "type"
        }
    .end annotation

    .line 1
    new-instance v0, Lcom/join/mgps/activity/search/SearchRankingFragment_;

    .line 2
    .line 3
    invoke-direct {v0}, Lcom/join/mgps/activity/search/SearchRankingFragment_;-><init>()V

    .line 4
    .line 5
    .line 6
    new-instance v1, Landroid/os/Bundle;

    .line 7
    .line 8
    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 9
    .line 10
    .line 11
    const-string v2, "type"

    .line 12
    .line 13
    invoke-virtual {v1, v2, p0}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    .line 14
    .line 15
    .line 16
    invoke-virtual {v0, v1}, Landroidx/fragment/app/Fragment;->setArguments(Landroid/os/Bundle;)V

    .line 17
    .line 18
    .line 19
    return-object v0
.end method


# virtual methods
.method afterVidew()V
    .locals 4
    .annotation build Lorg/androidannotations/annotations/AfterViews;
    .end annotation

    .line 1
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getArguments()Landroid/os/Bundle;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    const-string v1, "type"

    .line 8
    .line 9
    invoke-virtual {v0, v1}, Landroid/os/BaseBundle;->getInt(Ljava/lang/String;)I

    .line 10
    .line 11
    .line 12
    move-result v0

    .line 13
    iput v0, p0, Lcom/join/mgps/activity/search/SearchRankingFragment;->type:I

    .line 14
    .line 15
    :cond_0
    new-instance v0, Lcom/join/mgps/activity/search/SearchRankingFragment$SearchRankingAdapter;

    .line 16
    .line 17
    invoke-direct {v0, p0}, Lcom/join/mgps/activity/search/SearchRankingFragment$SearchRankingAdapter;-><init>(Lcom/join/mgps/activity/search/SearchRankingFragment;)V

    .line 18
    .line 19
    .line 20
    iput-object v0, p0, Lcom/join/mgps/activity/search/SearchRankingFragment;->adapter:Lcom/join/mgps/activity/search/SearchRankingFragment$SearchRankingAdapter;

    .line 21
    .line 22
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    .line 23
    .line 24
    .line 25
    move-result-object v0

    .line 26
    check-cast v0, Lcom/join/mgps/activity/SearchHintActivity;

    .line 27
    .line 28
    iput-object v0, p0, Lcom/join/mgps/activity/search/SearchRankingFragment;->activity:Lcom/join/mgps/activity/SearchHintActivity;

    .line 29
    .line 30
    iget-object v1, p0, Lcom/join/mgps/activity/search/SearchRankingFragment;->recyclerView:Landroidx/recyclerview/widget/RecyclerView;

    .line 31
    .line 32
    new-instance v2, Landroidx/recyclerview/widget/LinearLayoutManager;

    .line 33
    .line 34
    invoke-direct {v2, v0}, Landroidx/recyclerview/widget/LinearLayoutManager;-><init>(Landroid/content/Context;)V

    .line 35
    .line 36
    .line 37
    invoke-virtual {v1, v2}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    .line 38
    .line 39
    .line 40
    new-instance v0, Ljava/util/ArrayList;

    .line 41
    .line 42
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 43
    .line 44
    .line 45
    iput-object v0, p0, Lcom/join/mgps/activity/search/SearchRankingFragment;->listDatas:Ljava/util/List;

    .line 46
    .line 47
    iget-object v1, p0, Lcom/join/mgps/activity/search/SearchRankingFragment;->activity:Lcom/join/mgps/activity/SearchHintActivity;

    .line 48
    .line 49
    iget v2, p0, Lcom/join/mgps/activity/search/SearchRankingFragment;->type:I

    .line 50
    .line 51
    invoke-virtual {v1, v2}, Lcom/join/mgps/activity/SearchHintActivity;->getItemData(I)Ljava/util/List;

    .line 52
    .line 53
    .line 54
    move-result-object v1

    .line 55
    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 56
    .line 57
    .line 58
    iget-object v0, p0, Lcom/join/mgps/activity/search/SearchRankingFragment;->activity:Lcom/join/mgps/activity/SearchHintActivity;

    .line 59
    .line 60
    iget v1, p0, Lcom/join/mgps/activity/search/SearchRankingFragment;->type:I

    .line 61
    .line 62
    invoke-virtual {v0, v1}, Lcom/join/mgps/activity/SearchHintActivity;->getHotAdInfo(I)Lcom/join/mgps/activity/search/SearchHotAdInfo;

    .line 63
    .line 64
    .line 65
    move-result-object v0

    .line 66
    iput-object v0, p0, Lcom/join/mgps/activity/search/SearchRankingFragment;->hotAdInfo:Lcom/join/mgps/activity/search/SearchHotAdInfo;

    .line 67
    .line 68
    if-eqz v0, :cond_2

    .line 69
    .line 70
    invoke-virtual {v0}, Lcom/join/mgps/activity/search/SearchHotAdInfo;->getJump_ad_info()Lcom/join/mgps/dto/CommonGameInfoBean;

    .line 71
    .line 72
    .line 73
    move-result-object v0

    .line 74
    if-eqz v0, :cond_2

    .line 75
    .line 76
    iget-object v0, p0, Lcom/join/mgps/activity/search/SearchRankingFragment;->hotAdInfo:Lcom/join/mgps/activity/search/SearchHotAdInfo;

    .line 77
    .line 78
    invoke-virtual {v0}, Lcom/join/mgps/activity/search/SearchHotAdInfo;->getPosition()I

    .line 79
    .line 80
    .line 81
    move-result v0

    .line 82
    iput v0, p0, Lcom/join/mgps/activity/search/SearchRankingFragment;->hotAdPosition:I

    .line 83
    .line 84
    iget-object v1, p0, Lcom/join/mgps/activity/search/SearchRankingFragment;->listDatas:Ljava/util/List;

    .line 85
    .line 86
    invoke-interface {v1}, Ljava/util/List;->size()I

    .line 87
    .line 88
    .line 89
    move-result v1

    .line 90
    if-lt v0, v1, :cond_1

    .line 91
    .line 92
    iget-object v0, p0, Lcom/join/mgps/activity/search/SearchRankingFragment;->listDatas:Ljava/util/List;

    .line 93
    .line 94
    iget-object v1, p0, Lcom/join/mgps/activity/search/SearchRankingFragment;->hotAdInfo:Lcom/join/mgps/activity/search/SearchHotAdInfo;

    .line 95
    .line 96
    invoke-virtual {v1}, Lcom/join/mgps/activity/search/SearchHotAdInfo;->getJump_ad_info()Lcom/join/mgps/dto/CommonGameInfoBean;

    .line 97
    .line 98
    .line 99
    move-result-object v1

    .line 100
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 101
    .line 102
    .line 103
    goto :goto_0

    .line 104
    :cond_1
    iget-object v0, p0, Lcom/join/mgps/activity/search/SearchRankingFragment;->listDatas:Ljava/util/List;

    .line 105
    .line 106
    iget v1, p0, Lcom/join/mgps/activity/search/SearchRankingFragment;->hotAdPosition:I

    .line 107
    .line 108
    iget-object v2, p0, Lcom/join/mgps/activity/search/SearchRankingFragment;->hotAdInfo:Lcom/join/mgps/activity/search/SearchHotAdInfo;

    .line 109
    .line 110
    invoke-virtual {v2}, Lcom/join/mgps/activity/search/SearchHotAdInfo;->getJump_ad_info()Lcom/join/mgps/dto/CommonGameInfoBean;

    .line 111
    .line 112
    .line 113
    move-result-object v2

    .line 114
    invoke-interface {v0, v1, v2}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 115
    .line 116
    .line 117
    :goto_0
    new-instance v0, Lcom/papa/sim/statistic/Ext;

    .line 118
    .line 119
    invoke-direct {v0}, Lcom/papa/sim/statistic/Ext;-><init>()V

    .line 120
    .line 121
    .line 122
    iget-object v1, p0, Lcom/join/mgps/activity/search/SearchRankingFragment;->hotAdInfo:Lcom/join/mgps/activity/search/SearchHotAdInfo;

    .line 123
    .line 124
    invoke-virtual {v1}, Lcom/join/mgps/activity/search/SearchHotAdInfo;->getJump_ad_info()Lcom/join/mgps/dto/CommonGameInfoBean;

    .line 125
    .line 126
    .line 127
    move-result-object v1

    .line 128
    invoke-virtual {v1}, Lcom/join/mgps/dto/CommonGameInfoBean;->getTitle()Ljava/lang/String;

    .line 129
    .line 130
    .line 131
    move-result-object v1

    .line 132
    invoke-virtual {v0, v1}, Lcom/papa/sim/statistic/Ext;->setReMarks(Ljava/lang/String;)Lcom/papa/sim/statistic/Ext;

    .line 133
    .line 134
    .line 135
    new-instance v1, Lcom/papa/sim/statistic/Data;

    .line 136
    .line 137
    invoke-direct {v1}, Lcom/papa/sim/statistic/Data;-><init>()V

    .line 138
    .line 139
    .line 140
    iget-object v2, p0, Lcom/join/mgps/activity/search/SearchRankingFragment;->hotAdInfo:Lcom/join/mgps/activity/search/SearchHotAdInfo;

    .line 141
    .line 142
    invoke-virtual {v2}, Lcom/join/mgps/activity/search/SearchHotAdInfo;->getJump_ad_info()Lcom/join/mgps/dto/CommonGameInfoBean;

    .line 143
    .line 144
    .line 145
    move-result-object v2

    .line 146
    invoke-virtual {v2}, Lcom/join/mgps/dto/CommonGameInfoBean;->getIntentDataBean()Lcom/join/mgps/Util/IntentDateBean;

    .line 147
    .line 148
    .line 149
    move-result-object v2

    .line 150
    invoke-virtual {v2}, Lcom/join/mgps/Util/IntentDateBean;->getLink_type_val()Ljava/lang/String;

    .line 151
    .line 152
    .line 153
    move-result-object v2

    .line 154
    invoke-virtual {v1, v2}, Lcom/papa/sim/statistic/Data;->setWhere(Ljava/lang/String;)Lcom/papa/sim/statistic/Data;

    .line 155
    .line 156
    .line 157
    iget-object v2, p0, Lcom/join/mgps/activity/search/SearchRankingFragment;->activity:Lcom/join/mgps/activity/SearchHintActivity;

    .line 158
    .line 159
    invoke-static {v2}, Lcom/papa/sim/statistic/t;->l(Landroid/content/Context;)Lcom/papa/sim/statistic/t;

    .line 160
    .line 161
    .line 162
    move-result-object v2

    .line 163
    sget-object v3, Lcom/papa/sim/statistic/Event;->hotSearchWordExp:Lcom/papa/sim/statistic/Event;

    .line 164
    .line 165
    invoke-virtual {v2, v3, v0, v1}, Lcom/papa/sim/statistic/t;->W1(Lcom/papa/sim/statistic/Event;Lcom/papa/sim/statistic/Ext;Lcom/papa/sim/statistic/Data;)V

    .line 166
    .line 167
    .line 168
    :cond_2
    iget-object v0, p0, Lcom/join/mgps/activity/search/SearchRankingFragment;->recyclerView:Landroidx/recyclerview/widget/RecyclerView;

    .line 169
    .line 170
    iget-object v1, p0, Lcom/join/mgps/activity/search/SearchRankingFragment;->adapter:Lcom/join/mgps/activity/search/SearchRankingFragment$SearchRankingAdapter;

    .line 171
    .line 172
    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 173
    .line 174
    .line 175
    return-void
.end method
