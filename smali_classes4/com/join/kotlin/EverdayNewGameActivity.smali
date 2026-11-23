.class public final Lcom/join/kotlin/EverdayNewGameActivity;
.super Lcom/BaseAppCompatActivity;
.source "SourceFile"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u00000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\u0018\u00002\u00020\u0001B\u0007\u00a2\u0006\u0004\u0008\u0002\u0010\u0003J\u0012\u0010\u0016\u001a\u00020\u00172\u0008\u0010\u0018\u001a\u0004\u0018\u00010\u0019H\u0014R\u001a\u0010\u0004\u001a\u00020\u0005X\u0086.\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0006\u0010\u0007\"\u0004\u0008\u0008\u0010\tR\u001a\u0010\n\u001a\u00020\u000bX\u0086.\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u000c\u0010\r\"\u0004\u0008\u000e\u0010\u000fR\u001c\u0010\u0010\u001a\u0004\u0018\u00010\u0011X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0012\u0010\u0013\"\u0004\u0008\u0014\u0010\u0015\u00a8\u0006\u001a"
    }
    d2 = {
        "Lcom/join/kotlin/EverdayNewGameActivity;",
        "Lcom/BaseAppCompatActivity;",
        "<init>",
        "()V",
        "binding",
        "Lcom/join/android/app/mgsim/wufun/databinding/EverdayNewActivityBinding;",
        "getBinding",
        "()Lcom/join/android/app/mgsim/wufun/databinding/EverdayNewActivityBinding;",
        "setBinding",
        "(Lcom/join/android/app/mgsim/wufun/databinding/EverdayNewActivityBinding;)V",
        "adapter",
        "Lcom/join/mgps/customview/NavigationAdapter;",
        "getAdapter",
        "()Lcom/join/mgps/customview/NavigationAdapter;",
        "setAdapter",
        "(Lcom/join/mgps/customview/NavigationAdapter;)V",
        "extBean",
        "Lcom/join/mgps/dto/ExtBean;",
        "getExtBean",
        "()Lcom/join/mgps/dto/ExtBean;",
        "setExtBean",
        "(Lcom/join/mgps/dto/ExtBean;)V",
        "onCreate",
        "",
        "savedInstanceState",
        "Landroid/os/Bundle;",
        "app_wufunNormalRelease"
    }
    k = 0x1
    mv = {
        0x2,
        0x1,
        0x0
    }
    xi = 0x30
.end annotation


# instance fields
.field public adapter:Lcom/join/mgps/customview/e0;

.field public binding:Lcom/join/android/app/mgsim/wufun/databinding/ej;

.field private extBean:Lcom/join/mgps/dto/ExtBean;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/BaseAppCompatActivity;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static synthetic j(Lcom/join/kotlin/EverdayNewGameActivity;)Lkotlin/Unit;
    .locals 0

    .line 1
    invoke-static {p0}, Lcom/join/kotlin/EverdayNewGameActivity;->onCreate$lambda$0(Lcom/join/kotlin/EverdayNewGameActivity;)Lkotlin/Unit;

    move-result-object p0

    return-object p0
.end method

.method private static final onCreate$lambda$0(Lcom/join/kotlin/EverdayNewGameActivity;)Lkotlin/Unit;
    .locals 0

    .line 1
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    .line 2
    .line 3
    .line 4
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 5
    .line 6
    return-object p0
.end method


# virtual methods
.method public final getAdapter()Lcom/join/mgps/customview/e0;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/kotlin/EverdayNewGameActivity;->adapter:Lcom/join/mgps/customview/e0;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    return-object v0

    .line 6
    :cond_0
    const-string v0, "adapter"

    .line 7
    .line 8
    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    const/4 v0, 0x0

    .line 12
    return-object v0
.end method

.method public final getBinding()Lcom/join/android/app/mgsim/wufun/databinding/ej;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/kotlin/EverdayNewGameActivity;->binding:Lcom/join/android/app/mgsim/wufun/databinding/ej;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    return-object v0

    .line 6
    :cond_0
    const-string v0, "binding"

    .line 7
    .line 8
    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    const/4 v0, 0x0

    .line 12
    return-object v0
.end method

.method public final getExtBean()Lcom/join/mgps/dto/ExtBean;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/kotlin/EverdayNewGameActivity;->extBean:Lcom/join/mgps/dto/ExtBean;

    .line 2
    .line 3
    return-object v0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 9
    .param p1    # Landroid/os/Bundle;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    invoke-super {p0, p1}, Lcom/BaseAppCompatActivity;->onCreate(Landroid/os/Bundle;)V

    .line 2
    .line 3
    .line 4
    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    .line 5
    .line 6
    .line 7
    move-result-object p1

    .line 8
    invoke-static {p1}, Lcom/join/android/app/mgsim/wufun/databinding/ej;->inflate(Landroid/view/LayoutInflater;)Lcom/join/android/app/mgsim/wufun/databinding/ej;

    .line 9
    .line 10
    .line 11
    move-result-object p1

    .line 12
    const-string v0, "inflate(...)"

    .line 13
    .line 14
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 15
    .line 16
    .line 17
    invoke-virtual {p1}, Lcom/join/android/app/mgsim/wufun/databinding/ej;->a()Landroid/widget/LinearLayout;

    .line 18
    .line 19
    .line 20
    move-result-object v0

    .line 21
    invoke-virtual {p0, v0}, Lcom/BaseAppCompatActivity;->setContentView(Landroid/view/View;)V

    .line 22
    .line 23
    .line 24
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    .line 25
    .line 26
    .line 27
    move-result-object v0

    .line 28
    const-string v1, "title"

    .line 29
    .line 30
    if-eqz v0, :cond_0

    .line 31
    .line 32
    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    .line 33
    .line 34
    .line 35
    move-result-object v0

    .line 36
    if-nez v0, :cond_1

    .line 37
    .line 38
    :cond_0
    const-string v0, "\u6bcf\u65e5\u4e0a\u65b0"

    .line 39
    .line 40
    :cond_1
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    .line 41
    .line 42
    .line 43
    move-result-object v2

    .line 44
    const-string v3, "extBean"

    .line 45
    .line 46
    const/4 v4, 0x0

    .line 47
    if-eqz v2, :cond_2

    .line 48
    .line 49
    invoke-virtual {v2, v3}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    .line 50
    .line 51
    .line 52
    move-result-object v2

    .line 53
    goto :goto_0

    .line 54
    :cond_2
    move-object v2, v4

    .line 55
    :goto_0
    instance-of v5, v2, Lcom/join/mgps/dto/ExtBean;

    .line 56
    .line 57
    if-eqz v5, :cond_3

    .line 58
    .line 59
    move-object v4, v2

    .line 60
    check-cast v4, Lcom/join/mgps/dto/ExtBean;

    .line 61
    .line 62
    :cond_3
    iput-object v4, p0, Lcom/join/kotlin/EverdayNewGameActivity;->extBean:Lcom/join/mgps/dto/ExtBean;

    .line 63
    .line 64
    const-string v2, "\u5355\u673a"

    .line 65
    .line 66
    const-string v4, "\u6a21\u62df\u5668"

    .line 67
    .line 68
    const-string v5, "\u5168\u90e8"

    .line 69
    .line 70
    const-string v6, "\u7f51\u6e38"

    .line 71
    .line 72
    filled-new-array {v5, v6, v2, v4}, [Ljava/lang/String;

    .line 73
    .line 74
    .line 75
    move-result-object v2

    .line 76
    invoke-static {v2}, Lkotlin/collections/CollectionsKt;->arrayListOf([Ljava/lang/Object;)Ljava/util/ArrayList;

    .line 77
    .line 78
    .line 79
    move-result-object v2

    .line 80
    new-instance v4, Ljava/util/ArrayList;

    .line 81
    .line 82
    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 83
    .line 84
    .line 85
    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 86
    .line 87
    .line 88
    move-result-object v5

    .line 89
    const-string v6, "iterator(...)"

    .line 90
    .line 91
    invoke-static {v5, v6}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 92
    .line 93
    .line 94
    :goto_1
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    .line 95
    .line 96
    .line 97
    move-result v6

    .line 98
    if-eqz v6, :cond_4

    .line 99
    .line 100
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 101
    .line 102
    .line 103
    move-result-object v6

    .line 104
    const-string v7, "next(...)"

    .line 105
    .line 106
    invoke-static {v6, v7}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 107
    .line 108
    .line 109
    check-cast v6, Ljava/lang/String;

    .line 110
    .line 111
    new-instance v7, Lcom/join/kotlin/EverdayNewFragment;

    .line 112
    .line 113
    invoke-direct {v7}, Lcom/join/kotlin/EverdayNewFragment;-><init>()V

    .line 114
    .line 115
    .line 116
    new-instance v8, Landroid/os/Bundle;

    .line 117
    .line 118
    invoke-direct {v8}, Landroid/os/Bundle;-><init>()V

    .line 119
    .line 120
    .line 121
    invoke-virtual {v8, v1, v6}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 122
    .line 123
    .line 124
    iget-object v6, p0, Lcom/join/kotlin/EverdayNewGameActivity;->extBean:Lcom/join/mgps/dto/ExtBean;

    .line 125
    .line 126
    invoke-virtual {v8, v3, v6}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    .line 127
    .line 128
    .line 129
    invoke-virtual {v7, v8}, Landroidx/fragment/app/Fragment;->setArguments(Landroid/os/Bundle;)V

    .line 130
    .line 131
    .line 132
    invoke-virtual {v4, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 133
    .line 134
    .line 135
    goto :goto_1

    .line 136
    :cond_4
    new-instance v1, Lcom/join/mgps/customview/e0;

    .line 137
    .line 138
    invoke-virtual {p0}, Landroidx/fragment/app/FragmentActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    .line 139
    .line 140
    .line 141
    move-result-object v3

    .line 142
    invoke-direct {v1, v3, v4, v2}, Lcom/join/mgps/customview/e0;-><init>(Landroidx/fragment/app/FragmentManager;Ljava/util/ArrayList;Ljava/util/List;)V

    .line 143
    .line 144
    .line 145
    invoke-virtual {p0, v1}, Lcom/join/kotlin/EverdayNewGameActivity;->setAdapter(Lcom/join/mgps/customview/e0;)V

    .line 146
    .line 147
    .line 148
    iget-object v1, p1, Lcom/join/android/app/mgsim/wufun/databinding/ej;->e:Landroidx/viewpager/widget/ViewPager;

    .line 149
    .line 150
    invoke-virtual {p0}, Lcom/join/kotlin/EverdayNewGameActivity;->getAdapter()Lcom/join/mgps/customview/e0;

    .line 151
    .line 152
    .line 153
    move-result-object v2

    .line 154
    invoke-virtual {v1, v2}, Landroidx/viewpager/widget/ViewPager;->setAdapter(Landroidx/viewpager/widget/PagerAdapter;)V

    .line 155
    .line 156
    .line 157
    invoke-virtual {p0}, Lcom/join/kotlin/EverdayNewGameActivity;->getAdapter()Lcom/join/mgps/customview/e0;

    .line 158
    .line 159
    .line 160
    move-result-object v1

    .line 161
    invoke-virtual {v1}, Landroidx/viewpager/widget/PagerAdapter;->notifyDataSetChanged()V

    .line 162
    .line 163
    .line 164
    iget-object v1, p1, Lcom/join/android/app/mgsim/wufun/databinding/ej;->c:Lcom/join/mgps/customview/SlidingTabLayout6;

    .line 165
    .line 166
    iget-object v2, p1, Lcom/join/android/app/mgsim/wufun/databinding/ej;->e:Landroidx/viewpager/widget/ViewPager;

    .line 167
    .line 168
    invoke-virtual {v1, v2}, Lcom/join/mgps/customview/SlidingTabLayout1;->setViewPager(Landroidx/viewpager/widget/ViewPager;)V

    .line 169
    .line 170
    .line 171
    iget-object v1, p1, Lcom/join/android/app/mgsim/wufun/databinding/ej;->d:Lcom/join/android/app/mgsim/wufun/databinding/jw0;

    .line 172
    .line 173
    iget-object v1, v1, Lcom/join/android/app/mgsim/wufun/databinding/jw0;->c:Landroid/widget/ImageView;

    .line 174
    .line 175
    const-string v2, "backImage"

    .line 176
    .line 177
    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 178
    .line 179
    .line 180
    new-instance v2, Lcom/join/kotlin/e;

    .line 181
    .line 182
    invoke-direct {v2, p0}, Lcom/join/kotlin/e;-><init>(Lcom/join/kotlin/EverdayNewGameActivity;)V

    .line 183
    .line 184
    .line 185
    invoke-static {v1, v2}, Lcom/psk/kotlin/ext/CommonExtKt;->onClick(Landroid/view/View;Lkotlin/jvm/functions/Function0;)V

    .line 186
    .line 187
    .line 188
    iget-object v1, p1, Lcom/join/android/app/mgsim/wufun/databinding/ej;->d:Lcom/join/android/app/mgsim/wufun/databinding/jw0;

    .line 189
    .line 190
    iget-object v1, v1, Lcom/join/android/app/mgsim/wufun/databinding/jw0;->e:Landroid/widget/TextView;

    .line 191
    .line 192
    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 193
    .line 194
    .line 195
    iget-object v0, p1, Lcom/join/android/app/mgsim/wufun/databinding/ej;->e:Landroidx/viewpager/widget/ViewPager;

    .line 196
    .line 197
    const/4 v1, 0x5

    .line 198
    invoke-virtual {v0, v1}, Landroidx/viewpager/widget/ViewPager;->setOffscreenPageLimit(I)V

    .line 199
    .line 200
    .line 201
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    .line 202
    .line 203
    .line 204
    move-result-object v0

    .line 205
    const-string v1, "default_position"

    .line 206
    .line 207
    const/4 v2, 0x0

    .line 208
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    .line 209
    .line 210
    .line 211
    move-result v0

    .line 212
    iget-object p1, p1, Lcom/join/android/app/mgsim/wufun/databinding/ej;->e:Landroidx/viewpager/widget/ViewPager;

    .line 213
    .line 214
    invoke-virtual {p1, v0}, Landroidx/viewpager/widget/ViewPager;->setCurrentItem(I)V

    .line 215
    .line 216
    .line 217
    return-void
.end method

.method public final setAdapter(Lcom/join/mgps/customview/e0;)V
    .locals 1
    .param p1    # Lcom/join/mgps/customview/e0;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    const-string v0, "<set-?>"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iput-object p1, p0, Lcom/join/kotlin/EverdayNewGameActivity;->adapter:Lcom/join/mgps/customview/e0;

    .line 7
    .line 8
    return-void
.end method

.method public final setBinding(Lcom/join/android/app/mgsim/wufun/databinding/ej;)V
    .locals 1
    .param p1    # Lcom/join/android/app/mgsim/wufun/databinding/ej;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    const-string v0, "<set-?>"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iput-object p1, p0, Lcom/join/kotlin/EverdayNewGameActivity;->binding:Lcom/join/android/app/mgsim/wufun/databinding/ej;

    .line 7
    .line 8
    return-void
.end method

.method public final setExtBean(Lcom/join/mgps/dto/ExtBean;)V
    .locals 0
    .param p1    # Lcom/join/mgps/dto/ExtBean;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    iput-object p1, p0, Lcom/join/kotlin/EverdayNewGameActivity;->extBean:Lcom/join/mgps/dto/ExtBean;

    .line 2
    .line 3
    return-void
.end method
