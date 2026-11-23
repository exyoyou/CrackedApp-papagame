.class public final Lcom/windmill/sdk/WMAdConfig;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/windmill/sdk/WMAdConfig$Builder;
    }
.end annotation


# instance fields
.field private customController:Lcom/windmill/sdk/WMCustomController;

.field private mTTMediationConfig:Ljava/lang/Object;


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/windmill/sdk/WMAdConfig$1;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/windmill/sdk/WMAdConfig;-><init>()V

    return-void
.end method


# virtual methods
.method public getCustomController()Lcom/windmill/sdk/WMCustomController;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/windmill/sdk/WMAdConfig;->customController:Lcom/windmill/sdk/WMCustomController;

    .line 2
    .line 3
    return-object v0
.end method

.method public setCustomController(Lcom/windmill/sdk/WMCustomController;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "controller"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/windmill/sdk/WMAdConfig;->customController:Lcom/windmill/sdk/WMCustomController;

    .line 2
    .line 3
    return-void
.end method
