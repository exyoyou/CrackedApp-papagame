.class public final Lcom/join/kotlin/ui/legendgame/data/LegendBrandServerItem;
.super Lcom/join/kotlin/ui/legendgame/data/LegendZoneGameItem;
.source "SourceFile"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0014\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0005\u0018\u00002\u00020\u0001B\u0007\u00a2\u0006\u0004\u0008\u0002\u0010\u0003R\u001c\u0010\u0004\u001a\u0004\u0018\u00010\u0005X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0006\u0010\u0007\"\u0004\u0008\u0008\u0010\t\u00a8\u0006\n"
    }
    d2 = {
        "Lcom/join/kotlin/ui/legendgame/data/LegendBrandServerItem;",
        "Lcom/join/kotlin/ui/legendgame/data/LegendZoneGameItem;",
        "<init>",
        "()V",
        "game_info",
        "Lcom/join/mgps/dto/CommonGameInfoBean;",
        "getGame_info",
        "()Lcom/join/mgps/dto/CommonGameInfoBean;",
        "setGame_info",
        "(Lcom/join/mgps/dto/CommonGameInfoBean;)V",
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
    iget-object v0, p0, Lcom/join/kotlin/ui/legendgame/data/LegendBrandServerItem;->game_info:Lcom/join/mgps/dto/CommonGameInfoBean;

    .line 2
    .line 3
    return-object v0
.end method

.method public final setGame_info(Lcom/join/mgps/dto/CommonGameInfoBean;)V
    .locals 0
    .param p1    # Lcom/join/mgps/dto/CommonGameInfoBean;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    iput-object p1, p0, Lcom/join/kotlin/ui/legendgame/data/LegendBrandServerItem;->game_info:Lcom/join/mgps/dto/CommonGameInfoBean;

    .line 2
    .line 3
    return-void
.end method
