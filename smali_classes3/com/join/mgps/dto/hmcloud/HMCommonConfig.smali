.class public final Lcom/join/mgps/dto/hmcloud/HMCommonConfig;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000$\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0003\n\u0002\u0010\u000e\n\u0002\u0008\u0005\n\u0002\u0010\u0008\n\u0002\u0008\t\n\u0002\u0010\u000b\n\u0002\u0008\u0008\u0018\u00002\u00020\u0001B\u0007\u00a2\u0006\u0004\u0008\u0002\u0010\u0003R\u001c\u0010\u0004\u001a\u0004\u0018\u00010\u0005X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0006\u0010\u0007\"\u0004\u0008\u0008\u0010\tR\u001e\u0010\n\u001a\u0004\u0018\u00010\u000bX\u0086\u000e\u00a2\u0006\u0010\n\u0002\u0010\u0010\u001a\u0004\u0008\u000c\u0010\r\"\u0004\u0008\u000e\u0010\u000fR\u001c\u0010\u0011\u001a\u0004\u0018\u00010\u0005X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0012\u0010\u0007\"\u0004\u0008\u0013\u0010\tR\u001e\u0010\u0014\u001a\u0004\u0018\u00010\u0015X\u0086\u000e\u00a2\u0006\u0010\n\u0002\u0010\u001a\u001a\u0004\u0008\u0016\u0010\u0017\"\u0004\u0008\u0018\u0010\u0019R\u001e\u0010\u001b\u001a\u0004\u0018\u00010\u0015X\u0086\u000e\u00a2\u0006\u0010\n\u0002\u0010\u001a\u001a\u0004\u0008\u001b\u0010\u0017\"\u0004\u0008\u001c\u0010\u0019\u00a8\u0006\u001d"
    }
    d2 = {
        "Lcom/join/mgps/dto/hmcloud/HMCommonConfig;",
        "",
        "<init>",
        "()V",
        "currentResolutionInfo",
        "",
        "getCurrentResolutionInfo",
        "()Ljava/lang/String;",
        "setCurrentResolutionInfo",
        "(Ljava/lang/String;)V",
        "brightness",
        "",
        "getBrightness",
        "()Ljava/lang/Integer;",
        "setBrightness",
        "(Ljava/lang/Integer;)V",
        "Ljava/lang/Integer;",
        "viewRatio",
        "getViewRatio",
        "setViewRatio",
        "mute",
        "",
        "getMute",
        "()Ljava/lang/Boolean;",
        "setMute",
        "(Ljava/lang/Boolean;)V",
        "Ljava/lang/Boolean;",
        "isLatencyOn",
        "setLatencyOn",
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
.field private brightness:Ljava/lang/Integer;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private currentResolutionInfo:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private isLatencyOn:Ljava/lang/Boolean;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private mute:Ljava/lang/Boolean;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private viewRatio:Ljava/lang/String;
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
.method public final getBrightness()Ljava/lang/Integer;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dto/hmcloud/HMCommonConfig;->brightness:Ljava/lang/Integer;

    .line 2
    .line 3
    return-object v0
.end method

.method public final getCurrentResolutionInfo()Ljava/lang/String;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dto/hmcloud/HMCommonConfig;->currentResolutionInfo:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public final getMute()Ljava/lang/Boolean;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dto/hmcloud/HMCommonConfig;->mute:Ljava/lang/Boolean;

    .line 2
    .line 3
    return-object v0
.end method

.method public final getViewRatio()Ljava/lang/String;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dto/hmcloud/HMCommonConfig;->viewRatio:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public final isLatencyOn()Ljava/lang/Boolean;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/dto/hmcloud/HMCommonConfig;->isLatencyOn:Ljava/lang/Boolean;

    .line 2
    .line 3
    return-object v0
.end method

.method public final setBrightness(Ljava/lang/Integer;)V
    .locals 0
    .param p1    # Ljava/lang/Integer;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    iput-object p1, p0, Lcom/join/mgps/dto/hmcloud/HMCommonConfig;->brightness:Ljava/lang/Integer;

    .line 2
    .line 3
    return-void
.end method

.method public final setCurrentResolutionInfo(Ljava/lang/String;)V
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    iput-object p1, p0, Lcom/join/mgps/dto/hmcloud/HMCommonConfig;->currentResolutionInfo:Ljava/lang/String;

    .line 2
    .line 3
    return-void
.end method

.method public final setLatencyOn(Ljava/lang/Boolean;)V
    .locals 0
    .param p1    # Ljava/lang/Boolean;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    iput-object p1, p0, Lcom/join/mgps/dto/hmcloud/HMCommonConfig;->isLatencyOn:Ljava/lang/Boolean;

    .line 2
    .line 3
    return-void
.end method

.method public final setMute(Ljava/lang/Boolean;)V
    .locals 0
    .param p1    # Ljava/lang/Boolean;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    iput-object p1, p0, Lcom/join/mgps/dto/hmcloud/HMCommonConfig;->mute:Ljava/lang/Boolean;

    .line 2
    .line 3
    return-void
.end method

.method public final setViewRatio(Ljava/lang/String;)V
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    iput-object p1, p0, Lcom/join/mgps/dto/hmcloud/HMCommonConfig;->viewRatio:Ljava/lang/String;

    .line 2
    .line 3
    return-void
.end method
