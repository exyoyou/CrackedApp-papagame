.class public final Lcom/join/kotlin/ui/endgame/EndGameSlotListActivity;
.super Lcom/BaseAppCompatActivity;
.source "SourceFile"

# interfaces
.implements Lcom/join/kotlin/ui/endgame/ISlotListener;
.implements Lcom/join/kotlin/domain/common/LoadBindClickProxy;


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000J\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u000b\n\u0002\u0008\t\u0018\u00002\u00020\u00012\u00020\u00022\u00020\u0003B\u0007\u00a2\u0006\u0004\u0008\u0004\u0010\u0005J\u0012\u0010\u001d\u001a\u00020\u001e2\u0008\u0010\u001f\u001a\u0004\u0018\u00010 H\u0014J\u0006\u0010!\u001a\u00020\u001eJ\u0006\u0010\'\u001a\u00020\u001eJ\u0008\u0010(\u001a\u00020\u001eH\u0016J\u0008\u0010)\u001a\u00020\u001eH\u0016J\u0008\u0010*\u001a\u00020\u001eH\u0016J\u0008\u0010+\u001a\u00020\u001eH\u0016R\u001b\u0010\u0006\u001a\u00020\u00078FX\u0086\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008\n\u0010\u000b\u001a\u0004\u0008\u0008\u0010\tR\u001a\u0010\u000c\u001a\u00020\rX\u0086.\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u000e\u0010\u000f\"\u0004\u0008\u0010\u0010\u0011R\u001b\u0010\u0012\u001a\u00020\u00138FX\u0086\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008\u0016\u0010\u000b\u001a\u0004\u0008\u0014\u0010\u0015R\u001c\u0010\u0017\u001a\u0004\u0018\u00010\u0018X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0019\u0010\u001a\"\u0004\u0008\u001b\u0010\u001cR\u001a\u0010\"\u001a\u00020#X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\"\u0010$\"\u0004\u0008%\u0010&\u00a8\u0006,"
    }
    d2 = {
        "Lcom/join/kotlin/ui/endgame/EndGameSlotListActivity;",
        "Lcom/BaseAppCompatActivity;",
        "Lcom/join/kotlin/ui/endgame/ISlotListener;",
        "Lcom/join/kotlin/domain/common/LoadBindClickProxy;",
        "<init>",
        "()V",
        "viewModle",
        "Lcom/join/kotlin/ui/endgame/EndGameSlotViewModel;",
        "getViewModle",
        "()Lcom/join/kotlin/ui/endgame/EndGameSlotViewModel;",
        "viewModle$delegate",
        "Lkotlin/Lazy;",
        "dataBinding",
        "Lcom/join/android/app/mgsim/wufun/databinding/ActivityEndGameSlotListBinding;",
        "getDataBinding",
        "()Lcom/join/android/app/mgsim/wufun/databinding/ActivityEndGameSlotListBinding;",
        "setDataBinding",
        "(Lcom/join/android/app/mgsim/wufun/databinding/ActivityEndGameSlotListBinding;)V",
        "adapterx",
        "Lcom/join/kotlin/ui/endgame/adapter/EndGameSlotListAdapter;",
        "getAdapterx",
        "()Lcom/join/kotlin/ui/endgame/adapter/EndGameSlotListAdapter;",
        "adapterx$delegate",
        "mListener",
        "Lcom/join/kotlin/ui/cloudarchive/IOnRunListener;",
        "getMListener",
        "()Lcom/join/kotlin/ui/cloudarchive/IOnRunListener;",
        "setMListener",
        "(Lcom/join/kotlin/ui/cloudarchive/IOnRunListener;)V",
        "onCreate",
        "",
        "savedInstanceState",
        "Landroid/os/Bundle;",
        "initData",
        "isLogin",
        "",
        "()Z",
        "setLogin",
        "(Z)V",
        "loadData",
        "onClickReload",
        "onClickSetNetWork",
        "onBack",
        "onCommit",
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
.field private final adapterx$delegate:Lkotlin/Lazy;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public dataBinding:Lcom/join/android/app/mgsim/wufun/databinding/f1;

.field private isLogin:Z

.field private mListener:Lcom/join/kotlin/ui/cloudarchive/IOnRunListener;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private final viewModle$delegate:Lkotlin/Lazy;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/BaseAppCompatActivity;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Lcom/join/kotlin/ui/endgame/c;

    .line 5
    .line 6
    invoke-direct {v0, p0}, Lcom/join/kotlin/ui/endgame/c;-><init>(Lcom/join/kotlin/ui/endgame/EndGameSlotListActivity;)V

    .line 7
    .line 8
    .line 9
    invoke-static {v0}, Lkotlin/LazyKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    iput-object v0, p0, Lcom/join/kotlin/ui/endgame/EndGameSlotListActivity;->viewModle$delegate:Lkotlin/Lazy;

    .line 14
    .line 15
    new-instance v0, Lcom/join/kotlin/ui/endgame/d;

    .line 16
    .line 17
    invoke-direct {v0, p0}, Lcom/join/kotlin/ui/endgame/d;-><init>(Lcom/join/kotlin/ui/endgame/EndGameSlotListActivity;)V

    .line 18
    .line 19
    .line 20
    invoke-static {v0}, Lkotlin/LazyKt;->lazy(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    .line 21
    .line 22
    .line 23
    move-result-object v0

    .line 24
    iput-object v0, p0, Lcom/join/kotlin/ui/endgame/EndGameSlotListActivity;->adapterx$delegate:Lkotlin/Lazy;

    .line 25
    .line 26
    return-void
.end method

.method private static final adapterx_delegate$lambda$1(Lcom/join/kotlin/ui/endgame/EndGameSlotListActivity;)Lcom/join/kotlin/ui/endgame/adapter/EndGameSlotListAdapter;
    .locals 1

    .line 1
    new-instance v0, Lcom/join/kotlin/ui/endgame/adapter/EndGameSlotListAdapter;

    .line 2
    .line 3
    invoke-direct {v0, p0}, Lcom/join/kotlin/ui/endgame/adapter/EndGameSlotListAdapter;-><init>(Landroid/content/Context;)V

    .line 4
    .line 5
    .line 6
    return-object v0
.end method

.method private static final initData$lambda$2(Lcom/join/kotlin/ui/endgame/EndGameSlotListActivity;Ljava/util/List;)Lkotlin/Unit;
    .locals 4

    .line 1
    const/4 v0, 0x1

    .line 2
    const/4 v1, 0x0

    .line 3
    if-eqz p1, :cond_3

    .line 4
    .line 5
    invoke-virtual {p0}, Lcom/join/kotlin/ui/endgame/EndGameSlotListActivity;->getViewModle()Lcom/join/kotlin/ui/endgame/EndGameSlotViewModel;

    .line 6
    .line 7
    .line 8
    move-result-object v2

    .line 9
    invoke-virtual {v2}, Lcom/join/kotlin/ui/endgame/EndGameSlotViewModel;->getLoadBindData()Landroidx/lifecycle/MutableLiveData;

    .line 10
    .line 11
    .line 12
    move-result-object v2

    .line 13
    new-instance v3, Lcom/join/kotlin/domain/common/LoadBindindData;

    .line 14
    .line 15
    invoke-direct {v3, v0}, Lcom/join/kotlin/domain/common/LoadBindindData;-><init>(I)V

    .line 16
    .line 17
    .line 18
    invoke-virtual {v2, v3}, Landroidx/lifecycle/MutableLiveData;->setValue(Ljava/lang/Object;)V

    .line 19
    .line 20
    .line 21
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    .line 22
    .line 23
    .line 24
    move-result v2

    .line 25
    if-eqz v2, :cond_2

    .line 26
    .line 27
    invoke-virtual {p0}, Lcom/join/kotlin/ui/endgame/EndGameSlotListActivity;->getViewModle()Lcom/join/kotlin/ui/endgame/EndGameSlotViewModel;

    .line 28
    .line 29
    .line 30
    move-result-object p1

    .line 31
    invoke-virtual {p1}, Lcom/join/kotlin/ui/endgame/EndGameSlotViewModel;->getListArchive()Landroidx/lifecycle/MutableLiveData;

    .line 32
    .line 33
    .line 34
    move-result-object p1

    .line 35
    invoke-virtual {p1}, Landroidx/lifecycle/LiveData;->getValue()Ljava/lang/Object;

    .line 36
    .line 37
    .line 38
    move-result-object p1

    .line 39
    check-cast p1, Ljava/util/List;

    .line 40
    .line 41
    if-eqz p1, :cond_0

    .line 42
    .line 43
    invoke-interface {p1}, Ljava/util/List;->size()I

    .line 44
    .line 45
    .line 46
    move-result p1

    .line 47
    if-nez p1, :cond_0

    .line 48
    .line 49
    goto :goto_0

    .line 50
    :cond_0
    const/4 v0, 0x0

    .line 51
    :goto_0
    if-eqz v0, :cond_1

    .line 52
    .line 53
    invoke-virtual {p0}, Lcom/join/kotlin/ui/endgame/EndGameSlotListActivity;->getViewModle()Lcom/join/kotlin/ui/endgame/EndGameSlotViewModel;

    .line 54
    .line 55
    .line 56
    move-result-object p1

    .line 57
    invoke-virtual {p1}, Lcom/join/kotlin/ui/endgame/EndGameSlotViewModel;->getLoadBindData()Landroidx/lifecycle/MutableLiveData;

    .line 58
    .line 59
    .line 60
    move-result-object p1

    .line 61
    new-instance v0, Lcom/join/kotlin/domain/common/LoadBindindData;

    .line 62
    .line 63
    const/4 v1, 0x4

    .line 64
    invoke-direct {v0, v1}, Lcom/join/kotlin/domain/common/LoadBindindData;-><init>(I)V

    .line 65
    .line 66
    .line 67
    invoke-virtual {p1, v0}, Landroidx/lifecycle/MutableLiveData;->setValue(Ljava/lang/Object;)V

    .line 68
    .line 69
    .line 70
    :cond_1
    invoke-virtual {p0}, Lcom/join/kotlin/ui/endgame/EndGameSlotListActivity;->getDataBinding()Lcom/join/android/app/mgsim/wufun/databinding/f1;

    .line 71
    .line 72
    .line 73
    move-result-object p0

    .line 74
    iget-object p0, p0, Lcom/join/android/app/mgsim/wufun/databinding/f1;->d:Lcom/join/android/app/component/xrecyclerview/XRecyclerView;

    .line 75
    .line 76
    invoke-virtual {p0}, Lcom/join/android/app/component/xrecyclerview/XRecyclerView;->setNoMore()V

    .line 77
    .line 78
    .line 79
    goto :goto_3

    .line 80
    :cond_2
    invoke-virtual {p0}, Lcom/join/kotlin/ui/endgame/EndGameSlotListActivity;->getAdapterx()Lcom/join/kotlin/ui/endgame/adapter/EndGameSlotListAdapter;

    .line 81
    .line 82
    .line 83
    move-result-object v0

    .line 84
    invoke-virtual {v0, p1}, Lcom/join/kotlin/domain/adapter/BaseDataBindingAdapter;->setListDatas(Ljava/util/List;)V

    .line 85
    .line 86
    .line 87
    invoke-virtual {p0}, Lcom/join/kotlin/ui/endgame/EndGameSlotListActivity;->getDataBinding()Lcom/join/android/app/mgsim/wufun/databinding/f1;

    .line 88
    .line 89
    .line 90
    move-result-object p1

    .line 91
    iget-object p1, p1, Lcom/join/android/app/mgsim/wufun/databinding/f1;->d:Lcom/join/android/app/component/xrecyclerview/XRecyclerView;

    .line 92
    .line 93
    invoke-virtual {p1}, Lcom/join/android/app/component/xrecyclerview/XRecyclerView;->loadMoreComplete()V

    .line 94
    .line 95
    .line 96
    invoke-virtual {p0}, Lcom/join/kotlin/ui/endgame/EndGameSlotListActivity;->getAdapterx()Lcom/join/kotlin/ui/endgame/adapter/EndGameSlotListAdapter;

    .line 97
    .line 98
    .line 99
    move-result-object p0

    .line 100
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    .line 101
    .line 102
    .line 103
    goto :goto_3

    .line 104
    :cond_3
    invoke-virtual {p0}, Lcom/join/kotlin/ui/endgame/EndGameSlotListActivity;->getViewModle()Lcom/join/kotlin/ui/endgame/EndGameSlotViewModel;

    .line 105
    .line 106
    .line 107
    move-result-object p1

    .line 108
    invoke-virtual {p1}, Lcom/join/kotlin/ui/endgame/EndGameSlotViewModel;->getListArchive()Landroidx/lifecycle/MutableLiveData;

    .line 109
    .line 110
    .line 111
    move-result-object p1

    .line 112
    invoke-virtual {p1}, Landroidx/lifecycle/LiveData;->getValue()Ljava/lang/Object;

    .line 113
    .line 114
    .line 115
    move-result-object p1

    .line 116
    check-cast p1, Ljava/util/List;

    .line 117
    .line 118
    if-eqz p1, :cond_4

    .line 119
    .line 120
    invoke-interface {p1}, Ljava/util/List;->size()I

    .line 121
    .line 122
    .line 123
    move-result p1

    .line 124
    if-nez p1, :cond_4

    .line 125
    .line 126
    const/4 p1, 0x1

    .line 127
    goto :goto_1

    .line 128
    :cond_4
    const/4 p1, 0x0

    .line 129
    :goto_1
    if-nez p1, :cond_5

    .line 130
    .line 131
    invoke-virtual {p0}, Lcom/join/kotlin/ui/endgame/EndGameSlotListActivity;->getViewModle()Lcom/join/kotlin/ui/endgame/EndGameSlotViewModel;

    .line 132
    .line 133
    .line 134
    move-result-object p1

    .line 135
    invoke-virtual {p1}, Lcom/join/kotlin/ui/endgame/EndGameSlotViewModel;->getLoadBindData()Landroidx/lifecycle/MutableLiveData;

    .line 136
    .line 137
    .line 138
    move-result-object p1

    .line 139
    new-instance v2, Lcom/join/kotlin/domain/common/LoadBindindData;

    .line 140
    .line 141
    invoke-direct {v2, v0}, Lcom/join/kotlin/domain/common/LoadBindindData;-><init>(I)V

    .line 142
    .line 143
    .line 144
    invoke-virtual {p1, v2}, Landroidx/lifecycle/MutableLiveData;->setValue(Ljava/lang/Object;)V

    .line 145
    .line 146
    .line 147
    :cond_5
    invoke-virtual {p0}, Lcom/join/kotlin/ui/endgame/EndGameSlotListActivity;->getViewModle()Lcom/join/kotlin/ui/endgame/EndGameSlotViewModel;

    .line 148
    .line 149
    .line 150
    move-result-object p1

    .line 151
    invoke-virtual {p1}, Lcom/join/kotlin/ui/endgame/EndGameSlotViewModel;->getListArchive()Landroidx/lifecycle/MutableLiveData;

    .line 152
    .line 153
    .line 154
    move-result-object p1

    .line 155
    invoke-virtual {p1}, Landroidx/lifecycle/LiveData;->getValue()Ljava/lang/Object;

    .line 156
    .line 157
    .line 158
    move-result-object p1

    .line 159
    check-cast p1, Ljava/util/List;

    .line 160
    .line 161
    if-eqz p1, :cond_6

    .line 162
    .line 163
    invoke-interface {p1}, Ljava/util/List;->size()I

    .line 164
    .line 165
    .line 166
    move-result p1

    .line 167
    if-nez p1, :cond_6

    .line 168
    .line 169
    goto :goto_2

    .line 170
    :cond_6
    const/4 v0, 0x0

    .line 171
    :goto_2
    if-eqz v0, :cond_7

    .line 172
    .line 173
    invoke-virtual {p0}, Lcom/join/kotlin/ui/endgame/EndGameSlotListActivity;->getViewModle()Lcom/join/kotlin/ui/endgame/EndGameSlotViewModel;

    .line 174
    .line 175
    .line 176
    move-result-object p0

    .line 177
    invoke-virtual {p0}, Lcom/join/kotlin/ui/endgame/EndGameSlotViewModel;->getLoadBindData()Landroidx/lifecycle/MutableLiveData;

    .line 178
    .line 179
    .line 180
    move-result-object p0

    .line 181
    new-instance p1, Lcom/join/kotlin/domain/common/LoadBindindData;

    .line 182
    .line 183
    const/4 v0, 0x3

    .line 184
    invoke-direct {p1, v0}, Lcom/join/kotlin/domain/common/LoadBindindData;-><init>(I)V

    .line 185
    .line 186
    .line 187
    invoke-virtual {p0, p1}, Landroidx/lifecycle/MutableLiveData;->setValue(Ljava/lang/Object;)V

    .line 188
    .line 189
    .line 190
    :cond_7
    :goto_3
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 191
    .line 192
    return-object p0
.end method

.method private static final initData$lambda$3(Lcom/join/kotlin/ui/endgame/EndGameSlotListActivity;Lcom/join/mgps/dto/ArchiveListBean;)Lkotlin/Unit;
    .locals 3

    .line 1
    invoke-virtual {p0}, Lcom/join/kotlin/ui/endgame/EndGameSlotListActivity;->getViewModle()Lcom/join/kotlin/ui/endgame/EndGameSlotViewModel;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0}, Lcom/join/kotlin/ui/endgame/EndGameSlotViewModel;->getCommitText()Landroidx/lifecycle/MutableLiveData;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    new-instance v1, Ljava/lang/StringBuilder;

    .line 10
    .line 11
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 12
    .line 13
    .line 14
    const-string v2, "\u5b8c\u6210("

    .line 15
    .line 16
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 17
    .line 18
    .line 19
    if-nez p1, :cond_0

    .line 20
    .line 21
    const-string v2, "0"

    .line 22
    .line 23
    goto :goto_0

    .line 24
    :cond_0
    const-string v2, "1"

    .line 25
    .line 26
    :goto_0
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 27
    .line 28
    .line 29
    const-string v2, "/1)"

    .line 30
    .line 31
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 32
    .line 33
    .line 34
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 35
    .line 36
    .line 37
    move-result-object v1

    .line 38
    invoke-virtual {v0, v1}, Landroidx/lifecycle/MutableLiveData;->setValue(Ljava/lang/Object;)V

    .line 39
    .line 40
    .line 41
    invoke-virtual {p0}, Lcom/join/kotlin/ui/endgame/EndGameSlotListActivity;->getViewModle()Lcom/join/kotlin/ui/endgame/EndGameSlotViewModel;

    .line 42
    .line 43
    .line 44
    move-result-object p0

    .line 45
    invoke-virtual {p0}, Lcom/join/kotlin/ui/endgame/EndGameSlotViewModel;->getCommitEnableStatus()Landroidx/lifecycle/MutableLiveData;

    .line 46
    .line 47
    .line 48
    move-result-object p0

    .line 49
    if-eqz p1, :cond_1

    .line 50
    .line 51
    const/4 p1, 0x1

    .line 52
    goto :goto_1

    .line 53
    :cond_1
    const/4 p1, 0x0

    .line 54
    :goto_1
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 55
    .line 56
    .line 57
    move-result-object p1

    .line 58
    invoke-virtual {p0, p1}, Landroidx/lifecycle/MutableLiveData;->setValue(Ljava/lang/Object;)V

    .line 59
    .line 60
    .line 61
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 62
    .line 63
    return-object p0
.end method

.method public static synthetic j(Lcom/join/kotlin/ui/endgame/EndGameSlotListActivity;Ljava/util/List;)Lkotlin/Unit;
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lcom/join/kotlin/ui/endgame/EndGameSlotListActivity;->initData$lambda$2(Lcom/join/kotlin/ui/endgame/EndGameSlotListActivity;Ljava/util/List;)Lkotlin/Unit;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic k(Lcom/join/kotlin/ui/endgame/EndGameSlotListActivity;Lcom/join/mgps/dto/ArchiveListBean;)Lkotlin/Unit;
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lcom/join/kotlin/ui/endgame/EndGameSlotListActivity;->initData$lambda$3(Lcom/join/kotlin/ui/endgame/EndGameSlotListActivity;Lcom/join/mgps/dto/ArchiveListBean;)Lkotlin/Unit;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic l(Lcom/join/kotlin/ui/endgame/EndGameSlotListActivity;)Lcom/join/kotlin/ui/endgame/EndGameSlotViewModel;
    .locals 0

    .line 1
    invoke-static {p0}, Lcom/join/kotlin/ui/endgame/EndGameSlotListActivity;->viewModle_delegate$lambda$0(Lcom/join/kotlin/ui/endgame/EndGameSlotListActivity;)Lcom/join/kotlin/ui/endgame/EndGameSlotViewModel;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic m(Lcom/join/kotlin/ui/endgame/EndGameSlotListActivity;)Lcom/join/kotlin/ui/endgame/adapter/EndGameSlotListAdapter;
    .locals 0

    .line 1
    invoke-static {p0}, Lcom/join/kotlin/ui/endgame/EndGameSlotListActivity;->adapterx_delegate$lambda$1(Lcom/join/kotlin/ui/endgame/EndGameSlotListActivity;)Lcom/join/kotlin/ui/endgame/adapter/EndGameSlotListAdapter;

    move-result-object p0

    return-object p0
.end method

.method private static final viewModle_delegate$lambda$0(Lcom/join/kotlin/ui/endgame/EndGameSlotListActivity;)Lcom/join/kotlin/ui/endgame/EndGameSlotViewModel;
    .locals 2

    .line 1
    new-instance v0, Landroidx/lifecycle/ViewModelProvider;

    .line 2
    .line 3
    new-instance v1, Landroidx/lifecycle/ViewModelProvider$NewInstanceFactory;

    .line 4
    .line 5
    invoke-direct {v1}, Landroidx/lifecycle/ViewModelProvider$NewInstanceFactory;-><init>()V

    .line 6
    .line 7
    .line 8
    invoke-direct {v0, p0, v1}, Landroidx/lifecycle/ViewModelProvider;-><init>(Landroidx/lifecycle/ViewModelStoreOwner;Landroidx/lifecycle/ViewModelProvider$Factory;)V

    .line 9
    .line 10
    .line 11
    const-class p0, Lcom/join/kotlin/ui/endgame/EndGameSlotViewModel;

    .line 12
    .line 13
    invoke-virtual {v0, p0}, Landroidx/lifecycle/ViewModelProvider;->get(Ljava/lang/Class;)Landroidx/lifecycle/ViewModel;

    .line 14
    .line 15
    .line 16
    move-result-object p0

    .line 17
    check-cast p0, Lcom/join/kotlin/ui/endgame/EndGameSlotViewModel;

    .line 18
    .line 19
    return-object p0
.end method


# virtual methods
.method public final getAdapterx()Lcom/join/kotlin/ui/endgame/adapter/EndGameSlotListAdapter;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/kotlin/ui/endgame/EndGameSlotListActivity;->adapterx$delegate:Lkotlin/Lazy;

    .line 2
    .line 3
    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Lcom/join/kotlin/ui/endgame/adapter/EndGameSlotListAdapter;

    .line 8
    .line 9
    return-object v0
.end method

.method public final getDataBinding()Lcom/join/android/app/mgsim/wufun/databinding/f1;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/kotlin/ui/endgame/EndGameSlotListActivity;->dataBinding:Lcom/join/android/app/mgsim/wufun/databinding/f1;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    return-object v0

    .line 6
    :cond_0
    const-string v0, "dataBinding"

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

.method public final getMListener()Lcom/join/kotlin/ui/cloudarchive/IOnRunListener;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/kotlin/ui/endgame/EndGameSlotListActivity;->mListener:Lcom/join/kotlin/ui/cloudarchive/IOnRunListener;

    .line 2
    .line 3
    return-object v0
.end method

.method public final getViewModle()Lcom/join/kotlin/ui/endgame/EndGameSlotViewModel;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/kotlin/ui/endgame/EndGameSlotListActivity;->viewModle$delegate:Lkotlin/Lazy;

    .line 2
    .line 3
    invoke-interface {v0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Lcom/join/kotlin/ui/endgame/EndGameSlotViewModel;

    .line 8
    .line 9
    return-object v0
.end method

.method public final initData()V
    .locals 4

    .line 1
    invoke-virtual {p0}, Lcom/join/kotlin/ui/endgame/EndGameSlotListActivity;->getDataBinding()Lcom/join/android/app/mgsim/wufun/databinding/f1;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0, p0}, Landroidx/databinding/ViewDataBinding;->setLifecycleOwner(Landroidx/lifecycle/LifecycleOwner;)V

    .line 6
    .line 7
    .line 8
    invoke-virtual {p0}, Lcom/join/kotlin/ui/endgame/EndGameSlotListActivity;->getDataBinding()Lcom/join/android/app/mgsim/wufun/databinding/f1;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    const/16 v1, 0x32

    .line 13
    .line 14
    invoke-virtual {p0}, Lcom/join/kotlin/ui/endgame/EndGameSlotListActivity;->getViewModle()Lcom/join/kotlin/ui/endgame/EndGameSlotViewModel;

    .line 15
    .line 16
    .line 17
    move-result-object v2

    .line 18
    invoke-virtual {v0, v1, v2}, Landroidx/databinding/ViewDataBinding;->setVariable(ILjava/lang/Object;)Z

    .line 19
    .line 20
    .line 21
    invoke-virtual {p0}, Lcom/join/kotlin/ui/endgame/EndGameSlotListActivity;->getDataBinding()Lcom/join/android/app/mgsim/wufun/databinding/f1;

    .line 22
    .line 23
    .line 24
    move-result-object v0

    .line 25
    const/16 v1, 0x1e

    .line 26
    .line 27
    invoke-virtual {v0, v1, p0}, Landroidx/databinding/ViewDataBinding;->setVariable(ILjava/lang/Object;)Z

    .line 28
    .line 29
    .line 30
    invoke-virtual {p0}, Lcom/join/kotlin/ui/endgame/EndGameSlotListActivity;->getDataBinding()Lcom/join/android/app/mgsim/wufun/databinding/f1;

    .line 31
    .line 32
    .line 33
    move-result-object v0

    .line 34
    iget-object v0, v0, Lcom/join/android/app/mgsim/wufun/databinding/f1;->d:Lcom/join/android/app/component/xrecyclerview/XRecyclerView;

    .line 35
    .line 36
    invoke-virtual {p0}, Lcom/join/kotlin/ui/endgame/EndGameSlotListActivity;->getAdapterx()Lcom/join/kotlin/ui/endgame/adapter/EndGameSlotListAdapter;

    .line 37
    .line 38
    .line 39
    move-result-object v1

    .line 40
    invoke-virtual {v0, v1}, Lcom/join/android/app/component/xrecyclerview/XRecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 41
    .line 42
    .line 43
    invoke-virtual {p0}, Lcom/join/kotlin/ui/endgame/EndGameSlotListActivity;->getDataBinding()Lcom/join/android/app/mgsim/wufun/databinding/f1;

    .line 44
    .line 45
    .line 46
    move-result-object v0

    .line 47
    iget-object v0, v0, Lcom/join/android/app/mgsim/wufun/databinding/f1;->d:Lcom/join/android/app/component/xrecyclerview/XRecyclerView;

    .line 48
    .line 49
    const/4 v1, 0x0

    .line 50
    invoke-virtual {v0, v1}, Lcom/join/android/app/component/xrecyclerview/XRecyclerView;->setLoadingMoreEnabled(Z)V

    .line 51
    .line 52
    .line 53
    invoke-virtual {p0}, Lcom/join/kotlin/ui/endgame/EndGameSlotListActivity;->getDataBinding()Lcom/join/android/app/mgsim/wufun/databinding/f1;

    .line 54
    .line 55
    .line 56
    move-result-object v0

    .line 57
    iget-object v0, v0, Lcom/join/android/app/mgsim/wufun/databinding/f1;->d:Lcom/join/android/app/component/xrecyclerview/XRecyclerView;

    .line 58
    .line 59
    invoke-virtual {v0, v1}, Lcom/join/android/app/component/xrecyclerview/XRecyclerView;->setPullRefreshEnabled(Z)V

    .line 60
    .line 61
    .line 62
    invoke-virtual {p0}, Lcom/join/kotlin/ui/endgame/EndGameSlotListActivity;->getDataBinding()Lcom/join/android/app/mgsim/wufun/databinding/f1;

    .line 63
    .line 64
    .line 65
    move-result-object v0

    .line 66
    iget-object v0, v0, Lcom/join/android/app/mgsim/wufun/databinding/f1;->d:Lcom/join/android/app/component/xrecyclerview/XRecyclerView;

    .line 67
    .line 68
    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView;->getItemAnimator()Landroidx/recyclerview/widget/RecyclerView$ItemAnimator;

    .line 69
    .line 70
    .line 71
    move-result-object v0

    .line 72
    const-string v2, "null cannot be cast to non-null type androidx.recyclerview.widget.SimpleItemAnimator"

    .line 73
    .line 74
    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 75
    .line 76
    .line 77
    check-cast v0, Landroidx/recyclerview/widget/SimpleItemAnimator;

    .line 78
    .line 79
    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/SimpleItemAnimator;->setSupportsChangeAnimations(Z)V

    .line 80
    .line 81
    .line 82
    invoke-virtual {p0}, Lcom/join/kotlin/ui/endgame/EndGameSlotListActivity;->getViewModle()Lcom/join/kotlin/ui/endgame/EndGameSlotViewModel;

    .line 83
    .line 84
    .line 85
    move-result-object v0

    .line 86
    invoke-virtual {v0}, Lcom/join/kotlin/ui/endgame/EndGameSlotViewModel;->getListArchive()Landroidx/lifecycle/MutableLiveData;

    .line 87
    .line 88
    .line 89
    move-result-object v0

    .line 90
    new-instance v2, Lcom/join/kotlin/ui/endgame/a;

    .line 91
    .line 92
    invoke-direct {v2, p0}, Lcom/join/kotlin/ui/endgame/a;-><init>(Lcom/join/kotlin/ui/endgame/EndGameSlotListActivity;)V

    .line 93
    .line 94
    .line 95
    new-instance v3, Lcom/join/kotlin/ui/endgame/EndGameSlotListActivity$sam$androidx_lifecycle_Observer$0;

    .line 96
    .line 97
    invoke-direct {v3, v2}, Lcom/join/kotlin/ui/endgame/EndGameSlotListActivity$sam$androidx_lifecycle_Observer$0;-><init>(Lkotlin/jvm/functions/Function1;)V

    .line 98
    .line 99
    .line 100
    invoke-virtual {v0, p0, v3}, Landroidx/lifecycle/LiveData;->observe(Landroidx/lifecycle/LifecycleOwner;Landroidx/lifecycle/Observer;)V

    .line 101
    .line 102
    .line 103
    invoke-static {p0}, Lcom/join/mgps/Util/AccountUtil_;->getInstance_(Landroid/content/Context;)Lcom/join/mgps/Util/AccountUtil_;

    .line 104
    .line 105
    .line 106
    move-result-object v0

    .line 107
    invoke-virtual {v0}, Lcom/join/mgps/Util/b;->getAccountData()Lcom/wufan/user/service/protobuf/UserInfo;

    .line 108
    .line 109
    .line 110
    move-result-object v0

    .line 111
    const-string v2, "getAccountData(...)"

    .line 112
    .line 113
    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 114
    .line 115
    .line 116
    invoke-virtual {v0}, Lcom/wufan/user/service/protobuf/UserInfo;->getToken()Ljava/lang/String;

    .line 117
    .line 118
    .line 119
    move-result-object v0

    .line 120
    invoke-static {v0}, Lcom/join/mgps/Util/t2;->h(Ljava/lang/String;)Z

    .line 121
    .line 122
    .line 123
    move-result v0

    .line 124
    if-nez v0, :cond_0

    .line 125
    .line 126
    invoke-static {p0}, Lcom/join/mgps/Util/AccountUtil_;->getInstance_(Landroid/content/Context;)Lcom/join/mgps/Util/AccountUtil_;

    .line 127
    .line 128
    .line 129
    move-result-object v0

    .line 130
    invoke-virtual {v0}, Lcom/join/mgps/Util/b;->isTourist()Z

    .line 131
    .line 132
    .line 133
    move-result v0

    .line 134
    if-nez v0, :cond_0

    .line 135
    .line 136
    const/4 v1, 0x1

    .line 137
    :cond_0
    iput-boolean v1, p0, Lcom/join/kotlin/ui/endgame/EndGameSlotListActivity;->isLogin:Z

    .line 138
    .line 139
    invoke-virtual {p0}, Lcom/join/kotlin/ui/endgame/EndGameSlotListActivity;->loadData()V

    .line 140
    .line 141
    .line 142
    invoke-virtual {p0}, Lcom/join/kotlin/ui/endgame/EndGameSlotListActivity;->getDataBinding()Lcom/join/android/app/mgsim/wufun/databinding/f1;

    .line 143
    .line 144
    .line 145
    move-result-object v0

    .line 146
    invoke-virtual {v0, p0}, Lcom/join/android/app/mgsim/wufun/databinding/f1;->C(Lcom/join/kotlin/ui/endgame/ISlotListener;)V

    .line 147
    .line 148
    .line 149
    invoke-virtual {p0}, Lcom/join/kotlin/ui/endgame/EndGameSlotListActivity;->getAdapterx()Lcom/join/kotlin/ui/endgame/adapter/EndGameSlotListAdapter;

    .line 150
    .line 151
    .line 152
    move-result-object v0

    .line 153
    invoke-virtual {v0}, Lcom/join/kotlin/ui/endgame/adapter/EndGameSlotListAdapter;->getCheckedItem()Landroidx/lifecycle/MutableLiveData;

    .line 154
    .line 155
    .line 156
    move-result-object v0

    .line 157
    new-instance v1, Lcom/join/kotlin/ui/endgame/b;

    .line 158
    .line 159
    invoke-direct {v1, p0}, Lcom/join/kotlin/ui/endgame/b;-><init>(Lcom/join/kotlin/ui/endgame/EndGameSlotListActivity;)V

    .line 160
    .line 161
    .line 162
    new-instance v2, Lcom/join/kotlin/ui/endgame/EndGameSlotListActivity$sam$androidx_lifecycle_Observer$0;

    .line 163
    .line 164
    invoke-direct {v2, v1}, Lcom/join/kotlin/ui/endgame/EndGameSlotListActivity$sam$androidx_lifecycle_Observer$0;-><init>(Lkotlin/jvm/functions/Function1;)V

    .line 165
    .line 166
    .line 167
    invoke-virtual {v0, p0, v2}, Landroidx/lifecycle/LiveData;->observe(Landroidx/lifecycle/LifecycleOwner;Landroidx/lifecycle/Observer;)V

    .line 168
    .line 169
    .line 170
    return-void
.end method

.method public final isLogin()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/join/kotlin/ui/endgame/EndGameSlotListActivity;->isLogin:Z

    .line 2
    .line 3
    return v0
.end method

.method public final loadData()V
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/join/kotlin/ui/endgame/EndGameSlotListActivity;->getViewModle()Lcom/join/kotlin/ui/endgame/EndGameSlotViewModel;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0}, Lcom/join/kotlin/ui/endgame/EndGameSlotViewModel;->loadLocalArchiveData()V

    .line 6
    .line 7
    .line 8
    return-void
.end method

.method public onBack()V
    .locals 0

    .line 1
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public onClickReload()V
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/join/kotlin/ui/endgame/EndGameSlotListActivity;->loadData()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public onClickSetNetWork()V
    .locals 0

    .line 1
    invoke-static {p0}, Lcom/join/mgps/Util/UtilsMy;->N3(Landroid/content/Context;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public onCommit()V
    .locals 3

    .line 1
    new-instance v0, Landroid/content/Intent;

    .line 2
    .line 3
    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p0}, Lcom/join/kotlin/ui/endgame/EndGameSlotListActivity;->getAdapterx()Lcom/join/kotlin/ui/endgame/adapter/EndGameSlotListAdapter;

    .line 7
    .line 8
    .line 9
    move-result-object v1

    .line 10
    invoke-virtual {v1}, Lcom/join/kotlin/ui/endgame/adapter/EndGameSlotListAdapter;->getCheckedItem()Landroidx/lifecycle/MutableLiveData;

    .line 11
    .line 12
    .line 13
    move-result-object v1

    .line 14
    invoke-virtual {v1}, Landroidx/lifecycle/LiveData;->getValue()Ljava/lang/Object;

    .line 15
    .line 16
    .line 17
    move-result-object v1

    .line 18
    check-cast v1, Ljava/io/Serializable;

    .line 19
    .line 20
    const-string v2, "mData"

    .line 21
    .line 22
    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 23
    .line 24
    .line 25
    const/4 v1, -0x1

    .line 26
    invoke-virtual {p0, v1, v0}, Landroid/app/Activity;->setResult(ILandroid/content/Intent;)V

    .line 27
    .line 28
    .line 29
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    .line 30
    .line 31
    .line 32
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 3
    .param p1    # Landroid/os/Bundle;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    invoke-super {p0, p1}, Lcom/BaseAppCompatActivity;->onCreate(Landroid/os/Bundle;)V

    .line 2
    .line 3
    .line 4
    invoke-virtual {p0}, Lcom/join/kotlin/ui/endgame/EndGameSlotListActivity;->getViewModle()Lcom/join/kotlin/ui/endgame/EndGameSlotViewModel;

    .line 5
    .line 6
    .line 7
    move-result-object p1

    .line 8
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    const-string v1, "gameId"

    .line 13
    .line 14
    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    .line 15
    .line 16
    .line 17
    move-result-object v0

    .line 18
    if-nez v0, :cond_0

    .line 19
    .line 20
    const-string v0, ""

    .line 21
    .line 22
    :cond_0
    invoke-virtual {p1, v0}, Lcom/join/kotlin/ui/endgame/EndGameSlotViewModel;->setGameId(Ljava/lang/String;)V

    .line 23
    .line 24
    .line 25
    invoke-virtual {p0}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    .line 26
    .line 27
    .line 28
    move-result-object p1

    .line 29
    const/4 v0, 0x0

    .line 30
    const/4 v1, 0x0

    .line 31
    const v2, 0x7f0d004d

    .line 32
    .line 33
    .line 34
    invoke-static {p1, v2, v0, v1}, Landroidx/databinding/DataBindingUtil;->inflate(Landroid/view/LayoutInflater;ILandroid/view/ViewGroup;Z)Landroidx/databinding/ViewDataBinding;

    .line 35
    .line 36
    .line 37
    move-result-object p1

    .line 38
    check-cast p1, Lcom/join/android/app/mgsim/wufun/databinding/f1;

    .line 39
    .line 40
    invoke-virtual {p0, p1}, Lcom/join/kotlin/ui/endgame/EndGameSlotListActivity;->setDataBinding(Lcom/join/android/app/mgsim/wufun/databinding/f1;)V

    .line 41
    .line 42
    .line 43
    invoke-virtual {p0}, Lcom/join/kotlin/ui/endgame/EndGameSlotListActivity;->getDataBinding()Lcom/join/android/app/mgsim/wufun/databinding/f1;

    .line 44
    .line 45
    .line 46
    move-result-object p1

    .line 47
    invoke-virtual {p1}, Landroidx/databinding/ViewDataBinding;->getRoot()Landroid/view/View;

    .line 48
    .line 49
    .line 50
    move-result-object p1

    .line 51
    invoke-virtual {p0, p1}, Lcom/BaseAppCompatActivity;->setContentView(Landroid/view/View;)V

    .line 52
    .line 53
    .line 54
    invoke-virtual {p0}, Lcom/join/kotlin/ui/endgame/EndGameSlotListActivity;->initData()V

    .line 55
    .line 56
    .line 57
    invoke-virtual {p0}, Lcom/join/kotlin/ui/endgame/EndGameSlotListActivity;->getDataBinding()Lcom/join/android/app/mgsim/wufun/databinding/f1;

    .line 58
    .line 59
    .line 60
    move-result-object p1

    .line 61
    if-eqz p1, :cond_1

    .line 62
    .line 63
    invoke-virtual {p1}, Landroidx/databinding/ViewDataBinding;->getRoot()Landroid/view/View;

    .line 64
    .line 65
    .line 66
    move-result-object p1

    .line 67
    if-eqz p1, :cond_1

    .line 68
    .line 69
    const v0, 0x7f08009c

    .line 70
    .line 71
    .line 72
    invoke-virtual {p1, v0}, Landroid/view/View;->setBackgroundResource(I)V

    .line 73
    .line 74
    .line 75
    :cond_1
    return-void
.end method

.method public final setDataBinding(Lcom/join/android/app/mgsim/wufun/databinding/f1;)V
    .locals 1
    .param p1    # Lcom/join/android/app/mgsim/wufun/databinding/f1;
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
    iput-object p1, p0, Lcom/join/kotlin/ui/endgame/EndGameSlotListActivity;->dataBinding:Lcom/join/android/app/mgsim/wufun/databinding/f1;

    .line 7
    .line 8
    return-void
.end method

.method public final setLogin(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/join/kotlin/ui/endgame/EndGameSlotListActivity;->isLogin:Z

    .line 2
    .line 3
    return-void
.end method

.method public final setMListener(Lcom/join/kotlin/ui/cloudarchive/IOnRunListener;)V
    .locals 0
    .param p1    # Lcom/join/kotlin/ui/cloudarchive/IOnRunListener;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    iput-object p1, p0, Lcom/join/kotlin/ui/endgame/EndGameSlotListActivity;->mListener:Lcom/join/kotlin/ui/cloudarchive/IOnRunListener;

    .line 2
    .line 3
    return-void
.end method
