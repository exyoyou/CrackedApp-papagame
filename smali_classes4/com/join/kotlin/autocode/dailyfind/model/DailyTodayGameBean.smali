.class public final Lcom/join/kotlin/autocode/dailyfind/model/DailyTodayGameBean;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u00006\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0016\n\u0002\u0010\u000b\n\u0002\u0008\u0003\n\u0002\u0010\u000e\n\u0000\u0008\u0086\u0008\u0018\u00002\u00020\u0001B5\u0012\u000e\u0010\u0002\u001a\n\u0012\u0004\u0012\u00020\u0004\u0018\u00010\u0003\u0012\n\u0008\u0002\u0010\u0005\u001a\u0004\u0018\u00010\u0006\u0012\u0008\u0008\u0002\u0010\u0007\u001a\u00020\u0008\u0012\u0006\u0010\t\u001a\u00020\n\u00a2\u0006\u0004\u0008\u000b\u0010\u000cJ\u0011\u0010\u001b\u001a\n\u0012\u0004\u0012\u00020\u0004\u0018\u00010\u0003H\u00c6\u0003J\u000b\u0010\u001c\u001a\u0004\u0018\u00010\u0006H\u00c6\u0003J\t\u0010\u001d\u001a\u00020\u0008H\u00c6\u0003J\t\u0010\u001e\u001a\u00020\nH\u00c6\u0003J;\u0010\u001f\u001a\u00020\u00002\u0010\u0008\u0002\u0010\u0002\u001a\n\u0012\u0004\u0012\u00020\u0004\u0018\u00010\u00032\n\u0008\u0002\u0010\u0005\u001a\u0004\u0018\u00010\u00062\u0008\u0008\u0002\u0010\u0007\u001a\u00020\u00082\u0008\u0008\u0002\u0010\t\u001a\u00020\nH\u00c6\u0001J\u0013\u0010 \u001a\u00020!2\u0008\u0010\"\u001a\u0004\u0018\u00010\u0001H\u00d6\u0003J\t\u0010#\u001a\u00020\u0008H\u00d6\u0001J\t\u0010$\u001a\u00020%H\u00d6\u0001R\u0019\u0010\u0002\u001a\n\u0012\u0004\u0012\u00020\u0004\u0018\u00010\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\r\u0010\u000eR\u001c\u0010\u0005\u001a\u0004\u0018\u00010\u0006X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u000f\u0010\u0010\"\u0004\u0008\u0011\u0010\u0012R\u001a\u0010\u0007\u001a\u00020\u0008X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0013\u0010\u0014\"\u0004\u0008\u0015\u0010\u0016R\u001a\u0010\t\u001a\u00020\nX\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0017\u0010\u0018\"\u0004\u0008\u0019\u0010\u001a\u00a8\u0006&"
    }
    d2 = {
        "Lcom/join/kotlin/autocode/dailyfind/model/DailyTodayGameBean;",
        "",
        "items",
        "",
        "Lcom/join/mgps/dto/CommonGameInfoBean;",
        "spannableText",
        "Landroid/text/SpannableString;",
        "itemHeight",
        "",
        "extBean",
        "Lcom/join/mgps/dto/ExtBean;",
        "<init>",
        "(Ljava/util/List;Landroid/text/SpannableString;ILcom/join/mgps/dto/ExtBean;)V",
        "getItems",
        "()Ljava/util/List;",
        "getSpannableText",
        "()Landroid/text/SpannableString;",
        "setSpannableText",
        "(Landroid/text/SpannableString;)V",
        "getItemHeight",
        "()I",
        "setItemHeight",
        "(I)V",
        "getExtBean",
        "()Lcom/join/mgps/dto/ExtBean;",
        "setExtBean",
        "(Lcom/join/mgps/dto/ExtBean;)V",
        "component1",
        "component2",
        "component3",
        "component4",
        "copy",
        "equals",
        "",
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
.field private extBean:Lcom/join/mgps/dto/ExtBean;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private itemHeight:I

.field private final items:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/join/mgps/dto/CommonGameInfoBean;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private spannableText:Landroid/text/SpannableString;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/util/List;Landroid/text/SpannableString;ILcom/join/mgps/dto/ExtBean;)V
    .locals 1
    .param p1    # Ljava/util/List;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p2    # Landroid/text/SpannableString;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p4    # Lcom/join/mgps/dto/ExtBean;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "+",
            "Lcom/join/mgps/dto/CommonGameInfoBean;",
            ">;",
            "Landroid/text/SpannableString;",
            "I",
            "Lcom/join/mgps/dto/ExtBean;",
            ")V"
        }
    .end annotation

    const-string v0, "extBean"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/join/kotlin/autocode/dailyfind/model/DailyTodayGameBean;->items:Ljava/util/List;

    .line 3
    iput-object p2, p0, Lcom/join/kotlin/autocode/dailyfind/model/DailyTodayGameBean;->spannableText:Landroid/text/SpannableString;

    .line 4
    iput p3, p0, Lcom/join/kotlin/autocode/dailyfind/model/DailyTodayGameBean;->itemHeight:I

    .line 5
    iput-object p4, p0, Lcom/join/kotlin/autocode/dailyfind/model/DailyTodayGameBean;->extBean:Lcom/join/mgps/dto/ExtBean;

    return-void
.end method

.method public synthetic constructor <init>(Ljava/util/List;Landroid/text/SpannableString;ILcom/join/mgps/dto/ExtBean;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    and-int/lit8 p6, p5, 0x2

    if-eqz p6, :cond_0

    const/4 p2, 0x0

    :cond_0
    and-int/lit8 p5, p5, 0x4

    if-eqz p5, :cond_1

    const/4 p3, 0x0

    .line 6
    :cond_1
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/join/kotlin/autocode/dailyfind/model/DailyTodayGameBean;-><init>(Ljava/util/List;Landroid/text/SpannableString;ILcom/join/mgps/dto/ExtBean;)V

    return-void
.end method

.method public static synthetic copy$default(Lcom/join/kotlin/autocode/dailyfind/model/DailyTodayGameBean;Ljava/util/List;Landroid/text/SpannableString;ILcom/join/mgps/dto/ExtBean;ILjava/lang/Object;)Lcom/join/kotlin/autocode/dailyfind/model/DailyTodayGameBean;
    .locals 0

    and-int/lit8 p6, p5, 0x1

    if-eqz p6, :cond_0

    iget-object p1, p0, Lcom/join/kotlin/autocode/dailyfind/model/DailyTodayGameBean;->items:Ljava/util/List;

    :cond_0
    and-int/lit8 p6, p5, 0x2

    if-eqz p6, :cond_1

    iget-object p2, p0, Lcom/join/kotlin/autocode/dailyfind/model/DailyTodayGameBean;->spannableText:Landroid/text/SpannableString;

    :cond_1
    and-int/lit8 p6, p5, 0x4

    if-eqz p6, :cond_2

    iget p3, p0, Lcom/join/kotlin/autocode/dailyfind/model/DailyTodayGameBean;->itemHeight:I

    :cond_2
    and-int/lit8 p5, p5, 0x8

    if-eqz p5, :cond_3

    iget-object p4, p0, Lcom/join/kotlin/autocode/dailyfind/model/DailyTodayGameBean;->extBean:Lcom/join/mgps/dto/ExtBean;

    :cond_3
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/join/kotlin/autocode/dailyfind/model/DailyTodayGameBean;->copy(Ljava/util/List;Landroid/text/SpannableString;ILcom/join/mgps/dto/ExtBean;)Lcom/join/kotlin/autocode/dailyfind/model/DailyTodayGameBean;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final component1()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/join/mgps/dto/CommonGameInfoBean;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    iget-object v0, p0, Lcom/join/kotlin/autocode/dailyfind/model/DailyTodayGameBean;->items:Ljava/util/List;

    return-object v0
.end method

.method public final component2()Landroid/text/SpannableString;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    iget-object v0, p0, Lcom/join/kotlin/autocode/dailyfind/model/DailyTodayGameBean;->spannableText:Landroid/text/SpannableString;

    return-object v0
.end method

.method public final component3()I
    .locals 1

    iget v0, p0, Lcom/join/kotlin/autocode/dailyfind/model/DailyTodayGameBean;->itemHeight:I

    return v0
.end method

.method public final component4()Lcom/join/mgps/dto/ExtBean;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object v0, p0, Lcom/join/kotlin/autocode/dailyfind/model/DailyTodayGameBean;->extBean:Lcom/join/mgps/dto/ExtBean;

    return-object v0
.end method

.method public final copy(Ljava/util/List;Landroid/text/SpannableString;ILcom/join/mgps/dto/ExtBean;)Lcom/join/kotlin/autocode/dailyfind/model/DailyTodayGameBean;
    .locals 1
    .param p1    # Ljava/util/List;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p2    # Landroid/text/SpannableString;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p4    # Lcom/join/mgps/dto/ExtBean;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "+",
            "Lcom/join/mgps/dto/CommonGameInfoBean;",
            ">;",
            "Landroid/text/SpannableString;",
            "I",
            "Lcom/join/mgps/dto/ExtBean;",
            ")",
            "Lcom/join/kotlin/autocode/dailyfind/model/DailyTodayGameBean;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string v0, "extBean"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lcom/join/kotlin/autocode/dailyfind/model/DailyTodayGameBean;

    invoke-direct {v0, p1, p2, p3, p4}, Lcom/join/kotlin/autocode/dailyfind/model/DailyTodayGameBean;-><init>(Ljava/util/List;Landroid/text/SpannableString;ILcom/join/mgps/dto/ExtBean;)V

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
    instance-of v1, p1, Lcom/join/kotlin/autocode/dailyfind/model/DailyTodayGameBean;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lcom/join/kotlin/autocode/dailyfind/model/DailyTodayGameBean;

    iget-object v1, p0, Lcom/join/kotlin/autocode/dailyfind/model/DailyTodayGameBean;->items:Ljava/util/List;

    iget-object v3, p1, Lcom/join/kotlin/autocode/dailyfind/model/DailyTodayGameBean;->items:Ljava/util/List;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    return v2

    :cond_2
    iget-object v1, p0, Lcom/join/kotlin/autocode/dailyfind/model/DailyTodayGameBean;->spannableText:Landroid/text/SpannableString;

    iget-object v3, p1, Lcom/join/kotlin/autocode/dailyfind/model/DailyTodayGameBean;->spannableText:Landroid/text/SpannableString;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    return v2

    :cond_3
    iget v1, p0, Lcom/join/kotlin/autocode/dailyfind/model/DailyTodayGameBean;->itemHeight:I

    iget v3, p1, Lcom/join/kotlin/autocode/dailyfind/model/DailyTodayGameBean;->itemHeight:I

    if-eq v1, v3, :cond_4

    return v2

    :cond_4
    iget-object v1, p0, Lcom/join/kotlin/autocode/dailyfind/model/DailyTodayGameBean;->extBean:Lcom/join/mgps/dto/ExtBean;

    iget-object p1, p1, Lcom/join/kotlin/autocode/dailyfind/model/DailyTodayGameBean;->extBean:Lcom/join/mgps/dto/ExtBean;

    invoke-static {v1, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_5

    return v2

    :cond_5
    return v0
.end method

.method public final getExtBean()Lcom/join/mgps/dto/ExtBean;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/kotlin/autocode/dailyfind/model/DailyTodayGameBean;->extBean:Lcom/join/mgps/dto/ExtBean;

    .line 2
    .line 3
    return-object v0
.end method

.method public final getItemHeight()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/join/kotlin/autocode/dailyfind/model/DailyTodayGameBean;->itemHeight:I

    .line 2
    .line 3
    return v0
.end method

.method public final getItems()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/join/mgps/dto/CommonGameInfoBean;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/kotlin/autocode/dailyfind/model/DailyTodayGameBean;->items:Ljava/util/List;

    .line 2
    .line 3
    return-object v0
.end method

.method public final getSpannableText()Landroid/text/SpannableString;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/kotlin/autocode/dailyfind/model/DailyTodayGameBean;->spannableText:Landroid/text/SpannableString;

    .line 2
    .line 3
    return-object v0
.end method

.method public hashCode()I
    .locals 3

    iget-object v0, p0, Lcom/join/kotlin/autocode/dailyfind/model/DailyTodayGameBean;->items:Ljava/util/List;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    :goto_0
    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/join/kotlin/autocode/dailyfind/model/DailyTodayGameBean;->spannableText:Landroid/text/SpannableString;

    if-nez v2, :cond_1

    goto :goto_1

    :cond_1
    invoke-virtual {v2}, Landroid/text/SpannableString;->hashCode()I

    move-result v1

    :goto_1
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lcom/join/kotlin/autocode/dailyfind/model/DailyTodayGameBean;->itemHeight:I

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/join/kotlin/autocode/dailyfind/model/DailyTodayGameBean;->extBean:Lcom/join/mgps/dto/ExtBean;

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public final setExtBean(Lcom/join/mgps/dto/ExtBean;)V
    .locals 1
    .param p1    # Lcom/join/mgps/dto/ExtBean;
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
    iput-object p1, p0, Lcom/join/kotlin/autocode/dailyfind/model/DailyTodayGameBean;->extBean:Lcom/join/mgps/dto/ExtBean;

    .line 7
    .line 8
    return-void
.end method

.method public final setItemHeight(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/join/kotlin/autocode/dailyfind/model/DailyTodayGameBean;->itemHeight:I

    .line 2
    .line 3
    return-void
.end method

.method public final setSpannableText(Landroid/text/SpannableString;)V
    .locals 0
    .param p1    # Landroid/text/SpannableString;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    iput-object p1, p0, Lcom/join/kotlin/autocode/dailyfind/model/DailyTodayGameBean;->spannableText:Landroid/text/SpannableString;

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

    const-string v1, "DailyTodayGameBean(items="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/join/kotlin/autocode/dailyfind/model/DailyTodayGameBean;->items:Ljava/util/List;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", spannableText="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/join/kotlin/autocode/dailyfind/model/DailyTodayGameBean;->spannableText:Landroid/text/SpannableString;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", itemHeight="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/join/kotlin/autocode/dailyfind/model/DailyTodayGameBean;->itemHeight:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", extBean="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/join/kotlin/autocode/dailyfind/model/DailyTodayGameBean;->extBean:Lcom/join/mgps/dto/ExtBean;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 v1, 0x29

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
