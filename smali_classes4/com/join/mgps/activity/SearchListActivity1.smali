.class public Lcom/join/mgps/activity/SearchListActivity1;
.super Lcom/BaseAppCompatActivity;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/join/mgps/activity/SearchListActivity1$k;
    }
.end annotation

.annotation build Lorg/androidannotations/annotations/EActivity;
    value = 0x7f0d0825
.end annotation


# instance fields
.field private SCROLLING:Z

.field adapter:Lcom/join/mgps/customview/e0;

.field autoListView:Landroid/widget/ListView;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field

.field back:Landroid/widget/ImageView;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field

.field classifies:Lcom/zhy/view/flowlayout/TagFlowLayout3;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field

.field classifiesData:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field clear:Landroid/view/View;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field

.field private context:Landroid/content/Context;

.field currentTab:I
    .annotation build Lorg/androidannotations/annotations/Extra;
    .end annotation
.end field

.field private firstVisiblePosition:I

.field private fragmentsList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroidx/fragment/app/Fragment;",
            ">;"
        }
    .end annotation
.end field

.field from:I
    .annotation build Lorg/androidannotations/annotations/Extra;
    .end annotation
.end field

.field gameDownLists:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/join/mgps/dto/CommonGameInfoBean;",
            ">;"
        }
    .end annotation
.end field

.field gameTagBeanList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/join/mgps/dto/ClassifyGameTagBean;",
            ">;"
        }
    .end annotation
.end field

.field game_id:Ljava/lang/String;
    .annotation build Lorg/androidannotations/annotations/Extra;
    .end annotation
.end field

.field input:Landroid/widget/EditText;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field

.field isNeedRecommend:Z
    .annotation build Lorg/androidannotations/annotations/Extra;
    .end annotation
.end field

.field iv_filter:Landroid/widget/ImageView;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field

.field keyword:Ljava/lang/String;
    .annotation build Lorg/androidannotations/annotations/Extra;
    .end annotation
.end field

.field lang_id:I

.field languages:Lcom/zhy/view/flowlayout/TagFlowLayout3;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field

.field private lastVisibleIndex:I

.field ll_filter:Landroid/widget/LinearLayout;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field

.field private pc:I

.field plugin_num:I

.field private pn:I

.field rpcClient:Lcom/join/mgps/rpc/e;

.field rpcGameClient:Lcom/join/mgps/rpc/k;

.field private searchAutoBean:Lcom/join/mgps/dto/ResponseModel;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/join/mgps/dto/ResponseModel<",
            "Lcom/join/mgps/activity/search/SearchAutoDataV1;",
            ">;"
        }
    .end annotation
.end field

.field private searchAutoDataBeanList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field searchSimpleAdapter:Lcom/join/mgps/activity/SearchListActivity1$k;

.field showAuto:Z

.field private special_zone_info:Lcom/join/mgps/dto/SearchGameListSpecialZoneBean;

.field private str:[Ljava/lang/String;

.field private stringList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field tabLayout:Lcom/google/android/material/tabs/TabLayout;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field

.field tagBackground:Landroid/view/View;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field

.field viewPager:Landroidx/viewpager/widget/ViewPager;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 5

    .line 1
    invoke-direct {p0}, Lcom/BaseAppCompatActivity;-><init>()V

    .line 2
    .line 3
    .line 4
    const-string v0, ""

    .line 5
    .line 6
    iput-object v0, p0, Lcom/join/mgps/activity/SearchListActivity1;->keyword:Ljava/lang/String;

    .line 7
    .line 8
    new-instance v1, Ljava/util/ArrayList;

    .line 9
    .line 10
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 11
    .line 12
    .line 13
    iput-object v1, p0, Lcom/join/mgps/activity/SearchListActivity1;->gameTagBeanList:Ljava/util/List;

    .line 14
    .line 15
    new-instance v1, Ljava/util/ArrayList;

    .line 16
    .line 17
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 18
    .line 19
    .line 20
    iput-object v1, p0, Lcom/join/mgps/activity/SearchListActivity1;->classifiesData:Ljava/util/List;

    .line 21
    .line 22
    new-instance v1, Ljava/util/ArrayList;

    .line 23
    .line 24
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 25
    .line 26
    .line 27
    iput-object v1, p0, Lcom/join/mgps/activity/SearchListActivity1;->fragmentsList:Ljava/util/ArrayList;

    .line 28
    .line 29
    new-instance v1, Ljava/util/ArrayList;

    .line 30
    .line 31
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 32
    .line 33
    .line 34
    iput-object v1, p0, Lcom/join/mgps/activity/SearchListActivity1;->stringList:Ljava/util/List;

    .line 35
    .line 36
    const-string v1, "\u6e38\u620f\u5355"

    .line 37
    .line 38
    const-string v2, "\u5e16\u5b50"

    .line 39
    .line 40
    const-string v3, "\u5168\u90e8"

    .line 41
    .line 42
    const-string v4, "\u6e38\u620f"

    .line 43
    .line 44
    filled-new-array {v3, v4, v1, v2, v0}, [Ljava/lang/String;

    .line 45
    .line 46
    .line 47
    move-result-object v0

    .line 48
    iput-object v0, p0, Lcom/join/mgps/activity/SearchListActivity1;->str:[Ljava/lang/String;

    .line 49
    .line 50
    const/4 v0, 0x1

    .line 51
    iput v0, p0, Lcom/join/mgps/activity/SearchListActivity1;->pn:I

    .line 52
    .line 53
    const/16 v1, 0x32

    .line 54
    .line 55
    iput v1, p0, Lcom/join/mgps/activity/SearchListActivity1;->pc:I

    .line 56
    .line 57
    iput-boolean v0, p0, Lcom/join/mgps/activity/SearchListActivity1;->showAuto:Z

    .line 58
    .line 59
    const/4 v0, 0x0

    .line 60
    iput v0, p0, Lcom/join/mgps/activity/SearchListActivity1;->lastVisibleIndex:I

    .line 61
    .line 62
    iput v0, p0, Lcom/join/mgps/activity/SearchListActivity1;->firstVisiblePosition:I

    .line 63
    .line 64
    iput-boolean v0, p0, Lcom/join/mgps/activity/SearchListActivity1;->SCROLLING:Z

    .line 65
    .line 66
    new-instance v0, Ljava/util/ArrayList;

    .line 67
    .line 68
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 69
    .line 70
    .line 71
    iput-object v0, p0, Lcom/join/mgps/activity/SearchListActivity1;->gameDownLists:Ljava/util/List;

    .line 72
    .line 73
    new-instance v0, Ljava/util/ArrayList;

    .line 74
    .line 75
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 76
    .line 77
    .line 78
    iput-object v0, p0, Lcom/join/mgps/activity/SearchListActivity1;->searchAutoDataBeanList:Ljava/util/List;

    .line 79
    .line 80
    return-void
.end method

.method static synthetic access$000(Lcom/join/mgps/activity/SearchListActivity1;)Ljava/util/List;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/join/mgps/activity/SearchListActivity1;->searchAutoDataBeanList:Ljava/util/List;

    .line 2
    .line 3
    return-object p0
.end method

.method static synthetic access$100(Lcom/join/mgps/activity/SearchListActivity1;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/join/mgps/activity/SearchListActivity1;->saveRecordBean(Ljava/lang/String;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method static synthetic access$200(Lcom/join/mgps/activity/SearchListActivity1;)Landroid/content/Context;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/join/mgps/activity/SearchListActivity1;->context:Landroid/content/Context;

    .line 2
    .line 3
    return-object p0
.end method

.method static synthetic access$300(Lcom/join/mgps/activity/SearchListActivity1;Lcom/papa/sim/statistic/Event;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/join/mgps/activity/SearchListActivity1;->sendAutoListPoint(Lcom/papa/sim/statistic/Event;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method static synthetic access$400(Lcom/join/mgps/activity/SearchListActivity1;)Ljava/util/List;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/join/mgps/activity/SearchListActivity1;->stringList:Ljava/util/List;

    .line 2
    .line 3
    return-object p0
.end method

.method static synthetic access$500(Lcom/join/mgps/activity/SearchListActivity1;Lcom/google/android/material/tabs/TabLayout$g;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/join/mgps/activity/SearchListActivity1;->setStatus(Lcom/google/android/material/tabs/TabLayout$g;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method static synthetic access$600(Lcom/join/mgps/activity/SearchListActivity1;Ljava/util/List;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/join/mgps/activity/SearchListActivity1;->updateDowStateList(Ljava/util/List;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method private getView()V
    .locals 6

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/SearchListActivity1;->tabLayout:Lcom/google/android/material/tabs/TabLayout;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/google/android/material/tabs/TabLayout;->getTabCount()I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-nez v0, :cond_0

    .line 8
    .line 9
    return-void

    .line 10
    :cond_0
    const/4 v0, 0x0

    .line 11
    const/4 v1, 0x0

    .line 12
    :goto_0
    iget-object v2, p0, Lcom/join/mgps/activity/SearchListActivity1;->tabLayout:Lcom/google/android/material/tabs/TabLayout;

    .line 13
    .line 14
    invoke-virtual {v2}, Lcom/google/android/material/tabs/TabLayout;->getTabCount()I

    .line 15
    .line 16
    .line 17
    move-result v2

    .line 18
    const v3, 0x7f0a183f

    .line 19
    .line 20
    .line 21
    if-ge v1, v2, :cond_2

    .line 22
    .line 23
    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    .line 24
    .line 25
    .line 26
    move-result-object v2

    .line 27
    const v4, 0x7f0d082c

    .line 28
    .line 29
    .line 30
    const/4 v5, 0x0

    .line 31
    invoke-virtual {v2, v4, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 32
    .line 33
    .line 34
    move-result-object v2

    .line 35
    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 36
    .line 37
    .line 38
    move-result-object v3

    .line 39
    check-cast v3, Landroid/widget/TextView;

    .line 40
    .line 41
    iget-object v4, p0, Lcom/join/mgps/activity/SearchListActivity1;->stringList:Ljava/util/List;

    .line 42
    .line 43
    invoke-interface {v4, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 44
    .line 45
    .line 46
    move-result-object v4

    .line 47
    check-cast v4, Ljava/lang/CharSequence;

    .line 48
    .line 49
    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 50
    .line 51
    .line 52
    const v3, 0x7f0a134e

    .line 53
    .line 54
    .line 55
    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 56
    .line 57
    .line 58
    move-result-object v3

    .line 59
    if-eqz v1, :cond_1

    .line 60
    .line 61
    iget-object v4, p0, Lcom/join/mgps/activity/SearchListActivity1;->stringList:Ljava/util/List;

    .line 62
    .line 63
    invoke-interface {v4, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 64
    .line 65
    .line 66
    move-result-object v4

    .line 67
    const-string v5, "\u6e38\u620f"

    .line 68
    .line 69
    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 70
    .line 71
    .line 72
    move-result v4

    .line 73
    if-eqz v4, :cond_1

    .line 74
    .line 75
    const/4 v4, 0x0

    .line 76
    goto :goto_1

    .line 77
    :cond_1
    const/4 v4, 0x4

    .line 78
    :goto_1
    invoke-virtual {v3, v4}, Landroid/view/View;->setVisibility(I)V

    .line 79
    .line 80
    .line 81
    iget-object v3, p0, Lcom/join/mgps/activity/SearchListActivity1;->tabLayout:Lcom/google/android/material/tabs/TabLayout;

    .line 82
    .line 83
    invoke-virtual {v3, v1}, Lcom/google/android/material/tabs/TabLayout;->D(I)Lcom/google/android/material/tabs/TabLayout$g;

    .line 84
    .line 85
    .line 86
    move-result-object v3

    .line 87
    invoke-virtual {v3, v2}, Lcom/google/android/material/tabs/TabLayout$g;->v(Landroid/view/View;)Lcom/google/android/material/tabs/TabLayout$g;

    .line 88
    .line 89
    .line 90
    add-int/lit8 v1, v1, 0x1

    .line 91
    .line 92
    goto :goto_0

    .line 93
    :cond_2
    iget-object v1, p0, Lcom/join/mgps/activity/SearchListActivity1;->tabLayout:Lcom/google/android/material/tabs/TabLayout;

    .line 94
    .line 95
    invoke-virtual {v1, v0}, Lcom/google/android/material/tabs/TabLayout;->D(I)Lcom/google/android/material/tabs/TabLayout$g;

    .line 96
    .line 97
    .line 98
    move-result-object v1

    .line 99
    invoke-virtual {v1}, Lcom/google/android/material/tabs/TabLayout$g;->g()Landroid/view/View;

    .line 100
    .line 101
    .line 102
    move-result-object v1

    .line 103
    invoke-virtual {v1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 104
    .line 105
    .line 106
    move-result-object v1

    .line 107
    check-cast v1, Landroid/widget/TextView;

    .line 108
    .line 109
    const/high16 v2, -0x1000000

    .line 110
    .line 111
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 112
    .line 113
    .line 114
    invoke-virtual {p0}, Landroidx/appcompat/app/AppCompatActivity;->getResources()Landroid/content/res/Resources;

    .line 115
    .line 116
    .line 117
    move-result-object v2

    .line 118
    const v3, 0x7f0713c2

    .line 119
    .line 120
    .line 121
    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    .line 122
    .line 123
    .line 124
    move-result v2

    .line 125
    int-to-float v2, v2

    .line 126
    invoke-virtual {v1, v0, v2}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 127
    .line 128
    .line 129
    invoke-virtual {v1}, Landroid/widget/TextView;->getTypeface()Landroid/graphics/Typeface;

    .line 130
    .line 131
    .line 132
    move-result-object v2

    .line 133
    const/4 v3, 0x1

    .line 134
    invoke-virtual {v1, v2, v3}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;I)V

    .line 135
    .line 136
    .line 137
    iget-object v1, p0, Lcom/join/mgps/activity/SearchListActivity1;->tabLayout:Lcom/google/android/material/tabs/TabLayout;

    .line 138
    .line 139
    invoke-virtual {v1, v0}, Lcom/google/android/material/tabs/TabLayout;->D(I)Lcom/google/android/material/tabs/TabLayout$g;

    .line 140
    .line 141
    .line 142
    move-result-object v1

    .line 143
    invoke-virtual {v1}, Lcom/google/android/material/tabs/TabLayout$g;->g()Landroid/view/View;

    .line 144
    .line 145
    .line 146
    move-result-object v1

    .line 147
    const v2, 0x7f0a09af

    .line 148
    .line 149
    .line 150
    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 151
    .line 152
    .line 153
    move-result-object v1

    .line 154
    invoke-virtual {v1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 155
    .line 156
    .line 157
    return-void
.end method

.method public static synthetic j(Landroid/view/View;ILandroid/view/ViewGroup;)V
    .locals 0

    .line 1
    invoke-static {p0, p1, p2}, Lcom/join/mgps/activity/SearchListActivity1;->lambda$initTags$0(Landroid/view/View;ILandroid/view/ViewGroup;)V

    return-void
.end method

.method public static synthetic k(Landroid/view/View;ILandroid/view/ViewGroup;)V
    .locals 0

    .line 1
    invoke-static {p0, p1, p2}, Lcom/join/mgps/activity/SearchListActivity1;->lambda$initTags$1(Landroid/view/View;ILandroid/view/ViewGroup;)V

    return-void
.end method

.method private static synthetic lambda$initTags$0(Landroid/view/View;ILandroid/view/ViewGroup;)V
    .locals 0

    return-void
.end method

.method private static synthetic lambda$initTags$1(Landroid/view/View;ILandroid/view/ViewGroup;)V
    .locals 0

    return-void
.end method

.method private saveRecordBean(Ljava/lang/String;)V
    .locals 8
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "name"
        }
    .end annotation

    .line 1
    invoke-static {}, Lt6/h0;->n()Lt6/h0;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0}, Lq5/b;->d()Ljava/util/List;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    if-nez v0, :cond_0

    .line 10
    .line 11
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 12
    .line 13
    .line 14
    move-result v1

    .line 15
    if-nez v1, :cond_0

    .line 16
    .line 17
    new-instance v0, Lcom/join/mgps/db/tables/SearchRecordTable;

    .line 18
    .line 19
    invoke-direct {v0}, Lcom/join/mgps/db/tables/SearchRecordTable;-><init>()V

    .line 20
    .line 21
    .line 22
    invoke-virtual {v0, p1}, Lcom/join/mgps/db/tables/SearchRecordTable;->setName(Ljava/lang/String;)V

    .line 23
    .line 24
    .line 25
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 26
    .line 27
    .line 28
    move-result-wide v1

    .line 29
    invoke-virtual {v0, v1, v2}, Lcom/join/mgps/db/tables/SearchRecordTable;->setCreate_time(J)V

    .line 30
    .line 31
    .line 32
    invoke-static {}, Lt6/h0;->n()Lt6/h0;

    .line 33
    .line 34
    .line 35
    move-result-object p1

    .line 36
    invoke-virtual {p1, v0}, Lq5/b;->m(Ljava/lang/Object;)Ljava/lang/Object;

    .line 37
    .line 38
    .line 39
    goto :goto_1

    .line 40
    :cond_0
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 41
    .line 42
    .line 43
    move-result v1

    .line 44
    const/16 v2, 0x64

    .line 45
    .line 46
    if-le v1, v2, :cond_1

    .line 47
    .line 48
    invoke-static {}, Lt6/h0;->n()Lt6/h0;

    .line 49
    .line 50
    .line 51
    move-result-object p1

    .line 52
    invoke-static {}, Lt6/h0;->n()Lt6/h0;

    .line 53
    .line 54
    .line 55
    move-result-object v1

    .line 56
    const-wide/16 v2, 0xa

    .line 57
    .line 58
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 59
    .line 60
    .line 61
    move-result v0

    .line 62
    int-to-long v4, v0

    .line 63
    const-string v6, "create_time"

    .line 64
    .line 65
    const/4 v7, 0x0

    .line 66
    invoke-virtual/range {v1 .. v7}, Lq5/b;->i(JJLjava/lang/String;Z)Ljava/util/List;

    .line 67
    .line 68
    .line 69
    move-result-object v0

    .line 70
    invoke-virtual {p1, v0}, Lq5/b;->delete(Ljava/util/Collection;)I

    .line 71
    .line 72
    .line 73
    goto :goto_1

    .line 74
    :cond_1
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 75
    .line 76
    .line 77
    move-result-object v0

    .line 78
    :cond_2
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 79
    .line 80
    .line 81
    move-result v1

    .line 82
    if-eqz v1, :cond_3

    .line 83
    .line 84
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 85
    .line 86
    .line 87
    move-result-object v1

    .line 88
    check-cast v1, Lcom/join/mgps/db/tables/SearchRecordTable;

    .line 89
    .line 90
    invoke-virtual {v1}, Lcom/join/mgps/db/tables/SearchRecordTable;->getName()Ljava/lang/String;

    .line 91
    .line 92
    .line 93
    move-result-object v2

    .line 94
    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 95
    .line 96
    .line 97
    move-result v2

    .line 98
    if-eqz v2, :cond_2

    .line 99
    .line 100
    invoke-static {}, Lt6/h0;->n()Lt6/h0;

    .line 101
    .line 102
    .line 103
    move-result-object v2

    .line 104
    invoke-virtual {v2, v1}, Lq5/b;->delete(Ljava/lang/Object;)I

    .line 105
    .line 106
    .line 107
    goto :goto_0

    .line 108
    :cond_3
    new-instance v0, Lcom/join/mgps/db/tables/SearchRecordTable;

    .line 109
    .line 110
    invoke-direct {v0}, Lcom/join/mgps/db/tables/SearchRecordTable;-><init>()V

    .line 111
    .line 112
    .line 113
    invoke-virtual {v0, p1}, Lcom/join/mgps/db/tables/SearchRecordTable;->setName(Ljava/lang/String;)V

    .line 114
    .line 115
    .line 116
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 117
    .line 118
    .line 119
    move-result-wide v1

    .line 120
    invoke-virtual {v0, v1, v2}, Lcom/join/mgps/db/tables/SearchRecordTable;->setCreate_time(J)V

    .line 121
    .line 122
    .line 123
    invoke-static {}, Lt6/h0;->n()Lt6/h0;

    .line 124
    .line 125
    .line 126
    move-result-object p1

    .line 127
    invoke-virtual {p1, v0}, Lq5/b;->m(Ljava/lang/Object;)Ljava/lang/Object;

    .line 128
    .line 129
    .line 130
    :goto_1
    return-void
.end method

.method private sendAutoListPoint(Lcom/papa/sim/statistic/Event;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "event",
            "isJoin",
            "where",
            "remarks"
        }
    .end annotation

    .line 1
    new-instance v0, Lcom/papa/sim/statistic/Ext;

    .line 2
    .line 3
    invoke-direct {v0}, Lcom/papa/sim/statistic/Ext;-><init>()V

    .line 4
    .line 5
    .line 6
    invoke-virtual {v0, p2}, Lcom/papa/sim/statistic/Ext;->setIsJoin(Ljava/lang/String;)Lcom/papa/sim/statistic/Ext;

    .line 7
    .line 8
    .line 9
    invoke-virtual {v0, p4}, Lcom/papa/sim/statistic/Ext;->setReMarks(Ljava/lang/String;)Lcom/papa/sim/statistic/Ext;

    .line 10
    .line 11
    .line 12
    new-instance p2, Lcom/papa/sim/statistic/Data;

    .line 13
    .line 14
    invoke-direct {p2}, Lcom/papa/sim/statistic/Data;-><init>()V

    .line 15
    .line 16
    .line 17
    invoke-virtual {p2, p3}, Lcom/papa/sim/statistic/Data;->setWhere(Ljava/lang/String;)Lcom/papa/sim/statistic/Data;

    .line 18
    .line 19
    .line 20
    iget-object p3, p0, Lcom/join/mgps/activity/SearchListActivity1;->context:Landroid/content/Context;

    .line 21
    .line 22
    invoke-static {p3}, Lcom/papa/sim/statistic/t;->l(Landroid/content/Context;)Lcom/papa/sim/statistic/t;

    .line 23
    .line 24
    .line 25
    move-result-object p3

    .line 26
    invoke-virtual {p3, p1, v0, p2}, Lcom/papa/sim/statistic/t;->W1(Lcom/papa/sim/statistic/Event;Lcom/papa/sim/statistic/Ext;Lcom/papa/sim/statistic/Data;)V

    .line 27
    .line 28
    .line 29
    return-void
.end method

.method private setStatus(Lcom/google/android/material/tabs/TabLayout$g;)V
    .locals 9
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "tab"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/SearchListActivity1;->tabLayout:Lcom/google/android/material/tabs/TabLayout;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/google/android/material/tabs/TabLayout;->getTabCount()I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-nez v0, :cond_0

    .line 8
    .line 9
    return-void

    .line 10
    :cond_0
    const/4 v0, 0x0

    .line 11
    const/4 v1, 0x0

    .line 12
    :goto_0
    iget-object v2, p0, Lcom/join/mgps/activity/SearchListActivity1;->tabLayout:Lcom/google/android/material/tabs/TabLayout;

    .line 13
    .line 14
    invoke-virtual {v2}, Lcom/google/android/material/tabs/TabLayout;->getTabCount()I

    .line 15
    .line 16
    .line 17
    move-result v2

    .line 18
    if-ge v1, v2, :cond_3

    .line 19
    .line 20
    iget-object v2, p0, Lcom/join/mgps/activity/SearchListActivity1;->tabLayout:Lcom/google/android/material/tabs/TabLayout;

    .line 21
    .line 22
    invoke-virtual {v2, v1}, Lcom/google/android/material/tabs/TabLayout;->D(I)Lcom/google/android/material/tabs/TabLayout$g;

    .line 23
    .line 24
    .line 25
    move-result-object v2

    .line 26
    invoke-virtual {v2}, Lcom/google/android/material/tabs/TabLayout$g;->g()Landroid/view/View;

    .line 27
    .line 28
    .line 29
    move-result-object v2

    .line 30
    if-nez v2, :cond_1

    .line 31
    .line 32
    goto :goto_1

    .line 33
    :cond_1
    invoke-virtual {p1}, Lcom/google/android/material/tabs/TabLayout$g;->k()I

    .line 34
    .line 35
    .line 36
    move-result v3

    .line 37
    const/4 v4, 0x0

    .line 38
    const/high16 v5, -0x1000000

    .line 39
    .line 40
    const v6, 0x7f0a183f

    .line 41
    .line 42
    .line 43
    const/4 v7, 0x4

    .line 44
    const v8, 0x7f0a09af

    .line 45
    .line 46
    .line 47
    if-ne v1, v3, :cond_2

    .line 48
    .line 49
    const v3, 0x7f0a134e

    .line 50
    .line 51
    .line 52
    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 53
    .line 54
    .line 55
    move-result-object v3

    .line 56
    invoke-virtual {v3, v7}, Landroid/view/View;->setVisibility(I)V

    .line 57
    .line 58
    .line 59
    invoke-virtual {v2, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 60
    .line 61
    .line 62
    move-result-object v3

    .line 63
    invoke-virtual {v3, v0}, Landroid/view/View;->setVisibility(I)V

    .line 64
    .line 65
    .line 66
    invoke-virtual {v2, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 67
    .line 68
    .line 69
    move-result-object v2

    .line 70
    check-cast v2, Landroid/widget/TextView;

    .line 71
    .line 72
    invoke-virtual {v2, v5}, Landroid/widget/TextView;->setTextColor(I)V

    .line 73
    .line 74
    .line 75
    const/4 v3, 0x1

    .line 76
    invoke-virtual {v2, v4, v3}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;I)V

    .line 77
    .line 78
    .line 79
    invoke-virtual {p0}, Landroidx/appcompat/app/AppCompatActivity;->getResources()Landroid/content/res/Resources;

    .line 80
    .line 81
    .line 82
    move-result-object v3

    .line 83
    const v4, 0x7f0713c2

    .line 84
    .line 85
    .line 86
    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    .line 87
    .line 88
    .line 89
    move-result v3

    .line 90
    int-to-float v3, v3

    .line 91
    invoke-virtual {v2, v0, v3}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 92
    .line 93
    .line 94
    goto :goto_1

    .line 95
    :cond_2
    invoke-virtual {v2, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 96
    .line 97
    .line 98
    move-result-object v3

    .line 99
    invoke-virtual {v3, v7}, Landroid/view/View;->setVisibility(I)V

    .line 100
    .line 101
    .line 102
    invoke-virtual {v2, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 103
    .line 104
    .line 105
    move-result-object v2

    .line 106
    check-cast v2, Landroid/widget/TextView;

    .line 107
    .line 108
    invoke-virtual {v2, v5}, Landroid/widget/TextView;->setTextColor(I)V

    .line 109
    .line 110
    .line 111
    invoke-virtual {v2, v4, v0}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;I)V

    .line 112
    .line 113
    .line 114
    invoke-virtual {p0}, Landroidx/appcompat/app/AppCompatActivity;->getResources()Landroid/content/res/Resources;

    .line 115
    .line 116
    .line 117
    move-result-object v3

    .line 118
    const v4, 0x7f071395

    .line 119
    .line 120
    .line 121
    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    .line 122
    .line 123
    .line 124
    move-result v3

    .line 125
    int-to-float v3, v3

    .line 126
    invoke-virtual {v2, v0, v3}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 127
    .line 128
    .line 129
    :goto_1
    add-int/lit8 v1, v1, 0x1

    .line 130
    .line 131
    goto :goto_0

    .line 132
    :cond_3
    return-void
.end method

.method private updateDowStateList(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "SearchDataBeanList"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/join/mgps/dto/CommonGameInfoBean;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    if-eqz v0, :cond_0

    .line 10
    .line 11
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    check-cast v0, Lcom/join/mgps/dto/CommonGameInfoBean;

    .line 16
    .line 17
    sget-object v1, Lcom/join/kotlin/utils/DlTaskManager;->INSTANCE:Lcom/join/kotlin/utils/DlTaskManager;

    .line 18
    .line 19
    invoke-virtual {v1, v0}, Lcom/join/kotlin/utils/DlTaskManager;->updateDownloadTask(Lcom/join/kotlin/base/impl/Downloadable;)V

    .line 20
    .line 21
    .line 22
    goto :goto_0

    .line 23
    :cond_0
    return-void
.end method

.method private updateProgressPartly()V
    .locals 14

    .line 1
    const/4 v0, 0x0

    .line 2
    :goto_0
    const/4 v1, 0x2

    .line 3
    if-gt v0, v1, :cond_7

    .line 4
    .line 5
    iget-object v2, p0, Lcom/join/mgps/activity/SearchListActivity1;->autoListView:Landroid/widget/ListView;

    .line 6
    .line 7
    invoke-virtual {v2, v0}, Landroid/widget/AdapterView;->getItemAtPosition(I)Ljava/lang/Object;

    .line 8
    .line 9
    .line 10
    move-result-object v2

    .line 11
    instance-of v2, v2, Lcom/join/mgps/dto/SearchAutoDataBean;

    .line 12
    .line 13
    if-eqz v2, :cond_0

    .line 14
    .line 15
    return-void

    .line 16
    :cond_0
    iget-object v2, p0, Lcom/join/mgps/activity/SearchListActivity1;->autoListView:Landroid/widget/ListView;

    .line 17
    .line 18
    invoke-virtual {v2, v0}, Landroid/widget/AdapterView;->getItemAtPosition(I)Ljava/lang/Object;

    .line 19
    .line 20
    .line 21
    move-result-object v2

    .line 22
    check-cast v2, Lcom/join/mgps/dto/CommonGameInfoBean;

    .line 23
    .line 24
    if-nez v2, :cond_1

    .line 25
    .line 26
    goto/16 :goto_3

    .line 27
    .line 28
    :cond_1
    invoke-virtual {v2}, Lcom/join/kotlin/base/impl/BaseDownloadable;->getDownloadTask()Lcom/github/snowdream/android/app/downloader/DownloadTask;

    .line 29
    .line 30
    .line 31
    move-result-object v2

    .line 32
    if-eqz v2, :cond_6

    .line 33
    .line 34
    invoke-virtual {v2}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getStatus()I

    .line 35
    .line 36
    .line 37
    move-result v3

    .line 38
    const/16 v4, 0xc

    .line 39
    .line 40
    if-eq v3, v1, :cond_2

    .line 41
    .line 42
    invoke-virtual {v2}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getStatus()I

    .line 43
    .line 44
    .line 45
    move-result v3

    .line 46
    if-ne v3, v4, :cond_6

    .line 47
    .line 48
    :cond_2
    iget-object v3, p0, Lcom/join/mgps/activity/SearchListActivity1;->autoListView:Landroid/widget/ListView;

    .line 49
    .line 50
    iget v5, p0, Lcom/join/mgps/activity/SearchListActivity1;->firstVisiblePosition:I

    .line 51
    .line 52
    sub-int v5, v0, v5

    .line 53
    .line 54
    invoke-virtual {v3, v5}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    .line 55
    .line 56
    .line 57
    move-result-object v3

    .line 58
    invoke-virtual {v3}, Landroid/view/View;->getTag()Ljava/lang/Object;

    .line 59
    .line 60
    .line 61
    move-result-object v5

    .line 62
    instance-of v5, v5, Lcom/join/mgps/activity/SearchHintActivity$s;

    .line 63
    .line 64
    if-eqz v5, :cond_6

    .line 65
    .line 66
    invoke-virtual {v3}, Landroid/view/View;->getTag()Ljava/lang/Object;

    .line 67
    .line 68
    .line 69
    move-result-object v3

    .line 70
    check-cast v3, Lcom/join/mgps/activity/SearchHintActivity$s;

    .line 71
    .line 72
    :try_start_0
    invoke-static {}, Lcom/join/android/app/common/servcie/j;->f()Lcom/join/android/app/common/servcie/j;

    .line 73
    .line 74
    .line 75
    move-result-object v5

    .line 76
    invoke-virtual {v2}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getCrc_link_type_val()Ljava/lang/String;

    .line 77
    .line 78
    .line 79
    move-result-object v6

    .line 80
    invoke-virtual {v5, v6}, Lcom/join/android/app/common/servcie/j;->g(Ljava/lang/String;)Lcom/github/snowdream/android/app/downloader/DownloadTask;

    .line 81
    .line 82
    .line 83
    move-result-object v5

    .line 84
    if-nez v5, :cond_3

    .line 85
    .line 86
    return-void

    .line 87
    :cond_3
    invoke-virtual {v5}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getShowSize()Ljava/lang/String;

    .line 88
    .line 89
    .line 90
    move-result-object v6

    .line 91
    invoke-static {v6}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    .line 92
    .line 93
    .line 94
    move-result-wide v6

    .line 95
    const-wide/high16 v8, 0x4090000000000000L    # 1024.0

    .line 96
    .line 97
    mul-double v6, v6, v8

    .line 98
    .line 99
    mul-double v6, v6, v8

    .line 100
    .line 101
    double-to-long v6, v6

    .line 102
    invoke-virtual {v2}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getSize()J

    .line 103
    .line 104
    .line 105
    move-result-wide v8
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 106
    const-wide/16 v10, 0x0

    .line 107
    .line 108
    const-string v12, "/"

    .line 109
    .line 110
    cmp-long v13, v8, v10

    .line 111
    .line 112
    if-nez v13, :cond_4

    .line 113
    .line 114
    :try_start_1
    iget-object v8, v3, Lcom/join/mgps/activity/SearchHintActivity$s;->i:Landroid/widget/TextView;

    .line 115
    .line 116
    new-instance v9, Ljava/lang/StringBuilder;

    .line 117
    .line 118
    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    .line 119
    .line 120
    .line 121
    invoke-virtual {v5}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getCurrentSize()J

    .line 122
    .line 123
    .line 124
    move-result-wide v10

    .line 125
    invoke-static {v10, v11}, Lcom/join/mgps/Util/UtilsMy;->c(J)Ljava/lang/String;

    .line 126
    .line 127
    .line 128
    move-result-object v10

    .line 129
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 130
    .line 131
    .line 132
    invoke-virtual {v9, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 133
    .line 134
    .line 135
    invoke-static {v6, v7}, Lcom/join/mgps/Util/UtilsMy;->c(J)Ljava/lang/String;

    .line 136
    .line 137
    .line 138
    move-result-object v6

    .line 139
    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 140
    .line 141
    .line 142
    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 143
    .line 144
    .line 145
    move-result-object v6

    .line 146
    invoke-virtual {v8, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 147
    .line 148
    .line 149
    goto :goto_1

    .line 150
    :cond_4
    iget-object v8, v3, Lcom/join/mgps/activity/SearchHintActivity$s;->i:Landroid/widget/TextView;

    .line 151
    .line 152
    new-instance v9, Ljava/lang/StringBuilder;

    .line 153
    .line 154
    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    .line 155
    .line 156
    .line 157
    invoke-virtual {v5}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getCurrentSize()J

    .line 158
    .line 159
    .line 160
    move-result-wide v10

    .line 161
    invoke-static {v10, v11}, Lcom/join/mgps/Util/UtilsMy;->c(J)Ljava/lang/String;

    .line 162
    .line 163
    .line 164
    move-result-object v10

    .line 165
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 166
    .line 167
    .line 168
    invoke-virtual {v9, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 169
    .line 170
    .line 171
    invoke-static {v6, v7}, Lcom/join/mgps/Util/UtilsMy;->c(J)Ljava/lang/String;

    .line 172
    .line 173
    .line 174
    move-result-object v6

    .line 175
    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 176
    .line 177
    .line 178
    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 179
    .line 180
    .line 181
    move-result-object v6

    .line 182
    invoke-virtual {v8, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 183
    .line 184
    .line 185
    :goto_1
    invoke-virtual {v2}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getStatus()I

    .line 186
    .line 187
    .line 188
    move-result v6

    .line 189
    if-ne v6, v4, :cond_5

    .line 190
    .line 191
    iget-object v4, v3, Lcom/join/mgps/activity/SearchHintActivity$s;->m:Landroid/widget/ProgressBar;

    .line 192
    .line 193
    invoke-virtual {v5}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getProgress()J

    .line 194
    .line 195
    .line 196
    move-result-wide v6

    .line 197
    long-to-int v7, v6

    .line 198
    invoke-virtual {v4, v7}, Landroid/widget/ProgressBar;->setProgress(I)V

    .line 199
    .line 200
    .line 201
    goto :goto_2

    .line 202
    :cond_5
    iget-object v4, v3, Lcom/join/mgps/activity/SearchHintActivity$s;->l:Landroid/widget/ProgressBar;

    .line 203
    .line 204
    invoke-virtual {v5}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getProgress()J

    .line 205
    .line 206
    .line 207
    move-result-wide v6

    .line 208
    long-to-int v7, v6

    .line 209
    invoke-virtual {v4, v7}, Landroid/widget/ProgressBar;->setProgress(I)V

    .line 210
    .line 211
    .line 212
    :goto_2
    invoke-virtual {v2}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getStatus()I

    .line 213
    .line 214
    .line 215
    move-result v2

    .line 216
    if-ne v2, v1, :cond_6

    .line 217
    .line 218
    iget-object v1, v3, Lcom/join/mgps/activity/SearchHintActivity$s;->k:Landroid/widget/TextView;

    .line 219
    .line 220
    new-instance v2, Ljava/lang/StringBuilder;

    .line 221
    .line 222
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 223
    .line 224
    .line 225
    invoke-virtual {v5}, Lcom/github/snowdream/android/app/downloader/DownloadTask;->getSpeed()Ljava/lang/String;

    .line 226
    .line 227
    .line 228
    move-result-object v3

    .line 229
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 230
    .line 231
    .line 232
    const-string v3, "/S"

    .line 233
    .line 234
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 235
    .line 236
    .line 237
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 238
    .line 239
    .line 240
    move-result-object v2

    .line 241
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 242
    .line 243
    .line 244
    goto :goto_3

    .line 245
    :catch_0
    move-exception v1

    .line 246
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 247
    .line 248
    .line 249
    :cond_6
    :goto_3
    add-int/lit8 v0, v0, 0x1

    .line 250
    .line 251
    goto/16 :goto_0

    .line 252
    .line 253
    :cond_7
    return-void
.end method


# virtual methods
.method T(Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "msg"
        }
    .end annotation

    .annotation build Lorg/androidannotations/annotations/UiThread;
    .end annotation

    .line 1
    invoke-static {p0}, Lcom/join/mgps/Util/a3;->b(Landroid/content/Context;)Lcom/join/mgps/Util/a3;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0, p1}, Lcom/join/mgps/Util/a3;->d(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    return-void
.end method

.method afterViews()V
    .locals 3
    .annotation build Lorg/androidannotations/annotations/AfterViews;
    .end annotation

    .line 1
    iput-object p0, p0, Lcom/join/mgps/activity/SearchListActivity1;->context:Landroid/content/Context;

    .line 2
    .line 3
    invoke-static {}, Lcom/join/mgps/rpc/impl/d;->O1()Lcom/join/mgps/rpc/impl/d;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    iput-object v0, p0, Lcom/join/mgps/activity/SearchListActivity1;->rpcClient:Lcom/join/mgps/rpc/e;

    .line 8
    .line 9
    invoke-static {}, Lcom/join/mgps/rpc/impl/i;->P0()Lcom/join/mgps/rpc/impl/i;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    iput-object v0, p0, Lcom/join/mgps/activity/SearchListActivity1;->rpcGameClient:Lcom/join/mgps/rpc/k;

    .line 14
    .line 15
    invoke-static {}, Lcom/join/mgps/Util/j0;->a()Lcom/join/mgps/Util/j0;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    invoke-virtual {v0, p0}, Lcom/join/mgps/Util/j0;->d(Ljava/lang/Object;)V

    .line 20
    .line 21
    .line 22
    invoke-virtual {p0}, Lcom/join/mgps/activity/SearchListActivity1;->initTags()V

    .line 23
    .line 24
    .line 25
    const/4 v0, 0x1

    .line 26
    const/4 v1, 0x0

    .line 27
    invoke-virtual {p0, v0, v1}, Lcom/join/mgps/activity/SearchListActivity1;->getSpecialZoneInfo(IZ)V

    .line 28
    .line 29
    .line 30
    iget-object v0, p0, Lcom/join/mgps/activity/SearchListActivity1;->input:Landroid/widget/EditText;

    .line 31
    .line 32
    iget-object v1, p0, Lcom/join/mgps/activity/SearchListActivity1;->keyword:Ljava/lang/String;

    .line 33
    .line 34
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 35
    .line 36
    .line 37
    iget-object v0, p0, Lcom/join/mgps/activity/SearchListActivity1;->keyword:Ljava/lang/String;

    .line 38
    .line 39
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 40
    .line 41
    .line 42
    move-result v0

    .line 43
    if-nez v0, :cond_0

    .line 44
    .line 45
    iget-object v0, p0, Lcom/join/mgps/activity/SearchListActivity1;->input:Landroid/widget/EditText;

    .line 46
    .line 47
    iget-object v1, p0, Lcom/join/mgps/activity/SearchListActivity1;->keyword:Ljava/lang/String;

    .line 48
    .line 49
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    .line 50
    .line 51
    .line 52
    move-result v1

    .line 53
    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setSelection(I)V

    .line 54
    .line 55
    .line 56
    :cond_0
    iget-object v0, p0, Lcom/join/mgps/activity/SearchListActivity1;->input:Landroid/widget/EditText;

    .line 57
    .line 58
    new-instance v1, Lcom/join/mgps/activity/SearchListActivity1$b;

    .line 59
    .line 60
    invoke-direct {v1, p0}, Lcom/join/mgps/activity/SearchListActivity1$b;-><init>(Lcom/join/mgps/activity/SearchListActivity1;)V

    .line 61
    .line 62
    .line 63
    invoke-virtual {v0, v1}, Landroid/view/View;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    .line 64
    .line 65
    .line 66
    iget-object v0, p0, Lcom/join/mgps/activity/SearchListActivity1;->input:Landroid/widget/EditText;

    .line 67
    .line 68
    new-instance v1, Lcom/join/mgps/activity/SearchListActivity1$c;

    .line 69
    .line 70
    invoke-direct {v1, p0}, Lcom/join/mgps/activity/SearchListActivity1$c;-><init>(Lcom/join/mgps/activity/SearchListActivity1;)V

    .line 71
    .line 72
    .line 73
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 74
    .line 75
    .line 76
    iget-object v0, p0, Lcom/join/mgps/activity/SearchListActivity1;->tagBackground:Landroid/view/View;

    .line 77
    .line 78
    new-instance v1, Lcom/join/mgps/activity/SearchListActivity1$d;

    .line 79
    .line 80
    invoke-direct {v1, p0}, Lcom/join/mgps/activity/SearchListActivity1$d;-><init>(Lcom/join/mgps/activity/SearchListActivity1;)V

    .line 81
    .line 82
    .line 83
    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 84
    .line 85
    .line 86
    new-instance v0, Lcom/join/mgps/activity/SearchListActivity1$k;

    .line 87
    .line 88
    iget-object v1, p0, Lcom/join/mgps/activity/SearchListActivity1;->context:Landroid/content/Context;

    .line 89
    .line 90
    iget-object v2, p0, Lcom/join/mgps/activity/SearchListActivity1;->searchAutoDataBeanList:Ljava/util/List;

    .line 91
    .line 92
    invoke-direct {v0, p0, v1, v2}, Lcom/join/mgps/activity/SearchListActivity1$k;-><init>(Lcom/join/mgps/activity/SearchListActivity1;Landroid/content/Context;Ljava/util/List;)V

    .line 93
    .line 94
    .line 95
    iput-object v0, p0, Lcom/join/mgps/activity/SearchListActivity1;->searchSimpleAdapter:Lcom/join/mgps/activity/SearchListActivity1$k;

    .line 96
    .line 97
    iget-object v1, p0, Lcom/join/mgps/activity/SearchListActivity1;->autoListView:Landroid/widget/ListView;

    .line 98
    .line 99
    invoke-virtual {v1, v0}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 100
    .line 101
    .line 102
    iget-object v0, p0, Lcom/join/mgps/activity/SearchListActivity1;->autoListView:Landroid/widget/ListView;

    .line 103
    .line 104
    new-instance v1, Lcom/join/mgps/activity/SearchListActivity1$e;

    .line 105
    .line 106
    invoke-direct {v1, p0}, Lcom/join/mgps/activity/SearchListActivity1$e;-><init>(Lcom/join/mgps/activity/SearchListActivity1;)V

    .line 107
    .line 108
    .line 109
    invoke-virtual {v0, v1}, Landroid/widget/AdapterView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 110
    .line 111
    .line 112
    iget-object v0, p0, Lcom/join/mgps/activity/SearchListActivity1;->back:Landroid/widget/ImageView;

    .line 113
    .line 114
    new-instance v1, Lcom/join/mgps/activity/SearchListActivity1$f;

    .line 115
    .line 116
    invoke-direct {v1, p0}, Lcom/join/mgps/activity/SearchListActivity1$f;-><init>(Lcom/join/mgps/activity/SearchListActivity1;)V

    .line 117
    .line 118
    .line 119
    invoke-virtual {v0, v1}, Landroid/view/View;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    .line 120
    .line 121
    .line 122
    iget-object v0, p0, Lcom/join/mgps/activity/SearchListActivity1;->back:Landroid/widget/ImageView;

    .line 123
    .line 124
    invoke-virtual {v0}, Landroid/view/View;->requestFocus()Z

    .line 125
    .line 126
    .line 127
    return-void
.end method

.method back()V
    .locals 0
    .annotation build Lorg/androidannotations/annotations/Click;
    .end annotation

    .line 1
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method clear()V
    .locals 2
    .annotation build Lorg/androidannotations/annotations/Click;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/SearchListActivity1;->input:Landroid/widget/EditText;

    .line 2
    .line 3
    const-string v1, ""

    .line 4
    .line 5
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 6
    .line 7
    .line 8
    return-void
.end method

.method public getAutoRequestBean(Ljava/lang/String;)Lcom/join/mgps/dto/CommonRequestBean;
    .locals 8
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "KEYWORD"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/SearchListActivity1;->context:Landroid/content/Context;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/join/mgps/Util/RequestBeanUtil;->getInstance(Landroid/content/Context;)Lcom/join/mgps/Util/RequestBeanUtil;

    .line 4
    .line 5
    .line 6
    move-result-object v1

    .line 7
    const-string v2, "searchAuto"

    .line 8
    .line 9
    const/4 v4, 0x1

    .line 10
    const/16 v5, 0x14

    .line 11
    .line 12
    const/4 v6, 0x0

    .line 13
    const/4 v7, 0x0

    .line 14
    move-object v3, p1

    .line 15
    invoke-virtual/range {v1 .. v7}, Lcom/join/mgps/Util/RequestBeanUtil;->getSearchAutoRequestBean(Ljava/lang/String;Ljava/lang/String;IIII)Lcom/join/mgps/dto/CommonRequestBean;

    .line 16
    .line 17
    .line 18
    move-result-object p1

    .line 19
    return-object p1
.end method

.method public getCurrentLangId()I
    .locals 2

    .line 1
    iget v0, p0, Lcom/join/mgps/activity/SearchListActivity1;->currentTab:I

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    if-eqz v0, :cond_0

    .line 5
    .line 6
    return v1

    .line 7
    :cond_0
    iget-object v0, p0, Lcom/join/mgps/activity/SearchListActivity1;->languages:Lcom/zhy/view/flowlayout/TagFlowLayout3;

    .line 8
    .line 9
    invoke-virtual {v0}, Lcom/zhy/view/flowlayout/TagFlowLayout3;->getSelectedPosition()I

    .line 10
    .line 11
    .line 12
    move-result v0

    .line 13
    if-nez v0, :cond_1

    .line 14
    .line 15
    iput v1, p0, Lcom/join/mgps/activity/SearchListActivity1;->lang_id:I

    .line 16
    .line 17
    goto :goto_0

    .line 18
    :cond_1
    const/4 v0, 0x1

    .line 19
    iput v0, p0, Lcom/join/mgps/activity/SearchListActivity1;->lang_id:I

    .line 20
    .line 21
    :goto_0
    iget v0, p0, Lcom/join/mgps/activity/SearchListActivity1;->lang_id:I

    .line 22
    .line 23
    return v0
.end method

.method public getCurrentPluginNum()I
    .locals 2

    .line 1
    iget v0, p0, Lcom/join/mgps/activity/SearchListActivity1;->currentTab:I

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    const/4 v0, 0x0

    .line 6
    return v0

    .line 7
    :cond_0
    iget-object v0, p0, Lcom/join/mgps/activity/SearchListActivity1;->classifies:Lcom/zhy/view/flowlayout/TagFlowLayout3;

    .line 8
    .line 9
    invoke-virtual {v0}, Lcom/zhy/view/flowlayout/TagFlowLayout3;->getSelectedPosition()I

    .line 10
    .line 11
    .line 12
    move-result v0

    .line 13
    iget-object v1, p0, Lcom/join/mgps/activity/SearchListActivity1;->gameTagBeanList:Ljava/util/List;

    .line 14
    .line 15
    invoke-interface {v1}, Ljava/util/List;->size()I

    .line 16
    .line 17
    .line 18
    move-result v1

    .line 19
    if-ge v0, v1, :cond_1

    .line 20
    .line 21
    iget-object v1, p0, Lcom/join/mgps/activity/SearchListActivity1;->gameTagBeanList:Ljava/util/List;

    .line 22
    .line 23
    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 24
    .line 25
    .line 26
    move-result-object v0

    .line 27
    check-cast v0, Lcom/join/mgps/dto/ClassifyGameTagBean;

    .line 28
    .line 29
    invoke-virtual {v0}, Lcom/join/mgps/dto/ClassifyGameTagBean;->getId()I

    .line 30
    .line 31
    .line 32
    move-result v0

    .line 33
    iput v0, p0, Lcom/join/mgps/activity/SearchListActivity1;->plugin_num:I

    .line 34
    .line 35
    :cond_1
    iget v0, p0, Lcom/join/mgps/activity/SearchListActivity1;->plugin_num:I

    .line 36
    .line 37
    return v0
.end method

.method public getGameId()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/SearchListActivity1;->game_id:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method getSearchAutoData(Ljava/lang/String;)V
    .locals 9
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "key"
        }
    .end annotation

    .annotation build Lorg/androidannotations/annotations/Background;
    .end annotation

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 4
    .line 5
    .line 6
    iget-object v1, p0, Lcom/join/mgps/activity/SearchListActivity1;->context:Landroid/content/Context;

    .line 7
    .line 8
    invoke-static {v1}, Lcom/join/android/app/common/utils/m;->j(Landroid/content/Context;)Z

    .line 9
    .line 10
    .line 11
    move-result v1

    .line 12
    if-eqz v1, :cond_1

    .line 13
    .line 14
    :try_start_0
    new-instance v1, Lcom/join/mgps/dto/RequestModel;

    .line 15
    .line 16
    invoke-direct {v1}, Lcom/join/mgps/dto/RequestModel;-><init>()V

    .line 17
    .line 18
    .line 19
    iget-object v2, p0, Lcom/join/mgps/activity/SearchListActivity1;->context:Landroid/content/Context;

    .line 20
    .line 21
    invoke-virtual {v1, v2}, Lcom/join/mgps/dto/RequestModel;->setDefault(Landroid/content/Context;)Lcom/join/mgps/dto/RequestModel;

    .line 22
    .line 23
    .line 24
    new-instance v2, Lcom/join/mgps/dto/RequestKeywordArgs;

    .line 25
    .line 26
    invoke-virtual {p0}, Lcom/join/mgps/activity/SearchListActivity1;->keyword()Ljava/lang/String;

    .line 27
    .line 28
    .line 29
    move-result-object v4

    .line 30
    iget v5, p0, Lcom/join/mgps/activity/SearchListActivity1;->pn:I

    .line 31
    .line 32
    iget v6, p0, Lcom/join/mgps/activity/SearchListActivity1;->pc:I

    .line 33
    .line 34
    const/4 v7, 0x0

    .line 35
    const/4 v8, 0x0

    .line 36
    move-object v3, v2

    .line 37
    invoke-direct/range {v3 .. v8}, Lcom/join/mgps/dto/RequestKeywordArgs;-><init>(Ljava/lang/String;IIII)V

    .line 38
    .line 39
    .line 40
    invoke-virtual {v1, v2}, Lcom/join/mgps/dto/RequestModel;->setArgs(Ljava/lang/Object;)V

    .line 41
    .line 42
    .line 43
    invoke-static {}, Lcom/join/mgps/rpc/impl/i;->Q0()Lcom/join/mgps/rpc/impl/i;

    .line 44
    .line 45
    .line 46
    move-result-object v2

    .line 47
    invoke-virtual {v2}, Lcom/join/mgps/rpc/impl/i;->N0()Lb7/i;

    .line 48
    .line 49
    .line 50
    move-result-object v2

    .line 51
    invoke-virtual {v1}, Lcom/join/mgps/dto/RequestModel;->makeSign()Lcom/join/mgps/dto/RequestModel;

    .line 52
    .line 53
    .line 54
    move-result-object v1

    .line 55
    invoke-interface {v2, v1}, Lb7/i;->Z0(Lcom/join/mgps/dto/RequestModel;)Lretrofit2/Call;

    .line 56
    .line 57
    .line 58
    move-result-object v1

    .line 59
    invoke-interface {v1}, Lretrofit2/Call;->execute()Lretrofit2/Response;

    .line 60
    .line 61
    .line 62
    move-result-object v1

    .line 63
    invoke-virtual {v1}, Lretrofit2/Response;->body()Ljava/lang/Object;

    .line 64
    .line 65
    .line 66
    move-result-object v1

    .line 67
    check-cast v1, Lcom/join/mgps/dto/ResponseModel;

    .line 68
    .line 69
    iput-object v1, p0, Lcom/join/mgps/activity/SearchListActivity1;->searchAutoBean:Lcom/join/mgps/dto/ResponseModel;

    .line 70
    .line 71
    if-eqz v1, :cond_0

    .line 72
    .line 73
    invoke-virtual {v1}, Lcom/join/mgps/dto/ResponseModel;->getData()Ljava/lang/Object;

    .line 74
    .line 75
    .line 76
    move-result-object v1

    .line 77
    if-eqz v1, :cond_0

    .line 78
    .line 79
    iget-object v1, p0, Lcom/join/mgps/activity/SearchListActivity1;->searchAutoBean:Lcom/join/mgps/dto/ResponseModel;

    .line 80
    .line 81
    invoke-virtual {v1}, Lcom/join/mgps/dto/ResponseModel;->getData()Ljava/lang/Object;

    .line 82
    .line 83
    .line 84
    move-result-object v1

    .line 85
    check-cast v1, Lcom/join/mgps/activity/search/SearchAutoDataV1;

    .line 86
    .line 87
    invoke-virtual {v1}, Lcom/join/mgps/activity/search/SearchAutoDataV1;->getSearch_list()Ljava/util/List;

    .line 88
    .line 89
    .line 90
    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 91
    goto :goto_0

    .line 92
    :catchall_0
    move-exception v1

    .line 93
    goto :goto_1

    .line 94
    :catch_0
    move-exception v1

    .line 95
    :try_start_1
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 96
    .line 97
    .line 98
    :cond_0
    :goto_0
    invoke-virtual {p0, v0, p1}, Lcom/join/mgps/activity/SearchListActivity1;->updateUI(Ljava/util/List;Ljava/lang/String;)V

    .line 99
    .line 100
    .line 101
    goto :goto_2

    .line 102
    :goto_1
    invoke-virtual {p0, v0, p1}, Lcom/join/mgps/activity/SearchListActivity1;->updateUI(Ljava/util/List;Ljava/lang/String;)V

    .line 103
    .line 104
    .line 105
    throw v1

    .line 106
    :cond_1
    :goto_2
    return-void
.end method

.method getSpecialZoneInfo(IZ)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "pn",
            "recommend"
        }
    .end annotation

    .annotation build Lorg/androidannotations/annotations/Background;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/SearchListActivity1;->context:Landroid/content/Context;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/join/android/app/common/utils/m;->j(Landroid/content/Context;)Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-eqz v0, :cond_4

    .line 8
    .line 9
    iget-object v0, p0, Lcom/join/mgps/activity/SearchListActivity1;->context:Landroid/content/Context;

    .line 10
    .line 11
    invoke-static {v0}, Lcom/join/mgps/Util/AccountUtil_;->getInstance_(Landroid/content/Context;)Lcom/join/mgps/Util/AccountUtil_;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    invoke-virtual {v0}, Lcom/join/mgps/Util/b;->getAccountData()Lcom/wufan/user/service/protobuf/UserInfo;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    :try_start_0
    new-instance v1, Lcom/join/mgps/dto/RequestSearchGameArgs;

    .line 20
    .line 21
    invoke-direct {v1}, Lcom/join/mgps/dto/RequestSearchGameArgs;-><init>()V

    .line 22
    .line 23
    .line 24
    iget-object v2, p0, Lcom/join/mgps/activity/SearchListActivity1;->game_id:Ljava/lang/String;

    .line 25
    .line 26
    invoke-virtual {v1, v2}, Lcom/join/mgps/dto/RequestSearchGameArgs;->setGameId(Ljava/lang/String;)V

    .line 27
    .line 28
    .line 29
    iget v2, p0, Lcom/join/mgps/activity/SearchListActivity1;->lang_id:I

    .line 30
    .line 31
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 32
    .line 33
    .line 34
    move-result-object v2

    .line 35
    invoke-virtual {v1, v2}, Lcom/join/mgps/dto/RequestSearchGameArgs;->setLangId(Ljava/lang/Integer;)V

    .line 36
    .line 37
    .line 38
    const/16 v2, 0x14

    .line 39
    .line 40
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 41
    .line 42
    .line 43
    move-result-object v2

    .line 44
    invoke-virtual {v1, v2}, Lcom/join/mgps/dto/RequestSearchGameArgs;->setPc(Ljava/lang/Integer;)V

    .line 45
    .line 46
    .line 47
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 48
    .line 49
    .line 50
    move-result-object p1

    .line 51
    invoke-virtual {v1, p1}, Lcom/join/mgps/dto/RequestSearchGameArgs;->setPn(Ljava/lang/Integer;)V

    .line 52
    .line 53
    .line 54
    invoke-virtual {p0}, Lcom/join/mgps/activity/SearchListActivity1;->keyword()Ljava/lang/String;

    .line 55
    .line 56
    .line 57
    move-result-object p1

    .line 58
    invoke-virtual {v1, p1}, Lcom/join/mgps/dto/RequestSearchGameArgs;->setKeyword(Ljava/lang/String;)V

    .line 59
    .line 60
    .line 61
    const/4 p1, 0x0

    .line 62
    if-eqz v0, :cond_0

    .line 63
    .line 64
    invoke-virtual {v0}, Lcom/wufan/user/service/protobuf/UserInfo;->getUid()I

    .line 65
    .line 66
    .line 67
    move-result v0

    .line 68
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 69
    .line 70
    .line 71
    move-result-object v0

    .line 72
    invoke-virtual {v1, v0}, Lcom/join/mgps/dto/RequestSearchGameArgs;->setUid(Ljava/lang/Integer;)V

    .line 73
    .line 74
    .line 75
    goto :goto_0

    .line 76
    :cond_0
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 77
    .line 78
    .line 79
    move-result-object v0

    .line 80
    invoke-virtual {v1, v0}, Lcom/join/mgps/dto/RequestSearchGameArgs;->setUid(Ljava/lang/Integer;)V

    .line 81
    .line 82
    .line 83
    :goto_0
    iget v0, p0, Lcom/join/mgps/activity/SearchListActivity1;->plugin_num:I

    .line 84
    .line 85
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 86
    .line 87
    .line 88
    move-result-object v0

    .line 89
    invoke-virtual {v1, v0}, Lcom/join/mgps/dto/RequestSearchGameArgs;->setPluginNum(Ljava/lang/Integer;)V

    .line 90
    .line 91
    .line 92
    const/4 v0, 0x1

    .line 93
    if-eqz p2, :cond_1

    .line 94
    .line 95
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 96
    .line 97
    .line 98
    move-result-object v2

    .line 99
    invoke-virtual {v1, v2}, Lcom/join/mgps/dto/RequestSearchGameArgs;->setRec_pn(Ljava/lang/Integer;)V

    .line 100
    .line 101
    .line 102
    goto :goto_1

    .line 103
    :cond_1
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 104
    .line 105
    .line 106
    move-result-object v2

    .line 107
    invoke-virtual {v1, v2}, Lcom/join/mgps/dto/RequestSearchGameArgs;->setRec_pn(Ljava/lang/Integer;)V

    .line 108
    .line 109
    .line 110
    :goto_1
    if-eqz p2, :cond_2

    .line 111
    .line 112
    const/4 p1, 0x1

    .line 113
    :cond_2
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 114
    .line 115
    .line 116
    move-result-object p1

    .line 117
    invoke-virtual {v1, p1}, Lcom/join/mgps/dto/RequestSearchGameArgs;->setIsRecommend(Ljava/lang/Integer;)V

    .line 118
    .line 119
    .line 120
    new-instance p1, Lcom/join/mgps/dto/RequestModel;

    .line 121
    .line 122
    iget-object p2, p0, Lcom/join/mgps/activity/SearchListActivity1;->context:Landroid/content/Context;

    .line 123
    .line 124
    invoke-direct {p1, p2}, Lcom/join/mgps/dto/RequestModel;-><init>(Landroid/content/Context;)V

    .line 125
    .line 126
    .line 127
    invoke-virtual {p1, v1}, Lcom/join/mgps/dto/RequestModel;->setArgs(Ljava/lang/Object;)V

    .line 128
    .line 129
    .line 130
    invoke-virtual {p1}, Lcom/join/mgps/dto/RequestModel;->makeSign()Lcom/join/mgps/dto/RequestModel;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 131
    .line 132
    .line 133
    :try_start_1
    invoke-static {}, Lcom/join/mgps/rpc/impl/i;->Q0()Lcom/join/mgps/rpc/impl/i;

    .line 134
    .line 135
    .line 136
    move-result-object p2

    .line 137
    invoke-virtual {p1}, Lcom/join/mgps/dto/RequestModel;->makeSign()Lcom/join/mgps/dto/RequestModel;

    .line 138
    .line 139
    .line 140
    move-result-object p1

    .line 141
    invoke-virtual {p2, p1}, Lcom/join/mgps/rpc/impl/i;->p0(Lcom/join/mgps/dto/RequestModel;)Lcom/join/mgps/dto/ResponseModel;

    .line 142
    .line 143
    .line 144
    move-result-object p1

    .line 145
    if-eqz p1, :cond_3

    .line 146
    .line 147
    invoke-virtual {p1}, Lcom/join/mgps/dto/ResponseModel;->getData()Ljava/lang/Object;

    .line 148
    .line 149
    .line 150
    move-result-object p2

    .line 151
    if-eqz p2, :cond_3

    .line 152
    .line 153
    invoke-virtual {p1}, Lcom/join/mgps/dto/ResponseModel;->getData()Ljava/lang/Object;

    .line 154
    .line 155
    .line 156
    move-result-object p1

    .line 157
    check-cast p1, Lcom/join/mgps/dto/SearchGameListBean;

    .line 158
    .line 159
    invoke-virtual {p0, p1}, Lcom/join/mgps/activity/SearchListActivity1;->updateSpecialZoneInfo(Lcom/join/mgps/dto/SearchGameListBean;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 160
    .line 161
    .line 162
    goto :goto_2

    .line 163
    :catch_0
    move-exception p1

    .line 164
    :try_start_2
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 165
    .line 166
    .line 167
    goto :goto_2

    .line 168
    :catchall_0
    move-exception p1

    .line 169
    goto :goto_3

    .line 170
    :catch_1
    move-exception p1

    .line 171
    :try_start_3
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 172
    .line 173
    .line 174
    :cond_3
    :goto_2
    invoke-virtual {p0}, Lcom/join/mgps/activity/SearchListActivity1;->initViewpagerAndTab()V

    .line 175
    .line 176
    .line 177
    goto :goto_4

    .line 178
    :goto_3
    invoke-virtual {p0}, Lcom/join/mgps/activity/SearchListActivity1;->initViewpagerAndTab()V

    .line 179
    .line 180
    .line 181
    throw p1

    .line 182
    :cond_4
    invoke-virtual {p0}, Lcom/join/mgps/activity/SearchListActivity1;->initViewpagerAndTab()V

    .line 183
    .line 184
    .line 185
    iget-object p1, p0, Lcom/join/mgps/activity/SearchListActivity1;->context:Landroid/content/Context;

    .line 186
    .line 187
    if-eqz p1, :cond_5

    .line 188
    .line 189
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 190
    .line 191
    .line 192
    move-result-object p1

    .line 193
    const p2, 0x7f12031e

    .line 194
    .line 195
    .line 196
    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    .line 197
    .line 198
    .line 199
    move-result-object p1

    .line 200
    invoke-virtual {p0, p1}, Lcom/join/mgps/activity/SearchListActivity1;->T(Ljava/lang/String;)V

    .line 201
    .line 202
    .line 203
    :cond_5
    :goto_4
    return-void
.end method

.method hideTags(Z)V
    .locals 7
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "fresh"
        }
    .end annotation

    .annotation build Lorg/androidannotations/annotations/UiThread;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/SearchListActivity1;->ll_filter:Landroid/widget/LinearLayout;

    .line 2
    .line 3
    const/4 v1, 0x2

    .line 4
    new-array v2, v1, [F

    .line 5
    .line 6
    fill-array-data v2, :array_0

    .line 7
    .line 8
    .line 9
    const-string v3, "scaleY"

    .line 10
    .line 11
    invoke-static {v0, v3, v2}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    iget-object v2, p0, Lcom/join/mgps/activity/SearchListActivity1;->ll_filter:Landroid/widget/LinearLayout;

    .line 16
    .line 17
    const/4 v3, 0x0

    .line 18
    invoke-virtual {v2, v3}, Landroid/view/View;->setPivotY(F)V

    .line 19
    .line 20
    .line 21
    iget-object v2, p0, Lcom/join/mgps/activity/SearchListActivity1;->ll_filter:Landroid/widget/LinearLayout;

    .line 22
    .line 23
    new-array v3, v1, [F

    .line 24
    .line 25
    fill-array-data v3, :array_1

    .line 26
    .line 27
    .line 28
    const-string v4, "alpha"

    .line 29
    .line 30
    invoke-static {v2, v4, v3}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    .line 31
    .line 32
    .line 33
    move-result-object v2

    .line 34
    iget-object v3, p0, Lcom/join/mgps/activity/SearchListActivity1;->tagBackground:Landroid/view/View;

    .line 35
    .line 36
    new-array v5, v1, [F

    .line 37
    .line 38
    fill-array-data v5, :array_2

    .line 39
    .line 40
    .line 41
    invoke-static {v3, v4, v5}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    .line 42
    .line 43
    .line 44
    move-result-object v3

    .line 45
    new-instance v4, Landroid/animation/AnimatorSet;

    .line 46
    .line 47
    invoke-direct {v4}, Landroid/animation/AnimatorSet;-><init>()V

    .line 48
    .line 49
    .line 50
    const-wide/16 v5, 0xc8

    .line 51
    .line 52
    invoke-virtual {v4, v5, v6}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    .line 53
    .line 54
    .line 55
    new-instance v5, Lcom/join/mgps/activity/SearchListActivity1$j;

    .line 56
    .line 57
    invoke-direct {v5, p0, p1}, Lcom/join/mgps/activity/SearchListActivity1$j;-><init>(Lcom/join/mgps/activity/SearchListActivity1;Z)V

    .line 58
    .line 59
    .line 60
    invoke-virtual {v4, v5}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 61
    .line 62
    .line 63
    const/4 p1, 0x3

    .line 64
    new-array p1, p1, [Landroid/animation/Animator;

    .line 65
    .line 66
    const/4 v5, 0x0

    .line 67
    aput-object v0, p1, v5

    .line 68
    .line 69
    const/4 v0, 0x1

    .line 70
    aput-object v2, p1, v0

    .line 71
    .line 72
    aput-object v3, p1, v1

    .line 73
    .line 74
    invoke-virtual {v4, p1}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    .line 75
    .line 76
    .line 77
    invoke-virtual {v4}, Landroid/animation/AnimatorSet;->start()V

    .line 78
    .line 79
    .line 80
    return-void

    .line 81
    :array_0
    .array-data 4
        0x3f800000    # 1.0f
        0x0
    .end array-data

    .line 82
    .line 83
    .line 84
    .line 85
    .line 86
    .line 87
    .line 88
    .line 89
    :array_1
    .array-data 4
        0x3f800000    # 1.0f
        0x0
    .end array-data

    .line 90
    .line 91
    .line 92
    .line 93
    .line 94
    .line 95
    .line 96
    .line 97
    :array_2
    .array-data 4
        0x3f800000    # 1.0f
        0x0
    .end array-data
.end method

.method initTags()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/SearchListActivity1;->classifies:Lcom/zhy/view/flowlayout/TagFlowLayout3;

    .line 2
    .line 3
    new-instance v1, Lcom/join/mgps/activity/b9;

    .line 4
    .line 5
    invoke-direct {v1}, Lcom/join/mgps/activity/b9;-><init>()V

    .line 6
    .line 7
    .line 8
    invoke-virtual {v0, v1}, Lcom/zhy/view/flowlayout/TagFlowLayout3;->setListener(Lcom/zhy/view/flowlayout/TagFlowLayout3$b;)V

    .line 9
    .line 10
    .line 11
    new-instance v0, Ljava/util/ArrayList;

    .line 12
    .line 13
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 14
    .line 15
    .line 16
    const-string v1, "\u5168\u90e8"

    .line 17
    .line 18
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 19
    .line 20
    .line 21
    const-string v1, "\u4e2d\u6587"

    .line 22
    .line 23
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 24
    .line 25
    .line 26
    iget-object v1, p0, Lcom/join/mgps/activity/SearchListActivity1;->languages:Lcom/zhy/view/flowlayout/TagFlowLayout3;

    .line 27
    .line 28
    invoke-virtual {v1, v0}, Lcom/zhy/view/flowlayout/TagFlowLayout3;->setData(Ljava/util/List;)V

    .line 29
    .line 30
    .line 31
    iget-object v0, p0, Lcom/join/mgps/activity/SearchListActivity1;->languages:Lcom/zhy/view/flowlayout/TagFlowLayout3;

    .line 32
    .line 33
    new-instance v1, Lcom/join/mgps/activity/c9;

    .line 34
    .line 35
    invoke-direct {v1}, Lcom/join/mgps/activity/c9;-><init>()V

    .line 36
    .line 37
    .line 38
    invoke-virtual {v0, v1}, Lcom/zhy/view/flowlayout/TagFlowLayout3;->setListener(Lcom/zhy/view/flowlayout/TagFlowLayout3$b;)V

    .line 39
    .line 40
    .line 41
    invoke-virtual {p0}, Lcom/join/mgps/activity/SearchListActivity1;->loadingTags()V

    .line 42
    .line 43
    .line 44
    return-void
.end method

.method initViewpagerAndTab()V
    .locals 6
    .annotation build Lorg/androidannotations/annotations/UiThread;
    .end annotation

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 4
    .line 5
    .line 6
    iput-object v0, p0, Lcom/join/mgps/activity/SearchListActivity1;->fragmentsList:Ljava/util/ArrayList;

    .line 7
    .line 8
    new-instance v0, Ljava/util/ArrayList;

    .line 9
    .line 10
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 11
    .line 12
    .line 13
    iput-object v0, p0, Lcom/join/mgps/activity/SearchListActivity1;->stringList:Ljava/util/List;

    .line 14
    .line 15
    new-instance v0, Lcom/join/mgps/customview/e0;

    .line 16
    .line 17
    invoke-virtual {p0}, Landroidx/fragment/app/FragmentActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    .line 18
    .line 19
    .line 20
    move-result-object v1

    .line 21
    iget-object v2, p0, Lcom/join/mgps/activity/SearchListActivity1;->fragmentsList:Ljava/util/ArrayList;

    .line 22
    .line 23
    iget-object v3, p0, Lcom/join/mgps/activity/SearchListActivity1;->stringList:Ljava/util/List;

    .line 24
    .line 25
    invoke-direct {v0, v1, v2, v3}, Lcom/join/mgps/customview/e0;-><init>(Landroidx/fragment/app/FragmentManager;Ljava/util/ArrayList;Ljava/util/List;)V

    .line 26
    .line 27
    .line 28
    iput-object v0, p0, Lcom/join/mgps/activity/SearchListActivity1;->adapter:Lcom/join/mgps/customview/e0;

    .line 29
    .line 30
    iget-object v0, p0, Lcom/join/mgps/activity/SearchListActivity1;->viewPager:Landroidx/viewpager/widget/ViewPager;

    .line 31
    .line 32
    const/4 v1, 0x4

    .line 33
    invoke-virtual {v0, v1}, Landroidx/viewpager/widget/ViewPager;->setOffscreenPageLimit(I)V

    .line 34
    .line 35
    .line 36
    iget-object v0, p0, Lcom/join/mgps/activity/SearchListActivity1;->viewPager:Landroidx/viewpager/widget/ViewPager;

    .line 37
    .line 38
    iget-object v2, p0, Lcom/join/mgps/activity/SearchListActivity1;->adapter:Lcom/join/mgps/customview/e0;

    .line 39
    .line 40
    invoke-virtual {v0, v2}, Landroidx/viewpager/widget/ViewPager;->setAdapter(Landroidx/viewpager/widget/PagerAdapter;)V

    .line 41
    .line 42
    .line 43
    iget-object v0, p0, Lcom/join/mgps/activity/SearchListActivity1;->str:[Ljava/lang/String;

    .line 44
    .line 45
    array-length v2, v0

    .line 46
    const/4 v3, 0x5

    .line 47
    if-lt v2, v3, :cond_1

    .line 48
    .line 49
    aget-object v0, v0, v1

    .line 50
    .line 51
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 52
    .line 53
    .line 54
    move-result v0

    .line 55
    if-nez v0, :cond_1

    .line 56
    .line 57
    iget-object v0, p0, Lcom/join/mgps/activity/SearchListActivity1;->special_zone_info:Lcom/join/mgps/dto/SearchGameListSpecialZoneBean;

    .line 58
    .line 59
    if-eqz v0, :cond_1

    .line 60
    .line 61
    invoke-virtual {v0}, Lcom/join/mgps/dto/SearchGameListSpecialZoneBean;->getUrl()Ljava/lang/String;

    .line 62
    .line 63
    .line 64
    move-result-object v0

    .line 65
    if-eqz v0, :cond_1

    .line 66
    .line 67
    new-instance v0, Lcom/join/mgps/fragment/a0;

    .line 68
    .line 69
    invoke-direct {v0}, Lcom/join/mgps/fragment/a0;-><init>()V

    .line 70
    .line 71
    .line 72
    new-instance v2, Landroid/os/Bundle;

    .line 73
    .line 74
    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    .line 75
    .line 76
    .line 77
    iget-object v3, p0, Lcom/join/mgps/activity/SearchListActivity1;->special_zone_info:Lcom/join/mgps/dto/SearchGameListSpecialZoneBean;

    .line 78
    .line 79
    invoke-virtual {v3}, Lcom/join/mgps/dto/SearchGameListSpecialZoneBean;->getUrl()Ljava/lang/String;

    .line 80
    .line 81
    .line 82
    move-result-object v3

    .line 83
    const-string v4, "?"

    .line 84
    .line 85
    invoke-virtual {v3, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 86
    .line 87
    .line 88
    move-result v5

    .line 89
    if-nez v5, :cond_0

    .line 90
    .line 91
    new-instance v5, Ljava/lang/StringBuilder;

    .line 92
    .line 93
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 94
    .line 95
    .line 96
    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 97
    .line 98
    .line 99
    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 100
    .line 101
    .line 102
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 103
    .line 104
    .line 105
    move-result-object v3

    .line 106
    goto :goto_0

    .line 107
    :cond_0
    new-instance v4, Ljava/lang/StringBuilder;

    .line 108
    .line 109
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 110
    .line 111
    .line 112
    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 113
    .line 114
    .line 115
    const-string v3, "&"

    .line 116
    .line 117
    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 118
    .line 119
    .line 120
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 121
    .line 122
    .line 123
    move-result-object v3

    .line 124
    :goto_0
    new-instance v4, Ljava/lang/StringBuilder;

    .line 125
    .line 126
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 127
    .line 128
    .line 129
    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 130
    .line 131
    .line 132
    const-string v3, "where="

    .line 133
    .line 134
    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 135
    .line 136
    .line 137
    iget-object v3, p0, Lcom/join/mgps/activity/SearchListActivity1;->keyword:Ljava/lang/String;

    .line 138
    .line 139
    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 140
    .line 141
    .line 142
    const-string v3, "&from="

    .line 143
    .line 144
    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 145
    .line 146
    .line 147
    iget v3, p0, Lcom/join/mgps/activity/SearchListActivity1;->from:I

    .line 148
    .line 149
    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 150
    .line 151
    .line 152
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 153
    .line 154
    .line 155
    move-result-object v3

    .line 156
    const-string v4, "url"

    .line 157
    .line 158
    invoke-virtual {v2, v4, v3}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 159
    .line 160
    .line 161
    invoke-virtual {v0, v2}, Landroidx/fragment/app/Fragment;->setArguments(Landroid/os/Bundle;)V

    .line 162
    .line 163
    .line 164
    iget-object v2, p0, Lcom/join/mgps/activity/SearchListActivity1;->fragmentsList:Ljava/util/ArrayList;

    .line 165
    .line 166
    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 167
    .line 168
    .line 169
    iget-object v0, p0, Lcom/join/mgps/activity/SearchListActivity1;->stringList:Ljava/util/List;

    .line 170
    .line 171
    iget-object v2, p0, Lcom/join/mgps/activity/SearchListActivity1;->str:[Ljava/lang/String;

    .line 172
    .line 173
    aget-object v1, v2, v1

    .line 174
    .line 175
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 176
    .line 177
    .line 178
    :cond_1
    new-instance v0, Lcom/join/kotlin/ui/search/fragment/SearchListGameFragment;

    .line 179
    .line 180
    invoke-direct {v0}, Lcom/join/kotlin/ui/search/fragment/SearchListGameFragment;-><init>()V

    .line 181
    .line 182
    .line 183
    new-instance v1, Landroid/os/Bundle;

    .line 184
    .line 185
    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 186
    .line 187
    .line 188
    const-string v2, "keyword"

    .line 189
    .line 190
    iget-object v3, p0, Lcom/join/mgps/activity/SearchListActivity1;->keyword:Ljava/lang/String;

    .line 191
    .line 192
    invoke-virtual {v1, v2, v3}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 193
    .line 194
    .line 195
    const-string v2, "game_id"

    .line 196
    .line 197
    iget-object v3, p0, Lcom/join/mgps/activity/SearchListActivity1;->game_id:Ljava/lang/String;

    .line 198
    .line 199
    invoke-virtual {v1, v2, v3}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 200
    .line 201
    .line 202
    invoke-virtual {v0, v1}, Landroidx/fragment/app/Fragment;->setArguments(Landroid/os/Bundle;)V

    .line 203
    .line 204
    .line 205
    iget-object v1, p0, Lcom/join/mgps/activity/SearchListActivity1;->fragmentsList:Ljava/util/ArrayList;

    .line 206
    .line 207
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 208
    .line 209
    .line 210
    iget-object v0, p0, Lcom/join/mgps/activity/SearchListActivity1;->stringList:Ljava/util/List;

    .line 211
    .line 212
    iget-object v1, p0, Lcom/join/mgps/activity/SearchListActivity1;->str:[Ljava/lang/String;

    .line 213
    .line 214
    const/4 v2, 0x1

    .line 215
    aget-object v1, v1, v2

    .line 216
    .line 217
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 218
    .line 219
    .line 220
    iget-object v0, p0, Lcom/join/mgps/activity/SearchListActivity1;->fragmentsList:Ljava/util/ArrayList;

    .line 221
    .line 222
    invoke-static {}, Lcom/join/mgps/fragment/h5;->t0()Lcom/join/mgps/fragment/h5$o;

    .line 223
    .line 224
    .line 225
    move-result-object v1

    .line 226
    const/4 v2, 0x2

    .line 227
    invoke-virtual {v1, v2}, Lcom/join/mgps/fragment/h5$o;->b(I)Lcom/join/mgps/fragment/h5$o;

    .line 228
    .line 229
    .line 230
    move-result-object v1

    .line 231
    iget-object v3, p0, Lcom/join/mgps/activity/SearchListActivity1;->game_id:Ljava/lang/String;

    .line 232
    .line 233
    invoke-virtual {v1, v3}, Lcom/join/mgps/fragment/h5$o;->c(Ljava/lang/String;)Lcom/join/mgps/fragment/h5$o;

    .line 234
    .line 235
    .line 236
    move-result-object v1

    .line 237
    iget-object v3, p0, Lcom/join/mgps/activity/SearchListActivity1;->keyword:Ljava/lang/String;

    .line 238
    .line 239
    invoke-virtual {v1, v3}, Lcom/join/mgps/fragment/h5$o;->d(Ljava/lang/String;)Lcom/join/mgps/fragment/h5$o;

    .line 240
    .line 241
    .line 242
    move-result-object v1

    .line 243
    invoke-virtual {v1}, Lcom/join/mgps/fragment/h5$o;->a()Lcom/join/mgps/fragment/g5;

    .line 244
    .line 245
    .line 246
    move-result-object v1

    .line 247
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 248
    .line 249
    .line 250
    iget-object v0, p0, Lcom/join/mgps/activity/SearchListActivity1;->stringList:Ljava/util/List;

    .line 251
    .line 252
    iget-object v1, p0, Lcom/join/mgps/activity/SearchListActivity1;->str:[Ljava/lang/String;

    .line 253
    .line 254
    aget-object v1, v1, v2

    .line 255
    .line 256
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 257
    .line 258
    .line 259
    iget-object v0, p0, Lcom/join/mgps/activity/SearchListActivity1;->fragmentsList:Ljava/util/ArrayList;

    .line 260
    .line 261
    invoke-static {}, Lcom/join/mgps/fragment/h5;->t0()Lcom/join/mgps/fragment/h5$o;

    .line 262
    .line 263
    .line 264
    move-result-object v1

    .line 265
    const/4 v2, 0x3

    .line 266
    invoke-virtual {v1, v2}, Lcom/join/mgps/fragment/h5$o;->b(I)Lcom/join/mgps/fragment/h5$o;

    .line 267
    .line 268
    .line 269
    move-result-object v1

    .line 270
    iget-object v3, p0, Lcom/join/mgps/activity/SearchListActivity1;->game_id:Ljava/lang/String;

    .line 271
    .line 272
    invoke-virtual {v1, v3}, Lcom/join/mgps/fragment/h5$o;->c(Ljava/lang/String;)Lcom/join/mgps/fragment/h5$o;

    .line 273
    .line 274
    .line 275
    move-result-object v1

    .line 276
    iget-object v3, p0, Lcom/join/mgps/activity/SearchListActivity1;->keyword:Ljava/lang/String;

    .line 277
    .line 278
    invoke-virtual {v1, v3}, Lcom/join/mgps/fragment/h5$o;->d(Ljava/lang/String;)Lcom/join/mgps/fragment/h5$o;

    .line 279
    .line 280
    .line 281
    move-result-object v1

    .line 282
    invoke-virtual {v1}, Lcom/join/mgps/fragment/h5$o;->a()Lcom/join/mgps/fragment/g5;

    .line 283
    .line 284
    .line 285
    move-result-object v1

    .line 286
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 287
    .line 288
    .line 289
    iget-object v0, p0, Lcom/join/mgps/activity/SearchListActivity1;->stringList:Ljava/util/List;

    .line 290
    .line 291
    iget-object v1, p0, Lcom/join/mgps/activity/SearchListActivity1;->str:[Ljava/lang/String;

    .line 292
    .line 293
    aget-object v1, v1, v2

    .line 294
    .line 295
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 296
    .line 297
    .line 298
    iget-object v0, p0, Lcom/join/mgps/activity/SearchListActivity1;->adapter:Lcom/join/mgps/customview/e0;

    .line 299
    .line 300
    iget-object v1, p0, Lcom/join/mgps/activity/SearchListActivity1;->fragmentsList:Ljava/util/ArrayList;

    .line 301
    .line 302
    iget-object v2, p0, Lcom/join/mgps/activity/SearchListActivity1;->stringList:Ljava/util/List;

    .line 303
    .line 304
    invoke-virtual {v0, v1, v2}, Lcom/join/mgps/customview/e0;->d(Ljava/util/List;Ljava/util/List;)V

    .line 305
    .line 306
    .line 307
    iget-object v0, p0, Lcom/join/mgps/activity/SearchListActivity1;->adapter:Lcom/join/mgps/customview/e0;

    .line 308
    .line 309
    invoke-virtual {v0}, Landroidx/viewpager/widget/PagerAdapter;->notifyDataSetChanged()V

    .line 310
    .line 311
    .line 312
    iget-object v0, p0, Lcom/join/mgps/activity/SearchListActivity1;->tabLayout:Lcom/google/android/material/tabs/TabLayout;

    .line 313
    .line 314
    iget-object v1, p0, Lcom/join/mgps/activity/SearchListActivity1;->viewPager:Landroidx/viewpager/widget/ViewPager;

    .line 315
    .line 316
    invoke-virtual {v0, v1}, Lcom/google/android/material/tabs/TabLayout;->setupWithViewPager(Landroidx/viewpager/widget/ViewPager;)V

    .line 317
    .line 318
    .line 319
    invoke-direct {p0}, Lcom/join/mgps/activity/SearchListActivity1;->getView()V

    .line 320
    .line 321
    .line 322
    iget-object v0, p0, Lcom/join/mgps/activity/SearchListActivity1;->tabLayout:Lcom/google/android/material/tabs/TabLayout;

    .line 323
    .line 324
    new-instance v1, Lcom/join/mgps/activity/SearchListActivity1$g;

    .line 325
    .line 326
    invoke-direct {v1, p0}, Lcom/join/mgps/activity/SearchListActivity1$g;-><init>(Lcom/join/mgps/activity/SearchListActivity1;)V

    .line 327
    .line 328
    .line 329
    invoke-virtual {v0, v1}, Lcom/google/android/material/tabs/TabLayout;->h(Lcom/google/android/material/tabs/TabLayout$d;)V

    .line 330
    .line 331
    .line 332
    iget-object v0, p0, Lcom/join/mgps/activity/SearchListActivity1;->tabLayout:Lcom/google/android/material/tabs/TabLayout;

    .line 333
    .line 334
    const/4 v1, 0x0

    .line 335
    invoke-virtual {v0, v1}, Lcom/google/android/material/tabs/TabLayout;->D(I)Lcom/google/android/material/tabs/TabLayout$g;

    .line 336
    .line 337
    .line 338
    move-result-object v1

    .line 339
    invoke-virtual {v0, v1}, Lcom/google/android/material/tabs/TabLayout;->R(Lcom/google/android/material/tabs/TabLayout$g;)V

    .line 340
    .line 341
    .line 342
    iget-object v0, p0, Lcom/join/mgps/activity/SearchListActivity1;->stringList:Ljava/util/List;

    .line 343
    .line 344
    iget v1, p0, Lcom/join/mgps/activity/SearchListActivity1;->currentTab:I

    .line 345
    .line 346
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 347
    .line 348
    .line 349
    move-result-object v0

    .line 350
    const-string v1, "\u6e38\u620f"

    .line 351
    .line 352
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 353
    .line 354
    .line 355
    move-result v0

    .line 356
    if-nez v0, :cond_2

    .line 357
    .line 358
    iget-object v0, p0, Lcom/join/mgps/activity/SearchListActivity1;->iv_filter:Landroid/widget/ImageView;

    .line 359
    .line 360
    const/16 v1, 0x8

    .line 361
    .line 362
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 363
    .line 364
    .line 365
    :cond_2
    iget v0, p0, Lcom/join/mgps/activity/SearchListActivity1;->currentTab:I

    .line 366
    .line 367
    invoke-virtual {p0, v0}, Lcom/join/mgps/activity/SearchListActivity1;->setTab(I)V

    .line 368
    .line 369
    .line 370
    return-void
.end method

.method public isNeedLoad(Ljava/lang/String;)Z
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "keyword"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/SearchListActivity1;->keyword:Ljava/lang/String;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    if-eqz p1, :cond_0

    .line 6
    .line 7
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 8
    .line 9
    .line 10
    move-result p1

    .line 11
    if-nez p1, :cond_0

    .line 12
    .line 13
    const/4 p1, 0x1

    .line 14
    return p1

    .line 15
    :cond_0
    const/4 p1, 0x0

    .line 16
    return p1
.end method

.method public keyword()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/SearchListActivity1;->input:Landroid/widget/EditText;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    iput-object v0, p0, Lcom/join/mgps/activity/SearchListActivity1;->keyword:Ljava/lang/String;

    .line 14
    .line 15
    :cond_0
    iget-object v0, p0, Lcom/join/mgps/activity/SearchListActivity1;->keyword:Ljava/lang/String;

    .line 16
    .line 17
    return-object v0
.end method

.method loading()V
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/join/mgps/activity/SearchListActivity1;->keyword()Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    iput-object v0, p0, Lcom/join/mgps/activity/SearchListActivity1;->keyword:Ljava/lang/String;

    .line 6
    .line 7
    const/4 v0, 0x1

    .line 8
    const/4 v1, 0x0

    .line 9
    invoke-virtual {p0, v0, v1}, Lcom/join/mgps/activity/SearchListActivity1;->getSpecialZoneInfo(IZ)V

    .line 10
    .line 11
    .line 12
    return-void
.end method

.method loadingRefresh()V
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/join/mgps/activity/SearchListActivity1;->keyword()Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    iput-object v0, p0, Lcom/join/mgps/activity/SearchListActivity1;->keyword:Ljava/lang/String;

    .line 6
    .line 7
    iget-object v0, p0, Lcom/join/mgps/activity/SearchListActivity1;->adapter:Lcom/join/mgps/customview/e0;

    .line 8
    .line 9
    if-eqz v0, :cond_0

    .line 10
    .line 11
    iget-object v1, p0, Lcom/join/mgps/activity/SearchListActivity1;->viewPager:Landroidx/viewpager/widget/ViewPager;

    .line 12
    .line 13
    invoke-virtual {v1}, Landroidx/viewpager/widget/ViewPager;->getCurrentItem()I

    .line 14
    .line 15
    .line 16
    move-result v1

    .line 17
    invoke-virtual {v0, v1}, Lcom/join/mgps/customview/e0;->getItem(I)Landroidx/fragment/app/Fragment;

    .line 18
    .line 19
    .line 20
    move-result-object v0

    .line 21
    instance-of v0, v0, Lcom/join/mgps/callbacks/n;

    .line 22
    .line 23
    if-eqz v0, :cond_0

    .line 24
    .line 25
    iget-object v0, p0, Lcom/join/mgps/activity/SearchListActivity1;->adapter:Lcom/join/mgps/customview/e0;

    .line 26
    .line 27
    iget-object v1, p0, Lcom/join/mgps/activity/SearchListActivity1;->viewPager:Landroidx/viewpager/widget/ViewPager;

    .line 28
    .line 29
    invoke-virtual {v1}, Landroidx/viewpager/widget/ViewPager;->getCurrentItem()I

    .line 30
    .line 31
    .line 32
    move-result v1

    .line 33
    invoke-virtual {v0, v1}, Lcom/join/mgps/customview/e0;->getItem(I)Landroidx/fragment/app/Fragment;

    .line 34
    .line 35
    .line 36
    move-result-object v0

    .line 37
    check-cast v0, Lcom/join/mgps/callbacks/n;

    .line 38
    .line 39
    invoke-interface {v0}, Lcom/join/mgps/callbacks/n;->loading()V

    .line 40
    .line 41
    .line 42
    :cond_0
    return-void
.end method

.method loadingTags()V
    .locals 3
    .annotation build Lorg/androidannotations/annotations/Background;
    .end annotation

    .line 1
    invoke-static {p0}, Lcom/join/android/app/common/utils/m;->j(Landroid/content/Context;)Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    :try_start_0
    iget-object v0, p0, Lcom/join/mgps/activity/SearchListActivity1;->rpcClient:Lcom/join/mgps/rpc/e;

    .line 8
    .line 9
    invoke-static {p0}, Lcom/join/mgps/Util/RequestBeanUtil;->getInstance(Landroid/content/Context;)Lcom/join/mgps/Util/RequestBeanUtil;

    .line 10
    .line 11
    .line 12
    move-result-object v1

    .line 13
    const/4 v2, 0x1

    .line 14
    invoke-virtual {v1, v2, v2}, Lcom/join/mgps/Util/RequestBeanUtil;->getClassifyGameBean(II)Lcom/join/mgps/dto/CommonRequestBean;

    .line 15
    .line 16
    .line 17
    move-result-object v1

    .line 18
    invoke-interface {v0, v1}, Lcom/join/mgps/rpc/e;->h1(Lcom/join/mgps/dto/CommonRequestBean;)Lcom/join/mgps/dto/ResultMainBean;

    .line 19
    .line 20
    .line 21
    move-result-object v0

    .line 22
    if-eqz v0, :cond_0

    .line 23
    .line 24
    invoke-virtual {v0}, Lcom/join/mgps/dto/ResultMainBean;->getFlag()I

    .line 25
    .line 26
    .line 27
    move-result v1

    .line 28
    if-ne v1, v2, :cond_0

    .line 29
    .line 30
    invoke-virtual {v0}, Lcom/join/mgps/dto/ResultMainBean;->getMessages()Lcom/join/mgps/dto/ResultMessageBean;

    .line 31
    .line 32
    .line 33
    move-result-object v1

    .line 34
    if-eqz v1, :cond_0

    .line 35
    .line 36
    invoke-virtual {v0}, Lcom/join/mgps/dto/ResultMainBean;->getMessages()Lcom/join/mgps/dto/ResultMessageBean;

    .line 37
    .line 38
    .line 39
    move-result-object v0

    .line 40
    invoke-virtual {v0}, Lcom/join/mgps/dto/ResultMessageBean;->getData()Ljava/lang/Object;

    .line 41
    .line 42
    .line 43
    move-result-object v0

    .line 44
    check-cast v0, Lcom/join/mgps/dto/ClassfyTypeBean;

    .line 45
    .line 46
    invoke-virtual {p0, v0}, Lcom/join/mgps/activity/SearchListActivity1;->setClassifiesData(Lcom/join/mgps/dto/ClassfyTypeBean;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 47
    .line 48
    .line 49
    goto :goto_0

    .line 50
    :catch_0
    move-exception v0

    .line 51
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 52
    .line 53
    .line 54
    :cond_0
    :goto_0
    return-void
.end method

.method public onBackPressed()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/SearchListActivity1;->ll_filter:Landroid/widget/LinearLayout;

    .line 2
    .line 3
    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-nez v0, :cond_0

    .line 8
    .line 9
    const/4 v0, 0x1

    .line 10
    invoke-virtual {p0, v0}, Lcom/join/mgps/activity/SearchListActivity1;->hideTags(Z)V

    .line 11
    .line 12
    .line 13
    return-void

    .line 14
    :cond_0
    invoke-super {p0}, Landroidx/activity/ComponentActivity;->onBackPressed()V

    .line 15
    .line 16
    .line 17
    return-void
.end method

.method onClickFilter()V
    .locals 4
    .annotation build Lorg/androidannotations/annotations/Click;
        value = {
            0x7f0a0a36
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/SearchListActivity1;->ll_filter:Landroid/widget/LinearLayout;

    .line 2
    .line 3
    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-nez v0, :cond_0

    .line 8
    .line 9
    const/4 v0, 0x1

    .line 10
    invoke-virtual {p0, v0}, Lcom/join/mgps/activity/SearchListActivity1;->hideTags(Z)V

    .line 11
    .line 12
    .line 13
    goto :goto_0

    .line 14
    :cond_0
    iget-object v0, p0, Lcom/join/mgps/activity/SearchListActivity1;->ll_filter:Landroid/widget/LinearLayout;

    .line 15
    .line 16
    new-instance v1, Lcom/join/mgps/activity/SearchListActivity1$h;

    .line 17
    .line 18
    invoke-direct {v1, p0}, Lcom/join/mgps/activity/SearchListActivity1$h;-><init>(Lcom/join/mgps/activity/SearchListActivity1;)V

    .line 19
    .line 20
    .line 21
    const-wide/16 v2, 0xc8

    .line 22
    .line 23
    invoke-virtual {v0, v1, v2, v3}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 24
    .line 25
    .line 26
    :goto_0
    return-void
.end method

.method onClickFilterClose()V
    .locals 1
    .annotation build Lorg/androidannotations/annotations/Click;
        value = {
            0x7f0a1966
        }
    .end annotation

    .line 1
    const/4 v0, 0x0

    .line 2
    invoke-virtual {p0, v0}, Lcom/join/mgps/activity/SearchListActivity1;->hideTags(Z)V

    .line 3
    .line 4
    .line 5
    return-void
.end method

.method onClickFilterConfirm()V
    .locals 1
    .annotation build Lorg/androidannotations/annotations/Click;
        value = {
            0x7f0a1967
        }
    .end annotation

    .line 1
    const/4 v0, 0x1

    .line 2
    invoke-virtual {p0, v0}, Lcom/join/mgps/activity/SearchListActivity1;->hideTags(Z)V

    .line 3
    .line 4
    .line 5
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "savedInstanceState"
        }
    .end annotation

    .line 1
    invoke-super {p0, p1}, Lcom/BaseAppCompatActivity;->onCreate(Landroid/os/Bundle;)V

    .line 2
    .line 3
    .line 4
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    .line 5
    .line 6
    .line 7
    move-result-object p1

    .line 8
    const/4 v0, 0x2

    .line 9
    invoke-virtual {p1, v0}, Landroid/view/Window;->setSoftInputMode(I)V

    .line 10
    .line 11
    .line 12
    return-void
.end method

.method protected onDestroy()V
    .locals 1

    .line 1
    invoke-static {}, Lcom/join/mgps/Util/j0;->a()Lcom/join/mgps/Util/j0;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0, p0}, Lcom/join/mgps/Util/j0;->e(Ljava/lang/Object;)V

    .line 6
    .line 7
    .line 8
    invoke-super {p0}, Lcom/BaseAppCompatActivity;->onDestroy()V

    .line 9
    .line 10
    .line 11
    return-void
.end method

.method public onEventMainThread(Lcom/join/mgps/event/r;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "downloadTaskEvent"
        }
    .end annotation

    .annotation runtime Lorg/greenrobot/eventbus/Subscribe;
        threadMode = .enum Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    .line 1
    invoke-virtual {p1}, Lcom/join/mgps/event/r;->a()Lcom/github/snowdream/android/app/downloader/DownloadTask;

    .line 2
    .line 3
    .line 4
    sget-object v0, Lcom/join/kotlin/utils/DlTaskManager;->INSTANCE:Lcom/join/kotlin/utils/DlTaskManager;

    .line 5
    .line 6
    new-instance v1, Lcom/join/mgps/activity/SearchListActivity1$a;

    .line 7
    .line 8
    invoke-direct {v1, p0}, Lcom/join/mgps/activity/SearchListActivity1$a;-><init>(Lcom/join/mgps/activity/SearchListActivity1;)V

    .line 9
    .line 10
    .line 11
    invoke-virtual {v0, p1, v1}, Lcom/join/kotlin/utils/DlTaskManager;->onNotifyDataSet(Lcom/join/mgps/event/r;Lkotlin/jvm/functions/Function0;)V

    .line 12
    .line 13
    .line 14
    invoke-virtual {p1}, Lcom/join/mgps/event/r;->c()I

    .line 15
    .line 16
    .line 17
    move-result p1

    .line 18
    const/16 v0, 0x8

    .line 19
    .line 20
    if-eq p1, v0, :cond_0

    .line 21
    .line 22
    goto :goto_0

    .line 23
    :cond_0
    iget-boolean p1, p0, Lcom/join/mgps/activity/SearchListActivity1;->SCROLLING:Z

    .line 24
    .line 25
    if-nez p1, :cond_1

    .line 26
    .line 27
    invoke-direct {p0}, Lcom/join/mgps/activity/SearchListActivity1;->updateProgressPartly()V

    .line 28
    .line 29
    .line 30
    :cond_1
    :goto_0
    return-void
.end method

.method protected onNewIntent(Landroid/content/Intent;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "intent"
        }
    .end annotation

    .line 1
    invoke-super {p0, p1}, Lcom/BaseAppCompatActivity;->onNewIntent(Landroid/content/Intent;)V

    .line 2
    .line 3
    .line 4
    invoke-virtual {p0, p1}, Landroid/app/Activity;->setIntent(Landroid/content/Intent;)V

    .line 5
    .line 6
    .line 7
    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    .line 8
    .line 9
    .line 10
    move-result-object p1

    .line 11
    if-eqz p1, :cond_0

    .line 12
    .line 13
    const-string v0, "keyword"

    .line 14
    .line 15
    invoke-virtual {p1, v0}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 16
    .line 17
    .line 18
    move-result-object p1

    .line 19
    invoke-static {p1}, Lcom/join/mgps/Util/t2;->i(Ljava/lang/String;)Z

    .line 20
    .line 21
    .line 22
    move-result v0

    .line 23
    if-eqz v0, :cond_0

    .line 24
    .line 25
    const/4 v0, 0x0

    .line 26
    iput-boolean v0, p0, Lcom/join/mgps/activity/SearchListActivity1;->showAuto:Z

    .line 27
    .line 28
    iget-object v0, p0, Lcom/join/mgps/activity/SearchListActivity1;->input:Landroid/widget/EditText;

    .line 29
    .line 30
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 31
    .line 32
    .line 33
    invoke-virtual {p0}, Lcom/join/mgps/activity/SearchListActivity1;->loading()V

    .line 34
    .line 35
    .line 36
    :cond_0
    return-void
.end method

.method protected onResume()V
    .locals 0

    .line 1
    invoke-super {p0}, Lcom/BaseAppCompatActivity;->onResume()V

    .line 2
    .line 3
    .line 4
    invoke-static {p0}, Lcom/join/mgps/Util/UtilsMy;->N4(Landroid/content/Context;)V

    .line 5
    .line 6
    .line 7
    return-void
.end method

.method search()V
    .locals 3
    .annotation build Lorg/androidannotations/annotations/Click;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/SearchListActivity1;->autoListView:Landroid/widget/ListView;

    .line 2
    .line 3
    const/16 v1, 0x8

    .line 4
    .line 5
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 6
    .line 7
    .line 8
    const-string v0, ""

    .line 9
    .line 10
    iput-object v0, p0, Lcom/join/mgps/activity/SearchListActivity1;->game_id:Ljava/lang/String;

    .line 11
    .line 12
    :try_start_0
    iget-object v0, p0, Lcom/join/mgps/activity/SearchListActivity1;->input:Landroid/widget/EditText;

    .line 13
    .line 14
    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    .line 15
    .line 16
    .line 17
    move-result-object v0

    .line 18
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 19
    .line 20
    .line 21
    move-result-object v0

    .line 22
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    .line 23
    .line 24
    .line 25
    move-result v0

    .line 26
    if-lez v0, :cond_0

    .line 27
    .line 28
    iget-object v0, p0, Lcom/join/mgps/activity/SearchListActivity1;->input:Landroid/widget/EditText;

    .line 29
    .line 30
    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    .line 31
    .line 32
    .line 33
    move-result-object v0

    .line 34
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 35
    .line 36
    .line 37
    move-result-object v0

    .line 38
    invoke-direct {p0, v0}, Lcom/join/mgps/activity/SearchListActivity1;->saveRecordBean(Ljava/lang/String;)V

    .line 39
    .line 40
    .line 41
    invoke-virtual {p0}, Lcom/join/mgps/activity/SearchListActivity1;->loading()V

    .line 42
    .line 43
    .line 44
    :cond_0
    iget-object v0, p0, Lcom/join/mgps/activity/SearchListActivity1;->input:Landroid/widget/EditText;

    .line 45
    .line 46
    invoke-virtual {v0}, Landroid/view/View;->clearFocus()V

    .line 47
    .line 48
    .line 49
    iget-object v0, p0, Lcom/join/mgps/activity/SearchListActivity1;->input:Landroid/widget/EditText;

    .line 50
    .line 51
    invoke-static {v0}, Lr7/a;->b(Landroid/view/View;)V

    .line 52
    .line 53
    .line 54
    const-string v0, "input_method"

    .line 55
    .line 56
    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 57
    .line 58
    .line 59
    move-result-object v0

    .line 60
    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    .line 61
    .line 62
    invoke-virtual {p0}, Landroid/app/Activity;->getCurrentFocus()Landroid/view/View;

    .line 63
    .line 64
    .line 65
    move-result-object v1

    .line 66
    invoke-virtual {v1}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    .line 67
    .line 68
    .line 69
    move-result-object v1

    .line 70
    const/4 v2, 0x2

    .line 71
    invoke-virtual {v0, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 72
    .line 73
    .line 74
    goto :goto_0

    .line 75
    :catch_0
    move-exception v0

    .line 76
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 77
    .line 78
    .line 79
    :goto_0
    return-void
.end method

.method setClassifiesData(Lcom/join/mgps/dto/ClassfyTypeBean;)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "data"
        }
    .end annotation

    .annotation build Lorg/androidannotations/annotations/UiThread;
    .end annotation

    .line 1
    if-nez p1, :cond_0

    .line 2
    .line 3
    return-void

    .line 4
    :cond_0
    iget-object v0, p0, Lcom/join/mgps/activity/SearchListActivity1;->gameTagBeanList:Ljava/util/List;

    .line 5
    .line 6
    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 7
    .line 8
    .line 9
    iget-object v0, p0, Lcom/join/mgps/activity/SearchListActivity1;->classifiesData:Ljava/util/List;

    .line 10
    .line 11
    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 12
    .line 13
    .line 14
    new-instance v0, Lcom/join/mgps/dto/ClassifyGameTagBean;

    .line 15
    .line 16
    invoke-direct {v0}, Lcom/join/mgps/dto/ClassifyGameTagBean;-><init>()V

    .line 17
    .line 18
    .line 19
    const/4 v1, 0x0

    .line 20
    invoke-virtual {v0, v1}, Lcom/join/mgps/dto/ClassifyGameTagBean;->setId(I)V

    .line 21
    .line 22
    .line 23
    const-string v2, "\u5168\u90e8"

    .line 24
    .line 25
    invoke-virtual {v0, v2}, Lcom/join/mgps/dto/ClassifyGameTagBean;->setTitle(Ljava/lang/String;)V

    .line 26
    .line 27
    .line 28
    iget-object v2, p0, Lcom/join/mgps/activity/SearchListActivity1;->gameTagBeanList:Ljava/util/List;

    .line 29
    .line 30
    invoke-interface {v2, v1, v0}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 31
    .line 32
    .line 33
    iget-object v0, p0, Lcom/join/mgps/activity/SearchListActivity1;->gameTagBeanList:Ljava/util/List;

    .line 34
    .line 35
    invoke-virtual {p1}, Lcom/join/mgps/dto/ClassfyTypeBean;->getGame_type()Ljava/util/List;

    .line 36
    .line 37
    .line 38
    move-result-object p1

    .line 39
    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 40
    .line 41
    .line 42
    iget-object p1, p0, Lcom/join/mgps/activity/SearchListActivity1;->gameTagBeanList:Ljava/util/List;

    .line 43
    .line 44
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 45
    .line 46
    .line 47
    move-result-object p1

    .line 48
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 49
    .line 50
    .line 51
    move-result v0

    .line 52
    if-eqz v0, :cond_1

    .line 53
    .line 54
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 55
    .line 56
    .line 57
    move-result-object v0

    .line 58
    check-cast v0, Lcom/join/mgps/dto/ClassifyGameTagBean;

    .line 59
    .line 60
    iget-object v1, p0, Lcom/join/mgps/activity/SearchListActivity1;->classifiesData:Ljava/util/List;

    .line 61
    .line 62
    invoke-virtual {v0}, Lcom/join/mgps/dto/ClassifyGameTagBean;->getTitle()Ljava/lang/String;

    .line 63
    .line 64
    .line 65
    move-result-object v0

    .line 66
    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 67
    .line 68
    .line 69
    goto :goto_0

    .line 70
    :cond_1
    iget-object p1, p0, Lcom/join/mgps/activity/SearchListActivity1;->classifies:Lcom/zhy/view/flowlayout/TagFlowLayout3;

    .line 71
    .line 72
    iget-object v0, p0, Lcom/join/mgps/activity/SearchListActivity1;->classifiesData:Ljava/util/List;

    .line 73
    .line 74
    invoke-virtual {p1, v0}, Lcom/zhy/view/flowlayout/TagFlowLayout3;->setData(Ljava/util/List;)V

    .line 75
    .line 76
    .line 77
    return-void
.end method

.method public setTab(I)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "position"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/SearchListActivity1;->viewPager:Landroidx/viewpager/widget/ViewPager;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0, p1}, Landroidx/viewpager/widget/ViewPager;->setCurrentItem(I)V

    .line 6
    .line 7
    .line 8
    :cond_0
    return-void
.end method

.method public setTabIndicator(I)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "position"
        }
    .end annotation

    .line 1
    iput p1, p0, Lcom/join/mgps/activity/SearchListActivity1;->currentTab:I

    .line 2
    .line 3
    const/4 v0, 0x1

    .line 4
    if-nez p1, :cond_1

    .line 5
    .line 6
    iget-object p1, p0, Lcom/join/mgps/activity/SearchListActivity1;->tagBackground:Landroid/view/View;

    .line 7
    .line 8
    invoke-virtual {p1}, Landroid/view/View;->getVisibility()I

    .line 9
    .line 10
    .line 11
    move-result p1

    .line 12
    if-nez p1, :cond_0

    .line 13
    .line 14
    invoke-virtual {p0, v0}, Lcom/join/mgps/activity/SearchListActivity1;->hideTags(Z)V

    .line 15
    .line 16
    .line 17
    :cond_0
    iget-object p1, p0, Lcom/join/mgps/activity/SearchListActivity1;->iv_filter:Landroid/widget/ImageView;

    .line 18
    .line 19
    const/4 v0, 0x0

    .line 20
    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 21
    .line 22
    .line 23
    goto :goto_0

    .line 24
    :cond_1
    iget-object p1, p0, Lcom/join/mgps/activity/SearchListActivity1;->tagBackground:Landroid/view/View;

    .line 25
    .line 26
    invoke-virtual {p1}, Landroid/view/View;->getVisibility()I

    .line 27
    .line 28
    .line 29
    move-result p1

    .line 30
    if-nez p1, :cond_2

    .line 31
    .line 32
    invoke-virtual {p0, v0}, Lcom/join/mgps/activity/SearchListActivity1;->hideTags(Z)V

    .line 33
    .line 34
    .line 35
    :cond_2
    iget-object p1, p0, Lcom/join/mgps/activity/SearchListActivity1;->iv_filter:Landroid/widget/ImageView;

    .line 36
    .line 37
    const/16 v0, 0x8

    .line 38
    .line 39
    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 40
    .line 41
    .line 42
    :goto_0
    return-void
.end method

.method public showAutoList()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/SearchListActivity1;->autoListView:Landroid/widget/ListView;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    const/4 v1, 0x0

    .line 6
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 7
    .line 8
    .line 9
    :cond_0
    return-void
.end method

.method showTags(I)V
    .locals 6
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "type"
        }
    .end annotation

    .annotation build Lorg/androidannotations/annotations/UiThread;
    .end annotation

    .line 1
    iget-object p1, p0, Lcom/join/mgps/activity/SearchListActivity1;->ll_filter:Landroid/widget/LinearLayout;

    .line 2
    .line 3
    const/4 v0, 0x2

    .line 4
    new-array v1, v0, [F

    .line 5
    .line 6
    fill-array-data v1, :array_0

    .line 7
    .line 8
    .line 9
    const-string v2, "scaleY"

    .line 10
    .line 11
    invoke-static {p1, v2, v1}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    .line 12
    .line 13
    .line 14
    move-result-object p1

    .line 15
    iget-object v1, p0, Lcom/join/mgps/activity/SearchListActivity1;->ll_filter:Landroid/widget/LinearLayout;

    .line 16
    .line 17
    const/4 v2, 0x0

    .line 18
    invoke-virtual {v1, v2}, Landroid/view/View;->setPivotY(F)V

    .line 19
    .line 20
    .line 21
    iget-object v1, p0, Lcom/join/mgps/activity/SearchListActivity1;->ll_filter:Landroid/widget/LinearLayout;

    .line 22
    .line 23
    new-array v2, v0, [F

    .line 24
    .line 25
    fill-array-data v2, :array_1

    .line 26
    .line 27
    .line 28
    const-string v3, "alpha"

    .line 29
    .line 30
    invoke-static {v1, v3, v2}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    .line 31
    .line 32
    .line 33
    move-result-object v1

    .line 34
    iget-object v2, p0, Lcom/join/mgps/activity/SearchListActivity1;->tagBackground:Landroid/view/View;

    .line 35
    .line 36
    new-array v4, v0, [F

    .line 37
    .line 38
    fill-array-data v4, :array_2

    .line 39
    .line 40
    .line 41
    invoke-static {v2, v3, v4}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    .line 42
    .line 43
    .line 44
    move-result-object v2

    .line 45
    new-instance v3, Landroid/animation/AnimatorSet;

    .line 46
    .line 47
    invoke-direct {v3}, Landroid/animation/AnimatorSet;-><init>()V

    .line 48
    .line 49
    .line 50
    const-wide/16 v4, 0xc8

    .line 51
    .line 52
    invoke-virtual {v3, v4, v5}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    .line 53
    .line 54
    .line 55
    new-instance v4, Lcom/join/mgps/activity/SearchListActivity1$i;

    .line 56
    .line 57
    invoke-direct {v4, p0}, Lcom/join/mgps/activity/SearchListActivity1$i;-><init>(Lcom/join/mgps/activity/SearchListActivity1;)V

    .line 58
    .line 59
    .line 60
    invoke-virtual {v3, v4}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 61
    .line 62
    .line 63
    const/4 v4, 0x3

    .line 64
    new-array v4, v4, [Landroid/animation/Animator;

    .line 65
    .line 66
    const/4 v5, 0x0

    .line 67
    aput-object p1, v4, v5

    .line 68
    .line 69
    const/4 p1, 0x1

    .line 70
    aput-object v1, v4, p1

    .line 71
    .line 72
    aput-object v2, v4, v0

    .line 73
    .line 74
    invoke-virtual {v3, v4}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    .line 75
    .line 76
    .line 77
    invoke-virtual {v3}, Landroid/animation/AnimatorSet;->start()V

    .line 78
    .line 79
    .line 80
    return-void

    .line 81
    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data

    .line 82
    .line 83
    .line 84
    .line 85
    .line 86
    .line 87
    .line 88
    .line 89
    :array_1
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data

    .line 90
    .line 91
    .line 92
    .line 93
    .line 94
    .line 95
    .line 96
    .line 97
    :array_2
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method

.method updateSpecialZoneInfo(Lcom/join/mgps/dto/SearchGameListBean;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "listBean"
        }
    .end annotation

    .annotation build Lorg/androidannotations/annotations/UiThread;
    .end annotation

    .line 1
    invoke-virtual {p1}, Lcom/join/mgps/dto/SearchGameListBean;->getSpecial_zone_info()Lcom/join/mgps/dto/SearchGameListSpecialZoneBean;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    const/4 v1, 0x4

    .line 6
    if-eqz v0, :cond_0

    .line 7
    .line 8
    invoke-virtual {p1}, Lcom/join/mgps/dto/SearchGameListBean;->getSpecial_zone_info()Lcom/join/mgps/dto/SearchGameListSpecialZoneBean;

    .line 9
    .line 10
    .line 11
    move-result-object p1

    .line 12
    iput-object p1, p0, Lcom/join/mgps/activity/SearchListActivity1;->special_zone_info:Lcom/join/mgps/dto/SearchGameListSpecialZoneBean;

    .line 13
    .line 14
    iget-object v0, p0, Lcom/join/mgps/activity/SearchListActivity1;->str:[Ljava/lang/String;

    .line 15
    .line 16
    invoke-virtual {p1}, Lcom/join/mgps/dto/SearchGameListSpecialZoneBean;->getName()Ljava/lang/String;

    .line 17
    .line 18
    .line 19
    move-result-object p1

    .line 20
    aput-object p1, v0, v1

    .line 21
    .line 22
    goto :goto_0

    .line 23
    :cond_0
    const/4 p1, 0x0

    .line 24
    iput-object p1, p0, Lcom/join/mgps/activity/SearchListActivity1;->special_zone_info:Lcom/join/mgps/dto/SearchGameListSpecialZoneBean;

    .line 25
    .line 26
    iget-object p1, p0, Lcom/join/mgps/activity/SearchListActivity1;->str:[Ljava/lang/String;

    .line 27
    .line 28
    const-string v0, ""

    .line 29
    .line 30
    aput-object v0, p1, v1

    .line 31
    .line 32
    :goto_0
    return-void
.end method

.method updateUI(Ljava/util/List;Ljava/lang/String;)V
    .locals 6
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "searchAutoDataBeans",
            "KEY"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/join/mgps/dto/SearchAutoDataBean;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .annotation build Lorg/androidannotations/annotations/UiThread;
    .end annotation

    .line 1
    iget-object p2, p0, Lcom/join/mgps/activity/SearchListActivity1;->searchAutoDataBeanList:Ljava/util/List;

    .line 2
    .line 3
    invoke-interface {p2}, Ljava/util/List;->clear()V

    .line 4
    .line 5
    .line 6
    iget-object p2, p0, Lcom/join/mgps/activity/SearchListActivity1;->searchAutoBean:Lcom/join/mgps/dto/ResponseModel;

    .line 7
    .line 8
    const/4 v0, 0x1

    .line 9
    const/4 v1, 0x0

    .line 10
    if-eqz p2, :cond_2

    .line 11
    .line 12
    invoke-virtual {p2}, Lcom/join/mgps/dto/ResponseModel;->getData()Ljava/lang/Object;

    .line 13
    .line 14
    .line 15
    move-result-object p2

    .line 16
    if-eqz p2, :cond_2

    .line 17
    .line 18
    iget-object p2, p0, Lcom/join/mgps/activity/SearchListActivity1;->searchAutoBean:Lcom/join/mgps/dto/ResponseModel;

    .line 19
    .line 20
    invoke-virtual {p2}, Lcom/join/mgps/dto/ResponseModel;->getData()Ljava/lang/Object;

    .line 21
    .line 22
    .line 23
    move-result-object p2

    .line 24
    check-cast p2, Lcom/join/mgps/activity/search/SearchAutoDataV1;

    .line 25
    .line 26
    invoke-virtual {p2}, Lcom/join/mgps/activity/search/SearchAutoDataV1;->getGame_list()Ljava/util/List;

    .line 27
    .line 28
    .line 29
    move-result-object p2

    .line 30
    if-eqz p2, :cond_2

    .line 31
    .line 32
    iget-object p2, p0, Lcom/join/mgps/activity/SearchListActivity1;->gameDownLists:Ljava/util/List;

    .line 33
    .line 34
    invoke-interface {p2}, Ljava/util/List;->clear()V

    .line 35
    .line 36
    .line 37
    iget-object p2, p0, Lcom/join/mgps/activity/SearchListActivity1;->searchAutoBean:Lcom/join/mgps/dto/ResponseModel;

    .line 38
    .line 39
    invoke-virtual {p2}, Lcom/join/mgps/dto/ResponseModel;->getData()Ljava/lang/Object;

    .line 40
    .line 41
    .line 42
    move-result-object p2

    .line 43
    check-cast p2, Lcom/join/mgps/activity/search/SearchAutoDataV1;

    .line 44
    .line 45
    invoke-virtual {p2}, Lcom/join/mgps/activity/search/SearchAutoDataV1;->getGame_list()Ljava/util/List;

    .line 46
    .line 47
    .line 48
    move-result-object p2

    .line 49
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 50
    .line 51
    .line 52
    move-result-object p2

    .line 53
    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    .line 54
    .line 55
    .line 56
    move-result v2

    .line 57
    if-eqz v2, :cond_0

    .line 58
    .line 59
    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 60
    .line 61
    .line 62
    move-result-object v2

    .line 63
    check-cast v2, Lcom/join/mgps/dto/CommonGameInfoBean;

    .line 64
    .line 65
    const/16 v3, 0x67

    .line 66
    .line 67
    invoke-virtual {v2, v3}, Lcom/join/mgps/dto/DownloadPointBase;->set_from(I)V

    .line 68
    .line 69
    .line 70
    const/16 v3, 0x70

    .line 71
    .line 72
    invoke-virtual {v2, v3}, Lcom/join/mgps/dto/DownloadPointBase;->set_from_type(I)V

    .line 73
    .line 74
    .line 75
    const-string v3, "0"

    .line 76
    .line 77
    invoke-virtual {v2, v3}, Lcom/join/mgps/dto/DownloadPointBase;->setReMarks(Ljava/lang/String;)V

    .line 78
    .line 79
    .line 80
    iget-object v3, p0, Lcom/join/mgps/activity/SearchListActivity1;->searchAutoDataBeanList:Ljava/util/List;

    .line 81
    .line 82
    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 83
    .line 84
    .line 85
    iget-object v3, p0, Lcom/join/mgps/activity/SearchListActivity1;->gameDownLists:Ljava/util/List;

    .line 86
    .line 87
    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 88
    .line 89
    .line 90
    goto :goto_0

    .line 91
    :cond_0
    iget-object p2, p0, Lcom/join/mgps/activity/SearchListActivity1;->gameDownLists:Ljava/util/List;

    .line 92
    .line 93
    invoke-direct {p0, p2}, Lcom/join/mgps/activity/SearchListActivity1;->updateDowStateList(Ljava/util/List;)V

    .line 94
    .line 95
    .line 96
    iget-object p2, p0, Lcom/join/mgps/activity/SearchListActivity1;->searchAutoBean:Lcom/join/mgps/dto/ResponseModel;

    .line 97
    .line 98
    invoke-virtual {p2}, Lcom/join/mgps/dto/ResponseModel;->getData()Ljava/lang/Object;

    .line 99
    .line 100
    .line 101
    move-result-object p2

    .line 102
    check-cast p2, Lcom/join/mgps/activity/search/SearchAutoDataV1;

    .line 103
    .line 104
    invoke-virtual {p2}, Lcom/join/mgps/activity/search/SearchAutoDataV1;->getAd_info()Lcom/join/mgps/activity/search/SearchAutoAdData;

    .line 105
    .line 106
    .line 107
    move-result-object p2

    .line 108
    if-eqz p2, :cond_2

    .line 109
    .line 110
    invoke-virtual {p2}, Lcom/join/mgps/activity/search/SearchAutoAdData;->getFirstAd()Lcom/join/mgps/dto/CommonGameInfoBean;

    .line 111
    .line 112
    .line 113
    move-result-object v2

    .line 114
    if-eqz v2, :cond_1

    .line 115
    .line 116
    invoke-virtual {p2}, Lcom/join/mgps/activity/search/SearchAutoAdData;->getFirstAd()Lcom/join/mgps/dto/CommonGameInfoBean;

    .line 117
    .line 118
    .line 119
    move-result-object v2

    .line 120
    invoke-virtual {v2, v1}, Lcom/join/mgps/dto/CommonGameInfoBean;->setAdInfo(Z)V

    .line 121
    .line 122
    .line 123
    iget-object v3, p0, Lcom/join/mgps/activity/SearchListActivity1;->searchAutoDataBeanList:Ljava/util/List;

    .line 124
    .line 125
    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 126
    .line 127
    .line 128
    sget-object v3, Lcom/papa/sim/statistic/Event;->searchThinkAdWordExp:Lcom/papa/sim/statistic/Event;

    .line 129
    .line 130
    invoke-virtual {v2}, Lcom/join/mgps/dto/CommonGameInfoBean;->getIntentDataBean()Lcom/join/mgps/Util/IntentDateBean;

    .line 131
    .line 132
    .line 133
    move-result-object v4

    .line 134
    invoke-virtual {v4}, Lcom/join/mgps/Util/IntentDateBean;->getLink_type_val()Ljava/lang/String;

    .line 135
    .line 136
    .line 137
    move-result-object v4

    .line 138
    invoke-virtual {v2}, Lcom/join/mgps/dto/CommonGameInfoBean;->getTitle()Ljava/lang/String;

    .line 139
    .line 140
    .line 141
    move-result-object v2

    .line 142
    const-string v5, "1"

    .line 143
    .line 144
    invoke-direct {p0, v3, v5, v4, v2}, Lcom/join/mgps/activity/SearchListActivity1;->sendAutoListPoint(Lcom/papa/sim/statistic/Event;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 145
    .line 146
    .line 147
    :cond_1
    invoke-virtual {p2}, Lcom/join/mgps/activity/search/SearchAutoAdData;->getSecondAd()Lcom/join/mgps/dto/CommonGameInfoBean;

    .line 148
    .line 149
    .line 150
    move-result-object v2

    .line 151
    if-eqz v2, :cond_2

    .line 152
    .line 153
    invoke-virtual {p2}, Lcom/join/mgps/activity/search/SearchAutoAdData;->getSecondAd()Lcom/join/mgps/dto/CommonGameInfoBean;

    .line 154
    .line 155
    .line 156
    move-result-object p2

    .line 157
    invoke-virtual {p2, v0}, Lcom/join/mgps/dto/CommonGameInfoBean;->setAdInfo(Z)V

    .line 158
    .line 159
    .line 160
    iget-object v2, p0, Lcom/join/mgps/activity/SearchListActivity1;->searchAutoDataBeanList:Ljava/util/List;

    .line 161
    .line 162
    invoke-interface {v2, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 163
    .line 164
    .line 165
    sget-object v2, Lcom/papa/sim/statistic/Event;->searchThinkAdWordExp:Lcom/papa/sim/statistic/Event;

    .line 166
    .line 167
    invoke-virtual {p2}, Lcom/join/mgps/dto/CommonGameInfoBean;->getIntentDataBean()Lcom/join/mgps/Util/IntentDateBean;

    .line 168
    .line 169
    .line 170
    move-result-object v3

    .line 171
    invoke-virtual {v3}, Lcom/join/mgps/Util/IntentDateBean;->getLink_type_val()Ljava/lang/String;

    .line 172
    .line 173
    .line 174
    move-result-object v3

    .line 175
    invoke-virtual {p2}, Lcom/join/mgps/dto/CommonGameInfoBean;->getTitle()Ljava/lang/String;

    .line 176
    .line 177
    .line 178
    move-result-object p2

    .line 179
    const-string v4, "2"

    .line 180
    .line 181
    invoke-direct {p0, v2, v4, v3, p2}, Lcom/join/mgps/activity/SearchListActivity1;->sendAutoListPoint(Lcom/papa/sim/statistic/Event;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 182
    .line 183
    .line 184
    :cond_2
    if-eqz p1, :cond_3

    .line 185
    .line 186
    invoke-interface {p1}, Ljava/util/List;->size()I

    .line 187
    .line 188
    .line 189
    move-result p2

    .line 190
    if-lez p2, :cond_3

    .line 191
    .line 192
    iget-object p2, p0, Lcom/join/mgps/activity/SearchListActivity1;->searchAutoDataBeanList:Ljava/util/List;

    .line 193
    .line 194
    invoke-interface {p2, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 195
    .line 196
    .line 197
    :cond_3
    iget-object p1, p0, Lcom/join/mgps/activity/SearchListActivity1;->searchAutoDataBeanList:Ljava/util/List;

    .line 198
    .line 199
    if-eqz p1, :cond_5

    .line 200
    .line 201
    invoke-interface {p1}, Ljava/util/List;->size()I

    .line 202
    .line 203
    .line 204
    move-result p1

    .line 205
    if-gtz p1, :cond_4

    .line 206
    .line 207
    goto :goto_1

    .line 208
    :cond_4
    const/4 v0, 0x0

    .line 209
    :cond_5
    :goto_1
    iput-boolean v0, p0, Lcom/join/mgps/activity/SearchListActivity1;->isNeedRecommend:Z

    .line 210
    .line 211
    iget-object p1, p0, Lcom/join/mgps/activity/SearchListActivity1;->autoListView:Landroid/widget/ListView;

    .line 212
    .line 213
    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    .line 214
    .line 215
    .line 216
    iget-object p1, p0, Lcom/join/mgps/activity/SearchListActivity1;->searchSimpleAdapter:Lcom/join/mgps/activity/SearchListActivity1$k;

    .line 217
    .line 218
    invoke-virtual {p1}, Lcom/join/mgps/activity/SearchListActivity1$k;->notifyDataSetChanged()V

    .line 219
    .line 220
    .line 221
    return-void
.end method
