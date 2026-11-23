.class public final Lcom/join/kotlin/ui/coupon/CouponListActivity;
.super Lcom/BaseAppCompatActivity;
.source "SourceFile"

# interfaces
.implements Lcom/join/kotlin/ui/coupon/ClickProxy;
.implements Lcom/join/kotlin/domain/common/LoadBindClickProxy;


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nCouponListActivity.kt\nKotlin\n*S Kotlin\n*F\n+ 1 CouponListActivity.kt\ncom/join/kotlin/ui/coupon/CouponListActivity\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,138:1\n774#2:139\n865#2,2:140\n1869#2,2:142\n*S KotlinDebug\n*F\n+ 1 CouponListActivity.kt\ncom/join/kotlin/ui/coupon/CouponListActivity\n*L\n56#1:139\n56#1:140,2\n56#1:142,2\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000R\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0010\u000e\n\u0002\u0008\u0005\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0008\n\u0002\u0008\u0007\u0018\u00002\u00020\u00012\u00020\u00022\u00020\u0003B\u0007\u00a2\u0006\u0004\u0008\u0004\u0010\u0005J\u0012\u0010 \u001a\u00020!2\u0008\u0010\"\u001a\u0004\u0018\u00010#H\u0014J\u000e\u0010$\u001a\u00020!2\u0006\u0010%\u001a\u00020&J\u0010\u0010\'\u001a\u00020!2\u0006\u0010(\u001a\u00020\u0014H\u0016J\u0008\u0010)\u001a\u00020!H\u0016J\u0010\u0010*\u001a\u00020!2\u0006\u0010(\u001a\u00020\u0014H\u0016J\u0008\u0010+\u001a\u00020!H\u0016J\u0008\u0010,\u001a\u00020!H\u0016R\u001a\u0010\u0006\u001a\u00020\u0007X\u0086.\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0008\u0010\t\"\u0004\u0008\n\u0010\u000bR\u001a\u0010\u000c\u001a\u00020\rX\u0086.\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u000e\u0010\u000f\"\u0004\u0008\u0010\u0010\u0011R*\u0010\u0012\u001a\u0012\u0012\u0004\u0012\u00020\u00140\u0013j\u0008\u0012\u0004\u0012\u00020\u0014`\u0015X\u0086.\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0016\u0010\u0017\"\u0004\u0008\u0018\u0010\u0019R\u001a\u0010\u001a\u001a\u00020\u001bX\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u001c\u0010\u001d\"\u0004\u0008\u001e\u0010\u001f\u00a8\u0006-"
    }
    d2 = {
        "Lcom/join/kotlin/ui/coupon/CouponListActivity;",
        "Lcom/BaseAppCompatActivity;",
        "Lcom/join/kotlin/ui/coupon/ClickProxy;",
        "Lcom/join/kotlin/domain/common/LoadBindClickProxy;",
        "<init>",
        "()V",
        "couponViewModle",
        "Lcom/join/kotlin/ui/coupon/CouponViewModle;",
        "getCouponViewModle",
        "()Lcom/join/kotlin/ui/coupon/CouponViewModle;",
        "setCouponViewModle",
        "(Lcom/join/kotlin/ui/coupon/CouponViewModle;)V",
        "viewdataBinding",
        "Lcom/join/android/app/mgsim/wufun/databinding/ActivityCouponlistActivityBinding;",
        "getViewdataBinding",
        "()Lcom/join/android/app/mgsim/wufun/databinding/ActivityCouponlistActivityBinding;",
        "setViewdataBinding",
        "(Lcom/join/android/app/mgsim/wufun/databinding/ActivityCouponlistActivityBinding;)V",
        "datas",
        "Ljava/util/ArrayList;",
        "Lcom/join/mgps/dto/BTGameCouponBean;",
        "Lkotlin/collections/ArrayList;",
        "getDatas",
        "()Ljava/util/ArrayList;",
        "setDatas",
        "(Ljava/util/ArrayList;)V",
        "gameId",
        "",
        "getGameId",
        "()Ljava/lang/String;",
        "setGameId",
        "(Ljava/lang/String;)V",
        "onCreate",
        "",
        "savedInstanceState",
        "Landroid/os/Bundle;",
        "loadData",
        "page",
        "",
        "onClickGet",
        "data",
        "onClickBack",
        "onClickMore",
        "onClickReload",
        "onClickSetNetWork",
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
        "SMAP\nCouponListActivity.kt\nKotlin\n*S Kotlin\n*F\n+ 1 CouponListActivity.kt\ncom/join/kotlin/ui/coupon/CouponListActivity\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,138:1\n774#2:139\n865#2,2:140\n1869#2,2:142\n*S KotlinDebug\n*F\n+ 1 CouponListActivity.kt\ncom/join/kotlin/ui/coupon/CouponListActivity\n*L\n56#1:139\n56#1:140,2\n56#1:142,2\n*E\n"
    }
.end annotation


# instance fields
.field public couponViewModle:Lcom/join/kotlin/ui/coupon/CouponViewModle;

.field public datas:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/join/mgps/dto/BTGameCouponBean;",
            ">;"
        }
    .end annotation
.end field

.field private gameId:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public viewdataBinding:Lcom/join/android/app/mgsim/wufun/databinding/d0;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/BaseAppCompatActivity;-><init>()V

    .line 2
    .line 3
    .line 4
    const-string v0, ""

    .line 5
    .line 6
    iput-object v0, p0, Lcom/join/kotlin/ui/coupon/CouponListActivity;->gameId:Ljava/lang/String;

    .line 7
    .line 8
    return-void
.end method

.method public static synthetic j(Lcom/join/kotlin/ui/coupon/CouponListActivity;Lcom/join/mgps/dto/ResponseModel;)Lkotlin/Unit;
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lcom/join/kotlin/ui/coupon/CouponListActivity;->onCreate$lambda$4(Lcom/join/kotlin/ui/coupon/CouponListActivity;Lcom/join/mgps/dto/ResponseModel;)Lkotlin/Unit;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic k(Lcom/join/kotlin/ui/coupon/CouponListActivity;Lcom/join/mgps/dto/ResponseModel;)Lkotlin/Unit;
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lcom/join/kotlin/ui/coupon/CouponListActivity;->onCreate$lambda$3(Lcom/join/kotlin/ui/coupon/CouponListActivity;Lcom/join/mgps/dto/ResponseModel;)Lkotlin/Unit;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic l(Lcom/join/kotlin/ui/coupon/CouponListActivity;Ljava/util/ArrayList;)Lkotlin/Unit;
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lcom/join/kotlin/ui/coupon/CouponListActivity;->onCreate$lambda$0(Lcom/join/kotlin/ui/coupon/CouponListActivity;Ljava/util/ArrayList;)Lkotlin/Unit;

    move-result-object p0

    return-object p0
.end method

.method private static final onCreate$lambda$0(Lcom/join/kotlin/ui/coupon/CouponListActivity;Ljava/util/ArrayList;)Lkotlin/Unit;
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/join/kotlin/ui/coupon/CouponListActivity;->getViewdataBinding()Lcom/join/android/app/mgsim/wufun/databinding/d0;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    iget-object p0, p0, Lcom/join/android/app/mgsim/wufun/databinding/d0;->c:Landroidx/recyclerview/widget/RecyclerView;

    .line 6
    .line 7
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView;->getAdapter()Landroidx/recyclerview/widget/RecyclerView$Adapter;

    .line 8
    .line 9
    .line 10
    move-result-object p0

    .line 11
    if-eqz p0, :cond_0

    .line 12
    .line 13
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    .line 14
    .line 15
    .line 16
    :cond_0
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 17
    .line 18
    return-object p0
.end method

.method private static final onCreate$lambda$3(Lcom/join/kotlin/ui/coupon/CouponListActivity;Lcom/join/mgps/dto/ResponseModel;)Lkotlin/Unit;
    .locals 6

    .line 1
    const/4 v0, 0x0

    .line 2
    if-eqz p1, :cond_0

    .line 3
    .line 4
    invoke-virtual {p1}, Lcom/join/mgps/dto/ResponseModel;->getCode()I

    .line 5
    .line 6
    .line 7
    move-result v1

    .line 8
    const/16 v2, 0xc8

    .line 9
    .line 10
    if-ne v1, v2, :cond_0

    .line 11
    .line 12
    const/4 v1, 0x1

    .line 13
    goto :goto_0

    .line 14
    :cond_0
    const/4 v1, 0x0

    .line 15
    :goto_0
    if-eqz v1, :cond_4

    .line 16
    .line 17
    invoke-virtual {p1}, Lcom/join/mgps/dto/ResponseModel;->getData()Ljava/lang/Object;

    .line 18
    .line 19
    .line 20
    move-result-object p1

    .line 21
    const-string v1, "null cannot be cast to non-null type com.join.kotlin.ui.coupon.CouponRequest"

    .line 22
    .line 23
    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 24
    .line 25
    .line 26
    check-cast p1, Lcom/join/kotlin/ui/coupon/CouponRequest;

    .line 27
    .line 28
    invoke-virtual {p0}, Lcom/join/kotlin/ui/coupon/CouponListActivity;->getDatas()Ljava/util/ArrayList;

    .line 29
    .line 30
    .line 31
    move-result-object v1

    .line 32
    new-instance v2, Ljava/util/ArrayList;

    .line 33
    .line 34
    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 35
    .line 36
    .line 37
    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 38
    .line 39
    .line 40
    move-result-object v1

    .line 41
    :cond_1
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 42
    .line 43
    .line 44
    move-result v3

    .line 45
    if-eqz v3, :cond_2

    .line 46
    .line 47
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 48
    .line 49
    .line 50
    move-result-object v3

    .line 51
    move-object v4, v3

    .line 52
    check-cast v4, Lcom/join/mgps/dto/BTGameCouponBean;

    .line 53
    .line 54
    invoke-virtual {v4}, Lcom/join/mgps/dto/BTGameCouponBean;->getCoupon_id()Ljava/lang/String;

    .line 55
    .line 56
    .line 57
    move-result-object v4

    .line 58
    iget-object v5, p1, Lcom/join/kotlin/ui/coupon/CouponRequest;->couponId:Ljava/lang/String;

    .line 59
    .line 60
    invoke-static {v4, v5}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 61
    .line 62
    .line 63
    move-result v4

    .line 64
    if-eqz v4, :cond_1

    .line 65
    .line 66
    invoke-interface {v2, v3}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 67
    .line 68
    .line 69
    goto :goto_1

    .line 70
    :cond_2
    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 71
    .line 72
    .line 73
    move-result-object p1

    .line 74
    :goto_2
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 75
    .line 76
    .line 77
    move-result v1

    .line 78
    if-eqz v1, :cond_3

    .line 79
    .line 80
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 81
    .line 82
    .line 83
    move-result-object v1

    .line 84
    check-cast v1, Lcom/join/mgps/dto/BTGameCouponBean;

    .line 85
    .line 86
    invoke-virtual {v1, v0}, Lcom/join/mgps/dto/BTGameCouponBean;->setReceivable(Z)V

    .line 87
    .line 88
    .line 89
    goto :goto_2

    .line 90
    :cond_3
    invoke-virtual {p0}, Lcom/join/kotlin/ui/coupon/CouponListActivity;->getViewdataBinding()Lcom/join/android/app/mgsim/wufun/databinding/d0;

    .line 91
    .line 92
    .line 93
    move-result-object p0

    .line 94
    iget-object p0, p0, Lcom/join/android/app/mgsim/wufun/databinding/d0;->c:Landroidx/recyclerview/widget/RecyclerView;

    .line 95
    .line 96
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView;->getAdapter()Landroidx/recyclerview/widget/RecyclerView$Adapter;

    .line 97
    .line 98
    .line 99
    move-result-object p0

    .line 100
    if-eqz p0, :cond_6

    .line 101
    .line 102
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    .line 103
    .line 104
    .line 105
    goto :goto_4

    .line 106
    :cond_4
    invoke-static {p0}, Lcom/join/mgps/Util/a3;->b(Landroid/content/Context;)Lcom/join/mgps/Util/a3;

    .line 107
    .line 108
    .line 109
    move-result-object p0

    .line 110
    if-eqz p1, :cond_5

    .line 111
    .line 112
    invoke-virtual {p1}, Lcom/join/mgps/dto/ResponseModel;->getMessage()Ljava/lang/String;

    .line 113
    .line 114
    .line 115
    move-result-object p1

    .line 116
    goto :goto_3

    .line 117
    :cond_5
    const/4 p1, 0x0

    .line 118
    :goto_3
    invoke-virtual {p0, p1}, Lcom/join/mgps/Util/a3;->d(Ljava/lang/String;)V

    .line 119
    .line 120
    .line 121
    :cond_6
    :goto_4
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 122
    .line 123
    return-object p0
.end method

.method private static final onCreate$lambda$4(Lcom/join/kotlin/ui/coupon/CouponListActivity;Lcom/join/mgps/dto/ResponseModel;)Lkotlin/Unit;
    .locals 3

    .line 1
    const/4 v0, 0x0

    .line 2
    if-eqz p1, :cond_0

    .line 3
    .line 4
    invoke-virtual {p1}, Lcom/join/mgps/dto/ResponseModel;->getCode()I

    .line 5
    .line 6
    .line 7
    move-result v1

    .line 8
    const/16 v2, 0xc8

    .line 9
    .line 10
    if-ne v1, v2, :cond_0

    .line 11
    .line 12
    const/4 v1, 0x1

    .line 13
    goto :goto_0

    .line 14
    :cond_0
    const/4 v1, 0x0

    .line 15
    :goto_0
    if-eqz v1, :cond_2

    .line 16
    .line 17
    invoke-virtual {p0}, Lcom/join/kotlin/ui/coupon/CouponListActivity;->getCouponViewModle()Lcom/join/kotlin/ui/coupon/CouponViewModle;

    .line 18
    .line 19
    .line 20
    move-result-object v1

    .line 21
    invoke-virtual {v1}, Lcom/join/kotlin/ui/coupon/CouponViewModle;->getDatas()Landroidx/lifecycle/MutableLiveData;

    .line 22
    .line 23
    .line 24
    move-result-object v1

    .line 25
    invoke-virtual {v1}, Landroidx/lifecycle/LiveData;->getValue()Ljava/lang/Object;

    .line 26
    .line 27
    .line 28
    move-result-object v1

    .line 29
    check-cast v1, Ljava/util/ArrayList;

    .line 30
    .line 31
    if-eqz v1, :cond_1

    .line 32
    .line 33
    invoke-virtual {p1}, Lcom/join/mgps/dto/ResponseModel;->getData()Ljava/lang/Object;

    .line 34
    .line 35
    .line 36
    move-result-object p1

    .line 37
    check-cast p1, Lcom/join/kotlin/ui/coupon/CouponListMainData;

    .line 38
    .line 39
    invoke-virtual {p1}, Lcom/join/kotlin/ui/coupon/CouponListMainData;->getGame_coupon_for_bt_game()Ljava/util/ArrayList;

    .line 40
    .line 41
    .line 42
    move-result-object p1

    .line 43
    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 44
    .line 45
    .line 46
    :cond_1
    invoke-virtual {p0}, Lcom/join/kotlin/ui/coupon/CouponListActivity;->getViewdataBinding()Lcom/join/android/app/mgsim/wufun/databinding/d0;

    .line 47
    .line 48
    .line 49
    move-result-object p1

    .line 50
    iget-object p1, p1, Lcom/join/android/app/mgsim/wufun/databinding/d0;->c:Landroidx/recyclerview/widget/RecyclerView;

    .line 51
    .line 52
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView;->getAdapter()Landroidx/recyclerview/widget/RecyclerView$Adapter;

    .line 53
    .line 54
    .line 55
    move-result-object p1

    .line 56
    if-eqz p1, :cond_4

    .line 57
    .line 58
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    .line 59
    .line 60
    .line 61
    goto :goto_2

    .line 62
    :cond_2
    invoke-static {p0}, Lcom/join/mgps/Util/a3;->b(Landroid/content/Context;)Lcom/join/mgps/Util/a3;

    .line 63
    .line 64
    .line 65
    move-result-object v1

    .line 66
    if-eqz p1, :cond_3

    .line 67
    .line 68
    invoke-virtual {p1}, Lcom/join/mgps/dto/ResponseModel;->getMessage()Ljava/lang/String;

    .line 69
    .line 70
    .line 71
    move-result-object p1

    .line 72
    goto :goto_1

    .line 73
    :cond_3
    const/4 p1, 0x0

    .line 74
    :goto_1
    invoke-virtual {v1, p1}, Lcom/join/mgps/Util/a3;->d(Ljava/lang/String;)V

    .line 75
    .line 76
    .line 77
    :cond_4
    :goto_2
    invoke-virtual {p0}, Lcom/join/kotlin/ui/coupon/CouponListActivity;->getCouponViewModle()Lcom/join/kotlin/ui/coupon/CouponViewModle;

    .line 78
    .line 79
    .line 80
    move-result-object p0

    .line 81
    invoke-virtual {p0, v0}, Lcom/join/kotlin/ui/coupon/CouponViewModle;->updateShowLoadUI(Z)V

    .line 82
    .line 83
    .line 84
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 85
    .line 86
    return-object p0
.end method


# virtual methods
.method public final getCouponViewModle()Lcom/join/kotlin/ui/coupon/CouponViewModle;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/kotlin/ui/coupon/CouponListActivity;->couponViewModle:Lcom/join/kotlin/ui/coupon/CouponViewModle;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    return-object v0

    .line 6
    :cond_0
    const-string v0, "couponViewModle"

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

.method public final getDatas()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Lcom/join/mgps/dto/BTGameCouponBean;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/kotlin/ui/coupon/CouponListActivity;->datas:Ljava/util/ArrayList;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    return-object v0

    .line 6
    :cond_0
    const-string v0, "datas"

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

.method public final getGameId()Ljava/lang/String;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/kotlin/ui/coupon/CouponListActivity;->gameId:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public final getViewdataBinding()Lcom/join/android/app/mgsim/wufun/databinding/d0;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/kotlin/ui/coupon/CouponListActivity;->viewdataBinding:Lcom/join/android/app/mgsim/wufun/databinding/d0;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    return-object v0

    .line 6
    :cond_0
    const-string v0, "viewdataBinding"

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

.method public final loadData(I)V
    .locals 3

    .line 1
    const/4 v0, 0x1

    .line 2
    if-ne p1, v0, :cond_0

    .line 3
    .line 4
    invoke-virtual {p0}, Lcom/join/kotlin/ui/coupon/CouponListActivity;->getCouponViewModle()Lcom/join/kotlin/ui/coupon/CouponViewModle;

    .line 5
    .line 6
    .line 7
    move-result-object p1

    .line 8
    invoke-virtual {p1}, Lcom/join/kotlin/ui/coupon/CouponViewModle;->getLoadDataBinding()Landroidx/lifecycle/MutableLiveData;

    .line 9
    .line 10
    .line 11
    move-result-object p1

    .line 12
    new-instance v0, Lcom/join/kotlin/domain/common/LoadBindindData;

    .line 13
    .line 14
    const/4 v1, 0x2

    .line 15
    invoke-direct {v0, v1}, Lcom/join/kotlin/domain/common/LoadBindindData;-><init>(I)V

    .line 16
    .line 17
    .line 18
    invoke-virtual {p1, v0}, Landroidx/lifecycle/MutableLiveData;->setValue(Ljava/lang/Object;)V

    .line 19
    .line 20
    .line 21
    :cond_0
    new-instance p1, Lcom/join/mgps/dto/RequestModel;

    .line 22
    .line 23
    invoke-direct {p1}, Lcom/join/mgps/dto/RequestModel;-><init>()V

    .line 24
    .line 25
    .line 26
    invoke-virtual {p1, p0}, Lcom/join/mgps/dto/RequestModel;->setDefault(Landroid/content/Context;)Lcom/join/mgps/dto/RequestModel;

    .line 27
    .line 28
    .line 29
    new-instance v0, Lcom/join/kotlin/ui/coupon/CouponRequest;

    .line 30
    .line 31
    invoke-direct {v0}, Lcom/join/kotlin/ui/coupon/CouponRequest;-><init>()V

    .line 32
    .line 33
    .line 34
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    .line 35
    .line 36
    .line 37
    move-result-object v1

    .line 38
    const-string v2, "gameId"

    .line 39
    .line 40
    invoke-virtual {v1, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    .line 41
    .line 42
    .line 43
    move-result-object v1

    .line 44
    iput-object v1, v0, Lcom/join/kotlin/ui/coupon/CouponRequest;->gameId:Ljava/lang/String;

    .line 45
    .line 46
    invoke-static {p0}, Lcom/join/mgps/Util/AccountUtil_;->getInstance_(Landroid/content/Context;)Lcom/join/mgps/Util/AccountUtil_;

    .line 47
    .line 48
    .line 49
    move-result-object v1

    .line 50
    invoke-virtual {v1}, Lcom/join/mgps/Util/b;->getUid()Ljava/lang/String;

    .line 51
    .line 52
    .line 53
    move-result-object v1

    .line 54
    iput-object v1, v0, Lcom/join/kotlin/ui/coupon/CouponRequest;->uid:Ljava/lang/String;

    .line 55
    .line 56
    invoke-virtual {p1, v0}, Lcom/join/mgps/dto/RequestModel;->setArgs(Ljava/lang/Object;)V

    .line 57
    .line 58
    .line 59
    invoke-static {p0}, Lcom/join/android/app/common/utils/m;->j(Landroid/content/Context;)Z

    .line 60
    .line 61
    .line 62
    move-result v0

    .line 63
    if-eqz v0, :cond_1

    .line 64
    .line 65
    invoke-virtual {p0}, Lcom/join/kotlin/ui/coupon/CouponListActivity;->getCouponViewModle()Lcom/join/kotlin/ui/coupon/CouponViewModle;

    .line 66
    .line 67
    .line 68
    move-result-object v0

    .line 69
    invoke-virtual {v0}, Lcom/join/kotlin/ui/coupon/CouponViewModle;->getRequest()Lcom/join/kotlin/domain/request/CouponRequest;

    .line 70
    .line 71
    .line 72
    move-result-object v0

    .line 73
    invoke-virtual {v0, p1}, Lcom/join/kotlin/domain/request/CouponRequest;->requestCouponListData(Lcom/join/mgps/dto/RequestModel;)V

    .line 74
    .line 75
    .line 76
    goto :goto_0

    .line 77
    :cond_1
    invoke-virtual {p0}, Lcom/join/kotlin/ui/coupon/CouponListActivity;->getCouponViewModle()Lcom/join/kotlin/ui/coupon/CouponViewModle;

    .line 78
    .line 79
    .line 80
    move-result-object p1

    .line 81
    const/4 v0, 0x0

    .line 82
    invoke-virtual {p1, v0}, Lcom/join/kotlin/ui/coupon/CouponViewModle;->updateShowLoadUI(Z)V

    .line 83
    .line 84
    .line 85
    :goto_0
    return-void
.end method

.method public onClickBack()V
    .locals 0

    .line 1
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public onClickGet(Lcom/join/mgps/dto/BTGameCouponBean;)V
    .locals 1
    .param p1    # Lcom/join/mgps/dto/BTGameCouponBean;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    const-string v0, "data"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    new-instance p1, Lcom/join/mgps/dialog/b;

    .line 7
    .line 8
    const v0, 0x7f1301b0

    .line 9
    .line 10
    .line 11
    invoke-direct {p1, p0, v0}, Lcom/join/mgps/dialog/b;-><init>(Landroid/content/Context;I)V

    .line 12
    .line 13
    .line 14
    const/16 v0, 0x8

    .line 15
    .line 16
    invoke-virtual {p1, v0}, Lcom/join/mgps/dialog/b;->e(I)Lcom/join/mgps/dialog/b;

    .line 17
    .line 18
    .line 19
    move-result-object p1

    .line 20
    const-string v0, "\u63d0\u793a"

    .line 21
    .line 22
    invoke-virtual {p1, v0}, Lcom/join/mgps/dialog/b;->k(Ljava/lang/String;)Lcom/join/mgps/dialog/b;

    .line 23
    .line 24
    .line 25
    move-result-object p1

    .line 26
    const-string v0, "\u8bf7\u6fc0\u6d3b\u6e38\u620f\uff0c\u5728\u6e38\u620f\u5185\u9886\u53d6"

    .line 27
    .line 28
    invoke-virtual {p1, v0}, Lcom/join/mgps/dialog/b;->g(Ljava/lang/String;)Lcom/join/mgps/dialog/b;

    .line 29
    .line 30
    .line 31
    move-result-object p1

    .line 32
    const-string v0, "\u77e5\u9053\u4e86"

    .line 33
    .line 34
    invoke-virtual {p1, v0}, Lcom/join/mgps/dialog/b;->j(Ljava/lang/String;)Lcom/join/mgps/dialog/b;

    .line 35
    .line 36
    .line 37
    move-result-object p1

    .line 38
    new-instance v0, Lcom/join/kotlin/ui/coupon/CouponListActivity$onClickGet$1;

    .line 39
    .line 40
    invoke-direct {v0}, Lcom/join/kotlin/ui/coupon/CouponListActivity$onClickGet$1;-><init>()V

    .line 41
    .line 42
    .line 43
    invoke-virtual {p1, v0}, Lcom/join/mgps/dialog/b;->i(Lcom/join/mgps/dialog/b$c;)Lcom/join/mgps/dialog/b;

    .line 44
    .line 45
    .line 46
    move-result-object p1

    .line 47
    invoke-virtual {p1}, Landroid/app/Dialog;->show()V

    .line 48
    .line 49
    .line 50
    return-void
.end method

.method public onClickMore(Lcom/join/mgps/dto/BTGameCouponBean;)V
    .locals 1
    .param p1    # Lcom/join/mgps/dto/BTGameCouponBean;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    const-string v0, "data"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p1}, Lcom/join/mgps/dto/BTGameCouponBean;->isShowDetial()Z

    .line 7
    .line 8
    .line 9
    move-result v0

    .line 10
    xor-int/lit8 v0, v0, 0x1

    .line 11
    .line 12
    invoke-virtual {p1, v0}, Lcom/join/mgps/dto/BTGameCouponBean;->setShowDetial(Z)V

    .line 13
    .line 14
    .line 15
    invoke-virtual {p0}, Lcom/join/kotlin/ui/coupon/CouponListActivity;->getViewdataBinding()Lcom/join/android/app/mgsim/wufun/databinding/d0;

    .line 16
    .line 17
    .line 18
    move-result-object p1

    .line 19
    iget-object p1, p1, Lcom/join/android/app/mgsim/wufun/databinding/d0;->c:Landroidx/recyclerview/widget/RecyclerView;

    .line 20
    .line 21
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView;->getAdapter()Landroidx/recyclerview/widget/RecyclerView$Adapter;

    .line 22
    .line 23
    .line 24
    move-result-object p1

    .line 25
    if-eqz p1, :cond_0

    .line 26
    .line 27
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    .line 28
    .line 29
    .line 30
    :cond_0
    return-void
.end method

.method public onClickReload()V
    .locals 1

    .line 1
    const/4 v0, 0x1

    .line 2
    invoke-virtual {p0, v0}, Lcom/join/kotlin/ui/coupon/CouponListActivity;->loadData(I)V

    .line 3
    .line 4
    .line 5
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
    const p1, 0x7f0d0039

    .line 5
    .line 6
    .line 7
    invoke-static {p0, p1}, Landroidx/databinding/DataBindingUtil;->setContentView(Landroid/app/Activity;I)Landroidx/databinding/ViewDataBinding;

    .line 8
    .line 9
    .line 10
    move-result-object p1

    .line 11
    check-cast p1, Lcom/join/android/app/mgsim/wufun/databinding/d0;

    .line 12
    .line 13
    invoke-virtual {p0, p1}, Lcom/join/kotlin/ui/coupon/CouponListActivity;->setViewdataBinding(Lcom/join/android/app/mgsim/wufun/databinding/d0;)V

    .line 14
    .line 15
    .line 16
    new-instance p1, Landroidx/lifecycle/ViewModelProvider;

    .line 17
    .line 18
    new-instance v0, Landroidx/lifecycle/ViewModelProvider$NewInstanceFactory;

    .line 19
    .line 20
    invoke-direct {v0}, Landroidx/lifecycle/ViewModelProvider$NewInstanceFactory;-><init>()V

    .line 21
    .line 22
    .line 23
    invoke-direct {p1, p0, v0}, Landroidx/lifecycle/ViewModelProvider;-><init>(Landroidx/lifecycle/ViewModelStoreOwner;Landroidx/lifecycle/ViewModelProvider$Factory;)V

    .line 24
    .line 25
    .line 26
    const-class v0, Lcom/join/kotlin/ui/coupon/CouponViewModle;

    .line 27
    .line 28
    invoke-virtual {p1, v0}, Landroidx/lifecycle/ViewModelProvider;->get(Ljava/lang/Class;)Landroidx/lifecycle/ViewModel;

    .line 29
    .line 30
    .line 31
    move-result-object p1

    .line 32
    check-cast p1, Lcom/join/kotlin/ui/coupon/CouponViewModle;

    .line 33
    .line 34
    invoke-virtual {p0, p1}, Lcom/join/kotlin/ui/coupon/CouponListActivity;->setCouponViewModle(Lcom/join/kotlin/ui/coupon/CouponViewModle;)V

    .line 35
    .line 36
    .line 37
    invoke-virtual {p0}, Lcom/join/kotlin/ui/coupon/CouponListActivity;->getViewdataBinding()Lcom/join/android/app/mgsim/wufun/databinding/d0;

    .line 38
    .line 39
    .line 40
    move-result-object p1

    .line 41
    const/16 v0, 0x36

    .line 42
    .line 43
    invoke-virtual {p0}, Lcom/join/kotlin/ui/coupon/CouponListActivity;->getCouponViewModle()Lcom/join/kotlin/ui/coupon/CouponViewModle;

    .line 44
    .line 45
    .line 46
    move-result-object v1

    .line 47
    invoke-virtual {p1, v0, v1}, Landroidx/databinding/ViewDataBinding;->setVariable(ILjava/lang/Object;)Z

    .line 48
    .line 49
    .line 50
    invoke-virtual {p0}, Lcom/join/kotlin/ui/coupon/CouponListActivity;->getViewdataBinding()Lcom/join/android/app/mgsim/wufun/databinding/d0;

    .line 51
    .line 52
    .line 53
    move-result-object p1

    .line 54
    const/16 v0, 0x8

    .line 55
    .line 56
    invoke-virtual {p1, v0, p0}, Landroidx/databinding/ViewDataBinding;->setVariable(ILjava/lang/Object;)Z

    .line 57
    .line 58
    .line 59
    invoke-virtual {p0}, Lcom/join/kotlin/ui/coupon/CouponListActivity;->getViewdataBinding()Lcom/join/android/app/mgsim/wufun/databinding/d0;

    .line 60
    .line 61
    .line 62
    move-result-object p1

    .line 63
    new-instance v0, Lcom/join/kotlin/ui/coupon/CouponAdapterv2;

    .line 64
    .line 65
    invoke-direct {v0, p0, p0}, Lcom/join/kotlin/ui/coupon/CouponAdapterv2;-><init>(Landroid/content/Context;Lcom/join/kotlin/ui/coupon/ClickProxy;)V

    .line 66
    .line 67
    .line 68
    const/4 v1, 0x1

    .line 69
    invoke-virtual {p1, v1, v0}, Landroidx/databinding/ViewDataBinding;->setVariable(ILjava/lang/Object;)Z

    .line 70
    .line 71
    .line 72
    invoke-virtual {p0}, Lcom/join/kotlin/ui/coupon/CouponListActivity;->getViewdataBinding()Lcom/join/android/app/mgsim/wufun/databinding/d0;

    .line 73
    .line 74
    .line 75
    move-result-object p1

    .line 76
    if-eqz p1, :cond_0

    .line 77
    .line 78
    const/16 v0, 0x1e

    .line 79
    .line 80
    invoke-virtual {p1, v0, p0}, Landroidx/databinding/ViewDataBinding;->setVariable(ILjava/lang/Object;)Z

    .line 81
    .line 82
    .line 83
    :cond_0
    invoke-virtual {p0}, Lcom/join/kotlin/ui/coupon/CouponListActivity;->getViewdataBinding()Lcom/join/android/app/mgsim/wufun/databinding/d0;

    .line 84
    .line 85
    .line 86
    move-result-object p1

    .line 87
    invoke-virtual {p1, p0}, Landroidx/databinding/ViewDataBinding;->setLifecycleOwner(Landroidx/lifecycle/LifecycleOwner;)V

    .line 88
    .line 89
    .line 90
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    .line 91
    .line 92
    .line 93
    move-result-object p1

    .line 94
    const-string v0, "gameId"

    .line 95
    .line 96
    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    .line 97
    .line 98
    .line 99
    move-result-object p1

    .line 100
    if-nez p1, :cond_1

    .line 101
    .line 102
    const-string p1, ""

    .line 103
    .line 104
    :cond_1
    iput-object p1, p0, Lcom/join/kotlin/ui/coupon/CouponListActivity;->gameId:Ljava/lang/String;

    .line 105
    .line 106
    invoke-virtual {p0}, Lcom/join/kotlin/ui/coupon/CouponListActivity;->getCouponViewModle()Lcom/join/kotlin/ui/coupon/CouponViewModle;

    .line 107
    .line 108
    .line 109
    move-result-object p1

    .line 110
    invoke-virtual {p1}, Lcom/join/kotlin/ui/coupon/CouponViewModle;->getDatas()Landroidx/lifecycle/MutableLiveData;

    .line 111
    .line 112
    .line 113
    move-result-object p1

    .line 114
    new-instance v0, Lcom/join/kotlin/ui/coupon/a;

    .line 115
    .line 116
    invoke-direct {v0, p0}, Lcom/join/kotlin/ui/coupon/a;-><init>(Lcom/join/kotlin/ui/coupon/CouponListActivity;)V

    .line 117
    .line 118
    .line 119
    new-instance v2, Lcom/join/kotlin/ui/coupon/CouponListActivity$sam$androidx_lifecycle_Observer$0;

    .line 120
    .line 121
    invoke-direct {v2, v0}, Lcom/join/kotlin/ui/coupon/CouponListActivity$sam$androidx_lifecycle_Observer$0;-><init>(Lkotlin/jvm/functions/Function1;)V

    .line 122
    .line 123
    .line 124
    invoke-virtual {p1, p0, v2}, Landroidx/lifecycle/LiveData;->observe(Landroidx/lifecycle/LifecycleOwner;Landroidx/lifecycle/Observer;)V

    .line 125
    .line 126
    .line 127
    new-instance p1, Ljava/util/ArrayList;

    .line 128
    .line 129
    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 130
    .line 131
    .line 132
    invoke-virtual {p0, p1}, Lcom/join/kotlin/ui/coupon/CouponListActivity;->setDatas(Ljava/util/ArrayList;)V

    .line 133
    .line 134
    .line 135
    invoke-virtual {p0}, Lcom/join/kotlin/ui/coupon/CouponListActivity;->getCouponViewModle()Lcom/join/kotlin/ui/coupon/CouponViewModle;

    .line 136
    .line 137
    .line 138
    move-result-object p1

    .line 139
    invoke-virtual {p1}, Lcom/join/kotlin/ui/coupon/CouponViewModle;->getDatas()Landroidx/lifecycle/MutableLiveData;

    .line 140
    .line 141
    .line 142
    move-result-object p1

    .line 143
    invoke-virtual {p0}, Lcom/join/kotlin/ui/coupon/CouponListActivity;->getDatas()Ljava/util/ArrayList;

    .line 144
    .line 145
    .line 146
    move-result-object v0

    .line 147
    invoke-virtual {p1, v0}, Landroidx/lifecycle/MutableLiveData;->setValue(Ljava/lang/Object;)V

    .line 148
    .line 149
    .line 150
    invoke-virtual {p0}, Lcom/join/kotlin/ui/coupon/CouponListActivity;->getCouponViewModle()Lcom/join/kotlin/ui/coupon/CouponViewModle;

    .line 151
    .line 152
    .line 153
    move-result-object p1

    .line 154
    invoke-virtual {p1}, Lcom/join/kotlin/ui/coupon/CouponViewModle;->getRequest()Lcom/join/kotlin/domain/request/CouponRequest;

    .line 155
    .line 156
    .line 157
    move-result-object p1

    .line 158
    invoke-virtual {p1}, Lcom/join/kotlin/domain/request/CouponRequest;->getResultData()Landroidx/lifecycle/MutableLiveData;

    .line 159
    .line 160
    .line 161
    move-result-object p1

    .line 162
    new-instance v0, Lcom/join/kotlin/ui/coupon/b;

    .line 163
    .line 164
    invoke-direct {v0, p0}, Lcom/join/kotlin/ui/coupon/b;-><init>(Lcom/join/kotlin/ui/coupon/CouponListActivity;)V

    .line 165
    .line 166
    .line 167
    new-instance v2, Lcom/join/kotlin/ui/coupon/CouponListActivity$sam$androidx_lifecycle_Observer$0;

    .line 168
    .line 169
    invoke-direct {v2, v0}, Lcom/join/kotlin/ui/coupon/CouponListActivity$sam$androidx_lifecycle_Observer$0;-><init>(Lkotlin/jvm/functions/Function1;)V

    .line 170
    .line 171
    .line 172
    invoke-virtual {p1, p0, v2}, Landroidx/lifecycle/LiveData;->observe(Landroidx/lifecycle/LifecycleOwner;Landroidx/lifecycle/Observer;)V

    .line 173
    .line 174
    .line 175
    invoke-virtual {p0}, Lcom/join/kotlin/ui/coupon/CouponListActivity;->getCouponViewModle()Lcom/join/kotlin/ui/coupon/CouponViewModle;

    .line 176
    .line 177
    .line 178
    move-result-object p1

    .line 179
    invoke-virtual {p1}, Lcom/join/kotlin/ui/coupon/CouponViewModle;->getRequest()Lcom/join/kotlin/domain/request/CouponRequest;

    .line 180
    .line 181
    .line 182
    move-result-object p1

    .line 183
    invoke-virtual {p1}, Lcom/join/kotlin/domain/request/CouponRequest;->getResultCouponListData()Landroidx/lifecycle/MutableLiveData;

    .line 184
    .line 185
    .line 186
    move-result-object p1

    .line 187
    new-instance v0, Lcom/join/kotlin/ui/coupon/c;

    .line 188
    .line 189
    invoke-direct {v0, p0}, Lcom/join/kotlin/ui/coupon/c;-><init>(Lcom/join/kotlin/ui/coupon/CouponListActivity;)V

    .line 190
    .line 191
    .line 192
    new-instance v2, Lcom/join/kotlin/ui/coupon/CouponListActivity$sam$androidx_lifecycle_Observer$0;

    .line 193
    .line 194
    invoke-direct {v2, v0}, Lcom/join/kotlin/ui/coupon/CouponListActivity$sam$androidx_lifecycle_Observer$0;-><init>(Lkotlin/jvm/functions/Function1;)V

    .line 195
    .line 196
    .line 197
    invoke-virtual {p1, p0, v2}, Landroidx/lifecycle/LiveData;->observe(Landroidx/lifecycle/LifecycleOwner;Landroidx/lifecycle/Observer;)V

    .line 198
    .line 199
    .line 200
    invoke-virtual {p0, v1}, Lcom/join/kotlin/ui/coupon/CouponListActivity;->loadData(I)V

    .line 201
    .line 202
    .line 203
    return-void
.end method

.method public final setCouponViewModle(Lcom/join/kotlin/ui/coupon/CouponViewModle;)V
    .locals 1
    .param p1    # Lcom/join/kotlin/ui/coupon/CouponViewModle;
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
    iput-object p1, p0, Lcom/join/kotlin/ui/coupon/CouponListActivity;->couponViewModle:Lcom/join/kotlin/ui/coupon/CouponViewModle;

    .line 7
    .line 8
    return-void
.end method

.method public final setDatas(Ljava/util/ArrayList;)V
    .locals 1
    .param p1    # Ljava/util/ArrayList;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/join/mgps/dto/BTGameCouponBean;",
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
    iput-object p1, p0, Lcom/join/kotlin/ui/coupon/CouponListActivity;->datas:Ljava/util/ArrayList;

    .line 7
    .line 8
    return-void
.end method

.method public final setGameId(Ljava/lang/String;)V
    .locals 1
    .param p1    # Ljava/lang/String;
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
    iput-object p1, p0, Lcom/join/kotlin/ui/coupon/CouponListActivity;->gameId:Ljava/lang/String;

    .line 7
    .line 8
    return-void
.end method

.method public final setViewdataBinding(Lcom/join/android/app/mgsim/wufun/databinding/d0;)V
    .locals 1
    .param p1    # Lcom/join/android/app/mgsim/wufun/databinding/d0;
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
    iput-object p1, p0, Lcom/join/kotlin/ui/coupon/CouponListActivity;->viewdataBinding:Lcom/join/android/app/mgsim/wufun/databinding/d0;

    .line 7
    .line 8
    return-void
.end method
