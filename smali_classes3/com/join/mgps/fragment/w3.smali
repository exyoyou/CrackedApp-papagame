.class public Lcom/join/mgps/fragment/w3;
.super Lcom/join/mgps/basefragment/a;
.source "SourceFile"

# interfaces
.implements Landroid/widget/AbsListView$OnScrollListener;


# annotations
.annotation build Lorg/androidannotations/annotations/EFragment;
    value = 0x7f0d02a5
.end annotation


# instance fields
.field d:Lcom/join/mgps/rpc/e;

.field private e:Landroid/content/Context;

.field f:Lcom/join/mgps/customview/XListView2;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field

.field g:Lcom/join/mgps/adapter/GameTopicAdapter;

.field public h:I

.field public i:I

.field volatile j:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/join/mgps/adapter/GameTopicAdapter$g;",
            ">;"
        }
    .end annotation
.end field

.field volatile k:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/join/mgps/dto/GameTopicBean;",
            ">;"
        }
    .end annotation
.end field

.field l:Landroid/os/Handler;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/join/mgps/basefragment/a;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Lcom/join/mgps/fragment/w3$a;

    .line 5
    .line 6
    invoke-direct {v0, p0}, Lcom/join/mgps/fragment/w3$a;-><init>(Lcom/join/mgps/fragment/w3;)V

    .line 7
    .line 8
    .line 9
    iput-object v0, p0, Lcom/join/mgps/fragment/w3;->l:Landroid/os/Handler;

    .line 10
    .line 11
    return-void
.end method

.method private Z()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/join/mgps/fragment/w3;->f:Lcom/join/mgps/customview/XListView2;

    .line 2
    .line 3
    sget v1, Lcom/join/mgps/Util/r0;->e:I

    .line 4
    .line 5
    invoke-virtual {v0, v1}, Lcom/join/mgps/customview/XListView2;->setPreLoadCount(I)V

    .line 6
    .line 7
    .line 8
    iget-object v0, p0, Lcom/join/mgps/fragment/w3;->f:Lcom/join/mgps/customview/XListView2;

    .line 9
    .line 10
    new-instance v1, Lcom/join/mgps/fragment/w3$b;

    .line 11
    .line 12
    invoke-direct {v1, p0}, Lcom/join/mgps/fragment/w3$b;-><init>(Lcom/join/mgps/fragment/w3;)V

    .line 13
    .line 14
    .line 15
    invoke-virtual {v0, v1}, Lcom/join/mgps/customview/XListView2;->setPullLoadEnable(Lcom/join/mgps/customview/i;)V

    .line 16
    .line 17
    .line 18
    new-instance v0, Lcom/join/mgps/fragment/w3$c;

    .line 19
    .line 20
    invoke-direct {v0, p0}, Lcom/join/mgps/fragment/w3$c;-><init>(Lcom/join/mgps/fragment/w3;)V

    .line 21
    .line 22
    .line 23
    iget-object v1, p0, Lcom/join/mgps/fragment/w3;->f:Lcom/join/mgps/customview/XListView2;

    .line 24
    .line 25
    invoke-virtual {v1, v0}, Lcom/join/mgps/customview/XListView2;->setPullRefreshEnable(Lcom/join/mgps/customview/j;)V

    .line 26
    .line 27
    .line 28
    new-instance v0, Ljava/util/ArrayList;

    .line 29
    .line 30
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 31
    .line 32
    .line 33
    iput-object v0, p0, Lcom/join/mgps/fragment/w3;->j:Ljava/util/List;

    .line 34
    .line 35
    new-instance v0, Lcom/join/mgps/adapter/GameTopicAdapter;

    .line 36
    .line 37
    iget-object v1, p0, Lcom/join/mgps/fragment/w3;->e:Landroid/content/Context;

    .line 38
    .line 39
    invoke-direct {v0, v1}, Lcom/join/mgps/adapter/GameTopicAdapter;-><init>(Landroid/content/Context;)V

    .line 40
    .line 41
    .line 42
    iput-object v0, p0, Lcom/join/mgps/fragment/w3;->g:Lcom/join/mgps/adapter/GameTopicAdapter;

    .line 43
    .line 44
    iget-object v1, p0, Lcom/join/mgps/fragment/w3;->f:Lcom/join/mgps/customview/XListView2;

    .line 45
    .line 46
    invoke-virtual {v1, v0}, Lcom/join/mgps/customview/XListView2;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 47
    .line 48
    .line 49
    iget-object v0, p0, Lcom/join/mgps/fragment/w3;->f:Lcom/join/mgps/customview/XListView2;

    .line 50
    .line 51
    invoke-virtual {v0, p0}, Lcom/join/mgps/customview/XListView2;->setOnScrollListener(Landroid/widget/AbsListView$OnScrollListener;)V

    .line 52
    .line 53
    .line 54
    invoke-virtual {p0}, Lcom/join/mgps/fragment/w3;->Y()V

    .line 55
    .line 56
    .line 57
    return-void
.end method

.method private d0(ILjava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "page",
            "obj"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Lcom/join/mgps/dto/GameTopicBean;",
            ">;)V"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/fragment/w3;->k:Ljava/util/List;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    new-instance v0, Ljava/util/ArrayList;

    .line 6
    .line 7
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 8
    .line 9
    .line 10
    iput-object v0, p0, Lcom/join/mgps/fragment/w3;->k:Ljava/util/List;

    .line 11
    .line 12
    :cond_0
    if-eqz p2, :cond_2

    .line 13
    .line 14
    invoke-interface {p2}, Ljava/util/List;->size()I

    .line 15
    .line 16
    .line 17
    move-result v0

    .line 18
    if-eqz v0, :cond_2

    .line 19
    .line 20
    const/4 v0, 0x1

    .line 21
    if-ne p1, v0, :cond_1

    .line 22
    .line 23
    iget-object v1, p0, Lcom/join/mgps/fragment/w3;->k:Ljava/util/List;

    .line 24
    .line 25
    invoke-interface {v1}, Ljava/util/List;->clear()V

    .line 26
    .line 27
    .line 28
    iput v0, p0, Lcom/join/mgps/fragment/w3;->h:I

    .line 29
    .line 30
    :cond_1
    iput p1, p0, Lcom/join/mgps/fragment/w3;->h:I

    .line 31
    .line 32
    iget-object p1, p0, Lcom/join/mgps/fragment/w3;->k:Ljava/util/List;

    .line 33
    .line 34
    invoke-interface {p1, p2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 35
    .line 36
    .line 37
    invoke-virtual {p0}, Lcom/join/mgps/basefragment/a;->S()V

    .line 38
    .line 39
    .line 40
    :cond_2
    invoke-virtual {p0}, Lcom/join/mgps/fragment/w3;->i0()V

    .line 41
    .line 42
    .line 43
    invoke-virtual {p0}, Lcom/join/mgps/fragment/w3;->c0()V

    .line 44
    .line 45
    .line 46
    invoke-virtual {p0}, Lcom/join/mgps/fragment/w3;->b0()V

    .line 47
    .line 48
    .line 49
    return-void
.end method

.method private g0(Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "posts"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/join/mgps/dto/GameTopicBean;",
            ">;)V"
        }
    .end annotation

    .line 1
    if-eqz p1, :cond_1

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
    goto :goto_1

    .line 10
    :cond_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    .line 11
    .line 12
    .line 13
    move-result v0

    .line 14
    const/4 v1, 0x0

    .line 15
    :goto_0
    if-ge v1, v0, :cond_1

    .line 16
    .line 17
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 18
    .line 19
    .line 20
    move-result-object v2

    .line 21
    check-cast v2, Lcom/join/mgps/dto/GameTopicBean;

    .line 22
    .line 23
    invoke-direct {p0, v2}, Lcom/join/mgps/fragment/w3;->h0(Lcom/join/mgps/dto/GameTopicBean;)V

    .line 24
    .line 25
    .line 26
    add-int/lit8 v1, v1, 0x1

    .line 27
    .line 28
    goto :goto_0

    .line 29
    :cond_1
    :goto_1
    return-void
.end method

.method private h0(Lcom/join/mgps/dto/GameTopicBean;)V
    .locals 9
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "posts"
        }
    .end annotation

    .line 1
    new-instance v0, Lcom/join/mgps/adapter/GameTopicAdapter$g;

    .line 2
    .line 3
    sget-object v1, Lcom/join/mgps/adapter/GameTopicAdapter$ViewType;->POST_HEADER:Lcom/join/mgps/adapter/GameTopicAdapter$ViewType;

    .line 4
    .line 5
    new-instance v8, Lcom/join/mgps/adapter/GameTopicAdapter$g$b;

    .line 6
    .line 7
    invoke-virtual {p1}, Lcom/join/mgps/dto/GameTopicBean;->getId()I

    .line 8
    .line 9
    .line 10
    move-result v3

    .line 11
    invoke-virtual {p1}, Lcom/join/mgps/dto/GameTopicBean;->getCollection_id()Ljava/lang/String;

    .line 12
    .line 13
    .line 14
    move-result-object v4

    .line 15
    invoke-virtual {p1}, Lcom/join/mgps/dto/GameTopicBean;->getNick_name()Ljava/lang/String;

    .line 16
    .line 17
    .line 18
    move-result-object v5

    .line 19
    invoke-virtual {p1}, Lcom/join/mgps/dto/GameTopicBean;->getHead_portrait()Ljava/lang/String;

    .line 20
    .line 21
    .line 22
    move-result-object v6

    .line 23
    invoke-virtual {p1}, Lcom/join/mgps/dto/GameTopicBean;->getUid()I

    .line 24
    .line 25
    .line 26
    move-result v7

    .line 27
    move-object v2, v8

    .line 28
    invoke-direct/range {v2 .. v7}, Lcom/join/mgps/adapter/GameTopicAdapter$g$b;-><init>(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    .line 29
    .line 30
    .line 31
    invoke-direct {v0, v1, v8}, Lcom/join/mgps/adapter/GameTopicAdapter$g;-><init>(Lcom/join/mgps/adapter/GameTopicAdapter$ViewType;Ljava/lang/Object;)V

    .line 32
    .line 33
    .line 34
    iget-object v1, p0, Lcom/join/mgps/fragment/w3;->j:Ljava/util/List;

    .line 35
    .line 36
    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 37
    .line 38
    .line 39
    new-instance v0, Lcom/join/mgps/adapter/GameTopicAdapter$g;

    .line 40
    .line 41
    sget-object v1, Lcom/join/mgps/adapter/GameTopicAdapter$ViewType;->POST_VIDEO_THUMBNAIL:Lcom/join/mgps/adapter/GameTopicAdapter$ViewType;

    .line 42
    .line 43
    new-instance v2, Lcom/join/mgps/adapter/GameTopicAdapter$g$f;

    .line 44
    .line 45
    invoke-virtual {p1}, Lcom/join/mgps/dto/GameTopicBean;->getId()I

    .line 46
    .line 47
    .line 48
    move-result v3

    .line 49
    invoke-virtual {p1}, Lcom/join/mgps/dto/GameTopicBean;->getCollection_id()Ljava/lang/String;

    .line 50
    .line 51
    .line 52
    move-result-object v4

    .line 53
    invoke-virtual {p1}, Lcom/join/mgps/dto/GameTopicBean;->getPic_cover()Ljava/lang/String;

    .line 54
    .line 55
    .line 56
    move-result-object v5

    .line 57
    invoke-direct {v2, v3, v4, v5}, Lcom/join/mgps/adapter/GameTopicAdapter$g$f;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    .line 58
    .line 59
    .line 60
    invoke-direct {v0, v1, v2}, Lcom/join/mgps/adapter/GameTopicAdapter$g;-><init>(Lcom/join/mgps/adapter/GameTopicAdapter$ViewType;Ljava/lang/Object;)V

    .line 61
    .line 62
    .line 63
    iget-object v1, p0, Lcom/join/mgps/fragment/w3;->j:Ljava/util/List;

    .line 64
    .line 65
    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 66
    .line 67
    .line 68
    new-instance v0, Lcom/join/mgps/adapter/GameTopicAdapter$g;

    .line 69
    .line 70
    sget-object v1, Lcom/join/mgps/adapter/GameTopicAdapter$ViewType;->POST_SUBJECT:Lcom/join/mgps/adapter/GameTopicAdapter$ViewType;

    .line 71
    .line 72
    new-instance v2, Lcom/join/mgps/adapter/GameTopicAdapter$g$e;

    .line 73
    .line 74
    invoke-virtual {p1}, Lcom/join/mgps/dto/GameTopicBean;->getId()I

    .line 75
    .line 76
    .line 77
    move-result v3

    .line 78
    invoke-virtual {p1}, Lcom/join/mgps/dto/GameTopicBean;->getCollection_id()Ljava/lang/String;

    .line 79
    .line 80
    .line 81
    move-result-object v4

    .line 82
    invoke-virtual {p1}, Lcom/join/mgps/dto/GameTopicBean;->getTitle()Ljava/lang/String;

    .line 83
    .line 84
    .line 85
    move-result-object v5

    .line 86
    invoke-direct {v2, v3, v4, v5}, Lcom/join/mgps/adapter/GameTopicAdapter$g$e;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    .line 87
    .line 88
    .line 89
    invoke-direct {v0, v1, v2}, Lcom/join/mgps/adapter/GameTopicAdapter$g;-><init>(Lcom/join/mgps/adapter/GameTopicAdapter$ViewType;Ljava/lang/Object;)V

    .line 90
    .line 91
    .line 92
    iget-object v1, p0, Lcom/join/mgps/fragment/w3;->j:Ljava/util/List;

    .line 93
    .line 94
    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 95
    .line 96
    .line 97
    new-instance v0, Lcom/join/mgps/adapter/GameTopicAdapter$g;

    .line 98
    .line 99
    sget-object v1, Lcom/join/mgps/adapter/GameTopicAdapter$ViewType;->POST_FOOTER:Lcom/join/mgps/adapter/GameTopicAdapter$ViewType;

    .line 100
    .line 101
    new-instance v8, Lcom/join/mgps/adapter/GameTopicAdapter$g$a;

    .line 102
    .line 103
    invoke-virtual {p1}, Lcom/join/mgps/dto/GameTopicBean;->getId()I

    .line 104
    .line 105
    .line 106
    move-result v3

    .line 107
    invoke-virtual {p1}, Lcom/join/mgps/dto/GameTopicBean;->getCollection_id()Ljava/lang/String;

    .line 108
    .line 109
    .line 110
    move-result-object v4

    .line 111
    invoke-virtual {p1}, Lcom/join/mgps/dto/GameTopicBean;->getDescribe()Ljava/lang/String;

    .line 112
    .line 113
    .line 114
    move-result-object v5

    .line 115
    invoke-virtual {p1}, Lcom/join/mgps/dto/GameTopicBean;->getView()I

    .line 116
    .line 117
    .line 118
    move-result v6

    .line 119
    invoke-virtual {p1}, Lcom/join/mgps/dto/GameTopicBean;->getComment_count()I

    .line 120
    .line 121
    .line 122
    move-result v7

    .line 123
    move-object v2, v8

    .line 124
    invoke-direct/range {v2 .. v7}, Lcom/join/mgps/adapter/GameTopicAdapter$g$a;-><init>(ILjava/lang/String;Ljava/lang/String;II)V

    .line 125
    .line 126
    .line 127
    invoke-direct {v0, v1, v8}, Lcom/join/mgps/adapter/GameTopicAdapter$g;-><init>(Lcom/join/mgps/adapter/GameTopicAdapter$ViewType;Ljava/lang/Object;)V

    .line 128
    .line 129
    .line 130
    iget-object p1, p0, Lcom/join/mgps/fragment/w3;->j:Ljava/util/List;

    .line 131
    .line 132
    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 133
    .line 134
    .line 135
    return-void
.end method


# virtual methods
.method protected P()I
    .locals 1

    .line 1
    const v0, 0x7f0d02a5

    return v0
.end method

.method protected Q()I
    .locals 1

    .line 1
    const v0, 0x7f0a06c6

    return v0
.end method

.method Y()V
    .locals 4

    .line 1
    new-instance v0, Landroid/view/View;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/join/mgps/fragment/w3;->e:Landroid/content/Context;

    .line 4
    .line 5
    invoke-direct {v0, v1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 6
    .line 7
    .line 8
    new-instance v1, Landroid/widget/AbsListView$LayoutParams;

    .line 9
    .line 10
    iget-object v2, p0, Lcom/join/mgps/fragment/w3;->e:Landroid/content/Context;

    .line 11
    .line 12
    const/high16 v3, 0x41600000    # 14.0f

    .line 13
    .line 14
    invoke-static {v2, v3}, Lcom/join/mgps/Util/i0;->a(Landroid/content/Context;F)I

    .line 15
    .line 16
    .line 17
    move-result v2

    .line 18
    const/4 v3, 0x2

    .line 19
    invoke-direct {v1, v3, v2}, Landroid/widget/AbsListView$LayoutParams;-><init>(II)V

    .line 20
    .line 21
    .line 22
    invoke-virtual {v0, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 23
    .line 24
    .line 25
    iget-object v1, p0, Lcom/join/mgps/fragment/w3;->f:Lcom/join/mgps/customview/XListView2;

    .line 26
    .line 27
    invoke-virtual {v1, v0}, Landroid/widget/ListView;->addFooterView(Landroid/view/View;)V

    .line 28
    .line 29
    .line 30
    return-void
.end method

.method a0()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/fragment/w3;->e:Landroid/content/Context;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/join/android/app/common/utils/m;->j(Landroid/content/Context;)Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-nez v0, :cond_0

    .line 8
    .line 9
    const v0, 0x7f12031e

    .line 10
    .line 11
    .line 12
    invoke-virtual {p0, v0}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    .line 13
    .line 14
    .line 15
    move-result-object v0

    .line 16
    invoke-virtual {p0, v0}, Lcom/join/mgps/fragment/w3;->showToast(Ljava/lang/String;)V

    .line 17
    .line 18
    .line 19
    invoke-virtual {p0}, Lcom/join/mgps/fragment/w3;->i0()V

    .line 20
    .line 21
    .line 22
    const/4 v0, 0x0

    .line 23
    goto :goto_0

    .line 24
    :cond_0
    const/4 v0, 0x1

    .line 25
    :goto_0
    return v0
.end method

.method afterViews()V
    .locals 1
    .annotation build Lorg/androidannotations/annotations/AfterViews;
    .end annotation

    .line 1
    invoke-static {}, Lcom/join/mgps/rpc/impl/d;->O1()Lcom/join/mgps/rpc/impl/d;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    iput-object v0, p0, Lcom/join/mgps/fragment/w3;->d:Lcom/join/mgps/rpc/e;

    .line 6
    .line 7
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    iput-object v0, p0, Lcom/join/mgps/fragment/w3;->e:Landroid/content/Context;

    .line 12
    .line 13
    invoke-direct {p0}, Lcom/join/mgps/fragment/w3;->Z()V

    .line 14
    .line 15
    .line 16
    invoke-virtual {p0}, Lcom/join/mgps/fragment/w3;->loadData()V

    .line 17
    .line 18
    .line 19
    return-void
.end method

.method b0()V
    .locals 2
    .annotation build Lorg/androidannotations/annotations/UiThread;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/fragment/w3;->g:Lcom/join/mgps/adapter/GameTopicAdapter;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    iget-object v1, p0, Lcom/join/mgps/fragment/w3;->j:Ljava/util/List;

    .line 7
    .line 8
    invoke-virtual {v0, v1}, Lcom/join/mgps/adapter/GameTopicAdapter;->l(Ljava/util/List;)V

    .line 9
    .line 10
    .line 11
    iget-object v0, p0, Lcom/join/mgps/fragment/w3;->g:Lcom/join/mgps/adapter/GameTopicAdapter;

    .line 12
    .line 13
    invoke-virtual {v0}, Lcom/join/mgps/adapter/GameTopicAdapter;->notifyDataSetChanged()V

    .line 14
    .line 15
    .line 16
    return-void
.end method

.method declared-synchronized c0()V
    .locals 1

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    iget-object v0, p0, Lcom/join/mgps/fragment/w3;->j:Ljava/util/List;

    .line 3
    .line 4
    if-nez v0, :cond_0

    .line 5
    .line 6
    new-instance v0, Ljava/util/ArrayList;

    .line 7
    .line 8
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 9
    .line 10
    .line 11
    iput-object v0, p0, Lcom/join/mgps/fragment/w3;->j:Ljava/util/List;

    .line 12
    .line 13
    :cond_0
    iget-object v0, p0, Lcom/join/mgps/fragment/w3;->j:Ljava/util/List;

    .line 14
    .line 15
    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 16
    .line 17
    .line 18
    iget-object v0, p0, Lcom/join/mgps/fragment/w3;->k:Ljava/util/List;

    .line 19
    .line 20
    invoke-direct {p0, v0}, Lcom/join/mgps/fragment/w3;->g0(Ljava/util/List;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 21
    .line 22
    .line 23
    monitor-exit p0

    .line 24
    return-void

    .line 25
    :catchall_0
    move-exception v0

    .line 26
    monitor-exit p0

    .line 27
    throw v0
.end method

.method e0()V
    .locals 2

    .line 1
    iget v0, p0, Lcom/join/mgps/fragment/w3;->i:I

    .line 2
    .line 3
    const/4 v1, -0x1

    .line 4
    if-ne v0, v1, :cond_0

    .line 5
    .line 6
    invoke-virtual {p0}, Lcom/join/mgps/fragment/w3;->i0()V

    .line 7
    .line 8
    .line 9
    return-void

    .line 10
    :cond_0
    iget v0, p0, Lcom/join/mgps/fragment/w3;->h:I

    .line 11
    .line 12
    add-int/lit8 v0, v0, 0x1

    .line 13
    .line 14
    invoke-virtual {p0, v0}, Lcom/join/mgps/fragment/w3;->loadData(I)V

    .line 15
    .line 16
    .line 17
    return-void
.end method

.method f0()V
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/join/mgps/fragment/w3;->loadData()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method i0()V
    .locals 4
    .annotation build Lorg/androidannotations/annotations/UiThread;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/fragment/w3;->l:Landroid/os/Handler;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    const-wide/16 v2, 0x5dc

    .line 5
    .line 6
    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 7
    .line 8
    .line 9
    return-void
.end method

.method protected loadData()V
    .locals 1

    const/4 v0, 0x1

    .line 1
    invoke-virtual {p0, v0}, Lcom/join/mgps/fragment/w3;->loadData(I)V

    return-void
.end method

.method protected loadData(I)V
    .locals 5
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "pn"
        }
    .end annotation

    .annotation build Lorg/androidannotations/annotations/Background;
    .end annotation

    .line 2
    iget-object v0, p0, Lcom/join/mgps/fragment/w3;->e:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/join/android/app/common/utils/m;->j(Landroid/content/Context;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_8

    const/4 v0, 0x0

    const/4 v2, -0x1

    .line 3
    :try_start_0
    iget v3, p0, Lcom/join/mgps/fragment/w3;->i:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-ne v3, p1, :cond_1

    if-eq v3, v2, :cond_0

    .line 4
    iput v0, p0, Lcom/join/mgps/fragment/w3;->i:I

    .line 5
    :cond_0
    invoke-virtual {p0}, Lcom/join/mgps/fragment/w3;->i0()V

    return-void

    .line 6
    :cond_1
    :try_start_1
    iput p1, p0, Lcom/join/mgps/fragment/w3;->i:I

    .line 7
    iget-object v3, p0, Lcom/join/mgps/fragment/w3;->d:Lcom/join/mgps/rpc/e;

    iget-object v4, p0, Lcom/join/mgps/fragment/w3;->e:Landroid/content/Context;

    invoke-static {v4}, Lcom/join/mgps/Util/RequestBeanUtil;->getInstance(Landroid/content/Context;)Lcom/join/mgps/Util/RequestBeanUtil;

    move-result-object v4

    invoke-virtual {v4, p1}, Lcom/join/mgps/Util/RequestBeanUtil;->getGameTopicRequestBean(I)Lcom/join/mgps/dto/CommonRequestBean;

    move-result-object v4

    invoke-interface {v3, v4}, Lcom/join/mgps/rpc/e;->D0(Lcom/join/mgps/dto/CommonRequestBean;)Lcom/join/mgps/dto/ResultMainBean;

    move-result-object v3

    if-eqz v3, :cond_4

    .line 8
    invoke-virtual {v3}, Lcom/join/mgps/dto/ResultMainBean;->getFlag()I

    move-result v4

    if-ne v4, v1, :cond_4

    invoke-virtual {v3}, Lcom/join/mgps/dto/ResultMainBean;->getMessages()Lcom/join/mgps/dto/ResultMessageBean;

    move-result-object v4

    if-eqz v4, :cond_4

    .line 9
    invoke-virtual {v3}, Lcom/join/mgps/dto/ResultMainBean;->getMessages()Lcom/join/mgps/dto/ResultMessageBean;

    move-result-object v3

    invoke-virtual {v3}, Lcom/join/mgps/dto/ResultMessageBean;->getData()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/List;

    if-eqz v3, :cond_2

    .line 10
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v4

    if-lez v4, :cond_2

    .line 11
    invoke-direct {p0, p1, v3}, Lcom/join/mgps/fragment/w3;->d0(ILjava/util/List;)V

    goto :goto_0

    :cond_2
    if-ne p1, v1, :cond_3

    .line 12
    invoke-virtual {p0}, Lcom/join/mgps/basefragment/a;->X()V

    .line 13
    :cond_3
    iput v2, p0, Lcom/join/mgps/fragment/w3;->i:I

    goto :goto_0

    :cond_4
    if-ne p1, v1, :cond_5

    .line 14
    invoke-virtual {p0}, Lcom/join/mgps/basefragment/a;->V()V

    goto :goto_0

    .line 15
    :cond_5
    iput v2, p0, Lcom/join/mgps/fragment/w3;->i:I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 16
    :goto_0
    iget p1, p0, Lcom/join/mgps/fragment/w3;->i:I

    if-eq p1, v2, :cond_6

    goto :goto_1

    :catchall_0
    move-exception p1

    goto :goto_2

    :catch_0
    move-exception p1

    .line 17
    :try_start_2
    invoke-virtual {p0}, Lcom/join/mgps/basefragment/a;->V()V

    .line 18
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 19
    iget p1, p0, Lcom/join/mgps/fragment/w3;->i:I

    if-eq p1, v2, :cond_6

    :goto_1
    iput v0, p0, Lcom/join/mgps/fragment/w3;->i:I

    .line 20
    :cond_6
    invoke-virtual {p0}, Lcom/join/mgps/fragment/w3;->i0()V

    goto :goto_3

    .line 21
    :goto_2
    iget v1, p0, Lcom/join/mgps/fragment/w3;->i:I

    if-eq v1, v2, :cond_7

    iput v0, p0, Lcom/join/mgps/fragment/w3;->i:I

    .line 22
    :cond_7
    invoke-virtual {p0}, Lcom/join/mgps/fragment/w3;->i0()V

    .line 23
    throw p1

    .line 24
    :cond_8
    iget p1, p0, Lcom/join/mgps/fragment/w3;->h:I

    if-ge p1, v1, :cond_9

    .line 25
    invoke-virtual {p0}, Lcom/join/mgps/basefragment/a;->V()V

    .line 26
    :cond_9
    invoke-virtual {p0}, Lcom/join/mgps/fragment/w3;->i0()V

    :goto_3
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

.method showToast(Ljava/lang/String;)V
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
    iget-object v0, p0, Lcom/join/mgps/fragment/w3;->e:Landroid/content/Context;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/join/mgps/Util/a3;->b(Landroid/content/Context;)Lcom/join/mgps/Util/a3;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-virtual {v0, p1}, Lcom/join/mgps/Util/a3;->d(Ljava/lang/String;)V

    .line 8
    .line 9
    .line 10
    return-void
.end method
