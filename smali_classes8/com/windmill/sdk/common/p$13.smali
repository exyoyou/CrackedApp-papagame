.class Lcom/windmill/sdk/common/p$13;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/windmill/sdk/utils/m$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/windmill/sdk/common/p;->adapterDidLoadAdReady(Lcom/windmill/sdk/custom/WMAdBaseAdapter;Lcom/windmill/sdk/strategy/a;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/windmill/sdk/strategy/a;

.field final synthetic b:Lcom/windmill/sdk/custom/WMAdBaseAdapter;

.field final synthetic c:Lcom/windmill/sdk/common/p;


# direct methods
.method constructor <init>(Lcom/windmill/sdk/common/p;Lcom/windmill/sdk/strategy/a;Lcom/windmill/sdk/custom/WMAdBaseAdapter;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010,
            0x1010
        }
        names = {
            "this$0",
            "val$strategy",
            "val$adapter"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/windmill/sdk/common/p$13;->c:Lcom/windmill/sdk/common/p;

    .line 2
    .line 3
    iput-object p2, p0, Lcom/windmill/sdk/common/p$13;->a:Lcom/windmill/sdk/strategy/a;

    .line 4
    .line 5
    iput-object p3, p0, Lcom/windmill/sdk/common/p$13;->b:Lcom/windmill/sdk/custom/WMAdBaseAdapter;

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
    if-eqz v0, :cond_3

    .line 4
    .line 5
    check-cast p1, Lcom/windmill/sdk/point/PointEntityWind;

    .line 6
    .line 7
    iget-object v0, p0, Lcom/windmill/sdk/common/p$13;->a:Lcom/windmill/sdk/strategy/a;

    .line 8
    .line 9
    invoke-virtual {v0}, Lcom/windmill/sdk/strategy/a;->aJ()Ljava/lang/String;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    invoke-virtual {p1, v0}, Lcom/czhj/sdk/common/mta/PointEntityBase;->setLoad_id(Ljava/lang/String;)V

    .line 14
    .line 15
    .line 16
    iget-object v0, p0, Lcom/windmill/sdk/common/p$13;->b:Lcom/windmill/sdk/custom/WMAdBaseAdapter;

    .line 17
    .line 18
    instance-of v1, v0, Lcom/windmill/sdk/custom/WMCustomNativeAdapter;

    .line 19
    .line 20
    if-eqz v1, :cond_0

    .line 21
    .line 22
    check-cast v0, Lcom/windmill/sdk/custom/WMCustomNativeAdapter;

    .line 23
    .line 24
    invoke-virtual {v0}, Lcom/windmill/sdk/custom/WMCustomNativeAdapter;->getNativeAdDataList()Ljava/util/List;

    .line 25
    .line 26
    .line 27
    move-result-object v0

    .line 28
    if-eqz v0, :cond_0

    .line 29
    .line 30
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 31
    .line 32
    .line 33
    move-result v0

    .line 34
    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 35
    .line 36
    .line 37
    move-result-object v0

    .line 38
    invoke-virtual {p1, v0}, Lcom/windmill/sdk/point/PointEntityWind;->setAd_cnt(Ljava/lang/String;)V

    .line 39
    .line 40
    .line 41
    :cond_0
    iget-object v0, p0, Lcom/windmill/sdk/common/p$13;->c:Lcom/windmill/sdk/common/p;

    .line 42
    .line 43
    iget-boolean v0, v0, Lcom/windmill/sdk/common/l;->f:Z

    .line 44
    .line 45
    if-eqz v0, :cond_1

    .line 46
    .line 47
    const-string v0, "0"

    .line 48
    .line 49
    goto :goto_0

    .line 50
    :cond_1
    const-string v0, "1"

    .line 51
    .line 52
    :goto_0
    invoke-virtual {p1, v0}, Lcom/windmill/sdk/point/PointEntityWind;->setExecution_scene(Ljava/lang/String;)V

    .line 53
    .line 54
    .line 55
    iget-object v0, p0, Lcom/windmill/sdk/common/p$13;->c:Lcom/windmill/sdk/common/p;

    .line 56
    .line 57
    iget-object v0, v0, Lcom/windmill/sdk/common/l;->b:Lcom/windmill/sdk/strategy/q;

    .line 58
    .line 59
    if-eqz v0, :cond_2

    .line 60
    .line 61
    iget v0, v0, Lcom/windmill/sdk/strategy/q;->g:I

    .line 62
    .line 63
    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 64
    .line 65
    .line 66
    move-result-object v0

    .line 67
    invoke-virtual {p1, v0}, Lcom/windmill/sdk/point/PointEntityWind;->setLoad_model(Ljava/lang/String;)V

    .line 68
    .line 69
    .line 70
    iget-object v0, p0, Lcom/windmill/sdk/common/p$13;->c:Lcom/windmill/sdk/common/p;

    .line 71
    .line 72
    iget-object v0, v0, Lcom/windmill/sdk/common/l;->b:Lcom/windmill/sdk/strategy/q;

    .line 73
    .line 74
    iget v0, v0, Lcom/windmill/sdk/strategy/q;->a:I

    .line 75
    .line 76
    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 77
    .line 78
    .line 79
    move-result-object v0

    .line 80
    invoke-virtual {p1, v0}, Lcom/windmill/sdk/point/PointEntityWind;->setConcurrent_count(Ljava/lang/String;)V

    .line 81
    .line 82
    .line 83
    :cond_2
    iget-object v0, p0, Lcom/windmill/sdk/common/p$13;->c:Lcom/windmill/sdk/common/p;

    .line 84
    .line 85
    iget-object v1, p0, Lcom/windmill/sdk/common/p$13;->b:Lcom/windmill/sdk/custom/WMAdBaseAdapter;

    .line 86
    .line 87
    invoke-virtual {v0, v1, p1}, Lcom/windmill/sdk/common/l;->a(Lcom/windmill/sdk/custom/WMAdBaseAdapter;Lcom/windmill/sdk/point/PointEntityWind;)V

    .line 88
    .line 89
    .line 90
    :cond_3
    return-void
.end method
