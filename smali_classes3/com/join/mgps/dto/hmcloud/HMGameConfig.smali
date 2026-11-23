.class public final Lcom/join/mgps/dto/hmcloud/HMGameConfig;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000$\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0003\n\u0002\u0010\u000e\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0005\u0018\u00002\u00020\u0001B\u0007\u00a2\u0006\u0004\u0008\u0002\u0010\u0003R\u001c\u0010\u0004\u001a\u0004\u0018\u00010\u0005X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0006\u0010\u0007\"\u0004\u0008\u0008\u0010\tR\u001c\u0010\n\u001a\u0004\u0018\u00010\u000bX\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u000c\u0010\r\"\u0004\u0008\u000e\u0010\u000fR\u001c\u0010\u0010\u001a\u0004\u0018\u00010\u0011X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0012\u0010\u0013\"\u0004\u0008\u0014\u0010\u0015\u00a8\u0006\u0016"
    }
    d2 = {
        "Lcom/join/mgps/dto/hmcloud/HMGameConfig;",
        "",
        "<init>",
        "()V",
        "gameId",
        "",
        "getGameId",
        "()Ljava/lang/String;",
        "setGameId",
        "(Ljava/lang/String;)V",
        "opConfig",
        "Lcom/join/mgps/dto/hmcloud/HMOpConfig;",
        "getOpConfig",
        "()Lcom/join/mgps/dto/hmcloud/HMOpConfig;",
        "setOpConfig",
        "(Lcom/join/mgps/dto/hmcloud/HMOpConfig;)V",
        "commonConfig",
        "Lcom/join/mgps/dto/hmcloud/HMCommonConfig;",
        "getCommonConfig",
        "()Lcom/join/mgps/dto/hmcloud/HMCommonConfig;",
        "setCommonConfig",
        "(Lcom/join/mgps/dto/hmcloud/HMCommonConfig;)V",
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
.field private commonConfig:Lcom/join/mgps/dto/hmcloud/HMCommonConfig;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private gameId:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private opConfig:Lcom/join/mgps/dto/hmcloud/HMOpConfig;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method


# virtual methods
.method public final getCommonConfig()Lcom/join/mgps/dto/hmcloud/HMCommonConfig;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dto/hmcloud/HMGameConfig;->commonConfig:Lcom/join/mgps/dto/hmcloud/HMCommonConfig;

    .line 2
    .line 3
    return-object v0
.end method

.method public final getGameId()Ljava/lang/String;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dto/hmcloud/HMGameConfig;->gameId:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public final getOpConfig()Lcom/join/mgps/dto/hmcloud/HMOpConfig;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dto/hmcloud/HMGameConfig;->opConfig:Lcom/join/mgps/dto/hmcloud/HMOpConfig;

    .line 2
    .line 3
    return-object v0
.end method

.method public final setCommonConfig(Lcom/join/mgps/dto/hmcloud/HMCommonConfig;)V
    .locals 0
    .param p1    # Lcom/join/mgps/dto/hmcloud/HMCommonConfig;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    iput-object p1, p0, Lcom/join/mgps/dto/hmcloud/HMGameConfig;->commonConfig:Lcom/join/mgps/dto/hmcloud/HMCommonConfig;

    .line 2
    .line 3
    return-void
.end method

.method public final setGameId(Ljava/lang/String;)V
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    iput-object p1, p0, Lcom/join/mgps/dto/hmcloud/HMGameConfig;->gameId:Ljava/lang/String;

    .line 2
    .line 3
    return-void
.end method

.method public final setOpConfig(Lcom/join/mgps/dto/hmcloud/HMOpConfig;)V
    .locals 0
    .param p1    # Lcom/join/mgps/dto/hmcloud/HMOpConfig;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    iput-object p1, p0, Lcom/join/mgps/dto/hmcloud/HMGameConfig;->opConfig:Lcom/join/mgps/dto/hmcloud/HMOpConfig;

    .line 2
    .line 3
    return-void
.end method
