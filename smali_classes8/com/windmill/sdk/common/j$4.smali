.class Lcom/windmill/sdk/common/j$4;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/windmill/sdk/utils/m$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/windmill/sdk/common/j;->adapterDidStartPlayingAd(Lcom/windmill/sdk/custom/WMAdBaseAdapter;Lcom/windmill/sdk/strategy/a;Ljava/util/Map;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/windmill/sdk/strategy/a;

.field final synthetic b:Lcom/windmill/sdk/custom/WMAdBaseAdapter;

.field final synthetic c:Lcom/windmill/sdk/common/j;


# direct methods
.method constructor <init>(Lcom/windmill/sdk/common/j;Lcom/windmill/sdk/strategy/a;Lcom/windmill/sdk/custom/WMAdBaseAdapter;)V
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
    iput-object p1, p0, Lcom/windmill/sdk/common/j$4;->c:Lcom/windmill/sdk/common/j;

    .line 2
    .line 3
    iput-object p2, p0, Lcom/windmill/sdk/common/j$4;->a:Lcom/windmill/sdk/strategy/a;

    .line 4
    .line 5
    iput-object p3, p0, Lcom/windmill/sdk/common/j$4;->b:Lcom/windmill/sdk/custom/WMAdBaseAdapter;

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
    .locals 3
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
    iget-object v0, p0, Lcom/windmill/sdk/common/j$4;->a:Lcom/windmill/sdk/strategy/a;

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
    iget-object v0, p0, Lcom/windmill/sdk/common/j$4;->a:Lcom/windmill/sdk/strategy/a;

    .line 17
    .line 18
    invoke-virtual {v0}, Lcom/windmill/sdk/strategy/a;->V()Ljava/lang/String;

    .line 19
    .line 20
    .line 21
    move-result-object v0

    .line 22
    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 23
    .line 24
    .line 25
    move-result-object v0

    .line 26
    invoke-virtual {p1, v0}, Lcom/windmill/sdk/point/PointEntityWind;->setEcpm(Ljava/lang/String;)V

    .line 27
    .line 28
    .line 29
    iget-object v0, p0, Lcom/windmill/sdk/common/j$4;->a:Lcom/windmill/sdk/strategy/a;

    .line 30
    .line 31
    invoke-virtual {v0}, Lcom/windmill/sdk/strategy/a;->T()I

    .line 32
    .line 33
    .line 34
    move-result v0

    .line 35
    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 36
    .line 37
    .line 38
    move-result-object v0

    .line 39
    invoke-virtual {p1, v0}, Lcom/czhj/sdk/common/mta/PointEntitySuper;->setSub_category(Ljava/lang/String;)V

    .line 40
    .line 41
    .line 42
    iget-object v0, p0, Lcom/windmill/sdk/common/j$4;->a:Lcom/windmill/sdk/strategy/a;

    .line 43
    .line 44
    invoke-virtual {v0}, Lcom/windmill/sdk/strategy/a;->m()D

    .line 45
    .line 46
    .line 47
    move-result-wide v0

    .line 48
    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(D)Ljava/lang/String;

    .line 49
    .line 50
    .line 51
    move-result-object v0

    .line 52
    invoke-virtual {p1, v0}, Lcom/windmill/sdk/point/PointEntityWind;->setCurrency_coefficient(Ljava/lang/String;)V

    .line 53
    .line 54
    .line 55
    iget-object v0, p0, Lcom/windmill/sdk/common/j$4;->a:Lcom/windmill/sdk/strategy/a;

    .line 56
    .line 57
    invoke-virtual {v0}, Lcom/windmill/sdk/strategy/a;->l()Ljava/lang/Float;

    .line 58
    .line 59
    .line 60
    move-result-object v0

    .line 61
    if-eqz v0, :cond_0

    .line 62
    .line 63
    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 64
    .line 65
    .line 66
    move-result-object v0

    .line 67
    invoke-virtual {p1, v0}, Lcom/windmill/sdk/point/PointEntityWind;->setExchange_rate(Ljava/lang/String;)V

    .line 68
    .line 69
    .line 70
    :cond_0
    iget-object v0, p0, Lcom/windmill/sdk/common/j$4;->c:Lcom/windmill/sdk/common/j;

    .line 71
    .line 72
    iget-object v0, v0, Lcom/windmill/sdk/common/l;->b:Lcom/windmill/sdk/strategy/q;

    .line 73
    .line 74
    if-eqz v0, :cond_1

    .line 75
    .line 76
    iget v0, v0, Lcom/windmill/sdk/strategy/q;->g:I

    .line 77
    .line 78
    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 79
    .line 80
    .line 81
    move-result-object v0

    .line 82
    invoke-virtual {p1, v0}, Lcom/windmill/sdk/point/PointEntityWind;->setLoad_model(Ljava/lang/String;)V

    .line 83
    .line 84
    .line 85
    iget-object v0, p0, Lcom/windmill/sdk/common/j$4;->c:Lcom/windmill/sdk/common/j;

    .line 86
    .line 87
    iget-object v0, v0, Lcom/windmill/sdk/common/l;->b:Lcom/windmill/sdk/strategy/q;

    .line 88
    .line 89
    iget v0, v0, Lcom/windmill/sdk/strategy/q;->a:I

    .line 90
    .line 91
    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 92
    .line 93
    .line 94
    move-result-object v0

    .line 95
    invoke-virtual {p1, v0}, Lcom/windmill/sdk/point/PointEntityWind;->setConcurrent_count(Ljava/lang/String;)V

    .line 96
    .line 97
    .line 98
    :cond_1
    invoke-virtual {p1}, Lcom/czhj/sdk/common/mta/PointEntitySuper;->getOptions()Ljava/util/Map;

    .line 99
    .line 100
    .line 101
    move-result-object v0

    .line 102
    invoke-static {}, Lcom/windmill/sdk/common/o;->d()Lcom/windmill/sdk/common/o;

    .line 103
    .line 104
    .line 105
    move-result-object v1

    .line 106
    invoke-virtual {v1}, Lcom/windmill/sdk/common/o;->c()Ljava/lang/String;

    .line 107
    .line 108
    .line 109
    move-result-object v1

    .line 110
    const-string v2, "active_id"

    .line 111
    .line 112
    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 113
    .line 114
    .line 115
    iget-object v0, p0, Lcom/windmill/sdk/common/j$4;->c:Lcom/windmill/sdk/common/j;

    .line 116
    .line 117
    iget-object v1, p0, Lcom/windmill/sdk/common/j$4;->b:Lcom/windmill/sdk/custom/WMAdBaseAdapter;

    .line 118
    .line 119
    invoke-virtual {v0, v1, p1}, Lcom/windmill/sdk/common/l;->a(Lcom/windmill/sdk/custom/WMAdBaseAdapter;Lcom/windmill/sdk/point/PointEntityWind;)V

    .line 120
    .line 121
    .line 122
    :cond_2
    return-void
.end method
