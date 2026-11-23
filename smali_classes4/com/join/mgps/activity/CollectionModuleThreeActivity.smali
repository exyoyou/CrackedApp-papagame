.class public Lcom/join/mgps/activity/CollectionModuleThreeActivity;
.super Lcom/BaseFragmentActivity;
.source "SourceFile"


# annotations
.annotation build Lorg/androidannotations/annotations/EActivity;
    value = 0x7f0d015f
.end annotation


# instance fields
.field collection_id:Ljava/lang/String;
    .annotation build Lorg/androidannotations/annotations/Extra;
    .end annotation
.end field

.field private context:Landroid/content/Context;

.field extBean:Lcom/join/mgps/dto/ExtBean;
    .annotation build Lorg/androidannotations/annotations/Extra;
    .end annotation
.end field

.field private fragmentManager:Landroidx/fragment/app/FragmentManager;

.field private game_count:I

.field img_iconback:Landroid/widget/ImageView;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field

.field loding_faile:Landroid/widget/LinearLayout;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field

.field loding_layout:Landroid/widget/LinearLayout;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field

.field private mBottomPages:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroidx/fragment/app/Fragment;",
            ">;"
        }
    .end annotation
.end field

.field mBottomVIewPager:Lcom/join/mgps/customview/MViewpagerV4;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field

.field private mPagerAdapter:Lcom/join/mgps/customview/e0;

.field private pn:I

.field relateLayoutRight:Landroid/widget/RelativeLayout;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field

.field relodingimag:Landroid/widget/ImageView;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field

.field rpcClient:Lcom/join/mgps/rpc/e;

.field private stringList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field textViewPosition:Landroid/widget/TextView;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field

.field textViewTime:Landroid/widget/TextView;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field

.field textViewTitle:Landroid/widget/TextView;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/BaseFragmentActivity;-><init>()V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x1

    .line 5
    iput v0, p0, Lcom/join/mgps/activity/CollectionModuleThreeActivity;->pn:I

    .line 6
    .line 7
    return-void
.end method

.method static synthetic access$000(Lcom/join/mgps/activity/CollectionModuleThreeActivity;)Ljava/util/List;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/join/mgps/activity/CollectionModuleThreeActivity;->stringList:Ljava/util/List;

    .line 2
    .line 3
    return-object p0
.end method

.method static synthetic access$100(Lcom/join/mgps/activity/CollectionModuleThreeActivity;)I
    .locals 0

    .line 1
    iget p0, p0, Lcom/join/mgps/activity/CollectionModuleThreeActivity;->game_count:I

    .line 2
    .line 3
    return p0
.end method


# virtual methods
.method afterViews()V
    .locals 4
    .annotation build Lorg/androidannotations/annotations/AfterViews;
    .end annotation

    .line 1
    invoke-static {}, Lcom/join/mgps/rpc/impl/d;->O1()Lcom/join/mgps/rpc/impl/d;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    iput-object v0, p0, Lcom/join/mgps/activity/CollectionModuleThreeActivity;->rpcClient:Lcom/join/mgps/rpc/e;

    .line 6
    .line 7
    :try_start_0
    iput-object p0, p0, Lcom/join/mgps/activity/CollectionModuleThreeActivity;->context:Landroid/content/Context;

    .line 8
    .line 9
    invoke-virtual {p0}, Landroidx/fragment/app/FragmentActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    iput-object v0, p0, Lcom/join/mgps/activity/CollectionModuleThreeActivity;->fragmentManager:Landroidx/fragment/app/FragmentManager;

    .line 14
    .line 15
    new-instance v0, Ljava/util/ArrayList;

    .line 16
    .line 17
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 18
    .line 19
    .line 20
    iput-object v0, p0, Lcom/join/mgps/activity/CollectionModuleThreeActivity;->stringList:Ljava/util/List;

    .line 21
    .line 22
    new-instance v0, Ljava/util/ArrayList;

    .line 23
    .line 24
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 25
    .line 26
    .line 27
    iput-object v0, p0, Lcom/join/mgps/activity/CollectionModuleThreeActivity;->mBottomPages:Ljava/util/ArrayList;

    .line 28
    .line 29
    new-instance v1, Lcom/join/mgps/customview/e0;

    .line 30
    .line 31
    iget-object v2, p0, Lcom/join/mgps/activity/CollectionModuleThreeActivity;->fragmentManager:Landroidx/fragment/app/FragmentManager;

    .line 32
    .line 33
    iget-object v3, p0, Lcom/join/mgps/activity/CollectionModuleThreeActivity;->stringList:Ljava/util/List;

    .line 34
    .line 35
    invoke-direct {v1, v2, v0, v3}, Lcom/join/mgps/customview/e0;-><init>(Landroidx/fragment/app/FragmentManager;Ljava/util/ArrayList;Ljava/util/List;)V

    .line 36
    .line 37
    .line 38
    iput-object v1, p0, Lcom/join/mgps/activity/CollectionModuleThreeActivity;->mPagerAdapter:Lcom/join/mgps/customview/e0;

    .line 39
    .line 40
    invoke-virtual {p0}, Lcom/join/mgps/activity/CollectionModuleThreeActivity;->showLoding()V

    .line 41
    .line 42
    .line 43
    iget-object v0, p0, Lcom/join/mgps/activity/CollectionModuleThreeActivity;->collection_id:Ljava/lang/String;

    .line 44
    .line 45
    if-eqz v0, :cond_0

    .line 46
    .line 47
    invoke-virtual {p0, v0}, Lcom/join/mgps/activity/CollectionModuleThreeActivity;->getCollectionData(Ljava/lang/String;)V

    .line 48
    .line 49
    .line 50
    goto :goto_0

    .line 51
    :cond_0
    invoke-virtual {p0}, Lcom/join/mgps/activity/CollectionModuleThreeActivity;->showLodingFailed()V

    .line 52
    .line 53
    .line 54
    :goto_0
    iget-object v0, p0, Lcom/join/mgps/activity/CollectionModuleThreeActivity;->mBottomVIewPager:Lcom/join/mgps/customview/MViewpagerV4;

    .line 55
    .line 56
    const/4 v1, 0x0

    .line 57
    invoke-virtual {v0, v1}, Lcom/join/mgps/customview/MViewpagerV4;->setIntercept(Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 58
    .line 59
    .line 60
    :catch_0
    return-void
.end method

.method getCollectionData(Ljava/lang/String;)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "collection_id"
        }
    .end annotation

    .annotation build Lorg/androidannotations/annotations/Background;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/CollectionModuleThreeActivity;->context:Landroid/content/Context;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/join/android/app/common/utils/m;->j(Landroid/content/Context;)Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-eqz v0, :cond_3

    .line 8
    .line 9
    :try_start_0
    iget v0, p0, Lcom/join/mgps/activity/CollectionModuleThreeActivity;->pn:I

    .line 10
    .line 11
    invoke-virtual {p0, p1, v0}, Lcom/join/mgps/activity/CollectionModuleThreeActivity;->getRequestBean(Ljava/lang/String;I)Lcom/join/mgps/dto/CommonRequestBean;

    .line 12
    .line 13
    .line 14
    move-result-object p1

    .line 15
    iget-object v0, p0, Lcom/join/mgps/activity/CollectionModuleThreeActivity;->rpcClient:Lcom/join/mgps/rpc/e;

    .line 16
    .line 17
    invoke-interface {v0, p1}, Lcom/join/mgps/rpc/e;->s1(Lcom/join/mgps/dto/CommonRequestBean;)Lcom/join/mgps/dto/CollectionModuleBean;

    .line 18
    .line 19
    .line 20
    move-result-object p1

    .line 21
    if-eqz p1, :cond_2

    .line 22
    .line 23
    invoke-virtual {p1}, Lcom/join/mgps/dto/CollectionModuleBean;->getMessages()Lcom/join/mgps/dto/CollectionModuleMessageBean;

    .line 24
    .line 25
    .line 26
    move-result-object v0

    .line 27
    if-eqz v0, :cond_1

    .line 28
    .line 29
    invoke-virtual {v0}, Lcom/join/mgps/dto/CollectionModuleMessageBean;->getData()Ljava/util/List;

    .line 30
    .line 31
    .line 32
    move-result-object v0

    .line 33
    if-eqz v0, :cond_0

    .line 34
    .line 35
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 36
    .line 37
    .line 38
    move-result v1

    .line 39
    if-lez v1, :cond_0

    .line 40
    .line 41
    const/4 v1, 0x0

    .line 42
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 43
    .line 44
    .line 45
    move-result-object v2

    .line 46
    if-eqz v2, :cond_0

    .line 47
    .line 48
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 49
    .line 50
    .line 51
    move-result-object v2

    .line 52
    check-cast v2, Lcom/join/mgps/dto/CollectionModuleDataBean;

    .line 53
    .line 54
    invoke-virtual {v2}, Lcom/join/mgps/dto/CollectionModuleDataBean;->getInfo()Ljava/util/List;

    .line 55
    .line 56
    .line 57
    move-result-object v2

    .line 58
    if-eqz v2, :cond_0

    .line 59
    .line 60
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 61
    .line 62
    .line 63
    move-result-object v2

    .line 64
    check-cast v2, Lcom/join/mgps/dto/CollectionModuleDataBean;

    .line 65
    .line 66
    invoke-virtual {v2}, Lcom/join/mgps/dto/CollectionModuleDataBean;->getInfo()Ljava/util/List;

    .line 67
    .line 68
    .line 69
    move-result-object v2

    .line 70
    invoke-interface {v2}, Ljava/util/List;->size()I

    .line 71
    .line 72
    .line 73
    move-result v2

    .line 74
    if-lez v2, :cond_0

    .line 75
    .line 76
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 77
    .line 78
    .line 79
    move-result-object v2

    .line 80
    check-cast v2, Lcom/join/mgps/dto/CollectionModuleDataBean;

    .line 81
    .line 82
    invoke-virtual {v2}, Lcom/join/mgps/dto/CollectionModuleDataBean;->getInfo()Ljava/util/List;

    .line 83
    .line 84
    .line 85
    move-result-object v2

    .line 86
    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 87
    .line 88
    .line 89
    move-result-object v2

    .line 90
    if-eqz v2, :cond_0

    .line 91
    .line 92
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 93
    .line 94
    .line 95
    move-result-object v2

    .line 96
    check-cast v2, Lcom/join/mgps/dto/CollectionModuleDataBean;

    .line 97
    .line 98
    invoke-virtual {v2}, Lcom/join/mgps/dto/CollectionModuleDataBean;->getInfo()Ljava/util/List;

    .line 99
    .line 100
    .line 101
    move-result-object v2

    .line 102
    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 103
    .line 104
    .line 105
    move-result-object v2

    .line 106
    check-cast v2, Ljava/util/List;

    .line 107
    .line 108
    invoke-interface {v2}, Ljava/util/List;->size()I

    .line 109
    .line 110
    .line 111
    move-result v2

    .line 112
    if-lez v2, :cond_0

    .line 113
    .line 114
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 115
    .line 116
    .line 117
    move-result-object v0

    .line 118
    check-cast v0, Lcom/join/mgps/dto/CollectionModuleDataBean;

    .line 119
    .line 120
    invoke-virtual {v0}, Lcom/join/mgps/dto/CollectionModuleDataBean;->getInfo()Ljava/util/List;

    .line 121
    .line 122
    .line 123
    move-result-object v0

    .line 124
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 125
    .line 126
    .line 127
    move-result-object v0

    .line 128
    check-cast v0, Ljava/util/List;

    .line 129
    .line 130
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 131
    .line 132
    .line 133
    move-result v0

    .line 134
    iput v0, p0, Lcom/join/mgps/activity/CollectionModuleThreeActivity;->game_count:I

    .line 135
    .line 136
    invoke-virtual {p1}, Lcom/join/mgps/dto/CollectionModuleBean;->getMessages()Lcom/join/mgps/dto/CollectionModuleMessageBean;

    .line 137
    .line 138
    .line 139
    move-result-object p1

    .line 140
    invoke-virtual {p1}, Lcom/join/mgps/dto/CollectionModuleMessageBean;->getData()Ljava/util/List;

    .line 141
    .line 142
    .line 143
    move-result-object p1

    .line 144
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 145
    .line 146
    .line 147
    move-result-object p1

    .line 148
    check-cast p1, Lcom/join/mgps/dto/CollectionModuleDataBean;

    .line 149
    .line 150
    invoke-virtual {p1}, Lcom/join/mgps/dto/CollectionModuleDataBean;->getInfo()Ljava/util/List;

    .line 151
    .line 152
    .line 153
    move-result-object p1

    .line 154
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 155
    .line 156
    .line 157
    move-result-object p1

    .line 158
    check-cast p1, Ljava/util/List;

    .line 159
    .line 160
    invoke-virtual {p0, p1}, Lcom/join/mgps/activity/CollectionModuleThreeActivity;->updateUI(Ljava/util/List;)V

    .line 161
    .line 162
    .line 163
    goto :goto_0

    .line 164
    :cond_0
    invoke-virtual {p0}, Lcom/join/mgps/activity/CollectionModuleThreeActivity;->showLodingFailed()V

    .line 165
    .line 166
    .line 167
    goto :goto_0

    .line 168
    :cond_1
    invoke-virtual {p0}, Lcom/join/mgps/activity/CollectionModuleThreeActivity;->showLodingFailed()V

    .line 169
    .line 170
    .line 171
    goto :goto_0

    .line 172
    :cond_2
    invoke-virtual {p0}, Lcom/join/mgps/activity/CollectionModuleThreeActivity;->showLodingFailed()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 173
    .line 174
    .line 175
    goto :goto_0

    .line 176
    :catch_0
    move-exception p1

    .line 177
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 178
    .line 179
    .line 180
    invoke-virtual {p0}, Lcom/join/mgps/activity/CollectionModuleThreeActivity;->showLodingFailed()V

    .line 181
    .line 182
    .line 183
    goto :goto_0

    .line 184
    :cond_3
    invoke-virtual {p0}, Lcom/join/mgps/activity/CollectionModuleThreeActivity;->showLodingFailed()V

    .line 185
    .line 186
    .line 187
    :goto_0
    return-void
.end method

.method public getRequestBean(Ljava/lang/String;I)Lcom/join/mgps/dto/CommonRequestBean;
    .locals 8
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "collection_id",
            "Page"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/CollectionModuleThreeActivity;->context:Landroid/content/Context;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/join/mgps/Util/RequestBeanUtil;->getInstance(Landroid/content/Context;)Lcom/join/mgps/Util/RequestBeanUtil;

    .line 4
    .line 5
    .line 6
    move-result-object v1

    .line 7
    const/16 v4, 0x64

    .line 8
    .line 9
    const-string v5, ""

    .line 10
    .line 11
    const-string v6, ""

    .line 12
    .line 13
    iget-object v7, p0, Lcom/join/mgps/activity/CollectionModuleThreeActivity;->extBean:Lcom/join/mgps/dto/ExtBean;

    .line 14
    .line 15
    move-object v2, p1

    .line 16
    move v3, p2

    .line 17
    invoke-virtual/range {v1 .. v7}, Lcom/join/mgps/Util/RequestBeanUtil;->getCollectionRequestBean(Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;Lcom/join/mgps/dto/ExtBean;)Lcom/join/mgps/dto/CommonRequestBean;

    .line 18
    .line 19
    .line 20
    move-result-object p1

    .line 21
    return-object p1
.end method

.method img_iconback()V
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

.method protected onDestroy()V
    .locals 0

    .line 1
    invoke-super {p0}, Lcom/BaseFragmentActivity;->onDestroy()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method relodingimag()V
    .locals 1
    .annotation build Lorg/androidannotations/annotations/Click;
    .end annotation

    .line 1
    const/4 v0, 0x1

    .line 2
    iput v0, p0, Lcom/join/mgps/activity/CollectionModuleThreeActivity;->pn:I

    .line 3
    .line 4
    invoke-virtual {p0}, Lcom/join/mgps/activity/CollectionModuleThreeActivity;->showLoding()V

    .line 5
    .line 6
    .line 7
    iget-object v0, p0, Lcom/join/mgps/activity/CollectionModuleThreeActivity;->collection_id:Ljava/lang/String;

    .line 8
    .line 9
    invoke-virtual {p0, v0}, Lcom/join/mgps/activity/CollectionModuleThreeActivity;->getCollectionData(Ljava/lang/String;)V

    .line 10
    .line 11
    .line 12
    return-void
.end method

.method setNetwork()V
    .locals 1
    .annotation build Lorg/androidannotations/annotations/Click;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/CollectionModuleThreeActivity;->context:Landroid/content/Context;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/join/mgps/Util/UtilsMy;->N3(Landroid/content/Context;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method showLoding()V
    .locals 3
    .annotation build Lorg/androidannotations/annotations/UiThread;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/CollectionModuleThreeActivity;->mBottomVIewPager:Lcom/join/mgps/customview/MViewpagerV4;

    .line 2
    .line 3
    const/16 v1, 0x8

    .line 4
    .line 5
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 6
    .line 7
    .line 8
    iget-object v0, p0, Lcom/join/mgps/activity/CollectionModuleThreeActivity;->relateLayoutRight:Landroid/widget/RelativeLayout;

    .line 9
    .line 10
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 11
    .line 12
    .line 13
    iget-object v0, p0, Lcom/join/mgps/activity/CollectionModuleThreeActivity;->loding_layout:Landroid/widget/LinearLayout;

    .line 14
    .line 15
    const/4 v2, 0x0

    .line 16
    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 17
    .line 18
    .line 19
    iget-object v0, p0, Lcom/join/mgps/activity/CollectionModuleThreeActivity;->loding_faile:Landroid/widget/LinearLayout;

    .line 20
    .line 21
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 22
    .line 23
    .line 24
    return-void
.end method

.method showLodingFailed()V
    .locals 3
    .annotation build Lorg/androidannotations/annotations/UiThread;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/CollectionModuleThreeActivity;->mBottomVIewPager:Lcom/join/mgps/customview/MViewpagerV4;

    .line 2
    .line 3
    const/16 v1, 0x8

    .line 4
    .line 5
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 6
    .line 7
    .line 8
    iget-object v0, p0, Lcom/join/mgps/activity/CollectionModuleThreeActivity;->relateLayoutRight:Landroid/widget/RelativeLayout;

    .line 9
    .line 10
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 11
    .line 12
    .line 13
    iget-object v0, p0, Lcom/join/mgps/activity/CollectionModuleThreeActivity;->loding_faile:Landroid/widget/LinearLayout;

    .line 14
    .line 15
    const/4 v2, 0x0

    .line 16
    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 17
    .line 18
    .line 19
    iget-object v0, p0, Lcom/join/mgps/activity/CollectionModuleThreeActivity;->loding_layout:Landroid/widget/LinearLayout;

    .line 20
    .line 21
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 22
    .line 23
    .line 24
    return-void
.end method

.method updateUI(Ljava/util/List;)V
    .locals 6
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "collectionDataBeanInfos"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/join/mgps/dto/CollectionDataBeanInfo;",
            ">;)V"
        }
    .end annotation

    .annotation build Lorg/androidannotations/annotations/UiThread;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/CollectionModuleThreeActivity;->mBottomVIewPager:Lcom/join/mgps/customview/MViewpagerV4;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 5
    .line 6
    .line 7
    iget-object v0, p0, Lcom/join/mgps/activity/CollectionModuleThreeActivity;->relateLayoutRight:Landroid/widget/RelativeLayout;

    .line 8
    .line 9
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 10
    .line 11
    .line 12
    iget-object v0, p0, Lcom/join/mgps/activity/CollectionModuleThreeActivity;->loding_faile:Landroid/widget/LinearLayout;

    .line 13
    .line 14
    const/16 v2, 0x8

    .line 15
    .line 16
    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 17
    .line 18
    .line 19
    iget-object v0, p0, Lcom/join/mgps/activity/CollectionModuleThreeActivity;->loding_layout:Landroid/widget/LinearLayout;

    .line 20
    .line 21
    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 22
    .line 23
    .line 24
    iget v0, p0, Lcom/join/mgps/activity/CollectionModuleThreeActivity;->game_count:I

    .line 25
    .line 26
    if-lez v0, :cond_4

    .line 27
    .line 28
    :goto_0
    iget v0, p0, Lcom/join/mgps/activity/CollectionModuleThreeActivity;->game_count:I

    .line 29
    .line 30
    if-ge v1, v0, :cond_3

    .line 31
    .line 32
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 33
    .line 34
    .line 35
    move-result-object v0

    .line 36
    check-cast v0, Lcom/join/mgps/dto/CollectionDataBeanInfo;

    .line 37
    .line 38
    iget-object v2, p0, Lcom/join/mgps/activity/CollectionModuleThreeActivity;->stringList:Ljava/util/List;

    .line 39
    .line 40
    invoke-virtual {v0}, Lcom/join/mgps/dto/CollectionDataBeanInfo;->getMain()Lcom/join/mgps/dto/BreakBeanMain;

    .line 41
    .line 42
    .line 43
    move-result-object v3

    .line 44
    invoke-virtual {v3}, Lcom/join/mgps/dto/BreakBeanMain;->getCollection_title()Ljava/lang/String;

    .line 45
    .line 46
    .line 47
    move-result-object v3

    .line 48
    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 49
    .line 50
    .line 51
    new-instance v2, Lcom/join/mgps/fragment/CollectionThreeSubFragment_;

    .line 52
    .line 53
    invoke-direct {v2}, Lcom/join/mgps/fragment/CollectionThreeSubFragment_;-><init>()V

    .line 54
    .line 55
    .line 56
    invoke-virtual {v2, v0}, Lcom/join/mgps/fragment/s;->O(Lcom/join/mgps/dto/CollectionDataBeanInfo;)V

    .line 57
    .line 58
    .line 59
    :try_start_0
    invoke-virtual {v0}, Lcom/join/mgps/dto/CollectionDataBeanInfo;->getSub()Ljava/util/List;

    .line 60
    .line 61
    .line 62
    move-result-object v0

    .line 63
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 64
    .line 65
    .line 66
    move-result-object v0

    .line 67
    :catch_0
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 68
    .line 69
    .line 70
    move-result v3

    .line 71
    if-eqz v3, :cond_2

    .line 72
    .line 73
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 74
    .line 75
    .line 76
    move-result-object v3

    .line 77
    check-cast v3, Lcom/join/mgps/dto/CollectionBeanSub;

    .line 78
    .line 79
    iget-object v4, p0, Lcom/join/mgps/activity/CollectionModuleThreeActivity;->extBean:Lcom/join/mgps/dto/ExtBean;

    .line 80
    .line 81
    if-eqz v4, :cond_0

    .line 82
    .line 83
    invoke-virtual {v4}, Lcom/join/mgps/dto/ExtBean;->isKeepOrginFrom()Z

    .line 84
    .line 85
    .line 86
    move-result v4

    .line 87
    if-eqz v4, :cond_0

    .line 88
    .line 89
    iget-object v4, p0, Lcom/join/mgps/activity/CollectionModuleThreeActivity;->extBean:Lcom/join/mgps/dto/ExtBean;

    .line 90
    .line 91
    invoke-virtual {v4}, Lcom/join/mgps/dto/ExtBean;->getOrginFrom()Ljava/lang/String;

    .line 92
    .line 93
    .line 94
    move-result-object v4

    .line 95
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 96
    .line 97
    .line 98
    move-result v4
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 99
    if-nez v4, :cond_0

    .line 100
    .line 101
    :try_start_1
    iget-object v4, p0, Lcom/join/mgps/activity/CollectionModuleThreeActivity;->extBean:Lcom/join/mgps/dto/ExtBean;

    .line 102
    .line 103
    invoke-virtual {v4}, Lcom/join/mgps/dto/ExtBean;->getOrginFrom()Ljava/lang/String;

    .line 104
    .line 105
    .line 106
    move-result-object v4

    .line 107
    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 108
    .line 109
    .line 110
    move-result v4

    .line 111
    invoke-virtual {v3, v4}, Lcom/join/mgps/dto/DownloadPointBase;->set_from(I)V

    .line 112
    .line 113
    .line 114
    iget-object v4, p0, Lcom/join/mgps/activity/CollectionModuleThreeActivity;->extBean:Lcom/join/mgps/dto/ExtBean;

    .line 115
    .line 116
    invoke-virtual {v4}, Lcom/join/mgps/dto/ExtBean;->getOrginFrom()Ljava/lang/String;

    .line 117
    .line 118
    .line 119
    move-result-object v4

    .line 120
    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 121
    .line 122
    .line 123
    move-result v4

    .line 124
    invoke-virtual {v3, v4}, Lcom/join/mgps/dto/DownloadPointBase;->set_from_type(I)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 125
    .line 126
    .line 127
    goto :goto_1

    .line 128
    :cond_0
    :try_start_2
    iget-object v4, p0, Lcom/join/mgps/activity/CollectionModuleThreeActivity;->extBean:Lcom/join/mgps/dto/ExtBean;

    .line 129
    .line 130
    if-eqz v4, :cond_1

    .line 131
    .line 132
    invoke-virtual {v4}, Lcom/join/mgps/dto/ExtBean;->get_from_type()I

    .line 133
    .line 134
    .line 135
    move-result v4

    .line 136
    const/16 v5, 0x86

    .line 137
    .line 138
    if-ne v4, v5, :cond_1

    .line 139
    .line 140
    const/16 v4, 0x3459

    .line 141
    .line 142
    invoke-virtual {v3, v4}, Lcom/join/mgps/dto/DownloadPointBase;->set_from(I)V

    .line 143
    .line 144
    .line 145
    invoke-virtual {v3, v4}, Lcom/join/mgps/dto/DownloadPointBase;->set_from_type(I)V

    .line 146
    .line 147
    .line 148
    goto :goto_1

    .line 149
    :cond_1
    const/16 v4, 0x6f

    .line 150
    .line 151
    invoke-virtual {v3, v4}, Lcom/join/mgps/dto/DownloadPointBase;->set_from(I)V

    .line 152
    .line 153
    .line 154
    const/16 v4, 0x79

    .line 155
    .line 156
    invoke-virtual {v3, v4}, Lcom/join/mgps/dto/DownloadPointBase;->set_from_type(I)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    .line 157
    .line 158
    .line 159
    goto :goto_1

    .line 160
    :catch_1
    move-exception v0

    .line 161
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 162
    .line 163
    .line 164
    :cond_2
    iget-object v0, p0, Lcom/join/mgps/activity/CollectionModuleThreeActivity;->mBottomPages:Ljava/util/ArrayList;

    .line 165
    .line 166
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 167
    .line 168
    .line 169
    add-int/lit8 v1, v1, 0x1

    .line 170
    .line 171
    goto/16 :goto_0

    .line 172
    .line 173
    :cond_3
    iget-object p1, p0, Lcom/join/mgps/activity/CollectionModuleThreeActivity;->mPagerAdapter:Lcom/join/mgps/customview/e0;

    .line 174
    .line 175
    iget-object v0, p0, Lcom/join/mgps/activity/CollectionModuleThreeActivity;->mBottomPages:Ljava/util/ArrayList;

    .line 176
    .line 177
    iget-object v1, p0, Lcom/join/mgps/activity/CollectionModuleThreeActivity;->stringList:Ljava/util/List;

    .line 178
    .line 179
    invoke-virtual {p1, v0, v1}, Lcom/join/mgps/customview/e0;->d(Ljava/util/List;Ljava/util/List;)V

    .line 180
    .line 181
    .line 182
    iget-object p1, p0, Lcom/join/mgps/activity/CollectionModuleThreeActivity;->mPagerAdapter:Lcom/join/mgps/customview/e0;

    .line 183
    .line 184
    invoke-virtual {p1}, Landroidx/viewpager/widget/PagerAdapter;->notifyDataSetChanged()V

    .line 185
    .line 186
    .line 187
    iget-object p1, p0, Lcom/join/mgps/activity/CollectionModuleThreeActivity;->mBottomVIewPager:Lcom/join/mgps/customview/MViewpagerV4;

    .line 188
    .line 189
    iget-object v0, p0, Lcom/join/mgps/activity/CollectionModuleThreeActivity;->mPagerAdapter:Lcom/join/mgps/customview/e0;

    .line 190
    .line 191
    invoke-virtual {p1, v0}, Landroidx/viewpager/widget/ViewPager;->setAdapter(Landroidx/viewpager/widget/PagerAdapter;)V

    .line 192
    .line 193
    .line 194
    iget-object p1, p0, Lcom/join/mgps/activity/CollectionModuleThreeActivity;->mBottomVIewPager:Lcom/join/mgps/customview/MViewpagerV4;

    .line 195
    .line 196
    const/4 v0, 0x4

    .line 197
    invoke-virtual {p1, v0}, Landroidx/viewpager/widget/ViewPager;->setOffscreenPageLimit(I)V

    .line 198
    .line 199
    .line 200
    iget-object p1, p0, Lcom/join/mgps/activity/CollectionModuleThreeActivity;->mBottomVIewPager:Lcom/join/mgps/customview/MViewpagerV4;

    .line 201
    .line 202
    new-instance v0, Lcom/join/mgps/activity/CollectionModuleThreeActivity$a;

    .line 203
    .line 204
    invoke-direct {v0, p0}, Lcom/join/mgps/activity/CollectionModuleThreeActivity$a;-><init>(Lcom/join/mgps/activity/CollectionModuleThreeActivity;)V

    .line 205
    .line 206
    .line 207
    invoke-virtual {p1, v0}, Landroidx/viewpager/widget/ViewPager;->setOnPageChangeListener(Landroidx/viewpager/widget/ViewPager$OnPageChangeListener;)V

    .line 208
    .line 209
    .line 210
    :cond_4
    return-void
.end method
