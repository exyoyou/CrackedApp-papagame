.class public Lcom/join/android/app/mgsim/wufun/databinding/zw;
.super Lcom/join/android/app/mgsim/wufun/databinding/yw;
.source "SourceFile"


# static fields
.field private static final i:Landroidx/databinding/ViewDataBinding$IncludedLayouts;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private static final j:Landroid/util/SparseIntArray;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field


# instance fields
.field private final g:Landroidx/constraintlayout/widget/ConstraintLayout;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field private h:J


# direct methods
.method static constructor <clinit>()V
    .locals 0

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
    sget-object v0, Lcom/join/android/app/mgsim/wufun/databinding/zw;->i:Landroidx/databinding/ViewDataBinding$IncludedLayouts;

    sget-object v1, Lcom/join/android/app/mgsim/wufun/databinding/zw;->j:Landroid/util/SparseIntArray;

    const/4 v2, 0x5

    invoke-static {p1, p2, v2, v0, v1}, Landroidx/databinding/ViewDataBinding;->mapBindings(Landroidx/databinding/DataBindingComponent;Landroid/view/View;ILandroidx/databinding/ViewDataBinding$IncludedLayouts;Landroid/util/SparseIntArray;)[Ljava/lang/Object;

    move-result-object v0

    invoke-direct {p0, p1, p2, v0}, Lcom/join/android/app/mgsim/wufun/databinding/zw;-><init>(Landroidx/databinding/DataBindingComponent;Landroid/view/View;[Ljava/lang/Object;)V

    return-void
.end method

.method private constructor <init>(Landroidx/databinding/DataBindingComponent;Landroid/view/View;[Ljava/lang/Object;)V
    .locals 8
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

    const/4 v0, 0x1

    .line 2
    aget-object v0, p3, v0

    move-object v4, v0

    check-cast v4, Landroid/widget/ImageView;

    const/4 v0, 0x2

    aget-object v0, p3, v0

    move-object v5, v0

    check-cast v5, Landroid/widget/TextView;

    const/4 v0, 0x3

    aget-object v0, p3, v0

    move-object v6, v0

    check-cast v6, Landroid/widget/TextView;

    const/4 v0, 0x4

    aget-object v0, p3, v0

    move-object v7, v0

    check-cast v7, Landroid/widget/TextView;

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    invoke-direct/range {v0 .. v7}, Lcom/join/android/app/mgsim/wufun/databinding/yw;-><init>(Ljava/lang/Object;Landroid/view/View;ILandroid/widget/ImageView;Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;)V

    const-wide/16 v0, -0x1

    .line 3
    iput-wide v0, p0, Lcom/join/android/app/mgsim/wufun/databinding/zw;->h:J

    .line 4
    iget-object p1, p0, Lcom/join/android/app/mgsim/wufun/databinding/yw;->b:Landroid/widget/ImageView;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    const/4 p1, 0x0

    .line 5
    aget-object p1, p3, p1

    check-cast p1, Landroidx/constraintlayout/widget/ConstraintLayout;

    iput-object p1, p0, Lcom/join/android/app/mgsim/wufun/databinding/zw;->g:Landroidx/constraintlayout/widget/ConstraintLayout;

    .line 6
    invoke-virtual {p1, v0}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 7
    iget-object p1, p0, Lcom/join/android/app/mgsim/wufun/databinding/yw;->c:Landroid/widget/TextView;

    invoke-virtual {p1, v0}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 8
    iget-object p1, p0, Lcom/join/android/app/mgsim/wufun/databinding/yw;->d:Landroid/widget/TextView;

    invoke-virtual {p1, v0}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 9
    iget-object p1, p0, Lcom/join/android/app/mgsim/wufun/databinding/yw;->e:Landroid/widget/TextView;

    invoke-virtual {p1, v0}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 10
    invoke-virtual {p0, p2}, Landroidx/databinding/ViewDataBinding;->setRootTag(Landroid/view/View;)V

    .line 11
    invoke-virtual {p0}, Lcom/join/android/app/mgsim/wufun/databinding/zw;->invalidateAll()V

    return-void
.end method


# virtual methods
.method protected executeBindings()V
    .locals 15

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    iget-wide v0, p0, Lcom/join/android/app/mgsim/wufun/databinding/zw;->h:J

    .line 3
    .line 4
    const-wide/16 v2, 0x0

    .line 5
    .line 6
    iput-wide v2, p0, Lcom/join/android/app/mgsim/wufun/databinding/zw;->h:J

    .line 7
    .line 8
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 9
    iget-object v4, p0, Lcom/join/android/app/mgsim/wufun/databinding/yw;->f:Lcom/wufan/user/service/protobuf/MessageCloudGamingPlaytimeResponse$PlaytimeLog;

    .line 10
    .line 11
    const-wide/16 v5, 0x3

    .line 12
    .line 13
    and-long v7, v0, v5

    .line 14
    .line 15
    const/4 v9, 0x0

    .line 16
    cmp-long v10, v7, v2

    .line 17
    .line 18
    if-eqz v10, :cond_9

    .line 19
    .line 20
    if-eqz v4, :cond_0

    .line 21
    .line 22
    invoke-virtual {v4}, Lcom/wufan/user/service/protobuf/MessageCloudGamingPlaytimeResponse$PlaytimeLog;->getAddTime()Ljava/lang/String;

    .line 23
    .line 24
    .line 25
    move-result-object v9

    .line 26
    invoke-virtual {v4}, Lcom/wufan/user/service/protobuf/MessageCloudGamingPlaytimeResponse$PlaytimeLog;->getTitle()Ljava/lang/String;

    .line 27
    .line 28
    .line 29
    move-result-object v7

    .line 30
    invoke-virtual {v4}, Lcom/wufan/user/service/protobuf/MessageCloudGamingPlaytimeResponse$PlaytimeLog;->getPlaytimeType()Lcom/wufan/user/service/protobuf/enumeration/PlaytimeType;

    .line 31
    .line 32
    .line 33
    move-result-object v8

    .line 34
    invoke-virtual {v4}, Lcom/wufan/user/service/protobuf/MessageCloudGamingPlaytimeResponse$PlaytimeLog;->getChangeTime()Ljava/lang/String;

    .line 35
    .line 36
    .line 37
    move-result-object v4

    .line 38
    move-object v14, v8

    .line 39
    move-object v8, v7

    .line 40
    move-object v7, v9

    .line 41
    move-object v9, v14

    .line 42
    goto :goto_0

    .line 43
    :cond_0
    move-object v4, v9

    .line 44
    move-object v7, v4

    .line 45
    move-object v8, v7

    .line 46
    :goto_0
    sget-object v11, Lcom/wufan/user/service/protobuf/enumeration/PlaytimeType;->FREE:Lcom/wufan/user/service/protobuf/enumeration/PlaytimeType;

    .line 47
    .line 48
    const/4 v12, 0x0

    .line 49
    if-ne v9, v11, :cond_1

    .line 50
    .line 51
    const/4 v9, 0x1

    .line 52
    goto :goto_1

    .line 53
    :cond_1
    const/4 v9, 0x0

    .line 54
    :goto_1
    if-eqz v10, :cond_3

    .line 55
    .line 56
    if-eqz v9, :cond_2

    .line 57
    .line 58
    const-wide/16 v10, 0x8

    .line 59
    .line 60
    goto :goto_2

    .line 61
    :cond_2
    const-wide/16 v10, 0x4

    .line 62
    .line 63
    :goto_2
    or-long/2addr v0, v10

    .line 64
    :cond_3
    if-eqz v4, :cond_4

    .line 65
    .line 66
    const-string v10, "+"

    .line 67
    .line 68
    invoke-virtual {v4, v10}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 69
    .line 70
    .line 71
    move-result v12

    .line 72
    :cond_4
    and-long v10, v0, v5

    .line 73
    .line 74
    cmp-long v13, v10, v2

    .line 75
    .line 76
    if-eqz v13, :cond_6

    .line 77
    .line 78
    if-eqz v12, :cond_5

    .line 79
    .line 80
    const-wide/16 v10, 0x20

    .line 81
    .line 82
    goto :goto_3

    .line 83
    :cond_5
    const-wide/16 v10, 0x10

    .line 84
    .line 85
    :goto_3
    or-long/2addr v0, v10

    .line 86
    :cond_6
    if-eqz v9, :cond_7

    .line 87
    .line 88
    iget-object v9, p0, Lcom/join/android/app/mgsim/wufun/databinding/yw;->b:Landroid/widget/ImageView;

    .line 89
    .line 90
    invoke-virtual {v9}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 91
    .line 92
    .line 93
    move-result-object v9

    .line 94
    const v10, 0x7f080868

    .line 95
    .line 96
    .line 97
    goto :goto_4

    .line 98
    :cond_7
    iget-object v9, p0, Lcom/join/android/app/mgsim/wufun/databinding/yw;->b:Landroid/widget/ImageView;

    .line 99
    .line 100
    invoke-virtual {v9}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 101
    .line 102
    .line 103
    move-result-object v9

    .line 104
    const v10, 0x7f080869

    .line 105
    .line 106
    .line 107
    :goto_4
    invoke-static {v9, v10}, Landroidx/appcompat/content/res/AppCompatResources;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    .line 108
    .line 109
    .line 110
    move-result-object v9

    .line 111
    if-eqz v12, :cond_8

    .line 112
    .line 113
    const-string v10, "#FF7017"

    .line 114
    .line 115
    goto :goto_5

    .line 116
    :cond_8
    const-string v10, "#ff40AD55"

    .line 117
    .line 118
    goto :goto_5

    .line 119
    :cond_9
    move-object v4, v9

    .line 120
    move-object v7, v4

    .line 121
    move-object v8, v7

    .line 122
    move-object v10, v8

    .line 123
    :goto_5
    and-long/2addr v0, v5

    .line 124
    cmp-long v5, v0, v2

    .line 125
    .line 126
    if-eqz v5, :cond_a

    .line 127
    .line 128
    iget-object v0, p0, Lcom/join/android/app/mgsim/wufun/databinding/yw;->b:Landroid/widget/ImageView;

    .line 129
    .line 130
    invoke-static {v0, v9}, Landroidx/databinding/adapters/ImageViewBindingAdapter;->setImageDrawable(Landroid/widget/ImageView;Landroid/graphics/drawable/Drawable;)V

    .line 131
    .line 132
    .line 133
    iget-object v0, p0, Lcom/join/android/app/mgsim/wufun/databinding/yw;->c:Landroid/widget/TextView;

    .line 134
    .line 135
    invoke-static {v0, v8}, Landroidx/databinding/adapters/TextViewBindingAdapter;->setText(Landroid/widget/TextView;Ljava/lang/CharSequence;)V

    .line 136
    .line 137
    .line 138
    iget-object v0, p0, Lcom/join/android/app/mgsim/wufun/databinding/yw;->d:Landroid/widget/TextView;

    .line 139
    .line 140
    invoke-static {v0, v7}, Landroidx/databinding/adapters/TextViewBindingAdapter;->setText(Landroid/widget/TextView;Ljava/lang/CharSequence;)V

    .line 141
    .line 142
    .line 143
    iget-object v0, p0, Lcom/join/android/app/mgsim/wufun/databinding/yw;->e:Landroid/widget/TextView;

    .line 144
    .line 145
    invoke-static {v0, v10}, Lcom/join/kotlin/bindingadapter/ViewBindingTextviewKt;->textViewColorBinding(Landroid/widget/TextView;Ljava/lang/String;)V

    .line 146
    .line 147
    .line 148
    iget-object v0, p0, Lcom/join/android/app/mgsim/wufun/databinding/yw;->e:Landroid/widget/TextView;

    .line 149
    .line 150
    invoke-static {v0, v4}, Landroidx/databinding/adapters/TextViewBindingAdapter;->setText(Landroid/widget/TextView;Ljava/lang/CharSequence;)V

    .line 151
    .line 152
    .line 153
    :cond_a
    return-void

    .line 154
    :catchall_0
    move-exception v0

    .line 155
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 156
    throw v0
.end method

.method public hasPendingBindings()Z
    .locals 5

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    iget-wide v0, p0, Lcom/join/android/app/mgsim/wufun/databinding/zw;->h:J

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
    const-wide/16 v0, 0x2

    .line 3
    .line 4
    :try_start_0
    iput-wide v0, p0, Lcom/join/android/app/mgsim/wufun/databinding/zw;->h:J

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

.method public n(Lcom/wufan/user/service/protobuf/MessageCloudGamingPlaytimeResponse$PlaytimeLog;)V
    .locals 4
    .param p1    # Lcom/wufan/user/service/protobuf/MessageCloudGamingPlaytimeResponse$PlaytimeLog;
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
    iput-object p1, p0, Lcom/join/android/app/mgsim/wufun/databinding/yw;->f:Lcom/wufan/user/service/protobuf/MessageCloudGamingPlaytimeResponse$PlaytimeLog;

    .line 2
    .line 3
    monitor-enter p0

    .line 4
    :try_start_0
    iget-wide v0, p0, Lcom/join/android/app/mgsim/wufun/databinding/zw;->h:J

    .line 5
    .line 6
    const-wide/16 v2, 0x1

    .line 7
    .line 8
    or-long/2addr v0, v2

    .line 9
    iput-wide v0, p0, Lcom/join/android/app/mgsim/wufun/databinding/zw;->h:J

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
    check-cast p2, Lcom/wufan/user/service/protobuf/MessageCloudGamingPlaytimeResponse$PlaytimeLog;

    .line 6
    .line 7
    invoke-virtual {p0, p2}, Lcom/join/android/app/mgsim/wufun/databinding/zw;->n(Lcom/wufan/user/service/protobuf/MessageCloudGamingPlaytimeResponse$PlaytimeLog;)V

    .line 8
    .line 9
    .line 10
    const/4 p1, 0x1

    .line 11
    goto :goto_0

    .line 12
    :cond_0
    const/4 p1, 0x0

    .line 13
    :goto_0
    return p1
.end method
