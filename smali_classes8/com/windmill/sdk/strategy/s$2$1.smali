.class Lcom/windmill/sdk/strategy/s$2$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/windmill/sdk/utils/m$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/windmill/sdk/strategy/s$2;->a(Lcom/windmill/sdk/strategy/a;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/windmill/sdk/strategy/a;

.field final synthetic b:Lcom/windmill/sdk/strategy/s$2;


# direct methods
.method constructor <init>(Lcom/windmill/sdk/strategy/s$2;Lcom/windmill/sdk/strategy/a;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010
        }
        names = {
            "this$1",
            "val$strategy"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/windmill/sdk/strategy/s$2$1;->b:Lcom/windmill/sdk/strategy/s$2;

    .line 2
    .line 3
    iput-object p2, p0, Lcom/windmill/sdk/strategy/s$2$1;->a:Lcom/windmill/sdk/strategy/a;

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
    .locals 2
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
    if-eqz v0, :cond_1

    .line 4
    .line 5
    check-cast p1, Lcom/windmill/sdk/point/PointEntityWind;

    .line 6
    .line 7
    iget-object v0, p0, Lcom/windmill/sdk/strategy/s$2$1;->b:Lcom/windmill/sdk/strategy/s$2;

    .line 8
    .line 9
    iget-object v0, v0, Lcom/windmill/sdk/strategy/s$2;->a:Lcom/windmill/sdk/strategy/s;

    .line 10
    .line 11
    invoke-static {v0}, Lcom/windmill/sdk/strategy/s;->j(Lcom/windmill/sdk/strategy/s;)Lcom/windmill/sdk/WindMillAdRequest;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    invoke-virtual {v0}, Lcom/windmill/sdk/WindMillAdRequest;->getLoadId()Ljava/lang/String;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    invoke-virtual {p1, v0}, Lcom/czhj/sdk/common/mta/PointEntityBase;->setLoad_id(Ljava/lang/String;)V

    .line 20
    .line 21
    .line 22
    const-string v0, "1"

    .line 23
    .line 24
    invoke-virtual {p1, v0}, Lcom/windmill/sdk/point/PointEntityWind;->setHb_response(Ljava/lang/String;)V

    .line 25
    .line 26
    .line 27
    iget-object v0, p0, Lcom/windmill/sdk/strategy/s$2$1;->a:Lcom/windmill/sdk/strategy/a;

    .line 28
    .line 29
    invoke-virtual {v0}, Lcom/windmill/sdk/strategy/a;->m()D

    .line 30
    .line 31
    .line 32
    move-result-wide v0

    .line 33
    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(D)Ljava/lang/String;

    .line 34
    .line 35
    .line 36
    move-result-object v0

    .line 37
    invoke-virtual {p1, v0}, Lcom/windmill/sdk/point/PointEntityWind;->setCurrency_coefficient(Ljava/lang/String;)V

    .line 38
    .line 39
    .line 40
    iget-object v0, p0, Lcom/windmill/sdk/strategy/s$2$1;->a:Lcom/windmill/sdk/strategy/a;

    .line 41
    .line 42
    invoke-virtual {v0}, Lcom/windmill/sdk/strategy/a;->l()Ljava/lang/Float;

    .line 43
    .line 44
    .line 45
    move-result-object v0

    .line 46
    if-eqz v0, :cond_0

    .line 47
    .line 48
    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 49
    .line 50
    .line 51
    move-result-object v0

    .line 52
    invoke-virtual {p1, v0}, Lcom/windmill/sdk/point/PointEntityWind;->setExchange_rate(Ljava/lang/String;)V

    .line 53
    .line 54
    .line 55
    :cond_0
    iget-object v0, p0, Lcom/windmill/sdk/strategy/s$2$1;->a:Lcom/windmill/sdk/strategy/a;

    .line 56
    .line 57
    invoke-virtual {v0}, Lcom/windmill/sdk/strategy/a;->af()Lcom/windmill/sdk/strategy/a$a;

    .line 58
    .line 59
    .line 60
    move-result-object v0

    .line 61
    if-eqz v0, :cond_1

    .line 62
    .line 63
    iget-object v0, p0, Lcom/windmill/sdk/strategy/s$2$1;->a:Lcom/windmill/sdk/strategy/a;

    .line 64
    .line 65
    invoke-virtual {v0}, Lcom/windmill/sdk/strategy/a;->af()Lcom/windmill/sdk/strategy/a$a;

    .line 66
    .line 67
    .line 68
    move-result-object v0

    .line 69
    invoke-virtual {v0}, Lcom/windmill/sdk/strategy/a$a;->d()Ljava/lang/String;

    .line 70
    .line 71
    .line 72
    move-result-object v0

    .line 73
    invoke-virtual {p1, v0}, Lcom/windmill/sdk/point/PointEntityWind;->setHb_id(Ljava/lang/String;)V

    .line 74
    .line 75
    .line 76
    :cond_1
    return-void
.end method
