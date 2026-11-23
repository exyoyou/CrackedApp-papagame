.class public Lcom/join/android/app/mgsim/wufun/databinding/lx;
.super Lcom/join/android/app/mgsim/wufun/databinding/kx;
.source "SourceFile"


# static fields
.field private static final s:Landroidx/databinding/ViewDataBinding$IncludedLayouts;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private static final t:Landroid/util/SparseIntArray;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field


# instance fields
.field private r:J


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 1
    new-instance v0, Landroid/util/SparseIntArray;

    .line 2
    .line 3
    invoke-direct {v0}, Landroid/util/SparseIntArray;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Lcom/join/android/app/mgsim/wufun/databinding/lx;->t:Landroid/util/SparseIntArray;

    .line 7
    .line 8
    const v1, 0x7f0a0f4a

    .line 9
    .line 10
    .line 11
    const/16 v2, 0xb

    .line 12
    .line 13
    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 14
    .line 15
    .line 16
    const v1, 0x7f0a0f49

    .line 17
    .line 18
    .line 19
    const/16 v2, 0xc

    .line 20
    .line 21
    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 22
    .line 23
    .line 24
    const v1, 0x7f0a0e61

    .line 25
    .line 26
    .line 27
    const/16 v2, 0xd

    .line 28
    .line 29
    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 30
    .line 31
    .line 32
    return-void
.end method

.method public constructor <init>(Landroidx/databinding/DataBindingComponent;Landroid/view/View;)V
    .locals 3
    .param p1    # Landroidx/databinding/DataBindingComponent;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p2    # Landroid/view/View;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "bindingComponent",
            "root"
        }
    .end annotation

    .line 1
    sget-object v0, Lcom/join/android/app/mgsim/wufun/databinding/lx;->s:Landroidx/databinding/ViewDataBinding$IncludedLayouts;

    sget-object v1, Lcom/join/android/app/mgsim/wufun/databinding/lx;->t:Landroid/util/SparseIntArray;

    const/16 v2, 0xe

    invoke-static {p1, p2, v2, v0, v1}, Landroidx/databinding/ViewDataBinding;->mapBindings(Landroidx/databinding/DataBindingComponent;Landroid/view/View;ILandroidx/databinding/ViewDataBinding$IncludedLayouts;Landroid/util/SparseIntArray;)[Ljava/lang/Object;

    move-result-object v0

    invoke-direct {p0, p1, p2, v0}, Lcom/join/android/app/mgsim/wufun/databinding/lx;-><init>(Landroidx/databinding/DataBindingComponent;Landroid/view/View;[Ljava/lang/Object;)V

    return-void
.end method

.method private constructor <init>(Landroidx/databinding/DataBindingComponent;Landroid/view/View;[Ljava/lang/Object;)V
    .locals 18
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "bindingComponent",
            "root",
            "bindings"
        }
    .end annotation

    move-object/from16 v15, p0

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    const/4 v3, 0x1

    const/4 v4, 0x7

    .line 2
    aget-object v4, p3, v4

    check-cast v4, Landroid/widget/TextView;

    const/16 v5, 0xa

    aget-object v5, p3, v5

    check-cast v5, Lcom/join/mgps/customview/DownloadNormalView;

    const/4 v6, 0x2

    aget-object v6, p3, v6

    check-cast v6, Landroid/widget/ImageView;

    const/16 v7, 0xd

    aget-object v7, p3, v7

    check-cast v7, Landroid/view/View;

    const/4 v8, 0x6

    aget-object v8, p3, v8

    check-cast v8, Landroidx/constraintlayout/widget/ConstraintLayout;

    const/4 v9, 0x4

    aget-object v9, p3, v9

    check-cast v9, Landroid/widget/LinearLayout;

    const/16 v10, 0xc

    aget-object v10, p3, v10

    check-cast v10, Landroid/widget/LinearLayout;

    const/16 v11, 0xb

    aget-object v11, p3, v11

    check-cast v11, Landroid/widget/LinearLayout;

    const/16 v12, 0x8

    aget-object v12, p3, v12

    check-cast v12, Landroid/widget/TextView;

    const/4 v13, 0x3

    aget-object v13, p3, v13

    check-cast v13, Landroid/widget/TextView;

    const/4 v14, 0x5

    aget-object v14, p3, v14

    check-cast v14, Landroid/widget/TextView;

    const/16 v16, 0x9

    aget-object v16, p3, v16

    check-cast v16, Landroid/widget/ProgressBar;

    move-object/from16 v15, v16

    const/16 v16, 0x0

    aget-object v16, p3, v16

    check-cast v16, Landroidx/constraintlayout/widget/ConstraintLayout;

    const/16 v17, 0x1

    aget-object v17, p3, v17

    check-cast v17, Lcom/facebook/drawee/view/SimpleDraweeView;

    invoke-direct/range {v0 .. v17}, Lcom/join/android/app/mgsim/wufun/databinding/kx;-><init>(Ljava/lang/Object;Landroid/view/View;ILandroid/widget/TextView;Lcom/join/mgps/customview/DownloadNormalView;Landroid/widget/ImageView;Landroid/view/View;Landroidx/constraintlayout/widget/ConstraintLayout;Landroid/widget/LinearLayout;Landroid/widget/LinearLayout;Landroid/widget/LinearLayout;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/ProgressBar;Landroidx/constraintlayout/widget/ConstraintLayout;Lcom/facebook/drawee/view/SimpleDraweeView;)V

    const-wide/16 v0, -0x1

    move-object/from16 v2, p0

    .line 3
    iput-wide v0, v2, Lcom/join/android/app/mgsim/wufun/databinding/lx;->r:J

    .line 4
    iget-object v0, v2, Lcom/join/android/app/mgsim/wufun/databinding/kx;->b:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 5
    iget-object v0, v2, Lcom/join/android/app/mgsim/wufun/databinding/kx;->c:Lcom/join/mgps/customview/DownloadNormalView;

    invoke-virtual {v0, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 6
    iget-object v0, v2, Lcom/join/android/app/mgsim/wufun/databinding/kx;->d:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 7
    iget-object v0, v2, Lcom/join/android/app/mgsim/wufun/databinding/kx;->f:Landroidx/constraintlayout/widget/ConstraintLayout;

    invoke-virtual {v0, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 8
    iget-object v0, v2, Lcom/join/android/app/mgsim/wufun/databinding/kx;->g:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 9
    iget-object v0, v2, Lcom/join/android/app/mgsim/wufun/databinding/kx;->j:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 10
    iget-object v0, v2, Lcom/join/android/app/mgsim/wufun/databinding/kx;->k:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 11
    iget-object v0, v2, Lcom/join/android/app/mgsim/wufun/databinding/kx;->l:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 12
    iget-object v0, v2, Lcom/join/android/app/mgsim/wufun/databinding/kx;->m:Landroid/widget/ProgressBar;

    invoke-virtual {v0, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 13
    iget-object v0, v2, Lcom/join/android/app/mgsim/wufun/databinding/kx;->n:Landroidx/constraintlayout/widget/ConstraintLayout;

    invoke-virtual {v0, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 14
    iget-object v0, v2, Lcom/join/android/app/mgsim/wufun/databinding/kx;->o:Lcom/facebook/drawee/view/SimpleDraweeView;

    invoke-virtual {v0, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    move-object/from16 v0, p2

    .line 15
    invoke-virtual {v2, v0}, Landroidx/databinding/ViewDataBinding;->setRootTag(Landroid/view/View;)V

    .line 16
    invoke-virtual/range {p0 .. p0}, Lcom/join/android/app/mgsim/wufun/databinding/lx;->invalidateAll()V

    return-void
.end method

.method private w(Lcom/join/kotlin/model/bean/DownState;I)Z
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "DownState",
            "fieldId"
        }
    .end annotation

    .line 1
    const/4 p1, 0x1

    .line 2
    if-nez p2, :cond_0

    .line 3
    .line 4
    monitor-enter p0

    .line 5
    :try_start_0
    iget-wide v0, p0, Lcom/join/android/app/mgsim/wufun/databinding/lx;->r:J

    .line 6
    .line 7
    const-wide/16 v2, 0x1

    .line 8
    .line 9
    or-long/2addr v0, v2

    .line 10
    iput-wide v0, p0, Lcom/join/android/app/mgsim/wufun/databinding/lx;->r:J

    .line 11
    .line 12
    monitor-exit p0

    .line 13
    return p1

    .line 14
    :catchall_0
    move-exception p1

    .line 15
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 16
    throw p1

    .line 17
    :cond_0
    const/16 v0, 0x2f

    .line 18
    .line 19
    if-ne p2, v0, :cond_1

    .line 20
    .line 21
    monitor-enter p0

    .line 22
    :try_start_1
    iget-wide v0, p0, Lcom/join/android/app/mgsim/wufun/databinding/lx;->r:J

    .line 23
    .line 24
    const-wide/16 v2, 0x4

    .line 25
    .line 26
    or-long/2addr v0, v2

    .line 27
    iput-wide v0, p0, Lcom/join/android/app/mgsim/wufun/databinding/lx;->r:J

    .line 28
    .line 29
    monitor-exit p0

    .line 30
    return p1

    .line 31
    :catchall_1
    move-exception p1

    .line 32
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 33
    throw p1

    .line 34
    :cond_1
    const/16 v0, 0xe

    .line 35
    .line 36
    if-ne p2, v0, :cond_2

    .line 37
    .line 38
    monitor-enter p0

    .line 39
    :try_start_2
    iget-wide v0, p0, Lcom/join/android/app/mgsim/wufun/databinding/lx;->r:J

    .line 40
    .line 41
    const-wide/16 v2, 0x8

    .line 42
    .line 43
    or-long/2addr v0, v2

    .line 44
    iput-wide v0, p0, Lcom/join/android/app/mgsim/wufun/databinding/lx;->r:J

    .line 45
    .line 46
    monitor-exit p0

    .line 47
    return p1

    .line 48
    :catchall_2
    move-exception p1

    .line 49
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 50
    throw p1

    .line 51
    :cond_2
    const/16 v0, 0x29

    .line 52
    .line 53
    if-ne p2, v0, :cond_3

    .line 54
    .line 55
    monitor-enter p0

    .line 56
    :try_start_3
    iget-wide v0, p0, Lcom/join/android/app/mgsim/wufun/databinding/lx;->r:J

    .line 57
    .line 58
    const-wide/16 v2, 0x10

    .line 59
    .line 60
    or-long/2addr v0, v2

    .line 61
    iput-wide v0, p0, Lcom/join/android/app/mgsim/wufun/databinding/lx;->r:J

    .line 62
    .line 63
    monitor-exit p0

    .line 64
    return p1

    .line 65
    :catchall_3
    move-exception p1

    .line 66
    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_3

    .line 67
    throw p1

    .line 68
    :cond_3
    const/16 v0, 0x26

    .line 69
    .line 70
    if-ne p2, v0, :cond_4

    .line 71
    .line 72
    monitor-enter p0

    .line 73
    :try_start_4
    iget-wide v0, p0, Lcom/join/android/app/mgsim/wufun/databinding/lx;->r:J

    .line 74
    .line 75
    const-wide/16 v2, 0x20

    .line 76
    .line 77
    or-long/2addr v0, v2

    .line 78
    iput-wide v0, p0, Lcom/join/android/app/mgsim/wufun/databinding/lx;->r:J

    .line 79
    .line 80
    monitor-exit p0

    .line 81
    return p1

    .line 82
    :catchall_4
    move-exception p1

    .line 83
    monitor-exit p0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_4

    .line 84
    throw p1

    .line 85
    :cond_4
    const/16 v0, 0xc

    .line 86
    .line 87
    if-ne p2, v0, :cond_5

    .line 88
    .line 89
    monitor-enter p0

    .line 90
    :try_start_5
    iget-wide v0, p0, Lcom/join/android/app/mgsim/wufun/databinding/lx;->r:J

    .line 91
    .line 92
    const-wide/16 v2, 0x40

    .line 93
    .line 94
    or-long/2addr v0, v2

    .line 95
    iput-wide v0, p0, Lcom/join/android/app/mgsim/wufun/databinding/lx;->r:J

    .line 96
    .line 97
    monitor-exit p0

    .line 98
    return p1

    .line 99
    :catchall_5
    move-exception p1

    .line 100
    monitor-exit p0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_5

    .line 101
    throw p1

    .line 102
    :cond_5
    const/4 v0, 0x7

    .line 103
    if-ne p2, v0, :cond_6

    .line 104
    .line 105
    monitor-enter p0

    .line 106
    :try_start_6
    iget-wide v0, p0, Lcom/join/android/app/mgsim/wufun/databinding/lx;->r:J

    .line 107
    .line 108
    const-wide/16 v2, 0x80

    .line 109
    .line 110
    or-long/2addr v0, v2

    .line 111
    iput-wide v0, p0, Lcom/join/android/app/mgsim/wufun/databinding/lx;->r:J

    .line 112
    .line 113
    monitor-exit p0

    .line 114
    return p1

    .line 115
    :catchall_6
    move-exception p1

    .line 116
    monitor-exit p0
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_6

    .line 117
    throw p1

    .line 118
    :cond_6
    const/4 p1, 0x0

    .line 119
    return p1
.end method


# virtual methods
.method protected executeBindings()V
    .locals 37

    .line 1
    move-object/from16 v1, p0

    .line 2
    .line 3
    monitor-enter p0

    .line 4
    :try_start_0
    iget-wide v2, v1, Lcom/join/android/app/mgsim/wufun/databinding/lx;->r:J

    .line 5
    .line 6
    const-wide/16 v4, 0x0

    .line 7
    .line 8
    iput-wide v4, v1, Lcom/join/android/app/mgsim/wufun/databinding/lx;->r:J

    .line 9
    .line 10
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 11
    iget-object v0, v1, Lcom/join/android/app/mgsim/wufun/databinding/kx;->p:Lcom/join/kotlin/ui/search/model/SearchGameBean;

    .line 12
    .line 13
    iget-object v6, v1, Lcom/join/android/app/mgsim/wufun/databinding/kx;->q:Lcom/join/kotlin/model/bean/DownState;

    .line 14
    .line 15
    const-wide/16 v7, 0x102

    .line 16
    .line 17
    and-long v9, v2, v7

    .line 18
    .line 19
    cmp-long v14, v9, v4

    .line 20
    .line 21
    if-eqz v14, :cond_6

    .line 22
    .line 23
    if-eqz v0, :cond_0

    .line 24
    .line 25
    invoke-virtual {v0}, Lcom/join/kotlin/ui/search/model/SearchGameBean;->getGame()Lcom/join/mgps/dto/CommonGameInfoBean;

    .line 26
    .line 27
    .line 28
    move-result-object v0

    .line 29
    goto :goto_0

    .line 30
    :cond_0
    const/4 v0, 0x0

    .line 31
    :goto_0
    if-eqz v0, :cond_1

    .line 32
    .line 33
    invoke-virtual {v0}, Lcom/join/mgps/dto/CommonGameInfoBean;->getG_info()Lcom/join/mgps/dto/GInfoBean;

    .line 34
    .line 35
    .line 36
    move-result-object v9

    .line 37
    invoke-virtual {v0}, Lcom/join/mgps/dto/CommonGameInfoBean;->getShowName()Ljava/lang/String;

    .line 38
    .line 39
    .line 40
    move-result-object v10

    .line 41
    invoke-virtual {v0}, Lcom/join/mgps/dto/CommonGameInfoBean;->giftSwitch()Z

    .line 42
    .line 43
    .line 44
    move-result v0

    .line 45
    goto :goto_1

    .line 46
    :cond_1
    const/4 v0, 0x0

    .line 47
    const/4 v9, 0x0

    .line 48
    const/4 v10, 0x0

    .line 49
    :goto_1
    if-eqz v14, :cond_3

    .line 50
    .line 51
    if-eqz v0, :cond_2

    .line 52
    .line 53
    const-wide/32 v14, 0x10000

    .line 54
    .line 55
    .line 56
    goto :goto_2

    .line 57
    :cond_2
    const-wide/32 v14, 0x8000

    .line 58
    .line 59
    .line 60
    :goto_2
    or-long/2addr v2, v14

    .line 61
    :cond_3
    if-eqz v9, :cond_4

    .line 62
    .line 63
    invoke-virtual {v9}, Lcom/join/mgps/dto/GInfoBean;->getIco()Ljava/lang/String;

    .line 64
    .line 65
    .line 66
    move-result-object v14

    .line 67
    invoke-virtual {v9}, Lcom/join/mgps/dto/GInfoBean;->getInfo()Ljava/lang/String;

    .line 68
    .line 69
    .line 70
    move-result-object v9

    .line 71
    goto :goto_3

    .line 72
    :cond_4
    const/4 v9, 0x0

    .line 73
    const/4 v14, 0x0

    .line 74
    :goto_3
    if-eqz v0, :cond_5

    .line 75
    .line 76
    const/4 v0, 0x0

    .line 77
    goto :goto_4

    .line 78
    :cond_5
    const/16 v0, 0x8

    .line 79
    .line 80
    goto :goto_4

    .line 81
    :cond_6
    const/4 v0, 0x0

    .line 82
    const/4 v9, 0x0

    .line 83
    const/4 v10, 0x0

    .line 84
    const/4 v14, 0x0

    .line 85
    :goto_4
    const-wide/16 v15, 0x1fd

    .line 86
    .line 87
    and-long/2addr v15, v2

    .line 88
    const-wide/16 v17, 0x111

    .line 89
    .line 90
    const-wide/16 v19, 0x141

    .line 91
    .line 92
    const-wide/16 v21, 0x121

    .line 93
    .line 94
    const-wide/16 v23, 0x181

    .line 95
    .line 96
    const-wide/16 v25, 0x109

    .line 97
    .line 98
    const-wide/16 v27, 0x105

    .line 99
    .line 100
    cmp-long v29, v15, v4

    .line 101
    .line 102
    if-eqz v29, :cond_1b

    .line 103
    .line 104
    and-long v15, v2, v25

    .line 105
    .line 106
    cmp-long v29, v15, v4

    .line 107
    .line 108
    if-eqz v29, :cond_7

    .line 109
    .line 110
    if-eqz v6, :cond_7

    .line 111
    .line 112
    invoke-virtual {v6}, Lcom/join/kotlin/model/bean/DownState;->getDownText()Ljava/lang/String;

    .line 113
    .line 114
    .line 115
    move-result-object v15

    .line 116
    goto :goto_5

    .line 117
    :cond_7
    const/4 v15, 0x0

    .line 118
    :goto_5
    and-long v29, v2, v27

    .line 119
    .line 120
    const/4 v11, 0x1

    .line 121
    cmp-long v31, v29, v4

    .line 122
    .line 123
    if-eqz v31, :cond_11

    .line 124
    .line 125
    if-eqz v6, :cond_8

    .line 126
    .line 127
    invoke-virtual {v6}, Lcom/join/kotlin/model/bean/DownState;->getUiMode()I

    .line 128
    .line 129
    .line 130
    move-result v29

    .line 131
    move/from16 v12, v29

    .line 132
    .line 133
    goto :goto_6

    .line 134
    :cond_8
    const/4 v12, 0x0

    .line 135
    :goto_6
    if-nez v12, :cond_9

    .line 136
    .line 137
    const/16 v30, 0x1

    .line 138
    .line 139
    goto :goto_7

    .line 140
    :cond_9
    const/16 v30, 0x0

    .line 141
    .line 142
    :goto_7
    if-ne v12, v11, :cond_a

    .line 143
    .line 144
    const/4 v12, 0x1

    .line 145
    goto :goto_8

    .line 146
    :cond_a
    const/4 v12, 0x0

    .line 147
    :goto_8
    if-eqz v31, :cond_c

    .line 148
    .line 149
    if-eqz v30, :cond_b

    .line 150
    .line 151
    const-wide/16 v31, 0x400

    .line 152
    .line 153
    goto :goto_9

    .line 154
    :cond_b
    const-wide/16 v31, 0x200

    .line 155
    .line 156
    :goto_9
    or-long v2, v2, v31

    .line 157
    .line 158
    :cond_c
    and-long v31, v2, v27

    .line 159
    .line 160
    cmp-long v33, v31, v4

    .line 161
    .line 162
    if-eqz v33, :cond_e

    .line 163
    .line 164
    if-eqz v12, :cond_d

    .line 165
    .line 166
    const-wide/16 v31, 0x1000

    .line 167
    .line 168
    goto :goto_a

    .line 169
    :cond_d
    const-wide/16 v31, 0x800

    .line 170
    .line 171
    :goto_a
    or-long v2, v2, v31

    .line 172
    .line 173
    :cond_e
    if-eqz v30, :cond_f

    .line 174
    .line 175
    const/16 v30, 0x0

    .line 176
    .line 177
    goto :goto_b

    .line 178
    :cond_f
    const/16 v30, 0x8

    .line 179
    .line 180
    :goto_b
    if-eqz v12, :cond_10

    .line 181
    .line 182
    const/16 v16, 0x0

    .line 183
    .line 184
    goto :goto_c

    .line 185
    :cond_10
    const/16 v16, 0x8

    .line 186
    .line 187
    goto :goto_c

    .line 188
    :cond_11
    const/16 v16, 0x0

    .line 189
    .line 190
    const/16 v30, 0x0

    .line 191
    .line 192
    :goto_c
    and-long v31, v2, v21

    .line 193
    .line 194
    cmp-long v12, v31, v4

    .line 195
    .line 196
    if-eqz v12, :cond_12

    .line 197
    .line 198
    if-eqz v6, :cond_12

    .line 199
    .line 200
    invoke-virtual {v6}, Lcom/join/kotlin/model/bean/DownState;->getProgress()I

    .line 201
    .line 202
    .line 203
    move-result v12

    .line 204
    goto :goto_d

    .line 205
    :cond_12
    const/4 v12, 0x0

    .line 206
    :goto_d
    and-long v31, v2, v19

    .line 207
    .line 208
    cmp-long v33, v31, v4

    .line 209
    .line 210
    if-eqz v33, :cond_18

    .line 211
    .line 212
    if-eqz v6, :cond_13

    .line 213
    .line 214
    invoke-virtual {v6}, Lcom/join/kotlin/model/bean/DownState;->getDownMode()I

    .line 215
    .line 216
    .line 217
    move-result v31

    .line 218
    goto :goto_e

    .line 219
    :cond_13
    const/16 v31, 0x0

    .line 220
    .line 221
    :goto_e
    if-nez v31, :cond_14

    .line 222
    .line 223
    goto :goto_f

    .line 224
    :cond_14
    const/4 v11, 0x0

    .line 225
    :goto_f
    if-eqz v33, :cond_16

    .line 226
    .line 227
    if-eqz v11, :cond_15

    .line 228
    .line 229
    const-wide/16 v31, 0x4000

    .line 230
    .line 231
    goto :goto_10

    .line 232
    :cond_15
    const-wide/16 v31, 0x2000

    .line 233
    .line 234
    :goto_10
    or-long v2, v2, v31

    .line 235
    .line 236
    :cond_16
    if-eqz v11, :cond_17

    .line 237
    .line 238
    iget-object v11, v1, Lcom/join/android/app/mgsim/wufun/databinding/kx;->m:Landroid/widget/ProgressBar;

    .line 239
    .line 240
    invoke-virtual {v11}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 241
    .line 242
    .line 243
    move-result-object v11

    .line 244
    const v13, 0x7f080d05

    .line 245
    .line 246
    .line 247
    goto :goto_11

    .line 248
    :cond_17
    iget-object v11, v1, Lcom/join/android/app/mgsim/wufun/databinding/kx;->m:Landroid/widget/ProgressBar;

    .line 249
    .line 250
    invoke-virtual {v11}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 251
    .line 252
    .line 253
    move-result-object v11

    .line 254
    const v13, 0x7f080d0e

    .line 255
    .line 256
    .line 257
    :goto_11
    invoke-static {v11, v13}, Landroidx/appcompat/content/res/AppCompatResources;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    .line 258
    .line 259
    .line 260
    move-result-object v11

    .line 261
    goto :goto_12

    .line 262
    :cond_18
    const/4 v11, 0x0

    .line 263
    :goto_12
    and-long v32, v2, v17

    .line 264
    .line 265
    cmp-long v13, v32, v4

    .line 266
    .line 267
    if-eqz v13, :cond_19

    .line 268
    .line 269
    if-eqz v6, :cond_19

    .line 270
    .line 271
    invoke-virtual {v6}, Lcom/join/kotlin/model/bean/DownState;->getStatusText()Ljava/lang/String;

    .line 272
    .line 273
    .line 274
    move-result-object v13

    .line 275
    goto :goto_13

    .line 276
    :cond_19
    const/4 v13, 0x0

    .line 277
    :goto_13
    and-long v32, v2, v23

    .line 278
    .line 279
    cmp-long v34, v32, v4

    .line 280
    .line 281
    if-eqz v34, :cond_1a

    .line 282
    .line 283
    if-eqz v6, :cond_1a

    .line 284
    .line 285
    invoke-virtual {v6}, Lcom/join/kotlin/model/bean/DownState;->getButtonEnable()Z

    .line 286
    .line 287
    .line 288
    move-result v6

    .line 289
    move/from16 v35, v16

    .line 290
    .line 291
    move/from16 v36, v30

    .line 292
    .line 293
    goto :goto_14

    .line 294
    :cond_1a
    move/from16 v35, v16

    .line 295
    .line 296
    move/from16 v36, v30

    .line 297
    .line 298
    const/4 v6, 0x0

    .line 299
    goto :goto_14

    .line 300
    :cond_1b
    const/4 v6, 0x0

    .line 301
    const/4 v11, 0x0

    .line 302
    const/4 v12, 0x0

    .line 303
    const/4 v13, 0x0

    .line 304
    const/4 v15, 0x0

    .line 305
    const/16 v35, 0x0

    .line 306
    .line 307
    const/16 v36, 0x0

    .line 308
    .line 309
    :goto_14
    and-long v25, v2, v25

    .line 310
    .line 311
    cmp-long v16, v25, v4

    .line 312
    .line 313
    if-eqz v16, :cond_1c

    .line 314
    .line 315
    iget-object v7, v1, Lcom/join/android/app/mgsim/wufun/databinding/kx;->b:Landroid/widget/TextView;

    .line 316
    .line 317
    invoke-static {v7, v15}, Landroidx/databinding/adapters/TextViewBindingAdapter;->setText(Landroid/widget/TextView;Ljava/lang/CharSequence;)V

    .line 318
    .line 319
    .line 320
    :cond_1c
    and-long v7, v2, v23

    .line 321
    .line 322
    cmp-long v15, v7, v4

    .line 323
    .line 324
    if-eqz v15, :cond_1d

    .line 325
    .line 326
    iget-object v7, v1, Lcom/join/android/app/mgsim/wufun/databinding/kx;->c:Lcom/join/mgps/customview/DownloadNormalView;

    .line 327
    .line 328
    invoke-virtual {v7, v6}, Landroid/view/View;->setEnabled(Z)V

    .line 329
    .line 330
    .line 331
    :cond_1d
    const-wide/16 v6, 0x102

    .line 332
    .line 333
    and-long/2addr v6, v2

    .line 334
    cmp-long v8, v6, v4

    .line 335
    .line 336
    if-eqz v8, :cond_1e

    .line 337
    .line 338
    iget-object v6, v1, Lcom/join/android/app/mgsim/wufun/databinding/kx;->d:Landroid/widget/ImageView;

    .line 339
    .line 340
    invoke-virtual {v6, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 341
    .line 342
    .line 343
    iget-object v0, v1, Lcom/join/android/app/mgsim/wufun/databinding/kx;->k:Landroid/widget/TextView;

    .line 344
    .line 345
    invoke-static {v0, v10}, Landroidx/databinding/adapters/TextViewBindingAdapter;->setText(Landroid/widget/TextView;Ljava/lang/CharSequence;)V

    .line 346
    .line 347
    .line 348
    iget-object v0, v1, Lcom/join/android/app/mgsim/wufun/databinding/kx;->l:Landroid/widget/TextView;

    .line 349
    .line 350
    invoke-static {v0, v9}, Landroidx/databinding/adapters/TextViewBindingAdapter;->setText(Landroid/widget/TextView;Ljava/lang/CharSequence;)V

    .line 351
    .line 352
    .line 353
    iget-object v0, v1, Lcom/join/android/app/mgsim/wufun/databinding/kx;->o:Lcom/facebook/drawee/view/SimpleDraweeView;

    .line 354
    .line 355
    const/4 v6, 0x0

    .line 356
    const/4 v7, 0x0

    .line 357
    invoke-static {v0, v14, v6, v7}, Lcom/join/kotlin/bindingadapter/SimpleDrawableViewKt;->loadUrl(Lcom/facebook/drawee/view/SimpleDraweeView;Ljava/lang/String;Ljava/lang/String;I)V

    .line 358
    .line 359
    .line 360
    :cond_1e
    and-long v6, v2, v27

    .line 361
    .line 362
    cmp-long v0, v6, v4

    .line 363
    .line 364
    if-eqz v0, :cond_1f

    .line 365
    .line 366
    iget-object v0, v1, Lcom/join/android/app/mgsim/wufun/databinding/kx;->f:Landroidx/constraintlayout/widget/ConstraintLayout;

    .line 367
    .line 368
    move/from16 v6, v35

    .line 369
    .line 370
    invoke-virtual {v0, v6}, Landroid/view/View;->setVisibility(I)V

    .line 371
    .line 372
    .line 373
    iget-object v0, v1, Lcom/join/android/app/mgsim/wufun/databinding/kx;->g:Landroid/widget/LinearLayout;

    .line 374
    .line 375
    move/from16 v6, v36

    .line 376
    .line 377
    invoke-virtual {v0, v6}, Landroid/view/View;->setVisibility(I)V

    .line 378
    .line 379
    .line 380
    :cond_1f
    and-long v6, v2, v17

    .line 381
    .line 382
    cmp-long v0, v6, v4

    .line 383
    .line 384
    if-eqz v0, :cond_20

    .line 385
    .line 386
    iget-object v0, v1, Lcom/join/android/app/mgsim/wufun/databinding/kx;->j:Landroid/widget/TextView;

    .line 387
    .line 388
    invoke-static {v0, v13}, Landroidx/databinding/adapters/TextViewBindingAdapter;->setText(Landroid/widget/TextView;Ljava/lang/CharSequence;)V

    .line 389
    .line 390
    .line 391
    :cond_20
    and-long v6, v2, v21

    .line 392
    .line 393
    cmp-long v0, v6, v4

    .line 394
    .line 395
    if-eqz v0, :cond_21

    .line 396
    .line 397
    iget-object v0, v1, Lcom/join/android/app/mgsim/wufun/databinding/kx;->m:Landroid/widget/ProgressBar;

    .line 398
    .line 399
    invoke-virtual {v0, v12}, Landroid/widget/ProgressBar;->setProgress(I)V

    .line 400
    .line 401
    .line 402
    :cond_21
    and-long v2, v2, v19

    .line 403
    .line 404
    cmp-long v0, v2, v4

    .line 405
    .line 406
    if-eqz v0, :cond_22

    .line 407
    .line 408
    iget-object v0, v1, Lcom/join/android/app/mgsim/wufun/databinding/kx;->m:Landroid/widget/ProgressBar;

    .line 409
    .line 410
    invoke-virtual {v0, v11}, Landroid/widget/ProgressBar;->setProgressDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 411
    .line 412
    .line 413
    :cond_22
    return-void

    .line 414
    :catchall_0
    move-exception v0

    .line 415
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 416
    throw v0
.end method

.method public hasPendingBindings()Z
    .locals 5

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    iget-wide v0, p0, Lcom/join/android/app/mgsim/wufun/databinding/lx;->r:J

    .line 3
    .line 4
    const-wide/16 v2, 0x0

    .line 5
    .line 6
    cmp-long v4, v0, v2

    .line 7
    .line 8
    if-eqz v4, :cond_0

    .line 9
    .line 10
    monitor-exit p0

    .line 11
    const/4 v0, 0x1

    .line 12
    return v0

    .line 13
    :cond_0
    monitor-exit p0

    .line 14
    const/4 v0, 0x0

    .line 15
    return v0

    .line 16
    :catchall_0
    move-exception v0

    .line 17
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 18
    throw v0
.end method

.method public invalidateAll()V
    .locals 2

    .line 1
    monitor-enter p0

    .line 2
    const-wide/16 v0, 0x100

    .line 3
    .line 4
    :try_start_0
    iput-wide v0, p0, Lcom/join/android/app/mgsim/wufun/databinding/lx;->r:J

    .line 5
    .line 6
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 7
    invoke-virtual {p0}, Landroidx/databinding/ViewDataBinding;->requestRebind()V

    .line 8
    .line 9
    .line 10
    return-void

    .line 11
    :catchall_0
    move-exception v0

    .line 12
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 13
    throw v0
.end method

.method protected onFieldChange(ILjava/lang/Object;I)Z
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "localFieldId",
            "object",
            "fieldId"
        }
    .end annotation

    .line 1
    if-eqz p1, :cond_0

    .line 2
    .line 3
    const/4 p1, 0x0

    .line 4
    return p1

    .line 5
    :cond_0
    check-cast p2, Lcom/join/kotlin/model/bean/DownState;

    .line 6
    .line 7
    invoke-direct {p0, p2, p3}, Lcom/join/android/app/mgsim/wufun/databinding/lx;->w(Lcom/join/kotlin/model/bean/DownState;I)Z

    .line 8
    .line 9
    .line 10
    move-result p1

    .line 11
    return p1
.end method

.method public setVariable(ILjava/lang/Object;)Z
    .locals 1
    .param p2    # Ljava/lang/Object;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "variableId",
            "variable"
        }
    .end annotation

    .line 1
    const/16 v0, 0x1b

    .line 2
    .line 3
    if-ne v0, p1, :cond_0

    .line 4
    .line 5
    check-cast p2, Lcom/join/kotlin/ui/search/model/SearchGameBean;

    .line 6
    .line 7
    invoke-virtual {p0, p2}, Lcom/join/android/app/mgsim/wufun/databinding/lx;->u(Lcom/join/kotlin/ui/search/model/SearchGameBean;)V

    .line 8
    .line 9
    .line 10
    goto :goto_0

    .line 11
    :cond_0
    const/16 v0, 0xd

    .line 12
    .line 13
    if-ne v0, p1, :cond_1

    .line 14
    .line 15
    check-cast p2, Lcom/join/kotlin/model/bean/DownState;

    .line 16
    .line 17
    invoke-virtual {p0, p2}, Lcom/join/android/app/mgsim/wufun/databinding/lx;->t(Lcom/join/kotlin/model/bean/DownState;)V

    .line 18
    .line 19
    .line 20
    :goto_0
    const/4 p1, 0x1

    .line 21
    goto :goto_1

    .line 22
    :cond_1
    const/4 p1, 0x0

    .line 23
    :goto_1
    return p1
.end method

.method public t(Lcom/join/kotlin/model/bean/DownState;)V
    .locals 4
    .param p1    # Lcom/join/kotlin/model/bean/DownState;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "DownState"
        }
    .end annotation

    .line 1
    const/4 v0, 0x0

    .line 2
    invoke-virtual {p0, v0, p1}, Landroidx/databinding/ViewDataBinding;->updateRegistration(ILandroidx/databinding/Observable;)Z

    .line 3
    .line 4
    .line 5
    iput-object p1, p0, Lcom/join/android/app/mgsim/wufun/databinding/kx;->q:Lcom/join/kotlin/model/bean/DownState;

    .line 6
    .line 7
    monitor-enter p0

    .line 8
    :try_start_0
    iget-wide v0, p0, Lcom/join/android/app/mgsim/wufun/databinding/lx;->r:J

    .line 9
    .line 10
    const-wide/16 v2, 0x1

    .line 11
    .line 12
    or-long/2addr v0, v2

    .line 13
    iput-wide v0, p0, Lcom/join/android/app/mgsim/wufun/databinding/lx;->r:J

    .line 14
    .line 15
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 16
    const/16 p1, 0xd

    .line 17
    .line 18
    invoke-virtual {p0, p1}, Landroidx/databinding/BaseObservable;->notifyPropertyChanged(I)V

    .line 19
    .line 20
    .line 21
    invoke-super {p0}, Landroidx/databinding/ViewDataBinding;->requestRebind()V

    .line 22
    .line 23
    .line 24
    return-void

    .line 25
    :catchall_0
    move-exception p1

    .line 26
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 27
    throw p1
.end method

.method public u(Lcom/join/kotlin/ui/search/model/SearchGameBean;)V
    .locals 4
    .param p1    # Lcom/join/kotlin/ui/search/model/SearchGameBean;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "ItemData"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/join/android/app/mgsim/wufun/databinding/kx;->p:Lcom/join/kotlin/ui/search/model/SearchGameBean;

    .line 2
    .line 3
    monitor-enter p0

    .line 4
    :try_start_0
    iget-wide v0, p0, Lcom/join/android/app/mgsim/wufun/databinding/lx;->r:J

    .line 5
    .line 6
    const-wide/16 v2, 0x2

    .line 7
    .line 8
    or-long/2addr v0, v2

    .line 9
    iput-wide v0, p0, Lcom/join/android/app/mgsim/wufun/databinding/lx;->r:J

    .line 10
    .line 11
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 12
    const/16 p1, 0x1b

    .line 13
    .line 14
    invoke-virtual {p0, p1}, Landroidx/databinding/BaseObservable;->notifyPropertyChanged(I)V

    .line 15
    .line 16
    .line 17
    invoke-super {p0}, Landroidx/databinding/ViewDataBinding;->requestRebind()V

    .line 18
    .line 19
    .line 20
    return-void

    .line 21
    :catchall_0
    move-exception p1

    .line 22
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 23
    throw p1
.end method
