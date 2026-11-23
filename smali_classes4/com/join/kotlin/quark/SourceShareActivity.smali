.class public final Lcom/join/kotlin/quark/SourceShareActivity;
.super Lcom/join/kotlin/base/activity/BaseVmDbActivity;
.source "SourceFile"

# interfaces
.implements Lcom/join/kotlin/quark/proxy/SourceShareClickProxy;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/join/kotlin/base/activity/BaseVmDbActivity<",
        "Lcom/join/kotlin/quark/viewmodel/SourceShareViewModel;",
        "Lcom/join/android/app/mgsim/wufun/databinding/v4;",
        ">;",
        "Lcom/join/kotlin/quark/proxy/SourceShareClickProxy;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nSourceShareActivity.kt\nKotlin\n*S Kotlin\n*F\n+ 1 SourceShareActivity.kt\ncom/join/kotlin/quark/SourceShareActivity\n+ 2 CommonExt.kt\ncom/join/kotlin/base/utils/CommonExtKt\n+ 3 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n+ 4 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,268:1\n29#2,2:269\n32#2,3:273\n29#2,2:276\n32#2,3:281\n1869#3,2:271\n1878#3,3:278\n1#4:284\n*S KotlinDebug\n*F\n+ 1 SourceShareActivity.kt\ncom/join/kotlin/quark/SourceShareActivity\n*L\n104#1:269,2\n104#1:273,3\n126#1:276,2\n126#1:281,3\n108#1:271,2\n128#1:278,3\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000f\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0005\u0018\u00002\u000e\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u00030\u00012\u00020\u0004B\u0007\u00a2\u0006\u0004\u0008\u0005\u0010\u0006J\u0012\u0010\u001e\u001a\u00020\u001f2\u0008\u0010 \u001a\u0004\u0018\u00010!H\u0016J\u0008\u0010\"\u001a\u00020\u001fH\u0014J\u0008\u0010#\u001a\u00020\u001fH\u0016J.\u0010$\u001a\u00020\u001f2\u001a\u0010%\u001a\u0016\u0012\u0006\u0012\u0004\u0018\u00010&0\u0017j\n\u0012\u0006\u0012\u0004\u0018\u00010&`\u00192\u0008\u0008\u0002\u0010\'\u001a\u00020(H\u0002J\u0010\u0010)\u001a\u00020\u001f2\u0006\u0010*\u001a\u00020+H\u0002J\u0008\u0010,\u001a\u00020\u001fH\u0016J\u0008\u0010-\u001a\u00020\u001fH\u0016J\u0008\u0010.\u001a\u00020\u001fH\u0016J\u0008\u0010/\u001a\u00020\u001fH\u0016R\u001c\u0010\u0007\u001a\u0004\u0018\u00010\u0008X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\t\u0010\n\"\u0004\u0008\u000b\u0010\u000cR\u001c\u0010\r\u001a\u0004\u0018\u00010\u000eX\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u000f\u0010\u0010\"\u0004\u0008\u0011\u0010\u0012R\u0014\u0010\u0013\u001a\u0008\u0012\u0004\u0012\u00020\u00150\u0014X\u0082.\u00a2\u0006\u0002\n\u0000R*\u0010\u0016\u001a\u0012\u0012\u0004\u0012\u00020\u00180\u0017j\u0008\u0012\u0004\u0012\u00020\u0018`\u0019X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u001a\u0010\u001b\"\u0004\u0008\u001c\u0010\u001d\u00a8\u00060"
    }
    d2 = {
        "Lcom/join/kotlin/quark/SourceShareActivity;",
        "Lcom/join/kotlin/base/activity/BaseVmDbActivity;",
        "Lcom/join/kotlin/quark/viewmodel/SourceShareViewModel;",
        "Lcom/join/android/app/mgsim/wufun/databinding/ActivitySourceShareBinding;",
        "Lcom/join/kotlin/quark/proxy/SourceShareClickProxy;",
        "<init>",
        "()V",
        "adapter",
        "Lcom/join/mgps/adapter/FragmentPagerAdapter;",
        "getAdapter",
        "()Lcom/join/mgps/adapter/FragmentPagerAdapter;",
        "setAdapter",
        "(Lcom/join/mgps/adapter/FragmentPagerAdapter;)V",
        "extBean",
        "Lcom/join/mgps/dto/ExtBean;",
        "getExtBean",
        "()Lcom/join/mgps/dto/ExtBean;",
        "setExtBean",
        "(Lcom/join/mgps/dto/ExtBean;)V",
        "loadSir",
        "Lcom/kingja/loadsir/core/LoadService;",
        "",
        "fragments",
        "Ljava/util/ArrayList;",
        "Lcom/join/mgps/adapter/FragmentPagerAdapter$Item;",
        "Lkotlin/collections/ArrayList;",
        "getFragments",
        "()Ljava/util/ArrayList;",
        "setFragments",
        "(Ljava/util/ArrayList;)V",
        "initView",
        "",
        "savedInstanceState",
        "Landroid/os/Bundle;",
        "onResume",
        "createObserver",
        "getView",
        "items",
        "Lcom/join/kotlin/quark/model/bean/SourceTabItemBean;",
        "defIndex",
        "",
        "setStatus",
        "tab",
        "Lcom/google/android/material/tabs/TabLayout$Tab;",
        "onBackClick",
        "onShareClick",
        "onSearchClick",
        "onSaveClick",
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

.annotation build Lkotlin/jvm/internal/SourceDebugExtension;
    value = {
        "SMAP\nSourceShareActivity.kt\nKotlin\n*S Kotlin\n*F\n+ 1 SourceShareActivity.kt\ncom/join/kotlin/quark/SourceShareActivity\n+ 2 CommonExt.kt\ncom/join/kotlin/base/utils/CommonExtKt\n+ 3 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n+ 4 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,268:1\n29#2,2:269\n32#2,3:273\n29#2,2:276\n32#2,3:281\n1869#3,2:271\n1878#3,3:278\n1#4:284\n*S KotlinDebug\n*F\n+ 1 SourceShareActivity.kt\ncom/join/kotlin/quark/SourceShareActivity\n*L\n104#1:269,2\n104#1:273,3\n126#1:276,2\n126#1:281,3\n108#1:271,2\n128#1:278,3\n*E\n"
    }
.end annotation


# instance fields
.field private adapter:Lcom/join/mgps/adapter/h0;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private extBean:Lcom/join/mgps/dto/ExtBean;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private fragments:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/join/mgps/adapter/h0$a;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private loadSir:Lcom/kingja/loadsir/core/b;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/kingja/loadsir/core/b<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/join/kotlin/base/activity/BaseVmDbActivity;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Ljava/util/ArrayList;

    .line 5
    .line 6
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 7
    .line 8
    .line 9
    iput-object v0, p0, Lcom/join/kotlin/quark/SourceShareActivity;->fragments:Ljava/util/ArrayList;

    .line 10
    .line 11
    return-void
.end method

.method public static final synthetic access$setStatus(Lcom/join/kotlin/quark/SourceShareActivity;Lcom/google/android/material/tabs/TabLayout$g;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/join/kotlin/quark/SourceShareActivity;->setStatus(Lcom/google/android/material/tabs/TabLayout$g;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method private static final createObserver$lambda$17$lambda$16(Lcom/join/kotlin/quark/SourceShareActivity;Lcom/join/kotlin/base/state/ResultState;)Lkotlin/Unit;
    .locals 8

    .line 1
    if-nez p1, :cond_1

    .line 2
    .line 3
    iget-object p0, p0, Lcom/join/kotlin/quark/SourceShareActivity;->loadSir:Lcom/kingja/loadsir/core/b;

    .line 4
    .line 5
    const/4 p1, 0x0

    .line 6
    if-nez p0, :cond_0

    .line 7
    .line 8
    const-string p0, "loadSir"

    .line 9
    .line 10
    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    .line 11
    .line 12
    .line 13
    move-object p0, p1

    .line 14
    :cond_0
    const/4 v0, 0x1

    .line 15
    invoke-static {p0, p1, v0, p1}, Lcom/join/kotlin/base/ext/CustomViewExtKt;->showError$default(Lcom/kingja/loadsir/core/b;Ljava/lang/String;ILjava/lang/Object;)V

    .line 16
    .line 17
    .line 18
    goto :goto_0

    .line 19
    :cond_1
    new-instance v3, Lcom/join/kotlin/quark/m0;

    .line 20
    .line 21
    invoke-direct {v3, p0}, Lcom/join/kotlin/quark/m0;-><init>(Lcom/join/kotlin/quark/SourceShareActivity;)V

    .line 22
    .line 23
    .line 24
    new-instance v4, Lcom/join/kotlin/quark/n0;

    .line 25
    .line 26
    invoke-direct {v4, p0}, Lcom/join/kotlin/quark/n0;-><init>(Lcom/join/kotlin/quark/SourceShareActivity;)V

    .line 27
    .line 28
    .line 29
    const/4 v5, 0x0

    .line 30
    const/16 v6, 0x8

    .line 31
    .line 32
    const/4 v7, 0x0

    .line 33
    move-object v1, p0

    .line 34
    move-object v2, p1

    .line 35
    invoke-static/range {v1 .. v7}, Lcom/join/kotlin/base/ext/BaseViewModelExtKt;->parseState$default(Lcom/join/kotlin/base/activity/BaseVmActivity;Lcom/join/kotlin/base/state/ResultState;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function0;ILjava/lang/Object;)V

    .line 36
    .line 37
    .line 38
    :goto_0
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 39
    .line 40
    return-object p0
.end method

.method private static final createObserver$lambda$17$lambda$16$lambda$14(Lcom/join/kotlin/quark/SourceShareActivity;Lcom/join/kotlin/quark/model/bean/SourceTabListBean;)Lkotlin/Unit;
    .locals 11

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 4
    .line 5
    .line 6
    iget-object v1, p0, Lcom/join/kotlin/quark/SourceShareActivity;->loadSir:Lcom/kingja/loadsir/core/b;

    .line 7
    .line 8
    if-nez v1, :cond_0

    .line 9
    .line 10
    const-string v1, "loadSir"

    .line 11
    .line 12
    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    .line 13
    .line 14
    .line 15
    const/4 v1, 0x0

    .line 16
    :cond_0
    invoke-virtual {v1}, Lcom/kingja/loadsir/core/b;->h()V

    .line 17
    .line 18
    .line 19
    if-eqz p1, :cond_b

    .line 20
    .line 21
    invoke-virtual {p1}, Lcom/join/kotlin/quark/model/bean/SourceTabListBean;->getBanner()Ljava/util/List;

    .line 22
    .line 23
    .line 24
    move-result-object v1

    .line 25
    if-eqz v1, :cond_2

    .line 26
    .line 27
    invoke-virtual {p0}, Lcom/join/kotlin/base/activity/BaseVmActivity;->getMViewModel()Lcom/join/kotlin/base/viewmodel/BaseViewModel;

    .line 28
    .line 29
    .line 30
    move-result-object v2

    .line 31
    check-cast v2, Lcom/join/kotlin/quark/viewmodel/SourceShareViewModel;

    .line 32
    .line 33
    invoke-virtual {v2}, Lcom/join/kotlin/quark/viewmodel/SourceShareViewModel;->getShowBanner()Landroidx/lifecycle/MutableLiveData;

    .line 34
    .line 35
    .line 36
    move-result-object v2

    .line 37
    move-object v3, v1

    .line 38
    check-cast v3, Ljava/util/Collection;

    .line 39
    .line 40
    invoke-interface {v3}, Ljava/util/Collection;->isEmpty()Z

    .line 41
    .line 42
    .line 43
    move-result v3

    .line 44
    xor-int/lit8 v3, v3, 0x1

    .line 45
    .line 46
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 47
    .line 48
    .line 49
    move-result-object v3

    .line 50
    invoke-virtual {v2, v3}, Landroidx/lifecycle/MutableLiveData;->setValue(Ljava/lang/Object;)V

    .line 51
    .line 52
    .line 53
    new-instance v2, Ljava/util/ArrayList;

    .line 54
    .line 55
    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 56
    .line 57
    .line 58
    move-object v3, v1

    .line 59
    check-cast v3, Ljava/lang/Iterable;

    .line 60
    .line 61
    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 62
    .line 63
    .line 64
    move-result-object v3

    .line 65
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    .line 66
    .line 67
    .line 68
    move-result v4

    .line 69
    if-eqz v4, :cond_1

    .line 70
    .line 71
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 72
    .line 73
    .line 74
    move-result-object v4

    .line 75
    check-cast v4, Lcom/join/mgps/dto/CommonGameInfoBean;

    .line 76
    .line 77
    invoke-virtual {v4}, Lcom/join/mgps/dto/CommonGameInfoBean;->getCoverPicUrl()Ljava/lang/String;

    .line 78
    .line 79
    .line 80
    move-result-object v4

    .line 81
    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 82
    .line 83
    .line 84
    goto :goto_0

    .line 85
    :cond_1
    invoke-virtual {p0}, Lcom/join/kotlin/base/activity/BaseVmDbActivity;->getMDatabind()Landroidx/databinding/ViewDataBinding;

    .line 86
    .line 87
    .line 88
    move-result-object v3

    .line 89
    check-cast v3, Lcom/join/android/app/mgsim/wufun/databinding/v4;

    .line 90
    .line 91
    iget-object v3, v3, Lcom/join/android/app/mgsim/wufun/databinding/v4;->d:Lcom/youth/banner/Banner;

    .line 92
    .line 93
    invoke-virtual {v3, v2}, Lcom/youth/banner/Banner;->z(Ljava/util/List;)Lcom/youth/banner/Banner;

    .line 94
    .line 95
    .line 96
    move-result-object v2

    .line 97
    const/16 v3, 0x7d0

    .line 98
    .line 99
    invoke-virtual {v2, v3}, Lcom/youth/banner/Banner;->x(I)Lcom/youth/banner/Banner;

    .line 100
    .line 101
    .line 102
    move-result-object v2

    .line 103
    new-instance v3, Lcom/papa91/arc/view/GlideImageLoader;

    .line 104
    .line 105
    invoke-direct {v3}, Lcom/papa91/arc/view/GlideImageLoader;-><init>()V

    .line 106
    .line 107
    .line 108
    invoke-virtual {v2, v3}, Lcom/youth/banner/Banner;->y(Lcom/youth/banner/loader/ImageLoaderInterface;)Lcom/youth/banner/Banner;

    .line 109
    .line 110
    .line 111
    move-result-object v2

    .line 112
    new-instance v3, Lcom/join/kotlin/quark/o0;

    .line 113
    .line 114
    invoke-direct {v3, p0, v1}, Lcom/join/kotlin/quark/o0;-><init>(Lcom/join/kotlin/quark/SourceShareActivity;Ljava/util/List;)V

    .line 115
    .line 116
    .line 117
    invoke-virtual {v2, v3}, Lcom/youth/banner/Banner;->D(Lya/b;)Lcom/youth/banner/Banner;

    .line 118
    .line 119
    .line 120
    move-result-object v1

    .line 121
    invoke-virtual {v1}, Lcom/youth/banner/Banner;->I()Lcom/youth/banner/Banner;

    .line 122
    .line 123
    .line 124
    goto :goto_1

    .line 125
    :cond_2
    invoke-virtual {p0}, Lcom/join/kotlin/base/activity/BaseVmActivity;->getMViewModel()Lcom/join/kotlin/base/viewmodel/BaseViewModel;

    .line 126
    .line 127
    .line 128
    move-result-object v1

    .line 129
    check-cast v1, Lcom/join/kotlin/quark/viewmodel/SourceShareViewModel;

    .line 130
    .line 131
    invoke-virtual {v1}, Lcom/join/kotlin/quark/viewmodel/SourceShareViewModel;->getShowBanner()Landroidx/lifecycle/MutableLiveData;

    .line 132
    .line 133
    .line 134
    move-result-object v1

    .line 135
    sget-object v2, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 136
    .line 137
    invoke-virtual {v1, v2}, Landroidx/lifecycle/MutableLiveData;->setValue(Ljava/lang/Object;)V

    .line 138
    .line 139
    .line 140
    :goto_1
    iget-object v1, p0, Lcom/join/kotlin/quark/SourceShareActivity;->fragments:Ljava/util/ArrayList;

    .line 141
    .line 142
    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 143
    .line 144
    .line 145
    invoke-virtual {p1}, Lcom/join/kotlin/quark/model/bean/SourceTabListBean;->getTabs()Ljava/util/ArrayList;

    .line 146
    .line 147
    .line 148
    move-result-object v1

    .line 149
    const/4 v2, 0x0

    .line 150
    if-eqz v1, :cond_8

    .line 151
    .line 152
    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 153
    .line 154
    .line 155
    move-result-object v1

    .line 156
    const/4 v3, 0x0

    .line 157
    const/4 v4, 0x0

    .line 158
    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 159
    .line 160
    .line 161
    move-result v5

    .line 162
    if-eqz v5, :cond_7

    .line 163
    .line 164
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 165
    .line 166
    .line 167
    move-result-object v5

    .line 168
    add-int/lit8 v6, v3, 0x1

    .line 169
    .line 170
    if-gez v3, :cond_3

    .line 171
    .line 172
    invoke-static {}, Lkotlin/collections/CollectionsKt;->throwIndexOverflow()V

    .line 173
    .line 174
    .line 175
    :cond_3
    check-cast v5, Lcom/join/kotlin/quark/model/bean/SourceTabItemBean;

    .line 176
    .line 177
    new-instance v7, Lcom/join/kotlin/quark/SourceShareFragment;

    .line 178
    .line 179
    invoke-direct {v7}, Lcom/join/kotlin/quark/SourceShareFragment;-><init>()V

    .line 180
    .line 181
    .line 182
    new-instance v8, Landroid/os/Bundle;

    .line 183
    .line 184
    invoke-direct {v8}, Landroid/os/Bundle;-><init>()V

    .line 185
    .line 186
    .line 187
    if-eqz v5, :cond_4

    .line 188
    .line 189
    invoke-virtual {v5}, Lcom/join/kotlin/quark/model/bean/SourceTabItemBean;->getTab_id()Ljava/lang/Integer;

    .line 190
    .line 191
    .line 192
    move-result-object v9

    .line 193
    if-eqz v9, :cond_4

    .line 194
    .line 195
    invoke-virtual {v9}, Ljava/lang/Number;->intValue()I

    .line 196
    .line 197
    .line 198
    move-result v9

    .line 199
    const-string v10, "_tab_id"

    .line 200
    .line 201
    invoke-virtual {v8, v10, v9}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    .line 202
    .line 203
    .line 204
    invoke-virtual {v7, v8}, Landroidx/fragment/app/Fragment;->setArguments(Landroid/os/Bundle;)V

    .line 205
    .line 206
    .line 207
    new-instance v8, Lcom/join/mgps/adapter/h0$a;

    .line 208
    .line 209
    invoke-virtual {v5}, Lcom/join/kotlin/quark/model/bean/SourceTabItemBean;->getName()Ljava/lang/String;

    .line 210
    .line 211
    .line 212
    move-result-object v9

    .line 213
    invoke-direct {v8, v9, v7}, Lcom/join/mgps/adapter/h0$a;-><init>(Ljava/lang/String;Landroidx/fragment/app/Fragment;)V

    .line 214
    .line 215
    .line 216
    iget-object v7, p0, Lcom/join/kotlin/quark/SourceShareActivity;->fragments:Ljava/util/ArrayList;

    .line 217
    .line 218
    invoke-virtual {v7, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 219
    .line 220
    .line 221
    :cond_4
    if-eqz v5, :cond_5

    .line 222
    .line 223
    invoke-virtual {v5}, Lcom/join/kotlin/quark/model/bean/SourceTabItemBean;->getActive()Ljava/lang/Boolean;

    .line 224
    .line 225
    .line 226
    move-result-object v5

    .line 227
    sget-object v7, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 228
    .line 229
    invoke-static {v5, v7}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 230
    .line 231
    .line 232
    move-result v5

    .line 233
    goto :goto_3

    .line 234
    :cond_5
    const/4 v5, 0x0

    .line 235
    :goto_3
    if-eqz v5, :cond_6

    .line 236
    .line 237
    move v4, v3

    .line 238
    :cond_6
    move v3, v6

    .line 239
    goto :goto_2

    .line 240
    :cond_7
    move v2, v4

    .line 241
    :cond_8
    iget-object v1, p0, Lcom/join/kotlin/quark/SourceShareActivity;->adapter:Lcom/join/mgps/adapter/h0;

    .line 242
    .line 243
    if-eqz v1, :cond_9

    .line 244
    .line 245
    iget-object v3, p0, Lcom/join/kotlin/quark/SourceShareActivity;->fragments:Ljava/util/ArrayList;

    .line 246
    .line 247
    invoke-virtual {v1, v3}, Lcom/join/mgps/adapter/h0;->e(Ljava/util/List;)V

    .line 248
    .line 249
    .line 250
    invoke-virtual {v1}, Landroidx/viewpager/widget/PagerAdapter;->notifyDataSetChanged()V

    .line 251
    .line 252
    .line 253
    :cond_9
    invoke-virtual {p0}, Lcom/join/kotlin/base/activity/BaseVmDbActivity;->getMDatabind()Landroidx/databinding/ViewDataBinding;

    .line 254
    .line 255
    .line 256
    move-result-object v1

    .line 257
    check-cast v1, Lcom/join/android/app/mgsim/wufun/databinding/v4;

    .line 258
    .line 259
    iget-object v1, v1, Lcom/join/android/app/mgsim/wufun/databinding/v4;->p:Landroidx/viewpager/widget/ViewPager;

    .line 260
    .line 261
    invoke-virtual {v1, v2}, Landroidx/viewpager/widget/ViewPager;->setCurrentItem(I)V

    .line 262
    .line 263
    .line 264
    invoke-virtual {p1}, Lcom/join/kotlin/quark/model/bean/SourceTabListBean;->getTabs()Ljava/util/ArrayList;

    .line 265
    .line 266
    .line 267
    move-result-object p1

    .line 268
    if-eqz p1, :cond_a

    .line 269
    .line 270
    invoke-direct {p0, p1, v2}, Lcom/join/kotlin/quark/SourceShareActivity;->getView(Ljava/util/ArrayList;I)V

    .line 271
    .line 272
    .line 273
    :cond_a
    invoke-virtual {p0}, Lcom/join/kotlin/base/activity/BaseVmDbActivity;->getMDatabind()Landroidx/databinding/ViewDataBinding;

    .line 274
    .line 275
    .line 276
    move-result-object p1

    .line 277
    check-cast p1, Lcom/join/android/app/mgsim/wufun/databinding/v4;

    .line 278
    .line 279
    iget-object p1, p1, Lcom/join/android/app/mgsim/wufun/databinding/v4;->m:Lcom/google/android/material/tabs/TabLayout;

    .line 280
    .line 281
    new-instance v1, Lcom/join/kotlin/quark/SourceShareActivity$createObserver$1$1$1$1$7;

    .line 282
    .line 283
    invoke-direct {v1, p0}, Lcom/join/kotlin/quark/SourceShareActivity$createObserver$1$1$1$1$7;-><init>(Lcom/join/kotlin/quark/SourceShareActivity;)V

    .line 284
    .line 285
    .line 286
    invoke-virtual {p1, v1}, Lcom/google/android/material/tabs/TabLayout;->h(Lcom/google/android/material/tabs/TabLayout$d;)V

    .line 287
    .line 288
    .line 289
    invoke-virtual {p0}, Lcom/join/kotlin/base/activity/BaseVmActivity;->getMViewModel()Lcom/join/kotlin/base/viewmodel/BaseViewModel;

    .line 290
    .line 291
    .line 292
    move-result-object p0

    .line 293
    check-cast p0, Lcom/join/kotlin/quark/viewmodel/SourceShareViewModel;

    .line 294
    .line 295
    invoke-virtual {p0, v0}, Lcom/join/kotlin/quark/viewmodel/SourceShareViewModel;->setShowData(Ljava/util/List;)V

    .line 296
    .line 297
    .line 298
    :cond_b
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 299
    .line 300
    return-object p0
.end method

.method private static final createObserver$lambda$17$lambda$16$lambda$14$lambda$13$lambda$5$lambda$4(Lcom/join/kotlin/quark/SourceShareActivity;Ljava/util/List;I)V
    .locals 1

    .line 1
    invoke-static {}, Lcom/join/mgps/Util/IntentUtil;->getInstance()Lcom/join/mgps/Util/IntentUtil;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-interface {p1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 6
    .line 7
    .line 8
    move-result-object p1

    .line 9
    check-cast p1, Lcom/join/mgps/dto/CommonGameInfoBean;

    .line 10
    .line 11
    invoke-virtual {p1}, Lcom/join/mgps/dto/CommonGameInfoBean;->getIntentDataBean()Lcom/join/mgps/Util/IntentDateBean;

    .line 12
    .line 13
    .line 14
    move-result-object p1

    .line 15
    invoke-virtual {v0, p0, p1}, Lcom/join/mgps/Util/IntentUtil;->intentActivity(Landroid/content/Context;Lcom/join/mgps/Util/IntentDateBean;)V

    .line 16
    .line 17
    .line 18
    return-void
.end method

.method private static final createObserver$lambda$17$lambda$16$lambda$15(Lcom/join/kotlin/quark/SourceShareActivity;Lcom/join/kotlin/base/net/AppException;)Lkotlin/Unit;
    .locals 1

    .line 1
    const-string v0, "it"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p1}, Lcom/join/kotlin/base/net/AppException;->getErrorMsg()Ljava/lang/String;

    .line 7
    .line 8
    .line 9
    move-result-object p1

    .line 10
    invoke-static {p1}, Lcom/papa91/arc/ext/ToastManager;->show(Ljava/lang/CharSequence;)V

    .line 11
    .line 12
    .line 13
    iget-object p0, p0, Lcom/join/kotlin/quark/SourceShareActivity;->loadSir:Lcom/kingja/loadsir/core/b;

    .line 14
    .line 15
    const/4 p1, 0x0

    .line 16
    if-nez p0, :cond_0

    .line 17
    .line 18
    const-string p0, "loadSir"

    .line 19
    .line 20
    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    .line 21
    .line 22
    .line 23
    move-object p0, p1

    .line 24
    :cond_0
    const/4 v0, 0x1

    .line 25
    invoke-static {p0, p1, v0, p1}, Lcom/join/kotlin/base/ext/CustomViewExtKt;->showError$default(Lcom/kingja/loadsir/core/b;Ljava/lang/String;ILjava/lang/Object;)V

    .line 26
    .line 27
    .line 28
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 29
    .line 30
    return-object p0
.end method

.method private final getView(Ljava/util/ArrayList;I)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/join/kotlin/quark/model/bean/SourceTabItemBean;",
            ">;I)V"
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lcom/join/kotlin/base/activity/BaseVmDbActivity;->getMDatabind()Landroidx/databinding/ViewDataBinding;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    check-cast v0, Lcom/join/android/app/mgsim/wufun/databinding/v4;

    .line 6
    .line 7
    iget-object v0, v0, Lcom/join/android/app/mgsim/wufun/databinding/v4;->m:Lcom/google/android/material/tabs/TabLayout;

    .line 8
    .line 9
    invoke-virtual {v0}, Lcom/google/android/material/tabs/TabLayout;->getTabCount()I

    .line 10
    .line 11
    .line 12
    move-result v0

    .line 13
    if-nez v0, :cond_0

    .line 14
    .line 15
    return-void

    .line 16
    :cond_0
    invoke-virtual {p0}, Lcom/join/kotlin/base/activity/BaseVmDbActivity;->getMDatabind()Landroidx/databinding/ViewDataBinding;

    .line 17
    .line 18
    .line 19
    move-result-object v0

    .line 20
    check-cast v0, Lcom/join/android/app/mgsim/wufun/databinding/v4;

    .line 21
    .line 22
    iget-object v0, v0, Lcom/join/android/app/mgsim/wufun/databinding/v4;->m:Lcom/google/android/material/tabs/TabLayout;

    .line 23
    .line 24
    invoke-virtual {v0}, Lcom/google/android/material/tabs/TabLayout;->getTabCount()I

    .line 25
    .line 26
    .line 27
    move-result v0

    .line 28
    const/4 v1, 0x0

    .line 29
    const/4 v2, 0x0

    .line 30
    :goto_0
    const-string v3, "null cannot be cast to non-null type android.widget.TextView"

    .line 31
    .line 32
    const v4, 0x7f0a19d3

    .line 33
    .line 34
    .line 35
    const/4 v5, 0x0

    .line 36
    if-ge v2, v0, :cond_3

    .line 37
    .line 38
    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    .line 39
    .line 40
    .line 41
    move-result-object v6

    .line 42
    const v7, 0x7f0d0626

    .line 43
    .line 44
    .line 45
    invoke-virtual {v6, v7, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 46
    .line 47
    .line 48
    move-result-object v6

    .line 49
    const-string v7, "inflate(...)"

    .line 50
    .line 51
    invoke-static {v6, v7}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 52
    .line 53
    .line 54
    invoke-virtual {v6, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 55
    .line 56
    .line 57
    move-result-object v4

    .line 58
    invoke-static {v4, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 59
    .line 60
    .line 61
    check-cast v4, Landroid/widget/TextView;

    .line 62
    .line 63
    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 64
    .line 65
    .line 66
    move-result-object v3

    .line 67
    check-cast v3, Lcom/join/kotlin/quark/model/bean/SourceTabItemBean;

    .line 68
    .line 69
    if-eqz v3, :cond_1

    .line 70
    .line 71
    invoke-virtual {v3}, Lcom/join/kotlin/quark/model/bean/SourceTabItemBean;->getName()Ljava/lang/String;

    .line 72
    .line 73
    .line 74
    move-result-object v5

    .line 75
    :cond_1
    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 76
    .line 77
    .line 78
    invoke-virtual {p0}, Lcom/join/kotlin/base/activity/BaseVmDbActivity;->getMDatabind()Landroidx/databinding/ViewDataBinding;

    .line 79
    .line 80
    .line 81
    move-result-object v3

    .line 82
    check-cast v3, Lcom/join/android/app/mgsim/wufun/databinding/v4;

    .line 83
    .line 84
    iget-object v3, v3, Lcom/join/android/app/mgsim/wufun/databinding/v4;->m:Lcom/google/android/material/tabs/TabLayout;

    .line 85
    .line 86
    invoke-virtual {v3, v2}, Lcom/google/android/material/tabs/TabLayout;->D(I)Lcom/google/android/material/tabs/TabLayout$g;

    .line 87
    .line 88
    .line 89
    move-result-object v3

    .line 90
    if-eqz v3, :cond_2

    .line 91
    .line 92
    invoke-virtual {v3, v6}, Lcom/google/android/material/tabs/TabLayout$g;->v(Landroid/view/View;)Lcom/google/android/material/tabs/TabLayout$g;

    .line 93
    .line 94
    .line 95
    :cond_2
    add-int/lit8 v2, v2, 0x1

    .line 96
    .line 97
    goto :goto_0

    .line 98
    :cond_3
    invoke-virtual {p0}, Lcom/join/kotlin/base/activity/BaseVmDbActivity;->getMDatabind()Landroidx/databinding/ViewDataBinding;

    .line 99
    .line 100
    .line 101
    move-result-object p1

    .line 102
    check-cast p1, Lcom/join/android/app/mgsim/wufun/databinding/v4;

    .line 103
    .line 104
    iget-object p1, p1, Lcom/join/android/app/mgsim/wufun/databinding/v4;->m:Lcom/google/android/material/tabs/TabLayout;

    .line 105
    .line 106
    invoke-virtual {p1, p2}, Lcom/google/android/material/tabs/TabLayout;->D(I)Lcom/google/android/material/tabs/TabLayout$g;

    .line 107
    .line 108
    .line 109
    move-result-object p1

    .line 110
    if-eqz p1, :cond_4

    .line 111
    .line 112
    invoke-virtual {p1}, Lcom/google/android/material/tabs/TabLayout$g;->g()Landroid/view/View;

    .line 113
    .line 114
    .line 115
    move-result-object p1

    .line 116
    if-eqz p1, :cond_4

    .line 117
    .line 118
    invoke-virtual {p1, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 119
    .line 120
    .line 121
    move-result-object v5

    .line 122
    :cond_4
    invoke-static {v5, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 123
    .line 124
    .line 125
    check-cast v5, Landroid/widget/TextView;

    .line 126
    .line 127
    const/high16 p1, -0x1000000

    .line 128
    .line 129
    invoke-virtual {v5, p1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 130
    .line 131
    .line 132
    invoke-virtual {p0}, Landroidx/appcompat/app/AppCompatActivity;->getResources()Landroid/content/res/Resources;

    .line 133
    .line 134
    .line 135
    move-result-object p1

    .line 136
    const v0, 0x7f0713c2

    .line 137
    .line 138
    .line 139
    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    .line 140
    .line 141
    .line 142
    move-result p1

    .line 143
    int-to-float p1, p1

    .line 144
    invoke-virtual {v5, v1, p1}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 145
    .line 146
    .line 147
    invoke-virtual {v5}, Landroid/widget/TextView;->getTypeface()Landroid/graphics/Typeface;

    .line 148
    .line 149
    .line 150
    move-result-object p1

    .line 151
    const/4 v0, 0x1

    .line 152
    invoke-virtual {v5, p1, v0}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;I)V

    .line 153
    .line 154
    .line 155
    invoke-virtual {p0}, Lcom/join/kotlin/base/activity/BaseVmDbActivity;->getMDatabind()Landroidx/databinding/ViewDataBinding;

    .line 156
    .line 157
    .line 158
    move-result-object p1

    .line 159
    check-cast p1, Lcom/join/android/app/mgsim/wufun/databinding/v4;

    .line 160
    .line 161
    iget-object p1, p1, Lcom/join/android/app/mgsim/wufun/databinding/v4;->m:Lcom/google/android/material/tabs/TabLayout;

    .line 162
    .line 163
    invoke-virtual {p1, p2}, Lcom/google/android/material/tabs/TabLayout;->D(I)Lcom/google/android/material/tabs/TabLayout$g;

    .line 164
    .line 165
    .line 166
    move-result-object p1

    .line 167
    if-eqz p1, :cond_5

    .line 168
    .line 169
    invoke-virtual {p1}, Lcom/google/android/material/tabs/TabLayout$g;->g()Landroid/view/View;

    .line 170
    .line 171
    .line 172
    move-result-object p1

    .line 173
    if-eqz p1, :cond_5

    .line 174
    .line 175
    const p2, 0x7f0a0a4a

    .line 176
    .line 177
    .line 178
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 179
    .line 180
    .line 181
    move-result-object p1

    .line 182
    if-eqz p1, :cond_5

    .line 183
    .line 184
    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    .line 185
    .line 186
    .line 187
    :cond_5
    return-void
.end method

.method static synthetic getView$default(Lcom/join/kotlin/quark/SourceShareActivity;Ljava/util/ArrayList;IILjava/lang/Object;)V
    .locals 0

    .line 1
    and-int/lit8 p3, p3, 0x2

    .line 2
    .line 3
    if-eqz p3, :cond_0

    .line 4
    .line 5
    const/4 p2, 0x0

    .line 6
    :cond_0
    invoke-direct {p0, p1, p2}, Lcom/join/kotlin/quark/SourceShareActivity;->getView(Ljava/util/ArrayList;I)V

    .line 7
    .line 8
    .line 9
    return-void
.end method

.method private static final initView$lambda$1(Lcom/join/kotlin/quark/SourceShareActivity;)Lkotlin/Unit;
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/join/kotlin/base/activity/BaseVmActivity;->getMViewModel()Lcom/join/kotlin/base/viewmodel/BaseViewModel;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    check-cast v0, Lcom/join/kotlin/quark/viewmodel/SourceShareViewModel;

    .line 6
    .line 7
    invoke-static {p0}, Lcom/join/mgps/Util/AccountUtil_;->getInstance_(Landroid/content/Context;)Lcom/join/mgps/Util/AccountUtil_;

    .line 8
    .line 9
    .line 10
    move-result-object p0

    .line 11
    invoke-virtual {p0}, Lcom/join/mgps/Util/b;->getUid()Ljava/lang/String;

    .line 12
    .line 13
    .line 14
    move-result-object p0

    .line 15
    const-string v1, "getUid(...)"

    .line 16
    .line 17
    invoke-static {p0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 18
    .line 19
    .line 20
    invoke-virtual {v0, p0}, Lcom/join/kotlin/quark/viewmodel/SourceShareViewModel;->getWebDiskHome(Ljava/lang/String;)V

    .line 21
    .line 22
    .line 23
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 24
    .line 25
    return-object p0
.end method

.method private static final initView$lambda$2(Lcom/join/kotlin/quark/SourceShareActivity;Landroid/view/View;ILandroid/view/KeyEvent;)Z
    .locals 0

    .line 1
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    const-string p3, "null cannot be cast to non-null type android.app.Activity"

    .line 6
    .line 7
    invoke-static {p1, p3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 8
    .line 9
    .line 10
    check-cast p1, Landroid/app/Activity;

    .line 11
    .line 12
    const/16 p3, 0x42

    .line 13
    .line 14
    if-ne p2, p3, :cond_0

    .line 15
    .line 16
    const-string p2, "input_method"

    .line 17
    .line 18
    invoke-virtual {p0, p2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 19
    .line 20
    .line 21
    move-result-object p2

    .line 22
    const-string p3, "null cannot be cast to non-null type android.view.inputmethod.InputMethodManager"

    .line 23
    .line 24
    invoke-static {p2, p3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 25
    .line 26
    .line 27
    check-cast p2, Landroid/view/inputmethod/InputMethodManager;

    .line 28
    .line 29
    invoke-virtual {p1}, Landroid/app/Activity;->getCurrentFocus()Landroid/view/View;

    .line 30
    .line 31
    .line 32
    move-result-object p1

    .line 33
    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 34
    .line 35
    .line 36
    invoke-virtual {p1}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    .line 37
    .line 38
    .line 39
    move-result-object p1

    .line 40
    const/4 p3, 0x2

    .line 41
    invoke-virtual {p2, p1, p3}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    .line 42
    .line 43
    .line 44
    invoke-virtual {p0}, Lcom/join/kotlin/quark/SourceShareActivity;->onSearchClick()V

    .line 45
    .line 46
    .line 47
    :cond_0
    const/4 p0, 0x0

    .line 48
    return p0
.end method

.method public static synthetic j(Lcom/join/kotlin/quark/SourceShareActivity;Lcom/join/kotlin/base/net/AppException;)Lkotlin/Unit;
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lcom/join/kotlin/quark/SourceShareActivity;->createObserver$lambda$17$lambda$16$lambda$15(Lcom/join/kotlin/quark/SourceShareActivity;Lcom/join/kotlin/base/net/AppException;)Lkotlin/Unit;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic k(Lcom/join/kotlin/quark/SourceShareActivity;Landroid/view/View;ILandroid/view/KeyEvent;)Z
    .locals 0

    .line 1
    invoke-static {p0, p1, p2, p3}, Lcom/join/kotlin/quark/SourceShareActivity;->initView$lambda$2(Lcom/join/kotlin/quark/SourceShareActivity;Landroid/view/View;ILandroid/view/KeyEvent;)Z

    move-result p0

    return p0
.end method

.method public static synthetic l(Lcom/join/kotlin/quark/SourceShareActivity;)Lkotlin/Unit;
    .locals 0

    .line 1
    invoke-static {p0}, Lcom/join/kotlin/quark/SourceShareActivity;->initView$lambda$1(Lcom/join/kotlin/quark/SourceShareActivity;)Lkotlin/Unit;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic m(Lcom/join/kotlin/quark/SourceShareActivity;Ljava/util/List;I)V
    .locals 0

    .line 1
    invoke-static {p0, p1, p2}, Lcom/join/kotlin/quark/SourceShareActivity;->createObserver$lambda$17$lambda$16$lambda$14$lambda$13$lambda$5$lambda$4(Lcom/join/kotlin/quark/SourceShareActivity;Ljava/util/List;I)V

    return-void
.end method

.method public static synthetic n(Lcom/join/kotlin/quark/SourceShareActivity;Lcom/join/kotlin/base/state/ResultState;)Lkotlin/Unit;
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lcom/join/kotlin/quark/SourceShareActivity;->createObserver$lambda$17$lambda$16(Lcom/join/kotlin/quark/SourceShareActivity;Lcom/join/kotlin/base/state/ResultState;)Lkotlin/Unit;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic o(Lcom/join/kotlin/quark/SourceShareActivity;Lcom/join/kotlin/quark/model/bean/SourceTabListBean;)Lkotlin/Unit;
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lcom/join/kotlin/quark/SourceShareActivity;->createObserver$lambda$17$lambda$16$lambda$14(Lcom/join/kotlin/quark/SourceShareActivity;Lcom/join/kotlin/quark/model/bean/SourceTabListBean;)Lkotlin/Unit;

    move-result-object p0

    return-object p0
.end method

.method private final setStatus(Lcom/google/android/material/tabs/TabLayout$g;)V
    .locals 8

    .line 1
    invoke-virtual {p0}, Lcom/join/kotlin/base/activity/BaseVmDbActivity;->getMDatabind()Landroidx/databinding/ViewDataBinding;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    check-cast v0, Lcom/join/android/app/mgsim/wufun/databinding/v4;

    .line 6
    .line 7
    iget-object v0, v0, Lcom/join/android/app/mgsim/wufun/databinding/v4;->m:Lcom/google/android/material/tabs/TabLayout;

    .line 8
    .line 9
    invoke-virtual {v0}, Lcom/google/android/material/tabs/TabLayout;->getTabCount()I

    .line 10
    .line 11
    .line 12
    move-result v0

    .line 13
    if-nez v0, :cond_0

    .line 14
    .line 15
    return-void

    .line 16
    :cond_0
    invoke-virtual {p0}, Lcom/join/kotlin/base/activity/BaseVmDbActivity;->getMDatabind()Landroidx/databinding/ViewDataBinding;

    .line 17
    .line 18
    .line 19
    move-result-object v0

    .line 20
    check-cast v0, Lcom/join/android/app/mgsim/wufun/databinding/v4;

    .line 21
    .line 22
    iget-object v0, v0, Lcom/join/android/app/mgsim/wufun/databinding/v4;->m:Lcom/google/android/material/tabs/TabLayout;

    .line 23
    .line 24
    invoke-virtual {v0}, Lcom/google/android/material/tabs/TabLayout;->getTabCount()I

    .line 25
    .line 26
    .line 27
    move-result v0

    .line 28
    const/4 v1, 0x0

    .line 29
    const/4 v2, 0x0

    .line 30
    :goto_0
    if-ge v2, v0, :cond_4

    .line 31
    .line 32
    invoke-virtual {p0}, Lcom/join/kotlin/base/activity/BaseVmDbActivity;->getMDatabind()Landroidx/databinding/ViewDataBinding;

    .line 33
    .line 34
    .line 35
    move-result-object v3

    .line 36
    check-cast v3, Lcom/join/android/app/mgsim/wufun/databinding/v4;

    .line 37
    .line 38
    iget-object v3, v3, Lcom/join/android/app/mgsim/wufun/databinding/v4;->m:Lcom/google/android/material/tabs/TabLayout;

    .line 39
    .line 40
    invoke-virtual {v3, v2}, Lcom/google/android/material/tabs/TabLayout;->D(I)Lcom/google/android/material/tabs/TabLayout$g;

    .line 41
    .line 42
    .line 43
    move-result-object v3

    .line 44
    if-eqz v3, :cond_3

    .line 45
    .line 46
    invoke-virtual {v3}, Lcom/google/android/material/tabs/TabLayout$g;->g()Landroid/view/View;

    .line 47
    .line 48
    .line 49
    move-result-object v3

    .line 50
    if-nez v3, :cond_1

    .line 51
    .line 52
    goto :goto_1

    .line 53
    :cond_1
    invoke-virtual {p1}, Lcom/google/android/material/tabs/TabLayout$g;->k()I

    .line 54
    .line 55
    .line 56
    move-result v4

    .line 57
    const-string v5, "null cannot be cast to non-null type android.widget.TextView"

    .line 58
    .line 59
    const v6, 0x7f0a19d3

    .line 60
    .line 61
    .line 62
    const v7, 0x7f0a0a4a

    .line 63
    .line 64
    .line 65
    if-ne v2, v4, :cond_2

    .line 66
    .line 67
    invoke-virtual {v3, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 68
    .line 69
    .line 70
    move-result-object v4

    .line 71
    invoke-virtual {v4, v1}, Landroid/view/View;->setVisibility(I)V

    .line 72
    .line 73
    .line 74
    invoke-virtual {v3, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 75
    .line 76
    .line 77
    move-result-object v3

    .line 78
    invoke-static {v3, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 79
    .line 80
    .line 81
    check-cast v3, Landroid/widget/TextView;

    .line 82
    .line 83
    const/high16 v4, -0x1000000

    .line 84
    .line 85
    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setTextColor(I)V

    .line 86
    .line 87
    .line 88
    invoke-virtual {v3}, Landroid/widget/TextView;->getTypeface()Landroid/graphics/Typeface;

    .line 89
    .line 90
    .line 91
    move-result-object v4

    .line 92
    const/4 v5, 0x1

    .line 93
    invoke-virtual {v3, v4, v5}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;I)V

    .line 94
    .line 95
    .line 96
    invoke-virtual {p0}, Landroidx/appcompat/app/AppCompatActivity;->getResources()Landroid/content/res/Resources;

    .line 97
    .line 98
    .line 99
    move-result-object v4

    .line 100
    const v5, 0x7f0713c2

    .line 101
    .line 102
    .line 103
    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    .line 104
    .line 105
    .line 106
    move-result v4

    .line 107
    int-to-float v4, v4

    .line 108
    invoke-virtual {v3, v1, v4}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 109
    .line 110
    .line 111
    goto :goto_1

    .line 112
    :cond_2
    invoke-virtual {v3, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 113
    .line 114
    .line 115
    move-result-object v4

    .line 116
    const/4 v7, 0x4

    .line 117
    invoke-virtual {v4, v7}, Landroid/view/View;->setVisibility(I)V

    .line 118
    .line 119
    .line 120
    invoke-virtual {v3, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 121
    .line 122
    .line 123
    move-result-object v3

    .line 124
    invoke-static {v3, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 125
    .line 126
    .line 127
    check-cast v3, Landroid/widget/TextView;

    .line 128
    .line 129
    const-string v4, "#000000"

    .line 130
    .line 131
    invoke-static {v4}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    .line 132
    .line 133
    .line 134
    move-result v4

    .line 135
    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setTextColor(I)V

    .line 136
    .line 137
    .line 138
    invoke-virtual {v3}, Landroid/widget/TextView;->getTypeface()Landroid/graphics/Typeface;

    .line 139
    .line 140
    .line 141
    move-result-object v4

    .line 142
    invoke-virtual {v3, v4, v1}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;I)V

    .line 143
    .line 144
    .line 145
    invoke-virtual {p0}, Landroidx/appcompat/app/AppCompatActivity;->getResources()Landroid/content/res/Resources;

    .line 146
    .line 147
    .line 148
    move-result-object v4

    .line 149
    const v5, 0x7f071395

    .line 150
    .line 151
    .line 152
    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    .line 153
    .line 154
    .line 155
    move-result v4

    .line 156
    int-to-float v4, v4

    .line 157
    invoke-virtual {v3, v1, v4}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 158
    .line 159
    .line 160
    :cond_3
    :goto_1
    add-int/lit8 v2, v2, 0x1

    .line 161
    .line 162
    goto/16 :goto_0

    .line 163
    .line 164
    :cond_4
    return-void
.end method


# virtual methods
.method public createObserver()V
    .locals 3

    .line 1
    invoke-virtual {p0}, Lcom/join/kotlin/base/activity/BaseVmActivity;->getMViewModel()Lcom/join/kotlin/base/viewmodel/BaseViewModel;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    check-cast v0, Lcom/join/kotlin/quark/viewmodel/SourceShareViewModel;

    .line 6
    .line 7
    invoke-virtual {v0}, Lcom/join/kotlin/quark/viewmodel/SourceShareViewModel;->getHomeData()Landroidx/lifecycle/MutableLiveData;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    new-instance v1, Lcom/join/kotlin/quark/l0;

    .line 12
    .line 13
    invoke-direct {v1, p0}, Lcom/join/kotlin/quark/l0;-><init>(Lcom/join/kotlin/quark/SourceShareActivity;)V

    .line 14
    .line 15
    .line 16
    new-instance v2, Lcom/join/kotlin/quark/SourceShareActivity$sam$androidx_lifecycle_Observer$0;

    .line 17
    .line 18
    invoke-direct {v2, v1}, Lcom/join/kotlin/quark/SourceShareActivity$sam$androidx_lifecycle_Observer$0;-><init>(Lkotlin/jvm/functions/Function1;)V

    .line 19
    .line 20
    .line 21
    invoke-virtual {v0, p0, v2}, Landroidx/lifecycle/LiveData;->observe(Landroidx/lifecycle/LifecycleOwner;Landroidx/lifecycle/Observer;)V

    .line 22
    .line 23
    .line 24
    return-void
.end method

.method public final getAdapter()Lcom/join/mgps/adapter/h0;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/kotlin/quark/SourceShareActivity;->adapter:Lcom/join/mgps/adapter/h0;

    .line 2
    .line 3
    return-object v0
.end method

.method public final getExtBean()Lcom/join/mgps/dto/ExtBean;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/kotlin/quark/SourceShareActivity;->extBean:Lcom/join/mgps/dto/ExtBean;

    .line 2
    .line 3
    return-object v0
.end method

.method public final getFragments()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Lcom/join/mgps/adapter/h0$a;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/kotlin/quark/SourceShareActivity;->fragments:Ljava/util/ArrayList;

    .line 2
    .line 3
    return-object v0
.end method

.method public initView(Landroid/os/Bundle;)V
    .locals 3
    .param p1    # Landroid/os/Bundle;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    if-eqz p1, :cond_0

    .line 6
    .line 7
    iget-object p1, p0, Lcom/join/kotlin/quark/SourceShareActivity;->extBean:Lcom/join/mgps/dto/ExtBean;

    .line 8
    .line 9
    if-eqz p1, :cond_0

    .line 10
    .line 11
    invoke-static {p0}, Lcom/papa/sim/statistic/t;->l(Landroid/content/Context;)Lcom/papa/sim/statistic/t;

    .line 12
    .line 13
    .line 14
    move-result-object p1

    .line 15
    sget-object v0, Lcom/papa/sim/statistic/Event;->visitPCPageZone:Lcom/papa/sim/statistic/Event;

    .line 16
    .line 17
    new-instance v1, Lcom/papa/sim/statistic/Ext;

    .line 18
    .line 19
    invoke-direct {v1}, Lcom/papa/sim/statistic/Ext;-><init>()V

    .line 20
    .line 21
    .line 22
    iget-object v2, p0, Lcom/join/kotlin/quark/SourceShareActivity;->extBean:Lcom/join/mgps/dto/ExtBean;

    .line 23
    .line 24
    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 25
    .line 26
    .line 27
    invoke-virtual {v2}, Lcom/join/mgps/dto/ExtBean;->getFrom()Ljava/lang/String;

    .line 28
    .line 29
    .line 30
    move-result-object v2

    .line 31
    invoke-virtual {v1, v2}, Lcom/papa/sim/statistic/Ext;->setFrom(Ljava/lang/String;)Lcom/papa/sim/statistic/Ext;

    .line 32
    .line 33
    .line 34
    move-result-object v1

    .line 35
    invoke-virtual {p1, v0, v1}, Lcom/papa/sim/statistic/t;->R1(Lcom/papa/sim/statistic/Event;Lcom/papa/sim/statistic/Ext;)V

    .line 36
    .line 37
    .line 38
    :cond_0
    new-instance p1, Lcom/join/mgps/adapter/h0;

    .line 39
    .line 40
    invoke-virtual {p0}, Landroidx/fragment/app/FragmentActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    .line 41
    .line 42
    .line 43
    move-result-object v0

    .line 44
    invoke-direct {p1, v0}, Lcom/join/mgps/adapter/h0;-><init>(Landroidx/fragment/app/FragmentManager;)V

    .line 45
    .line 46
    .line 47
    iput-object p1, p0, Lcom/join/kotlin/quark/SourceShareActivity;->adapter:Lcom/join/mgps/adapter/h0;

    .line 48
    .line 49
    invoke-virtual {p0}, Lcom/join/kotlin/base/activity/BaseVmDbActivity;->getMDatabind()Landroidx/databinding/ViewDataBinding;

    .line 50
    .line 51
    .line 52
    move-result-object p1

    .line 53
    check-cast p1, Lcom/join/android/app/mgsim/wufun/databinding/v4;

    .line 54
    .line 55
    iget-object p1, p1, Lcom/join/android/app/mgsim/wufun/databinding/v4;->p:Landroidx/viewpager/widget/ViewPager;

    .line 56
    .line 57
    iget-object v0, p0, Lcom/join/kotlin/quark/SourceShareActivity;->adapter:Lcom/join/mgps/adapter/h0;

    .line 58
    .line 59
    invoke-virtual {p1, v0}, Landroidx/viewpager/widget/ViewPager;->setAdapter(Landroidx/viewpager/widget/PagerAdapter;)V

    .line 60
    .line 61
    .line 62
    invoke-virtual {p0}, Lcom/join/kotlin/base/activity/BaseVmDbActivity;->getMDatabind()Landroidx/databinding/ViewDataBinding;

    .line 63
    .line 64
    .line 65
    move-result-object p1

    .line 66
    check-cast p1, Lcom/join/android/app/mgsim/wufun/databinding/v4;

    .line 67
    .line 68
    iget-object p1, p1, Lcom/join/android/app/mgsim/wufun/databinding/v4;->m:Lcom/google/android/material/tabs/TabLayout;

    .line 69
    .line 70
    invoke-virtual {p0}, Lcom/join/kotlin/base/activity/BaseVmDbActivity;->getMDatabind()Landroidx/databinding/ViewDataBinding;

    .line 71
    .line 72
    .line 73
    move-result-object v0

    .line 74
    check-cast v0, Lcom/join/android/app/mgsim/wufun/databinding/v4;

    .line 75
    .line 76
    iget-object v0, v0, Lcom/join/android/app/mgsim/wufun/databinding/v4;->p:Landroidx/viewpager/widget/ViewPager;

    .line 77
    .line 78
    invoke-virtual {p1, v0}, Lcom/google/android/material/tabs/TabLayout;->setupWithViewPager(Landroidx/viewpager/widget/ViewPager;)V

    .line 79
    .line 80
    .line 81
    invoke-virtual {p0}, Lcom/join/kotlin/base/activity/BaseVmDbActivity;->getMDatabind()Landroidx/databinding/ViewDataBinding;

    .line 82
    .line 83
    .line 84
    move-result-object p1

    .line 85
    check-cast p1, Lcom/join/android/app/mgsim/wufun/databinding/v4;

    .line 86
    .line 87
    invoke-virtual {p0}, Lcom/join/kotlin/base/activity/BaseVmActivity;->getMViewModel()Lcom/join/kotlin/base/viewmodel/BaseViewModel;

    .line 88
    .line 89
    .line 90
    move-result-object v0

    .line 91
    check-cast v0, Lcom/join/kotlin/quark/viewmodel/SourceShareViewModel;

    .line 92
    .line 93
    invoke-virtual {p1, v0}, Lcom/join/android/app/mgsim/wufun/databinding/v4;->u(Lcom/join/kotlin/quark/viewmodel/SourceShareViewModel;)V

    .line 94
    .line 95
    .line 96
    invoke-virtual {p0}, Lcom/join/kotlin/base/activity/BaseVmDbActivity;->getMDatabind()Landroidx/databinding/ViewDataBinding;

    .line 97
    .line 98
    .line 99
    move-result-object p1

    .line 100
    check-cast p1, Lcom/join/android/app/mgsim/wufun/databinding/v4;

    .line 101
    .line 102
    invoke-virtual {p1, p0}, Lcom/join/android/app/mgsim/wufun/databinding/v4;->t(Lcom/join/kotlin/quark/proxy/SourceShareClickProxy;)V

    .line 103
    .line 104
    .line 105
    invoke-virtual {p0}, Lcom/join/kotlin/base/activity/BaseVmActivity;->getMViewModel()Lcom/join/kotlin/base/viewmodel/BaseViewModel;

    .line 106
    .line 107
    .line 108
    move-result-object p1

    .line 109
    check-cast p1, Lcom/join/kotlin/quark/viewmodel/SourceShareViewModel;

    .line 110
    .line 111
    invoke-static {p0}, Lcom/join/mgps/Util/AccountUtil_;->getInstance_(Landroid/content/Context;)Lcom/join/mgps/Util/AccountUtil_;

    .line 112
    .line 113
    .line 114
    move-result-object v0

    .line 115
    invoke-virtual {v0}, Lcom/join/mgps/Util/b;->getUid()Ljava/lang/String;

    .line 116
    .line 117
    .line 118
    move-result-object v0

    .line 119
    const-string v1, "getUid(...)"

    .line 120
    .line 121
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 122
    .line 123
    .line 124
    invoke-virtual {p1, v0}, Lcom/join/kotlin/quark/viewmodel/SourceShareViewModel;->getWebDiskHome(Ljava/lang/String;)V

    .line 125
    .line 126
    .line 127
    invoke-virtual {p0}, Lcom/join/kotlin/base/activity/BaseVmDbActivity;->getMDatabind()Landroidx/databinding/ViewDataBinding;

    .line 128
    .line 129
    .line 130
    move-result-object p1

    .line 131
    check-cast p1, Lcom/join/android/app/mgsim/wufun/databinding/v4;

    .line 132
    .line 133
    iget-object p1, p1, Lcom/join/android/app/mgsim/wufun/databinding/v4;->j:Landroidx/coordinatorlayout/widget/CoordinatorLayout;

    .line 134
    .line 135
    const-string v0, "mainContent"

    .line 136
    .line 137
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 138
    .line 139
    .line 140
    new-instance v0, Lcom/join/kotlin/quark/j0;

    .line 141
    .line 142
    invoke-direct {v0, p0}, Lcom/join/kotlin/quark/j0;-><init>(Lcom/join/kotlin/quark/SourceShareActivity;)V

    .line 143
    .line 144
    .line 145
    invoke-static {p1, v0}, Lcom/join/kotlin/base/ext/CustomViewExtKt;->loadServiceInit(Landroid/view/View;Lkotlin/jvm/functions/Function0;)Lcom/kingja/loadsir/core/b;

    .line 146
    .line 147
    .line 148
    move-result-object p1

    .line 149
    iput-object p1, p0, Lcom/join/kotlin/quark/SourceShareActivity;->loadSir:Lcom/kingja/loadsir/core/b;

    .line 150
    .line 151
    invoke-static {p0}, Lcom/papa/sim/statistic/t;->l(Landroid/content/Context;)Lcom/papa/sim/statistic/t;

    .line 152
    .line 153
    .line 154
    move-result-object p1

    .line 155
    sget-object v0, Lcom/papa/sim/statistic/Event;->clickSourceZone:Lcom/papa/sim/statistic/Event;

    .line 156
    .line 157
    new-instance v1, Lcom/papa/sim/statistic/Ext;

    .line 158
    .line 159
    invoke-direct {v1}, Lcom/papa/sim/statistic/Ext;-><init>()V

    .line 160
    .line 161
    .line 162
    invoke-virtual {p1, v0, v1}, Lcom/papa/sim/statistic/t;->R1(Lcom/papa/sim/statistic/Event;Lcom/papa/sim/statistic/Ext;)V

    .line 163
    .line 164
    .line 165
    invoke-virtual {p0}, Lcom/join/kotlin/base/activity/BaseVmDbActivity;->getMDatabind()Landroidx/databinding/ViewDataBinding;

    .line 166
    .line 167
    .line 168
    move-result-object p1

    .line 169
    check-cast p1, Lcom/join/android/app/mgsim/wufun/databinding/v4;

    .line 170
    .line 171
    iget-object p1, p1, Lcom/join/android/app/mgsim/wufun/databinding/v4;->l:Landroid/widget/EditText;

    .line 172
    .line 173
    new-instance v0, Lcom/join/kotlin/quark/k0;

    .line 174
    .line 175
    invoke-direct {v0, p0}, Lcom/join/kotlin/quark/k0;-><init>(Lcom/join/kotlin/quark/SourceShareActivity;)V

    .line 176
    .line 177
    .line 178
    invoke-virtual {p1, v0}, Landroid/view/View;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    .line 179
    .line 180
    .line 181
    return-void
.end method

.method public onBackClick()V
    .locals 0

    .line 1
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    .line 2
    .line 3
    .line 4
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

.method public onSaveClick()V
    .locals 0

    return-void
.end method

.method public onSearchClick()V
    .locals 4

    .line 1
    invoke-virtual {p0}, Lcom/join/kotlin/base/activity/BaseVmActivity;->getMViewModel()Lcom/join/kotlin/base/viewmodel/BaseViewModel;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    check-cast v0, Lcom/join/kotlin/quark/viewmodel/SourceShareViewModel;

    .line 6
    .line 7
    invoke-virtual {v0}, Lcom/join/kotlin/quark/viewmodel/SourceShareViewModel;->getSearchKeyword()Landroidx/lifecycle/MutableLiveData;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    invoke-virtual {v0}, Landroidx/lifecycle/LiveData;->getValue()Ljava/lang/Object;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    check-cast v0, Ljava/lang/String;

    .line 16
    .line 17
    invoke-static {v0}, Lcom/join/mgps/Util/t2;->i(Ljava/lang/String;)Z

    .line 18
    .line 19
    .line 20
    move-result v0

    .line 21
    if-eqz v0, :cond_2

    .line 22
    .line 23
    new-instance v0, Landroid/content/Intent;

    .line 24
    .line 25
    const-class v1, Lcom/join/kotlin/quark/QuarkSearchResultActivity;

    .line 26
    .line 27
    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 28
    .line 29
    .line 30
    invoke-virtual {p0}, Lcom/join/kotlin/base/activity/BaseVmActivity;->getMViewModel()Lcom/join/kotlin/base/viewmodel/BaseViewModel;

    .line 31
    .line 32
    .line 33
    move-result-object v1

    .line 34
    check-cast v1, Lcom/join/kotlin/quark/viewmodel/SourceShareViewModel;

    .line 35
    .line 36
    invoke-virtual {v1}, Lcom/join/kotlin/quark/viewmodel/SourceShareViewModel;->getSearchKeyword()Landroidx/lifecycle/MutableLiveData;

    .line 37
    .line 38
    .line 39
    move-result-object v1

    .line 40
    const/4 v2, 0x0

    .line 41
    if-eqz v1, :cond_0

    .line 42
    .line 43
    invoke-virtual {v1}, Landroidx/lifecycle/LiveData;->getValue()Ljava/lang/Object;

    .line 44
    .line 45
    .line 46
    move-result-object v1

    .line 47
    check-cast v1, Ljava/lang/String;

    .line 48
    .line 49
    goto :goto_0

    .line 50
    :cond_0
    move-object v1, v2

    .line 51
    :goto_0
    const-string v3, "_keyword"

    .line 52
    .line 53
    invoke-virtual {v0, v3, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 54
    .line 55
    .line 56
    invoke-virtual {p0}, Lcom/join/kotlin/base/activity/BaseVmActivity;->getMViewModel()Lcom/join/kotlin/base/viewmodel/BaseViewModel;

    .line 57
    .line 58
    .line 59
    move-result-object v1

    .line 60
    check-cast v1, Lcom/join/kotlin/quark/viewmodel/SourceShareViewModel;

    .line 61
    .line 62
    invoke-virtual {v1}, Lcom/join/kotlin/quark/viewmodel/SourceShareViewModel;->getSearchKeyword()Landroidx/lifecycle/MutableLiveData;

    .line 63
    .line 64
    .line 65
    move-result-object v1

    .line 66
    if-eqz v1, :cond_1

    .line 67
    .line 68
    invoke-virtual {v1}, Landroidx/lifecycle/LiveData;->getValue()Ljava/lang/Object;

    .line 69
    .line 70
    .line 71
    move-result-object v1

    .line 72
    move-object v2, v1

    .line 73
    check-cast v2, Ljava/lang/String;

    .line 74
    .line 75
    :cond_1
    const-string v1, "_tab_id"

    .line 76
    .line 77
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 78
    .line 79
    .line 80
    invoke-virtual {p0, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 81
    .line 82
    .line 83
    invoke-static {p0}, Lcom/papa/sim/statistic/t;->l(Landroid/content/Context;)Lcom/papa/sim/statistic/t;

    .line 84
    .line 85
    .line 86
    move-result-object v0

    .line 87
    sget-object v1, Lcom/papa/sim/statistic/Event;->clickSearchBtn:Lcom/papa/sim/statistic/Event;

    .line 88
    .line 89
    new-instance v2, Lcom/papa/sim/statistic/Ext;

    .line 90
    .line 91
    invoke-direct {v2}, Lcom/papa/sim/statistic/Ext;-><init>()V

    .line 92
    .line 93
    .line 94
    invoke-virtual {v0, v1, v2}, Lcom/papa/sim/statistic/t;->R1(Lcom/papa/sim/statistic/Event;Lcom/papa/sim/statistic/Ext;)V

    .line 95
    .line 96
    .line 97
    goto :goto_1

    .line 98
    :cond_2
    invoke-virtual {p0}, Lcom/join/kotlin/base/activity/BaseVmDbActivity;->getMDatabind()Landroidx/databinding/ViewDataBinding;

    .line 99
    .line 100
    .line 101
    move-result-object v0

    .line 102
    check-cast v0, Lcom/join/android/app/mgsim/wufun/databinding/v4;

    .line 103
    .line 104
    iget-object v0, v0, Lcom/join/android/app/mgsim/wufun/databinding/v4;->l:Landroid/widget/EditText;

    .line 105
    .line 106
    invoke-virtual {v0}, Landroid/widget/TextView;->getHint()Ljava/lang/CharSequence;

    .line 107
    .line 108
    .line 109
    move-result-object v0

    .line 110
    invoke-static {v0}, Lcom/papa91/arc/ext/ToastManager;->show(Ljava/lang/CharSequence;)V

    .line 111
    .line 112
    .line 113
    :goto_1
    return-void
.end method

.method public onShareClick()V
    .locals 2

    .line 1
    invoke-static {}, Lcom/join/mgps/Util/IntentUtil;->getInstance()Lcom/join/mgps/Util/IntentUtil;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0, p0}, Lcom/join/mgps/Util/IntentUtil;->isNotLogin(Landroid/content/Context;)Z

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    if-eqz v0, :cond_0

    .line 10
    .line 11
    invoke-static {}, Lcom/join/mgps/Util/IntentUtil;->getInstance()Lcom/join/mgps/Util/IntentUtil;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    invoke-virtual {v0, p0}, Lcom/join/mgps/Util/IntentUtil;->goLogin(Landroid/content/Context;)Z

    .line 16
    .line 17
    .line 18
    goto :goto_0

    .line 19
    :cond_0
    new-instance v0, Landroid/content/Intent;

    .line 20
    .line 21
    const-class v1, Lcom/join/kotlin/quark/UploadSourceHopeActivity;

    .line 22
    .line 23
    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 24
    .line 25
    .line 26
    invoke-virtual {p0, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 27
    .line 28
    .line 29
    :goto_0
    return-void
.end method

.method public final setAdapter(Lcom/join/mgps/adapter/h0;)V
    .locals 0
    .param p1    # Lcom/join/mgps/adapter/h0;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    iput-object p1, p0, Lcom/join/kotlin/quark/SourceShareActivity;->adapter:Lcom/join/mgps/adapter/h0;

    .line 2
    .line 3
    return-void
.end method

.method public final setExtBean(Lcom/join/mgps/dto/ExtBean;)V
    .locals 0
    .param p1    # Lcom/join/mgps/dto/ExtBean;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    iput-object p1, p0, Lcom/join/kotlin/quark/SourceShareActivity;->extBean:Lcom/join/mgps/dto/ExtBean;

    .line 2
    .line 3
    return-void
.end method

.method public final setFragments(Ljava/util/ArrayList;)V
    .locals 1
    .param p1    # Ljava/util/ArrayList;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/join/mgps/adapter/h0$a;",
            ">;)V"
        }
    .end annotation

    .line 1
    const-string v0, "<set-?>"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iput-object p1, p0, Lcom/join/kotlin/quark/SourceShareActivity;->fragments:Ljava/util/ArrayList;

    .line 7
    .line 8
    return-void
.end method
