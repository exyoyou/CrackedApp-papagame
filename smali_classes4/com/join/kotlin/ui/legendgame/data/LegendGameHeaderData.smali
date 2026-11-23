.class public final Lcom/join/kotlin/ui/legendgame/data/LegendGameHeaderData;
.super Lcom/join/kotlin/ui/legendgame/data/LegendZoneGameItem;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nLegendGameHeaderData.kt\nKotlin\n*S Kotlin\n*F\n+ 1 LegendGameHeaderData.kt\ncom/join/kotlin/ui/legendgame/data/LegendGameHeaderData\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,30:1\n1#2:31\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u001c\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0010\u000e\n\u0002\u0008\u0006\u0018\u00002\u00020\u0001B\u0007\u00a2\u0006\u0004\u0008\u0002\u0010\u0003J\u0008\u0010\n\u001a\u0004\u0018\u00010\u000bJ\u0008\u0010\u000c\u001a\u0004\u0018\u00010\u000bJ\u0008\u0010\r\u001a\u0004\u0018\u00010\u000bJ\u0008\u0010\u000e\u001a\u0004\u0018\u00010\u000bJ\u0008\u0010\u000f\u001a\u0004\u0018\u00010\u000bJ\u0008\u0010\u0010\u001a\u0004\u0018\u00010\u000bR\u001c\u0010\u0004\u001a\u0004\u0018\u00010\u0005X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0006\u0010\u0007\"\u0004\u0008\u0008\u0010\t\u00a8\u0006\u0011"
    }
    d2 = {
        "Lcom/join/kotlin/ui/legendgame/data/LegendGameHeaderData;",
        "Lcom/join/kotlin/ui/legendgame/data/LegendZoneGameItem;",
        "<init>",
        "()V",
        "game_info",
        "Lcom/join/mgps/dto/CommonGameInfoBean;",
        "getGame_info",
        "()Lcom/join/mgps/dto/CommonGameInfoBean;",
        "setGame_info",
        "(Lcom/join/mgps/dto/CommonGameInfoBean;)V",
        "resolveCoverUrl",
        "",
        "resolveVideoUrl",
        "resolveBannerUrl",
        "resolveTitle",
        "resolveDesc",
        "resolveIcon",
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
        "SMAP\nLegendGameHeaderData.kt\nKotlin\n*S Kotlin\n*F\n+ 1 LegendGameHeaderData.kt\ncom/join/kotlin/ui/legendgame/data/LegendGameHeaderData\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,30:1\n1#2:31\n*E\n"
    }
.end annotation


# instance fields
.field private game_info:Lcom/join/mgps/dto/CommonGameInfoBean;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/join/kotlin/ui/legendgame/data/LegendZoneGameItem;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method


# virtual methods
.method public final getGame_info()Lcom/join/mgps/dto/CommonGameInfoBean;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/kotlin/ui/legendgame/data/LegendGameHeaderData;->game_info:Lcom/join/mgps/dto/CommonGameInfoBean;

    .line 2
    .line 3
    return-object v0
.end method

.method public final resolveBannerUrl()Ljava/lang/String;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    invoke-virtual {p0}, Lcom/join/kotlin/ui/legendgame/data/LegendGameHeaderData;->resolveCoverUrl()Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    return-object v0
.end method

.method public final resolveCoverUrl()Ljava/lang/String;
    .locals 3
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    invoke-virtual {p0}, Lcom/join/kotlin/ui/legendgame/data/LegendZoneGameItem;->getImage_url()Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    const/4 v1, 0x0

    .line 6
    if-eqz v0, :cond_1

    .line 7
    .line 8
    invoke-static {v0}, Lkotlin/text/StringsKt;->isBlank(Ljava/lang/CharSequence;)Z

    .line 9
    .line 10
    .line 11
    move-result v2

    .line 12
    xor-int/lit8 v2, v2, 0x1

    .line 13
    .line 14
    if-eqz v2, :cond_0

    .line 15
    .line 16
    goto :goto_0

    .line 17
    :cond_0
    move-object v0, v1

    .line 18
    :goto_0
    if-nez v0, :cond_3

    .line 19
    .line 20
    :cond_1
    iget-object v0, p0, Lcom/join/kotlin/ui/legendgame/data/LegendGameHeaderData;->game_info:Lcom/join/mgps/dto/CommonGameInfoBean;

    .line 21
    .line 22
    if-eqz v0, :cond_2

    .line 23
    .line 24
    invoke-virtual {v0}, Lcom/join/mgps/dto/CommonGameInfoBean;->getBig_pic()Ljava/lang/String;

    .line 25
    .line 26
    .line 27
    move-result-object v0

    .line 28
    if-eqz v0, :cond_2

    .line 29
    .line 30
    invoke-static {v0}, Lkotlin/text/StringsKt;->isBlank(Ljava/lang/CharSequence;)Z

    .line 31
    .line 32
    .line 33
    move-result v2

    .line 34
    xor-int/lit8 v2, v2, 0x1

    .line 35
    .line 36
    if-eqz v2, :cond_2

    .line 37
    .line 38
    goto :goto_1

    .line 39
    :cond_2
    move-object v0, v1

    .line 40
    :goto_1
    if-nez v0, :cond_3

    .line 41
    .line 42
    iget-object v0, p0, Lcom/join/kotlin/ui/legendgame/data/LegendGameHeaderData;->game_info:Lcom/join/mgps/dto/CommonGameInfoBean;

    .line 43
    .line 44
    if-eqz v0, :cond_4

    .line 45
    .line 46
    invoke-virtual {v0}, Lcom/join/mgps/dto/CommonGameInfoBean;->getCoverPicUrl()Ljava/lang/String;

    .line 47
    .line 48
    .line 49
    move-result-object v0

    .line 50
    if-eqz v0, :cond_4

    .line 51
    .line 52
    invoke-static {v0}, Lkotlin/text/StringsKt;->isBlank(Ljava/lang/CharSequence;)Z

    .line 53
    .line 54
    .line 55
    move-result v2

    .line 56
    xor-int/lit8 v2, v2, 0x1

    .line 57
    .line 58
    if-eqz v2, :cond_4

    .line 59
    .line 60
    :cond_3
    move-object v1, v0

    .line 61
    :cond_4
    return-object v1
.end method

.method public final resolveDesc()Ljava/lang/String;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/kotlin/ui/legendgame/data/LegendGameHeaderData;->game_info:Lcom/join/mgps/dto/CommonGameInfoBean;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0}, Lcom/join/mgps/dto/CommonGameInfoBean;->getG_info()Lcom/join/mgps/dto/GInfoBean;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    if-eqz v0, :cond_0

    .line 10
    .line 11
    invoke-virtual {v0}, Lcom/join/mgps/dto/GInfoBean;->getInfo()Ljava/lang/String;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    goto :goto_0

    .line 16
    :cond_0
    const/4 v0, 0x0

    .line 17
    :goto_0
    return-object v0
.end method

.method public final resolveIcon()Ljava/lang/String;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/kotlin/ui/legendgame/data/LegendGameHeaderData;->game_info:Lcom/join/mgps/dto/CommonGameInfoBean;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0}, Lcom/join/mgps/dto/CommonGameInfoBean;->getG_info()Lcom/join/mgps/dto/GInfoBean;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    if-eqz v0, :cond_0

    .line 10
    .line 11
    invoke-virtual {v0}, Lcom/join/mgps/dto/GInfoBean;->getIco()Ljava/lang/String;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    goto :goto_0

    .line 16
    :cond_0
    const/4 v0, 0x0

    .line 17
    :goto_0
    return-object v0
.end method

.method public final resolveTitle()Ljava/lang/String;
    .locals 3
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/kotlin/ui/legendgame/data/LegendGameHeaderData;->game_info:Lcom/join/mgps/dto/CommonGameInfoBean;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    if-eqz v0, :cond_2

    .line 5
    .line 6
    invoke-virtual {v0}, Lcom/join/mgps/dto/CommonGameInfoBean;->getShowName()Ljava/lang/String;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    if-eqz v0, :cond_2

    .line 11
    .line 12
    invoke-static {v0}, Lkotlin/text/StringsKt;->isBlank(Ljava/lang/CharSequence;)Z

    .line 13
    .line 14
    .line 15
    move-result v2

    .line 16
    xor-int/lit8 v2, v2, 0x1

    .line 17
    .line 18
    if-eqz v2, :cond_0

    .line 19
    .line 20
    goto :goto_0

    .line 21
    :cond_0
    move-object v0, v1

    .line 22
    :goto_0
    if-nez v0, :cond_1

    .line 23
    .line 24
    goto :goto_1

    .line 25
    :cond_1
    move-object v1, v0

    .line 26
    goto :goto_2

    .line 27
    :cond_2
    :goto_1
    iget-object v0, p0, Lcom/join/kotlin/ui/legendgame/data/LegendGameHeaderData;->game_info:Lcom/join/mgps/dto/CommonGameInfoBean;

    .line 28
    .line 29
    if-eqz v0, :cond_3

    .line 30
    .line 31
    invoke-virtual {v0}, Lcom/join/mgps/dto/CommonGameInfoBean;->getG_info()Lcom/join/mgps/dto/GInfoBean;

    .line 32
    .line 33
    .line 34
    move-result-object v0

    .line 35
    if-eqz v0, :cond_3

    .line 36
    .line 37
    invoke-virtual {v0}, Lcom/join/mgps/dto/GInfoBean;->getName()Ljava/lang/String;

    .line 38
    .line 39
    .line 40
    move-result-object v1

    .line 41
    :cond_3
    :goto_2
    return-object v1
.end method

.method public final resolveVideoUrl()Ljava/lang/String;
    .locals 3
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/kotlin/ui/legendgame/data/LegendGameHeaderData;->game_info:Lcom/join/mgps/dto/CommonGameInfoBean;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    if-eqz v0, :cond_0

    .line 5
    .line 6
    invoke-virtual {v0}, Lcom/join/mgps/dto/CommonGameInfoBean;->getV_url()Ljava/lang/String;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    if-eqz v0, :cond_0

    .line 11
    .line 12
    invoke-static {v0}, Lkotlin/text/StringsKt;->isBlank(Ljava/lang/CharSequence;)Z

    .line 13
    .line 14
    .line 15
    move-result v2

    .line 16
    xor-int/lit8 v2, v2, 0x1

    .line 17
    .line 18
    if-eqz v2, :cond_0

    .line 19
    .line 20
    move-object v1, v0

    .line 21
    :cond_0
    return-object v1
.end method

.method public final setGame_info(Lcom/join/mgps/dto/CommonGameInfoBean;)V
    .locals 0
    .param p1    # Lcom/join/mgps/dto/CommonGameInfoBean;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    iput-object p1, p0, Lcom/join/kotlin/ui/legendgame/data/LegendGameHeaderData;->game_info:Lcom/join/mgps/dto/CommonGameInfoBean;

    .line 2
    .line 3
    return-void
.end method
