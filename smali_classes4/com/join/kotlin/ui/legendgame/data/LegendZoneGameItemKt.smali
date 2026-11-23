.class public final Lcom/join/kotlin/ui/legendgame/data/LegendZoneGameItemKt;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nLegendZoneGameItem.kt\nKotlin\n*S Kotlin\n*F\n+ 1 LegendZoneGameItem.kt\ncom/join/kotlin/ui/legendgame/data/LegendZoneGameItemKt\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,36:1\n1#2:37\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0016\n\u0000\n\u0002\u0010\u000b\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010 \n\u0002\u0010\u000e\n\u0000\u001a\n\u0010\u0000\u001a\u00020\u0001*\u00020\u0002\u001a\u0010\u0010\u0003\u001a\u0008\u0012\u0004\u0012\u00020\u00050\u0004*\u00020\u0002\u00a8\u0006\u0006"
    }
    d2 = {
        "hasCustomTags",
        "",
        "Lcom/join/kotlin/ui/legendgame/data/LegendZoneGameItem;",
        "resolveCustomTags",
        "",
        "",
        "app_wufunNormalRelease"
    }
    k = 0x2
    mv = {
        0x2,
        0x1,
        0x0
    }
    xi = 0x30
.end annotation

.annotation build Lkotlin/jvm/internal/SourceDebugExtension;
    value = {
        "SMAP\nLegendZoneGameItem.kt\nKotlin\n*S Kotlin\n*F\n+ 1 LegendZoneGameItem.kt\ncom/join/kotlin/ui/legendgame/data/LegendZoneGameItemKt\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,36:1\n1#2:37\n*E\n"
    }
.end annotation


# direct methods
.method public static final hasCustomTags(Lcom/join/kotlin/ui/legendgame/data/LegendZoneGameItem;)Z
    .locals 3
    .param p0    # Lcom/join/kotlin/ui/legendgame/data/LegendZoneGameItem;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    const-string v0, "<this>"

    .line 2
    .line 3
    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p0}, Lcom/join/kotlin/ui/legendgame/data/LegendZoneGameItem;->getGame_version()Ljava/lang/String;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    const/4 v1, 0x0

    .line 11
    const/4 v2, 0x1

    .line 12
    if-eqz v0, :cond_1

    .line 13
    .line 14
    invoke-static {v0}, Lkotlin/text/StringsKt;->isBlank(Ljava/lang/CharSequence;)Z

    .line 15
    .line 16
    .line 17
    move-result v0

    .line 18
    if-eqz v0, :cond_0

    .line 19
    .line 20
    goto :goto_0

    .line 21
    :cond_0
    const/4 v0, 0x0

    .line 22
    goto :goto_1

    .line 23
    :cond_1
    :goto_0
    const/4 v0, 0x1

    .line 24
    :goto_1
    if-eqz v0, :cond_8

    .line 25
    .line 26
    invoke-virtual {p0}, Lcom/join/kotlin/ui/legendgame/data/LegendZoneGameItem;->getCareer_type()Ljava/lang/String;

    .line 27
    .line 28
    .line 29
    move-result-object v0

    .line 30
    if-eqz v0, :cond_3

    .line 31
    .line 32
    invoke-static {v0}, Lkotlin/text/StringsKt;->isBlank(Ljava/lang/CharSequence;)Z

    .line 33
    .line 34
    .line 35
    move-result v0

    .line 36
    if-eqz v0, :cond_2

    .line 37
    .line 38
    goto :goto_2

    .line 39
    :cond_2
    const/4 v0, 0x0

    .line 40
    goto :goto_3

    .line 41
    :cond_3
    :goto_2
    const/4 v0, 0x1

    .line 42
    :goto_3
    if-eqz v0, :cond_8

    .line 43
    .line 44
    invoke-virtual {p0}, Lcom/join/kotlin/ui/legendgame/data/LegendZoneGameItem;->getMain_gameplay()Ljava/lang/String;

    .line 45
    .line 46
    .line 47
    move-result-object v0

    .line 48
    if-eqz v0, :cond_5

    .line 49
    .line 50
    invoke-static {v0}, Lkotlin/text/StringsKt;->isBlank(Ljava/lang/CharSequence;)Z

    .line 51
    .line 52
    .line 53
    move-result v0

    .line 54
    if-eqz v0, :cond_4

    .line 55
    .line 56
    goto :goto_4

    .line 57
    :cond_4
    const/4 v0, 0x0

    .line 58
    goto :goto_5

    .line 59
    :cond_5
    :goto_4
    const/4 v0, 0x1

    .line 60
    :goto_5
    if-eqz v0, :cond_8

    .line 61
    .line 62
    invoke-virtual {p0}, Lcom/join/kotlin/ui/legendgame/data/LegendZoneGameItem;->getRhythm_style()Ljava/lang/String;

    .line 63
    .line 64
    .line 65
    move-result-object p0

    .line 66
    if-eqz p0, :cond_7

    .line 67
    .line 68
    invoke-static {p0}, Lkotlin/text/StringsKt;->isBlank(Ljava/lang/CharSequence;)Z

    .line 69
    .line 70
    .line 71
    move-result p0

    .line 72
    if-eqz p0, :cond_6

    .line 73
    .line 74
    goto :goto_6

    .line 75
    :cond_6
    const/4 p0, 0x0

    .line 76
    goto :goto_7

    .line 77
    :cond_7
    :goto_6
    const/4 p0, 0x1

    .line 78
    :goto_7
    if-nez p0, :cond_9

    .line 79
    .line 80
    :cond_8
    const/4 v1, 0x1

    .line 81
    :cond_9
    return v1
.end method

.method public static final resolveCustomTags(Lcom/join/kotlin/ui/legendgame/data/LegendZoneGameItem;)Ljava/util/List;
    .locals 5
    .param p0    # Lcom/join/kotlin/ui/legendgame/data/LegendZoneGameItem;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/join/kotlin/ui/legendgame/data/LegendZoneGameItem;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    const-string v0, "<this>"

    .line 2
    .line 3
    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const/4 v0, 0x4

    .line 7
    new-array v0, v0, [Ljava/lang/String;

    .line 8
    .line 9
    invoke-virtual {p0}, Lcom/join/kotlin/ui/legendgame/data/LegendZoneGameItem;->getGame_version()Ljava/lang/String;

    .line 10
    .line 11
    .line 12
    move-result-object v1

    .line 13
    const/4 v2, 0x1

    .line 14
    const/4 v3, 0x0

    .line 15
    if-eqz v1, :cond_0

    .line 16
    .line 17
    invoke-static {v1}, Lkotlin/text/StringsKt;->isBlank(Ljava/lang/CharSequence;)Z

    .line 18
    .line 19
    .line 20
    move-result v4

    .line 21
    xor-int/2addr v4, v2

    .line 22
    if-eqz v4, :cond_0

    .line 23
    .line 24
    goto :goto_0

    .line 25
    :cond_0
    move-object v1, v3

    .line 26
    :goto_0
    const/4 v4, 0x0

    .line 27
    aput-object v1, v0, v4

    .line 28
    .line 29
    invoke-virtual {p0}, Lcom/join/kotlin/ui/legendgame/data/LegendZoneGameItem;->getCareer_type()Ljava/lang/String;

    .line 30
    .line 31
    .line 32
    move-result-object v1

    .line 33
    if-eqz v1, :cond_1

    .line 34
    .line 35
    invoke-static {v1}, Lkotlin/text/StringsKt;->isBlank(Ljava/lang/CharSequence;)Z

    .line 36
    .line 37
    .line 38
    move-result v4

    .line 39
    xor-int/2addr v4, v2

    .line 40
    if-eqz v4, :cond_1

    .line 41
    .line 42
    goto :goto_1

    .line 43
    :cond_1
    move-object v1, v3

    .line 44
    :goto_1
    aput-object v1, v0, v2

    .line 45
    .line 46
    invoke-virtual {p0}, Lcom/join/kotlin/ui/legendgame/data/LegendZoneGameItem;->getMain_gameplay()Ljava/lang/String;

    .line 47
    .line 48
    .line 49
    move-result-object v1

    .line 50
    if-eqz v1, :cond_2

    .line 51
    .line 52
    invoke-static {v1}, Lkotlin/text/StringsKt;->isBlank(Ljava/lang/CharSequence;)Z

    .line 53
    .line 54
    .line 55
    move-result v4

    .line 56
    xor-int/2addr v4, v2

    .line 57
    if-eqz v4, :cond_2

    .line 58
    .line 59
    goto :goto_2

    .line 60
    :cond_2
    move-object v1, v3

    .line 61
    :goto_2
    const/4 v4, 0x2

    .line 62
    aput-object v1, v0, v4

    .line 63
    .line 64
    invoke-virtual {p0}, Lcom/join/kotlin/ui/legendgame/data/LegendZoneGameItem;->getRhythm_style()Ljava/lang/String;

    .line 65
    .line 66
    .line 67
    move-result-object p0

    .line 68
    if-eqz p0, :cond_3

    .line 69
    .line 70
    invoke-static {p0}, Lkotlin/text/StringsKt;->isBlank(Ljava/lang/CharSequence;)Z

    .line 71
    .line 72
    .line 73
    move-result v1

    .line 74
    xor-int/2addr v1, v2

    .line 75
    if-eqz v1, :cond_3

    .line 76
    .line 77
    move-object v3, p0

    .line 78
    :cond_3
    const/4 p0, 0x3

    .line 79
    aput-object v3, v0, p0

    .line 80
    .line 81
    invoke-static {v0}, Lkotlin/collections/CollectionsKt;->listOfNotNull([Ljava/lang/Object;)Ljava/util/List;

    .line 82
    .line 83
    .line 84
    move-result-object p0

    .line 85
    return-object p0
.end method
