.class public Lcom/join/android/app/mgsim/wufun/databinding/en0;
.super Lcom/join/android/app/mgsim/wufun/databinding/dn0;
.source "SourceFile"


# static fields
.field private static final o:Landroidx/databinding/ViewDataBinding$IncludedLayouts;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private static final p:Landroid/util/SparseIntArray;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field


# instance fields
.field private final l:Landroid/widget/LinearLayout;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field private final m:Lcom/join/android/app/mgsim/wufun/databinding/ax0;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private n:J


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .line 1
    new-instance v0, Landroidx/databinding/ViewDataBinding$IncludedLayouts;

    .line 2
    .line 3
    const/16 v1, 0x9

    .line 4
    .line 5
    invoke-direct {v0, v1}, Landroidx/databinding/ViewDataBinding$IncludedLayouts;-><init>(I)V

    .line 6
    .line 7
    .line 8
    sput-object v0, Lcom/join/android/app/mgsim/wufun/databinding/en0;->o:Landroidx/databinding/ViewDataBinding$IncludedLayouts;

    .line 9
    .line 10
    const-string v1, "video_dbs_layout"

    .line 11
    .line 12
    filled-new-array {v1}, [Ljava/lang/String;

    .line 13
    .line 14
    .line 15
    move-result-object v1

    .line 16
    const/4 v2, 0x6

    .line 17
    filled-new-array {v2}, [I

    .line 18
    .line 19
    .line 20
    move-result-object v2

    .line 21
    const v3, 0x7f0d0890

    .line 22
    .line 23
    .line 24
    filled-new-array {v3}, [I

    .line 25
    .line 26
    .line 27
    move-result-object v3

    .line 28
    const/4 v4, 0x1

    .line 29
    invoke-virtual {v0, v4, v1, v2, v3}, Landroidx/databinding/ViewDataBinding$IncludedLayouts;->setIncludes(I[Ljava/lang/String;[I[I)V

    .line 30
    .line 31
    .line 32
    new-instance v0, Landroid/util/SparseIntArray;

    .line 33
    .line 34
    invoke-direct {v0}, Landroid/util/SparseIntArray;-><init>()V

    .line 35
    .line 36
    .line 37
    sput-object v0, Lcom/join/android/app/mgsim/wufun/databinding/en0;->p:Landroid/util/SparseIntArray;

    .line 38
    .line 39
    const v1, 0x7f0a166e

    .line 40
    .line 41
    .line 42
    const/4 v2, 0x7

    .line 43
    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 44
    .line 45
    .line 46
    const v1, 0x7f0a054e

    .line 47
    .line 48
    .line 49
    const/16 v2, 0x8

    .line 50
    .line 51
    invoke-virtual {v0, v1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 52
    .line 53
    .line 54
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
    sget-object v0, Lcom/join/android/app/mgsim/wufun/databinding/en0;->o:Landroidx/databinding/ViewDataBinding$IncludedLayouts;

    sget-object v1, Lcom/join/android/app/mgsim/wufun/databinding/en0;->p:Landroid/util/SparseIntArray;

    const/16 v2, 0x9

    invoke-static {p1, p2, v2, v0, v1}, Landroidx/databinding/ViewDataBinding;->mapBindings(Landroidx/databinding/DataBindingComponent;Landroid/view/View;ILandroidx/databinding/ViewDataBinding$IncludedLayouts;Landroid/util/SparseIntArray;)[Ljava/lang/Object;

    move-result-object v0

    invoke-direct {p0, p1, p2, v0}, Lcom/join/android/app/mgsim/wufun/databinding/en0;-><init>(Landroidx/databinding/DataBindingComponent;Landroid/view/View;[Ljava/lang/Object;)V

    return-void
.end method

.method private constructor <init>(Landroidx/databinding/DataBindingComponent;Landroid/view/View;[Ljava/lang/Object;)V
    .locals 11
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

    const/4 v3, 0x0

    const/4 v0, 0x2

    .line 2
    aget-object v0, p3, v0

    move-object v4, v0

    check-cast v4, Landroid/widget/TextView;

    const/4 v0, 0x3

    aget-object v0, p3, v0

    move-object v5, v0

    check-cast v5, Landroid/widget/TextView;

    const/16 v0, 0x8

    aget-object v0, p3, v0

    move-object v6, v0

    check-cast v6, Lcom/join/mgps/customview/DownloadNormalView;

    const/4 v0, 0x4

    aget-object v0, p3, v0

    move-object v7, v0

    check-cast v7, Landroid/widget/TextView;

    const/4 v0, 0x5

    aget-object v0, p3, v0

    move-object v8, v0

    check-cast v8, Landroid/widget/TextView;

    const/4 v0, 0x7

    aget-object v0, p3, v0

    move-object v9, v0

    check-cast v9, Landroid/widget/LinearLayout;

    const/4 v0, 0x1

    aget-object v0, p3, v0

    move-object v10, v0

    check-cast v10, Lcom/join/kotlin/domain/widget/CornersLinearLayout;

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    invoke-direct/range {v0 .. v10}, Lcom/join/android/app/mgsim/wufun/databinding/dn0;-><init>(Ljava/lang/Object;Landroid/view/View;ILandroid/widget/TextView;Landroid/widget/TextView;Lcom/join/mgps/customview/DownloadNormalView;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/LinearLayout;Lcom/join/kotlin/domain/widget/CornersLinearLayout;)V

    const-wide/16 v0, -0x1

    .line 3
    iput-wide v0, p0, Lcom/join/android/app/mgsim/wufun/databinding/en0;->n:J

    .line 4
    iget-object p1, p0, Lcom/join/android/app/mgsim/wufun/databinding/dn0;->b:Landroid/widget/TextView;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 5
    iget-object p1, p0, Lcom/join/android/app/mgsim/wufun/databinding/dn0;->c:Landroid/widget/TextView;

    invoke-virtual {p1, v0}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 6
    iget-object p1, p0, Lcom/join/android/app/mgsim/wufun/databinding/dn0;->e:Landroid/widget/TextView;

    invoke-virtual {p1, v0}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    const/4 p1, 0x0

    .line 7
    aget-object p1, p3, p1

    check-cast p1, Landroid/widget/LinearLayout;

    iput-object p1, p0, Lcom/join/android/app/mgsim/wufun/databinding/en0;->l:Landroid/widget/LinearLayout;

    .line 8
    invoke-virtual {p1, v0}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    const/4 p1, 0x6

    .line 9
    aget-object p1, p3, p1

    check-cast p1, Lcom/join/android/app/mgsim/wufun/databinding/ax0;

    iput-object p1, p0, Lcom/join/android/app/mgsim/wufun/databinding/en0;->m:Lcom/join/android/app/mgsim/wufun/databinding/ax0;

    .line 10
    invoke-virtual {p0, p1}, Landroidx/databinding/ViewDataBinding;->setContainedBinding(Landroidx/databinding/ViewDataBinding;)V

    .line 11
    iget-object p1, p0, Lcom/join/android/app/mgsim/wufun/databinding/dn0;->f:Landroid/widget/TextView;

    invoke-virtual {p1, v0}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 12
    iget-object p1, p0, Lcom/join/android/app/mgsim/wufun/databinding/dn0;->h:Lcom/join/kotlin/domain/widget/CornersLinearLayout;

    invoke-virtual {p1, v0}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 13
    invoke-virtual {p0, p2}, Landroidx/databinding/ViewDataBinding;->setRootTag(Landroid/view/View;)V

    .line 14
    invoke-virtual {p0}, Lcom/join/android/app/mgsim/wufun/databinding/en0;->invalidateAll()V

    return-void
.end method


# virtual methods
.method public A(Lcom/join/kotlin/ui/modleregin/modle/VideoModle;)V
    .locals 4
    .param p1    # Lcom/join/kotlin/ui/modleregin/modle/VideoModle;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "VideoData"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/join/android/app/mgsim/wufun/databinding/dn0;->k:Lcom/join/kotlin/ui/modleregin/modle/VideoModle;

    .line 2
    .line 3
    monitor-enter p0

    .line 4
    :try_start_0
    iget-wide v0, p0, Lcom/join/android/app/mgsim/wufun/databinding/en0;->n:J

    .line 5
    .line 6
    const-wide/16 v2, 0x1

    .line 7
    .line 8
    or-long/2addr v0, v2

    .line 9
    iput-wide v0, p0, Lcom/join/android/app/mgsim/wufun/databinding/en0;->n:J

    .line 10
    .line 11
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 12
    const/16 p1, 0x30

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

.method public B(Lcom/join/android/app/component/video/c;)V
    .locals 4
    .param p1    # Lcom/join/android/app/component/video/c;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "VideoHelper"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/join/android/app/mgsim/wufun/databinding/dn0;->i:Lcom/join/android/app/component/video/c;

    .line 2
    .line 3
    monitor-enter p0

    .line 4
    :try_start_0
    iget-wide v0, p0, Lcom/join/android/app/mgsim/wufun/databinding/en0;->n:J

    .line 5
    .line 6
    const-wide/16 v2, 0x4

    .line 7
    .line 8
    or-long/2addr v0, v2

    .line 9
    iput-wide v0, p0, Lcom/join/android/app/mgsim/wufun/databinding/en0;->n:J

    .line 10
    .line 11
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 12
    const/16 p1, 0x31

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

.method protected executeBindings()V
    .locals 25

    .line 1
    move-object/from16 v1, p0

    .line 2
    .line 3
    monitor-enter p0

    .line 4
    :try_start_0
    iget-wide v2, v1, Lcom/join/android/app/mgsim/wufun/databinding/en0;->n:J

    .line 5
    .line 6
    const-wide/16 v4, 0x0

    .line 7
    .line 8
    iput-wide v4, v1, Lcom/join/android/app/mgsim/wufun/databinding/en0;->n:J

    .line 9
    .line 10
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 11
    iget-object v0, v1, Lcom/join/android/app/mgsim/wufun/databinding/dn0;->k:Lcom/join/kotlin/ui/modleregin/modle/VideoModle;

    .line 12
    .line 13
    iget-object v6, v1, Lcom/join/android/app/mgsim/wufun/databinding/dn0;->j:Lcom/join/kotlin/ui/modleregin/modle/MustplayItemBean;

    .line 14
    .line 15
    iget-object v7, v1, Lcom/join/android/app/mgsim/wufun/databinding/dn0;->i:Lcom/join/android/app/component/video/c;

    .line 16
    .line 17
    const-wide/16 v8, 0xa

    .line 18
    .line 19
    and-long v10, v2, v8

    .line 20
    .line 21
    const-wide/16 v14, 0x80

    .line 22
    .line 23
    const/4 v12, 0x1

    .line 24
    cmp-long v18, v10, v4

    .line 25
    .line 26
    if-eqz v18, :cond_a

    .line 27
    .line 28
    if-eqz v6, :cond_0

    .line 29
    .line 30
    invoke-virtual {v6}, Lcom/join/kotlin/ui/modleregin/modle/MustplayItemBean;->getTags()Ljava/util/List;

    .line 31
    .line 32
    .line 33
    move-result-object v10

    .line 34
    invoke-virtual {v6}, Lcom/join/kotlin/ui/modleregin/modle/MustplayItemBean;->getGameName()Ljava/lang/String;

    .line 35
    .line 36
    .line 37
    move-result-object v11

    .line 38
    invoke-virtual {v6}, Lcom/join/kotlin/ui/modleregin/modle/MustplayItemBean;->getInfo()Ljava/lang/String;

    .line 39
    .line 40
    .line 41
    move-result-object v6

    .line 42
    goto :goto_0

    .line 43
    :cond_0
    const/4 v6, 0x0

    .line 44
    const/4 v10, 0x0

    .line 45
    const/4 v11, 0x0

    .line 46
    :goto_0
    if-eqz v10, :cond_1

    .line 47
    .line 48
    invoke-interface {v10}, Ljava/util/List;->size()I

    .line 49
    .line 50
    .line 51
    move-result v19

    .line 52
    move/from16 v13, v19

    .line 53
    .line 54
    goto :goto_1

    .line 55
    :cond_1
    const/4 v13, 0x0

    .line 56
    :goto_1
    if-le v13, v12, :cond_2

    .line 57
    .line 58
    const/16 v20, 0x1

    .line 59
    .line 60
    goto :goto_2

    .line 61
    :cond_2
    const/16 v20, 0x0

    .line 62
    .line 63
    :goto_2
    if-lez v13, :cond_3

    .line 64
    .line 65
    const/4 v13, 0x1

    .line 66
    goto :goto_3

    .line 67
    :cond_3
    const/4 v13, 0x0

    .line 68
    :goto_3
    if-eqz v18, :cond_5

    .line 69
    .line 70
    if-eqz v20, :cond_4

    .line 71
    .line 72
    or-long/2addr v2, v14

    .line 73
    const-wide/16 v21, 0x200

    .line 74
    .line 75
    goto :goto_4

    .line 76
    :cond_4
    const-wide/16 v21, 0x40

    .line 77
    .line 78
    or-long v2, v2, v21

    .line 79
    .line 80
    const-wide/16 v21, 0x100

    .line 81
    .line 82
    :goto_4
    or-long v2, v2, v21

    .line 83
    .line 84
    :cond_5
    and-long v21, v2, v8

    .line 85
    .line 86
    cmp-long v18, v21, v4

    .line 87
    .line 88
    if-eqz v18, :cond_7

    .line 89
    .line 90
    if-eqz v13, :cond_6

    .line 91
    .line 92
    const-wide/16 v21, 0x20

    .line 93
    .line 94
    or-long v2, v2, v21

    .line 95
    .line 96
    const-wide/16 v16, 0x800

    .line 97
    .line 98
    or-long v2, v2, v16

    .line 99
    .line 100
    goto :goto_5

    .line 101
    :cond_6
    const-wide/16 v21, 0x10

    .line 102
    .line 103
    or-long v2, v2, v21

    .line 104
    .line 105
    const-wide/16 v21, 0x400

    .line 106
    .line 107
    or-long v2, v2, v21

    .line 108
    .line 109
    :cond_7
    :goto_5
    const/16 v18, 0x8

    .line 110
    .line 111
    if-eqz v20, :cond_8

    .line 112
    .line 113
    const/16 v21, 0x0

    .line 114
    .line 115
    goto :goto_6

    .line 116
    :cond_8
    const/16 v21, 0x8

    .line 117
    .line 118
    :goto_6
    if-eqz v13, :cond_9

    .line 119
    .line 120
    const/16 v18, 0x0

    .line 121
    .line 122
    :cond_9
    move/from16 v23, v18

    .line 123
    .line 124
    move/from16 v24, v21

    .line 125
    .line 126
    goto :goto_7

    .line 127
    :cond_a
    const/4 v6, 0x0

    .line 128
    const/4 v10, 0x0

    .line 129
    const/4 v11, 0x0

    .line 130
    const/4 v13, 0x0

    .line 131
    const/16 v20, 0x0

    .line 132
    .line 133
    const/16 v23, 0x0

    .line 134
    .line 135
    const/16 v24, 0x0

    .line 136
    .line 137
    :goto_7
    const-wide/16 v21, 0xc

    .line 138
    .line 139
    and-long v21, v2, v21

    .line 140
    .line 141
    cmp-long v18, v21, v4

    .line 142
    .line 143
    and-long/2addr v14, v2

    .line 144
    cmp-long v21, v14, v4

    .line 145
    .line 146
    if-eqz v21, :cond_b

    .line 147
    .line 148
    if-eqz v10, :cond_b

    .line 149
    .line 150
    invoke-static {v10, v12}, Landroidx/databinding/ViewDataBinding;->getFromList(Ljava/util/List;I)Ljava/lang/Object;

    .line 151
    .line 152
    .line 153
    move-result-object v12

    .line 154
    check-cast v12, Ljava/lang/String;

    .line 155
    .line 156
    goto :goto_8

    .line 157
    :cond_b
    const/4 v12, 0x0

    .line 158
    :goto_8
    const-wide/16 v14, 0x800

    .line 159
    .line 160
    and-long/2addr v14, v2

    .line 161
    cmp-long v16, v14, v4

    .line 162
    .line 163
    if-eqz v16, :cond_c

    .line 164
    .line 165
    if-eqz v10, :cond_c

    .line 166
    .line 167
    const/4 v14, 0x0

    .line 168
    invoke-static {v10, v14}, Landroidx/databinding/ViewDataBinding;->getFromList(Ljava/util/List;I)Ljava/lang/Object;

    .line 169
    .line 170
    .line 171
    move-result-object v10

    .line 172
    check-cast v10, Ljava/lang/String;

    .line 173
    .line 174
    goto :goto_9

    .line 175
    :cond_c
    const/4 v10, 0x0

    .line 176
    :goto_9
    and-long/2addr v8, v2

    .line 177
    cmp-long v14, v8, v4

    .line 178
    .line 179
    if-eqz v14, :cond_f

    .line 180
    .line 181
    if-eqz v20, :cond_d

    .line 182
    .line 183
    move-object v8, v12

    .line 184
    goto :goto_a

    .line 185
    :cond_d
    const-string v8, ""

    .line 186
    .line 187
    :goto_a
    if-eqz v13, :cond_e

    .line 188
    .line 189
    move-object v13, v10

    .line 190
    goto :goto_b

    .line 191
    :cond_e
    const-string v9, ""

    .line 192
    .line 193
    move-object v13, v9

    .line 194
    goto :goto_b

    .line 195
    :cond_f
    const/4 v8, 0x0

    .line 196
    const/4 v13, 0x0

    .line 197
    :goto_b
    if-eqz v14, :cond_10

    .line 198
    .line 199
    iget-object v9, v1, Lcom/join/android/app/mgsim/wufun/databinding/dn0;->b:Landroid/widget/TextView;

    .line 200
    .line 201
    invoke-static {v9, v13}, Landroidx/databinding/adapters/TextViewBindingAdapter;->setText(Landroid/widget/TextView;Ljava/lang/CharSequence;)V

    .line 202
    .line 203
    .line 204
    iget-object v9, v1, Lcom/join/android/app/mgsim/wufun/databinding/dn0;->b:Landroid/widget/TextView;

    .line 205
    .line 206
    move/from16 v10, v23

    .line 207
    .line 208
    invoke-virtual {v9, v10}, Landroid/view/View;->setVisibility(I)V

    .line 209
    .line 210
    .line 211
    iget-object v9, v1, Lcom/join/android/app/mgsim/wufun/databinding/dn0;->c:Landroid/widget/TextView;

    .line 212
    .line 213
    invoke-static {v9, v8}, Landroidx/databinding/adapters/TextViewBindingAdapter;->setText(Landroid/widget/TextView;Ljava/lang/CharSequence;)V

    .line 214
    .line 215
    .line 216
    iget-object v8, v1, Lcom/join/android/app/mgsim/wufun/databinding/dn0;->c:Landroid/widget/TextView;

    .line 217
    .line 218
    move/from16 v9, v24

    .line 219
    .line 220
    invoke-virtual {v8, v9}, Landroid/view/View;->setVisibility(I)V

    .line 221
    .line 222
    .line 223
    iget-object v8, v1, Lcom/join/android/app/mgsim/wufun/databinding/dn0;->e:Landroid/widget/TextView;

    .line 224
    .line 225
    invoke-static {v8, v11}, Landroidx/databinding/adapters/TextViewBindingAdapter;->setText(Landroid/widget/TextView;Ljava/lang/CharSequence;)V

    .line 226
    .line 227
    .line 228
    iget-object v8, v1, Lcom/join/android/app/mgsim/wufun/databinding/dn0;->f:Landroid/widget/TextView;

    .line 229
    .line 230
    invoke-static {v8, v6}, Landroidx/databinding/adapters/TextViewBindingAdapter;->setText(Landroid/widget/TextView;Ljava/lang/CharSequence;)V

    .line 231
    .line 232
    .line 233
    :cond_10
    if-eqz v18, :cond_11

    .line 234
    .line 235
    iget-object v6, v1, Lcom/join/android/app/mgsim/wufun/databinding/en0;->m:Lcom/join/android/app/mgsim/wufun/databinding/ax0;

    .line 236
    .line 237
    invoke-virtual {v6, v7}, Lcom/join/android/app/mgsim/wufun/databinding/ax0;->u(Lcom/join/android/app/component/video/c;)V

    .line 238
    .line 239
    .line 240
    :cond_11
    const-wide/16 v6, 0x9

    .line 241
    .line 242
    and-long/2addr v2, v6

    .line 243
    cmp-long v6, v2, v4

    .line 244
    .line 245
    if-eqz v6, :cond_12

    .line 246
    .line 247
    iget-object v2, v1, Lcom/join/android/app/mgsim/wufun/databinding/en0;->m:Lcom/join/android/app/mgsim/wufun/databinding/ax0;

    .line 248
    .line 249
    invoke-virtual {v2, v0}, Lcom/join/android/app/mgsim/wufun/databinding/ax0;->t(Lcom/join/kotlin/ui/modleregin/modle/VideoModle;)V

    .line 250
    .line 251
    .line 252
    :cond_12
    iget-object v0, v1, Lcom/join/android/app/mgsim/wufun/databinding/en0;->m:Lcom/join/android/app/mgsim/wufun/databinding/ax0;

    .line 253
    .line 254
    invoke-static {v0}, Landroidx/databinding/ViewDataBinding;->executeBindingsOn(Landroidx/databinding/ViewDataBinding;)V

    .line 255
    .line 256
    .line 257
    return-void

    .line 258
    :catchall_0
    move-exception v0

    .line 259
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 260
    throw v0
.end method

.method public hasPendingBindings()Z
    .locals 6

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    iget-wide v0, p0, Lcom/join/android/app/mgsim/wufun/databinding/en0;->n:J

    .line 3
    .line 4
    const-wide/16 v2, 0x0

    .line 5
    .line 6
    const/4 v4, 0x1

    .line 7
    cmp-long v5, v0, v2

    .line 8
    .line 9
    if-eqz v5, :cond_0

    .line 10
    .line 11
    monitor-exit p0

    .line 12
    return v4

    .line 13
    :cond_0
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 14
    iget-object v0, p0, Lcom/join/android/app/mgsim/wufun/databinding/en0;->m:Lcom/join/android/app/mgsim/wufun/databinding/ax0;

    .line 15
    .line 16
    invoke-virtual {v0}, Landroidx/databinding/ViewDataBinding;->hasPendingBindings()Z

    .line 17
    .line 18
    .line 19
    move-result v0

    .line 20
    if-eqz v0, :cond_1

    .line 21
    .line 22
    return v4

    .line 23
    :cond_1
    const/4 v0, 0x0

    .line 24
    return v0

    .line 25
    :catchall_0
    move-exception v0

    .line 26
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 27
    throw v0
.end method

.method public invalidateAll()V
    .locals 2

    .line 1
    monitor-enter p0

    .line 2
    const-wide/16 v0, 0x8

    .line 3
    .line 4
    :try_start_0
    iput-wide v0, p0, Lcom/join/android/app/mgsim/wufun/databinding/en0;->n:J

    .line 5
    .line 6
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 7
    iget-object v0, p0, Lcom/join/android/app/mgsim/wufun/databinding/en0;->m:Lcom/join/android/app/mgsim/wufun/databinding/ax0;

    .line 8
    .line 9
    invoke-virtual {v0}, Landroidx/databinding/ViewDataBinding;->invalidateAll()V

    .line 10
    .line 11
    .line 12
    invoke-virtual {p0}, Landroidx/databinding/ViewDataBinding;->requestRebind()V

    .line 13
    .line 14
    .line 15
    return-void

    .line 16
    :catchall_0
    move-exception v0

    .line 17
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 18
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

    const/4 p1, 0x0

    return p1
.end method

.method public setLifecycleOwner(Landroidx/lifecycle/LifecycleOwner;)V
    .locals 1
    .param p1    # Landroidx/lifecycle/LifecycleOwner;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "lifecycleOwner"
        }
    .end annotation

    .line 1
    invoke-super {p0, p1}, Landroidx/databinding/ViewDataBinding;->setLifecycleOwner(Landroidx/lifecycle/LifecycleOwner;)V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lcom/join/android/app/mgsim/wufun/databinding/en0;->m:Lcom/join/android/app/mgsim/wufun/databinding/ax0;

    .line 5
    .line 6
    invoke-virtual {v0, p1}, Landroidx/databinding/ViewDataBinding;->setLifecycleOwner(Landroidx/lifecycle/LifecycleOwner;)V

    .line 7
    .line 8
    .line 9
    return-void
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
    const/16 v0, 0x30

    .line 2
    .line 3
    if-ne v0, p1, :cond_0

    .line 4
    .line 5
    check-cast p2, Lcom/join/kotlin/ui/modleregin/modle/VideoModle;

    .line 6
    .line 7
    invoke-virtual {p0, p2}, Lcom/join/android/app/mgsim/wufun/databinding/en0;->A(Lcom/join/kotlin/ui/modleregin/modle/VideoModle;)V

    .line 8
    .line 9
    .line 10
    goto :goto_0

    .line 11
    :cond_0
    const/16 v0, 0xb

    .line 12
    .line 13
    if-ne v0, p1, :cond_1

    .line 14
    .line 15
    check-cast p2, Lcom/join/kotlin/ui/modleregin/modle/MustplayItemBean;

    .line 16
    .line 17
    invoke-virtual {p0, p2}, Lcom/join/android/app/mgsim/wufun/databinding/en0;->z(Lcom/join/kotlin/ui/modleregin/modle/MustplayItemBean;)V

    .line 18
    .line 19
    .line 20
    goto :goto_0

    .line 21
    :cond_1
    const/16 v0, 0x31

    .line 22
    .line 23
    if-ne v0, p1, :cond_2

    .line 24
    .line 25
    check-cast p2, Lcom/join/android/app/component/video/c;

    .line 26
    .line 27
    invoke-virtual {p0, p2}, Lcom/join/android/app/mgsim/wufun/databinding/en0;->B(Lcom/join/android/app/component/video/c;)V

    .line 28
    .line 29
    .line 30
    :goto_0
    const/4 p1, 0x1

    .line 31
    goto :goto_1

    .line 32
    :cond_2
    const/4 p1, 0x0

    .line 33
    :goto_1
    return p1
.end method

.method public z(Lcom/join/kotlin/ui/modleregin/modle/MustplayItemBean;)V
    .locals 4
    .param p1    # Lcom/join/kotlin/ui/modleregin/modle/MustplayItemBean;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "Data"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/join/android/app/mgsim/wufun/databinding/dn0;->j:Lcom/join/kotlin/ui/modleregin/modle/MustplayItemBean;

    .line 2
    .line 3
    monitor-enter p0

    .line 4
    :try_start_0
    iget-wide v0, p0, Lcom/join/android/app/mgsim/wufun/databinding/en0;->n:J

    .line 5
    .line 6
    const-wide/16 v2, 0x2

    .line 7
    .line 8
    or-long/2addr v0, v2

    .line 9
    iput-wide v0, p0, Lcom/join/android/app/mgsim/wufun/databinding/en0;->n:J

    .line 10
    .line 11
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 12
    const/16 p1, 0xb

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
