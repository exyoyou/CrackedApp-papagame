.class public Lcom/join/android/app/mgsim/wufun/databinding/tc;
.super Lcom/join/android/app/mgsim/wufun/databinding/sc;
.source "SourceFile"

# interfaces
.implements Lcom/join/android/app/mgsim/wufun/generated/callback/a$a;


# static fields
.field private static final k:Landroidx/databinding/ViewDataBinding$IncludedLayouts;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private static final l:Landroid/util/SparseIntArray;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field


# instance fields
.field private final h:Landroidx/constraintlayout/widget/ConstraintLayout;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation
.end field

.field private final i:Landroid/view/View$OnClickListener;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private j:J


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
    sget-object v0, Lcom/join/android/app/mgsim/wufun/databinding/tc;->k:Landroidx/databinding/ViewDataBinding$IncludedLayouts;

    sget-object v1, Lcom/join/android/app/mgsim/wufun/databinding/tc;->l:Landroid/util/SparseIntArray;

    const/4 v2, 0x4

    invoke-static {p1, p2, v2, v0, v1}, Landroidx/databinding/ViewDataBinding;->mapBindings(Landroidx/databinding/DataBindingComponent;Landroid/view/View;ILandroidx/databinding/ViewDataBinding$IncludedLayouts;Landroid/util/SparseIntArray;)[Ljava/lang/Object;

    move-result-object v0

    invoke-direct {p0, p1, p2, v0}, Lcom/join/android/app/mgsim/wufun/databinding/tc;-><init>(Landroidx/databinding/DataBindingComponent;Landroid/view/View;[Ljava/lang/Object;)V

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

    const/4 v0, 0x3

    .line 2
    aget-object v0, p3, v0

    move-object v4, v0

    check-cast v4, Landroid/widget/TextView;

    const/4 v0, 0x2

    aget-object v0, p3, v0

    move-object v5, v0

    check-cast v5, Landroid/widget/TextView;

    const/4 v7, 0x1

    aget-object v0, p3, v7

    move-object v6, v0

    check-cast v6, Landroid/widget/TextView;

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    invoke-direct/range {v0 .. v6}, Lcom/join/android/app/mgsim/wufun/databinding/sc;-><init>(Ljava/lang/Object;Landroid/view/View;ILandroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/TextView;)V

    const-wide/16 v0, -0x1

    .line 3
    iput-wide v0, p0, Lcom/join/android/app/mgsim/wufun/databinding/tc;->j:J

    const/4 p1, 0x0

    .line 4
    aget-object p1, p3, p1

    check-cast p1, Landroidx/constraintlayout/widget/ConstraintLayout;

    iput-object p1, p0, Lcom/join/android/app/mgsim/wufun/databinding/tc;->h:Landroidx/constraintlayout/widget/ConstraintLayout;

    const/4 p3, 0x0

    .line 5
    invoke-virtual {p1, p3}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 6
    iget-object p1, p0, Lcom/join/android/app/mgsim/wufun/databinding/sc;->b:Landroid/widget/TextView;

    invoke-virtual {p1, p3}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 7
    iget-object p1, p0, Lcom/join/android/app/mgsim/wufun/databinding/sc;->c:Landroid/widget/TextView;

    invoke-virtual {p1, p3}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 8
    iget-object p1, p0, Lcom/join/android/app/mgsim/wufun/databinding/sc;->d:Landroid/widget/TextView;

    invoke-virtual {p1, p3}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 9
    invoke-virtual {p0, p2}, Landroidx/databinding/ViewDataBinding;->setRootTag(Landroid/view/View;)V

    .line 10
    new-instance p1, Lcom/join/android/app/mgsim/wufun/generated/callback/a;

    invoke-direct {p1, p0, v7}, Lcom/join/android/app/mgsim/wufun/generated/callback/a;-><init>(Lcom/join/android/app/mgsim/wufun/generated/callback/a$a;I)V

    iput-object p1, p0, Lcom/join/android/app/mgsim/wufun/databinding/tc;->i:Landroid/view/View$OnClickListener;

    .line 11
    invoke-virtual {p0}, Lcom/join/android/app/mgsim/wufun/databinding/tc;->invalidateAll()V

    return-void
.end method


# virtual methods
.method public A(Lcom/join/kotlin/ui/modleregin/modle/TitleModle;)V
    .locals 4
    .param p1    # Lcom/join/kotlin/ui/modleregin/modle/TitleModle;
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
    iput-object p1, p0, Lcom/join/android/app/mgsim/wufun/databinding/sc;->g:Lcom/join/kotlin/ui/modleregin/modle/TitleModle;

    .line 2
    .line 3
    monitor-enter p0

    .line 4
    :try_start_0
    iget-wide v0, p0, Lcom/join/android/app/mgsim/wufun/databinding/tc;->j:J

    .line 5
    .line 6
    const-wide/16 v2, 0x2

    .line 7
    .line 8
    or-long/2addr v0, v2

    .line 9
    iput-wide v0, p0, Lcom/join/android/app/mgsim/wufun/databinding/tc;->j:J

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

.method public B(Ljava/lang/Boolean;)V
    .locals 4
    .param p1    # Ljava/lang/Boolean;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "IsshowWhite"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/join/android/app/mgsim/wufun/databinding/sc;->e:Ljava/lang/Boolean;

    .line 2
    .line 3
    monitor-enter p0

    .line 4
    :try_start_0
    iget-wide v0, p0, Lcom/join/android/app/mgsim/wufun/databinding/tc;->j:J

    .line 5
    .line 6
    const-wide/16 v2, 0x1

    .line 7
    .line 8
    or-long/2addr v0, v2

    .line 9
    iput-wide v0, p0, Lcom/join/android/app/mgsim/wufun/databinding/tc;->j:J

    .line 10
    .line 11
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 12
    const/16 p1, 0x1a

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

.method public final a(ILandroid/view/View;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "sourceId",
            "callbackArg_0"
        }
    .end annotation

    .line 1
    iget-object p1, p0, Lcom/join/android/app/mgsim/wufun/databinding/sc;->f:Landroid/view/View$OnClickListener;

    .line 2
    .line 3
    if-eqz p1, :cond_0

    .line 4
    .line 5
    const/4 v0, 0x1

    .line 6
    goto :goto_0

    .line 7
    :cond_0
    const/4 v0, 0x0

    .line 8
    :goto_0
    if-eqz v0, :cond_1

    .line 9
    .line 10
    invoke-interface {p1, p2}, Landroid/view/View$OnClickListener;->onClick(Landroid/view/View;)V

    .line 11
    .line 12
    .line 13
    :cond_1
    return-void
.end method

.method protected executeBindings()V
    .locals 23

    .line 1
    move-object/from16 v1, p0

    .line 2
    .line 3
    monitor-enter p0

    .line 4
    :try_start_0
    iget-wide v2, v1, Lcom/join/android/app/mgsim/wufun/databinding/tc;->j:J

    .line 5
    .line 6
    const-wide/16 v4, 0x0

    .line 7
    .line 8
    iput-wide v4, v1, Lcom/join/android/app/mgsim/wufun/databinding/tc;->j:J

    .line 9
    .line 10
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 11
    iget-object v0, v1, Lcom/join/android/app/mgsim/wufun/databinding/sc;->e:Ljava/lang/Boolean;

    .line 12
    .line 13
    iget-object v6, v1, Lcom/join/android/app/mgsim/wufun/databinding/sc;->g:Lcom/join/kotlin/ui/modleregin/modle/TitleModle;

    .line 14
    .line 15
    const-wide/16 v7, 0x9

    .line 16
    .line 17
    and-long v9, v2, v7

    .line 18
    .line 19
    const/4 v11, 0x0

    .line 20
    cmp-long v12, v9, v4

    .line 21
    .line 22
    if-eqz v12, :cond_3

    .line 23
    .line 24
    invoke-static {v0}, Landroidx/databinding/ViewDataBinding;->safeUnbox(Ljava/lang/Boolean;)Z

    .line 25
    .line 26
    .line 27
    move-result v0

    .line 28
    if-eqz v12, :cond_1

    .line 29
    .line 30
    if-eqz v0, :cond_0

    .line 31
    .line 32
    const-wide/16 v9, 0x80

    .line 33
    .line 34
    goto :goto_0

    .line 35
    :cond_0
    const-wide/16 v9, 0x40

    .line 36
    .line 37
    :goto_0
    or-long/2addr v2, v9

    .line 38
    :cond_1
    if-eqz v0, :cond_2

    .line 39
    .line 40
    iget-object v0, v1, Lcom/join/android/app/mgsim/wufun/databinding/tc;->h:Landroidx/constraintlayout/widget/ConstraintLayout;

    .line 41
    .line 42
    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 43
    .line 44
    .line 45
    move-result-object v0

    .line 46
    const v9, 0x7f0813b2

    .line 47
    .line 48
    .line 49
    goto :goto_1

    .line 50
    :cond_2
    iget-object v0, v1, Lcom/join/android/app/mgsim/wufun/databinding/tc;->h:Landroidx/constraintlayout/widget/ConstraintLayout;

    .line 51
    .line 52
    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 53
    .line 54
    .line 55
    move-result-object v0

    .line 56
    const v9, 0x7f08009c

    .line 57
    .line 58
    .line 59
    :goto_1
    invoke-static {v0, v9}, Landroidx/appcompat/content/res/AppCompatResources;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    .line 60
    .line 61
    .line 62
    move-result-object v0

    .line 63
    goto :goto_2

    .line 64
    :cond_3
    move-object v0, v11

    .line 65
    :goto_2
    const-wide/16 v9, 0xa

    .line 66
    .line 67
    and-long v12, v2, v9

    .line 68
    .line 69
    const/16 v14, 0x8

    .line 70
    .line 71
    const-wide/16 v15, 0x100

    .line 72
    .line 73
    const/16 v17, 0x1

    .line 74
    .line 75
    const/16 v18, 0x0

    .line 76
    .line 77
    cmp-long v19, v12, v4

    .line 78
    .line 79
    if-eqz v19, :cond_c

    .line 80
    .line 81
    if-eqz v6, :cond_4

    .line 82
    .line 83
    invoke-virtual {v6}, Lcom/join/kotlin/ui/modleregin/modle/TitleModle;->getTitle()Ljava/lang/String;

    .line 84
    .line 85
    .line 86
    move-result-object v11

    .line 87
    invoke-virtual {v6}, Lcom/join/kotlin/ui/modleregin/modle/TitleModle;->getSubTitle()Ljava/lang/String;

    .line 88
    .line 89
    .line 90
    move-result-object v12

    .line 91
    invoke-virtual {v6}, Lcom/join/kotlin/ui/modleregin/modle/TitleModle;->getIntentDateBean()Lcom/join/mgps/Util/IntentDateBean;

    .line 92
    .line 93
    .line 94
    move-result-object v6

    .line 95
    move-object/from16 v22, v12

    .line 96
    .line 97
    move-object v12, v11

    .line 98
    move-object/from16 v11, v22

    .line 99
    .line 100
    goto :goto_3

    .line 101
    :cond_4
    move-object v6, v11

    .line 102
    move-object v12, v6

    .line 103
    :goto_3
    if-nez v11, :cond_5

    .line 104
    .line 105
    const/4 v13, 0x1

    .line 106
    goto :goto_4

    .line 107
    :cond_5
    const/4 v13, 0x0

    .line 108
    :goto_4
    if-nez v6, :cond_6

    .line 109
    .line 110
    const/4 v6, 0x1

    .line 111
    goto :goto_5

    .line 112
    :cond_6
    const/4 v6, 0x0

    .line 113
    :goto_5
    if-eqz v19, :cond_8

    .line 114
    .line 115
    if-eqz v13, :cond_7

    .line 116
    .line 117
    const-wide/16 v19, 0x200

    .line 118
    .line 119
    or-long v2, v2, v19

    .line 120
    .line 121
    goto :goto_6

    .line 122
    :cond_7
    or-long/2addr v2, v15

    .line 123
    :cond_8
    :goto_6
    and-long v19, v2, v9

    .line 124
    .line 125
    cmp-long v21, v19, v4

    .line 126
    .line 127
    if-eqz v21, :cond_a

    .line 128
    .line 129
    if-eqz v6, :cond_9

    .line 130
    .line 131
    const-wide/16 v19, 0x20

    .line 132
    .line 133
    goto :goto_7

    .line 134
    :cond_9
    const-wide/16 v19, 0x10

    .line 135
    .line 136
    :goto_7
    or-long v2, v2, v19

    .line 137
    .line 138
    :cond_a
    if-eqz v6, :cond_b

    .line 139
    .line 140
    const/16 v6, 0x8

    .line 141
    .line 142
    goto :goto_8

    .line 143
    :cond_b
    const/4 v6, 0x0

    .line 144
    goto :goto_8

    .line 145
    :cond_c
    move-object v12, v11

    .line 146
    const/4 v6, 0x0

    .line 147
    const/4 v13, 0x0

    .line 148
    :goto_8
    and-long/2addr v15, v2

    .line 149
    cmp-long v19, v15, v4

    .line 150
    .line 151
    if-eqz v19, :cond_d

    .line 152
    .line 153
    const-string v15, ""

    .line 154
    .line 155
    if-ne v11, v15, :cond_d

    .line 156
    .line 157
    const/4 v15, 0x1

    .line 158
    goto :goto_9

    .line 159
    :cond_d
    const/4 v15, 0x0

    .line 160
    :goto_9
    and-long v19, v2, v9

    .line 161
    .line 162
    cmp-long v16, v19, v4

    .line 163
    .line 164
    if-eqz v16, :cond_11

    .line 165
    .line 166
    if-eqz v13, :cond_e

    .line 167
    .line 168
    goto :goto_a

    .line 169
    :cond_e
    move/from16 v17, v15

    .line 170
    .line 171
    :goto_a
    if-eqz v16, :cond_10

    .line 172
    .line 173
    if-eqz v17, :cond_f

    .line 174
    .line 175
    const-wide/16 v15, 0x800

    .line 176
    .line 177
    goto :goto_b

    .line 178
    :cond_f
    const-wide/16 v15, 0x400

    .line 179
    .line 180
    :goto_b
    or-long/2addr v2, v15

    .line 181
    :cond_10
    if-eqz v17, :cond_11

    .line 182
    .line 183
    goto :goto_c

    .line 184
    :cond_11
    const/4 v14, 0x0

    .line 185
    :goto_c
    and-long/2addr v7, v2

    .line 186
    cmp-long v13, v7, v4

    .line 187
    .line 188
    if-eqz v13, :cond_12

    .line 189
    .line 190
    iget-object v7, v1, Lcom/join/android/app/mgsim/wufun/databinding/tc;->h:Landroidx/constraintlayout/widget/ConstraintLayout;

    .line 191
    .line 192
    invoke-static {v7, v0}, Landroidx/databinding/adapters/ViewBindingAdapter;->setBackground(Landroid/view/View;Landroid/graphics/drawable/Drawable;)V

    .line 193
    .line 194
    .line 195
    :cond_12
    const-wide/16 v7, 0x8

    .line 196
    .line 197
    and-long/2addr v7, v2

    .line 198
    cmp-long v0, v7, v4

    .line 199
    .line 200
    if-eqz v0, :cond_13

    .line 201
    .line 202
    iget-object v0, v1, Lcom/join/android/app/mgsim/wufun/databinding/sc;->b:Landroid/widget/TextView;

    .line 203
    .line 204
    iget-object v7, v1, Lcom/join/android/app/mgsim/wufun/databinding/tc;->i:Landroid/view/View$OnClickListener;

    .line 205
    .line 206
    invoke-virtual {v0, v7}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 207
    .line 208
    .line 209
    :cond_13
    and-long/2addr v2, v9

    .line 210
    cmp-long v0, v2, v4

    .line 211
    .line 212
    if-eqz v0, :cond_14

    .line 213
    .line 214
    iget-object v0, v1, Lcom/join/android/app/mgsim/wufun/databinding/sc;->b:Landroid/widget/TextView;

    .line 215
    .line 216
    invoke-virtual {v0, v6}, Landroid/view/View;->setVisibility(I)V

    .line 217
    .line 218
    .line 219
    iget-object v0, v1, Lcom/join/android/app/mgsim/wufun/databinding/sc;->c:Landroid/widget/TextView;

    .line 220
    .line 221
    invoke-static {v0, v11}, Landroidx/databinding/adapters/TextViewBindingAdapter;->setText(Landroid/widget/TextView;Ljava/lang/CharSequence;)V

    .line 222
    .line 223
    .line 224
    iget-object v0, v1, Lcom/join/android/app/mgsim/wufun/databinding/sc;->c:Landroid/widget/TextView;

    .line 225
    .line 226
    invoke-virtual {v0, v14}, Landroid/view/View;->setVisibility(I)V

    .line 227
    .line 228
    .line 229
    iget-object v0, v1, Lcom/join/android/app/mgsim/wufun/databinding/sc;->d:Landroid/widget/TextView;

    .line 230
    .line 231
    invoke-static {v0, v12}, Landroidx/databinding/adapters/TextViewBindingAdapter;->setText(Landroid/widget/TextView;Ljava/lang/CharSequence;)V

    .line 232
    .line 233
    .line 234
    :cond_14
    return-void

    .line 235
    :catchall_0
    move-exception v0

    .line 236
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 237
    throw v0
.end method

.method public hasPendingBindings()Z
    .locals 5

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    iget-wide v0, p0, Lcom/join/android/app/mgsim/wufun/databinding/tc;->j:J

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
    const-wide/16 v0, 0x8

    .line 3
    .line 4
    :try_start_0
    iput-wide v0, p0, Lcom/join/android/app/mgsim/wufun/databinding/tc;->j:J

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
    const/16 v0, 0x1a

    .line 2
    .line 3
    if-ne v0, p1, :cond_0

    .line 4
    .line 5
    check-cast p2, Ljava/lang/Boolean;

    .line 6
    .line 7
    invoke-virtual {p0, p2}, Lcom/join/android/app/mgsim/wufun/databinding/tc;->B(Ljava/lang/Boolean;)V

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
    check-cast p2, Lcom/join/kotlin/ui/modleregin/modle/TitleModle;

    .line 16
    .line 17
    invoke-virtual {p0, p2}, Lcom/join/android/app/mgsim/wufun/databinding/tc;->A(Lcom/join/kotlin/ui/modleregin/modle/TitleModle;)V

    .line 18
    .line 19
    .line 20
    goto :goto_0

    .line 21
    :cond_1
    const/16 v0, 0x8

    .line 22
    .line 23
    if-ne v0, p1, :cond_2

    .line 24
    .line 25
    check-cast p2, Landroid/view/View$OnClickListener;

    .line 26
    .line 27
    invoke-virtual {p0, p2}, Lcom/join/android/app/mgsim/wufun/databinding/tc;->z(Landroid/view/View$OnClickListener;)V

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

.method public z(Landroid/view/View$OnClickListener;)V
    .locals 4
    .param p1    # Landroid/view/View$OnClickListener;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "Click"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/join/android/app/mgsim/wufun/databinding/sc;->f:Landroid/view/View$OnClickListener;

    .line 2
    .line 3
    monitor-enter p0

    .line 4
    :try_start_0
    iget-wide v0, p0, Lcom/join/android/app/mgsim/wufun/databinding/tc;->j:J

    .line 5
    .line 6
    const-wide/16 v2, 0x4

    .line 7
    .line 8
    or-long/2addr v0, v2

    .line 9
    iput-wide v0, p0, Lcom/join/android/app/mgsim/wufun/databinding/tc;->j:J

    .line 10
    .line 11
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 12
    const/16 p1, 0x8

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
