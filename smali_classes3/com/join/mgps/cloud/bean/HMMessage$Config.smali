.class public final Lcom/join/mgps/cloud/bean/HMMessage$Config;
.super Lcom/join/mgps/cloud/bean/HMMessage;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/join/mgps/cloud/bean/HMMessage;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Config"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0014\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0005\u0018\u00002\u00020\u0001B\u0007\u00a2\u0006\u0004\u0008\u0002\u0010\u0003R\u001c\u0010\u0004\u001a\u0004\u0018\u00010\u0005X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0006\u0010\u0007\"\u0004\u0008\u0008\u0010\t\u00a8\u0006\n"
    }
    d2 = {
        "Lcom/join/mgps/cloud/bean/HMMessage$Config;",
        "Lcom/join/mgps/cloud/bean/HMMessage;",
        "<init>",
        "()V",
        "config",
        "Lcom/join/mgps/cloud/bean/ConfigInfo;",
        "getConfig",
        "()Lcom/join/mgps/cloud/bean/ConfigInfo;",
        "setConfig",
        "(Lcom/join/mgps/cloud/bean/ConfigInfo;)V",
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
.field private config:Lcom/join/mgps/cloud/bean/ConfigInfo;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 1
    const-string v0, "config"

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-direct {p0, v0, v1}, Lcom/join/mgps/cloud/bean/HMMessage;-><init>(Ljava/lang/String;Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 5
    .line 6
    .line 7
    return-void
.end method


# virtual methods
.method public final getConfig()Lcom/join/mgps/cloud/bean/ConfigInfo;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/cloud/bean/HMMessage$Config;->config:Lcom/join/mgps/cloud/bean/ConfigInfo;

    .line 2
    .line 3
    return-object v0
.end method

.method public final setConfig(Lcom/join/mgps/cloud/bean/ConfigInfo;)V
    .locals 0
    .param p1    # Lcom/join/mgps/cloud/bean/ConfigInfo;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    iput-object p1, p0, Lcom/join/mgps/cloud/bean/HMMessage$Config;->config:Lcom/join/mgps/cloud/bean/ConfigInfo;

    .line 2
    .line 3
    return-void
.end method
