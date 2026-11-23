.class public final Lcom/join/kotlin/base/impl/Downloadable$DefaultImpls;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/join/kotlin/base/impl/Downloadable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "DefaultImpls"
.end annotation

.annotation runtime Lkotlin/Metadata;
    k = 0x3
    mv = {
        0x2,
        0x1,
        0x0
    }
    xi = 0x30
.end annotation


# direct methods
.method public static getGInfo(Lcom/join/kotlin/base/impl/Downloadable;)Lcom/join/kotlin/base/impl/GInfo;
    .locals 0
    .param p0    # Lcom/join/kotlin/base/impl/Downloadable;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation runtime Lcom/fasterxml/jackson/annotation/JsonIgnore;
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    const/4 p0, 0x0

    return-object p0
.end method

.method public static hasGInfo(Lcom/join/kotlin/base/impl/Downloadable;)Z
    .locals 0
    .param p0    # Lcom/join/kotlin/base/impl/Downloadable;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation runtime Lcom/fasterxml/jackson/annotation/JsonIgnore;
    .end annotation

    .line 1
    invoke-interface {p0}, Lcom/join/kotlin/base/impl/Downloadable;->getGInfo()Lcom/join/kotlin/base/impl/GInfo;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    if-eqz p0, :cond_0

    .line 6
    .line 7
    const/4 p0, 0x1

    .line 8
    goto :goto_0

    .line 9
    :cond_0
    const/4 p0, 0x0

    .line 10
    :goto_0
    return p0
.end method

.method public static is64Bit(Lcom/join/kotlin/base/impl/Downloadable;)Z
    .locals 0
    .param p0    # Lcom/join/kotlin/base/impl/Downloadable;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    invoke-static {p0}, Lcom/join/kotlin/base/impl/GameType$DefaultImpls;->is64Bit(Lcom/join/kotlin/base/impl/GameType;)Z

    .line 2
    .line 3
    .line 4
    move-result p0

    .line 5
    return p0
.end method

.method public static isAndroidGame(Lcom/join/kotlin/base/impl/Downloadable;)Z
    .locals 0
    .param p0    # Lcom/join/kotlin/base/impl/Downloadable;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    invoke-static {p0}, Lcom/join/kotlin/base/impl/GameType$DefaultImpls;->isAndroidGame(Lcom/join/kotlin/base/impl/GameType;)Z

    .line 2
    .line 3
    .line 4
    move-result p0

    .line 5
    return p0
.end method

.method public static isBtGame(Lcom/join/kotlin/base/impl/Downloadable;)Z
    .locals 0
    .param p0    # Lcom/join/kotlin/base/impl/Downloadable;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    invoke-static {p0}, Lcom/join/kotlin/base/impl/GameType$DefaultImpls;->isBtGame(Lcom/join/kotlin/base/impl/GameType;)Z

    .line 2
    .line 3
    .line 4
    move-result p0

    .line 5
    return p0
.end method

.method public static isCpsGame(Lcom/join/kotlin/base/impl/Downloadable;)Z
    .locals 0
    .param p0    # Lcom/join/kotlin/base/impl/Downloadable;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    invoke-static {p0}, Lcom/join/kotlin/base/impl/GameType$DefaultImpls;->isCpsGame(Lcom/join/kotlin/base/impl/GameType;)Z

    .line 2
    .line 3
    .line 4
    move-result p0

    .line 5
    return p0
.end method

.method public static isGame(Lcom/join/kotlin/base/impl/Downloadable;)Z
    .locals 0
    .param p0    # Lcom/join/kotlin/base/impl/Downloadable;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    invoke-static {p0}, Lcom/join/kotlin/base/impl/GameType$DefaultImpls;->isGame(Lcom/join/kotlin/base/impl/GameType;)Z

    .line 2
    .line 3
    .line 4
    move-result p0

    .line 5
    return p0
.end method

.method public static isGameVm(Lcom/join/kotlin/base/impl/Downloadable;)Z
    .locals 0
    .param p0    # Lcom/join/kotlin/base/impl/Downloadable;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    invoke-static {p0}, Lcom/join/kotlin/base/impl/GameType$DefaultImpls;->isGameVm(Lcom/join/kotlin/base/impl/GameType;)Z

    .line 2
    .line 3
    .line 4
    move-result p0

    .line 5
    return p0
.end method

.method public static isH5Game(Lcom/join/kotlin/base/impl/Downloadable;)Z
    .locals 0
    .param p0    # Lcom/join/kotlin/base/impl/Downloadable;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    invoke-static {p0}, Lcom/join/kotlin/base/impl/GameType$DefaultImpls;->isH5Game(Lcom/join/kotlin/base/impl/GameType;)Z

    .line 2
    .line 3
    .line 4
    move-result p0

    .line 5
    return p0
.end method

.method public static isH5VmGame(Lcom/join/kotlin/base/impl/Downloadable;)Z
    .locals 0
    .param p0    # Lcom/join/kotlin/base/impl/Downloadable;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    invoke-static {p0}, Lcom/join/kotlin/base/impl/GameType$DefaultImpls;->isH5VmGame(Lcom/join/kotlin/base/impl/GameType;)Z

    .line 2
    .line 3
    .line 4
    move-result p0

    .line 5
    return p0
.end method

.method public static isHmCloud(Lcom/join/kotlin/base/impl/Downloadable;)Z
    .locals 0
    .param p0    # Lcom/join/kotlin/base/impl/Downloadable;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    invoke-static {p0}, Lcom/join/kotlin/base/impl/GameType$DefaultImpls;->isHmCloud(Lcom/join/kotlin/base/impl/GameType;)Z

    .line 2
    .line 3
    .line 4
    move-result p0

    .line 5
    return p0
.end method

.method public static isMiniGame(Lcom/join/kotlin/base/impl/Downloadable;)Z
    .locals 0
    .param p0    # Lcom/join/kotlin/base/impl/Downloadable;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    invoke-static {p0}, Lcom/join/kotlin/base/impl/GameType$DefaultImpls;->isMiniGame(Lcom/join/kotlin/base/impl/GameType;)Z

    .line 2
    .line 3
    .line 4
    move-result p0

    .line 5
    return p0
.end method

.method public static isModGameVm(Lcom/join/kotlin/base/impl/Downloadable;)Z
    .locals 0
    .param p0    # Lcom/join/kotlin/base/impl/Downloadable;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    invoke-static {p0}, Lcom/join/kotlin/base/impl/GameType$DefaultImpls;->isModGameVm(Lcom/join/kotlin/base/impl/GameType;)Z

    .line 2
    .line 3
    .line 4
    move-result p0

    .line 5
    return p0
.end method

.method public static isNetGame(Lcom/join/kotlin/base/impl/Downloadable;)Z
    .locals 0
    .param p0    # Lcom/join/kotlin/base/impl/Downloadable;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    invoke-static {p0}, Lcom/join/kotlin/base/impl/GameType$DefaultImpls;->isNetGame(Lcom/join/kotlin/base/impl/GameType;)Z

    .line 2
    .line 3
    .line 4
    move-result p0

    .line 5
    return p0
.end method

.method public static isNetGameVm(Lcom/join/kotlin/base/impl/Downloadable;)Z
    .locals 0
    .param p0    # Lcom/join/kotlin/base/impl/Downloadable;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    invoke-static {p0}, Lcom/join/kotlin/base/impl/GameType$DefaultImpls;->isNetGameVm(Lcom/join/kotlin/base/impl/GameType;)Z

    .line 2
    .line 3
    .line 4
    move-result p0

    .line 5
    return p0
.end method

.method public static isSingleGameVm(Lcom/join/kotlin/base/impl/Downloadable;)Z
    .locals 0
    .param p0    # Lcom/join/kotlin/base/impl/Downloadable;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    invoke-static {p0}, Lcom/join/kotlin/base/impl/GameType$DefaultImpls;->isSingleGameVm(Lcom/join/kotlin/base/impl/GameType;)Z

    .line 2
    .line 3
    .line 4
    move-result p0

    .line 5
    return p0
.end method
