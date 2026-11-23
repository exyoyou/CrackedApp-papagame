.class public final Lcom/join/kotlin/ui/gameexpress/adapter/GameExpressAdapter;
.super Lcom/chad/library/adapter/base/c;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/join/kotlin/ui/gameexpress/adapter/GameExpressAdapter$Companion;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/chad/library/adapter/base/c<",
        "Lcom/join/kotlin/ui/gameexpress/model/GameExpressMultiItem;",
        ">;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nGameExpressAdapter.kt\nKotlin\n*S Kotlin\n*F\n+ 1 GameExpressAdapter.kt\ncom/join/kotlin/ui/gameexpress/adapter/GameExpressAdapter\n+ 2 BaseMultiItemAdapter.kt\ncom/chad/library/adapter/base/BaseMultiItemAdapter\n+ 3 fake.kt\nkotlin/jvm/internal/FakeKt\n+ 4 GameExpressMultiItem.kt\ncom/join/kotlin/ui/gameexpress/model/GameExpressMultiItem\n*L\n1#1,384:1\n55#2:385\n55#2:386\n55#2:387\n1#3:388\n10#4:389\n*S KotlinDebug\n*F\n+ 1 GameExpressAdapter.kt\ncom/join/kotlin/ui/gameexpress/adapter/GameExpressAdapter\n*L\n50#1:385\n72#1:386\n92#1:387\n138#1:389\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000b\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u000b\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\t\u0018\u0000 (2\u0008\u0012\u0004\u0012\u00020\u00020\u0001:\u0001(B\u0013\u0012\n\u0008\u0002\u0010\u0003\u001a\u0004\u0018\u00010\u0004\u00a2\u0006\u0004\u0008\u0005\u0010\u0006J\u0010\u0010\u0007\u001a\u00020\u00082\u0006\u0010\t\u001a\u00020\nH\u0016J \u0010\u000b\u001a\u00020\u00082\u0006\u0010\t\u001a\u00020\u000c2\u0006\u0010\r\u001a\u00020\u00022\u0008\u0008\u0002\u0010\u000e\u001a\u00020\u000fJ(\u0010\u0010\u001a\u00020\u00082\u0006\u0010\u0011\u001a\u00020\u00122\u0006\u0010\t\u001a\u00020\u000c2\u0006\u0010\u0013\u001a\u00020\u00142\u0006\u0010\r\u001a\u00020\u0002H\u0002J*\u0010\u0015\u001a\u00020\u00082\u0006\u0010\t\u001a\u00020\u000c2\u0006\u0010\u0013\u001a\u00020\u00142\u0008\u0010\u0016\u001a\u0004\u0018\u00010\u00172\u0006\u0010\r\u001a\u00020\u0002H\u0002J8\u0010\u0018\u001a\u00020\u00082\u0006\u0010\u0011\u001a\u00020\u00122\u0006\u0010\u0019\u001a\u00020\u001a2\u0006\u0010\u0013\u001a\u00020\u00142\u0008\u0010\u001b\u001a\u0004\u0018\u00010\u001c2\u000c\u0010\u001d\u001a\u0008\u0012\u0004\u0012\u00020\u00080\u001eH\u0002J\u0018\u0010\u001f\u001a\u00020 2\u0006\u0010\u0019\u001a\u00020\u001a2\u0006\u0010\u0011\u001a\u00020\u0012H\u0002J\u0010\u0010!\u001a\u00020\u00082\u0006\u0010\u0019\u001a\u00020\u001aH\u0002J \u0010\"\u001a\u00020\u00082\u0006\u0010\t\u001a\u00020\u000c2\u0006\u0010\u0013\u001a\u00020\u00142\u0006\u0010\r\u001a\u00020\u0002H\u0002J \u0010#\u001a\u00020\u00082\u0006\u0010\t\u001a\u00020\u000c2\u0006\u0010$\u001a\u00020\u000f2\u0006\u0010%\u001a\u00020\u000fH\u0002J\u0018\u0010&\u001a\u00020\u00082\u0006\u0010\t\u001a\u00020\u000c2\u0006\u0010\u0013\u001a\u00020\u0014H\u0002J\u0018\u0010\'\u001a\u00020\u00082\u0006\u0010\t\u001a\u00020\u000c2\u0006\u0010\u0013\u001a\u00020\u0014H\u0002R\u0010\u0010\u0003\u001a\u0004\u0018\u00010\u0004X\u0082\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006)"
    }
    d2 = {
        "Lcom/join/kotlin/ui/gameexpress/adapter/GameExpressAdapter;",
        "Lcom/chad/library/adapter/base/BaseMultiItemAdapter;",
        "Lcom/join/kotlin/ui/gameexpress/model/GameExpressMultiItem;",
        "videoHelper",
        "Lcom/join/android/app/component/video/RvListVideoHelper;",
        "<init>",
        "(Lcom/join/android/app/component/video/RvListVideoHelper;)V",
        "onViewRecycled",
        "",
        "holder",
        "Landroidx/recyclerview/widget/RecyclerView$ViewHolder;",
        "updateDownloadUi",
        "Lcom/chad/library/adapter/base/viewholder/QuickViewHolder;",
        "item",
        "progressOnly",
        "",
        "bindVideoBanner",
        "context",
        "Landroid/content/Context;",
        "game",
        "Lcom/join/mgps/dto/CommonGameInfoBean;",
        "bindVideoBottomBar",
        "gInfo",
        "Lcom/join/mgps/dto/GInfoBean;",
        "bindVideoInContainer",
        "container",
        "Landroid/widget/FrameLayout;",
        "coverUrl",
        "",
        "onVideoClick",
        "Lkotlin/Function0;",
        "obtainVideoView",
        "Lcom/join/android/app/component/video/MultiStandVideo;",
        "releaseVideoInContainer",
        "bindGame",
        "bindGameTag",
        "isNew",
        "isUpdate",
        "bindGameDownload",
        "applyDownloadProgress",
        "Companion",
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
        "SMAP\nGameExpressAdapter.kt\nKotlin\n*S Kotlin\n*F\n+ 1 GameExpressAdapter.kt\ncom/join/kotlin/ui/gameexpress/adapter/GameExpressAdapter\n+ 2 BaseMultiItemAdapter.kt\ncom/chad/library/adapter/base/BaseMultiItemAdapter\n+ 3 fake.kt\nkotlin/jvm/internal/FakeKt\n+ 4 GameExpressMultiItem.kt\ncom/join/kotlin/ui/gameexpress/model/GameExpressMultiItem\n*L\n1#1,384:1\n55#2:385\n55#2:386\n55#2:387\n1#3:388\n10#4:389\n*S KotlinDebug\n*F\n+ 1 GameExpressAdapter.kt\ncom/join/kotlin/ui/gameexpress/adapter/GameExpressAdapter\n*L\n50#1:385\n72#1:386\n92#1:387\n138#1:389\n*E\n"
    }
.end annotation


# static fields
.field public static final Companion:Lcom/join/kotlin/ui/gameexpress/adapter/GameExpressAdapter$Companion;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final TYPE_GAME:I = 0x3

.field public static final TYPE_TITLE:I = 0x1

.field public static final TYPE_VIDEO_GAME:I = 0x2


# instance fields
.field private final videoHelper:Lcom/join/android/app/component/video/h;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/join/kotlin/ui/gameexpress/adapter/GameExpressAdapter$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/join/kotlin/ui/gameexpress/adapter/GameExpressAdapter$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/join/kotlin/ui/gameexpress/adapter/GameExpressAdapter;->Companion:Lcom/join/kotlin/ui/gameexpress/adapter/GameExpressAdapter$Companion;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 1
    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1, v0}, Lcom/join/kotlin/ui/gameexpress/adapter/GameExpressAdapter;-><init>(Lcom/join/android/app/component/video/h;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(Lcom/join/android/app/component/video/h;)V
    .locals 3
    .param p1    # Lcom/join/android/app/component/video/h;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 3
    invoke-direct {p0, v0, v1, v0}, Lcom/chad/library/adapter/base/c;-><init>(Ljava/util/List;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 4
    iput-object p1, p0, Lcom/join/kotlin/ui/gameexpress/adapter/GameExpressAdapter;->videoHelper:Lcom/join/android/app/component/video/h;

    .line 5
    new-instance p1, Lcom/join/kotlin/ui/gameexpress/adapter/GameExpressAdapter$1;

    invoke-direct {p1}, Lcom/join/kotlin/ui/gameexpress/adapter/GameExpressAdapter$1;-><init>()V

    invoke-virtual {p0, p1}, Lcom/chad/library/adapter/base/c;->onItemViewType(Lcom/chad/library/adapter/base/c$a;)Lcom/chad/library/adapter/base/c;

    move-result-object p1

    .line 6
    new-instance v0, Lcom/join/kotlin/ui/gameexpress/adapter/GameExpressAdapter$2;

    invoke-direct {v0}, Lcom/join/kotlin/ui/gameexpress/adapter/GameExpressAdapter$2;-><init>()V

    .line 7
    const-class v2, Lv2/c;

    invoke-virtual {p1, v1, v2, v0}, Lcom/chad/library/adapter/base/c;->addItemType(ILjava/lang/Class;Lcom/chad/library/adapter/base/c$b;)Lcom/chad/library/adapter/base/c;

    move-result-object p1

    .line 8
    new-instance v0, Lcom/join/kotlin/ui/gameexpress/adapter/GameExpressAdapter$3;

    invoke-direct {v0, p0}, Lcom/join/kotlin/ui/gameexpress/adapter/GameExpressAdapter$3;-><init>(Lcom/join/kotlin/ui/gameexpress/adapter/GameExpressAdapter;)V

    const/4 v1, 0x2

    .line 9
    invoke-virtual {p1, v1, v2, v0}, Lcom/chad/library/adapter/base/c;->addItemType(ILjava/lang/Class;Lcom/chad/library/adapter/base/c$b;)Lcom/chad/library/adapter/base/c;

    move-result-object p1

    .line 10
    new-instance v0, Lcom/join/kotlin/ui/gameexpress/adapter/GameExpressAdapter$4;

    invoke-direct {v0, p0}, Lcom/join/kotlin/ui/gameexpress/adapter/GameExpressAdapter$4;-><init>(Lcom/join/kotlin/ui/gameexpress/adapter/GameExpressAdapter;)V

    const/4 v1, 0x3

    .line 11
    invoke-virtual {p1, v1, v2, v0}, Lcom/chad/library/adapter/base/c;->addItemType(ILjava/lang/Class;Lcom/chad/library/adapter/base/c$b;)Lcom/chad/library/adapter/base/c;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/join/android/app/component/video/h;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    and-int/lit8 p2, p2, 0x1

    if-eqz p2, :cond_0

    const/4 p1, 0x0

    .line 2
    :cond_0
    invoke-direct {p0, p1}, Lcom/join/kotlin/ui/gameexpress/adapter/GameExpressAdapter;-><init>(Lcom/join/android/app/component/video/h;)V

    return-void
.end method

.method public static final synthetic access$bindGame(Lcom/join/kotlin/ui/gameexpress/adapter/GameExpressAdapter;Lv2/c;Lcom/join/mgps/dto/CommonGameInfoBean;Lcom/join/kotlin/ui/gameexpress/model/GameExpressMultiItem;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2, p3}, Lcom/join/kotlin/ui/gameexpress/adapter/GameExpressAdapter;->bindGame(Lv2/c;Lcom/join/mgps/dto/CommonGameInfoBean;Lcom/join/kotlin/ui/gameexpress/model/GameExpressMultiItem;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static final synthetic access$bindGameDownload(Lcom/join/kotlin/ui/gameexpress/adapter/GameExpressAdapter;Lv2/c;Lcom/join/mgps/dto/CommonGameInfoBean;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/join/kotlin/ui/gameexpress/adapter/GameExpressAdapter;->bindGameDownload(Lv2/c;Lcom/join/mgps/dto/CommonGameInfoBean;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static final synthetic access$bindVideoBanner(Lcom/join/kotlin/ui/gameexpress/adapter/GameExpressAdapter;Landroid/content/Context;Lv2/c;Lcom/join/mgps/dto/CommonGameInfoBean;Lcom/join/kotlin/ui/gameexpress/model/GameExpressMultiItem;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/join/kotlin/ui/gameexpress/adapter/GameExpressAdapter;->bindVideoBanner(Landroid/content/Context;Lv2/c;Lcom/join/mgps/dto/CommonGameInfoBean;Lcom/join/kotlin/ui/gameexpress/model/GameExpressMultiItem;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method private final applyDownloadProgress(Lv2/c;Lcom/join/mgps/dto/CommonGameInfoBean;)V
    .locals 1

    .line 1
    sget-object v0, Lcom/join/kotlin/utils/DlTaskManager;->INSTANCE:Lcom/join/kotlin/utils/DlTaskManager;

    .line 2
    .line 3
    invoke-virtual {v0, p2}, Lcom/join/kotlin/utils/DlTaskManager;->getTask(Lcom/join/kotlin/base/impl/Downloadable;)Lcom/github/snowdream/android/app/downloader/DownloadTask;

    .line 4
    .line 5
    .line 6
    move-result-object p2

    .line 7
    if-nez p2, :cond_0

    .line 8
    .line 9
    return-void

    .line 10
    :cond_0
    const v0, 0x7f0a054e

    .line 11
    .line 12
    .line 13
    invoke-virtual {p1, v0}, Lv2/c;->b(I)Landroid/view/View;

    .line 14
    .line 15
    .line 16
    move-result-object p1

    .line 17
    check-cast p1, Lcom/join/mgps/customview/DownloadNormalView;

    .line 18
    .line 19
    if-eqz p1, :cond_1

    .line 20
    .line 21
    invoke-virtual {p1, p2}, Lcom/join/mgps/customview/DownloadNormalView;->d(Lcom/github/snowdream/android/app/downloader/DownloadTask;)V

    .line 22
    .line 23
    .line 24
    :cond_1
    return-void
.end method

.method private final bindGame(Lv2/c;Lcom/join/mgps/dto/CommonGameInfoBean;Lcom/join/kotlin/ui/gameexpress/model/GameExpressMultiItem;)V
    .locals 8

    .line 1
    invoke-virtual {p2}, Lcom/join/mgps/dto/CommonGameInfoBean;->getG_info()Lcom/join/mgps/dto/GInfoBean;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    const v1, 0x7f0a1a3b

    .line 6
    .line 7
    .line 8
    invoke-virtual {p2}, Lcom/join/mgps/dto/CommonGameInfoBean;->getShowName()Ljava/lang/String;

    .line 9
    .line 10
    .line 11
    move-result-object v2

    .line 12
    invoke-virtual {p1, v1, v2}, Lv2/c;->n(ILjava/lang/CharSequence;)Lv2/c;

    .line 13
    .line 14
    .line 15
    const/4 v1, 0x0

    .line 16
    if-eqz v0, :cond_0

    .line 17
    .line 18
    invoke-virtual {v0}, Lcom/join/mgps/dto/GInfoBean;->getInfo()Ljava/lang/String;

    .line 19
    .line 20
    .line 21
    move-result-object v2

    .line 22
    goto :goto_0

    .line 23
    :cond_0
    move-object v2, v1

    .line 24
    :goto_0
    if-nez v2, :cond_1

    .line 25
    .line 26
    const-string v2, ""

    .line 27
    .line 28
    :cond_1
    const v3, 0x7f0a1a3f

    .line 29
    .line 30
    .line 31
    invoke-virtual {p1, v3, v2}, Lv2/c;->n(ILjava/lang/CharSequence;)Lv2/c;

    .line 32
    .line 33
    .line 34
    if-eqz v0, :cond_2

    .line 35
    .line 36
    invoke-virtual {v0}, Lcom/join/mgps/dto/GInfoBean;->getSp_tag_info()Lcom/join/mgps/dto/TipNew;

    .line 37
    .line 38
    .line 39
    move-result-object v2

    .line 40
    goto :goto_1

    .line 41
    :cond_2
    move-object v2, v1

    .line 42
    :goto_1
    if-eqz v0, :cond_3

    .line 43
    .line 44
    invoke-virtual {v0}, Lcom/join/mgps/dto/GInfoBean;->getTag_info()Ljava/util/List;

    .line 45
    .line 46
    .line 47
    move-result-object v3

    .line 48
    goto :goto_2

    .line 49
    :cond_3
    move-object v3, v1

    .line 50
    :goto_2
    const-string v4, " | "

    .line 51
    .line 52
    invoke-static {v2, v3, v4}, Lcom/join/mgps/Util/UtilsMy;->R1(Lcom/join/mgps/dto/TipNew;Ljava/util/List;Ljava/lang/String;)Ljava/lang/String;

    .line 53
    .line 54
    .line 55
    move-result-object v2

    .line 56
    const v3, 0x7f0a1a3d

    .line 57
    .line 58
    .line 59
    invoke-virtual {p1, v3, v2}, Lv2/c;->n(ILjava/lang/CharSequence;)Lv2/c;

    .line 60
    .line 61
    .line 62
    const v2, 0x7f0a1a3c

    .line 63
    .line 64
    .line 65
    invoke-virtual {p2}, Lcom/join/mgps/dto/CommonGameInfoBean;->getShowScore()Ljava/lang/String;

    .line 66
    .line 67
    .line 68
    move-result-object v4

    .line 69
    invoke-virtual {p1, v2, v4}, Lv2/c;->n(ILjava/lang/CharSequence;)Lv2/c;

    .line 70
    .line 71
    .line 72
    const/4 v2, 0x0

    .line 73
    const/4 v4, 0x1

    .line 74
    if-eqz v0, :cond_4

    .line 75
    .line 76
    invoke-virtual {v0}, Lcom/join/mgps/dto/GInfoBean;->getGift_package_switch()I

    .line 77
    .line 78
    .line 79
    move-result v5

    .line 80
    if-ne v5, v4, :cond_4

    .line 81
    .line 82
    const/4 v5, 0x1

    .line 83
    goto :goto_3

    .line 84
    :cond_4
    const/4 v5, 0x0

    .line 85
    :goto_3
    const v6, 0x7f0a09fe

    .line 86
    .line 87
    .line 88
    if-eqz v5, :cond_5

    .line 89
    .line 90
    invoke-virtual {p1, v6, v2}, Lv2/c;->h(IZ)Lv2/c;

    .line 91
    .line 92
    .line 93
    goto :goto_4

    .line 94
    :cond_5
    invoke-virtual {p1, v6, v4}, Lv2/c;->h(IZ)Lv2/c;

    .line 95
    .line 96
    .line 97
    :goto_4
    const v5, 0x7f0a14a2

    .line 98
    .line 99
    .line 100
    invoke-virtual {p1, v5}, Lv2/c;->getView(I)Landroid/view/View;

    .line 101
    .line 102
    .line 103
    move-result-object v5

    .line 104
    check-cast v5, Lcom/facebook/drawee/view/SimpleDraweeView;

    .line 105
    .line 106
    invoke-virtual {p2}, Lcom/join/mgps/dto/CommonGameInfoBean;->getIcon()Ljava/lang/String;

    .line 107
    .line 108
    .line 109
    move-result-object v6

    .line 110
    invoke-static {v5, v6}, Lcom/join/android/app/common/utils/l;->o(Lcom/facebook/drawee/view/SimpleDraweeView;Ljava/lang/String;)V

    .line 111
    .line 112
    .line 113
    if-eqz v0, :cond_6

    .line 114
    .line 115
    invoke-virtual {v0}, Lcom/join/mgps/dto/GInfoBean;->getApp_size()Ljava/lang/String;

    .line 116
    .line 117
    .line 118
    move-result-object v1

    .line 119
    :cond_6
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 120
    .line 121
    .line 122
    move-result v1

    .line 123
    const v5, 0x7f0a1a3e

    .line 124
    .line 125
    .line 126
    if-nez v1, :cond_7

    .line 127
    .line 128
    :try_start_0
    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 129
    .line 130
    .line 131
    invoke-virtual {v0}, Lcom/join/mgps/dto/GInfoBean;->getApp_size()Ljava/lang/String;

    .line 132
    .line 133
    .line 134
    move-result-object v0

    .line 135
    const-string v1, "getApp_size(...)"

    .line 136
    .line 137
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 138
    .line 139
    .line 140
    invoke-static {v0}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    .line 141
    .line 142
    .line 143
    move-result-wide v0

    .line 144
    const/16 v6, 0x400

    .line 145
    .line 146
    int-to-double v6, v6

    .line 147
    mul-double v0, v0, v6

    .line 148
    .line 149
    mul-double v0, v0, v6

    .line 150
    .line 151
    double-to-long v0, v0

    .line 152
    invoke-static {v0, v1}, Lcom/join/mgps/Util/UtilsMy;->c(J)Ljava/lang/String;

    .line 153
    .line 154
    .line 155
    move-result-object v0

    .line 156
    invoke-virtual {p1, v5, v0}, Lv2/c;->n(ILjava/lang/CharSequence;)Lv2/c;

    .line 157
    .line 158
    .line 159
    invoke-virtual {p1, v5, v2}, Lv2/c;->h(IZ)Lv2/c;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 160
    .line 161
    .line 162
    goto :goto_5

    .line 163
    :catch_0
    invoke-virtual {p1, v5, v4}, Lv2/c;->h(IZ)Lv2/c;

    .line 164
    .line 165
    .line 166
    goto :goto_5

    .line 167
    :cond_7
    invoke-virtual {p1, v5, v4}, Lv2/c;->h(IZ)Lv2/c;

    .line 168
    .line 169
    .line 170
    :goto_5
    const v0, 0x7f0a06d8

    .line 171
    .line 172
    .line 173
    invoke-virtual {p2}, Lcom/join/mgps/dto/CommonGameInfoBean;->isH5Game()Z

    .line 174
    .line 175
    .line 176
    move-result v1

    .line 177
    invoke-virtual {p1, v0, v1}, Lv2/c;->h(IZ)Lv2/c;

    .line 178
    .line 179
    .line 180
    invoke-virtual {p2}, Lcom/join/mgps/dto/CommonGameInfoBean;->isH5Game()Z

    .line 181
    .line 182
    .line 183
    move-result v0

    .line 184
    invoke-virtual {p1, v3, v0}, Lv2/c;->h(IZ)Lv2/c;

    .line 185
    .line 186
    .line 187
    invoke-virtual {p2}, Lcom/join/mgps/dto/CommonGameInfoBean;->isH5Game()Z

    .line 188
    .line 189
    .line 190
    move-result p2

    .line 191
    invoke-virtual {p1, v5, p2}, Lv2/c;->h(IZ)Lv2/c;

    .line 192
    .line 193
    .line 194
    invoke-virtual {p3}, Lcom/join/kotlin/ui/gameexpress/model/GameExpressMultiItem;->isNew()Z

    .line 195
    .line 196
    .line 197
    move-result p2

    .line 198
    invoke-virtual {p3}, Lcom/join/kotlin/ui/gameexpress/model/GameExpressMultiItem;->isUpdate()Z

    .line 199
    .line 200
    .line 201
    move-result p3

    .line 202
    invoke-direct {p0, p1, p2, p3}, Lcom/join/kotlin/ui/gameexpress/adapter/GameExpressAdapter;->bindGameTag(Lv2/c;ZZ)V

    .line 203
    .line 204
    .line 205
    return-void
.end method

.method private final bindGameDownload(Lv2/c;Lcom/join/mgps/dto/CommonGameInfoBean;)V
    .locals 2

    .line 1
    const v0, 0x7f0a054e

    .line 2
    .line 3
    .line 4
    invoke-virtual {p1, v0}, Lv2/c;->getView(I)Landroid/view/View;

    .line 5
    .line 6
    .line 7
    move-result-object v0

    .line 8
    check-cast v0, Lcom/join/mgps/customview/DownloadNormalView;

    .line 9
    .line 10
    iget-object p1, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    .line 11
    .line 12
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 13
    .line 14
    .line 15
    move-result-object p1

    .line 16
    new-instance v1, Lcom/join/kotlin/ui/gameexpress/adapter/GameExpressAdapter$bindGameDownload$1;

    .line 17
    .line 18
    invoke-direct {v1, p2, p0, p1}, Lcom/join/kotlin/ui/gameexpress/adapter/GameExpressAdapter$bindGameDownload$1;-><init>(Lcom/join/mgps/dto/CommonGameInfoBean;Lcom/join/kotlin/ui/gameexpress/adapter/GameExpressAdapter;Landroid/content/Context;)V

    .line 19
    .line 20
    .line 21
    invoke-virtual {v0, v1}, Lcom/join/mgps/customview/DownloadNormalView;->f(Lcom/join/mgps/callbacks/f;)V

    .line 22
    .line 23
    .line 24
    return-void
.end method

.method private final bindGameTag(Lv2/c;ZZ)V
    .locals 1

    .line 1
    const v0, 0x7f0a09cf

    .line 2
    .line 3
    .line 4
    invoke-virtual {p1, v0}, Lv2/c;->b(I)Landroid/view/View;

    .line 5
    .line 6
    .line 7
    move-result-object p1

    .line 8
    check-cast p1, Landroid/widget/ImageView;

    .line 9
    .line 10
    if-nez p1, :cond_0

    .line 11
    .line 12
    return-void

    .line 13
    :cond_0
    if-eqz p2, :cond_1

    .line 14
    .line 15
    const p2, 0x7f0808d5

    .line 16
    .line 17
    .line 18
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 19
    .line 20
    .line 21
    move-result-object p2

    .line 22
    goto :goto_0

    .line 23
    :cond_1
    if-eqz p3, :cond_2

    .line 24
    .line 25
    const p2, 0x7f0808d6

    .line 26
    .line 27
    .line 28
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 29
    .line 30
    .line 31
    move-result-object p2

    .line 32
    goto :goto_0

    .line 33
    :cond_2
    const/4 p2, 0x0

    .line 34
    :goto_0
    if-nez p2, :cond_3

    .line 35
    .line 36
    const/16 p2, 0x8

    .line 37
    .line 38
    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 39
    .line 40
    .line 41
    return-void

    .line 42
    :cond_3
    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    .line 43
    .line 44
    .line 45
    move-result p2

    .line 46
    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 47
    .line 48
    .line 49
    const/4 p2, 0x0

    .line 50
    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 51
    .line 52
    .line 53
    return-void
.end method

.method private final bindVideoBanner(Landroid/content/Context;Lv2/c;Lcom/join/mgps/dto/CommonGameInfoBean;Lcom/join/kotlin/ui/gameexpress/model/GameExpressMultiItem;)V
    .locals 8

    .line 1
    invoke-virtual {p3}, Lcom/join/mgps/dto/CommonGameInfoBean;->getG_info()Lcom/join/mgps/dto/GInfoBean;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    new-instance v6, Lcom/join/kotlin/ui/gameexpress/adapter/a;

    .line 6
    .line 7
    invoke-direct {v6, p1, p3}, Lcom/join/kotlin/ui/gameexpress/adapter/a;-><init>(Landroid/content/Context;Lcom/join/mgps/dto/CommonGameInfoBean;)V

    .line 8
    .line 9
    .line 10
    iget-object v1, p2, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    .line 11
    .line 12
    new-instance v2, Lcom/join/kotlin/ui/gameexpress/adapter/b;

    .line 13
    .line 14
    invoke-direct {v2, v6}, Lcom/join/kotlin/ui/gameexpress/adapter/b;-><init>(Lkotlin/jvm/functions/Function0;)V

    .line 15
    .line 16
    .line 17
    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 18
    .line 19
    .line 20
    const v1, 0x7f0a015d

    .line 21
    .line 22
    .line 23
    invoke-virtual {p2, v1}, Lv2/c;->getView(I)Landroid/view/View;

    .line 24
    .line 25
    .line 26
    move-result-object v1

    .line 27
    check-cast v1, Lcom/facebook/drawee/view/SimpleDraweeView;

    .line 28
    .line 29
    const v2, 0x7f0a1b63

    .line 30
    .line 31
    .line 32
    invoke-virtual {p2, v2}, Lv2/c;->getView(I)Landroid/view/View;

    .line 33
    .line 34
    .line 35
    move-result-object v2

    .line 36
    move-object v3, v2

    .line 37
    check-cast v3, Landroid/widget/FrameLayout;

    .line 38
    .line 39
    invoke-virtual {p3}, Lcom/join/mgps/dto/CommonGameInfoBean;->getBig_pic()Ljava/lang/String;

    .line 40
    .line 41
    .line 42
    move-result-object v2

    .line 43
    invoke-static {v2}, Lcom/join/mgps/Util/t2;->i(Ljava/lang/String;)Z

    .line 44
    .line 45
    .line 46
    move-result v2

    .line 47
    if-eqz v2, :cond_0

    .line 48
    .line 49
    invoke-virtual {p3}, Lcom/join/mgps/dto/CommonGameInfoBean;->getBig_pic()Ljava/lang/String;

    .line 50
    .line 51
    .line 52
    move-result-object v2

    .line 53
    goto :goto_0

    .line 54
    :cond_0
    invoke-virtual {p3}, Lcom/join/mgps/dto/CommonGameInfoBean;->getCoverPicUrl()Ljava/lang/String;

    .line 55
    .line 56
    .line 57
    move-result-object v2

    .line 58
    :goto_0
    move-object v7, v2

    .line 59
    invoke-virtual {p3}, Lcom/join/mgps/dto/CommonGameInfoBean;->getV_url()Ljava/lang/String;

    .line 60
    .line 61
    .line 62
    move-result-object v2

    .line 63
    invoke-static {v2}, Lcom/join/mgps/Util/t2;->i(Ljava/lang/String;)Z

    .line 64
    .line 65
    .line 66
    move-result v2

    .line 67
    const/4 v4, 0x0

    .line 68
    const/16 v5, 0x8

    .line 69
    .line 70
    if-eqz v2, :cond_1

    .line 71
    .line 72
    invoke-virtual {v1, v5}, Landroid/view/View;->setVisibility(I)V

    .line 73
    .line 74
    .line 75
    invoke-virtual {v3, v4}, Landroid/view/View;->setVisibility(I)V

    .line 76
    .line 77
    .line 78
    move-object v1, p0

    .line 79
    move-object v2, p1

    .line 80
    move-object v4, p3

    .line 81
    move-object v5, v7

    .line 82
    invoke-direct/range {v1 .. v6}, Lcom/join/kotlin/ui/gameexpress/adapter/GameExpressAdapter;->bindVideoInContainer(Landroid/content/Context;Landroid/widget/FrameLayout;Lcom/join/mgps/dto/CommonGameInfoBean;Ljava/lang/String;Lkotlin/jvm/functions/Function0;)V

    .line 83
    .line 84
    .line 85
    goto :goto_1

    .line 86
    :cond_1
    invoke-direct {p0, v3}, Lcom/join/kotlin/ui/gameexpress/adapter/GameExpressAdapter;->releaseVideoInContainer(Landroid/widget/FrameLayout;)V

    .line 87
    .line 88
    .line 89
    invoke-virtual {v3, v5}, Landroid/view/View;->setVisibility(I)V

    .line 90
    .line 91
    .line 92
    invoke-virtual {v1, v4}, Landroid/view/View;->setVisibility(I)V

    .line 93
    .line 94
    .line 95
    invoke-static {v1, v7}, Lcom/join/android/app/common/utils/l;->o(Lcom/facebook/drawee/view/SimpleDraweeView;Ljava/lang/String;)V

    .line 96
    .line 97
    .line 98
    :goto_1
    if-nez v0, :cond_2

    .line 99
    .line 100
    goto :goto_2

    .line 101
    :cond_2
    invoke-virtual {v0}, Lcom/join/mgps/dto/GInfoBean;->getGif_ico()Ljava/lang/String;

    .line 102
    .line 103
    .line 104
    move-result-object p1

    .line 105
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 106
    .line 107
    .line 108
    move-result p1

    .line 109
    if-eqz p1, :cond_3

    .line 110
    .line 111
    invoke-virtual {v0}, Lcom/join/mgps/dto/GInfoBean;->getIco()Ljava/lang/String;

    .line 112
    .line 113
    .line 114
    move-result-object v7

    .line 115
    goto :goto_2

    .line 116
    :cond_3
    invoke-virtual {v0}, Lcom/join/mgps/dto/GInfoBean;->getGif_ico()Ljava/lang/String;

    .line 117
    .line 118
    .line 119
    move-result-object v7

    .line 120
    :goto_2
    const p1, 0x7f0a14a2

    .line 121
    .line 122
    .line 123
    invoke-virtual {p2, p1}, Lv2/c;->getView(I)Landroid/view/View;

    .line 124
    .line 125
    .line 126
    move-result-object p1

    .line 127
    check-cast p1, Lcom/facebook/drawee/view/SimpleDraweeView;

    .line 128
    .line 129
    invoke-static {p1, v7}, Lcom/join/android/app/common/utils/l;->o(Lcom/facebook/drawee/view/SimpleDraweeView;Ljava/lang/String;)V

    .line 130
    .line 131
    .line 132
    invoke-direct {p0, p2, p3, v0, p4}, Lcom/join/kotlin/ui/gameexpress/adapter/GameExpressAdapter;->bindVideoBottomBar(Lv2/c;Lcom/join/mgps/dto/CommonGameInfoBean;Lcom/join/mgps/dto/GInfoBean;Lcom/join/kotlin/ui/gameexpress/model/GameExpressMultiItem;)V

    .line 133
    .line 134
    .line 135
    invoke-direct {p0, p2, p3}, Lcom/join/kotlin/ui/gameexpress/adapter/GameExpressAdapter;->bindGameDownload(Lv2/c;Lcom/join/mgps/dto/CommonGameInfoBean;)V

    .line 136
    .line 137
    .line 138
    return-void
.end method

.method private static final bindVideoBanner$lambda$2(Landroid/content/Context;Lcom/join/mgps/dto/CommonGameInfoBean;)Lkotlin/Unit;
    .locals 1

    .line 1
    invoke-static {}, Lcom/join/mgps/Util/IntentUtil;->getInstance()Lcom/join/mgps/Util/IntentUtil;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {p1}, Lcom/join/mgps/dto/CommonGameInfoBean;->getIntentDataBean()Lcom/join/mgps/Util/IntentDateBean;

    .line 6
    .line 7
    .line 8
    move-result-object p1

    .line 9
    invoke-virtual {v0, p0, p1}, Lcom/join/mgps/Util/IntentUtil;->intentActivity(Landroid/content/Context;Lcom/join/mgps/Util/IntentDateBean;)V

    .line 10
    .line 11
    .line 12
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 13
    .line 14
    return-object p0
.end method

.method private static final bindVideoBanner$lambda$3(Lkotlin/jvm/functions/Function0;Landroid/view/View;)V
    .locals 0

    .line 1
    invoke-interface {p0}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method private final bindVideoBottomBar(Lv2/c;Lcom/join/mgps/dto/CommonGameInfoBean;Lcom/join/mgps/dto/GInfoBean;Lcom/join/kotlin/ui/gameexpress/model/GameExpressMultiItem;)V
    .locals 13

    .line 1
    move-object v0, p1

    .line 2
    const v1, 0x7f0a1a3f

    .line 3
    .line 4
    .line 5
    const v2, 0x7f0a1a3c

    .line 6
    .line 7
    .line 8
    const/4 v3, 0x0

    .line 9
    const v4, 0x7f0a1a3b

    .line 10
    .line 11
    .line 12
    const v5, 0x7f0a1a3d

    .line 13
    .line 14
    .line 15
    const-string v6, ""

    .line 16
    .line 17
    const v7, 0x7f0a1a3e

    .line 18
    .line 19
    .line 20
    const/4 v8, 0x1

    .line 21
    if-eqz p3, :cond_4

    .line 22
    .line 23
    invoke-virtual/range {p3 .. p3}, Lcom/join/mgps/dto/GInfoBean;->getName()Ljava/lang/String;

    .line 24
    .line 25
    .line 26
    move-result-object v9

    .line 27
    invoke-virtual {p1, v4, v9}, Lv2/c;->n(ILjava/lang/CharSequence;)Lv2/c;

    .line 28
    .line 29
    .line 30
    invoke-virtual/range {p3 .. p3}, Lcom/join/mgps/dto/GInfoBean;->getScore()Ljava/lang/Double;

    .line 31
    .line 32
    .line 33
    move-result-object v9

    .line 34
    if-nez v9, :cond_0

    .line 35
    .line 36
    move-object v9, v6

    .line 37
    goto :goto_0

    .line 38
    :cond_0
    invoke-virtual/range {p3 .. p3}, Lcom/join/mgps/dto/GInfoBean;->getScore()Ljava/lang/Double;

    .line 39
    .line 40
    .line 41
    move-result-object v9

    .line 42
    invoke-virtual {v9}, Ljava/lang/Double;->toString()Ljava/lang/String;

    .line 43
    .line 44
    .line 45
    move-result-object v9

    .line 46
    :goto_0
    invoke-virtual {p1, v2, v9}, Lv2/c;->n(ILjava/lang/CharSequence;)Lv2/c;

    .line 47
    .line 48
    .line 49
    invoke-virtual/range {p3 .. p3}, Lcom/join/mgps/dto/GInfoBean;->getSp_tag_info()Lcom/join/mgps/dto/TipNew;

    .line 50
    .line 51
    .line 52
    move-result-object v2

    .line 53
    invoke-virtual/range {p3 .. p3}, Lcom/join/mgps/dto/GInfoBean;->getTag_info()Ljava/util/List;

    .line 54
    .line 55
    .line 56
    move-result-object v9

    .line 57
    const-string v10, " | "

    .line 58
    .line 59
    invoke-static {v2, v9, v10}, Lcom/join/mgps/Util/UtilsMy;->R1(Lcom/join/mgps/dto/TipNew;Ljava/util/List;Ljava/lang/String;)Ljava/lang/String;

    .line 60
    .line 61
    .line 62
    move-result-object v2

    .line 63
    invoke-virtual {p1, v5, v2}, Lv2/c;->n(ILjava/lang/CharSequence;)Lv2/c;

    .line 64
    .line 65
    .line 66
    invoke-virtual/range {p3 .. p3}, Lcom/join/mgps/dto/GInfoBean;->getApp_size()Ljava/lang/String;

    .line 67
    .line 68
    .line 69
    move-result-object v2

    .line 70
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 71
    .line 72
    .line 73
    move-result v2

    .line 74
    if-nez v2, :cond_2

    .line 75
    .line 76
    :try_start_0
    invoke-virtual/range {p3 .. p3}, Lcom/join/mgps/dto/GInfoBean;->getApp_size()Ljava/lang/String;

    .line 77
    .line 78
    .line 79
    move-result-object v2

    .line 80
    const-string v9, "getApp_size(...)"

    .line 81
    .line 82
    invoke-static {v2, v9}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 83
    .line 84
    .line 85
    invoke-static {v2}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    .line 86
    .line 87
    .line 88
    move-result-wide v9

    .line 89
    const/16 v2, 0x400

    .line 90
    .line 91
    int-to-double v11, v2

    .line 92
    mul-double v9, v9, v11

    .line 93
    .line 94
    mul-double v9, v9, v11

    .line 95
    .line 96
    double-to-long v9, v9

    .line 97
    const-wide/16 v11, 0x0

    .line 98
    .line 99
    cmp-long v2, v9, v11

    .line 100
    .line 101
    if-lez v2, :cond_1

    .line 102
    .line 103
    invoke-static {v9, v10}, Lcom/join/mgps/Util/UtilsMy;->c(J)Ljava/lang/String;

    .line 104
    .line 105
    .line 106
    move-result-object v2

    .line 107
    invoke-virtual {p1, v7, v2}, Lv2/c;->n(ILjava/lang/CharSequence;)Lv2/c;

    .line 108
    .line 109
    .line 110
    invoke-virtual {p1, v7, v3}, Lv2/c;->h(IZ)Lv2/c;

    .line 111
    .line 112
    .line 113
    goto :goto_1

    .line 114
    :cond_1
    invoke-virtual {p1, v7, v8}, Lv2/c;->h(IZ)Lv2/c;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 115
    .line 116
    .line 117
    goto :goto_1

    .line 118
    :catch_0
    invoke-virtual {p1, v7, v8}, Lv2/c;->h(IZ)Lv2/c;

    .line 119
    .line 120
    .line 121
    goto :goto_1

    .line 122
    :cond_2
    invoke-virtual {p1, v7, v3}, Lv2/c;->h(IZ)Lv2/c;

    .line 123
    .line 124
    .line 125
    :goto_1
    invoke-virtual/range {p3 .. p3}, Lcom/join/mgps/dto/GInfoBean;->getInfo()Ljava/lang/String;

    .line 126
    .line 127
    .line 128
    move-result-object v2

    .line 129
    if-nez v2, :cond_3

    .line 130
    .line 131
    goto :goto_2

    .line 132
    :cond_3
    move-object v6, v2

    .line 133
    :goto_2
    invoke-virtual {p1, v1, v6}, Lv2/c;->n(ILjava/lang/CharSequence;)Lv2/c;

    .line 134
    .line 135
    .line 136
    goto :goto_3

    .line 137
    :cond_4
    invoke-virtual {p2}, Lcom/join/mgps/dto/CommonGameInfoBean;->getTitle()Ljava/lang/String;

    .line 138
    .line 139
    .line 140
    move-result-object v9

    .line 141
    invoke-virtual {p1, v4, v9}, Lv2/c;->n(ILjava/lang/CharSequence;)Lv2/c;

    .line 142
    .line 143
    .line 144
    invoke-virtual {p1, v2, v6}, Lv2/c;->n(ILjava/lang/CharSequence;)Lv2/c;

    .line 145
    .line 146
    .line 147
    invoke-virtual {p1, v5, v6}, Lv2/c;->n(ILjava/lang/CharSequence;)Lv2/c;

    .line 148
    .line 149
    .line 150
    invoke-virtual {p1, v7, v8}, Lv2/c;->h(IZ)Lv2/c;

    .line 151
    .line 152
    .line 153
    invoke-virtual {p1, v1, v6}, Lv2/c;->n(ILjava/lang/CharSequence;)Lv2/c;

    .line 154
    .line 155
    .line 156
    :goto_3
    invoke-virtual {p2}, Lcom/join/mgps/dto/CommonGameInfoBean;->giftSwitch()Z

    .line 157
    .line 158
    .line 159
    move-result v1

    .line 160
    const v2, 0x7f0a09fe

    .line 161
    .line 162
    .line 163
    if-eqz v1, :cond_5

    .line 164
    .line 165
    invoke-virtual {p1, v2, v8}, Lv2/c;->h(IZ)Lv2/c;

    .line 166
    .line 167
    .line 168
    goto :goto_4

    .line 169
    :cond_5
    invoke-virtual {p1, v2, v3}, Lv2/c;->h(IZ)Lv2/c;

    .line 170
    .line 171
    .line 172
    :goto_4
    invoke-virtual {p2}, Lcom/join/mgps/dto/CommonGameInfoBean;->getJp_info()Lcom/join/mgps/dto/JpInfoBean;

    .line 173
    .line 174
    .line 175
    move-result-object v1

    .line 176
    const v2, 0x7f0a06d8

    .line 177
    .line 178
    .line 179
    if-eqz v1, :cond_7

    .line 180
    .line 181
    invoke-virtual {p2}, Lcom/join/mgps/dto/CommonGameInfoBean;->getJp_info()Lcom/join/mgps/dto/JpInfoBean;

    .line 182
    .line 183
    .line 184
    move-result-object v1

    .line 185
    invoke-virtual {v1}, Lcom/join/mgps/dto/JpInfoBean;->getLink_type()Ljava/lang/Integer;

    .line 186
    .line 187
    .line 188
    move-result-object v1

    .line 189
    if-nez v1, :cond_6

    .line 190
    .line 191
    goto :goto_5

    .line 192
    :cond_6
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    .line 193
    .line 194
    .line 195
    move-result v1

    .line 196
    if-eq v1, v8, :cond_7

    .line 197
    .line 198
    :goto_5
    invoke-virtual {p2}, Lcom/join/mgps/dto/CommonGameInfoBean;->getTitle()Ljava/lang/String;

    .line 199
    .line 200
    .line 201
    move-result-object v1

    .line 202
    invoke-virtual {p1, v4, v1}, Lv2/c;->n(ILjava/lang/CharSequence;)Lv2/c;

    .line 203
    .line 204
    .line 205
    invoke-virtual {p1, v2, v8}, Lv2/c;->h(IZ)Lv2/c;

    .line 206
    .line 207
    .line 208
    invoke-virtual {p1, v5, v8}, Lv2/c;->h(IZ)Lv2/c;

    .line 209
    .line 210
    .line 211
    goto :goto_6

    .line 212
    :cond_7
    invoke-virtual {p2}, Lcom/join/mgps/dto/CommonGameInfoBean;->isH5Game()Z

    .line 213
    .line 214
    .line 215
    move-result v1

    .line 216
    if-eqz v1, :cond_8

    .line 217
    .line 218
    invoke-virtual {p2}, Lcom/join/mgps/dto/CommonGameInfoBean;->getTitle()Ljava/lang/String;

    .line 219
    .line 220
    .line 221
    move-result-object v1

    .line 222
    invoke-virtual {p1, v4, v1}, Lv2/c;->n(ILjava/lang/CharSequence;)Lv2/c;

    .line 223
    .line 224
    .line 225
    invoke-virtual {p1, v2, v8}, Lv2/c;->h(IZ)Lv2/c;

    .line 226
    .line 227
    .line 228
    invoke-virtual {p1, v5, v8}, Lv2/c;->h(IZ)Lv2/c;

    .line 229
    .line 230
    .line 231
    goto :goto_6

    .line 232
    :cond_8
    if-eqz p3, :cond_9

    .line 233
    .line 234
    const/4 v3, 0x1

    .line 235
    :cond_9
    xor-int/lit8 v1, v3, 0x1

    .line 236
    .line 237
    invoke-virtual {p1, v2, v1}, Lv2/c;->h(IZ)Lv2/c;

    .line 238
    .line 239
    .line 240
    xor-int/lit8 v1, v3, 0x1

    .line 241
    .line 242
    invoke-virtual {p1, v5, v1}, Lv2/c;->h(IZ)Lv2/c;

    .line 243
    .line 244
    .line 245
    :goto_6
    invoke-virtual/range {p4 .. p4}, Lcom/join/kotlin/ui/gameexpress/model/GameExpressMultiItem;->isNew()Z

    .line 246
    .line 247
    .line 248
    move-result v1

    .line 249
    invoke-virtual/range {p4 .. p4}, Lcom/join/kotlin/ui/gameexpress/model/GameExpressMultiItem;->isUpdate()Z

    .line 250
    .line 251
    .line 252
    move-result v2

    .line 253
    move-object v3, p0

    .line 254
    invoke-direct {p0, p1, v1, v2}, Lcom/join/kotlin/ui/gameexpress/adapter/GameExpressAdapter;->bindGameTag(Lv2/c;ZZ)V

    .line 255
    .line 256
    .line 257
    return-void
.end method

.method private final bindVideoInContainer(Landroid/content/Context;Landroid/widget/FrameLayout;Lcom/join/mgps/dto/CommonGameInfoBean;Ljava/lang/String;Lkotlin/jvm/functions/Function0;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Landroid/widget/FrameLayout;",
            "Lcom/join/mgps/dto/CommonGameInfoBean;",
            "Ljava/lang/String;",
            "Lkotlin/jvm/functions/Function0<",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p2, p1}, Lcom/join/kotlin/ui/gameexpress/adapter/GameExpressAdapter;->obtainVideoView(Landroid/widget/FrameLayout;Landroid/content/Context;)Lcom/join/android/app/component/video/MultiStandVideo;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    invoke-virtual {p3}, Lcom/join/mgps/dto/CommonGameInfoBean;->getV_url()Ljava/lang/String;

    .line 6
    .line 7
    .line 8
    move-result-object p2

    .line 9
    invoke-virtual {p1}, Lcom/join/android/app/component/video/MultiStandVideo;->getUrl()Ljava/lang/String;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    invoke-static {p2, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    .line 14
    .line 15
    .line 16
    move-result p2

    .line 17
    const/4 v6, 0x1

    .line 18
    const/4 v7, 0x0

    .line 19
    if-eqz p2, :cond_1

    .line 20
    .line 21
    invoke-virtual {p3}, Lcom/join/mgps/dto/CommonGameInfoBean;->getJp_info()Lcom/join/mgps/dto/JpInfoBean;

    .line 22
    .line 23
    .line 24
    move-result-object p2

    .line 25
    if-eqz p2, :cond_3

    .line 26
    .line 27
    invoke-virtual {p3}, Lcom/join/mgps/dto/CommonGameInfoBean;->getJp_info()Lcom/join/mgps/dto/JpInfoBean;

    .line 28
    .line 29
    .line 30
    move-result-object p2

    .line 31
    invoke-virtual {p2}, Lcom/join/mgps/dto/JpInfoBean;->getLink_type()Ljava/lang/Integer;

    .line 32
    .line 33
    .line 34
    move-result-object p2

    .line 35
    if-nez p2, :cond_0

    .line 36
    .line 37
    goto :goto_0

    .line 38
    :cond_0
    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    .line 39
    .line 40
    .line 41
    move-result p2

    .line 42
    if-eq p2, v6, :cond_3

    .line 43
    .line 44
    :cond_1
    :goto_0
    invoke-virtual {p1, p4}, Lcom/join/android/app/component/video/MultiStandVideo;->l(Ljava/lang/String;)V

    .line 45
    .line 46
    .line 47
    invoke-virtual {p3}, Lcom/join/mgps/dto/CommonGameInfoBean;->getShowName()Ljava/lang/String;

    .line 48
    .line 49
    .line 50
    move-result-object p2

    .line 51
    invoke-virtual {p1, p2}, Lcom/join/android/app/component/video/MultiStandVideo;->setName(Ljava/lang/String;)V

    .line 52
    .line 53
    .line 54
    iget-object p2, p0, Lcom/join/kotlin/ui/gameexpress/adapter/GameExpressAdapter;->videoHelper:Lcom/join/android/app/component/video/h;

    .line 55
    .line 56
    const/4 p4, 0x0

    .line 57
    if-eqz p2, :cond_2

    .line 58
    .line 59
    invoke-virtual {p2}, Lcom/join/android/app/component/video/h;->s()Ljava/lang/String;

    .line 60
    .line 61
    .line 62
    move-result-object p2

    .line 63
    goto :goto_1

    .line 64
    :cond_2
    move-object p2, p4

    .line 65
    :goto_1
    invoke-virtual {p1, p2}, Lcom/papa/gsyvideoplayer/video/base/GSYVideoView;->setPlayTag(Ljava/lang/String;)V

    .line 66
    .line 67
    .line 68
    invoke-virtual {p3}, Lcom/join/mgps/dto/CommonGameInfoBean;->hashCode()I

    .line 69
    .line 70
    .line 71
    move-result p2

    .line 72
    invoke-virtual {p1, p2}, Lcom/papa/gsyvideoplayer/video/base/GSYVideoView;->setPlayPosition(I)V

    .line 73
    .line 74
    .line 75
    invoke-virtual {p3}, Lcom/join/mgps/dto/CommonGameInfoBean;->getV_url()Ljava/lang/String;

    .line 76
    .line 77
    .line 78
    move-result-object v1

    .line 79
    const/4 v2, 0x0

    .line 80
    const/4 v3, 0x0

    .line 81
    const/4 v4, 0x0

    .line 82
    const-string v5, ""

    .line 83
    .line 84
    move-object v0, p1

    .line 85
    invoke-virtual/range {v0 .. v5}, Lcom/papa/gsyvideoplayer/video/base/GSYVideoControlView;->setUpLazy(Ljava/lang/String;ZLjava/io/File;Ljava/util/Map;Ljava/lang/String;)Z

    .line 86
    .line 87
    .line 88
    invoke-virtual {p1, v7}, Lcom/papa/gsyvideoplayer/video/base/GSYBaseVideoPlayer;->setRotateViewAuto(Z)V

    .line 89
    .line 90
    .line 91
    invoke-virtual {p1, v6}, Lcom/papa/gsyvideoplayer/video/base/GSYBaseVideoPlayer;->setLockLand(Z)V

    .line 92
    .line 93
    .line 94
    invoke-virtual {p1, v7}, Lcom/papa/gsyvideoplayer/video/base/GSYVideoView;->setReleaseWhenLossAudio(Z)V

    .line 95
    .line 96
    .line 97
    invoke-virtual {p1, v7}, Lcom/papa/gsyvideoplayer/video/base/GSYBaseVideoPlayer;->setShowFullAnimation(Z)V

    .line 98
    .line 99
    .line 100
    invoke-virtual {p1, v7}, Lcom/papa/gsyvideoplayer/video/base/GSYVideoControlView;->setIsTouchWiget(Z)V

    .line 101
    .line 102
    .line 103
    invoke-virtual {p1, v7}, Lcom/papa/gsyvideoplayer/video/base/GSYVideoControlView;->setNeedLockFull(Z)V

    .line 104
    .line 105
    .line 106
    invoke-virtual {p1, p4}, Lcom/papa/gsyvideoplayer/video/StandardGSYVideoPlayer;->setBottomProgressBarDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 107
    .line 108
    .line 109
    new-instance p2, Lcom/join/kotlin/ui/gameexpress/adapter/GameExpressAdapter$bindVideoInContainer$1;

    .line 110
    .line 111
    invoke-direct {p2, p5}, Lcom/join/kotlin/ui/gameexpress/adapter/GameExpressAdapter$bindVideoInContainer$1;-><init>(Lkotlin/jvm/functions/Function0;)V

    .line 112
    .line 113
    .line 114
    invoke-virtual {p1, p2}, Lcom/papa/gsyvideoplayer/video/base/GSYVideoView;->setVideoAllCallBack(Lv7/h;)V

    .line 115
    .line 116
    .line 117
    :cond_3
    invoke-virtual {p1, v7}, Landroid/view/View;->setVisibility(I)V

    .line 118
    .line 119
    .line 120
    return-void
.end method

.method public static synthetic k(Landroid/content/Context;Lcom/join/mgps/dto/CommonGameInfoBean;)Lkotlin/Unit;
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lcom/join/kotlin/ui/gameexpress/adapter/GameExpressAdapter;->bindVideoBanner$lambda$2(Landroid/content/Context;Lcom/join/mgps/dto/CommonGameInfoBean;)Lkotlin/Unit;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic l(Lkotlin/jvm/functions/Function0;Landroid/view/View;)V
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lcom/join/kotlin/ui/gameexpress/adapter/GameExpressAdapter;->bindVideoBanner$lambda$3(Lkotlin/jvm/functions/Function0;Landroid/view/View;)V

    return-void
.end method

.method private final obtainVideoView(Landroid/widget/FrameLayout;Landroid/content/Context;)Lcom/join/android/app/component/video/MultiStandVideo;
    .locals 2

    .line 1
    const v0, 0x7f0a1bea

    .line 2
    .line 3
    .line 4
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 5
    .line 6
    .line 7
    move-result-object v1

    .line 8
    check-cast v1, Lcom/join/android/app/component/video/MultiStandVideo;

    .line 9
    .line 10
    if-nez v1, :cond_0

    .line 11
    .line 12
    new-instance v1, Lcom/join/android/app/component/video/MultiStandVideo;

    .line 13
    .line 14
    invoke-direct {v1, p2}, Lcom/join/android/app/component/video/MultiStandVideo;-><init>(Landroid/content/Context;)V

    .line 15
    .line 16
    .line 17
    invoke-virtual {v1, v0}, Landroid/view/View;->setId(I)V

    .line 18
    .line 19
    .line 20
    new-instance p2, Landroid/widget/FrameLayout$LayoutParams;

    .line 21
    .line 22
    const/4 v0, -0x1

    .line 23
    invoke-direct {p2, v0, v0}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 24
    .line 25
    .line 26
    invoke-virtual {p1, v1, p2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 27
    .line 28
    .line 29
    :cond_0
    return-object v1
.end method

.method private final releaseVideoInContainer(Landroid/widget/FrameLayout;)V
    .locals 1

    .line 1
    const v0, 0x7f0a1bea

    .line 2
    .line 3
    .line 4
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 5
    .line 6
    .line 7
    move-result-object v0

    .line 8
    check-cast v0, Lcom/join/android/app/component/video/MultiStandVideo;

    .line 9
    .line 10
    if-eqz v0, :cond_0

    .line 11
    .line 12
    invoke-virtual {v0}, Lcom/papa/gsyvideoplayer/video/base/GSYVideoView;->onVideoPause()V

    .line 13
    .line 14
    .line 15
    invoke-virtual {v0}, Lcom/papa/gsyvideoplayer/video/base/GSYVideoView;->release()V

    .line 16
    .line 17
    .line 18
    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 19
    .line 20
    .line 21
    :cond_0
    return-void
.end method

.method public static synthetic updateDownloadUi$default(Lcom/join/kotlin/ui/gameexpress/adapter/GameExpressAdapter;Lv2/c;Lcom/join/kotlin/ui/gameexpress/model/GameExpressMultiItem;ZILjava/lang/Object;)V
    .locals 0

    .line 1
    and-int/lit8 p4, p4, 0x4

    .line 2
    .line 3
    if-eqz p4, :cond_0

    .line 4
    .line 5
    const/4 p3, 0x0

    .line 6
    :cond_0
    invoke-virtual {p0, p1, p2, p3}, Lcom/join/kotlin/ui/gameexpress/adapter/GameExpressAdapter;->updateDownloadUi(Lv2/c;Lcom/join/kotlin/ui/gameexpress/model/GameExpressMultiItem;Z)V

    .line 7
    .line 8
    .line 9
    return-void
.end method


# virtual methods
.method public onViewRecycled(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)V
    .locals 1
    .param p1    # Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    const-string v0, "holder"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-super {p0, p1}, Lcom/chad/library/adapter/base/c;->onViewRecycled(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)V

    .line 7
    .line 8
    .line 9
    instance-of v0, p1, Lv2/c;

    .line 10
    .line 11
    if-eqz v0, :cond_1

    .line 12
    .line 13
    check-cast p1, Lv2/c;

    .line 14
    .line 15
    const v0, 0x7f0a1bea

    .line 16
    .line 17
    .line 18
    invoke-virtual {p1, v0}, Lv2/c;->b(I)Landroid/view/View;

    .line 19
    .line 20
    .line 21
    move-result-object v0

    .line 22
    check-cast v0, Lcom/join/android/app/component/video/MultiStandVideo;

    .line 23
    .line 24
    if-eqz v0, :cond_0

    .line 25
    .line 26
    invoke-virtual {v0}, Lcom/papa/gsyvideoplayer/video/base/GSYVideoView;->onVideoPause()V

    .line 27
    .line 28
    .line 29
    invoke-virtual {v0}, Lcom/papa/gsyvideoplayer/video/base/GSYVideoView;->release()V

    .line 30
    .line 31
    .line 32
    :cond_0
    const v0, 0x7f0a1b63

    .line 33
    .line 34
    .line 35
    invoke-virtual {p1, v0}, Lv2/c;->b(I)Landroid/view/View;

    .line 36
    .line 37
    .line 38
    move-result-object p1

    .line 39
    check-cast p1, Landroid/widget/FrameLayout;

    .line 40
    .line 41
    if-eqz p1, :cond_1

    .line 42
    .line 43
    invoke-direct {p0, p1}, Lcom/join/kotlin/ui/gameexpress/adapter/GameExpressAdapter;->releaseVideoInContainer(Landroid/widget/FrameLayout;)V

    .line 44
    .line 45
    .line 46
    :cond_1
    return-void
.end method

.method public final updateDownloadUi(Lv2/c;Lcom/join/kotlin/ui/gameexpress/model/GameExpressMultiItem;Z)V
    .locals 2
    .param p1    # Lv2/c;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lcom/join/kotlin/ui/gameexpress/model/GameExpressMultiItem;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    const-string v0, "holder"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string v0, "item"

    .line 7
    .line 8
    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    invoke-virtual {p2}, Lcom/join/kotlin/ui/gameexpress/model/GameExpressMultiItem;->getViewType()I

    .line 12
    .line 13
    .line 14
    move-result v0

    .line 15
    const/4 v1, 0x2

    .line 16
    if-eq v0, v1, :cond_0

    .line 17
    .line 18
    const/4 v1, 0x3

    .line 19
    if-eq v0, v1, :cond_0

    .line 20
    .line 21
    goto :goto_0

    .line 22
    :cond_0
    invoke-virtual {p2}, Lcom/join/kotlin/ui/gameexpress/model/GameExpressMultiItem;->getData()Ljava/lang/Object;

    .line 23
    .line 24
    .line 25
    move-result-object p2

    .line 26
    instance-of v0, p2, Lcom/join/mgps/dto/CommonGameInfoBean;

    .line 27
    .line 28
    if-nez v0, :cond_1

    .line 29
    .line 30
    const/4 p2, 0x0

    .line 31
    :cond_1
    check-cast p2, Lcom/join/mgps/dto/CommonGameInfoBean;

    .line 32
    .line 33
    if-nez p2, :cond_2

    .line 34
    .line 35
    return-void

    .line 36
    :cond_2
    if-eqz p3, :cond_3

    .line 37
    .line 38
    invoke-direct {p0, p1, p2}, Lcom/join/kotlin/ui/gameexpress/adapter/GameExpressAdapter;->applyDownloadProgress(Lv2/c;Lcom/join/mgps/dto/CommonGameInfoBean;)V

    .line 39
    .line 40
    .line 41
    goto :goto_0

    .line 42
    :cond_3
    invoke-direct {p0, p1, p2}, Lcom/join/kotlin/ui/gameexpress/adapter/GameExpressAdapter;->bindGameDownload(Lv2/c;Lcom/join/mgps/dto/CommonGameInfoBean;)V

    .line 43
    .line 44
    .line 45
    :goto_0
    return-void
.end method
