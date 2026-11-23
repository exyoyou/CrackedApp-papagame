.class public final Lcom/join/kotlin/ui/nostalgia/NostalgiaGameListFragment$Companion;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/join/kotlin/ui/nostalgia/NostalgiaGameListFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u00006\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0003\n\u0002\u0010\u000e\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0000\n\u0002\u0018\u0002\n\u0000\u0008\u0086\u0003\u0018\u00002\u00020\u0001B\t\u0008\u0002\u00a2\u0006\u0004\u0008\u0002\u0010\u0003JB\u0010\u0008\u001a\u00020\t2\u0006\u0010\n\u001a\u00020\u00052\u001c\u0008\u0002\u0010\u000b\u001a\u0016\u0012\u0004\u0012\u00020\r\u0018\u00010\u000cj\n\u0012\u0004\u0012\u00020\r\u0018\u0001`\u000e2\u0008\u0008\u0002\u0010\u000f\u001a\u00020\u00102\u0008\u0010\u0011\u001a\u0004\u0018\u00010\u0012H\u0007R\u000e\u0010\u0004\u001a\u00020\u0005X\u0082T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0006\u001a\u00020\u0005X\u0082T\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0007\u001a\u00020\u0005X\u0082T\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u0013"
    }
    d2 = {
        "Lcom/join/kotlin/ui/nostalgia/NostalgiaGameListFragment$Companion;",
        "",
        "<init>",
        "()V",
        "TAG",
        "",
        "ARG_NOSTALGIA_TYPE",
        "ARG_PRELOAD_GAMES",
        "newInstance",
        "Lcom/join/kotlin/ui/nostalgia/NostalgiaGameListFragment;",
        "nostalgiaType",
        "preloadGames",
        "Ljava/util/ArrayList;",
        "Lcom/join/mgps/dto/CommonGameInfoBean;",
        "Lkotlin/collections/ArrayList;",
        "pageIndex",
        "",
        "extBean",
        "Lcom/join/mgps/dto/ExtBean;",
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
    invoke-direct {p0}, Lcom/join/kotlin/ui/nostalgia/NostalgiaGameListFragment$Companion;-><init>()V

    return-void
.end method

.method public static synthetic newInstance$default(Lcom/join/kotlin/ui/nostalgia/NostalgiaGameListFragment$Companion;Ljava/lang/String;Ljava/util/ArrayList;ILcom/join/mgps/dto/ExtBean;ILjava/lang/Object;)Lcom/join/kotlin/ui/nostalgia/NostalgiaGameListFragment;
    .locals 0

    .line 1
    and-int/lit8 p6, p5, 0x2

    .line 2
    .line 3
    if-eqz p6, :cond_0

    .line 4
    .line 5
    const/4 p2, 0x0

    .line 6
    :cond_0
    and-int/lit8 p5, p5, 0x4

    .line 7
    .line 8
    if-eqz p5, :cond_1

    .line 9
    .line 10
    const/4 p3, 0x0

    .line 11
    :cond_1
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/join/kotlin/ui/nostalgia/NostalgiaGameListFragment$Companion;->newInstance(Ljava/lang/String;Ljava/util/ArrayList;ILcom/join/mgps/dto/ExtBean;)Lcom/join/kotlin/ui/nostalgia/NostalgiaGameListFragment;

    .line 12
    .line 13
    .line 14
    move-result-object p0

    .line 15
    return-object p0
.end method


# virtual methods
.method public final newInstance(Ljava/lang/String;Lcom/join/mgps/dto/ExtBean;)Lcom/join/kotlin/ui/nostalgia/NostalgiaGameListFragment;
    .locals 8
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lcom/join/mgps/dto/ExtBean;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation build Lkotlin/jvm/JvmOverloads;
    .end annotation

    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    const-string v0, "nostalgiaType"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v6, 0x6

    const/4 v7, 0x0

    move-object v1, p0

    move-object v2, p1

    move-object v5, p2

    invoke-static/range {v1 .. v7}, Lcom/join/kotlin/ui/nostalgia/NostalgiaGameListFragment$Companion;->newInstance$default(Lcom/join/kotlin/ui/nostalgia/NostalgiaGameListFragment$Companion;Ljava/lang/String;Ljava/util/ArrayList;ILcom/join/mgps/dto/ExtBean;ILjava/lang/Object;)Lcom/join/kotlin/ui/nostalgia/NostalgiaGameListFragment;

    move-result-object p1

    return-object p1
.end method

.method public final newInstance(Ljava/lang/String;Ljava/util/ArrayList;ILcom/join/mgps/dto/ExtBean;)Lcom/join/kotlin/ui/nostalgia/NostalgiaGameListFragment;
    .locals 3
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Ljava/util/ArrayList;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p4    # Lcom/join/mgps/dto/ExtBean;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList<",
            "Lcom/join/mgps/dto/CommonGameInfoBean;",
            ">;I",
            "Lcom/join/mgps/dto/ExtBean;",
            ")",
            "Lcom/join/kotlin/ui/nostalgia/NostalgiaGameListFragment;"
        }
    .end annotation

    .annotation build Lkotlin/jvm/JvmOverloads;
    .end annotation

    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string v0, "nostalgiaType"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3
    new-instance v0, Lcom/join/kotlin/ui/nostalgia/NostalgiaGameListFragment;

    invoke-direct {v0}, Lcom/join/kotlin/ui/nostalgia/NostalgiaGameListFragment;-><init>()V

    .line 4
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    const-string v2, "nostalgia_type"

    .line 5
    invoke-virtual {v1, v2, p1}, Landroid/os/BaseBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, "extBean"

    .line 6
    invoke-virtual {v1, p1, p4}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    const-string p1, "pageIndex"

    .line 7
    invoke-virtual {v1, p1, p3}, Landroid/os/BaseBundle;->putInt(Ljava/lang/String;I)V

    if-eqz p2, :cond_1

    .line 8
    invoke-interface {p2}, Ljava/util/Collection;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    :goto_1
    if-nez p1, :cond_2

    const-string p1, "preload_games"

    .line 9
    invoke-virtual {v1, p1, p2}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    .line 10
    :cond_2
    invoke-virtual {v0, v1}, Landroidx/fragment/app/Fragment;->setArguments(Landroid/os/Bundle;)V

    return-object v0
.end method

.method public final newInstance(Ljava/lang/String;Ljava/util/ArrayList;Lcom/join/mgps/dto/ExtBean;)Lcom/join/kotlin/ui/nostalgia/NostalgiaGameListFragment;
    .locals 8
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Ljava/util/ArrayList;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p3    # Lcom/join/mgps/dto/ExtBean;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList<",
            "Lcom/join/mgps/dto/CommonGameInfoBean;",
            ">;",
            "Lcom/join/mgps/dto/ExtBean;",
            ")",
            "Lcom/join/kotlin/ui/nostalgia/NostalgiaGameListFragment;"
        }
    .end annotation

    .annotation build Lkotlin/jvm/JvmOverloads;
    .end annotation

    .annotation runtime Lkotlin/jvm/JvmStatic;
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 2
    const-string v0, "nostalgiaType"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v4, 0x0

    const/4 v6, 0x4

    const/4 v7, 0x0

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v5, p3

    invoke-static/range {v1 .. v7}, Lcom/join/kotlin/ui/nostalgia/NostalgiaGameListFragment$Companion;->newInstance$default(Lcom/join/kotlin/ui/nostalgia/NostalgiaGameListFragment$Companion;Ljava/lang/String;Ljava/util/ArrayList;ILcom/join/mgps/dto/ExtBean;ILjava/lang/Object;)Lcom/join/kotlin/ui/nostalgia/NostalgiaGameListFragment;

    move-result-object p1

    return-object p1
.end method
