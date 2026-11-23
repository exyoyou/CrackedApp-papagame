.class Lcom/windmill/sdk/common/l$10$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/windmill/sdk/utils/m$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/windmill/sdk/common/l$10;->a()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Lcom/windmill/sdk/common/l$10;


# direct methods
.method constructor <init>(Lcom/windmill/sdk/common/l$10;Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010
        }
        names = {
            "this$1",
            "val$loadId"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/windmill/sdk/common/l$10$1;->b:Lcom/windmill/sdk/common/l$10;

    .line 2
    .line 3
    iput-object p2, p0, Lcom/windmill/sdk/common/l$10$1;->a:Ljava/lang/String;

    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    .line 7
    .line 8
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
    iget-object v0, p0, Lcom/windmill/sdk/common/l$10$1;->a:Ljava/lang/String;

    .line 8
    .line 9
    invoke-virtual {p1, v0}, Lcom/czhj/sdk/common/mta/PointEntityBase;->setLoad_id(Ljava/lang/String;)V

    .line 10
    .line 11
    .line 12
    iget-object v0, p0, Lcom/windmill/sdk/common/l$10$1;->b:Lcom/windmill/sdk/common/l$10;

    .line 13
    .line 14
    iget-object v0, v0, Lcom/windmill/sdk/common/l$10;->e:Lcom/windmill/sdk/custom/WMAdBaseAdapter;

    .line 15
    .line 16
    invoke-virtual {v0}, Lcom/windmill/sdk/custom/WMAdBaseAdapter;->getAdapterVersion()I

    .line 17
    .line 18
    .line 19
    move-result v0

    .line 20
    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 21
    .line 22
    .line 23
    move-result-object v0

    .line 24
    invoke-virtual {p1, v0}, Lcom/windmill/sdk/point/PointEntityWind;->setAdapter_version(Ljava/lang/String;)V

    .line 25
    .line 26
    .line 27
    iget-object v0, p0, Lcom/windmill/sdk/common/l$10$1;->b:Lcom/windmill/sdk/common/l$10;

    .line 28
    .line 29
    iget-object v0, v0, Lcom/windmill/sdk/common/l$10;->e:Lcom/windmill/sdk/custom/WMAdBaseAdapter;

    .line 30
    .line 31
    invoke-virtual {v0}, Lcom/windmill/sdk/custom/WMAdBaseAdapter;->getChannelSdkVersion()Ljava/lang/String;

    .line 32
    .line 33
    .line 34
    move-result-object v0

    .line 35
    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 36
    .line 37
    .line 38
    move-result-object v0

    .line 39
    invoke-virtual {p1, v0}, Lcom/windmill/sdk/point/PointEntityWind;->setNetwork_version(Ljava/lang/String;)V

    .line 40
    .line 41
    .line 42
    :cond_0
    return-void
.end method
