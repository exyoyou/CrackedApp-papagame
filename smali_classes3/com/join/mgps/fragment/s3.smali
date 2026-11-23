.class public Lcom/join/mgps/fragment/s3;
.super Landroidx/fragment/app/Fragment;
.source "SourceFile"

# interfaces
.implements Landroid/widget/AbsListView$OnScrollListener;


# annotations
.annotation build Lorg/androidannotations/annotations/EFragment;
    value = 0x7f0d0306
.end annotation


# instance fields
.field c:Lcom/join/mgps/ptr/PtrClassicFrameLayout;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field

.field d:Lcom/join/mgps/customview/XListView2;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field

.field e:Landroid/widget/LinearLayout;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field

.field f:Landroid/widget/LinearLayout;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field

.field g:Landroid/widget/ImageView;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field

.field h:Lcom/join/mgps/rpc/e;

.field private i:Lcom/join/mgps/adapter/u2;

.field private j:Landroid/content/Context;

.field private k:Z

.field l:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ll6/b;",
            ">;"
        }
    .end annotation
.end field

.field private m:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Landroidx/fragment/app/Fragment;-><init>()V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x0

    .line 5
    iput-boolean v0, p0, Lcom/join/mgps/fragment/s3;->k:Z

    .line 6
    .line 7
    const/4 v0, 0x1

    .line 8
    iput v0, p0, Lcom/join/mgps/fragment/s3;->m:I

    .line 9
    .line 10
    return-void
.end method

.method static synthetic M(Lcom/join/mgps/fragment/s3;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/join/mgps/fragment/s3;->k:Z

    .line 2
    .line 3
    return p0
.end method

.method static synthetic N(Lcom/join/mgps/fragment/s3;I)I
    .locals 0

    .line 1
    iput p1, p0, Lcom/join/mgps/fragment/s3;->m:I

    .line 2
    .line 3
    return p1
.end method


# virtual methods
.method O()V
    .locals 7
    .annotation build Lorg/androidannotations/annotations/Background;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/fragment/s3;->j:Landroid/content/Context;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/join/android/app/common/utils/m;->j(Landroid/content/Context;)Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-eqz v0, :cond_8

    .line 8
    .line 9
    const/4 v0, 0x1

    .line 10
    iput-boolean v0, p0, Lcom/join/mgps/fragment/s3;->k:Z

    .line 11
    .line 12
    const/4 v1, 0x0

    .line 13
    :try_start_0
    iget v2, p0, Lcom/join/mgps/fragment/s3;->m:I

    .line 14
    .line 15
    invoke-virtual {p0, v2}, Lcom/join/mgps/fragment/s3;->P(I)Lcom/join/mgps/dto/CommonRequestBean;

    .line 16
    .line 17
    .line 18
    move-result-object v2

    .line 19
    iget-object v3, p0, Lcom/join/mgps/fragment/s3;->h:Lcom/join/mgps/rpc/e;

    .line 20
    .line 21
    invoke-interface {v3, v2}, Lcom/join/mgps/rpc/e;->f1(Lcom/join/mgps/dto/CommonRequestBean;)Lcom/join/mgps/dto/ResultMainBean;

    .line 22
    .line 23
    .line 24
    move-result-object v2

    .line 25
    if-eqz v2, :cond_6

    .line 26
    .line 27
    invoke-virtual {v2}, Lcom/join/mgps/dto/ResultMainBean;->getFlag()I

    .line 28
    .line 29
    .line 30
    move-result v3

    .line 31
    if-ne v3, v0, :cond_6

    .line 32
    .line 33
    invoke-virtual {v2}, Lcom/join/mgps/dto/ResultMainBean;->getMessages()Lcom/join/mgps/dto/ResultMessageBean;

    .line 34
    .line 35
    .line 36
    move-result-object v2

    .line 37
    invoke-virtual {v2}, Lcom/join/mgps/dto/ResultMessageBean;->getData()Ljava/lang/Object;

    .line 38
    .line 39
    .line 40
    move-result-object v2

    .line 41
    check-cast v2, Lcom/join/mgps/dto/GameSignleCompanyListbean;

    .line 42
    .line 43
    if-eqz v2, :cond_7

    .line 44
    .line 45
    new-instance v3, Ljava/util/ArrayList;

    .line 46
    .line 47
    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 48
    .line 49
    .line 50
    invoke-virtual {v2}, Lcom/join/mgps/dto/GameSignleCompanyListbean;->getList()Ljava/util/List;

    .line 51
    .line 52
    .line 53
    move-result-object v2

    .line 54
    if-eqz v2, :cond_4

    .line 55
    .line 56
    invoke-interface {v2}, Ljava/util/List;->size()I

    .line 57
    .line 58
    .line 59
    move-result v4

    .line 60
    if-lez v4, :cond_4

    .line 61
    .line 62
    const/4 v4, 0x0

    .line 63
    const/4 v5, 0x0

    .line 64
    :goto_0
    invoke-interface {v2}, Ljava/util/List;->size()I

    .line 65
    .line 66
    .line 67
    move-result v6

    .line 68
    if-ge v5, v6, :cond_2

    .line 69
    .line 70
    if-eqz v5, :cond_1

    .line 71
    .line 72
    rem-int/lit8 v6, v5, 0x2

    .line 73
    .line 74
    if-nez v6, :cond_0

    .line 75
    .line 76
    goto :goto_1

    .line 77
    :cond_0
    invoke-interface {v2, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 78
    .line 79
    .line 80
    move-result-object v6

    .line 81
    check-cast v6, Lcom/join/mgps/dto/GameOLHeadAdBean;

    .line 82
    .line 83
    invoke-virtual {v4, v6}, Ll6/b;->d(Lcom/join/mgps/dto/GameOLHeadAdBean;)V

    .line 84
    .line 85
    .line 86
    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 87
    .line 88
    .line 89
    goto :goto_2

    .line 90
    :cond_1
    :goto_1
    new-instance v4, Ll6/b;

    .line 91
    .line 92
    invoke-direct {v4}, Ll6/b;-><init>()V

    .line 93
    .line 94
    .line 95
    invoke-interface {v2, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 96
    .line 97
    .line 98
    move-result-object v6

    .line 99
    check-cast v6, Lcom/join/mgps/dto/GameOLHeadAdBean;

    .line 100
    .line 101
    invoke-virtual {v4, v6}, Ll6/b;->c(Lcom/join/mgps/dto/GameOLHeadAdBean;)V

    .line 102
    .line 103
    .line 104
    :goto_2
    add-int/lit8 v5, v5, 0x1

    .line 105
    .line 106
    goto :goto_0

    .line 107
    :cond_2
    invoke-interface {v2}, Ljava/util/List;->size()I

    .line 108
    .line 109
    .line 110
    move-result v4

    .line 111
    if-eqz v4, :cond_3

    .line 112
    .line 113
    invoke-interface {v2}, Ljava/util/List;->size()I

    .line 114
    .line 115
    .line 116
    move-result v4

    .line 117
    rem-int/lit8 v4, v4, 0x2

    .line 118
    .line 119
    if-ne v4, v0, :cond_3

    .line 120
    .line 121
    new-instance v4, Ll6/b;

    .line 122
    .line 123
    invoke-direct {v4}, Ll6/b;-><init>()V

    .line 124
    .line 125
    .line 126
    invoke-interface {v2}, Ljava/util/List;->size()I

    .line 127
    .line 128
    .line 129
    move-result v5

    .line 130
    sub-int/2addr v5, v0

    .line 131
    invoke-interface {v2, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 132
    .line 133
    .line 134
    move-result-object v2

    .line 135
    check-cast v2, Lcom/join/mgps/dto/GameOLHeadAdBean;

    .line 136
    .line 137
    invoke-virtual {v4, v2}, Ll6/b;->c(Lcom/join/mgps/dto/GameOLHeadAdBean;)V

    .line 138
    .line 139
    .line 140
    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 141
    .line 142
    .line 143
    :cond_3
    iget v2, p0, Lcom/join/mgps/fragment/s3;->m:I

    .line 144
    .line 145
    add-int/2addr v2, v0

    .line 146
    iput v2, p0, Lcom/join/mgps/fragment/s3;->m:I

    .line 147
    .line 148
    invoke-virtual {p0, v3}, Lcom/join/mgps/fragment/s3;->showMain(Ljava/util/List;)V

    .line 149
    .line 150
    .line 151
    invoke-virtual {p0}, Lcom/join/mgps/fragment/s3;->S()V

    .line 152
    .line 153
    .line 154
    goto :goto_3

    .line 155
    :cond_4
    iget v2, p0, Lcom/join/mgps/fragment/s3;->m:I

    .line 156
    .line 157
    if-ne v2, v0, :cond_5

    .line 158
    .line 159
    invoke-virtual {p0}, Lcom/join/mgps/fragment/s3;->showLodingFailed()V

    .line 160
    .line 161
    .line 162
    goto :goto_3

    .line 163
    :cond_5
    invoke-virtual {p0}, Lcom/join/mgps/fragment/s3;->R()V

    .line 164
    .line 165
    .line 166
    goto :goto_3

    .line 167
    :cond_6
    invoke-virtual {p0}, Lcom/join/mgps/fragment/s3;->S()V

    .line 168
    .line 169
    .line 170
    invoke-virtual {p0}, Lcom/join/mgps/fragment/s3;->showLodingFailed()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 171
    .line 172
    .line 173
    goto :goto_3

    .line 174
    :catchall_0
    move-exception v0

    .line 175
    goto :goto_4

    .line 176
    :catch_0
    move-exception v0

    .line 177
    :try_start_1
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 178
    .line 179
    .line 180
    invoke-virtual {p0}, Lcom/join/mgps/fragment/s3;->S()V

    .line 181
    .line 182
    .line 183
    invoke-virtual {p0}, Lcom/join/mgps/fragment/s3;->showLodingFailed()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 184
    .line 185
    .line 186
    :cond_7
    :goto_3
    iput-boolean v1, p0, Lcom/join/mgps/fragment/s3;->k:Z

    .line 187
    .line 188
    goto :goto_5

    .line 189
    :goto_4
    iput-boolean v1, p0, Lcom/join/mgps/fragment/s3;->k:Z

    .line 190
    .line 191
    throw v0

    .line 192
    :cond_8
    invoke-virtual {p0}, Lcom/join/mgps/fragment/s3;->S()V

    .line 193
    .line 194
    .line 195
    invoke-virtual {p0}, Lcom/join/mgps/fragment/s3;->showLodingFailed()V

    .line 196
    .line 197
    .line 198
    :goto_5
    return-void
.end method

.method public P(I)Lcom/join/mgps/dto/CommonRequestBean;
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "pn"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/fragment/s3;->j:Landroid/content/Context;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/join/mgps/Util/RequestBeanUtil;->getInstance(Landroid/content/Context;)Lcom/join/mgps/Util/RequestBeanUtil;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    const/16 v1, 0xa

    .line 8
    .line 9
    invoke-virtual {v0, p1, v1}, Lcom/join/mgps/Util/RequestBeanUtil;->getGameOLRequest(II)Lcom/join/mgps/dto/CommonRequestBean;

    .line 10
    .line 11
    .line 12
    move-result-object p1

    .line 13
    return-object p1
.end method

.method Q()V
    .locals 1
    .annotation build Lorg/androidannotations/annotations/Click;
    .end annotation

    .line 1
    const/4 v0, 0x1

    .line 2
    iput v0, p0, Lcom/join/mgps/fragment/s3;->m:I

    .line 3
    .line 4
    invoke-virtual {p0}, Lcom/join/mgps/fragment/s3;->O()V

    .line 5
    .line 6
    .line 7
    return-void
.end method

.method R()V
    .locals 1
    .annotation build Lorg/androidannotations/annotations/UiThread;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/fragment/s3;->d:Lcom/join/mgps/customview/XListView2;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/join/mgps/customview/XListView2;->setNoMore()V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method S()V
    .locals 1
    .annotation build Lorg/androidannotations/annotations/UiThread;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/fragment/s3;->d:Lcom/join/mgps/customview/XListView2;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/join/mgps/customview/XListView2;->u()V

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lcom/join/mgps/fragment/s3;->d:Lcom/join/mgps/customview/XListView2;

    .line 7
    .line 8
    invoke-virtual {v0}, Lcom/join/mgps/customview/XListView2;->v()V

    .line 9
    .line 10
    .line 11
    return-void
.end method

.method afterviews()V
    .locals 2
    .annotation build Lorg/androidannotations/annotations/AfterViews;
    .end annotation

    .line 1
    invoke-static {}, Lcom/join/mgps/rpc/impl/d;->O1()Lcom/join/mgps/rpc/impl/d;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    iput-object v0, p0, Lcom/join/mgps/fragment/s3;->h:Lcom/join/mgps/rpc/e;

    .line 6
    .line 7
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    iput-object v0, p0, Lcom/join/mgps/fragment/s3;->j:Landroid/content/Context;

    .line 12
    .line 13
    new-instance v0, Lcom/join/mgps/adapter/u2;

    .line 14
    .line 15
    iget-object v1, p0, Lcom/join/mgps/fragment/s3;->j:Landroid/content/Context;

    .line 16
    .line 17
    invoke-direct {v0, v1}, Lcom/join/mgps/adapter/u2;-><init>(Landroid/content/Context;)V

    .line 18
    .line 19
    .line 20
    iput-object v0, p0, Lcom/join/mgps/fragment/s3;->i:Lcom/join/mgps/adapter/u2;

    .line 21
    .line 22
    invoke-virtual {v0}, Lcom/join/mgps/adapter/u2;->b()Ljava/util/List;

    .line 23
    .line 24
    .line 25
    move-result-object v0

    .line 26
    iput-object v0, p0, Lcom/join/mgps/fragment/s3;->l:Ljava/util/List;

    .line 27
    .line 28
    invoke-virtual {p0}, Lcom/join/mgps/fragment/s3;->showLoding()V

    .line 29
    .line 30
    .line 31
    invoke-virtual {p0}, Lcom/join/mgps/fragment/s3;->O()V

    .line 32
    .line 33
    .line 34
    iget-object v0, p0, Lcom/join/mgps/fragment/s3;->d:Lcom/join/mgps/customview/XListView2;

    .line 35
    .line 36
    const/16 v1, 0xa

    .line 37
    .line 38
    invoke-virtual {v0, v1}, Lcom/join/mgps/customview/XListView2;->setPreLoadCount(I)V

    .line 39
    .line 40
    .line 41
    iget-object v0, p0, Lcom/join/mgps/fragment/s3;->d:Lcom/join/mgps/customview/XListView2;

    .line 42
    .line 43
    new-instance v1, Lcom/join/mgps/fragment/s3$a;

    .line 44
    .line 45
    invoke-direct {v1, p0}, Lcom/join/mgps/fragment/s3$a;-><init>(Lcom/join/mgps/fragment/s3;)V

    .line 46
    .line 47
    .line 48
    invoke-virtual {v0, v1}, Lcom/join/mgps/customview/XListView2;->setPullRefreshEnable(Lcom/join/mgps/customview/j;)V

    .line 49
    .line 50
    .line 51
    iget-object v0, p0, Lcom/join/mgps/fragment/s3;->d:Lcom/join/mgps/customview/XListView2;

    .line 52
    .line 53
    new-instance v1, Lcom/join/mgps/fragment/s3$b;

    .line 54
    .line 55
    invoke-direct {v1, p0}, Lcom/join/mgps/fragment/s3$b;-><init>(Lcom/join/mgps/fragment/s3;)V

    .line 56
    .line 57
    .line 58
    invoke-virtual {v0, v1}, Lcom/join/mgps/customview/XListView2;->setPullLoadEnable(Lcom/join/mgps/customview/i;)V

    .line 59
    .line 60
    .line 61
    iget-object v0, p0, Lcom/join/mgps/fragment/s3;->d:Lcom/join/mgps/customview/XListView2;

    .line 62
    .line 63
    invoke-virtual {v0, p0}, Lcom/join/mgps/customview/XListView2;->setOnScrollListener(Landroid/widget/AbsListView$OnScrollListener;)V

    .line 64
    .line 65
    .line 66
    iget-object v0, p0, Lcom/join/mgps/fragment/s3;->d:Lcom/join/mgps/customview/XListView2;

    .line 67
    .line 68
    iget-object v1, p0, Lcom/join/mgps/fragment/s3;->i:Lcom/join/mgps/adapter/u2;

    .line 69
    .line 70
    invoke-virtual {v0, v1}, Lcom/join/mgps/customview/XListView2;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 71
    .line 72
    .line 73
    return-void
.end method

.method public onScroll(Landroid/widget/AbsListView;III)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "view",
            "firstVisibleItem",
            "visibleItemCount",
            "totalItemCount"
        }
    .end annotation

    return-void
.end method

.method public onScrollStateChanged(Landroid/widget/AbsListView;I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "view",
            "scrollState"
        }
    .end annotation

    return-void
.end method

.method relodingimag()V
    .locals 1
    .annotation build Lorg/androidannotations/annotations/Click;
    .end annotation

    .line 1
    const/4 v0, 0x1

    .line 2
    iput v0, p0, Lcom/join/mgps/fragment/s3;->m:I

    .line 3
    .line 4
    invoke-virtual {p0}, Lcom/join/mgps/fragment/s3;->showLoding()V

    .line 5
    .line 6
    .line 7
    invoke-virtual {p0}, Lcom/join/mgps/fragment/s3;->O()V

    .line 8
    .line 9
    .line 10
    return-void
.end method

.method setNetwork()V
    .locals 1
    .annotation build Lorg/androidannotations/annotations/Click;
    .end annotation

    .line 1
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-static {v0}, Lcom/join/mgps/Util/UtilsMy;->N3(Landroid/content/Context;)V

    .line 6
    .line 7
    .line 8
    return-void
.end method

.method showLoding()V
    .locals 2
    .annotation build Lorg/androidannotations/annotations/UiThread;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/fragment/s3;->e:Landroid/widget/LinearLayout;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 5
    .line 6
    .line 7
    iget-object v0, p0, Lcom/join/mgps/fragment/s3;->f:Landroid/widget/LinearLayout;

    .line 8
    .line 9
    const/16 v1, 0x8

    .line 10
    .line 11
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 12
    .line 13
    .line 14
    iget-object v0, p0, Lcom/join/mgps/fragment/s3;->c:Lcom/join/mgps/ptr/PtrClassicFrameLayout;

    .line 15
    .line 16
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 17
    .line 18
    .line 19
    return-void
.end method

.method showLodingFailed()V
    .locals 2
    .annotation build Lorg/androidannotations/annotations/UiThread;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/fragment/s3;->l:Ljava/util/List;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    if-nez v0, :cond_1

    .line 10
    .line 11
    :cond_0
    iget-object v0, p0, Lcom/join/mgps/fragment/s3;->f:Landroid/widget/LinearLayout;

    .line 12
    .line 13
    const/4 v1, 0x0

    .line 14
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 15
    .line 16
    .line 17
    iget-object v0, p0, Lcom/join/mgps/fragment/s3;->e:Landroid/widget/LinearLayout;

    .line 18
    .line 19
    const/16 v1, 0x8

    .line 20
    .line 21
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 22
    .line 23
    .line 24
    iget-object v0, p0, Lcom/join/mgps/fragment/s3;->c:Lcom/join/mgps/ptr/PtrClassicFrameLayout;

    .line 25
    .line 26
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 27
    .line 28
    .line 29
    :cond_1
    return-void
.end method

.method showMain(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "subList"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ll6/b;",
            ">;)V"
        }
    .end annotation

    .annotation build Lorg/androidannotations/annotations/UiThread;
    .end annotation

    .line 1
    if-eqz p1, :cond_3

    .line 2
    .line 3
    invoke-interface {p1}, Ljava/util/List;->size()I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-nez v0, :cond_0

    .line 8
    .line 9
    goto :goto_0

    .line 10
    :cond_0
    iget-object v0, p0, Lcom/join/mgps/fragment/s3;->f:Landroid/widget/LinearLayout;

    .line 11
    .line 12
    const/16 v1, 0x8

    .line 13
    .line 14
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 15
    .line 16
    .line 17
    iget-object v0, p0, Lcom/join/mgps/fragment/s3;->e:Landroid/widget/LinearLayout;

    .line 18
    .line 19
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 20
    .line 21
    .line 22
    iget-object v0, p0, Lcom/join/mgps/fragment/s3;->c:Lcom/join/mgps/ptr/PtrClassicFrameLayout;

    .line 23
    .line 24
    const/4 v1, 0x0

    .line 25
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 26
    .line 27
    .line 28
    iget v0, p0, Lcom/join/mgps/fragment/s3;->m:I

    .line 29
    .line 30
    const/4 v1, 0x2

    .line 31
    if-ne v0, v1, :cond_1

    .line 32
    .line 33
    iget-object v0, p0, Lcom/join/mgps/fragment/s3;->l:Ljava/util/List;

    .line 34
    .line 35
    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 36
    .line 37
    .line 38
    :cond_1
    iget-object v0, p0, Lcom/join/mgps/fragment/s3;->l:Ljava/util/List;

    .line 39
    .line 40
    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 41
    .line 42
    .line 43
    iget p1, p0, Lcom/join/mgps/fragment/s3;->m:I

    .line 44
    .line 45
    if-ne p1, v1, :cond_2

    .line 46
    .line 47
    iget-object p1, p0, Lcom/join/mgps/fragment/s3;->l:Ljava/util/List;

    .line 48
    .line 49
    invoke-interface {p1}, Ljava/util/List;->size()I

    .line 50
    .line 51
    .line 52
    :cond_2
    new-instance p1, Ljava/lang/StringBuilder;

    .line 53
    .line 54
    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    .line 55
    .line 56
    .line 57
    iget-object v0, p0, Lcom/join/mgps/fragment/s3;->l:Ljava/util/List;

    .line 58
    .line 59
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 60
    .line 61
    .line 62
    move-result v0

    .line 63
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 64
    .line 65
    .line 66
    const-string v0, "   showMain"

    .line 67
    .line 68
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 69
    .line 70
    .line 71
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 72
    .line 73
    .line 74
    move-result-object p1

    .line 75
    const-string v0, "infoo"

    .line 76
    .line 77
    invoke-static {v0, p1}, Lcom/join/mgps/Util/g1;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 78
    .line 79
    .line 80
    iget-object p1, p0, Lcom/join/mgps/fragment/s3;->i:Lcom/join/mgps/adapter/u2;

    .line 81
    .line 82
    invoke-virtual {p1}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    .line 83
    .line 84
    .line 85
    :cond_3
    :goto_0
    return-void
.end method
