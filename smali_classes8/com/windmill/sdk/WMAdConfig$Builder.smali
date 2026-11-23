.class public Lcom/windmill/sdk/WMAdConfig$Builder;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/windmill/sdk/WMAdConfig;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# instance fields
.field private customController:Lcom/windmill/sdk/WMCustomController;


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
.method public build()Lcom/windmill/sdk/WMAdConfig;
    .locals 2

    .line 1
    new-instance v0, Lcom/windmill/sdk/WMAdConfig;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-direct {v0, v1}, Lcom/windmill/sdk/WMAdConfig;-><init>(Lcom/windmill/sdk/WMAdConfig$1;)V

    .line 5
    .line 6
    .line 7
    iget-object v1, p0, Lcom/windmill/sdk/WMAdConfig$Builder;->customController:Lcom/windmill/sdk/WMCustomController;

    .line 8
    .line 9
    invoke-virtual {v0, v1}, Lcom/windmill/sdk/WMAdConfig;->setCustomController(Lcom/windmill/sdk/WMCustomController;)V

    .line 10
    .line 11
    .line 12
    return-object v0
.end method

.method public customController(Lcom/windmill/sdk/WMCustomController;)Lcom/windmill/sdk/WMAdConfig$Builder;
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
    iput-object p1, p0, Lcom/windmill/sdk/WMAdConfig$Builder;->customController:Lcom/windmill/sdk/WMCustomController;

    .line 2
    .line 3
    return-object p0
.end method
