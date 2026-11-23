.class public final Lcom/join/mgps/dto/hmcloud/CloudGamingCfgInfo;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u00008\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0003\n\u0002\u0010!\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u0008\n\u0002\u0008\u0004\u0018\u00002\u00020\u0001B\u0007\u00a2\u0006\u0004\u0008\u0002\u0010\u0003R\u0019\u0010\u0004\u001a\n\u0012\u0004\u0012\u00020\u0006\u0018\u00010\u0005\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0007\u0010\u0008R\u0013\u0010\t\u001a\u0004\u0018\u00010\n\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u000b\u0010\u000cR\u0017\u0010\r\u001a\u0008\u0012\u0004\u0012\u00020\u000e0\u0005\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u000f\u0010\u0008R\u0013\u0010\u0010\u001a\u0004\u0018\u00010\u0011\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0012\u0010\u0013R\u0015\u0010\u0014\u001a\u0004\u0018\u00010\u0015\u00a2\u0006\n\n\u0002\u0010\u0018\u001a\u0004\u0008\u0016\u0010\u0017\u00a8\u0006\u0019"
    }
    d2 = {
        "Lcom/join/mgps/dto/hmcloud/CloudGamingCfgInfo;",
        "",
        "<init>",
        "()V",
        "handle_cfg",
        "",
        "Lcom/join/mgps/dto/hmcloud/HandleCfg;",
        "getHandle_cfg",
        "()Ljava/util/List;",
        "controller_type",
        "Lcom/join/mgps/dto/hmcloud/ControllerTemplate;",
        "getController_type",
        "()Lcom/join/mgps/dto/hmcloud/ControllerTemplate;",
        "picture_setting",
        "Lcom/join/mgps/dto/hmcloud/PictureSetting;",
        "getPicture_setting",
        "game_button_tips",
        "Lcom/join/mgps/dto/hmcloud/GameButtonTips;",
        "getGame_button_tips",
        "()Lcom/join/mgps/dto/hmcloud/GameButtonTips;",
        "handle_support",
        "",
        "getHandle_support",
        "()Ljava/lang/Integer;",
        "Ljava/lang/Integer;",
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
.field private final controller_type:Lcom/join/mgps/dto/hmcloud/ControllerTemplate;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private final game_button_tips:Lcom/join/mgps/dto/hmcloud/GameButtonTips;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private final handle_cfg:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/join/mgps/dto/hmcloud/HandleCfg;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private final handle_support:Ljava/lang/Integer;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private final picture_setting:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/join/mgps/dto/hmcloud/PictureSetting;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Ljava/util/ArrayList;

    .line 5
    .line 6
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 7
    .line 8
    .line 9
    iput-object v0, p0, Lcom/join/mgps/dto/hmcloud/CloudGamingCfgInfo;->picture_setting:Ljava/util/List;

    .line 10
    .line 11
    return-void
.end method


# virtual methods
.method public final getController_type()Lcom/join/mgps/dto/hmcloud/ControllerTemplate;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dto/hmcloud/CloudGamingCfgInfo;->controller_type:Lcom/join/mgps/dto/hmcloud/ControllerTemplate;

    .line 2
    .line 3
    return-object v0
.end method

.method public final getGame_button_tips()Lcom/join/mgps/dto/hmcloud/GameButtonTips;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dto/hmcloud/CloudGamingCfgInfo;->game_button_tips:Lcom/join/mgps/dto/hmcloud/GameButtonTips;

    .line 2
    .line 3
    return-object v0
.end method

.method public final getHandle_cfg()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/join/mgps/dto/hmcloud/HandleCfg;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dto/hmcloud/CloudGamingCfgInfo;->handle_cfg:Ljava/util/List;

    .line 2
    .line 3
    return-object v0
.end method

.method public final getHandle_support()Ljava/lang/Integer;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dto/hmcloud/CloudGamingCfgInfo;->handle_support:Ljava/lang/Integer;

    .line 2
    .line 3
    return-object v0
.end method

.method public final getPicture_setting()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/join/mgps/dto/hmcloud/PictureSetting;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dto/hmcloud/CloudGamingCfgInfo;->picture_setting:Ljava/util/List;

    .line 2
    .line 3
    return-object v0
.end method
