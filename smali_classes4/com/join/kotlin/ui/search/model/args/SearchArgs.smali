.class public final Lcom/join/kotlin/ui/search/model/args/SearchArgs;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u001e\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u001d\u0008\u0086\u0008\u0018\u00002\u00020\u0001B9\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u0012\u0006\u0010\u0006\u001a\u00020\u0007\u0012\u0006\u0010\u0008\u001a\u00020\u0007\u0012\u0006\u0010\t\u001a\u00020\u0007\u0012\u0008\u0008\u0002\u0010\n\u001a\u00020\u0007\u00a2\u0006\u0004\u0008\u000b\u0010\u000cJ\t\u0010\u0019\u001a\u00020\u0003H\u00c6\u0003J\t\u0010\u001a\u001a\u00020\u0005H\u00c6\u0003J\t\u0010\u001b\u001a\u00020\u0007H\u00c6\u0003J\t\u0010\u001c\u001a\u00020\u0007H\u00c6\u0003J\t\u0010\u001d\u001a\u00020\u0007H\u00c6\u0003J\t\u0010\u001e\u001a\u00020\u0007H\u00c6\u0003JE\u0010\u001f\u001a\u00020\u00002\u0008\u0008\u0002\u0010\u0002\u001a\u00020\u00032\u0008\u0008\u0002\u0010\u0004\u001a\u00020\u00052\u0008\u0008\u0002\u0010\u0006\u001a\u00020\u00072\u0008\u0008\u0002\u0010\u0008\u001a\u00020\u00072\u0008\u0008\u0002\u0010\t\u001a\u00020\u00072\u0008\u0008\u0002\u0010\n\u001a\u00020\u0007H\u00c6\u0001J\u0013\u0010 \u001a\u00020\u00052\u0008\u0010!\u001a\u0004\u0018\u00010\u0001H\u00d6\u0003J\t\u0010\"\u001a\u00020\u0007H\u00d6\u0001J\t\u0010#\u001a\u00020\u0003H\u00d6\u0001R\u0011\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\r\u0010\u000eR\u0011\u0010\u0004\u001a\u00020\u0005\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u000f\u0010\u0010R\u001a\u0010\u0006\u001a\u00020\u0007X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0011\u0010\u0012\"\u0004\u0008\u0013\u0010\u0014R\u001a\u0010\u0008\u001a\u00020\u0007X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0015\u0010\u0012\"\u0004\u0008\u0016\u0010\u0014R\u0011\u0010\t\u001a\u00020\u0007\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0017\u0010\u0012R\u0011\u0010\n\u001a\u00020\u0007\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0018\u0010\u0012\u00a8\u0006$"
    }
    d2 = {
        "Lcom/join/kotlin/ui/search/model/args/SearchArgs;",
        "",
        "keyword",
        "",
        "custom",
        "",
        "plugin_num",
        "",
        "lang_id",
        "page",
        "search_status",
        "<init>",
        "(Ljava/lang/String;ZIIII)V",
        "getKeyword",
        "()Ljava/lang/String;",
        "getCustom",
        "()Z",
        "getPlugin_num",
        "()I",
        "setPlugin_num",
        "(I)V",
        "getLang_id",
        "setLang_id",
        "getPage",
        "getSearch_status",
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
.field private final custom:Z

.field private final keyword:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private lang_id:I

.field private final page:I

.field private plugin_num:I

.field private final search_status:I


# direct methods
.method public constructor <init>(Ljava/lang/String;ZIIII)V
    .locals 1
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "keyword"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/join/kotlin/ui/search/model/args/SearchArgs;->keyword:Ljava/lang/String;

    .line 3
    iput-boolean p2, p0, Lcom/join/kotlin/ui/search/model/args/SearchArgs;->custom:Z

    .line 4
    iput p3, p0, Lcom/join/kotlin/ui/search/model/args/SearchArgs;->plugin_num:I

    .line 5
    iput p4, p0, Lcom/join/kotlin/ui/search/model/args/SearchArgs;->lang_id:I

    .line 6
    iput p5, p0, Lcom/join/kotlin/ui/search/model/args/SearchArgs;->page:I

    .line 7
    iput p6, p0, Lcom/join/kotlin/ui/search/model/args/SearchArgs;->search_status:I

    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/String;ZIIIIILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 7

    and-int/lit8 p7, p7, 0x20

    if-eqz p7, :cond_0

    const/4 p6, 0x0

    const/4 v6, 0x0

    goto :goto_0

    :cond_0
    move v6, p6

    :goto_0
    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    .line 8
    invoke-direct/range {v0 .. v6}, Lcom/join/kotlin/ui/search/model/args/SearchArgs;-><init>(Ljava/lang/String;ZIIII)V

    return-void
.end method

.method public static synthetic copy$default(Lcom/join/kotlin/ui/search/model/args/SearchArgs;Ljava/lang/String;ZIIIIILjava/lang/Object;)Lcom/join/kotlin/ui/search/model/args/SearchArgs;
    .locals 4

    and-int/lit8 p8, p7, 0x1

    if-eqz p8, :cond_0

    iget-object p1, p0, Lcom/join/kotlin/ui/search/model/args/SearchArgs;->keyword:Ljava/lang/String;

    :cond_0
    and-int/lit8 p8, p7, 0x2

    if-eqz p8, :cond_1

    iget-boolean p2, p0, Lcom/join/kotlin/ui/search/model/args/SearchArgs;->custom:Z

    :cond_1
    move p8, p2

    and-int/lit8 p2, p7, 0x4

    if-eqz p2, :cond_2

    iget p3, p0, Lcom/join/kotlin/ui/search/model/args/SearchArgs;->plugin_num:I

    :cond_2
    move v0, p3

    and-int/lit8 p2, p7, 0x8

    if-eqz p2, :cond_3

    iget p4, p0, Lcom/join/kotlin/ui/search/model/args/SearchArgs;->lang_id:I

    :cond_3
    move v1, p4

    and-int/lit8 p2, p7, 0x10

    if-eqz p2, :cond_4

    iget p5, p0, Lcom/join/kotlin/ui/search/model/args/SearchArgs;->page:I

    :cond_4
    move v2, p5

    and-int/lit8 p2, p7, 0x20

    if-eqz p2, :cond_5

    iget p6, p0, Lcom/join/kotlin/ui/search/model/args/SearchArgs;->search_status:I

    :cond_5
    move v3, p6

    move-object p2, p0

    move-object p3, p1

    move p4, p8

    move p5, v0

    move p6, v1

    move p7, v2

    move p8, v3

    invoke-virtual/range {p2 .. p8}, Lcom/join/kotlin/ui/search/model/args/SearchArgs;->copy(Ljava/lang/String;ZIIII)Lcom/join/kotlin/ui/search/model/args/SearchArgs;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final component1()Ljava/lang/String;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object v0, p0, Lcom/join/kotlin/ui/search/model/args/SearchArgs;->keyword:Ljava/lang/String;

    return-object v0
.end method

.method public final component2()Z
    .locals 1

    iget-boolean v0, p0, Lcom/join/kotlin/ui/search/model/args/SearchArgs;->custom:Z

    return v0
.end method

.method public final component3()I
    .locals 1

    iget v0, p0, Lcom/join/kotlin/ui/search/model/args/SearchArgs;->plugin_num:I

    return v0
.end method

.method public final component4()I
    .locals 1

    iget v0, p0, Lcom/join/kotlin/ui/search/model/args/SearchArgs;->lang_id:I

    return v0
.end method

.method public final component5()I
    .locals 1

    iget v0, p0, Lcom/join/kotlin/ui/search/model/args/SearchArgs;->page:I

    return v0
.end method

.method public final component6()I
    .locals 1

    iget v0, p0, Lcom/join/kotlin/ui/search/model/args/SearchArgs;->search_status:I

    return v0
.end method

.method public final copy(Ljava/lang/String;ZIIII)Lcom/join/kotlin/ui/search/model/args/SearchArgs;
    .locals 8
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string v0, "keyword"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lcom/join/kotlin/ui/search/model/args/SearchArgs;

    move-object v1, v0

    move-object v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    move v6, p5

    move v7, p6

    invoke-direct/range {v1 .. v7}, Lcom/join/kotlin/ui/search/model/args/SearchArgs;-><init>(Ljava/lang/String;ZIIII)V

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
    instance-of v1, p1, Lcom/join/kotlin/ui/search/model/args/SearchArgs;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lcom/join/kotlin/ui/search/model/args/SearchArgs;

    iget-object v1, p0, Lcom/join/kotlin/ui/search/model/args/SearchArgs;->keyword:Ljava/lang/String;

    iget-object v3, p1, Lcom/join/kotlin/ui/search/model/args/SearchArgs;->keyword:Ljava/lang/String;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    return v2

    :cond_2
    iget-boolean v1, p0, Lcom/join/kotlin/ui/search/model/args/SearchArgs;->custom:Z

    iget-boolean v3, p1, Lcom/join/kotlin/ui/search/model/args/SearchArgs;->custom:Z

    if-eq v1, v3, :cond_3

    return v2

    :cond_3
    iget v1, p0, Lcom/join/kotlin/ui/search/model/args/SearchArgs;->plugin_num:I

    iget v3, p1, Lcom/join/kotlin/ui/search/model/args/SearchArgs;->plugin_num:I

    if-eq v1, v3, :cond_4

    return v2

    :cond_4
    iget v1, p0, Lcom/join/kotlin/ui/search/model/args/SearchArgs;->lang_id:I

    iget v3, p1, Lcom/join/kotlin/ui/search/model/args/SearchArgs;->lang_id:I

    if-eq v1, v3, :cond_5

    return v2

    :cond_5
    iget v1, p0, Lcom/join/kotlin/ui/search/model/args/SearchArgs;->page:I

    iget v3, p1, Lcom/join/kotlin/ui/search/model/args/SearchArgs;->page:I

    if-eq v1, v3, :cond_6

    return v2

    :cond_6
    iget v1, p0, Lcom/join/kotlin/ui/search/model/args/SearchArgs;->search_status:I

    iget p1, p1, Lcom/join/kotlin/ui/search/model/args/SearchArgs;->search_status:I

    if-eq v1, p1, :cond_7

    return v2

    :cond_7
    return v0
.end method

.method public final getCustom()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/join/kotlin/ui/search/model/args/SearchArgs;->custom:Z

    .line 2
    .line 3
    return v0
.end method

.method public final getKeyword()Ljava/lang/String;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/kotlin/ui/search/model/args/SearchArgs;->keyword:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public final getLang_id()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/join/kotlin/ui/search/model/args/SearchArgs;->lang_id:I

    .line 2
    .line 3
    return v0
.end method

.method public final getPage()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/join/kotlin/ui/search/model/args/SearchArgs;->page:I

    .line 2
    .line 3
    return v0
.end method

.method public final getPlugin_num()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/join/kotlin/ui/search/model/args/SearchArgs;->plugin_num:I

    .line 2
    .line 3
    return v0
.end method

.method public final getSearch_status()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/join/kotlin/ui/search/model/args/SearchArgs;->search_status:I

    .line 2
    .line 3
    return v0
.end method

.method public hashCode()I
    .locals 2

    iget-object v0, p0, Lcom/join/kotlin/ui/search/model/args/SearchArgs;->keyword:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    iget-boolean v1, p0, Lcom/join/kotlin/ui/search/model/args/SearchArgs;->custom:Z

    invoke-static {v1}, Lr2/a;->a(Z)I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lcom/join/kotlin/ui/search/model/args/SearchArgs;->plugin_num:I

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lcom/join/kotlin/ui/search/model/args/SearchArgs;->lang_id:I

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lcom/join/kotlin/ui/search/model/args/SearchArgs;->page:I

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lcom/join/kotlin/ui/search/model/args/SearchArgs;->search_status:I

    add-int/2addr v0, v1

    return v0
.end method

.method public final setLang_id(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/join/kotlin/ui/search/model/args/SearchArgs;->lang_id:I

    .line 2
    .line 3
    return-void
.end method

.method public final setPlugin_num(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/join/kotlin/ui/search/model/args/SearchArgs;->plugin_num:I

    .line 2
    .line 3
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "SearchArgs(keyword="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/join/kotlin/ui/search/model/args/SearchArgs;->keyword:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", custom="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/join/kotlin/ui/search/model/args/SearchArgs;->custom:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", plugin_num="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/join/kotlin/ui/search/model/args/SearchArgs;->plugin_num:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", lang_id="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/join/kotlin/ui/search/model/args/SearchArgs;->lang_id:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", page="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/join/kotlin/ui/search/model/args/SearchArgs;->page:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", search_status="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/join/kotlin/ui/search/model/args/SearchArgs;->search_status:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/16 v1, 0x29

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
