.class Lcom/windmill/sdk/strategy/s$8;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/windmill/sdk/utils/m$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/windmill/sdk/strategy/s;->a(Lcom/windmill/sdk/WindMillAdRequest;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/windmill/sdk/WMNetworkConfig$WMInnerAdnInit;

.field final synthetic b:Lcom/windmill/sdk/WindMillAdRequest;

.field final synthetic c:Lcom/windmill/sdk/strategy/s;


# direct methods
.method constructor <init>(Lcom/windmill/sdk/strategy/s;Lcom/windmill/sdk/WMNetworkConfig$WMInnerAdnInit;Lcom/windmill/sdk/WindMillAdRequest;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010,
            0x1010
        }
        names = {
            "this$0",
            "val$adnInit",
            "val$adRequest"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/windmill/sdk/strategy/s$8;->c:Lcom/windmill/sdk/strategy/s;

    .line 2
    .line 3
    iput-object p2, p0, Lcom/windmill/sdk/strategy/s$8;->a:Lcom/windmill/sdk/WMNetworkConfig$WMInnerAdnInit;

    .line 4
    .line 5
    iput-object p3, p0, Lcom/windmill/sdk/strategy/s$8;->b:Lcom/windmill/sdk/WindMillAdRequest;

    .line 6
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method public onAddExtra(Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "pointEntityBase"
        }
    .end annotation

    .line 1
    instance-of v0, p1, Lcom/windmill/sdk/point/PointEntityWind;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    check-cast p1, Lcom/windmill/sdk/point/PointEntityWind;

    .line 6
    .line 7
    iget-object v0, p0, Lcom/windmill/sdk/strategy/s$8;->a:Lcom/windmill/sdk/WMNetworkConfig$WMInnerAdnInit;

    .line 8
    .line 9
    invoke-interface {v0}, Lcom/windmill/sdk/WMNetworkConfig$WMAdnInit;->getAdnId()I

    .line 10
    .line 11
    .line 12
    move-result v0

    .line 13
    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    invoke-virtual {p1, v0}, Lcom/windmill/sdk/point/PointEntityWind;->setAggr_channel_id(Ljava/lang/String;)V

    .line 18
    .line 19
    .line 20
    iget-object v0, p0, Lcom/windmill/sdk/strategy/s$8;->b:Lcom/windmill/sdk/WindMillAdRequest;

    .line 21
    .line 22
    invoke-virtual {v0}, Lcom/windmill/sdk/WindMillAdRequest;->getLoadId()Ljava/lang/String;

    .line 23
    .line 24
    .line 25
    move-result-object v0

    .line 26
    invoke-virtual {p1, v0}, Lcom/czhj/sdk/common/mta/PointEntityBase;->setLoad_id(Ljava/lang/String;)V

    .line 27
    .line 28
    .line 29
    iget-object v0, p0, Lcom/windmill/sdk/strategy/s$8;->a:Lcom/windmill/sdk/WMNetworkConfig$WMInnerAdnInit;

    .line 30
    .line 31
    invoke-interface {v0}, Lcom/windmill/sdk/WMNetworkConfig$WMAdnInit;->getAppId()Ljava/lang/String;

    .line 32
    .line 33
    .line 34
    move-result-object v0

    .line 35
    invoke-virtual {p1, v0}, Lcom/windmill/sdk/point/PointEntityWind;->setAggr_appid(Ljava/lang/String;)V

    .line 36
    .line 37
    .line 38
    iget-object v0, p0, Lcom/windmill/sdk/strategy/s$8;->a:Lcom/windmill/sdk/WMNetworkConfig$WMInnerAdnInit;

    .line 39
    .line 40
    invoke-interface {v0}, Lcom/windmill/sdk/WMNetworkConfig$WMInnerAdnInit;->getVersion()Ljava/lang/String;

    .line 41
    .line 42
    .line 43
    move-result-object v0

    .line 44
    invoke-virtual {p1, v0}, Lcom/windmill/sdk/point/PointEntityWind;->setNetwork_version(Ljava/lang/String;)V

    .line 45
    .line 46
    .line 47
    :cond_0
    return-void
.end method
