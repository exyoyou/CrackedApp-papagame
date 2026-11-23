.class public Lcom/join/mgps/fragment/d3;
.super Lcom/join/mgps/fragment/e;
.source "SourceFile"

# interfaces
.implements Lcom/join/mgps/customview/i;
.implements Lcom/join/mgps/adapter/x0$a;


# annotations
.annotation build Lorg/androidannotations/annotations/EFragment;
    value = 0x7f0d029e
.end annotation


# instance fields
.field c:Lcom/join/mgps/ptr/PtrClassicFrameLayout;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field

.field d:Lcom/join/mgps/customview/XListView;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field

.field e:Landroidx/constraintlayout/widget/Group;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field

.field f:I

.field g:I

.field h:Lcom/join/mgps/rpc/j;

.field i:Lcom/join/mgps/adapter/x0;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/join/mgps/fragment/e;-><init>()V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x1

    .line 5
    iput v0, p0, Lcom/join/mgps/fragment/d3;->f:I

    .line 6
    .line 7
    const/4 v0, 0x0

    .line 8
    iput v0, p0, Lcom/join/mgps/fragment/d3;->g:I

    .line 9
    .line 10
    return-void
.end method

.method public static synthetic O(Lcom/join/mgps/fragment/d3;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/join/mgps/fragment/d3;->S()V

    return-void
.end method

.method public static synthetic P(Lcom/join/mgps/fragment/d3;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/join/mgps/fragment/d3;->U()V

    return-void
.end method

.method private synthetic S()V
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/join/mgps/fragment/d3;->Q()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method private synthetic U()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/join/mgps/fragment/d3;->d:Lcom/join/mgps/customview/XListView;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0}, Lcom/join/mgps/customview/XListView;->q()V

    .line 6
    .line 7
    .line 8
    iget v0, p0, Lcom/join/mgps/fragment/d3;->g:I

    .line 9
    .line 10
    const/4 v1, -0x1

    .line 11
    if-ne v0, v1, :cond_0

    .line 12
    .line 13
    iget-object v0, p0, Lcom/join/mgps/fragment/d3;->d:Lcom/join/mgps/customview/XListView;

    .line 14
    .line 15
    invoke-virtual {v0}, Lcom/join/mgps/customview/XListView;->setNoMore()V

    .line 16
    .line 17
    .line 18
    :cond_0
    return-void
.end method


# virtual methods
.method public Q()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/fragment/d3;->c:Lcom/join/mgps/ptr/PtrClassicFrameLayout;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0}, Lcom/join/mgps/ptr/PtrFrameLayout;->f()V

    .line 6
    .line 7
    .line 8
    :cond_0
    return-void
.end method

.method public R()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/fragment/d3;->c:Lcom/join/mgps/ptr/PtrClassicFrameLayout;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0}, Lcom/join/mgps/ptr/PtrFrameLayout;->q()Z

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    return v0

    .line 10
    :cond_0
    const/4 v0, 0x0

    .line 11
    return v0
.end method

.method V()V
    .locals 4
    .annotation build Lorg/androidannotations/annotations/Background;
    .end annotation

    .line 1
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    :try_start_0
    invoke-static {v0}, Lcom/ta/utdid2/android/utils/f;->f(Landroid/content/Context;)Z

    .line 6
    .line 7
    .line 8
    move-result v1

    .line 9
    if-eqz v1, :cond_2

    .line 10
    .line 11
    invoke-static {v0}, Lcom/join/mgps/Util/AccountUtil_;->getInstance_(Landroid/content/Context;)Lcom/join/mgps/Util/AccountUtil_;

    .line 12
    .line 13
    .line 14
    move-result-object v1

    .line 15
    invoke-virtual {v1}, Lcom/join/mgps/Util/b;->getUid()Ljava/lang/String;

    .line 16
    .line 17
    .line 18
    move-result-object v1

    .line 19
    invoke-static {v0}, Lcom/join/mgps/Util/AccountUtil_;->getInstance_(Landroid/content/Context;)Lcom/join/mgps/Util/AccountUtil_;

    .line 20
    .line 21
    .line 22
    move-result-object v0

    .line 23
    invoke-virtual {v0}, Lcom/join/mgps/Util/b;->getToken()Ljava/lang/String;

    .line 24
    .line 25
    .line 26
    move-result-object v0

    .line 27
    new-instance v2, Ljava/util/HashMap;

    .line 28
    .line 29
    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    .line 30
    .line 31
    .line 32
    const-string v3, "uid"

    .line 33
    .line 34
    invoke-interface {v2, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 35
    .line 36
    .line 37
    const-string v1, "token"

    .line 38
    .line 39
    invoke-interface {v2, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 40
    .line 41
    .line 42
    iget-object v0, p0, Lcom/join/mgps/fragment/d3;->h:Lcom/join/mgps/rpc/j;

    .line 43
    .line 44
    invoke-interface {v0, v2}, Lcom/join/mgps/rpc/j;->l(Ljava/util/Map;)Lcom/join/mgps/dto/ResponseModel;

    .line 45
    .line 46
    .line 47
    move-result-object v0

    .line 48
    if-eqz v0, :cond_0

    .line 49
    .line 50
    invoke-virtual {v0}, Lcom/join/mgps/dto/ResponseModel;->getError()I

    .line 51
    .line 52
    .line 53
    move-result v1

    .line 54
    if-nez v1, :cond_0

    .line 55
    .line 56
    goto :goto_1

    .line 57
    :cond_0
    if-eqz v0, :cond_1

    .line 58
    .line 59
    invoke-virtual {v0}, Lcom/join/mgps/dto/ResponseModel;->getMsg()Ljava/lang/String;

    .line 60
    .line 61
    .line 62
    move-result-object v0

    .line 63
    goto :goto_0

    .line 64
    :cond_1
    const v0, 0x7f12027d

    .line 65
    .line 66
    .line 67
    invoke-virtual {p0, v0}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    .line 68
    .line 69
    .line 70
    move-result-object v0

    .line 71
    :goto_0
    invoke-virtual {p0, v0}, Lcom/join/mgps/fragment/e;->T(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 72
    .line 73
    .line 74
    goto :goto_1

    .line 75
    :catch_0
    move-exception v0

    .line 76
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 77
    .line 78
    .line 79
    :cond_2
    :goto_1
    return-void
.end method

.method W(I)V
    .locals 6
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "page"
        }
    .end annotation

    .annotation build Lorg/androidannotations/annotations/Background;
    .end annotation

    .line 1
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    const/4 v1, 0x0

    .line 6
    const/4 v2, -0x1

    .line 7
    :try_start_0
    iget v3, p0, Lcom/join/mgps/fragment/d3;->g:I

    .line 8
    .line 9
    if-eq v3, p1, :cond_6

    .line 10
    .line 11
    if-ne v3, v2, :cond_0

    .line 12
    .line 13
    goto :goto_2

    .line 14
    :cond_0
    invoke-static {v0}, Lcom/ta/utdid2/android/utils/f;->f(Landroid/content/Context;)Z

    .line 15
    .line 16
    .line 17
    move-result v3

    .line 18
    if-eqz v3, :cond_4

    .line 19
    .line 20
    invoke-static {v0}, Lcom/join/mgps/Util/AccountUtil_;->getInstance_(Landroid/content/Context;)Lcom/join/mgps/Util/AccountUtil_;

    .line 21
    .line 22
    .line 23
    move-result-object v3

    .line 24
    invoke-virtual {v3}, Lcom/join/mgps/Util/b;->getUid()Ljava/lang/String;

    .line 25
    .line 26
    .line 27
    move-result-object v3

    .line 28
    invoke-static {v0}, Lcom/join/mgps/Util/AccountUtil_;->getInstance_(Landroid/content/Context;)Lcom/join/mgps/Util/AccountUtil_;

    .line 29
    .line 30
    .line 31
    move-result-object v0

    .line 32
    invoke-virtual {v0}, Lcom/join/mgps/Util/b;->getToken()Ljava/lang/String;

    .line 33
    .line 34
    .line 35
    move-result-object v0

    .line 36
    iget-object v4, p0, Lcom/join/mgps/fragment/d3;->h:Lcom/join/mgps/rpc/j;

    .line 37
    .line 38
    const/16 v5, 0xa

    .line 39
    .line 40
    invoke-interface {v4, v3, v0, v5, p1}, Lcom/join/mgps/rpc/j;->f(Ljava/lang/String;Ljava/lang/String;II)Lcom/join/mgps/dto/ResponseModel;

    .line 41
    .line 42
    .line 43
    move-result-object v0

    .line 44
    if-eqz v0, :cond_2

    .line 45
    .line 46
    invoke-virtual {v0}, Lcom/join/mgps/dto/ResponseModel;->getError()I

    .line 47
    .line 48
    .line 49
    move-result v3

    .line 50
    if-nez v3, :cond_2

    .line 51
    .line 52
    invoke-virtual {v0}, Lcom/join/mgps/dto/ResponseModel;->getData()Ljava/lang/Object;

    .line 53
    .line 54
    .line 55
    move-result-object v3

    .line 56
    check-cast v3, Ljava/util/List;

    .line 57
    .line 58
    invoke-virtual {p0, v3, p1}, Lcom/join/mgps/fragment/d3;->a0(Ljava/util/List;I)V

    .line 59
    .line 60
    .line 61
    invoke-virtual {v0}, Lcom/join/mgps/dto/ResponseModel;->getData()Ljava/lang/Object;

    .line 62
    .line 63
    .line 64
    move-result-object v3

    .line 65
    if-eqz v3, :cond_1

    .line 66
    .line 67
    invoke-virtual {v0}, Lcom/join/mgps/dto/ResponseModel;->getData()Ljava/lang/Object;

    .line 68
    .line 69
    .line 70
    move-result-object v0

    .line 71
    check-cast v0, Ljava/util/List;

    .line 72
    .line 73
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 74
    .line 75
    .line 76
    move-result v0

    .line 77
    if-nez v0, :cond_5

    .line 78
    .line 79
    :cond_1
    iput v2, p0, Lcom/join/mgps/fragment/d3;->g:I

    .line 80
    .line 81
    goto :goto_1

    .line 82
    :cond_2
    if-eqz v0, :cond_3

    .line 83
    .line 84
    invoke-virtual {v0}, Lcom/join/mgps/dto/ResponseModel;->getMsg()Ljava/lang/String;

    .line 85
    .line 86
    .line 87
    move-result-object v0

    .line 88
    goto :goto_0

    .line 89
    :cond_3
    const v0, 0x7f12027d

    .line 90
    .line 91
    .line 92
    invoke-virtual {p0, v0}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    .line 93
    .line 94
    .line 95
    move-result-object v0

    .line 96
    :goto_0
    invoke-virtual {p0, v0}, Lcom/join/mgps/fragment/e;->T(Ljava/lang/String;)V

    .line 97
    .line 98
    .line 99
    goto :goto_1

    .line 100
    :cond_4
    const v0, 0x7f12031e

    .line 101
    .line 102
    .line 103
    invoke-virtual {p0, v0}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    .line 104
    .line 105
    .line 106
    move-result-object v0

    .line 107
    invoke-virtual {p0, v0}, Lcom/join/mgps/fragment/e;->T(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 108
    .line 109
    .line 110
    :cond_5
    :goto_1
    iget v0, p0, Lcom/join/mgps/fragment/d3;->g:I

    .line 111
    .line 112
    if-eq v0, v2, :cond_8

    .line 113
    .line 114
    goto :goto_3

    .line 115
    :cond_6
    :goto_2
    if-eq v3, v2, :cond_7

    .line 116
    .line 117
    iput p1, p0, Lcom/join/mgps/fragment/d3;->f:I

    .line 118
    .line 119
    iput v1, p0, Lcom/join/mgps/fragment/d3;->g:I

    .line 120
    .line 121
    :cond_7
    invoke-virtual {p0}, Lcom/join/mgps/fragment/d3;->Y()V

    .line 122
    .line 123
    .line 124
    return-void

    .line 125
    :catchall_0
    move-exception v0

    .line 126
    goto :goto_4

    .line 127
    :catch_0
    move-exception v0

    .line 128
    :try_start_1
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 129
    .line 130
    .line 131
    iget v0, p0, Lcom/join/mgps/fragment/d3;->g:I

    .line 132
    .line 133
    if-eq v0, v2, :cond_8

    .line 134
    .line 135
    :goto_3
    iput p1, p0, Lcom/join/mgps/fragment/d3;->f:I

    .line 136
    .line 137
    iput v1, p0, Lcom/join/mgps/fragment/d3;->g:I

    .line 138
    .line 139
    :cond_8
    invoke-virtual {p0}, Lcom/join/mgps/fragment/d3;->Y()V

    .line 140
    .line 141
    .line 142
    return-void

    .line 143
    :goto_4
    iget v3, p0, Lcom/join/mgps/fragment/d3;->g:I

    .line 144
    .line 145
    if-eq v3, v2, :cond_9

    .line 146
    .line 147
    iput p1, p0, Lcom/join/mgps/fragment/d3;->f:I

    .line 148
    .line 149
    iput v1, p0, Lcom/join/mgps/fragment/d3;->g:I

    .line 150
    .line 151
    :cond_9
    invoke-virtual {p0}, Lcom/join/mgps/fragment/d3;->Y()V

    .line 152
    .line 153
    .line 154
    throw v0
.end method

.method X()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/join/mgps/fragment/d3;->c:Lcom/join/mgps/ptr/PtrClassicFrameLayout;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    const/4 v1, 0x1

    .line 7
    invoke-virtual {v0, v1}, Lcom/join/mgps/ptr/PtrFrameLayout;->j(Z)V

    .line 8
    .line 9
    .line 10
    iget-object v0, p0, Lcom/join/mgps/fragment/d3;->c:Lcom/join/mgps/ptr/PtrClassicFrameLayout;

    .line 11
    .line 12
    new-instance v1, Lcom/join/mgps/fragment/d3$a;

    .line 13
    .line 14
    invoke-direct {v1, p0}, Lcom/join/mgps/fragment/d3$a;-><init>(Lcom/join/mgps/fragment/d3;)V

    .line 15
    .line 16
    .line 17
    invoke-virtual {v0, v1}, Lcom/join/mgps/ptr/PtrFrameLayout;->setPtrHandler(Lcom/join/mgps/ptr/b;)V

    .line 18
    .line 19
    .line 20
    return-void
.end method

.method Y()V
    .locals 4
    .annotation build Lorg/androidannotations/annotations/UiThread;
    .end annotation

    .line 1
    invoke-virtual {p0}, Lcom/join/mgps/fragment/d3;->Z()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lcom/join/mgps/fragment/e;->mHandler:Landroid/os/Handler;

    .line 5
    .line 6
    new-instance v1, Lcom/join/mgps/fragment/b3;

    .line 7
    .line 8
    invoke-direct {v1, p0}, Lcom/join/mgps/fragment/b3;-><init>(Lcom/join/mgps/fragment/d3;)V

    .line 9
    .line 10
    .line 11
    const-wide/16 v2, 0xc8

    .line 12
    .line 13
    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 14
    .line 15
    .line 16
    return-void
.end method

.method public Z()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/fragment/d3;->c:Lcom/join/mgps/ptr/PtrClassicFrameLayout;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0}, Lcom/join/mgps/ptr/PtrFrameLayout;->C()V

    .line 6
    .line 7
    .line 8
    :cond_0
    return-void
.end method

.method a0(Ljava/util/List;I)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "data",
            "page"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/join/mgps/dto/FriendBean;",
            ">;I)V"
        }
    .end annotation

    .annotation build Lorg/androidannotations/annotations/UiThread;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/fragment/d3;->i:Lcom/join/mgps/adapter/x0;

    .line 2
    .line 3
    if-eqz v0, :cond_4

    .line 4
    .line 5
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->isDetached()Z

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    if-nez v0, :cond_4

    .line 10
    .line 11
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->isAdded()Z

    .line 12
    .line 13
    .line 14
    move-result v0

    .line 15
    if-nez v0, :cond_0

    .line 16
    .line 17
    goto :goto_0

    .line 18
    :cond_0
    const/4 v0, 0x1

    .line 19
    if-ne p2, v0, :cond_1

    .line 20
    .line 21
    iget-object p2, p0, Lcom/join/mgps/fragment/d3;->i:Lcom/join/mgps/adapter/x0;

    .line 22
    .line 23
    invoke-virtual {p2}, Lcom/join/mgps/adapter/x0;->c()Ljava/util/List;

    .line 24
    .line 25
    .line 26
    move-result-object p2

    .line 27
    invoke-interface {p2}, Ljava/util/List;->clear()V

    .line 28
    .line 29
    .line 30
    :cond_1
    if-eqz p1, :cond_2

    .line 31
    .line 32
    invoke-interface {p1}, Ljava/util/List;->size()I

    .line 33
    .line 34
    .line 35
    move-result p2

    .line 36
    if-eqz p2, :cond_2

    .line 37
    .line 38
    iget-object p2, p0, Lcom/join/mgps/fragment/d3;->i:Lcom/join/mgps/adapter/x0;

    .line 39
    .line 40
    invoke-virtual {p2}, Lcom/join/mgps/adapter/x0;->c()Ljava/util/List;

    .line 41
    .line 42
    .line 43
    move-result-object p2

    .line 44
    invoke-interface {p2, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 45
    .line 46
    .line 47
    :cond_2
    iget-object p1, p0, Lcom/join/mgps/fragment/d3;->i:Lcom/join/mgps/adapter/x0;

    .line 48
    .line 49
    invoke-virtual {p1}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    .line 50
    .line 51
    .line 52
    iget-object p1, p0, Lcom/join/mgps/fragment/d3;->e:Landroidx/constraintlayout/widget/Group;

    .line 53
    .line 54
    if-eqz p1, :cond_4

    .line 55
    .line 56
    iget-object p1, p0, Lcom/join/mgps/fragment/d3;->i:Lcom/join/mgps/adapter/x0;

    .line 57
    .line 58
    invoke-virtual {p1}, Lcom/join/mgps/adapter/x0;->c()Ljava/util/List;

    .line 59
    .line 60
    .line 61
    move-result-object p1

    .line 62
    invoke-interface {p1}, Ljava/util/List;->size()I

    .line 63
    .line 64
    .line 65
    move-result p1

    .line 66
    if-nez p1, :cond_3

    .line 67
    .line 68
    iget-object p1, p0, Lcom/join/mgps/fragment/d3;->e:Landroidx/constraintlayout/widget/Group;

    .line 69
    .line 70
    const/4 p2, 0x0

    .line 71
    invoke-virtual {p1, p2}, Landroidx/constraintlayout/widget/Group;->setVisibility(I)V

    .line 72
    .line 73
    .line 74
    goto :goto_0

    .line 75
    :cond_3
    iget-object p1, p0, Lcom/join/mgps/fragment/d3;->e:Landroidx/constraintlayout/widget/Group;

    .line 76
    .line 77
    const/16 p2, 0x8

    .line 78
    .line 79
    invoke-virtual {p1, p2}, Landroidx/constraintlayout/widget/Group;->setVisibility(I)V

    .line 80
    .line 81
    .line 82
    :cond_4
    :goto_0
    return-void
.end method

.method afterViews()V
    .locals 2
    .annotation build Lorg/androidannotations/annotations/AfterViews;
    .end annotation

    .line 1
    invoke-static {}, Lcom/join/mgps/rpc/impl/h;->p()Lcom/join/mgps/rpc/impl/h;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    iput-object v0, p0, Lcom/join/mgps/fragment/d3;->h:Lcom/join/mgps/rpc/j;

    .line 6
    .line 7
    invoke-virtual {p0}, Lcom/join/mgps/fragment/d3;->X()V

    .line 8
    .line 9
    .line 10
    iget-object v0, p0, Lcom/join/mgps/fragment/d3;->d:Lcom/join/mgps/customview/XListView;

    .line 11
    .line 12
    invoke-virtual {v0, p0}, Lcom/join/mgps/customview/XListView;->setPullLoadEnable(Lcom/join/mgps/customview/i;)V

    .line 13
    .line 14
    .line 15
    new-instance v0, Lcom/join/mgps/adapter/x0;

    .line 16
    .line 17
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    .line 18
    .line 19
    .line 20
    move-result-object v1

    .line 21
    invoke-direct {v0, v1}, Lcom/join/mgps/adapter/x0;-><init>(Landroid/content/Context;)V

    .line 22
    .line 23
    .line 24
    iput-object v0, p0, Lcom/join/mgps/fragment/d3;->i:Lcom/join/mgps/adapter/x0;

    .line 25
    .line 26
    invoke-virtual {v0, p0}, Lcom/join/mgps/adapter/x0;->g(Lcom/join/mgps/adapter/x0$a;)V

    .line 27
    .line 28
    .line 29
    iget-object v0, p0, Lcom/join/mgps/fragment/d3;->d:Lcom/join/mgps/customview/XListView;

    .line 30
    .line 31
    iget-object v1, p0, Lcom/join/mgps/fragment/d3;->i:Lcom/join/mgps/adapter/x0;

    .line 32
    .line 33
    invoke-virtual {v0, v1}, Lcom/join/mgps/customview/XListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 34
    .line 35
    .line 36
    invoke-virtual {p0}, Lcom/join/mgps/fragment/d3;->Q()V

    .line 37
    .line 38
    .line 39
    return-void
.end method

.method public f(Lcom/join/mgps/dto/FriendBean;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "bean"
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    instance-of v0, v0, Lcom/join/mgps/activity/FriendActivity;

    .line 6
    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    check-cast v0, Lcom/join/mgps/activity/FriendActivity;

    .line 14
    .line 15
    new-instance v1, Ljava/lang/StringBuilder;

    .line 16
    .line 17
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 18
    .line 19
    .line 20
    invoke-virtual {p1}, Lcom/join/mgps/dto/FriendBean;->getRuid()I

    .line 21
    .line 22
    .line 23
    move-result p1

    .line 24
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 25
    .line 26
    .line 27
    const-string p1, ""

    .line 28
    .line 29
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 30
    .line 31
    .line 32
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 33
    .line 34
    .line 35
    move-result-object p1

    .line 36
    invoke-virtual {v0, p1}, Lcom/join/mgps/activity/FriendActivity;->onFriendClick(Ljava/lang/String;)V

    .line 37
    .line 38
    .line 39
    :cond_0
    return-void
.end method

.method protected lazyLoad()V
    .locals 0

    return-void
.end method

.method public onHiddenChanged(Z)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "hidden"
        }
    .end annotation

    .line 1
    invoke-super {p0, p1}, Landroidx/fragment/app/Fragment;->onHiddenChanged(Z)V

    .line 2
    .line 3
    .line 4
    if-nez p1, :cond_0

    .line 5
    .line 6
    iget-object p1, p0, Lcom/join/mgps/fragment/e;->mHandler:Landroid/os/Handler;

    .line 7
    .line 8
    new-instance v0, Lcom/join/mgps/fragment/c3;

    .line 9
    .line 10
    invoke-direct {v0, p0}, Lcom/join/mgps/fragment/c3;-><init>(Lcom/join/mgps/fragment/d3;)V

    .line 11
    .line 12
    .line 13
    const-wide/16 v1, 0xc8

    .line 14
    .line 15
    invoke-virtual {p1, v0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 16
    .line 17
    .line 18
    goto :goto_1

    .line 19
    :cond_0
    iget-object p1, p0, Lcom/join/mgps/fragment/d3;->i:Lcom/join/mgps/adapter/x0;

    .line 20
    .line 21
    if-eqz p1, :cond_2

    .line 22
    .line 23
    invoke-virtual {p1}, Lcom/join/mgps/adapter/x0;->c()Ljava/util/List;

    .line 24
    .line 25
    .line 26
    move-result-object p1

    .line 27
    if-eqz p1, :cond_2

    .line 28
    .line 29
    iget-object p1, p0, Lcom/join/mgps/fragment/d3;->i:Lcom/join/mgps/adapter/x0;

    .line 30
    .line 31
    invoke-virtual {p1}, Lcom/join/mgps/adapter/x0;->c()Ljava/util/List;

    .line 32
    .line 33
    .line 34
    move-result-object p1

    .line 35
    invoke-interface {p1}, Ljava/util/List;->size()I

    .line 36
    .line 37
    .line 38
    move-result p1

    .line 39
    if-lez p1, :cond_2

    .line 40
    .line 41
    iget-object p1, p0, Lcom/join/mgps/fragment/d3;->i:Lcom/join/mgps/adapter/x0;

    .line 42
    .line 43
    invoke-virtual {p1}, Lcom/join/mgps/adapter/x0;->c()Ljava/util/List;

    .line 44
    .line 45
    .line 46
    move-result-object p1

    .line 47
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 48
    .line 49
    .line 50
    move-result-object p1

    .line 51
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 52
    .line 53
    .line 54
    move-result v0

    .line 55
    if-eqz v0, :cond_1

    .line 56
    .line 57
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 58
    .line 59
    .line 60
    move-result-object v0

    .line 61
    check-cast v0, Lcom/join/mgps/dto/FriendBean;

    .line 62
    .line 63
    const/4 v1, 0x1

    .line 64
    invoke-virtual {v0, v1}, Lcom/join/mgps/dto/FriendBean;->setReadFlag(I)V

    .line 65
    .line 66
    .line 67
    goto :goto_0

    .line 68
    :cond_1
    iget-object p1, p0, Lcom/join/mgps/fragment/d3;->i:Lcom/join/mgps/adapter/x0;

    .line 69
    .line 70
    invoke-virtual {p1}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    .line 71
    .line 72
    .line 73
    :cond_2
    :goto_1
    return-void
.end method

.method public onLoadMore()V
    .locals 1

    .line 1
    iget v0, p0, Lcom/join/mgps/fragment/d3;->f:I

    .line 2
    .line 3
    add-int/lit8 v0, v0, 0x1

    .line 4
    .line 5
    invoke-virtual {p0, v0}, Lcom/join/mgps/fragment/d3;->W(I)V

    .line 6
    .line 7
    .line 8
    return-void
.end method

.method refresh()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/fragment/d3;->d:Lcom/join/mgps/customview/XListView;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0, p0}, Lcom/join/mgps/customview/XListView;->setPullLoadEnable(Lcom/join/mgps/customview/i;)V

    .line 6
    .line 7
    .line 8
    :cond_0
    const/4 v0, 0x0

    .line 9
    iput v0, p0, Lcom/join/mgps/fragment/d3;->g:I

    .line 10
    .line 11
    const/4 v0, 0x1

    .line 12
    iput v0, p0, Lcom/join/mgps/fragment/d3;->f:I

    .line 13
    .line 14
    invoke-virtual {p0, v0}, Lcom/join/mgps/fragment/d3;->W(I)V

    .line 15
    .line 16
    .line 17
    return-void
.end method
