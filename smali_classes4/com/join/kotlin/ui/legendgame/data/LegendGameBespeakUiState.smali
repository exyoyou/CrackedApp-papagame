.class public final Lcom/join/kotlin/ui/legendgame/data/LegendGameBespeakUiState;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000&\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u000b\n\u0002\u0008\u0003\n\u0002\u0010\t\n\u0002\u0008\u0014\n\u0002\u0010\u0008\n\u0000\n\u0002\u0010\u000e\n\u0000\u0008\u0086\u0008\u0018\u00002\u00020\u0001B/\u0012\u0008\u0008\u0002\u0010\u0002\u001a\u00020\u0003\u0012\u0008\u0008\u0002\u0010\u0004\u001a\u00020\u0003\u0012\u0008\u0008\u0002\u0010\u0005\u001a\u00020\u0003\u0012\u0008\u0008\u0002\u0010\u0006\u001a\u00020\u0007\u00a2\u0006\u0004\u0008\u0008\u0010\tJ\t\u0010\u0014\u001a\u00020\u0003H\u00c6\u0003J\t\u0010\u0015\u001a\u00020\u0003H\u00c6\u0003J\t\u0010\u0016\u001a\u00020\u0003H\u00c6\u0003J\t\u0010\u0017\u001a\u00020\u0007H\u00c6\u0003J1\u0010\u0018\u001a\u00020\u00002\u0008\u0008\u0002\u0010\u0002\u001a\u00020\u00032\u0008\u0008\u0002\u0010\u0004\u001a\u00020\u00032\u0008\u0008\u0002\u0010\u0005\u001a\u00020\u00032\u0008\u0008\u0002\u0010\u0006\u001a\u00020\u0007H\u00c6\u0001J\u0013\u0010\u0019\u001a\u00020\u00032\u0008\u0010\u001a\u001a\u0004\u0018\u00010\u0001H\u00d6\u0003J\t\u0010\u001b\u001a\u00020\u001cH\u00d6\u0001J\t\u0010\u001d\u001a\u00020\u001eH\u00d6\u0001R\u001a\u0010\u0002\u001a\u00020\u0003X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\n\u0010\u000b\"\u0004\u0008\u000c\u0010\rR\u001a\u0010\u0004\u001a\u00020\u0003X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0004\u0010\u000b\"\u0004\u0008\u000e\u0010\rR\u001a\u0010\u0005\u001a\u00020\u0003X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0005\u0010\u000b\"\u0004\u0008\u000f\u0010\rR\u001a\u0010\u0006\u001a\u00020\u0007X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0010\u0010\u0011\"\u0004\u0008\u0012\u0010\u0013\u00a8\u0006\u001f"
    }
    d2 = {
        "Lcom/join/kotlin/ui/legendgame/data/LegendGameBespeakUiState;",
        "",
        "showBespeakBell",
        "",
        "is_reminded",
        "is_follow",
        "detailId",
        "",
        "<init>",
        "(ZZZJ)V",
        "getShowBespeakBell",
        "()Z",
        "setShowBespeakBell",
        "(Z)V",
        "set_reminded",
        "set_follow",
        "getDetailId",
        "()J",
        "setDetailId",
        "(J)V",
        "component1",
        "component2",
        "component3",
        "component4",
        "copy",
        "equals",
        "other",
        "hashCode",
        "",
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
.field private detailId:J

.field private is_follow:Z

.field private is_reminded:Z

.field private showBespeakBell:Z


# direct methods
.method public constructor <init>()V
    .locals 8

    .line 1
    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const-wide/16 v4, 0x0

    const/16 v6, 0xf

    const/4 v7, 0x0

    move-object v0, p0

    invoke-direct/range {v0 .. v7}, Lcom/join/kotlin/ui/legendgame/data/LegendGameBespeakUiState;-><init>(ZZZJILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(ZZZJ)V
    .locals 0

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    iput-boolean p1, p0, Lcom/join/kotlin/ui/legendgame/data/LegendGameBespeakUiState;->showBespeakBell:Z

    .line 4
    iput-boolean p2, p0, Lcom/join/kotlin/ui/legendgame/data/LegendGameBespeakUiState;->is_reminded:Z

    .line 5
    iput-boolean p3, p0, Lcom/join/kotlin/ui/legendgame/data/LegendGameBespeakUiState;->is_follow:Z

    .line 6
    iput-wide p4, p0, Lcom/join/kotlin/ui/legendgame/data/LegendGameBespeakUiState;->detailId:J

    return-void
.end method

.method public synthetic constructor <init>(ZZZJILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 2

    and-int/lit8 p7, p6, 0x1

    const/4 v0, 0x0

    if-eqz p7, :cond_0

    const/4 p7, 0x0

    goto :goto_0

    :cond_0
    move p7, p1

    :goto_0
    and-int/lit8 p1, p6, 0x2

    if-eqz p1, :cond_1

    const/4 v1, 0x0

    goto :goto_1

    :cond_1
    move v1, p2

    :goto_1
    and-int/lit8 p1, p6, 0x4

    if-eqz p1, :cond_2

    goto :goto_2

    :cond_2
    move v0, p3

    :goto_2
    and-int/lit8 p1, p6, 0x8

    if-eqz p1, :cond_3

    const-wide/16 p4, 0x0

    :cond_3
    move-wide p5, p4

    move-object p1, p0

    move p2, p7

    move p3, v1

    move p4, v0

    .line 7
    invoke-direct/range {p1 .. p6}, Lcom/join/kotlin/ui/legendgame/data/LegendGameBespeakUiState;-><init>(ZZZJ)V

    return-void
.end method

.method public static synthetic copy$default(Lcom/join/kotlin/ui/legendgame/data/LegendGameBespeakUiState;ZZZJILjava/lang/Object;)Lcom/join/kotlin/ui/legendgame/data/LegendGameBespeakUiState;
    .locals 3

    and-int/lit8 p7, p6, 0x1

    if-eqz p7, :cond_0

    iget-boolean p1, p0, Lcom/join/kotlin/ui/legendgame/data/LegendGameBespeakUiState;->showBespeakBell:Z

    :cond_0
    and-int/lit8 p7, p6, 0x2

    if-eqz p7, :cond_1

    iget-boolean p2, p0, Lcom/join/kotlin/ui/legendgame/data/LegendGameBespeakUiState;->is_reminded:Z

    :cond_1
    move p7, p2

    and-int/lit8 p2, p6, 0x4

    if-eqz p2, :cond_2

    iget-boolean p3, p0, Lcom/join/kotlin/ui/legendgame/data/LegendGameBespeakUiState;->is_follow:Z

    :cond_2
    move v0, p3

    and-int/lit8 p2, p6, 0x8

    if-eqz p2, :cond_3

    iget-wide p4, p0, Lcom/join/kotlin/ui/legendgame/data/LegendGameBespeakUiState;->detailId:J

    :cond_3
    move-wide v1, p4

    move-object p2, p0

    move p3, p1

    move p4, p7

    move p5, v0

    move-wide p6, v1

    invoke-virtual/range {p2 .. p7}, Lcom/join/kotlin/ui/legendgame/data/LegendGameBespeakUiState;->copy(ZZZJ)Lcom/join/kotlin/ui/legendgame/data/LegendGameBespeakUiState;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final component1()Z
    .locals 1

    iget-boolean v0, p0, Lcom/join/kotlin/ui/legendgame/data/LegendGameBespeakUiState;->showBespeakBell:Z

    return v0
.end method

.method public final component2()Z
    .locals 1

    iget-boolean v0, p0, Lcom/join/kotlin/ui/legendgame/data/LegendGameBespeakUiState;->is_reminded:Z

    return v0
.end method

.method public final component3()Z
    .locals 1

    iget-boolean v0, p0, Lcom/join/kotlin/ui/legendgame/data/LegendGameBespeakUiState;->is_follow:Z

    return v0
.end method

.method public final component4()J
    .locals 2

    iget-wide v0, p0, Lcom/join/kotlin/ui/legendgame/data/LegendGameBespeakUiState;->detailId:J

    return-wide v0
.end method

.method public final copy(ZZZJ)Lcom/join/kotlin/ui/legendgame/data/LegendGameBespeakUiState;
    .locals 7
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    new-instance v6, Lcom/join/kotlin/ui/legendgame/data/LegendGameBespeakUiState;

    move-object v0, v6

    move v1, p1

    move v2, p2

    move v3, p3

    move-wide v4, p4

    invoke-direct/range {v0 .. v5}, Lcom/join/kotlin/ui/legendgame/data/LegendGameBespeakUiState;-><init>(ZZZJ)V

    return-object v6
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 7
    .param p1    # Ljava/lang/Object;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    instance-of v1, p1, Lcom/join/kotlin/ui/legendgame/data/LegendGameBespeakUiState;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lcom/join/kotlin/ui/legendgame/data/LegendGameBespeakUiState;

    iget-boolean v1, p0, Lcom/join/kotlin/ui/legendgame/data/LegendGameBespeakUiState;->showBespeakBell:Z

    iget-boolean v3, p1, Lcom/join/kotlin/ui/legendgame/data/LegendGameBespeakUiState;->showBespeakBell:Z

    if-eq v1, v3, :cond_2

    return v2

    :cond_2
    iget-boolean v1, p0, Lcom/join/kotlin/ui/legendgame/data/LegendGameBespeakUiState;->is_reminded:Z

    iget-boolean v3, p1, Lcom/join/kotlin/ui/legendgame/data/LegendGameBespeakUiState;->is_reminded:Z

    if-eq v1, v3, :cond_3

    return v2

    :cond_3
    iget-boolean v1, p0, Lcom/join/kotlin/ui/legendgame/data/LegendGameBespeakUiState;->is_follow:Z

    iget-boolean v3, p1, Lcom/join/kotlin/ui/legendgame/data/LegendGameBespeakUiState;->is_follow:Z

    if-eq v1, v3, :cond_4

    return v2

    :cond_4
    iget-wide v3, p0, Lcom/join/kotlin/ui/legendgame/data/LegendGameBespeakUiState;->detailId:J

    iget-wide v5, p1, Lcom/join/kotlin/ui/legendgame/data/LegendGameBespeakUiState;->detailId:J

    cmp-long p1, v3, v5

    if-eqz p1, :cond_5

    return v2

    :cond_5
    return v0
.end method

.method public final getDetailId()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/join/kotlin/ui/legendgame/data/LegendGameBespeakUiState;->detailId:J

    .line 2
    .line 3
    return-wide v0
.end method

.method public final getShowBespeakBell()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/join/kotlin/ui/legendgame/data/LegendGameBespeakUiState;->showBespeakBell:Z

    .line 2
    .line 3
    return v0
.end method

.method public hashCode()I
    .locals 3

    iget-boolean v0, p0, Lcom/join/kotlin/ui/legendgame/data/LegendGameBespeakUiState;->showBespeakBell:Z

    invoke-static {v0}, Lr2/a;->a(Z)I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    iget-boolean v1, p0, Lcom/join/kotlin/ui/legendgame/data/LegendGameBespeakUiState;->is_reminded:Z

    invoke-static {v1}, Lr2/a;->a(Z)I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-boolean v1, p0, Lcom/join/kotlin/ui/legendgame/data/LegendGameBespeakUiState;->is_follow:Z

    invoke-static {v1}, Lr2/a;->a(Z)I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-wide v1, p0, Lcom/join/kotlin/ui/legendgame/data/LegendGameBespeakUiState;->detailId:J

    invoke-static {v1, v2}, Ls5/a;->a(J)I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public final is_follow()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/join/kotlin/ui/legendgame/data/LegendGameBespeakUiState;->is_follow:Z

    .line 2
    .line 3
    return v0
.end method

.method public final is_reminded()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/join/kotlin/ui/legendgame/data/LegendGameBespeakUiState;->is_reminded:Z

    .line 2
    .line 3
    return v0
.end method

.method public final setDetailId(J)V
    .locals 0

    .line 1
    iput-wide p1, p0, Lcom/join/kotlin/ui/legendgame/data/LegendGameBespeakUiState;->detailId:J

    .line 2
    .line 3
    return-void
.end method

.method public final setShowBespeakBell(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/join/kotlin/ui/legendgame/data/LegendGameBespeakUiState;->showBespeakBell:Z

    .line 2
    .line 3
    return-void
.end method

.method public final set_follow(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/join/kotlin/ui/legendgame/data/LegendGameBespeakUiState;->is_follow:Z

    .line 2
    .line 3
    return-void
.end method

.method public final set_reminded(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/join/kotlin/ui/legendgame/data/LegendGameBespeakUiState;->is_reminded:Z

    .line 2
    .line 3
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "LegendGameBespeakUiState(showBespeakBell="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/join/kotlin/ui/legendgame/data/LegendGameBespeakUiState;->showBespeakBell:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", is_reminded="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/join/kotlin/ui/legendgame/data/LegendGameBespeakUiState;->is_reminded:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", is_follow="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/join/kotlin/ui/legendgame/data/LegendGameBespeakUiState;->is_follow:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", detailId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/join/kotlin/ui/legendgame/data/LegendGameBespeakUiState;->detailId:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const/16 v1, 0x29

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
