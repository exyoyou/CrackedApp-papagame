.class public final Lcom/join/kotlin/autocode/dailyfind/model/DailyDiscoveryGameBean;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000&\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u0012\n\u0002\u0010\u0008\n\u0002\u0008\u0002\u0008\u0086\u0008\u0018\u00002\u00020\u0001B#\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0008\u0008\u0002\u0010\u0004\u001a\u00020\u0005\u0012\u0008\u0008\u0002\u0010\u0006\u001a\u00020\u0007\u00a2\u0006\u0004\u0008\u0008\u0010\tJ\t\u0010\u0013\u001a\u00020\u0003H\u00c6\u0003J\t\u0010\u0014\u001a\u00020\u0005H\u00c6\u0003J\t\u0010\u0015\u001a\u00020\u0007H\u00c6\u0003J\'\u0010\u0016\u001a\u00020\u00002\u0008\u0008\u0002\u0010\u0002\u001a\u00020\u00032\u0008\u0008\u0002\u0010\u0004\u001a\u00020\u00052\u0008\u0008\u0002\u0010\u0006\u001a\u00020\u0007H\u00c6\u0001J\u0013\u0010\u0017\u001a\u00020\u00052\u0008\u0010\u0018\u001a\u0004\u0018\u00010\u0001H\u00d6\u0003J\t\u0010\u0019\u001a\u00020\u001aH\u00d6\u0001J\t\u0010\u001b\u001a\u00020\u0007H\u00d6\u0001R\u0011\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\n\u0010\u000bR\u001a\u0010\u0004\u001a\u00020\u0005X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0004\u0010\u000c\"\u0004\u0008\r\u0010\u000eR\u001a\u0010\u0006\u001a\u00020\u0007X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u000f\u0010\u0010\"\u0004\u0008\u0011\u0010\u0012\u00a8\u0006\u001c"
    }
    d2 = {
        "Lcom/join/kotlin/autocode/dailyfind/model/DailyDiscoveryGameBean;",
        "",
        "game",
        "Lcom/join/mgps/dto/GamedetialModleFourBean;",
        "isPause",
        "",
        "playTag",
        "",
        "<init>",
        "(Lcom/join/mgps/dto/GamedetialModleFourBean;ZLjava/lang/String;)V",
        "getGame",
        "()Lcom/join/mgps/dto/GamedetialModleFourBean;",
        "()Z",
        "setPause",
        "(Z)V",
        "getPlayTag",
        "()Ljava/lang/String;",
        "setPlayTag",
        "(Ljava/lang/String;)V",
        "component1",
        "component2",
        "component3",
        "copy",
        "equals",
        "other",
        "hashCode",
        "",
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
.field private final game:Lcom/join/mgps/dto/GamedetialModleFourBean;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field private isPause:Z

.field private playTag:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/join/mgps/dto/GamedetialModleFourBean;ZLjava/lang/String;)V
    .locals 1
    .param p1    # Lcom/join/mgps/dto/GamedetialModleFourBean;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p3    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "game"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "playTag"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/join/kotlin/autocode/dailyfind/model/DailyDiscoveryGameBean;->game:Lcom/join/mgps/dto/GamedetialModleFourBean;

    iput-boolean p2, p0, Lcom/join/kotlin/autocode/dailyfind/model/DailyDiscoveryGameBean;->isPause:Z

    .line 3
    iput-object p3, p0, Lcom/join/kotlin/autocode/dailyfind/model/DailyDiscoveryGameBean;->playTag:Ljava/lang/String;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/join/mgps/dto/GamedetialModleFourBean;ZLjava/lang/String;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    and-int/lit8 p5, p4, 0x2

    if-eqz p5, :cond_0

    const/4 p2, 0x1

    :cond_0
    and-int/lit8 p4, p4, 0x4

    if-eqz p4, :cond_1

    const-string p3, ""

    .line 4
    :cond_1
    invoke-direct {p0, p1, p2, p3}, Lcom/join/kotlin/autocode/dailyfind/model/DailyDiscoveryGameBean;-><init>(Lcom/join/mgps/dto/GamedetialModleFourBean;ZLjava/lang/String;)V

    return-void
.end method

.method public static synthetic copy$default(Lcom/join/kotlin/autocode/dailyfind/model/DailyDiscoveryGameBean;Lcom/join/mgps/dto/GamedetialModleFourBean;ZLjava/lang/String;ILjava/lang/Object;)Lcom/join/kotlin/autocode/dailyfind/model/DailyDiscoveryGameBean;
    .locals 0

    and-int/lit8 p5, p4, 0x1

    if-eqz p5, :cond_0

    iget-object p1, p0, Lcom/join/kotlin/autocode/dailyfind/model/DailyDiscoveryGameBean;->game:Lcom/join/mgps/dto/GamedetialModleFourBean;

    :cond_0
    and-int/lit8 p5, p4, 0x2

    if-eqz p5, :cond_1

    iget-boolean p2, p0, Lcom/join/kotlin/autocode/dailyfind/model/DailyDiscoveryGameBean;->isPause:Z

    :cond_1
    and-int/lit8 p4, p4, 0x4

    if-eqz p4, :cond_2

    iget-object p3, p0, Lcom/join/kotlin/autocode/dailyfind/model/DailyDiscoveryGameBean;->playTag:Ljava/lang/String;

    :cond_2
    invoke-virtual {p0, p1, p2, p3}, Lcom/join/kotlin/autocode/dailyfind/model/DailyDiscoveryGameBean;->copy(Lcom/join/mgps/dto/GamedetialModleFourBean;ZLjava/lang/String;)Lcom/join/kotlin/autocode/dailyfind/model/DailyDiscoveryGameBean;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final component1()Lcom/join/mgps/dto/GamedetialModleFourBean;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object v0, p0, Lcom/join/kotlin/autocode/dailyfind/model/DailyDiscoveryGameBean;->game:Lcom/join/mgps/dto/GamedetialModleFourBean;

    return-object v0
.end method

.method public final component2()Z
    .locals 1

    iget-boolean v0, p0, Lcom/join/kotlin/autocode/dailyfind/model/DailyDiscoveryGameBean;->isPause:Z

    return v0
.end method

.method public final component3()Ljava/lang/String;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    iget-object v0, p0, Lcom/join/kotlin/autocode/dailyfind/model/DailyDiscoveryGameBean;->playTag:Ljava/lang/String;

    return-object v0
.end method

.method public final copy(Lcom/join/mgps/dto/GamedetialModleFourBean;ZLjava/lang/String;)Lcom/join/kotlin/autocode/dailyfind/model/DailyDiscoveryGameBean;
    .locals 1
    .param p1    # Lcom/join/mgps/dto/GamedetialModleFourBean;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p3    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    const-string v0, "game"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "playTag"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lcom/join/kotlin/autocode/dailyfind/model/DailyDiscoveryGameBean;

    invoke-direct {v0, p1, p2, p3}, Lcom/join/kotlin/autocode/dailyfind/model/DailyDiscoveryGameBean;-><init>(Lcom/join/mgps/dto/GamedetialModleFourBean;ZLjava/lang/String;)V

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
    instance-of v1, p1, Lcom/join/kotlin/autocode/dailyfind/model/DailyDiscoveryGameBean;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    :cond_1
    check-cast p1, Lcom/join/kotlin/autocode/dailyfind/model/DailyDiscoveryGameBean;

    iget-object v1, p0, Lcom/join/kotlin/autocode/dailyfind/model/DailyDiscoveryGameBean;->game:Lcom/join/mgps/dto/GamedetialModleFourBean;

    iget-object v3, p1, Lcom/join/kotlin/autocode/dailyfind/model/DailyDiscoveryGameBean;->game:Lcom/join/mgps/dto/GamedetialModleFourBean;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    return v2

    :cond_2
    iget-boolean v1, p0, Lcom/join/kotlin/autocode/dailyfind/model/DailyDiscoveryGameBean;->isPause:Z

    iget-boolean v3, p1, Lcom/join/kotlin/autocode/dailyfind/model/DailyDiscoveryGameBean;->isPause:Z

    if-eq v1, v3, :cond_3

    return v2

    :cond_3
    iget-object v1, p0, Lcom/join/kotlin/autocode/dailyfind/model/DailyDiscoveryGameBean;->playTag:Ljava/lang/String;

    iget-object p1, p1, Lcom/join/kotlin/autocode/dailyfind/model/DailyDiscoveryGameBean;->playTag:Ljava/lang/String;

    invoke-static {v1, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_4

    return v2

    :cond_4
    return v0
.end method

.method public final getGame()Lcom/join/mgps/dto/GamedetialModleFourBean;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/kotlin/autocode/dailyfind/model/DailyDiscoveryGameBean;->game:Lcom/join/mgps/dto/GamedetialModleFourBean;

    .line 2
    .line 3
    return-object v0
.end method

.method public final getPlayTag()Ljava/lang/String;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/kotlin/autocode/dailyfind/model/DailyDiscoveryGameBean;->playTag:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public hashCode()I
    .locals 2

    iget-object v0, p0, Lcom/join/kotlin/autocode/dailyfind/model/DailyDiscoveryGameBean;->game:Lcom/join/mgps/dto/GamedetialModleFourBean;

    invoke-virtual {v0}, Lcom/join/mgps/dto/GamedetialModleFourBean;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    iget-boolean v1, p0, Lcom/join/kotlin/autocode/dailyfind/model/DailyDiscoveryGameBean;->isPause:Z

    invoke-static {v1}, Lr2/a;->a(Z)I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lcom/join/kotlin/autocode/dailyfind/model/DailyDiscoveryGameBean;->playTag:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public final isPause()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/join/kotlin/autocode/dailyfind/model/DailyDiscoveryGameBean;->isPause:Z

    .line 2
    .line 3
    return v0
.end method

.method public final setPause(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/join/kotlin/autocode/dailyfind/model/DailyDiscoveryGameBean;->isPause:Z

    .line 2
    .line 3
    return-void
.end method

.method public final setPlayTag(Ljava/lang/String;)V
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
    iput-object p1, p0, Lcom/join/kotlin/autocode/dailyfind/model/DailyDiscoveryGameBean;->playTag:Ljava/lang/String;

    .line 7
    .line 8
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "DailyDiscoveryGameBean(game="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/join/kotlin/autocode/dailyfind/model/DailyDiscoveryGameBean;->game:Lcom/join/mgps/dto/GamedetialModleFourBean;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", isPause="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/join/kotlin/autocode/dailyfind/model/DailyDiscoveryGameBean;->isPause:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", playTag="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/join/kotlin/autocode/dailyfind/model/DailyDiscoveryGameBean;->playTag:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x29

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
