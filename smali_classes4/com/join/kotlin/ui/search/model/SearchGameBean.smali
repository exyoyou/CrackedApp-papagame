.class public final Lcom/join/kotlin/ui/search/model/SearchGameBean;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/join/kotlin/ui/search/model/SearchGameBean$Companion;
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nSearchGameBean.kt\nKotlin\n*S Kotlin\n*F\n+ 1 SearchGameBean.kt\ncom/join/kotlin/ui/search/model/SearchGameBean\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,72:1\n1869#2,2:73\n*S KotlinDebug\n*F\n+ 1 SearchGameBean.kt\ncom/join/kotlin/ui/search/model/SearchGameBean\n*L\n43#1:73,2\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000,\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u0002\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0008\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008$\u0008\u0086\u0008\u0018\u0000 /2\u00020\u0001:\u0001/BC\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0008\u0008\u0002\u0010\u0004\u001a\u00020\u0005\u0012\u0008\u0008\u0002\u0010\u0006\u001a\u00020\u0005\u0012\u0008\u0008\u0002\u0010\u0007\u001a\u00020\u0008\u0012\u0008\u0008\u0002\u0010\t\u001a\u00020\n\u0012\n\u0008\u0002\u0010\u000b\u001a\u0004\u0018\u00010\u000c\u00a2\u0006\u0004\u0008\r\u0010\u000eJ\u0006\u0010\u001e\u001a\u00020\u0008J\u0006\u0010\u001f\u001a\u00020\u0008J\u0006\u0010 \u001a\u00020\u0005J\u0006\u0010!\u001a\u00020\u0005J\u0006\u0010\"\u001a\u00020\u0005J\u0006\u0010#\u001a\u00020\u0005J\t\u0010$\u001a\u00020\u0003H\u00c6\u0003J\t\u0010%\u001a\u00020\u0005H\u00c6\u0003J\t\u0010&\u001a\u00020\u0005H\u00c6\u0003J\t\u0010\'\u001a\u00020\u0008H\u00c6\u0003J\t\u0010(\u001a\u00020\nH\u00c6\u0003J\u000b\u0010)\u001a\u0004\u0018\u00010\u000cH\u00c6\u0003JG\u0010*\u001a\u00020\u00002\u0008\u0008\u0002\u0010\u0002\u001a\u00020\u00032\u0008\u0008\u0002\u0010\u0004\u001a\u00020\u00052\u0008\u0008\u0002\u0010\u0006\u001a\u00020\u00052\u0008\u0008\u0002\u0010\u0007\u001a\u00020\u00082\u0008\u0008\u0002\u0010\t\u001a\u00020\n2\n\u0008\u0002\u0010\u000b\u001a\u0004\u0018\u00010\u000cH\u00c6\u0001J\u0013\u0010+\u001a\u00020\u00082\u0008\u0010,\u001a\u0004\u0018\u00010\u0001H\u00d6\u0003J\t\u0010-\u001a\u00020\nH\u00d6\u0001J\t\u0010.\u001a\u00020\u0005H\u00d6\u0001R\u0011\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u000f\u0010\u0010R\u0011\u0010\u0004\u001a\u00020\u0005\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0011\u0010\u0012R\u001a\u0010\u0006\u001a\u00020\u0005X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0013\u0010\u0012\"\u0004\u0008\u0014\u0010\u0015R\u001a\u0010\u0007\u001a\u00020\u0008X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0016\u0010\u0017\"\u0004\u0008\u0018\u0010\u0019R\u0011\u0010\t\u001a\u00020\n\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u001a\u0010\u001bR\u0013\u0010\u000b\u001a\u0004\u0018\u00010\u000c\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u001c\u0010\u001d\u00a8\u00060"
    }
    d2 = {
        "Lcom/join/kotlin/ui/search/model/SearchGameBean;",
        "",
        "game",
        "Lcom/join/mgps/dto/CommonGameInfoBean;",
        "title",
        "",
        "showLabelStr",
        "showLine",
        "",
        "dataType",
        "",
        "wordInfo",
        "Lcom/join/kotlin/ui/search/model/SearchWordInfoBean;",
        "<init>",
        "(Lcom/join/mgps/dto/CommonGameInfoBean;Ljava/lang/String;Ljava/lang/String;ZILcom/join/kotlin/ui/search/model/SearchWordInfoBean;)V",
        "getGame",
        "()Lcom/join/mgps/dto/CommonGameInfoBean;",
        "getTitle",
        "()Ljava/lang/String;",
        "getShowLabelStr",
        "setShowLabelStr",
        "(Ljava/lang/String;)V",
        "getShowLine",
        "()Z",
        "setShowLine",
        "(Z)V",
        "getDataType",
        "()I",
        "getWordInfo",
        "()Lcom/join/kotlin/ui/search/model/SearchWordInfoBean;",
        "showADLabel",
        "showRecTag",
        "showGfTagStr",
        "showHtmlName",
        "getLabelStr",
        "showSizeStr",
        "component1",
        "component2",
        "component3",
        "component4",
        "component5",
        "component6",
        "copy",
        "equals",
        "other",
        "hashCode",
        "toString",
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
        "SMAP\nSearchGameBean.kt\nKotlin\n*S Kotlin\n*F\n+ 1 SearchGameBean.kt\ncom/join/kotlin/ui/search/model/SearchGameBean\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,72:1\n1869#2,2:73\n*S KotlinDebug\n*F\n+ 1 SearchGameBean.kt\ncom/join/kotlin/ui/search/model/SearchGameBean\n*L\n43#1:73,2\n*E\n"
    }
.end annotation


# static fields
.field public static final Companion:Lcom/join/kotlin/ui/search/model/SearchGameBean$Companion;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final DATA_TYPE_AD:I = 0x1

.field public static final DATA_TYPE_NORMAL:I


# instance fields
.field private final dataType:I

.field private final game:Lcom/join/mgps/dto/CommonGameInfoBean;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private showLabelStr:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private showLine:Z

.field private final title:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private final wordInfo:Lcom/join/kotlin/ui/search/model/SearchWordInfoBean;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/join/kotlin/ui/search/model/SearchGameBean$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/join/kotlin/ui/search/model/SearchGameBean$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/join/kotlin/ui/search/model/SearchGameBean;->Companion:Lcom/join/kotlin/ui/search/model/SearchGameBean$Companion;

    return-void
.end method

.method public constructor <init>(Lcom/join/mgps/dto/CommonGameInfoBean;Ljava/lang/String;Ljava/lang/String;ZILcom/join/kotlin/ui/search/model/SearchWordInfoBean;)V
    .locals 1
    .param p1    # Lcom/join/mgps/dto/CommonGameInfoBean;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p3    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p6    # Lcom/join/kotlin/ui/search/model/SearchWordInfoBean;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    const-string v0, "game"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "title"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "showLabelStr"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/join/kotlin/ui/search/model/SearchGameBean;->game:Lcom/join/mgps/dto/CommonGameInfoBean;

    .line 3
    iput-object p2, p0, Lcom/join/kotlin/ui/search/model/SearchGameBean;->title:Ljava/lang/String;

    .line 4
    iput-object p3, p0, Lcom/join/kotlin/ui/search/model/SearchGameBean;->showLabelStr:Ljava/lang/String;

    .line 5
    iput-boolean p4, p0, Lcom/join/kotlin/ui/search/model/SearchGameBean;->showLine:Z

    .line 6
    iput p5, p0, Lcom/join/kotlin/ui/search/model/SearchGameBean;->dataType:I

    .line 7
    iput-object p6, p0, Lcom/join/kotlin/ui/search/model/SearchGameBean;->wordInfo:Lcom/join/kotlin/ui/search/model/SearchWordInfoBean;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/join/mgps/dto/CommonGameInfoBean;Ljava/lang/String;Ljava/lang/String;ZILcom/join/kotlin/ui/search/model/SearchWordInfoBean;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 5

    and-int/lit8 v0, p7, 0x2

    const-string v1, ""

    if-eqz v0, :cond_0

    move-object v0, v1

    goto :goto_0

    :cond_0
    move-object v0, p2

    :goto_0
    and-int/lit8 v2, p7, 0x4

    if-eqz v2, :cond_1

    goto :goto_1

    :cond_1
    move-object v1, p3

    :goto_1
    and-int/lit8 v2, p7, 0x8

    if-eqz v2, :cond_2

    const/4 v2, 0x1

    goto :goto_2

    :cond_2
    move v2, p4

    :goto_2
    and-int/lit8 v3, p7, 0x10

    if-eqz v3, :cond_3

    const/4 v3, 0x0

    goto :goto_3

    :cond_3
    move v3, p5

    :goto_3
    and-int/lit8 v4, p7, 0x20

    if-eqz v4, :cond_4

    const/4 v4, 0x0

    goto :goto_4

    :cond_4
    move-object v4, p6

    :goto_4
    move-object p2, p0

    move-object p3, p1

    move-object p4, v0

    move-object p5, v1

    move p6, v2

    move p7, v3

    move-object p8, v4

    .line 8
    invoke-direct/range {p2 .. p8}, Lcom/join/kotlin/ui/search/model/SearchGameBean;-><init>(Lcom/join/mgps/dto/CommonGameInfoBean;Ljava/lang/String;Ljava/lang/String;ZILcom/join/kotlin/ui/search/model/SearchWordInfoBean;)V

    return-void
.end method

.method public static synthetic copy$default(Lcom/join/kotlin/ui/search/model/SearchGameBean;Lcom/join/mgps/dto/CommonGameInfoBean;Ljava/lang/String;Ljava/lang/String;ZILcom/join/kotlin/ui/search/model/SearchWordInfoBean;ILjava/lang/Object;)Lcom/join/kotlin/ui/search/model/SearchGameBean;
    .locals 4

    and-int/lit8 p8, p7, 0x1

    if-eqz p8, :cond_0

    iget-object p1, p0, Lcom/join/kotlin/ui/search/model/SearchGameBean;->game:Lcom/join/mgps/dto/CommonGameInfoBean;

    :cond_0
    and-int/lit8 p8, p7, 0x2

    if-eqz p8, :cond_1

    iget-object p2, p0, Lcom/join/kotlin/ui/search/model/SearchGameBean;->title:Ljava/lang/String;

    :cond_1
    move-object p8, p2

    and-int/lit8 p2, p7, 0x4

    if-eqz p2, :cond_2

    iget-object p3, p0, Lcom/join/kotlin/ui/search/model/SearchGameBean;->showLabelStr:Ljava/lang/String;

    :cond_2
    move-object v0, p3

    and-int/lit8 p2, p7, 0x8

    if-eqz p2, :cond_3

    iget-boolean p4, p0, Lcom/join/kotlin/ui/search/model/SearchGameBean;->showLine:Z

    :cond_3
    move v1, p4

    and-int/lit8 p2, p7, 0x10

    if-eqz p2, :cond_4

    iget p5, p0, Lcom/join/kotlin/ui/search/model/SearchGameBean;->dataType:I

    :cond_4
    move v2, p5

    and-int/lit8 p2, p7, 0x20

    if-eqz p2, :cond_5

    iget-object p6, p0, Lcom/join/kotlin/ui/search/model/SearchGameBean;->wordInfo:Lcom/join/kotlin/ui/search/model/SearchWordInfoBean;

    :cond_5
    move-object v3, p6

    move-object p2, p0

    move-object p3, p1

    move-object p4, p8

    move-object p5, v0

    move p6, v1

    move p7, v2

    move-object p8, v3

    invoke-virtual/range {p2 .. p8}, Lcom/join/kotlin/ui/search/model/SearchGameBean;->copy(Lcom/join/mgps/dto/CommonGameInfoBean;Ljava/lang/String;Ljava/lang/String;ZILcom/join/kotlin/ui/search/model/SearchWordInfoBean;)Lcom/join/kotlin/ui/search/model/SearchGameBean;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final component1()Lcom/join/mgps/dto/CommonGameInfoBean;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object v0, p0, Lcom/join/kotlin/ui/search/model/SearchGameBean;->game:Lcom/join/mgps/dto/CommonGameInfoBean;

    return-object v0
.end method

.method public final component2()Ljava/lang/String;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object v0, p0, Lcom/join/kotlin/ui/search/model/SearchGameBean;->title:Ljava/lang/String;

    return-object v0
.end method

.method public final component3()Ljava/lang/String;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object v0, p0, Lcom/join/kotlin/ui/search/model/SearchGameBean;->showLabelStr:Ljava/lang/String;

    return-object v0
.end method

.method public final component4()Z
    .locals 1

    iget-boolean v0, p0, Lcom/join/kotlin/ui/search/model/SearchGameBean;->showLine:Z

    return v0
.end method

.method public final component5()I
    .locals 1

    iget v0, p0, Lcom/join/kotlin/ui/search/model/SearchGameBean;->dataType:I

    return v0
.end method

.method public final component6()Lcom/join/kotlin/ui/search/model/SearchWordInfoBean;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    iget-object v0, p0, Lcom/join/kotlin/ui/search/model/SearchGameBean;->wordInfo:Lcom/join/kotlin/ui/search/model/SearchWordInfoBean;

    return-object v0
.end method

.method public final copy(Lcom/join/mgps/dto/CommonGameInfoBean;Ljava/lang/String;Ljava/lang/String;ZILcom/join/kotlin/ui/search/model/SearchWordInfoBean;)Lcom/join/kotlin/ui/search/model/SearchGameBean;
    .locals 8
    .param p1    # Lcom/join/mgps/dto/CommonGameInfoBean;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p3    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p6    # Lcom/join/kotlin/ui/search/model/SearchWordInfoBean;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string v0, "game"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "title"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "showLabelStr"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lcom/join/kotlin/ui/search/model/SearchGameBean;

    move-object v1, v0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move v5, p4

    move v6, p5

    move-object v7, p6

    invoke-direct/range {v1 .. v7}, Lcom/join/kotlin/ui/search/model/SearchGameBean;-><init>(Lcom/join/mgps/dto/CommonGameInfoBean;Ljava/lang/String;Ljava/lang/String;ZILcom/join/kotlin/ui/search/model/SearchWordInfoBean;)V

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4
    .param p1    # Ljava/lang/Object;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lcom/join/kotlin/ui/search/model/SearchGameBean;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lcom/join/kotlin/ui/search/model/SearchGameBean;

    iget-object v1, p0, Lcom/join/kotlin/ui/search/model/SearchGameBean;->game:Lcom/join/mgps/dto/CommonGameInfoBean;

    iget-object v3, p1, Lcom/join/kotlin/ui/search/model/SearchGameBean;->game:Lcom/join/mgps/dto/CommonGameInfoBean;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    return v2

    :cond_2
    iget-object v1, p0, Lcom/join/kotlin/ui/search/model/SearchGameBean;->title:Ljava/lang/String;

    iget-object v3, p1, Lcom/join/kotlin/ui/search/model/SearchGameBean;->title:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    return v2

    :cond_3
    iget-object v1, p0, Lcom/join/kotlin/ui/search/model/SearchGameBean;->showLabelStr:Ljava/lang/String;

    iget-object v3, p1, Lcom/join/kotlin/ui/search/model/SearchGameBean;->showLabelStr:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    return v2

    :cond_4
    iget-boolean v1, p0, Lcom/join/kotlin/ui/search/model/SearchGameBean;->showLine:Z

    iget-boolean v3, p1, Lcom/join/kotlin/ui/search/model/SearchGameBean;->showLine:Z

    if-eq v1, v3, :cond_5

    return v2

    :cond_5
    iget v1, p0, Lcom/join/kotlin/ui/search/model/SearchGameBean;->dataType:I

    iget v3, p1, Lcom/join/kotlin/ui/search/model/SearchGameBean;->dataType:I

    if-eq v1, v3, :cond_6

    return v2

    :cond_6
    iget-object v1, p0, Lcom/join/kotlin/ui/search/model/SearchGameBean;->wordInfo:Lcom/join/kotlin/ui/search/model/SearchWordInfoBean;

    iget-object p1, p1, Lcom/join/kotlin/ui/search/model/SearchGameBean;->wordInfo:Lcom/join/kotlin/ui/search/model/SearchWordInfoBean;

    invoke-static {v1, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_7

    return v2

    :cond_7
    return v0
.end method

.method public final getDataType()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/join/kotlin/ui/search/model/SearchGameBean;->dataType:I

    .line 2
    .line 3
    return v0
.end method

.method public final getGame()Lcom/join/mgps/dto/CommonGameInfoBean;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/kotlin/ui/search/model/SearchGameBean;->game:Lcom/join/mgps/dto/CommonGameInfoBean;

    .line 2
    .line 3
    return-object v0
.end method

.method public final getLabelStr()Ljava/lang/String;
    .locals 2
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/kotlin/ui/search/model/SearchGameBean;->showLabelStr:Ljava/lang/String;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/join/mgps/Util/t2;->i(Ljava/lang/String;)Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    iget-object v0, p0, Lcom/join/kotlin/ui/search/model/SearchGameBean;->showLabelStr:Ljava/lang/String;

    .line 10
    .line 11
    return-object v0

    .line 12
    :cond_0
    iget-object v0, p0, Lcom/join/kotlin/ui/search/model/SearchGameBean;->game:Lcom/join/mgps/dto/CommonGameInfoBean;

    .line 13
    .line 14
    invoke-virtual {v0}, Lcom/join/mgps/dto/CommonGameInfoBean;->getG_info()Lcom/join/mgps/dto/GInfoBean;

    .line 15
    .line 16
    .line 17
    move-result-object v0

    .line 18
    if-eqz v0, :cond_1

    .line 19
    .line 20
    invoke-virtual {v0}, Lcom/join/mgps/dto/GInfoBean;->getSp_tag_info()Lcom/join/mgps/dto/TipNew;

    .line 21
    .line 22
    .line 23
    move-result-object v1

    .line 24
    invoke-virtual {v0}, Lcom/join/mgps/dto/GInfoBean;->getTag_info()Ljava/util/List;

    .line 25
    .line 26
    .line 27
    move-result-object v0

    .line 28
    invoke-static {v1, v0}, Lcom/join/mgps/Util/UtilsMy;->Q1(Lcom/join/mgps/dto/TipNew;Ljava/util/List;)Ljava/lang/String;

    .line 29
    .line 30
    .line 31
    move-result-object v0

    .line 32
    if-nez v0, :cond_2

    .line 33
    .line 34
    :cond_1
    const-string v0, ""

    .line 35
    .line 36
    :cond_2
    iput-object v0, p0, Lcom/join/kotlin/ui/search/model/SearchGameBean;->showLabelStr:Ljava/lang/String;

    .line 37
    .line 38
    return-object v0
.end method

.method public final getShowLabelStr()Ljava/lang/String;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/kotlin/ui/search/model/SearchGameBean;->showLabelStr:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public final getShowLine()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/join/kotlin/ui/search/model/SearchGameBean;->showLine:Z

    .line 2
    .line 3
    return v0
.end method

.method public final getTitle()Ljava/lang/String;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/kotlin/ui/search/model/SearchGameBean;->title:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public final getWordInfo()Lcom/join/kotlin/ui/search/model/SearchWordInfoBean;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/kotlin/ui/search/model/SearchGameBean;->wordInfo:Lcom/join/kotlin/ui/search/model/SearchWordInfoBean;

    .line 2
    .line 3
    return-object v0
.end method

.method public hashCode()I
    .locals 2

    iget-object v0, p0, Lcom/join/kotlin/ui/search/model/SearchGameBean;->game:Lcom/join/mgps/dto/CommonGameInfoBean;

    invoke-virtual {v0}, Lcom/join/mgps/dto/CommonGameInfoBean;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/join/kotlin/ui/search/model/SearchGameBean;->title:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/join/kotlin/ui/search/model/SearchGameBean;->showLabelStr:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-boolean v1, p0, Lcom/join/kotlin/ui/search/model/SearchGameBean;->showLine:Z

    invoke-static {v1}, Lr2/a;->a(Z)I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lcom/join/kotlin/ui/search/model/SearchGameBean;->dataType:I

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/join/kotlin/ui/search/model/SearchGameBean;->wordInfo:Lcom/join/kotlin/ui/search/model/SearchWordInfoBean;

    if-nez v1, :cond_0

    const/4 v1, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {v1}, Lcom/join/kotlin/ui/search/model/SearchWordInfoBean;->hashCode()I

    move-result v1

    :goto_0
    add-int/2addr v0, v1

    return v0
.end method

.method public final setShowLabelStr(Ljava/lang/String;)V
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
    iput-object p1, p0, Lcom/join/kotlin/ui/search/model/SearchGameBean;->showLabelStr:Ljava/lang/String;

    .line 7
    .line 8
    return-void
.end method

.method public final setShowLine(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/join/kotlin/ui/search/model/SearchGameBean;->showLine:Z

    .line 2
    .line 3
    return-void
.end method

.method public final showADLabel()Z
    .locals 2

    .line 1
    iget v0, p0, Lcom/join/kotlin/ui/search/model/SearchGameBean;->dataType:I

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    if-ne v0, v1, :cond_0

    .line 5
    .line 6
    goto :goto_0

    .line 7
    :cond_0
    const/4 v1, 0x0

    .line 8
    :goto_0
    return v1
.end method

.method public final showGfTagStr()Ljava/lang/String;
    .locals 2
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/kotlin/ui/search/model/SearchGameBean;->game:Lcom/join/mgps/dto/CommonGameInfoBean;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/join/mgps/dto/CommonGameInfoBean;->getG_info()Lcom/join/mgps/dto/GInfoBean;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    if-eqz v0, :cond_1

    .line 8
    .line 9
    iget-object v0, p0, Lcom/join/kotlin/ui/search/model/SearchGameBean;->game:Lcom/join/mgps/dto/CommonGameInfoBean;

    .line 10
    .line 11
    invoke-virtual {v0}, Lcom/join/mgps/dto/CommonGameInfoBean;->getG_info()Lcom/join/mgps/dto/GInfoBean;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    invoke-virtual {v0}, Lcom/join/mgps/dto/GInfoBean;->getGf_tag()Ljava/util/List;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    if-eqz v0, :cond_1

    .line 20
    .line 21
    iget-object v0, p0, Lcom/join/kotlin/ui/search/model/SearchGameBean;->game:Lcom/join/mgps/dto/CommonGameInfoBean;

    .line 22
    .line 23
    invoke-virtual {v0}, Lcom/join/mgps/dto/CommonGameInfoBean;->getG_info()Lcom/join/mgps/dto/GInfoBean;

    .line 24
    .line 25
    .line 26
    move-result-object v0

    .line 27
    invoke-virtual {v0}, Lcom/join/mgps/dto/GInfoBean;->getGf_tag()Ljava/util/List;

    .line 28
    .line 29
    .line 30
    move-result-object v0

    .line 31
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    .line 32
    .line 33
    .line 34
    move-result v0

    .line 35
    if-eqz v0, :cond_0

    .line 36
    .line 37
    goto :goto_0

    .line 38
    :cond_0
    iget-object v0, p0, Lcom/join/kotlin/ui/search/model/SearchGameBean;->game:Lcom/join/mgps/dto/CommonGameInfoBean;

    .line 39
    .line 40
    invoke-virtual {v0}, Lcom/join/mgps/dto/CommonGameInfoBean;->getG_info()Lcom/join/mgps/dto/GInfoBean;

    .line 41
    .line 42
    .line 43
    move-result-object v0

    .line 44
    invoke-virtual {v0}, Lcom/join/mgps/dto/GInfoBean;->getGf_tag()Ljava/util/List;

    .line 45
    .line 46
    .line 47
    move-result-object v0

    .line 48
    const/4 v1, 0x0

    .line 49
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 50
    .line 51
    .line 52
    move-result-object v0

    .line 53
    const-string v1, "get(...)"

    .line 54
    .line 55
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 56
    .line 57
    .line 58
    check-cast v0, Ljava/lang/String;

    .line 59
    .line 60
    return-object v0

    .line 61
    :cond_1
    :goto_0
    const-string v0, ""

    .line 62
    .line 63
    return-object v0
.end method

.method public final showHtmlName()Ljava/lang/String;
    .locals 15
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/kotlin/ui/search/model/SearchGameBean;->wordInfo:Lcom/join/kotlin/ui/search/model/SearchWordInfoBean;

    .line 2
    .line 3
    if-eqz v0, :cond_2

    .line 4
    .line 5
    invoke-virtual {v0}, Lcom/join/kotlin/ui/search/model/SearchWordInfoBean;->getShow_word()Ljava/util/List;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    const/4 v1, 0x0

    .line 10
    if-eqz v0, :cond_0

    .line 11
    .line 12
    check-cast v0, Ljava/util/Collection;

    .line 13
    .line 14
    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    .line 15
    .line 16
    .line 17
    move-result v0

    .line 18
    const/4 v2, 0x1

    .line 19
    xor-int/2addr v0, v2

    .line 20
    if-ne v0, v2, :cond_0

    .line 21
    .line 22
    const/4 v1, 0x1

    .line 23
    :cond_0
    if-eqz v1, :cond_2

    .line 24
    .line 25
    iget-object v0, p0, Lcom/join/kotlin/ui/search/model/SearchGameBean;->game:Lcom/join/mgps/dto/CommonGameInfoBean;

    .line 26
    .line 27
    invoke-virtual {v0}, Lcom/join/mgps/dto/CommonGameInfoBean;->getShowName()Ljava/lang/String;

    .line 28
    .line 29
    .line 30
    move-result-object v0

    .line 31
    const-string v3, "<font color=\'#FD4F48\'>"

    .line 32
    .line 33
    const-string v7, "</font>"

    .line 34
    .line 35
    const-string v2, "{_?_}"

    .line 36
    .line 37
    const-string v8, "{_??_}"

    .line 38
    .line 39
    iget-object v1, p0, Lcom/join/kotlin/ui/search/model/SearchGameBean;->wordInfo:Lcom/join/kotlin/ui/search/model/SearchWordInfoBean;

    .line 40
    .line 41
    invoke-virtual {v1}, Lcom/join/kotlin/ui/search/model/SearchWordInfoBean;->getShow_word()Ljava/util/List;

    .line 42
    .line 43
    .line 44
    move-result-object v1

    .line 45
    check-cast v1, Ljava/lang/Iterable;

    .line 46
    .line 47
    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 48
    .line 49
    .line 50
    move-result-object v1

    .line 51
    move-object v9, v0

    .line 52
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 53
    .line 54
    .line 55
    move-result v0

    .line 56
    const-string v4, "element"

    .line 57
    .line 58
    if-eqz v0, :cond_1

    .line 59
    .line 60
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 61
    .line 62
    .line 63
    move-result-object v0

    .line 64
    check-cast v0, Ljava/lang/String;

    .line 65
    .line 66
    invoke-static {v9, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 67
    .line 68
    .line 69
    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 70
    .line 71
    .line 72
    move-result-object v10

    .line 73
    new-instance v4, Ljava/lang/StringBuilder;

    .line 74
    .line 75
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 76
    .line 77
    .line 78
    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 79
    .line 80
    .line 81
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 82
    .line 83
    .line 84
    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 85
    .line 86
    .line 87
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 88
    .line 89
    .line 90
    move-result-object v11

    .line 91
    const/4 v12, 0x0

    .line 92
    const/4 v13, 0x4

    .line 93
    const/4 v14, 0x0

    .line 94
    invoke-static/range {v9 .. v14}, Lkotlin/text/StringsKt;->replace$default(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Ljava/lang/String;

    .line 95
    .line 96
    .line 97
    move-result-object v9

    .line 98
    goto :goto_0

    .line 99
    :cond_1
    invoke-static {v9, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 100
    .line 101
    .line 102
    const/4 v4, 0x0

    .line 103
    const/4 v5, 0x4

    .line 104
    const/4 v6, 0x0

    .line 105
    move-object v1, v9

    .line 106
    invoke-static/range {v1 .. v6}, Lkotlin/text/StringsKt;->replace$default(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Ljava/lang/String;

    .line 107
    .line 108
    .line 109
    move-result-object v4

    .line 110
    const/4 v0, 0x0

    .line 111
    const/4 v1, 0x4

    .line 112
    const/4 v9, 0x0

    .line 113
    move-object v5, v8

    .line 114
    move-object v6, v7

    .line 115
    move v7, v0

    .line 116
    move v8, v1

    .line 117
    invoke-static/range {v4 .. v9}, Lkotlin/text/StringsKt;->replace$default(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Ljava/lang/String;

    .line 118
    .line 119
    .line 120
    move-result-object v0

    .line 121
    return-object v0

    .line 122
    :cond_2
    iget-object v0, p0, Lcom/join/kotlin/ui/search/model/SearchGameBean;->game:Lcom/join/mgps/dto/CommonGameInfoBean;

    .line 123
    .line 124
    invoke-virtual {v0}, Lcom/join/mgps/dto/CommonGameInfoBean;->getShowName()Ljava/lang/String;

    .line 125
    .line 126
    .line 127
    move-result-object v0

    .line 128
    const-string v1, "getShowName(...)"

    .line 129
    .line 130
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 131
    .line 132
    .line 133
    return-object v0
.end method

.method public final showRecTag()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/kotlin/ui/search/model/SearchGameBean;->game:Lcom/join/mgps/dto/CommonGameInfoBean;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/join/mgps/dto/CommonGameInfoBean;->showRecTag()Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    return v0
.end method

.method public final showSizeStr()Ljava/lang/String;
    .locals 4
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/kotlin/ui/search/model/SearchGameBean;->game:Lcom/join/mgps/dto/CommonGameInfoBean;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/join/mgps/dto/CommonGameInfoBean;->getTagInfo()Ljava/util/List;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-static {v0}, Lcom/join/mgps/Util/w0;->p(Ljava/util/List;)Z

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    if-eqz v0, :cond_0

    .line 12
    .line 13
    const-string v0, ""

    .line 14
    .line 15
    return-object v0

    .line 16
    :cond_0
    iget-object v0, p0, Lcom/join/kotlin/ui/search/model/SearchGameBean;->game:Lcom/join/mgps/dto/CommonGameInfoBean;

    .line 17
    .line 18
    invoke-virtual {v0}, Lcom/join/mgps/dto/CommonGameInfoBean;->getG_info()Lcom/join/mgps/dto/GInfoBean;

    .line 19
    .line 20
    .line 21
    move-result-object v0

    .line 22
    invoke-virtual {v0}, Lcom/join/mgps/dto/GInfoBean;->getApp_size()Ljava/lang/String;

    .line 23
    .line 24
    .line 25
    move-result-object v0

    .line 26
    const-string v1, "getApp_size(...)"

    .line 27
    .line 28
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 29
    .line 30
    .line 31
    invoke-static {v0}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    .line 32
    .line 33
    .line 34
    move-result-wide v0

    .line 35
    const/16 v2, 0x3e8

    .line 36
    .line 37
    int-to-double v2, v2

    .line 38
    mul-double v0, v0, v2

    .line 39
    .line 40
    mul-double v0, v0, v2

    .line 41
    .line 42
    double-to-long v0, v0

    .line 43
    invoke-static {v0, v1}, Lcom/join/mgps/Util/UtilsMy;->i(J)Ljava/lang/String;

    .line 44
    .line 45
    .line 46
    move-result-object v0

    .line 47
    const-string v1, "FormatFileSizeWithoutDecimal(...)"

    .line 48
    .line 49
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 50
    .line 51
    .line 52
    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "SearchGameBean(game="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/join/kotlin/ui/search/model/SearchGameBean;->game:Lcom/join/mgps/dto/CommonGameInfoBean;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", title="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/join/kotlin/ui/search/model/SearchGameBean;->title:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", showLabelStr="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/join/kotlin/ui/search/model/SearchGameBean;->showLabelStr:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", showLine="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/join/kotlin/ui/search/model/SearchGameBean;->showLine:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", dataType="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/join/kotlin/ui/search/model/SearchGameBean;->dataType:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", wordInfo="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/join/kotlin/ui/search/model/SearchGameBean;->wordInfo:Lcom/join/kotlin/ui/search/model/SearchWordInfoBean;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 v1, 0x29

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
