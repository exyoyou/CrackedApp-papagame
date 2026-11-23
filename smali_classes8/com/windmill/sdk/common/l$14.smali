.class Lcom/windmill/sdk/common/l$14;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/windmill/sdk/utils/m$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/windmill/sdk/common/l;->a(Lcom/windmill/sdk/WindMillAdRequest;Ljava/util/List;Lcom/windmill/sdk/strategy/a;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Lcom/windmill/sdk/strategy/a;

.field final synthetic c:Lcom/windmill/sdk/strategy/a;

.field final synthetic d:Lcom/windmill/sdk/common/l;


# direct methods
.method constructor <init>(Lcom/windmill/sdk/common/l;Ljava/lang/String;Lcom/windmill/sdk/strategy/a;Lcom/windmill/sdk/strategy/a;)V
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
            "val$loadId",
            "val$readyStrategy",
            "val$adStrategy"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/windmill/sdk/common/l$14;->d:Lcom/windmill/sdk/common/l;

    .line 2
    .line 3
    iput-object p2, p0, Lcom/windmill/sdk/common/l$14;->a:Ljava/lang/String;

    .line 4
    .line 5
    iput-object p3, p0, Lcom/windmill/sdk/common/l$14;->b:Lcom/windmill/sdk/strategy/a;

    .line 6
    .line 7
    iput-object p4, p0, Lcom/windmill/sdk/common/l$14;->c:Lcom/windmill/sdk/strategy/a;

    .line 8
    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 10
    .line 11
    .line 12
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
    const-string v0, "low_price"

    .line 8
    .line 9
    invoke-virtual {p1, v0}, Lcom/czhj/sdk/common/mta/PointEntitySuper;->setSub_category(Ljava/lang/String;)V

    .line 10
    .line 11
    .line 12
    iget-object v0, p0, Lcom/windmill/sdk/common/l$14;->a:Ljava/lang/String;

    .line 13
    .line 14
    invoke-virtual {p1, v0}, Lcom/czhj/sdk/common/mta/PointEntityBase;->setLoad_id(Ljava/lang/String;)V

    .line 15
    .line 16
    .line 17
    iget-object v0, p0, Lcom/windmill/sdk/common/l$14;->b:Lcom/windmill/sdk/strategy/a;

    .line 18
    .line 19
    invoke-virtual {v0}, Lcom/windmill/sdk/strategy/a;->aP()Ljava/lang/String;

    .line 20
    .line 21
    .line 22
    move-result-object v0

    .line 23
    invoke-virtual {p1, v0}, Lcom/windmill/sdk/point/PointEntityWind;->setWin_platform(Ljava/lang/String;)V

    .line 24
    .line 25
    .line 26
    iget-object v0, p0, Lcom/windmill/sdk/common/l$14;->b:Lcom/windmill/sdk/strategy/a;

    .line 27
    .line 28
    invoke-virtual {v0}, Lcom/windmill/sdk/strategy/a;->V()Ljava/lang/String;

    .line 29
    .line 30
    .line 31
    move-result-object v0

    .line 32
    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 33
    .line 34
    .line 35
    move-result-object v0

    .line 36
    invoke-virtual {p1, v0}, Lcom/windmill/sdk/point/PointEntityWind;->setHigher_price(Ljava/lang/String;)V

    .line 37
    .line 38
    .line 39
    iget-object v0, p0, Lcom/windmill/sdk/common/l$14;->c:Lcom/windmill/sdk/strategy/a;

    .line 40
    .line 41
    invoke-virtual {v0}, Lcom/windmill/sdk/strategy/a;->af()Lcom/windmill/sdk/strategy/a$a;

    .line 42
    .line 43
    .line 44
    move-result-object v0

    .line 45
    if-eqz v0, :cond_0

    .line 46
    .line 47
    iget-object v0, p0, Lcom/windmill/sdk/common/l$14;->c:Lcom/windmill/sdk/strategy/a;

    .line 48
    .line 49
    invoke-virtual {v0}, Lcom/windmill/sdk/strategy/a;->af()Lcom/windmill/sdk/strategy/a$a;

    .line 50
    .line 51
    .line 52
    move-result-object v0

    .line 53
    invoke-virtual {v0}, Lcom/windmill/sdk/strategy/a$a;->d()Ljava/lang/String;

    .line 54
    .line 55
    .line 56
    move-result-object v0

    .line 57
    invoke-virtual {p1, v0}, Lcom/windmill/sdk/point/PointEntityWind;->setHb_id(Ljava/lang/String;)V

    .line 58
    .line 59
    .line 60
    :cond_0
    return-void
.end method
