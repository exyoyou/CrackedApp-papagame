.class public final Lcom/join/kotlin/ui/netgame/NetGameCategoryInnerFragment$Companion;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/join/kotlin/ui/netgame/NetGameCategoryInnerFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u00000\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0003\n\u0002\u0010\u000e\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0003\n\u0002\u0010\u000b\n\u0000\u0008\u0086\u0003\u0018\u00002\u00020\u0001B\t\u0008\u0002\u00a2\u0006\u0004\u0008\u0002\u0010\u0003J\u0010\u0010\t\u001a\u00020\n2\u0006\u0010\u000b\u001a\u00020\u0005H\u0002J\u0010\u0010\u000c\u001a\u00020\n2\u0006\u0010\u000b\u001a\u00020\u0005H\u0002J(\u0010\r\u001a\u00020\u000e2\u0006\u0010\u000f\u001a\u00020\u00102\u0006\u0010\u0011\u001a\u00020\u00052\u0006\u0010\u0012\u001a\u00020\u00102\u0008\u0008\u0002\u0010\u0013\u001a\u00020\u0014R\u000e\u0010\u0004\u001a\u00020\u0005X\u0082T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0006\u001a\u00020\u0005X\u0082T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0007\u001a\u00020\u0005X\u0082T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0008\u001a\u00020\u0005X\u0082T\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u0015"
    }
    d2 = {
        "Lcom/join/kotlin/ui/netgame/NetGameCategoryInnerFragment$Companion;",
        "",
        "<init>",
        "()V",
        "ARG_TAB_TYPE",
        "",
        "ARG_TAB_TITLE",
        "ARG_PAGE_INDEX",
        "ARG_FROM_HOME",
        "categoryClickExtBean",
        "Lcom/join/mgps/dto/ExtBean;",
        "categoryName",
        "categoryPageExpExtBean",
        "newInstance",
        "Lcom/join/kotlin/ui/netgame/NetGameCategoryInnerFragment;",
        "tabType",
        "",
        "tabTitle",
        "pageIndex",
        "fromHome",
        "",
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


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/join/kotlin/ui/netgame/NetGameCategoryInnerFragment$Companion;-><init>()V

    return-void
.end method

.method public static final synthetic access$categoryClickExtBean(Lcom/join/kotlin/ui/netgame/NetGameCategoryInnerFragment$Companion;Ljava/lang/String;)Lcom/join/mgps/dto/ExtBean;
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/join/kotlin/ui/netgame/NetGameCategoryInnerFragment$Companion;->categoryClickExtBean(Ljava/lang/String;)Lcom/join/mgps/dto/ExtBean;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static final synthetic access$categoryPageExpExtBean(Lcom/join/kotlin/ui/netgame/NetGameCategoryInnerFragment$Companion;Ljava/lang/String;)Lcom/join/mgps/dto/ExtBean;
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/join/kotlin/ui/netgame/NetGameCategoryInnerFragment$Companion;->categoryPageExpExtBean(Ljava/lang/String;)Lcom/join/mgps/dto/ExtBean;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method private final categoryClickExtBean(Ljava/lang/String;)Lcom/join/mgps/dto/ExtBean;
    .locals 2

    .line 1
    new-instance v0, Lcom/join/mgps/dto/ExtBean;

    .line 2
    .line 3
    invoke-direct {v0}, Lcom/join/mgps/dto/ExtBean;-><init>()V

    .line 4
    .line 5
    .line 6
    const-string v1, "home"

    .line 7
    .line 8
    invoke-virtual {v0, v1}, Lcom/join/mgps/dto/ExtBean;->setFirstModule(Ljava/lang/String;)Lcom/join/mgps/dto/ExtBean;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    const-string v1, "netGame"

    .line 13
    .line 14
    invoke-virtual {v0, v1}, Lcom/join/mgps/dto/ExtBean;->setSecondModule(Ljava/lang/String;)Lcom/join/mgps/dto/ExtBean;

    .line 15
    .line 16
    .line 17
    move-result-object v0

    .line 18
    const-string v1, "categoryPage"

    .line 19
    .line 20
    invoke-virtual {v0, v1}, Lcom/join/mgps/dto/ExtBean;->setChatId(Ljava/lang/String;)Lcom/join/mgps/dto/ExtBean;

    .line 21
    .line 22
    .line 23
    move-result-object v0

    .line 24
    invoke-virtual {v0, p1}, Lcom/join/mgps/dto/ExtBean;->setSopName(Ljava/lang/String;)Lcom/join/mgps/dto/ExtBean;

    .line 25
    .line 26
    .line 27
    move-result-object p1

    .line 28
    const-string v0, "setSopName(...)"

    .line 29
    .line 30
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 31
    .line 32
    .line 33
    return-object p1
.end method

.method private final categoryPageExpExtBean(Ljava/lang/String;)Lcom/join/mgps/dto/ExtBean;
    .locals 1

    .line 1
    invoke-direct {p0, p1}, Lcom/join/kotlin/ui/netgame/NetGameCategoryInnerFragment$Companion;->categoryClickExtBean(Ljava/lang/String;)Lcom/join/mgps/dto/ExtBean;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    const-string v0, "page"

    .line 6
    .line 7
    invoke-virtual {p1, v0}, Lcom/join/mgps/dto/ExtBean;->setTypeCode(Ljava/lang/String;)Lcom/join/mgps/dto/ExtBean;

    .line 8
    .line 9
    .line 10
    move-result-object p1

    .line 11
    const-string v0, "10020"

    .line 12
    .line 13
    invoke-virtual {p1, v0}, Lcom/join/mgps/dto/ExtBean;->setFrom(Ljava/lang/String;)Lcom/join/mgps/dto/ExtBean;

    .line 14
    .line 15
    .line 16
    move-result-object p1

    .line 17
    const-string v0, "setFrom(...)"

    .line 18
    .line 19
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 20
    .line 21
    .line 22
    return-object p1
.end method

.method public static synthetic newInstance$default(Lcom/join/kotlin/ui/netgame/NetGameCategoryInnerFragment$Companion;ILjava/lang/String;IZILjava/lang/Object;)Lcom/join/kotlin/ui/netgame/NetGameCategoryInnerFragment;
    .locals 0

    .line 1
    and-int/lit8 p5, p5, 0x8

    .line 2
    .line 3
    if-eqz p5, :cond_0

    .line 4
    .line 5
    const/4 p4, 0x1

    .line 6
    :cond_0
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/join/kotlin/ui/netgame/NetGameCategoryInnerFragment$Companion;->newInstance(ILjava/lang/String;IZ)Lcom/join/kotlin/ui/netgame/NetGameCategoryInnerFragment;

    .line 7
    .line 8
    .line 9
    move-result-object p0

    .line 10
    return-object p0
.end method


# virtual methods
.method public final newInstance(ILjava/lang/String;IZ)Lcom/join/kotlin/ui/netgame/NetGameCategoryInnerFragment;
    .locals 3
    .param p2    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    const-string v0, "tabTitle"

    .line 2
    .line 3
    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    new-instance v0, Lcom/join/kotlin/ui/netgame/NetGameCategoryInnerFragment;

    .line 7
    .line 8
    invoke-direct {v0}, Lcom/join/kotlin/ui/netgame/NetGameCategoryInnerFragment;-><init>()V

    .line 9
    .line 10
    .line 11
    new-instance v1, Landroid/os/Bundle;

    .line 12
    .line 13
    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 14
    .line 15
    .line 16
    const-string v2, "tab_type"

    .line 17
    .line 18
    invoke-virtual {v1, v2, p1}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    .line 19
    .line 20
    .line 21
    const-string p1, "tab_title"

    .line 22
    .line 23
    invoke-virtual {v1, p1, p2}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 24
    .line 25
    .line 26
    const-string p1, "pageIndex"

    .line 27
    .line 28
    invoke-virtual {v1, p1, p3}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    .line 29
    .line 30
    .line 31
    const-string p1, "_from_home"

    .line 32
    .line 33
    invoke-virtual {v1, p1, p4}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 34
    .line 35
    .line 36
    invoke-virtual {v0, v1}, Landroidx/fragment/app/Fragment;->setArguments(Landroid/os/Bundle;)V

    .line 37
    .line 38
    .line 39
    return-object v0
.end method
