.class Lcom/windmill/sdk/common/h$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/windmill/sdk/WMNetworkConfig$WMInnerAdnInit;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/windmill/sdk/common/h;->a(Landroid/content/Context;Ljava/util/List;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/windmill/sdk/custom/WMCustomAdapterProxy;

.field final synthetic b:I

.field final synthetic c:Lcom/windmill/sdk/WMNetworkConfig$WMAdnInit;

.field final synthetic d:Lcom/windmill/sdk/common/h;


# direct methods
.method constructor <init>(Lcom/windmill/sdk/common/h;Lcom/windmill/sdk/custom/WMCustomAdapterProxy;ILcom/windmill/sdk/WMNetworkConfig$WMAdnInit;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010,
            0x1010,
            0x1010
        }
        names = {
            "this$0",
            "val$finalAdapterProxy",
            "val$channelId",
            "val$adnInit"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/windmill/sdk/common/h$2;->d:Lcom/windmill/sdk/common/h;

    .line 2
    .line 3
    iput-object p2, p0, Lcom/windmill/sdk/common/h$2;->a:Lcom/windmill/sdk/custom/WMCustomAdapterProxy;

    .line 4
    .line 5
    iput p3, p0, Lcom/windmill/sdk/common/h$2;->b:I

    .line 6
    .line 7
    iput-object p4, p0, Lcom/windmill/sdk/common/h$2;->c:Lcom/windmill/sdk/WMNetworkConfig$WMAdnInit;

    .line 8
    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 10
    .line 11
    .line 12
    return-void
.end method


# virtual methods
.method public getAdnId()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/windmill/sdk/common/h$2;->b:I

    .line 2
    .line 3
    return v0
.end method

.method public getAppId()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/windmill/sdk/common/h$2;->c:Lcom/windmill/sdk/WMNetworkConfig$WMAdnInit;

    .line 2
    .line 3
    invoke-interface {v0}, Lcom/windmill/sdk/WMNetworkConfig$WMAdnInit;->getAppId()Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    return-object v0
.end method

.method public getAppKey()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/windmill/sdk/common/h$2;->c:Lcom/windmill/sdk/WMNetworkConfig$WMAdnInit;

    .line 2
    .line 3
    invoke-interface {v0}, Lcom/windmill/sdk/WMNetworkConfig$WMAdnInit;->getAppId()Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    return-object v0
.end method

.method public getVersion()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/windmill/sdk/common/h$2;->a:Lcom/windmill/sdk/custom/WMCustomAdapterProxy;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/windmill/sdk/custom/WMCustomAdapterProxy;->getNetworkSdkVersion()Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    return-object v0
.end method
