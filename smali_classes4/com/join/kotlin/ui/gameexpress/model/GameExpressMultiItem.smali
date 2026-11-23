.class public final Lcom/join/kotlin/ui/gameexpress/model/GameExpressMultiItem;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000 \n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0002\n\u0002\u0010\u000b\n\u0002\u0008\u0018\n\u0002\u0010\u000e\n\u0000\u0008\u0086\u0008\u0018\u00002\u00020\u0001B9\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\n\u0008\u0002\u0010\u0004\u001a\u0004\u0018\u00010\u0001\u0012\u0008\u0008\u0002\u0010\u0005\u001a\u00020\u0006\u0012\u0008\u0008\u0002\u0010\u0007\u001a\u00020\u0006\u0012\u0008\u0008\u0002\u0010\u0008\u001a\u00020\u0006\u00a2\u0006\u0004\u0008\t\u0010\nJ\u0018\u0010\u0013\u001a\u0004\u0018\u0001H\u0014\"\u0006\u0008\u0000\u0010\u0014\u0018\u0001H\u0086\u0008\u00a2\u0006\u0002\u0010\u000eJ\t\u0010\u0015\u001a\u00020\u0003H\u00c6\u0003J\u000b\u0010\u0016\u001a\u0004\u0018\u00010\u0001H\u00c6\u0003J\t\u0010\u0017\u001a\u00020\u0006H\u00c6\u0003J\t\u0010\u0018\u001a\u00020\u0006H\u00c6\u0003J\t\u0010\u0019\u001a\u00020\u0006H\u00c6\u0003J=\u0010\u001a\u001a\u00020\u00002\u0008\u0008\u0002\u0010\u0002\u001a\u00020\u00032\n\u0008\u0002\u0010\u0004\u001a\u0004\u0018\u00010\u00012\u0008\u0008\u0002\u0010\u0005\u001a\u00020\u00062\u0008\u0008\u0002\u0010\u0007\u001a\u00020\u00062\u0008\u0008\u0002\u0010\u0008\u001a\u00020\u0006H\u00c6\u0001J\u0013\u0010\u001b\u001a\u00020\u00062\u0008\u0010\u001c\u001a\u0004\u0018\u00010\u0001H\u00d6\u0003J\t\u0010\u001d\u001a\u00020\u0003H\u00d6\u0001J\t\u0010\u001e\u001a\u00020\u001fH\u00d6\u0001R\u0011\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u000b\u0010\u000cR\u0013\u0010\u0004\u001a\u0004\u0018\u00010\u0001\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\r\u0010\u000eR\u0011\u0010\u0005\u001a\u00020\u0006\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0005\u0010\u000fR\u0011\u0010\u0007\u001a\u00020\u0006\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0007\u0010\u000fR\u001a\u0010\u0008\u001a\u00020\u0006X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0010\u0010\u000f\"\u0004\u0008\u0011\u0010\u0012\u00a8\u0006 "
    }
    d2 = {
        "Lcom/join/kotlin/ui/gameexpress/model/GameExpressMultiItem;",
        "",
        "viewType",
        "",
        "data",
        "isNew",
        "",
        "isUpdate",
        "hasExposed",
        "<init>",
        "(ILjava/lang/Object;ZZZ)V",
        "getViewType",
        "()I",
        "getData",
        "()Ljava/lang/Object;",
        "()Z",
        "getHasExposed",
        "setHasExposed",
        "(Z)V",
        "dataVal",
        "T",
        "component1",
        "component2",
        "component3",
        "component4",
        "component5",
        "copy",
        "equals",
        "other",
        "hashCode",
        "toString",
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


# instance fields
.field private final data:Ljava/lang/Object;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private hasExposed:Z

.field private final isNew:Z

.field private final isUpdate:Z

.field private final viewType:I


# direct methods
.method public constructor <init>(ILjava/lang/Object;ZZZ)V
    .locals 0
    .param p2    # Ljava/lang/Object;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput p1, p0, Lcom/join/kotlin/ui/gameexpress/model/GameExpressMultiItem;->viewType:I

    .line 3
    iput-object p2, p0, Lcom/join/kotlin/ui/gameexpress/model/GameExpressMultiItem;->data:Ljava/lang/Object;

    .line 4
    iput-boolean p3, p0, Lcom/join/kotlin/ui/gameexpress/model/GameExpressMultiItem;->isNew:Z

    .line 5
    iput-boolean p4, p0, Lcom/join/kotlin/ui/gameexpress/model/GameExpressMultiItem;->isUpdate:Z

    .line 6
    iput-boolean p5, p0, Lcom/join/kotlin/ui/gameexpress/model/GameExpressMultiItem;->hasExposed:Z

    return-void
.end method

.method public synthetic constructor <init>(ILjava/lang/Object;ZZZILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 6

    and-int/lit8 p7, p6, 0x2

    if-eqz p7, :cond_0

    const/4 p2, 0x0

    :cond_0
    move-object v2, p2

    and-int/lit8 p2, p6, 0x4

    const/4 p7, 0x0

    if-eqz p2, :cond_1

    const/4 v3, 0x0

    goto :goto_0

    :cond_1
    move v3, p3

    :goto_0
    and-int/lit8 p2, p6, 0x8

    if-eqz p2, :cond_2

    const/4 v4, 0x0

    goto :goto_1

    :cond_2
    move v4, p4

    :goto_1
    and-int/lit8 p2, p6, 0x10

    if-eqz p2, :cond_3

    const/4 v5, 0x0

    goto :goto_2

    :cond_3
    move v5, p5

    :goto_2
    move-object v0, p0

    move v1, p1

    .line 7
    invoke-direct/range {v0 .. v5}, Lcom/join/kotlin/ui/gameexpress/model/GameExpressMultiItem;-><init>(ILjava/lang/Object;ZZZ)V

    return-void
.end method

.method public static synthetic copy$default(Lcom/join/kotlin/ui/gameexpress/model/GameExpressMultiItem;ILjava/lang/Object;ZZZILjava/lang/Object;)Lcom/join/kotlin/ui/gameexpress/model/GameExpressMultiItem;
    .locals 3

    and-int/lit8 p7, p6, 0x1

    if-eqz p7, :cond_0

    iget p1, p0, Lcom/join/kotlin/ui/gameexpress/model/GameExpressMultiItem;->viewType:I

    :cond_0
    and-int/lit8 p7, p6, 0x2

    if-eqz p7, :cond_1

    iget-object p2, p0, Lcom/join/kotlin/ui/gameexpress/model/GameExpressMultiItem;->data:Ljava/lang/Object;

    :cond_1
    move-object p7, p2

    and-int/lit8 p2, p6, 0x4

    if-eqz p2, :cond_2

    iget-boolean p3, p0, Lcom/join/kotlin/ui/gameexpress/model/GameExpressMultiItem;->isNew:Z

    :cond_2
    move v0, p3

    and-int/lit8 p2, p6, 0x8

    if-eqz p2, :cond_3

    iget-boolean p4, p0, Lcom/join/kotlin/ui/gameexpress/model/GameExpressMultiItem;->isUpdate:Z

    :cond_3
    move v1, p4

    and-int/lit8 p2, p6, 0x10

    if-eqz p2, :cond_4

    iget-boolean p5, p0, Lcom/join/kotlin/ui/gameexpress/model/GameExpressMultiItem;->hasExposed:Z

    :cond_4
    move v2, p5

    move-object p2, p0

    move p3, p1

    move-object p4, p7

    move p5, v0

    move p6, v1

    move p7, v2

    invoke-virtual/range {p2 .. p7}, Lcom/join/kotlin/ui/gameexpress/model/GameExpressMultiItem;->copy(ILjava/lang/Object;ZZZ)Lcom/join/kotlin/ui/gameexpress/model/GameExpressMultiItem;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final component1()I
    .locals 1

    iget v0, p0, Lcom/join/kotlin/ui/gameexpress/model/GameExpressMultiItem;->viewType:I

    return v0
.end method

.method public final component2()Ljava/lang/Object;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    iget-object v0, p0, Lcom/join/kotlin/ui/gameexpress/model/GameExpressMultiItem;->data:Ljava/lang/Object;

    return-object v0
.end method

.method public final component3()Z
    .locals 1

    iget-boolean v0, p0, Lcom/join/kotlin/ui/gameexpress/model/GameExpressMultiItem;->isNew:Z

    return v0
.end method

.method public final component4()Z
    .locals 1

    iget-boolean v0, p0, Lcom/join/kotlin/ui/gameexpress/model/GameExpressMultiItem;->isUpdate:Z

    return v0
.end method

.method public final component5()Z
    .locals 1

    iget-boolean v0, p0, Lcom/join/kotlin/ui/gameexpress/model/GameExpressMultiItem;->hasExposed:Z

    return v0
.end method

.method public final copy(ILjava/lang/Object;ZZZ)Lcom/join/kotlin/ui/gameexpress/model/GameExpressMultiItem;
    .locals 7
    .param p2    # Ljava/lang/Object;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    new-instance v6, Lcom/join/kotlin/ui/gameexpress/model/GameExpressMultiItem;

    move-object v0, v6

    move v1, p1

    move-object v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    invoke-direct/range {v0 .. v5}, Lcom/join/kotlin/ui/gameexpress/model/GameExpressMultiItem;-><init>(ILjava/lang/Object;ZZZ)V

    return-object v6
.end method

.method public final synthetic dataVal()Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">()TT;"
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lcom/join/kotlin/ui/gameexpress/model/GameExpressMultiItem;->getData()Ljava/lang/Object;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    const/4 v1, 0x2

    .line 6
    const-string v2, "T"

    .line 7
    .line 8
    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->reifiedOperationMarker(ILjava/lang/String;)V

    .line 9
    .line 10
    .line 11
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
    instance-of v1, p1, Lcom/join/kotlin/ui/gameexpress/model/GameExpressMultiItem;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lcom/join/kotlin/ui/gameexpress/model/GameExpressMultiItem;

    iget v1, p0, Lcom/join/kotlin/ui/gameexpress/model/GameExpressMultiItem;->viewType:I

    iget v3, p1, Lcom/join/kotlin/ui/gameexpress/model/GameExpressMultiItem;->viewType:I

    if-eq v1, v3, :cond_2

    return v2

    :cond_2
    iget-object v1, p0, Lcom/join/kotlin/ui/gameexpress/model/GameExpressMultiItem;->data:Ljava/lang/Object;

    iget-object v3, p1, Lcom/join/kotlin/ui/gameexpress/model/GameExpressMultiItem;->data:Ljava/lang/Object;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    return v2

    :cond_3
    iget-boolean v1, p0, Lcom/join/kotlin/ui/gameexpress/model/GameExpressMultiItem;->isNew:Z

    iget-boolean v3, p1, Lcom/join/kotlin/ui/gameexpress/model/GameExpressMultiItem;->isNew:Z

    if-eq v1, v3, :cond_4

    return v2

    :cond_4
    iget-boolean v1, p0, Lcom/join/kotlin/ui/gameexpress/model/GameExpressMultiItem;->isUpdate:Z

    iget-boolean v3, p1, Lcom/join/kotlin/ui/gameexpress/model/GameExpressMultiItem;->isUpdate:Z

    if-eq v1, v3, :cond_5

    return v2

    :cond_5
    iget-boolean v1, p0, Lcom/join/kotlin/ui/gameexpress/model/GameExpressMultiItem;->hasExposed:Z

    iget-boolean p1, p1, Lcom/join/kotlin/ui/gameexpress/model/GameExpressMultiItem;->hasExposed:Z

    if-eq v1, p1, :cond_6

    return v2

    :cond_6
    return v0
.end method

.method public final getData()Ljava/lang/Object;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/kotlin/ui/gameexpress/model/GameExpressMultiItem;->data:Ljava/lang/Object;

    .line 2
    .line 3
    return-object v0
.end method

.method public final getHasExposed()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/join/kotlin/ui/gameexpress/model/GameExpressMultiItem;->hasExposed:Z

    .line 2
    .line 3
    return v0
.end method

.method public final getViewType()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/join/kotlin/ui/gameexpress/model/GameExpressMultiItem;->viewType:I

    .line 2
    .line 3
    return v0
.end method

.method public hashCode()I
    .locals 2

    iget v0, p0, Lcom/join/kotlin/ui/gameexpress/model/GameExpressMultiItem;->viewType:I

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/join/kotlin/ui/gameexpress/model/GameExpressMultiItem;->data:Ljava/lang/Object;

    if-nez v1, :cond_0

    const/4 v1, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    :goto_0
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-boolean v1, p0, Lcom/join/kotlin/ui/gameexpress/model/GameExpressMultiItem;->isNew:Z

    invoke-static {v1}, Lr2/a;->a(Z)I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-boolean v1, p0, Lcom/join/kotlin/ui/gameexpress/model/GameExpressMultiItem;->isUpdate:Z

    invoke-static {v1}, Lr2/a;->a(Z)I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-boolean v1, p0, Lcom/join/kotlin/ui/gameexpress/model/GameExpressMultiItem;->hasExposed:Z

    invoke-static {v1}, Lr2/a;->a(Z)I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public final isNew()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/join/kotlin/ui/gameexpress/model/GameExpressMultiItem;->isNew:Z

    .line 2
    .line 3
    return v0
.end method

.method public final isUpdate()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/join/kotlin/ui/gameexpress/model/GameExpressMultiItem;->isUpdate:Z

    .line 2
    .line 3
    return v0
.end method

.method public final setHasExposed(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/join/kotlin/ui/gameexpress/model/GameExpressMultiItem;->hasExposed:Z

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

    const-string v1, "GameExpressMultiItem(viewType="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/join/kotlin/ui/gameexpress/model/GameExpressMultiItem;->viewType:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", data="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/join/kotlin/ui/gameexpress/model/GameExpressMultiItem;->data:Ljava/lang/Object;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", isNew="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/join/kotlin/ui/gameexpress/model/GameExpressMultiItem;->isNew:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", isUpdate="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/join/kotlin/ui/gameexpress/model/GameExpressMultiItem;->isUpdate:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", hasExposed="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/join/kotlin/ui/gameexpress/model/GameExpressMultiItem;->hasExposed:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const/16 v1, 0x29

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
