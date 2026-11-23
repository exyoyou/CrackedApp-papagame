.class public final Lcom/join/kotlin/ui/legendgame/adapter/LegendGameAdapter;
.super Lcom/chad/library/adapter/base/c;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/chad/library/adapter/base/c<",
        "Lcom/join/kotlin/ui/legendgame/data/LegendGameMultiItem;",
        ">;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nLegendGameAdapter.kt\nKotlin\n*S Kotlin\n*F\n+ 1 LegendGameAdapter.kt\ncom/join/kotlin/ui/legendgame/adapter/LegendGameAdapter\n+ 2 BaseMultiItemAdapter.kt\ncom/chad/library/adapter/base/BaseMultiItemAdapter\n+ 3 fake.kt\nkotlin/jvm/internal/FakeKt\n+ 4 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,238:1\n55#2:239\n55#2:240\n55#2:241\n1#3:242\n1869#4,2:243\n1878#4,2:245\n1869#4,2:247\n1880#4:249\n*S KotlinDebug\n*F\n+ 1 LegendGameAdapter.kt\ncom/join/kotlin/ui/legendgame/adapter/LegendGameAdapter\n*L\n43#1:239\n46#1:240\n49#1:241\n203#1:243,2\n211#1:245,2\n222#1:247,2\n211#1:249\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000s\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0008\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0006\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0008\u0007\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010 \n\u0002\u0010\u000e\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002*\u0001\u001b\u0018\u00002\u0008\u0012\u0004\u0012\u00020\u00020\u0001B\u0007\u00a2\u0006\u0004\u0008\u0003\u0010\u0004J\u0016\u0010\u0013\u001a\u00020\u000e2\u0006\u0010\u0014\u001a\u00020\u00152\u0006\u0010\u0016\u001a\u00020\u0017J\u0016\u0010\u0018\u001a\u00020\u000e2\u0006\u0010\u0014\u001a\u00020\u00152\u0006\u0010\u0016\u001a\u00020\u0017J\u0016\u0010\u0019\u001a\u00020\u000e2\u0006\u0010\u0014\u001a\u00020\u00152\u0006\u0010\t\u001a\u00020\u0002J\u0015\u0010\u001a\u001a\u00020\u001b2\u0006\u0010\u001c\u001a\u00020\nH\u0002\u00a2\u0006\u0002\u0010\u001dJ \u0010\u001e\u001a\u00020\u000e2\u0006\u0010\u0014\u001a\u00020\u00152\u0006\u0010\u0016\u001a\u00020\u00172\u0006\u0010\t\u001a\u00020\u0002H\u0002J \u0010\u001f\u001a\u00020\u000e2\u0006\u0010\u0014\u001a\u00020\u00152\u0006\u0010\t\u001a\u00020\u00022\u0006\u0010\u000b\u001a\u00020\nH\u0002J\u0018\u0010 \u001a\u00020\u000e2\u0006\u0010\u0014\u001a\u00020\u00152\u0006\u0010\u0016\u001a\u00020\u0017H\u0002J\u0018\u0010!\u001a\u00020\u000e2\u0006\u0010\u0014\u001a\u00020\u00152\u0006\u0010\t\u001a\u00020\"H\u0002J*\u0010#\u001a\u00020\u000e2\u0006\u0010$\u001a\u00020%2\u000e\u0010&\u001a\n\u0012\u0004\u0012\u00020(\u0018\u00010\'2\u0008\u0008\u0002\u0010)\u001a\u00020\u000cH\u0002J \u0010*\u001a\u00020+2\u0006\u0010,\u001a\u00020-2\u0006\u0010.\u001a\u00020/2\u0006\u00100\u001a\u00020(H\u0002Ra\u0010\u0005\u001aI\u0012\u0013\u0012\u00110\u0002\u00a2\u0006\u000c\u0008\u0007\u0012\u0008\u0008\u0008\u0012\u0004\u0008\u0008(\t\u0012\u0013\u0012\u00110\n\u00a2\u0006\u000c\u0008\u0007\u0012\u0008\u0008\u0008\u0012\u0004\u0008\u0008(\u000b\u0012\u0013\u0012\u00110\u000c\u00a2\u0006\u000c\u0008\u0007\u0012\u0008\u0008\u0008\u0012\u0004\u0008\u0008(\r\u0012\u0004\u0012\u00020\u000e\u0018\u00010\u0006X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u000f\u0010\u0010\"\u0004\u0008\u0011\u0010\u0012\u00a8\u00061"
    }
    d2 = {
        "Lcom/join/kotlin/ui/legendgame/adapter/LegendGameAdapter;",
        "Lcom/chad/library/adapter/base/BaseMultiItemAdapter;",
        "Lcom/join/kotlin/ui/legendgame/data/LegendGameMultiItem;",
        "<init>",
        "()V",
        "onBespeakConfirm",
        "Lkotlin/Function3;",
        "Lkotlin/ParameterName;",
        "name",
        "item",
        "",
        "position",
        "",
        "book",
        "",
        "getOnBespeakConfirm",
        "()Lkotlin/jvm/functions/Function3;",
        "setOnBespeakConfirm",
        "(Lkotlin/jvm/functions/Function3;)V",
        "updateDownloadProgress",
        "holder",
        "Lcom/chad/library/adapter/base/viewholder/QuickViewHolder;",
        "game",
        "Lcom/join/mgps/dto/CommonGameInfoBean;",
        "updateGameDownload",
        "updateBespeakBell",
        "createGameItemListener",
        "com/join/kotlin/ui/legendgame/adapter/LegendGameAdapter$createGameItemListener$1",
        "layoutId",
        "(I)Lcom/join/kotlin/ui/legendgame/adapter/LegendGameAdapter$createGameItemListener$1;",
        "bindGame",
        "bindBespeakBell",
        "bindGameDownload",
        "bindServerOpen",
        "Lcom/join/kotlin/ui/legendgame/data/LegendGameServerOpenData;",
        "bindTags",
        "container",
        "Landroid/widget/LinearLayout;",
        "tags",
        "",
        "",
        "twoRows",
        "createTagView",
        "Landroid/widget/TextView;",
        "inflater",
        "Landroid/view/LayoutInflater;",
        "parent",
        "Landroid/view/ViewGroup;",
        "tag",
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
        "SMAP\nLegendGameAdapter.kt\nKotlin\n*S Kotlin\n*F\n+ 1 LegendGameAdapter.kt\ncom/join/kotlin/ui/legendgame/adapter/LegendGameAdapter\n+ 2 BaseMultiItemAdapter.kt\ncom/chad/library/adapter/base/BaseMultiItemAdapter\n+ 3 fake.kt\nkotlin/jvm/internal/FakeKt\n+ 4 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,238:1\n55#2:239\n55#2:240\n55#2:241\n1#3:242\n1869#4,2:243\n1878#4,2:245\n1869#4,2:247\n1880#4:249\n*S KotlinDebug\n*F\n+ 1 LegendGameAdapter.kt\ncom/join/kotlin/ui/legendgame/adapter/LegendGameAdapter\n*L\n43#1:239\n46#1:240\n49#1:241\n203#1:243,2\n211#1:245,2\n222#1:247,2\n211#1:249\n*E\n"
    }
.end annotation


# instance fields
.field private onBespeakConfirm:Lkotlin/jvm/functions/Function3;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function3<",
            "-",
            "Lcom/join/kotlin/ui/legendgame/data/LegendGameMultiItem;",
            "-",
            "Ljava/lang/Integer;",
            "-",
            "Ljava/lang/Boolean;",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 4

    .line 1
    const/4 v0, 0x0

    .line 2
    const/4 v1, 0x1

    .line 3
    invoke-direct {p0, v0, v1, v0}, Lcom/chad/library/adapter/base/c;-><init>(Ljava/util/List;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 4
    .line 5
    .line 6
    new-instance v0, Lcom/join/kotlin/ui/legendgame/adapter/LegendGameAdapter$1;

    .line 7
    .line 8
    invoke-direct {v0}, Lcom/join/kotlin/ui/legendgame/adapter/LegendGameAdapter$1;-><init>()V

    .line 9
    .line 10
    .line 11
    invoke-virtual {p0, v0}, Lcom/chad/library/adapter/base/c;->onItemViewType(Lcom/chad/library/adapter/base/c$a;)Lcom/chad/library/adapter/base/c;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    const v2, 0x7f0d0453

    .line 16
    .line 17
    .line 18
    invoke-direct {p0, v2}, Lcom/join/kotlin/ui/legendgame/adapter/LegendGameAdapter;->createGameItemListener(I)Lcom/join/kotlin/ui/legendgame/adapter/LegendGameAdapter$createGameItemListener$1;

    .line 19
    .line 20
    .line 21
    move-result-object v2

    .line 22
    const-class v3, Lv2/c;

    .line 23
    .line 24
    invoke-virtual {v0, v1, v3, v2}, Lcom/chad/library/adapter/base/c;->addItemType(ILjava/lang/Class;Lcom/chad/library/adapter/base/c$b;)Lcom/chad/library/adapter/base/c;

    .line 25
    .line 26
    .line 27
    move-result-object v0

    .line 28
    const v1, 0x7f0d0452

    .line 29
    .line 30
    .line 31
    invoke-direct {p0, v1}, Lcom/join/kotlin/ui/legendgame/adapter/LegendGameAdapter;->createGameItemListener(I)Lcom/join/kotlin/ui/legendgame/adapter/LegendGameAdapter$createGameItemListener$1;

    .line 32
    .line 33
    .line 34
    move-result-object v1

    .line 35
    const/4 v2, 0x2

    .line 36
    invoke-virtual {v0, v2, v3, v1}, Lcom/chad/library/adapter/base/c;->addItemType(ILjava/lang/Class;Lcom/chad/library/adapter/base/c$b;)Lcom/chad/library/adapter/base/c;

    .line 37
    .line 38
    .line 39
    move-result-object v0

    .line 40
    new-instance v1, Lcom/join/kotlin/ui/legendgame/adapter/LegendGameAdapter$2;

    .line 41
    .line 42
    invoke-direct {v1, p0}, Lcom/join/kotlin/ui/legendgame/adapter/LegendGameAdapter$2;-><init>(Lcom/join/kotlin/ui/legendgame/adapter/LegendGameAdapter;)V

    .line 43
    .line 44
    .line 45
    const/4 v2, 0x3

    .line 46
    invoke-virtual {v0, v2, v3, v1}, Lcom/chad/library/adapter/base/c;->addItemType(ILjava/lang/Class;Lcom/chad/library/adapter/base/c$b;)Lcom/chad/library/adapter/base/c;

    .line 47
    .line 48
    .line 49
    return-void
.end method

.method public static final synthetic access$bindBespeakBell(Lcom/join/kotlin/ui/legendgame/adapter/LegendGameAdapter;Lv2/c;Lcom/join/kotlin/ui/legendgame/data/LegendGameMultiItem;I)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2, p3}, Lcom/join/kotlin/ui/legendgame/adapter/LegendGameAdapter;->bindBespeakBell(Lv2/c;Lcom/join/kotlin/ui/legendgame/data/LegendGameMultiItem;I)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static final synthetic access$bindGame(Lcom/join/kotlin/ui/legendgame/adapter/LegendGameAdapter;Lv2/c;Lcom/join/mgps/dto/CommonGameInfoBean;Lcom/join/kotlin/ui/legendgame/data/LegendGameMultiItem;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2, p3}, Lcom/join/kotlin/ui/legendgame/adapter/LegendGameAdapter;->bindGame(Lv2/c;Lcom/join/mgps/dto/CommonGameInfoBean;Lcom/join/kotlin/ui/legendgame/data/LegendGameMultiItem;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static final synthetic access$bindGameDownload(Lcom/join/kotlin/ui/legendgame/adapter/LegendGameAdapter;Lv2/c;Lcom/join/mgps/dto/CommonGameInfoBean;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/join/kotlin/ui/legendgame/adapter/LegendGameAdapter;->bindGameDownload(Lv2/c;Lcom/join/mgps/dto/CommonGameInfoBean;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static final synthetic access$bindServerOpen(Lcom/join/kotlin/ui/legendgame/adapter/LegendGameAdapter;Lv2/c;Lcom/join/kotlin/ui/legendgame/data/LegendGameServerOpenData;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/join/kotlin/ui/legendgame/adapter/LegendGameAdapter;->bindServerOpen(Lv2/c;Lcom/join/kotlin/ui/legendgame/data/LegendGameServerOpenData;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method private final bindBespeakBell(Lv2/c;Lcom/join/kotlin/ui/legendgame/data/LegendGameMultiItem;I)V
    .locals 4

    .line 1
    invoke-virtual {p2}, Lcom/join/kotlin/ui/legendgame/data/LegendGameMultiItem;->getBespeakUi()Lcom/join/kotlin/ui/legendgame/data/LegendGameBespeakUiState;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    const/4 v1, 0x0

    .line 6
    if-eqz v0, :cond_0

    .line 7
    .line 8
    invoke-virtual {v0}, Lcom/join/kotlin/ui/legendgame/data/LegendGameBespeakUiState;->getShowBespeakBell()Z

    .line 9
    .line 10
    .line 11
    move-result v2

    .line 12
    const/4 v3, 0x1

    .line 13
    if-ne v2, v3, :cond_0

    .line 14
    .line 15
    const/4 v1, 0x1

    .line 16
    :cond_0
    xor-int/lit8 v2, v1, 0x1

    .line 17
    .line 18
    const v3, 0x7f0a09b9

    .line 19
    .line 20
    .line 21
    invoke-virtual {p1, v3, v2}, Lv2/c;->h(IZ)Lv2/c;

    .line 22
    .line 23
    .line 24
    if-eqz v1, :cond_3

    .line 25
    .line 26
    if-nez v0, :cond_1

    .line 27
    .line 28
    goto :goto_1

    .line 29
    :cond_1
    invoke-virtual {v0}, Lcom/join/kotlin/ui/legendgame/data/LegendGameBespeakUiState;->is_reminded()Z

    .line 30
    .line 31
    .line 32
    move-result v0

    .line 33
    invoke-virtual {p1, v3}, Lv2/c;->getView(I)Landroid/view/View;

    .line 34
    .line 35
    .line 36
    move-result-object v1

    .line 37
    check-cast v1, Landroid/widget/ImageView;

    .line 38
    .line 39
    if-eqz v0, :cond_2

    .line 40
    .line 41
    const v2, 0x7f080985

    .line 42
    .line 43
    .line 44
    goto :goto_0

    .line 45
    :cond_2
    const v2, 0x7f080984

    .line 46
    .line 47
    .line 48
    :goto_0
    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 49
    .line 50
    .line 51
    invoke-virtual {p1, v3}, Lv2/c;->getView(I)Landroid/view/View;

    .line 52
    .line 53
    .line 54
    move-result-object p1

    .line 55
    new-instance v1, Lcom/join/kotlin/ui/legendgame/adapter/b;

    .line 56
    .line 57
    invoke-direct {v1, v0, p0, p2, p3}, Lcom/join/kotlin/ui/legendgame/adapter/b;-><init>(ZLcom/join/kotlin/ui/legendgame/adapter/LegendGameAdapter;Lcom/join/kotlin/ui/legendgame/data/LegendGameMultiItem;I)V

    .line 58
    .line 59
    .line 60
    invoke-virtual {p1, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 61
    .line 62
    .line 63
    :cond_3
    :goto_1
    return-void
.end method

.method private static final bindBespeakBell$lambda$3(ZLcom/join/kotlin/ui/legendgame/adapter/LegendGameAdapter;Lcom/join/kotlin/ui/legendgame/data/LegendGameMultiItem;ILandroid/view/View;)V
    .locals 0

    .line 1
    if-eqz p0, :cond_0

    .line 2
    .line 3
    new-instance p0, Lcom/join/kotlin/ui/legendgame/adapter/a;

    .line 4
    .line 5
    invoke-direct {p0, p1, p2, p3}, Lcom/join/kotlin/ui/legendgame/adapter/a;-><init>(Lcom/join/kotlin/ui/legendgame/adapter/LegendGameAdapter;Lcom/join/kotlin/ui/legendgame/data/LegendGameMultiItem;I)V

    .line 6
    .line 7
    .line 8
    invoke-static {p0}, Lcom/join/kotlin/ui/legendgame/dialog/LegendGameBespeakDialog;->showCancelConfirm(Lkotlin/jvm/functions/Function0;)V

    .line 9
    .line 10
    .line 11
    goto :goto_0

    .line 12
    :cond_0
    iget-object p0, p1, Lcom/join/kotlin/ui/legendgame/adapter/LegendGameAdapter;->onBespeakConfirm:Lkotlin/jvm/functions/Function3;

    .line 13
    .line 14
    if-eqz p0, :cond_1

    .line 15
    .line 16
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 17
    .line 18
    .line 19
    move-result-object p1

    .line 20
    sget-object p3, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 21
    .line 22
    invoke-interface {p0, p2, p1, p3}, Lkotlin/jvm/functions/Function3;->invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 23
    .line 24
    .line 25
    :cond_1
    :goto_0
    return-void
.end method

.method private static final bindBespeakBell$lambda$3$lambda$2(Lcom/join/kotlin/ui/legendgame/adapter/LegendGameAdapter;Lcom/join/kotlin/ui/legendgame/data/LegendGameMultiItem;I)Lkotlin/Unit;
    .locals 1

    .line 1
    iget-object p0, p0, Lcom/join/kotlin/ui/legendgame/adapter/LegendGameAdapter;->onBespeakConfirm:Lkotlin/jvm/functions/Function3;

    .line 2
    .line 3
    if-eqz p0, :cond_0

    .line 4
    .line 5
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 6
    .line 7
    .line 8
    move-result-object p2

    .line 9
    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 10
    .line 11
    invoke-interface {p0, p1, p2, v0}, Lkotlin/jvm/functions/Function3;->invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 12
    .line 13
    .line 14
    :cond_0
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 15
    .line 16
    return-object p0
.end method

.method private final bindGame(Lv2/c;Lcom/join/mgps/dto/CommonGameInfoBean;Lcom/join/kotlin/ui/legendgame/data/LegendGameMultiItem;)V
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
    invoke-virtual {p3}, Lcom/join/kotlin/ui/legendgame/data/LegendGameMultiItem;->getServerInfoText()Ljava/lang/String;

    .line 16
    .line 17
    .line 18
    move-result-object v1

    .line 19
    const-string v2, ""

    .line 20
    .line 21
    if-nez v1, :cond_0

    .line 22
    .line 23
    move-object v1, v2

    .line 24
    :cond_0
    const v3, 0x7f0a18e3

    .line 25
    .line 26
    .line 27
    invoke-virtual {p1, v3, v1}, Lv2/c;->n(ILjava/lang/CharSequence;)Lv2/c;

    .line 28
    .line 29
    .line 30
    invoke-static {v1}, Lkotlin/text/StringsKt;->isBlank(Ljava/lang/CharSequence;)Z

    .line 31
    .line 32
    .line 33
    move-result v1

    .line 34
    invoke-virtual {p1, v3, v1}, Lv2/c;->h(IZ)Lv2/c;

    .line 35
    .line 36
    .line 37
    const/4 v1, 0x0

    .line 38
    if-eqz v0, :cond_1

    .line 39
    .line 40
    invoke-virtual {v0}, Lcom/join/mgps/dto/GInfoBean;->getInfo()Ljava/lang/String;

    .line 41
    .line 42
    .line 43
    move-result-object v3

    .line 44
    goto :goto_0

    .line 45
    :cond_1
    move-object v3, v1

    .line 46
    :goto_0
    if-nez v3, :cond_2

    .line 47
    .line 48
    goto :goto_1

    .line 49
    :cond_2
    move-object v2, v3

    .line 50
    :goto_1
    const v3, 0x7f0a1a3f

    .line 51
    .line 52
    .line 53
    invoke-virtual {p1, v3, v2}, Lv2/c;->n(ILjava/lang/CharSequence;)Lv2/c;

    .line 54
    .line 55
    .line 56
    const v2, 0x7f0a0e0d

    .line 57
    .line 58
    .line 59
    invoke-virtual {p1, v2}, Lv2/c;->getView(I)Landroid/view/View;

    .line 60
    .line 61
    .line 62
    move-result-object v2

    .line 63
    check-cast v2, Landroid/widget/LinearLayout;

    .line 64
    .line 65
    invoke-virtual {p3}, Lcom/join/kotlin/ui/legendgame/data/LegendGameMultiItem;->getCustomTags()Ljava/util/List;

    .line 66
    .line 67
    .line 68
    move-result-object v3

    .line 69
    invoke-virtual {p3}, Lcom/join/kotlin/ui/legendgame/data/LegendGameMultiItem;->getViewType()I

    .line 70
    .line 71
    .line 72
    move-result v4

    .line 73
    const/4 v5, 0x2

    .line 74
    const/4 v6, 0x0

    .line 75
    const/4 v7, 0x1

    .line 76
    if-ne v4, v5, :cond_3

    .line 77
    .line 78
    const/4 v4, 0x1

    .line 79
    goto :goto_2

    .line 80
    :cond_3
    const/4 v4, 0x0

    .line 81
    :goto_2
    invoke-direct {p0, v2, v3, v4}, Lcom/join/kotlin/ui/legendgame/adapter/LegendGameAdapter;->bindTags(Landroid/widget/LinearLayout;Ljava/util/List;Z)V

    .line 82
    .line 83
    .line 84
    if-eqz v0, :cond_4

    .line 85
    .line 86
    invoke-virtual {v0}, Lcom/join/mgps/dto/GInfoBean;->getGift_package_switch()I

    .line 87
    .line 88
    .line 89
    move-result v0

    .line 90
    if-ne v0, v7, :cond_4

    .line 91
    .line 92
    const/4 v0, 0x1

    .line 93
    goto :goto_3

    .line 94
    :cond_4
    const/4 v0, 0x0

    .line 95
    :goto_3
    const v2, 0x7f0a09fe

    .line 96
    .line 97
    .line 98
    if-eqz v0, :cond_5

    .line 99
    .line 100
    invoke-virtual {p1, v2, v6}, Lv2/c;->h(IZ)Lv2/c;

    .line 101
    .line 102
    .line 103
    goto :goto_4

    .line 104
    :cond_5
    invoke-virtual {p1, v2, v7}, Lv2/c;->h(IZ)Lv2/c;

    .line 105
    .line 106
    .line 107
    :goto_4
    invoke-virtual {p3}, Lcom/join/kotlin/ui/legendgame/data/LegendGameMultiItem;->getViewType()I

    .line 108
    .line 109
    .line 110
    move-result p3

    .line 111
    if-ne p3, v5, :cond_a

    .line 112
    .line 113
    invoke-virtual {p2}, Lcom/join/mgps/dto/CommonGameInfoBean;->getBig_pic()Ljava/lang/String;

    .line 114
    .line 115
    .line 116
    move-result-object p3

    .line 117
    if-eqz p3, :cond_7

    .line 118
    .line 119
    invoke-static {p3}, Lkotlin/text/StringsKt;->isBlank(Ljava/lang/CharSequence;)Z

    .line 120
    .line 121
    .line 122
    move-result v0

    .line 123
    xor-int/2addr v0, v7

    .line 124
    if-eqz v0, :cond_6

    .line 125
    .line 126
    goto :goto_5

    .line 127
    :cond_6
    move-object p3, v1

    .line 128
    :goto_5
    if-nez p3, :cond_b

    .line 129
    .line 130
    :cond_7
    invoke-virtual {p2}, Lcom/join/mgps/dto/CommonGameInfoBean;->getCoverPicUrl()Ljava/lang/String;

    .line 131
    .line 132
    .line 133
    move-result-object p3

    .line 134
    if-eqz p3, :cond_8

    .line 135
    .line 136
    invoke-static {p3}, Lkotlin/text/StringsKt;->isBlank(Ljava/lang/CharSequence;)Z

    .line 137
    .line 138
    .line 139
    move-result v0

    .line 140
    xor-int/2addr v0, v7

    .line 141
    if-eqz v0, :cond_8

    .line 142
    .line 143
    move-object v1, p3

    .line 144
    :cond_8
    if-nez v1, :cond_9

    .line 145
    .line 146
    invoke-virtual {p2}, Lcom/join/mgps/dto/CommonGameInfoBean;->getIcon()Ljava/lang/String;

    .line 147
    .line 148
    .line 149
    move-result-object p3

    .line 150
    goto :goto_6

    .line 151
    :cond_9
    move-object p3, v1

    .line 152
    goto :goto_6

    .line 153
    :cond_a
    invoke-virtual {p2}, Lcom/join/mgps/dto/CommonGameInfoBean;->getIcon()Ljava/lang/String;

    .line 154
    .line 155
    .line 156
    move-result-object p3

    .line 157
    :cond_b
    :goto_6
    const p2, 0x7f0a14a2

    .line 158
    .line 159
    .line 160
    invoke-virtual {p1, p2}, Lv2/c;->getView(I)Landroid/view/View;

    .line 161
    .line 162
    .line 163
    move-result-object p1

    .line 164
    check-cast p1, Lcom/facebook/drawee/view/SimpleDraweeView;

    .line 165
    .line 166
    invoke-static {p1, p3}, Lcom/join/android/app/common/utils/l;->o(Lcom/facebook/drawee/view/SimpleDraweeView;Ljava/lang/String;)V

    .line 167
    .line 168
    .line 169
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
    new-instance v1, Lcom/join/kotlin/ui/legendgame/adapter/LegendGameAdapter$bindGameDownload$1;

    .line 17
    .line 18
    invoke-direct {v1, p2, p0, p1}, Lcom/join/kotlin/ui/legendgame/adapter/LegendGameAdapter$bindGameDownload$1;-><init>(Lcom/join/mgps/dto/CommonGameInfoBean;Lcom/join/kotlin/ui/legendgame/adapter/LegendGameAdapter;Landroid/content/Context;)V

    .line 19
    .line 20
    .line 21
    invoke-virtual {v0, v1}, Lcom/join/mgps/customview/DownloadNormalView;->f(Lcom/join/mgps/callbacks/f;)V

    .line 22
    .line 23
    .line 24
    return-void
.end method

.method private final bindServerOpen(Lv2/c;Lcom/join/kotlin/ui/legendgame/data/LegendGameServerOpenData;)V
    .locals 3

    .line 1
    invoke-virtual {p2}, Lcom/join/kotlin/ui/legendgame/data/LegendGameServerOpenData;->getLabel()Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    const-string v1, ""

    .line 6
    .line 7
    if-nez v0, :cond_0

    .line 8
    .line 9
    move-object v0, v1

    .line 10
    :cond_0
    const v2, 0x7f0a18e4

    .line 11
    .line 12
    .line 13
    invoke-virtual {p1, v2, v0}, Lv2/c;->n(ILjava/lang/CharSequence;)Lv2/c;

    .line 14
    .line 15
    .line 16
    invoke-virtual {p2}, Lcom/join/kotlin/ui/legendgame/data/LegendGameServerOpenData;->getTime()Ljava/lang/String;

    .line 17
    .line 18
    .line 19
    move-result-object p2

    .line 20
    if-nez p2, :cond_1

    .line 21
    .line 22
    goto :goto_0

    .line 23
    :cond_1
    move-object v1, p2

    .line 24
    :goto_0
    const p2, 0x7f0a18e5

    .line 25
    .line 26
    .line 27
    invoke-virtual {p1, p2, v1}, Lv2/c;->n(ILjava/lang/CharSequence;)Lv2/c;

    .line 28
    .line 29
    .line 30
    iget-object p1, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    .line 31
    .line 32
    const/4 p2, 0x0

    .line 33
    invoke-virtual {p1, p2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 34
    .line 35
    .line 36
    return-void
.end method

.method private final bindTags(Landroid/widget/LinearLayout;Ljava/util/List;Z)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/LinearLayout;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;Z)V"
        }
    .end annotation

    .line 1
    invoke-virtual {p1}, Landroid/view/ViewGroup;->removeAllViews()V

    .line 2
    .line 3
    .line 4
    move-object v0, p2

    .line 5
    check-cast v0, Ljava/util/Collection;

    .line 6
    .line 7
    const/4 v1, 0x1

    .line 8
    const/4 v2, 0x0

    .line 9
    if-eqz v0, :cond_1

    .line 10
    .line 11
    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    .line 12
    .line 13
    .line 14
    move-result v0

    .line 15
    if-eqz v0, :cond_0

    .line 16
    .line 17
    goto :goto_0

    .line 18
    :cond_0
    const/4 v0, 0x0

    .line 19
    goto :goto_1

    .line 20
    :cond_1
    :goto_0
    const/4 v0, 0x1

    .line 21
    :goto_1
    if-eqz v0, :cond_2

    .line 22
    .line 23
    const/16 p2, 0x8

    .line 24
    .line 25
    invoke-virtual {p1, p2}, Landroid/view/View;->setVisibility(I)V

    .line 26
    .line 27
    .line 28
    return-void

    .line 29
    :cond_2
    invoke-virtual {p1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 30
    .line 31
    .line 32
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 33
    .line 34
    .line 35
    move-result-object v0

    .line 36
    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    .line 37
    .line 38
    .line 39
    move-result-object v0

    .line 40
    check-cast p2, Ljava/lang/Iterable;

    .line 41
    .line 42
    const/4 v3, 0x4

    .line 43
    invoke-static {p2, v3}, Lkotlin/collections/CollectionsKt;->take(Ljava/lang/Iterable;I)Ljava/util/List;

    .line 44
    .line 45
    .line 46
    move-result-object p2

    .line 47
    if-nez p3, :cond_4

    .line 48
    .line 49
    invoke-virtual {p1, v2}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 50
    .line 51
    .line 52
    check-cast p2, Ljava/lang/Iterable;

    .line 53
    .line 54
    invoke-interface {p2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 55
    .line 56
    .line 57
    move-result-object p2

    .line 58
    :goto_2
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    .line 59
    .line 60
    .line 61
    move-result p3

    .line 62
    if-eqz p3, :cond_3

    .line 63
    .line 64
    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 65
    .line 66
    .line 67
    move-result-object p3

    .line 68
    check-cast p3, Ljava/lang/String;

    .line 69
    .line 70
    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 71
    .line 72
    .line 73
    invoke-direct {p0, v0, p1, p3}, Lcom/join/kotlin/ui/legendgame/adapter/LegendGameAdapter;->createTagView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Ljava/lang/String;)Landroid/widget/TextView;

    .line 74
    .line 75
    .line 76
    move-result-object p3

    .line 77
    invoke-virtual {p1, p3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 78
    .line 79
    .line 80
    goto :goto_2

    .line 81
    :cond_3
    return-void

    .line 82
    :cond_4
    invoke-virtual {p1, v1}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 83
    .line 84
    .line 85
    invoke-virtual {p1}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    .line 86
    .line 87
    .line 88
    move-result-object p3

    .line 89
    const v1, 0x7f0714f8

    .line 90
    .line 91
    .line 92
    invoke-virtual {p3, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    .line 93
    .line 94
    .line 95
    move-result p3

    .line 96
    check-cast p2, Ljava/lang/Iterable;

    .line 97
    .line 98
    const/4 v1, 0x2

    .line 99
    invoke-static {p2, v1}, Lkotlin/collections/CollectionsKt;->chunked(Ljava/lang/Iterable;I)Ljava/util/List;

    .line 100
    .line 101
    .line 102
    move-result-object p2

    .line 103
    check-cast p2, Ljava/lang/Iterable;

    .line 104
    .line 105
    invoke-interface {p2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 106
    .line 107
    .line 108
    move-result-object p2

    .line 109
    const/4 v1, 0x0

    .line 110
    :goto_3
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    .line 111
    .line 112
    .line 113
    move-result v3

    .line 114
    if-eqz v3, :cond_8

    .line 115
    .line 116
    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 117
    .line 118
    .line 119
    move-result-object v3

    .line 120
    add-int/lit8 v4, v1, 0x1

    .line 121
    .line 122
    if-gez v1, :cond_5

    .line 123
    .line 124
    invoke-static {}, Lkotlin/collections/CollectionsKt;->throwIndexOverflow()V

    .line 125
    .line 126
    .line 127
    :cond_5
    check-cast v3, Ljava/util/List;

    .line 128
    .line 129
    new-instance v5, Landroid/widget/LinearLayout;

    .line 130
    .line 131
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 132
    .line 133
    .line 134
    move-result-object v6

    .line 135
    invoke-direct {v5, v6}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 136
    .line 137
    .line 138
    invoke-virtual {v5, v2}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 139
    .line 140
    .line 141
    const/16 v6, 0x10

    .line 142
    .line 143
    invoke-virtual {v5, v6}, Landroid/widget/LinearLayout;->setGravity(I)V

    .line 144
    .line 145
    .line 146
    new-instance v6, Landroid/widget/LinearLayout$LayoutParams;

    .line 147
    .line 148
    const/4 v7, -0x2

    .line 149
    invoke-direct {v6, v7, v7}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 150
    .line 151
    .line 152
    if-lez v1, :cond_6

    .line 153
    .line 154
    iput p3, v6, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    .line 155
    .line 156
    :cond_6
    invoke-virtual {v5, v6}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 157
    .line 158
    .line 159
    check-cast v3, Ljava/lang/Iterable;

    .line 160
    .line 161
    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 162
    .line 163
    .line 164
    move-result-object v1

    .line 165
    :goto_4
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 166
    .line 167
    .line 168
    move-result v3

    .line 169
    if-eqz v3, :cond_7

    .line 170
    .line 171
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 172
    .line 173
    .line 174
    move-result-object v3

    .line 175
    check-cast v3, Ljava/lang/String;

    .line 176
    .line 177
    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 178
    .line 179
    .line 180
    invoke-direct {p0, v0, v5, v3}, Lcom/join/kotlin/ui/legendgame/adapter/LegendGameAdapter;->createTagView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Ljava/lang/String;)Landroid/widget/TextView;

    .line 181
    .line 182
    .line 183
    move-result-object v3

    .line 184
    invoke-virtual {v5, v3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 185
    .line 186
    .line 187
    goto :goto_4

    .line 188
    :cond_7
    invoke-virtual {p1, v5}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 189
    .line 190
    .line 191
    move v1, v4

    .line 192
    goto :goto_3

    .line 193
    :cond_8
    return-void
.end method

.method static synthetic bindTags$default(Lcom/join/kotlin/ui/legendgame/adapter/LegendGameAdapter;Landroid/widget/LinearLayout;Ljava/util/List;ZILjava/lang/Object;)V
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
    invoke-direct {p0, p1, p2, p3}, Lcom/join/kotlin/ui/legendgame/adapter/LegendGameAdapter;->bindTags(Landroid/widget/LinearLayout;Ljava/util/List;Z)V

    .line 7
    .line 8
    .line 9
    return-void
.end method

.method private final createGameItemListener(I)Lcom/join/kotlin/ui/legendgame/adapter/LegendGameAdapter$createGameItemListener$1;
    .locals 1

    .line 1
    new-instance v0, Lcom/join/kotlin/ui/legendgame/adapter/LegendGameAdapter$createGameItemListener$1;

    .line 2
    .line 3
    invoke-direct {v0, p1, p0}, Lcom/join/kotlin/ui/legendgame/adapter/LegendGameAdapter$createGameItemListener$1;-><init>(ILcom/join/kotlin/ui/legendgame/adapter/LegendGameAdapter;)V

    .line 4
    .line 5
    .line 6
    return-object v0
.end method

.method private final createTagView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Ljava/lang/String;)Landroid/widget/TextView;
    .locals 2

    .line 1
    const v0, 0x7f0d05e5

    .line 2
    .line 3
    .line 4
    const/4 v1, 0x0

    .line 5
    invoke-virtual {p1, v0, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 6
    .line 7
    .line 8
    move-result-object p1

    .line 9
    const-string p2, "null cannot be cast to non-null type android.widget.TextView"

    .line 10
    .line 11
    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 12
    .line 13
    .line 14
    check-cast p1, Landroid/widget/TextView;

    .line 15
    .line 16
    invoke-virtual {p1, p3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 17
    .line 18
    .line 19
    return-object p1
.end method

.method public static synthetic k(ZLcom/join/kotlin/ui/legendgame/adapter/LegendGameAdapter;Lcom/join/kotlin/ui/legendgame/data/LegendGameMultiItem;ILandroid/view/View;)V
    .locals 0

    .line 1
    invoke-static {p0, p1, p2, p3, p4}, Lcom/join/kotlin/ui/legendgame/adapter/LegendGameAdapter;->bindBespeakBell$lambda$3(ZLcom/join/kotlin/ui/legendgame/adapter/LegendGameAdapter;Lcom/join/kotlin/ui/legendgame/data/LegendGameMultiItem;ILandroid/view/View;)V

    return-void
.end method

.method public static synthetic l(Lcom/join/kotlin/ui/legendgame/adapter/LegendGameAdapter;Lcom/join/kotlin/ui/legendgame/data/LegendGameMultiItem;I)Lkotlin/Unit;
    .locals 0

    .line 1
    invoke-static {p0, p1, p2}, Lcom/join/kotlin/ui/legendgame/adapter/LegendGameAdapter;->bindBespeakBell$lambda$3$lambda$2(Lcom/join/kotlin/ui/legendgame/adapter/LegendGameAdapter;Lcom/join/kotlin/ui/legendgame/data/LegendGameMultiItem;I)Lkotlin/Unit;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final getOnBespeakConfirm()Lkotlin/jvm/functions/Function3;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lkotlin/jvm/functions/Function3<",
            "Lcom/join/kotlin/ui/legendgame/data/LegendGameMultiItem;",
            "Ljava/lang/Integer;",
            "Ljava/lang/Boolean;",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/kotlin/ui/legendgame/adapter/LegendGameAdapter;->onBespeakConfirm:Lkotlin/jvm/functions/Function3;

    .line 2
    .line 3
    return-object v0
.end method

.method public final setOnBespeakConfirm(Lkotlin/jvm/functions/Function3;)V
    .locals 0
    .param p1    # Lkotlin/jvm/functions/Function3;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/jvm/functions/Function3<",
            "-",
            "Lcom/join/kotlin/ui/legendgame/data/LegendGameMultiItem;",
            "-",
            "Ljava/lang/Integer;",
            "-",
            "Ljava/lang/Boolean;",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/join/kotlin/ui/legendgame/adapter/LegendGameAdapter;->onBespeakConfirm:Lkotlin/jvm/functions/Function3;

    .line 2
    .line 3
    return-void
.end method

.method public final updateBespeakBell(Lv2/c;Lcom/join/kotlin/ui/legendgame/data/LegendGameMultiItem;)V
    .locals 1
    .param p1    # Lv2/c;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lcom/join/kotlin/ui/legendgame/data/LegendGameMultiItem;
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
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->getBindingAdapterPosition()I

    .line 12
    .line 13
    .line 14
    move-result v0

    .line 15
    invoke-direct {p0, p1, p2, v0}, Lcom/join/kotlin/ui/legendgame/adapter/LegendGameAdapter;->bindBespeakBell(Lv2/c;Lcom/join/kotlin/ui/legendgame/data/LegendGameMultiItem;I)V

    .line 16
    .line 17
    .line 18
    return-void
.end method

.method public final updateDownloadProgress(Lv2/c;Lcom/join/mgps/dto/CommonGameInfoBean;)V
    .locals 1
    .param p1    # Lv2/c;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lcom/join/mgps/dto/CommonGameInfoBean;
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
    const-string v0, "game"

    .line 7
    .line 8
    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    sget-object v0, Lcom/join/kotlin/utils/DlTaskManager;->INSTANCE:Lcom/join/kotlin/utils/DlTaskManager;

    .line 12
    .line 13
    invoke-virtual {v0, p2}, Lcom/join/kotlin/utils/DlTaskManager;->getTask(Lcom/join/kotlin/base/impl/Downloadable;)Lcom/github/snowdream/android/app/downloader/DownloadTask;

    .line 14
    .line 15
    .line 16
    move-result-object p2

    .line 17
    if-nez p2, :cond_0

    .line 18
    .line 19
    return-void

    .line 20
    :cond_0
    const v0, 0x7f0a054e

    .line 21
    .line 22
    .line 23
    invoke-virtual {p1, v0}, Lv2/c;->b(I)Landroid/view/View;

    .line 24
    .line 25
    .line 26
    move-result-object p1

    .line 27
    check-cast p1, Lcom/join/mgps/customview/DownloadNormalView;

    .line 28
    .line 29
    if-eqz p1, :cond_1

    .line 30
    .line 31
    invoke-virtual {p1, p2}, Lcom/join/mgps/customview/DownloadNormalView;->d(Lcom/github/snowdream/android/app/downloader/DownloadTask;)V

    .line 32
    .line 33
    .line 34
    :cond_1
    return-void
.end method

.method public final updateGameDownload(Lv2/c;Lcom/join/mgps/dto/CommonGameInfoBean;)V
    .locals 2
    .param p1    # Lv2/c;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lcom/join/mgps/dto/CommonGameInfoBean;
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
    const-string v0, "game"

    .line 7
    .line 8
    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    const v0, 0x7f0a054e

    .line 12
    .line 13
    .line 14
    invoke-virtual {p1, v0}, Lv2/c;->getView(I)Landroid/view/View;

    .line 15
    .line 16
    .line 17
    move-result-object v0

    .line 18
    check-cast v0, Lcom/join/mgps/customview/DownloadNormalView;

    .line 19
    .line 20
    new-instance v1, Lm6/c;

    .line 21
    .line 22
    iget-object p1, p1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    .line 23
    .line 24
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 25
    .line 26
    .line 27
    move-result-object p1

    .line 28
    invoke-direct {v1, p1, p2}, Lm6/c;-><init>(Landroid/content/Context;Lcom/join/kotlin/base/impl/Downloadable;)V

    .line 29
    .line 30
    .line 31
    invoke-virtual {v0, v1}, Lcom/join/mgps/customview/DownloadNormalView;->f(Lcom/join/mgps/callbacks/f;)V

    .line 32
    .line 33
    .line 34
    return-void
.end method
