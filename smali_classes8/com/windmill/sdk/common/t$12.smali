.class Lcom/windmill/sdk/common/t$12;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/windmill/sdk/utils/m$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/windmill/sdk/common/t;->adapterDidRewardAd(Lcom/windmill/sdk/custom/WMAdBaseAdapter;Lcom/windmill/sdk/strategy/a;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Lcom/windmill/sdk/strategy/a;

.field final synthetic c:Lcom/windmill/sdk/custom/WMAdBaseAdapter;

.field final synthetic d:Lcom/windmill/sdk/common/t;


# direct methods
.method constructor <init>(Lcom/windmill/sdk/common/t;Ljava/lang/String;Lcom/windmill/sdk/strategy/a;Lcom/windmill/sdk/custom/WMAdBaseAdapter;)V
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
            "val$finalTransId",
            "val$adStrategy",
            "val$adapter"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/windmill/sdk/common/t$12;->d:Lcom/windmill/sdk/common/t;

    .line 2
    .line 3
    iput-object p2, p0, Lcom/windmill/sdk/common/t$12;->a:Ljava/lang/String;

    .line 4
    .line 5
    iput-object p3, p0, Lcom/windmill/sdk/common/t$12;->b:Lcom/windmill/sdk/strategy/a;

    .line 6
    .line 7
    iput-object p4, p0, Lcom/windmill/sdk/common/t$12;->c:Lcom/windmill/sdk/custom/WMAdBaseAdapter;

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
    if-eqz v0, :cond_4

    .line 4
    .line 5
    check-cast p1, Lcom/windmill/sdk/point/PointEntityWind;

    .line 6
    .line 7
    iget-object v0, p0, Lcom/windmill/sdk/common/t$12;->d:Lcom/windmill/sdk/common/t;

    .line 8
    .line 9
    invoke-static {v0}, Lcom/windmill/sdk/common/t;->d(Lcom/windmill/sdk/common/t;)Ljava/lang/String;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    invoke-virtual {p1, v0}, Lcom/czhj/sdk/common/mta/PointEntityBase;->setScene_id(Ljava/lang/String;)V

    .line 14
    .line 15
    .line 16
    iget-object v0, p0, Lcom/windmill/sdk/common/t$12;->d:Lcom/windmill/sdk/common/t;

    .line 17
    .line 18
    invoke-static {v0}, Lcom/windmill/sdk/common/t;->e(Lcom/windmill/sdk/common/t;)Ljava/lang/String;

    .line 19
    .line 20
    .line 21
    move-result-object v0

    .line 22
    invoke-virtual {p1, v0}, Lcom/czhj/sdk/common/mta/PointEntityBase;->setScene_desc(Ljava/lang/String;)V

    .line 23
    .line 24
    .line 25
    iget-object v0, p0, Lcom/windmill/sdk/common/t$12;->d:Lcom/windmill/sdk/common/t;

    .line 26
    .line 27
    invoke-static {v0}, Lcom/windmill/sdk/common/t;->b(Lcom/windmill/sdk/common/t;)Ljava/lang/String;

    .line 28
    .line 29
    .line 30
    move-result-object v0

    .line 31
    invoke-virtual {p1, v0}, Lcom/czhj/sdk/common/mta/PointEntityBase;->setLoad_id(Ljava/lang/String;)V

    .line 32
    .line 33
    .line 34
    iget-object v0, p0, Lcom/windmill/sdk/common/t$12;->a:Ljava/lang/String;

    .line 35
    .line 36
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 37
    .line 38
    .line 39
    move-result v0

    .line 40
    if-nez v0, :cond_0

    .line 41
    .line 42
    iget-object v0, p0, Lcom/windmill/sdk/common/t$12;->a:Ljava/lang/String;

    .line 43
    .line 44
    invoke-virtual {p1, v0}, Lcom/windmill/sdk/point/PointEntityWind;->setPlatform_trans_id(Ljava/lang/String;)V

    .line 45
    .line 46
    .line 47
    :cond_0
    iget-object v0, p0, Lcom/windmill/sdk/common/t$12;->d:Lcom/windmill/sdk/common/t;

    .line 48
    .line 49
    iget-object v0, v0, Lcom/windmill/sdk/common/l;->o:Lcom/windmill/sdk/WindMillAdRequest;

    .line 50
    .line 51
    if-eqz v0, :cond_1

    .line 52
    .line 53
    invoke-virtual {p1}, Lcom/czhj/sdk/common/mta/PointEntitySuper;->getOptions()Ljava/util/Map;

    .line 54
    .line 55
    .line 56
    move-result-object v0

    .line 57
    iget-object v1, p0, Lcom/windmill/sdk/common/t$12;->d:Lcom/windmill/sdk/common/t;

    .line 58
    .line 59
    iget-object v1, v1, Lcom/windmill/sdk/common/l;->o:Lcom/windmill/sdk/WindMillAdRequest;

    .line 60
    .line 61
    invoke-virtual {v1}, Lcom/windmill/sdk/WindMillAdRequest;->getOptions()Ljava/util/Map;

    .line 62
    .line 63
    .line 64
    move-result-object v1

    .line 65
    invoke-virtual {p1, v1}, Lcom/czhj/sdk/common/mta/PointEntitySuper;->toJsonString(Ljava/util/Map;)Ljava/lang/String;

    .line 66
    .line 67
    .line 68
    move-result-object v1

    .line 69
    const-string v2, "request_options"

    .line 70
    .line 71
    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 72
    .line 73
    .line 74
    :cond_1
    iget-object v0, p0, Lcom/windmill/sdk/common/t$12;->b:Lcom/windmill/sdk/strategy/a;

    .line 75
    .line 76
    invoke-virtual {v0}, Lcom/windmill/sdk/strategy/a;->aN()I

    .line 77
    .line 78
    .line 79
    move-result v0

    .line 80
    invoke-static {v0}, Lcom/windmill/sdk/utils/l;->c(I)Z

    .line 81
    .line 82
    .line 83
    move-result v0

    .line 84
    if-eqz v0, :cond_3

    .line 85
    .line 86
    iget-object v0, p0, Lcom/windmill/sdk/common/t$12;->b:Lcom/windmill/sdk/strategy/a;

    .line 87
    .line 88
    invoke-virtual {v0}, Lcom/windmill/sdk/strategy/a;->J()Ljava/util/Map;

    .line 89
    .line 90
    .line 91
    move-result-object v0

    .line 92
    if-eqz v0, :cond_3

    .line 93
    .line 94
    iget-object v0, p0, Lcom/windmill/sdk/common/t$12;->b:Lcom/windmill/sdk/strategy/a;

    .line 95
    .line 96
    invoke-virtual {v0}, Lcom/windmill/sdk/strategy/a;->J()Ljava/util/Map;

    .line 97
    .line 98
    .line 99
    move-result-object v0

    .line 100
    const-string v1, "rewardAction"

    .line 101
    .line 102
    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 103
    .line 104
    .line 105
    move-result-object v0

    .line 106
    if-eqz v0, :cond_2

    .line 107
    .line 108
    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 109
    .line 110
    .line 111
    move-result-object v0

    .line 112
    invoke-virtual {p1, v0}, Lcom/windmill/sdk/point/PointEntityWind;->setReward_action(Ljava/lang/String;)V

    .line 113
    .line 114
    .line 115
    goto :goto_0

    .line 116
    :cond_2
    const-string v0, "0"

    .line 117
    .line 118
    invoke-virtual {p1, v0}, Lcom/windmill/sdk/point/PointEntityWind;->setReward_action(Ljava/lang/String;)V

    .line 119
    .line 120
    .line 121
    :cond_3
    :goto_0
    iget-object v0, p0, Lcom/windmill/sdk/common/t$12;->d:Lcom/windmill/sdk/common/t;

    .line 122
    .line 123
    iget-object v1, p0, Lcom/windmill/sdk/common/t$12;->c:Lcom/windmill/sdk/custom/WMAdBaseAdapter;

    .line 124
    .line 125
    invoke-virtual {v0, v1, p1}, Lcom/windmill/sdk/common/l;->a(Lcom/windmill/sdk/custom/WMAdBaseAdapter;Lcom/windmill/sdk/point/PointEntityWind;)V

    .line 126
    .line 127
    .line 128
    :cond_4
    return-void
.end method
