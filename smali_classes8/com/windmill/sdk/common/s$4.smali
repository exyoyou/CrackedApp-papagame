.class Lcom/windmill/sdk/common/s$4;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/windmill/sdk/utils/m$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/windmill/sdk/common/s;->adapterDidLoadAdReady(Lcom/windmill/sdk/custom/WMAdBaseAdapter;Lcom/windmill/sdk/strategy/a;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/windmill/sdk/custom/WMAdBaseAdapter;

.field final synthetic b:Lcom/windmill/sdk/common/s;


# direct methods
.method constructor <init>(Lcom/windmill/sdk/common/s;Lcom/windmill/sdk/custom/WMAdBaseAdapter;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010
        }
        names = {
            "this$0",
            "val$adapter"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/windmill/sdk/common/s$4;->b:Lcom/windmill/sdk/common/s;

    .line 2
    .line 3
    iput-object p2, p0, Lcom/windmill/sdk/common/s$4;->a:Lcom/windmill/sdk/custom/WMAdBaseAdapter;

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
    if-eqz v0, :cond_2

    .line 4
    .line 5
    check-cast p1, Lcom/windmill/sdk/point/PointEntityWind;

    .line 6
    .line 7
    iget-object v0, p0, Lcom/windmill/sdk/common/s$4;->b:Lcom/windmill/sdk/common/s;

    .line 8
    .line 9
    invoke-static {v0}, Lcom/windmill/sdk/common/s;->b(Lcom/windmill/sdk/common/s;)Ljava/lang/String;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    invoke-virtual {p1, v0}, Lcom/czhj/sdk/common/mta/PointEntityBase;->setLoad_id(Ljava/lang/String;)V

    .line 14
    .line 15
    .line 16
    iget-object v0, p0, Lcom/windmill/sdk/common/s$4;->b:Lcom/windmill/sdk/common/s;

    .line 17
    .line 18
    iget-boolean v0, v0, Lcom/windmill/sdk/common/l;->f:Z

    .line 19
    .line 20
    if-eqz v0, :cond_0

    .line 21
    .line 22
    const-string v0, "0"

    .line 23
    .line 24
    goto :goto_0

    .line 25
    :cond_0
    const-string v0, "1"

    .line 26
    .line 27
    :goto_0
    invoke-virtual {p1, v0}, Lcom/windmill/sdk/point/PointEntityWind;->setExecution_scene(Ljava/lang/String;)V

    .line 28
    .line 29
    .line 30
    iget-object v0, p0, Lcom/windmill/sdk/common/s$4;->b:Lcom/windmill/sdk/common/s;

    .line 31
    .line 32
    iget-object v0, v0, Lcom/windmill/sdk/common/l;->b:Lcom/windmill/sdk/strategy/q;

    .line 33
    .line 34
    if-eqz v0, :cond_1

    .line 35
    .line 36
    iget v0, v0, Lcom/windmill/sdk/strategy/q;->g:I

    .line 37
    .line 38
    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 39
    .line 40
    .line 41
    move-result-object v0

    .line 42
    invoke-virtual {p1, v0}, Lcom/windmill/sdk/point/PointEntityWind;->setLoad_model(Ljava/lang/String;)V

    .line 43
    .line 44
    .line 45
    iget-object v0, p0, Lcom/windmill/sdk/common/s$4;->b:Lcom/windmill/sdk/common/s;

    .line 46
    .line 47
    iget-object v0, v0, Lcom/windmill/sdk/common/l;->b:Lcom/windmill/sdk/strategy/q;

    .line 48
    .line 49
    iget v0, v0, Lcom/windmill/sdk/strategy/q;->a:I

    .line 50
    .line 51
    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 52
    .line 53
    .line 54
    move-result-object v0

    .line 55
    invoke-virtual {p1, v0}, Lcom/windmill/sdk/point/PointEntityWind;->setConcurrent_count(Ljava/lang/String;)V

    .line 56
    .line 57
    .line 58
    :cond_1
    iget-object v0, p0, Lcom/windmill/sdk/common/s$4;->b:Lcom/windmill/sdk/common/s;

    .line 59
    .line 60
    iget-object v1, p0, Lcom/windmill/sdk/common/s$4;->a:Lcom/windmill/sdk/custom/WMAdBaseAdapter;

    .line 61
    .line 62
    invoke-virtual {v0, v1, p1}, Lcom/windmill/sdk/common/l;->a(Lcom/windmill/sdk/custom/WMAdBaseAdapter;Lcom/windmill/sdk/point/PointEntityWind;)V

    .line 63
    .line 64
    .line 65
    :cond_2
    return-void
.end method
