.class public final Lcom/join/kotlin/discount/GameDetailInfoBottomDialogActivity;
.super Lcom/join/kotlin/base/activity/BaseVmDbDialogActivity;
.source "SourceFile"

# interfaces
.implements Lcom/join/kotlin/discount/proxy/GameDetailInfoBottomDialogClickProxy;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/join/kotlin/base/activity/BaseVmDbDialogActivity<",
        "Lcom/join/kotlin/discount/viewmodel/GameDetailInfoBottomDialogViewModel;",
        "Lcom/join/android/app/mgsim/wufun/databinding/t0;",
        ">;",
        "Lcom/join/kotlin/discount/proxy/GameDetailInfoBottomDialogClickProxy;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u00006\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\u0018\u00002\u000e\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u00030\u00012\u00020\u0004B\u0007\u00a2\u0006\u0004\u0008\u0005\u0010\u0006J\u0012\u0010\r\u001a\u00020\u000e2\u0008\u0010\u000f\u001a\u0004\u0018\u00010\u0010H\u0016J\u0008\u0010\u0011\u001a\u00020\u000eH\u0016J\n\u0010\u0012\u001a\u0004\u0018\u00010\u0013H\u0016J\u0008\u0010\u0014\u001a\u00020\u000eH\u0016J\u0008\u0010\u0015\u001a\u00020\u000eH\u0016R\u001b\u0010\u0007\u001a\u00020\u00088BX\u0082\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008\u000b\u0010\u000c\u001a\u0004\u0008\t\u0010\n\u00a8\u0006\u0016"
    }
    d2 = {
        "Lcom/join/kotlin/discount/GameDetailInfoBottomDialogActivity;",
        "Lcom/join/kotlin/base/activity/BaseVmDbDialogActivity;",
        "Lcom/join/kotlin/discount/viewmodel/GameDetailInfoBottomDialogViewModel;",
        "Lcom/join/android/app/mgsim/wufun/databinding/ActivityDiscountGameDetailInfoBottomDialogBinding;",
        "Lcom/join/kotlin/discount/proxy/GameDetailInfoBottomDialogClickProxy;",
        "<init>",
        "()V",
        "mAdapter",
        "Lcom/join/kotlin/discount/adapter/GameDetailInfoBottomDialogAdapter;",
        "getMAdapter",
        "()Lcom/join/kotlin/discount/adapter/GameDetailInfoBottomDialogAdapter;",
        "mAdapter$delegate",
        "Lkotlin/Lazy;",
        "initView",
        "",
        "savedInstanceState",
        "Landroid/os/Bundle;",
        "createObserver",
        "getContentView",
        "Landroid/view/View;",
        "onBackClick",
        "onConfirmClick",
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
.field private final mAdapter$delegate:Lkotlin/Lazy;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/join/kotlin/base/activity/BaseVmDbDialogActivity;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Lcom/join/kotlin/discount/d0;

    .line 5
    .line 6
    invoke-direct {v0}, Lcom/join/kotlin/discount/d0;-><init>()V

    .line 7
    .line 8
    .line 9
    invoke-static {v0}, Lkotlin/LazyKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    iput-object v0, p0, Lcom/join/kotlin/discount/GameDetailInfoBottomDialogActivity;->mAdapter$delegate:Lkotlin/Lazy;

    .line 14
    .line 15
    return-void
.end method

.method private final getMAdapter()Lcom/join/kotlin/discount/adapter/GameDetailInfoBottomDialogAdapter;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/kotlin/discount/GameDetailInfoBottomDialogActivity;->mAdapter$delegate:Lkotlin/Lazy;

    .line 2
    .line 3
    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Lcom/join/kotlin/discount/adapter/GameDetailInfoBottomDialogAdapter;

    .line 8
    .line 9
    return-object v0
.end method

.method public static synthetic j()Lcom/join/kotlin/discount/adapter/GameDetailInfoBottomDialogAdapter;
    .locals 1

    .line 1
    invoke-static {}, Lcom/join/kotlin/discount/GameDetailInfoBottomDialogActivity;->mAdapter_delegate$lambda$0()Lcom/join/kotlin/discount/adapter/GameDetailInfoBottomDialogAdapter;

    move-result-object v0

    return-object v0
.end method

.method private static final mAdapter_delegate$lambda$0()Lcom/join/kotlin/discount/adapter/GameDetailInfoBottomDialogAdapter;
    .locals 1

    .line 1
    new-instance v0, Lcom/join/kotlin/discount/adapter/GameDetailInfoBottomDialogAdapter;

    .line 2
    .line 3
    invoke-direct {v0}, Lcom/join/kotlin/discount/adapter/GameDetailInfoBottomDialogAdapter;-><init>()V

    .line 4
    .line 5
    .line 6
    return-object v0
.end method


# virtual methods
.method public createObserver()V
    .locals 0

    return-void
.end method

.method public getContentView()Landroid/view/View;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    invoke-virtual {p0}, Lcom/join/kotlin/base/activity/BaseVmDbDialogActivity;->getMDatabind()Landroidx/databinding/ViewDataBinding;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    check-cast v0, Lcom/join/android/app/mgsim/wufun/databinding/t0;

    .line 6
    .line 7
    iget-object v0, v0, Lcom/join/android/app/mgsim/wufun/databinding/t0;->b:Landroidx/constraintlayout/widget/ConstraintLayout;

    .line 8
    .line 9
    return-object v0
.end method

.method public initView(Landroid/os/Bundle;)V
    .locals 5
    .param p1    # Landroid/os/Bundle;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    invoke-virtual {p0}, Lcom/join/kotlin/base/activity/BaseVmDbDialogActivity;->getMDatabind()Landroidx/databinding/ViewDataBinding;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    check-cast p1, Lcom/join/android/app/mgsim/wufun/databinding/t0;

    .line 6
    .line 7
    invoke-virtual {p0}, Lcom/join/kotlin/base/activity/BaseVmDialogActivity;->getMViewModel()Lcom/join/kotlin/base/viewmodel/BaseViewModel;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    check-cast v0, Lcom/join/kotlin/discount/viewmodel/GameDetailInfoBottomDialogViewModel;

    .line 12
    .line 13
    invoke-virtual {p1, v0}, Lcom/join/android/app/mgsim/wufun/databinding/t0;->u(Lcom/join/kotlin/discount/viewmodel/GameDetailInfoBottomDialogViewModel;)V

    .line 14
    .line 15
    .line 16
    invoke-virtual {p0}, Lcom/join/kotlin/base/activity/BaseVmDbDialogActivity;->getMDatabind()Landroidx/databinding/ViewDataBinding;

    .line 17
    .line 18
    .line 19
    move-result-object p1

    .line 20
    check-cast p1, Lcom/join/android/app/mgsim/wufun/databinding/t0;

    .line 21
    .line 22
    invoke-virtual {p1, p0}, Lcom/join/android/app/mgsim/wufun/databinding/t0;->t(Lcom/join/kotlin/discount/proxy/GameDetailInfoBottomDialogClickProxy;)V

    .line 23
    .line 24
    .line 25
    invoke-static {p0}, Lcom/join/mgps/Util/p2;->v(Landroid/app/Activity;)V

    .line 26
    .line 27
    .line 28
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    .line 29
    .line 30
    .line 31
    move-result-object p1

    .line 32
    if-eqz p1, :cond_0

    .line 33
    .line 34
    invoke-virtual {p0}, Lcom/join/kotlin/base/activity/BaseVmDialogActivity;->getMViewModel()Lcom/join/kotlin/base/viewmodel/BaseViewModel;

    .line 35
    .line 36
    .line 37
    move-result-object v0

    .line 38
    check-cast v0, Lcom/join/kotlin/discount/viewmodel/GameDetailInfoBottomDialogViewModel;

    .line 39
    .line 40
    invoke-virtual {v0}, Lcom/join/kotlin/discount/viewmodel/GameDetailInfoBottomDialogViewModel;->getTitle()Landroidx/lifecycle/MutableLiveData;

    .line 41
    .line 42
    .line 43
    move-result-object v0

    .line 44
    const-string v1, "title"

    .line 45
    .line 46
    invoke-virtual {p1, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    .line 47
    .line 48
    .line 49
    move-result-object v1

    .line 50
    invoke-virtual {v0, v1}, Landroidx/lifecycle/MutableLiveData;->setValue(Ljava/lang/Object;)V

    .line 51
    .line 52
    .line 53
    invoke-virtual {p0}, Lcom/join/kotlin/base/activity/BaseVmDialogActivity;->getMViewModel()Lcom/join/kotlin/base/viewmodel/BaseViewModel;

    .line 54
    .line 55
    .line 56
    move-result-object v0

    .line 57
    check-cast v0, Lcom/join/kotlin/discount/viewmodel/GameDetailInfoBottomDialogViewModel;

    .line 58
    .line 59
    invoke-virtual {v0}, Lcom/join/kotlin/discount/viewmodel/GameDetailInfoBottomDialogViewModel;->getContent()Landroidx/lifecycle/MutableLiveData;

    .line 60
    .line 61
    .line 62
    move-result-object v0

    .line 63
    const-string v1, "content"

    .line 64
    .line 65
    invoke-virtual {p1, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    .line 66
    .line 67
    .line 68
    move-result-object v1

    .line 69
    invoke-virtual {v0, v1}, Landroidx/lifecycle/MutableLiveData;->setValue(Ljava/lang/Object;)V

    .line 70
    .line 71
    .line 72
    invoke-virtual {p0}, Lcom/join/kotlin/base/activity/BaseVmDialogActivity;->getMViewModel()Lcom/join/kotlin/base/viewmodel/BaseViewModel;

    .line 73
    .line 74
    .line 75
    move-result-object v0

    .line 76
    check-cast v0, Lcom/join/kotlin/discount/viewmodel/GameDetailInfoBottomDialogViewModel;

    .line 77
    .line 78
    invoke-virtual {v0}, Lcom/join/kotlin/discount/viewmodel/GameDetailInfoBottomDialogViewModel;->getBtnText()Landroidx/lifecycle/MutableLiveData;

    .line 79
    .line 80
    .line 81
    move-result-object v0

    .line 82
    const-string v1, "btnText"

    .line 83
    .line 84
    invoke-virtual {p1, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    .line 85
    .line 86
    .line 87
    move-result-object p1

    .line 88
    invoke-virtual {v0, p1}, Landroidx/lifecycle/MutableLiveData;->setValue(Ljava/lang/Object;)V

    .line 89
    .line 90
    .line 91
    :cond_0
    invoke-static {}, Lcom/join/android/app/common/utils/JsonMapper;->getInstance()Lcom/join/android/app/common/utils/JsonMapper;

    .line 92
    .line 93
    .line 94
    move-result-object p1

    .line 95
    invoke-virtual {p0}, Lcom/join/kotlin/base/activity/BaseVmDialogActivity;->getMViewModel()Lcom/join/kotlin/base/viewmodel/BaseViewModel;

    .line 96
    .line 97
    .line 98
    move-result-object v0

    .line 99
    check-cast v0, Lcom/join/kotlin/discount/viewmodel/GameDetailInfoBottomDialogViewModel;

    .line 100
    .line 101
    invoke-virtual {v0}, Lcom/join/kotlin/discount/viewmodel/GameDetailInfoBottomDialogViewModel;->getContent()Landroidx/lifecycle/MutableLiveData;

    .line 102
    .line 103
    .line 104
    move-result-object v0

    .line 105
    invoke-virtual {v0}, Landroidx/lifecycle/LiveData;->getValue()Ljava/lang/Object;

    .line 106
    .line 107
    .line 108
    move-result-object v0

    .line 109
    check-cast v0, Ljava/lang/String;

    .line 110
    .line 111
    invoke-static {}, Lcom/join/android/app/common/utils/JsonMapper;->getInstance()Lcom/join/android/app/common/utils/JsonMapper;

    .line 112
    .line 113
    .line 114
    move-result-object v1

    .line 115
    const/4 v2, 0x1

    .line 116
    new-array v2, v2, [Ljava/lang/Class;

    .line 117
    .line 118
    const/4 v3, 0x0

    .line 119
    const-class v4, Lcom/join/kotlin/discount/model/bean/GameDetailDialogInfoBean;

    .line 120
    .line 121
    aput-object v4, v2, v3

    .line 122
    .line 123
    const-class v3, Ljava/util/ArrayList;

    .line 124
    .line 125
    invoke-virtual {v1, v3, v2}, Lcom/join/android/app/common/utils/JsonMapper;->createCollectionType(Ljava/lang/Class;[Ljava/lang/Class;)Lcom/fasterxml/jackson/databind/JavaType;

    .line 126
    .line 127
    .line 128
    move-result-object v1

    .line 129
    invoke-virtual {p1, v0, v1}, Lcom/join/android/app/common/utils/JsonMapper;->fromJson(Ljava/lang/String;Lcom/fasterxml/jackson/databind/JavaType;)Ljava/lang/Object;

    .line 130
    .line 131
    .line 132
    move-result-object p1

    .line 133
    check-cast p1, Ljava/util/ArrayList;

    .line 134
    .line 135
    invoke-virtual {p0}, Lcom/join/kotlin/base/activity/BaseVmDbDialogActivity;->getMDatabind()Landroidx/databinding/ViewDataBinding;

    .line 136
    .line 137
    .line 138
    move-result-object v0

    .line 139
    check-cast v0, Lcom/join/android/app/mgsim/wufun/databinding/t0;

    .line 140
    .line 141
    iget-object v0, v0, Lcom/join/android/app/mgsim/wufun/databinding/t0;->d:Landroidx/recyclerview/widget/RecyclerView;

    .line 142
    .line 143
    new-instance v1, Landroidx/recyclerview/widget/LinearLayoutManager;

    .line 144
    .line 145
    invoke-direct {v1, p0}, Landroidx/recyclerview/widget/LinearLayoutManager;-><init>(Landroid/content/Context;)V

    .line 146
    .line 147
    .line 148
    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    .line 149
    .line 150
    .line 151
    invoke-virtual {p0}, Lcom/join/kotlin/base/activity/BaseVmDbDialogActivity;->getMDatabind()Landroidx/databinding/ViewDataBinding;

    .line 152
    .line 153
    .line 154
    move-result-object v0

    .line 155
    check-cast v0, Lcom/join/android/app/mgsim/wufun/databinding/t0;

    .line 156
    .line 157
    iget-object v0, v0, Lcom/join/android/app/mgsim/wufun/databinding/t0;->d:Landroidx/recyclerview/widget/RecyclerView;

    .line 158
    .line 159
    invoke-direct {p0}, Lcom/join/kotlin/discount/GameDetailInfoBottomDialogActivity;->getMAdapter()Lcom/join/kotlin/discount/adapter/GameDetailInfoBottomDialogAdapter;

    .line 160
    .line 161
    .line 162
    move-result-object v1

    .line 163
    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 164
    .line 165
    .line 166
    invoke-direct {p0}, Lcom/join/kotlin/discount/GameDetailInfoBottomDialogActivity;->getMAdapter()Lcom/join/kotlin/discount/adapter/GameDetailInfoBottomDialogAdapter;

    .line 167
    .line 168
    .line 169
    move-result-object v0

    .line 170
    if-eqz p1, :cond_1

    .line 171
    .line 172
    invoke-static {p1}, Lkotlin/collections/CollectionsKt;->filterNotNull(Ljava/lang/Iterable;)Ljava/util/List;

    .line 173
    .line 174
    .line 175
    move-result-object p1

    .line 176
    goto :goto_0

    .line 177
    :cond_1
    const/4 p1, 0x0

    .line 178
    :goto_0
    invoke-virtual {v0, p1}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->submitList(Ljava/util/List;)V

    .line 179
    .line 180
    .line 181
    return-void
.end method

.method public onBackClick()V
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/join/mgps/base/dialog/BaseDialogActivity;->finish()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public onConfirmClick()V
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/join/mgps/base/dialog/BaseDialogActivity;->finish()V

    .line 2
    .line 3
    .line 4
    return-void
.end method
