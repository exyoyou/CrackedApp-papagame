.class public final Lcom/join/kotlin/ui/search/adapter/SearchListGameAdapter;
.super Lcom/chad/library/adapter/base/c;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/join/kotlin/ui/search/adapter/SearchListGameAdapter$Companion;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/chad/library/adapter/base/c<",
        "Lcom/join/mgps/dto/CommonMultiItemBean;",
        ">;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nSearchListGameAdapter.kt\nKotlin\n*S Kotlin\n*F\n+ 1 SearchListGameAdapter.kt\ncom/join/kotlin/ui/search/adapter/SearchListGameAdapter\n+ 2 BaseMultiItemAdapter.kt\ncom/chad/library/adapter/base/BaseMultiItemAdapter\n*L\n1#1,201:1\n55#2:202\n55#2:203\n55#2:204\n55#2:205\n*S KotlinDebug\n*F\n+ 1 SearchListGameAdapter.kt\ncom/join/kotlin/ui/search/adapter/SearchListGameAdapter\n*L\n41#1:202\n55#1:203\n67#1:204\n81#1:205\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000*\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u000e\n\u0002\u0008\u0005\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\u0018\u0000 \u00112\u0008\u0012\u0004\u0012\u00020\u00020\u0001:\u0001\u0011B\u0007\u00a2\u0006\u0004\u0008\u0003\u0010\u0004J\u001e\u0010\u000b\u001a\u00020\u000c2\u000c\u0010\r\u001a\u0008\u0012\u0004\u0012\u00020\u000f0\u000e2\u0008\u0010\u0010\u001a\u0004\u0018\u00010\u0002R\u001a\u0010\u0005\u001a\u00020\u0006X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0007\u0010\u0008\"\u0004\u0008\t\u0010\n\u00a8\u0006\u0012"
    }
    d2 = {
        "Lcom/join/kotlin/ui/search/adapter/SearchListGameAdapter;",
        "Lcom/chad/library/adapter/base/BaseMultiItemAdapter;",
        "Lcom/join/mgps/dto/CommonMultiItemBean;",
        "<init>",
        "()V",
        "keyword",
        "",
        "getKeyword",
        "()Ljava/lang/String;",
        "setKeyword",
        "(Ljava/lang/String;)V",
        "updateGameUI",
        "",
        "holder",
        "Lcom/chad/library/adapter/base/viewholder/DataBindingHolder;",
        "Lcom/join/android/app/mgsim/wufun/databinding/ItemSearchListGameBinding;",
        "item",
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
        "SMAP\nSearchListGameAdapter.kt\nKotlin\n*S Kotlin\n*F\n+ 1 SearchListGameAdapter.kt\ncom/join/kotlin/ui/search/adapter/SearchListGameAdapter\n+ 2 BaseMultiItemAdapter.kt\ncom/chad/library/adapter/base/BaseMultiItemAdapter\n*L\n1#1,201:1\n55#2:202\n55#2:203\n55#2:204\n55#2:205\n*S KotlinDebug\n*F\n+ 1 SearchListGameAdapter.kt\ncom/join/kotlin/ui/search/adapter/SearchListGameAdapter\n*L\n41#1:202\n55#1:203\n67#1:204\n81#1:205\n*E\n"
    }
.end annotation


# static fields
.field public static final Companion:Lcom/join/kotlin/ui/search/adapter/SearchListGameAdapter$Companion;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final ITEM_TYPE_AD_GRID:I = 0x2

.field public static final ITEM_TYPE_GAME:I = 0x1

.field public static final ITEM_TYPE_MORE:I = 0x3

.field public static final ITEM_TYPE_TITLE:I


# instance fields
.field private keyword:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/join/kotlin/ui/search/adapter/SearchListGameAdapter$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/join/kotlin/ui/search/adapter/SearchListGameAdapter$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/join/kotlin/ui/search/adapter/SearchListGameAdapter;->Companion:Lcom/join/kotlin/ui/search/adapter/SearchListGameAdapter$Companion;

    return-void
.end method

.method public constructor <init>()V
    .locals 5

    .line 1
    const/4 v0, 0x0

    .line 2
    const/4 v1, 0x1

    .line 3
    invoke-direct {p0, v0, v1, v0}, Lcom/chad/library/adapter/base/c;-><init>(Ljava/util/List;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 4
    .line 5
    .line 6
    const-string v0, ""

    .line 7
    .line 8
    iput-object v0, p0, Lcom/join/kotlin/ui/search/adapter/SearchListGameAdapter;->keyword:Ljava/lang/String;

    .line 9
    .line 10
    new-instance v0, Lcom/join/kotlin/ui/search/adapter/a;

    .line 11
    .line 12
    invoke-direct {v0}, Lcom/join/kotlin/ui/search/adapter/a;-><init>()V

    .line 13
    .line 14
    .line 15
    invoke-virtual {p0, v0}, Lcom/chad/library/adapter/base/c;->onItemViewType(Lcom/chad/library/adapter/base/c$a;)Lcom/chad/library/adapter/base/c;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    new-instance v2, Lcom/join/kotlin/ui/search/adapter/SearchListGameAdapter$2;

    .line 20
    .line 21
    invoke-direct {v2}, Lcom/join/kotlin/ui/search/adapter/SearchListGameAdapter$2;-><init>()V

    .line 22
    .line 23
    .line 24
    const/4 v3, 0x0

    .line 25
    const-class v4, Lv2/a;

    .line 26
    .line 27
    invoke-virtual {v0, v3, v4, v2}, Lcom/chad/library/adapter/base/c;->addItemType(ILjava/lang/Class;Lcom/chad/library/adapter/base/c$b;)Lcom/chad/library/adapter/base/c;

    .line 28
    .line 29
    .line 30
    move-result-object v0

    .line 31
    new-instance v2, Lcom/join/kotlin/ui/search/adapter/SearchListGameAdapter$3;

    .line 32
    .line 33
    invoke-direct {v2}, Lcom/join/kotlin/ui/search/adapter/SearchListGameAdapter$3;-><init>()V

    .line 34
    .line 35
    .line 36
    const/4 v3, 0x3

    .line 37
    invoke-virtual {v0, v3, v4, v2}, Lcom/chad/library/adapter/base/c;->addItemType(ILjava/lang/Class;Lcom/chad/library/adapter/base/c$b;)Lcom/chad/library/adapter/base/c;

    .line 38
    .line 39
    .line 40
    move-result-object v0

    .line 41
    new-instance v2, Lcom/join/kotlin/ui/search/adapter/SearchListGameAdapter$4;

    .line 42
    .line 43
    invoke-direct {v2, p0}, Lcom/join/kotlin/ui/search/adapter/SearchListGameAdapter$4;-><init>(Lcom/join/kotlin/ui/search/adapter/SearchListGameAdapter;)V

    .line 44
    .line 45
    .line 46
    invoke-virtual {v0, v1, v4, v2}, Lcom/chad/library/adapter/base/c;->addItemType(ILjava/lang/Class;Lcom/chad/library/adapter/base/c$b;)Lcom/chad/library/adapter/base/c;

    .line 47
    .line 48
    .line 49
    move-result-object v0

    .line 50
    new-instance v1, Lcom/join/kotlin/ui/search/adapter/SearchListGameAdapter$5;

    .line 51
    .line 52
    invoke-direct {v1, p0}, Lcom/join/kotlin/ui/search/adapter/SearchListGameAdapter$5;-><init>(Lcom/join/kotlin/ui/search/adapter/SearchListGameAdapter;)V

    .line 53
    .line 54
    .line 55
    const/4 v2, 0x2

    .line 56
    invoke-virtual {v0, v2, v4, v1}, Lcom/chad/library/adapter/base/c;->addItemType(ILjava/lang/Class;Lcom/chad/library/adapter/base/c$b;)Lcom/chad/library/adapter/base/c;

    .line 57
    .line 58
    .line 59
    return-void
.end method

.method private static final _init_$lambda$0(ILjava/util/List;)I
    .locals 1

    .line 1
    const-string v0, "list"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    if-ltz p0, :cond_0

    .line 7
    .line 8
    invoke-interface {p1}, Ljava/util/List;->size()I

    .line 9
    .line 10
    .line 11
    move-result v0

    .line 12
    if-ge p0, v0, :cond_0

    .line 13
    .line 14
    invoke-interface {p1, p0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 15
    .line 16
    .line 17
    move-result-object p0

    .line 18
    check-cast p0, Lcom/join/mgps/dto/CommonMultiItemBean;

    .line 19
    .line 20
    invoke-virtual {p0}, Lcom/join/mgps/dto/CommonMultiItemBean;->getItemType()I

    .line 21
    .line 22
    .line 23
    move-result p0

    .line 24
    goto :goto_0

    .line 25
    :cond_0
    const/4 p0, -0x1

    .line 26
    :goto_0
    return p0
.end method

.method public static synthetic k(ILjava/util/List;)I
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lcom/join/kotlin/ui/search/adapter/SearchListGameAdapter;->_init_$lambda$0(ILjava/util/List;)I

    move-result p0

    return p0
.end method


# virtual methods
.method public final getKeyword()Ljava/lang/String;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/kotlin/ui/search/adapter/SearchListGameAdapter;->keyword:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public final setKeyword(Ljava/lang/String;)V
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
    iput-object p1, p0, Lcom/join/kotlin/ui/search/adapter/SearchListGameAdapter;->keyword:Ljava/lang/String;

    .line 7
    .line 8
    return-void
.end method

.method public final updateGameUI(Lv2/a;Lcom/join/mgps/dto/CommonMultiItemBean;)V
    .locals 2
    .param p1    # Lv2/a;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lcom/join/mgps/dto/CommonMultiItemBean;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lv2/a<",
            "Lcom/join/android/app/mgsim/wufun/databinding/x50;",
            ">;",
            "Lcom/join/mgps/dto/CommonMultiItemBean;",
            ")V"
        }
    .end annotation

    .line 1
    const-string v0, "holder"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p1}, Lv2/a;->a()Landroidx/databinding/ViewDataBinding;

    .line 7
    .line 8
    .line 9
    move-result-object p1

    .line 10
    check-cast p1, Lcom/join/android/app/mgsim/wufun/databinding/x50;

    .line 11
    .line 12
    if-eqz p1, :cond_0

    .line 13
    .line 14
    iget-object p1, p1, Lcom/join/android/app/mgsim/wufun/databinding/x50;->d:Lcom/join/mgps/customview/DownloadNormalView;

    .line 15
    .line 16
    if-eqz p1, :cond_0

    .line 17
    .line 18
    invoke-virtual {p0}, Lcom/chad/library/adapter/base/BaseQuickAdapter;->getContext()Landroid/content/Context;

    .line 19
    .line 20
    .line 21
    move-result-object v0

    .line 22
    new-instance v1, Lcom/join/kotlin/ui/search/adapter/SearchListGameAdapter$updateGameUI$1;

    .line 23
    .line 24
    invoke-direct {v1, p2, p0, v0}, Lcom/join/kotlin/ui/search/adapter/SearchListGameAdapter$updateGameUI$1;-><init>(Lcom/join/mgps/dto/CommonMultiItemBean;Lcom/join/kotlin/ui/search/adapter/SearchListGameAdapter;Landroid/content/Context;)V

    .line 25
    .line 26
    .line 27
    invoke-virtual {p1, v1}, Lcom/join/mgps/customview/DownloadNormalView;->f(Lcom/join/mgps/callbacks/f;)V

    .line 28
    .line 29
    .line 30
    :cond_0
    return-void
.end method
