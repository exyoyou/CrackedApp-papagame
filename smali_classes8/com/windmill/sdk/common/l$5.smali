.class Lcom/windmill/sdk/common/l$5;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/windmill/sdk/utils/m$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/windmill/sdk/common/l;->a(Lcom/windmill/sdk/strategy/a;Lcom/windmill/sdk/models/Waterfall;Ljava/lang/String;Lcom/windmill/sdk/WindMillAdRequest;Lcom/windmill/sdk/WindMillError;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Lcom/windmill/sdk/WindMillError;

.field final synthetic c:Ljava/lang/String;

.field final synthetic d:Lcom/windmill/sdk/strategy/a;

.field final synthetic e:Lcom/windmill/sdk/models/Waterfall;

.field final synthetic f:Lcom/windmill/sdk/common/l;


# direct methods
.method constructor <init>(Lcom/windmill/sdk/common/l;Ljava/lang/String;Lcom/windmill/sdk/WindMillError;Ljava/lang/String;Lcom/windmill/sdk/strategy/a;Lcom/windmill/sdk/models/Waterfall;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010,
            0x1010,
            0x1010,
            0x1010,
            0x1010
        }
        names = {
            "this$0",
            "val$loadId",
            "val$error",
            "val$timerStage",
            "val$strategy",
            "val$waterfall"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/windmill/sdk/common/l$5;->f:Lcom/windmill/sdk/common/l;

    .line 2
    .line 3
    iput-object p2, p0, Lcom/windmill/sdk/common/l$5;->a:Ljava/lang/String;

    .line 4
    .line 5
    iput-object p3, p0, Lcom/windmill/sdk/common/l$5;->b:Lcom/windmill/sdk/WindMillError;

    .line 6
    .line 7
    iput-object p4, p0, Lcom/windmill/sdk/common/l$5;->c:Ljava/lang/String;

    .line 8
    .line 9
    iput-object p5, p0, Lcom/windmill/sdk/common/l$5;->d:Lcom/windmill/sdk/strategy/a;

    .line 10
    .line 11
    iput-object p6, p0, Lcom/windmill/sdk/common/l$5;->e:Lcom/windmill/sdk/models/Waterfall;

    .line 12
    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 14
    .line 15
    .line 16
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
    iget-object v0, p0, Lcom/windmill/sdk/common/l$5;->a:Ljava/lang/String;

    .line 8
    .line 9
    invoke-virtual {p1, v0}, Lcom/czhj/sdk/common/mta/PointEntityBase;->setLoad_id(Ljava/lang/String;)V

    .line 10
    .line 11
    .line 12
    iget-object v0, p0, Lcom/windmill/sdk/common/l$5;->b:Lcom/windmill/sdk/WindMillError;

    .line 13
    .line 14
    sget-object v1, Lcom/windmill/sdk/WindMillError;->ERROR_LOAD_AD_TIME_OUT:Lcom/windmill/sdk/WindMillError;

    .line 15
    .line 16
    if-ne v0, v1, :cond_0

    .line 17
    .line 18
    iget-object v0, p0, Lcom/windmill/sdk/common/l$5;->c:Ljava/lang/String;

    .line 19
    .line 20
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 21
    .line 22
    .line 23
    move-result v0

    .line 24
    if-nez v0, :cond_0

    .line 25
    .line 26
    invoke-virtual {p1}, Lcom/czhj/sdk/common/mta/PointEntitySuper;->getOptions()Ljava/util/Map;

    .line 27
    .line 28
    .line 29
    move-result-object v0

    .line 30
    const-string v1, "timer_stage"

    .line 31
    .line 32
    iget-object v2, p0, Lcom/windmill/sdk/common/l$5;->c:Ljava/lang/String;

    .line 33
    .line 34
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 35
    .line 36
    .line 37
    :cond_0
    invoke-virtual {p1}, Lcom/windmill/sdk/point/PointEntityWind;->getSdk_operation_bid_type()Ljava/lang/String;

    .line 38
    .line 39
    .line 40
    move-result-object v0

    .line 41
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 42
    .line 43
    .line 44
    move-result v0

    .line 45
    if-eqz v0, :cond_1

    .line 46
    .line 47
    iget-object v0, p0, Lcom/windmill/sdk/common/l$5;->f:Lcom/windmill/sdk/common/l;

    .line 48
    .line 49
    iget-object v0, v0, Lcom/windmill/sdk/common/l;->g:Lcom/windmill/sdk/strategy/s;

    .line 50
    .line 51
    if-eqz v0, :cond_1

    .line 52
    .line 53
    invoke-virtual {v0}, Lcom/windmill/sdk/strategy/s;->f()I

    .line 54
    .line 55
    .line 56
    move-result v0

    .line 57
    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 58
    .line 59
    .line 60
    move-result-object v0

    .line 61
    invoke-virtual {p1, v0}, Lcom/windmill/sdk/point/PointEntityWind;->setSdk_operation_bid_type(Ljava/lang/String;)V

    .line 62
    .line 63
    .line 64
    :cond_1
    iget-object v0, p0, Lcom/windmill/sdk/common/l$5;->d:Lcom/windmill/sdk/strategy/a;

    .line 65
    .line 66
    if-eqz v0, :cond_3

    .line 67
    .line 68
    invoke-virtual {v0}, Lcom/windmill/sdk/strategy/a;->aY()Ljava/lang/String;

    .line 69
    .line 70
    .line 71
    move-result-object v0

    .line 72
    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 73
    .line 74
    .line 75
    move-result-object v0

    .line 76
    invoke-virtual {p1, v0}, Lcom/windmill/sdk/point/PointEntityWind;->setGroup_id(Ljava/lang/String;)V

    .line 77
    .line 78
    .line 79
    iget-object v0, p0, Lcom/windmill/sdk/common/l$5;->d:Lcom/windmill/sdk/strategy/a;

    .line 80
    .line 81
    invoke-virtual {v0}, Lcom/windmill/sdk/strategy/a;->ag()Ljava/lang/String;

    .line 82
    .line 83
    .line 84
    move-result-object v0

    .line 85
    invoke-virtual {p1, v0}, Lcom/windmill/sdk/point/PointEntityWind;->setRule_id(Ljava/lang/String;)V

    .line 86
    .line 87
    .line 88
    iget-object v0, p0, Lcom/windmill/sdk/common/l$5;->d:Lcom/windmill/sdk/strategy/a;

    .line 89
    .line 90
    invoke-virtual {v0}, Lcom/windmill/sdk/strategy/a;->aZ()I

    .line 91
    .line 92
    .line 93
    move-result v0

    .line 94
    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 95
    .line 96
    .line 97
    move-result-object v0

    .line 98
    invoke-virtual {p1, v0}, Lcom/windmill/sdk/point/PointEntityWind;->setAb_test(Ljava/lang/String;)V

    .line 99
    .line 100
    .line 101
    iget-object v0, p0, Lcom/windmill/sdk/common/l$5;->d:Lcom/windmill/sdk/strategy/a;

    .line 102
    .line 103
    invoke-virtual {v0}, Lcom/windmill/sdk/strategy/a;->ak()I

    .line 104
    .line 105
    .line 106
    move-result v0

    .line 107
    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 108
    .line 109
    .line 110
    move-result-object v0

    .line 111
    invoke-virtual {p1, v0}, Lcom/windmill/sdk/point/PointEntityWind;->setTraffic_weight(Ljava/lang/String;)V

    .line 112
    .line 113
    .line 114
    iget-object v0, p0, Lcom/windmill/sdk/common/l$5;->d:Lcom/windmill/sdk/strategy/a;

    .line 115
    .line 116
    invoke-virtual {v0}, Lcom/windmill/sdk/strategy/a;->bb()I

    .line 117
    .line 118
    .line 119
    move-result v0

    .line 120
    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 121
    .line 122
    .line 123
    move-result-object v0

    .line 124
    invoke-virtual {p1, v0}, Lcom/windmill/sdk/point/PointEntityWind;->setExperiment_id(Ljava/lang/String;)V

    .line 125
    .line 126
    .line 127
    iget-object v0, p0, Lcom/windmill/sdk/common/l$5;->d:Lcom/windmill/sdk/strategy/a;

    .line 128
    .line 129
    invoke-virtual {v0}, Lcom/windmill/sdk/strategy/a;->bc()I

    .line 130
    .line 131
    .line 132
    move-result v0

    .line 133
    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 134
    .line 135
    .line 136
    move-result-object v0

    .line 137
    invoke-virtual {p1, v0}, Lcom/windmill/sdk/point/PointEntityWind;->setSub_experiment_id(Ljava/lang/String;)V

    .line 138
    .line 139
    .line 140
    iget-object v0, p0, Lcom/windmill/sdk/common/l$5;->d:Lcom/windmill/sdk/strategy/a;

    .line 141
    .line 142
    invoke-virtual {v0}, Lcom/windmill/sdk/strategy/a;->aK()I

    .line 143
    .line 144
    .line 145
    move-result v0

    .line 146
    const/4 v1, 0x5

    .line 147
    if-ne v0, v1, :cond_2

    .line 148
    .line 149
    iget-object v0, p0, Lcom/windmill/sdk/common/l$5;->d:Lcom/windmill/sdk/strategy/a;

    .line 150
    .line 151
    invoke-virtual {v0}, Lcom/windmill/sdk/strategy/a;->I()I

    .line 152
    .line 153
    .line 154
    move-result v0

    .line 155
    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 156
    .line 157
    .line 158
    move-result-object v0

    .line 159
    invoke-virtual {p1, v0}, Lcom/windmill/sdk/point/PointEntityWind;->setTemplate_type(Ljava/lang/String;)V

    .line 160
    .line 161
    .line 162
    :cond_2
    return-void

    .line 163
    :cond_3
    iget-object v0, p0, Lcom/windmill/sdk/common/l$5;->e:Lcom/windmill/sdk/models/Waterfall;

    .line 164
    .line 165
    if-eqz v0, :cond_4

    .line 166
    .line 167
    iget-object v0, v0, Lcom/windmill/sdk/models/Waterfall;->strategy_id:Ljava/lang/String;

    .line 168
    .line 169
    invoke-virtual {p1, v0}, Lcom/windmill/sdk/point/PointEntityWind;->setGroup_id(Ljava/lang/String;)V

    .line 170
    .line 171
    .line 172
    iget-object v0, p0, Lcom/windmill/sdk/common/l$5;->e:Lcom/windmill/sdk/models/Waterfall;

    .line 173
    .line 174
    iget-object v0, v0, Lcom/windmill/sdk/models/Waterfall;->rule_id:Ljava/lang/String;

    .line 175
    .line 176
    invoke-virtual {p1, v0}, Lcom/windmill/sdk/point/PointEntityWind;->setRule_id(Ljava/lang/String;)V

    .line 177
    .line 178
    .line 179
    iget-object v0, p0, Lcom/windmill/sdk/common/l$5;->e:Lcom/windmill/sdk/models/Waterfall;

    .line 180
    .line 181
    iget-object v0, v0, Lcom/windmill/sdk/models/Waterfall;->strategy_waterfall:Lcom/windmill/sdk/models/StrategyWaterFall;

    .line 182
    .line 183
    if-eqz v0, :cond_4

    .line 184
    .line 185
    iget-object v0, v0, Lcom/windmill/sdk/models/StrategyWaterFall;->ab_flag:Ljava/lang/Integer;

    .line 186
    .line 187
    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 188
    .line 189
    .line 190
    move-result-object v0

    .line 191
    invoke-virtual {p1, v0}, Lcom/windmill/sdk/point/PointEntityWind;->setAb_test(Ljava/lang/String;)V

    .line 192
    .line 193
    .line 194
    iget-object v0, p0, Lcom/windmill/sdk/common/l$5;->e:Lcom/windmill/sdk/models/Waterfall;

    .line 195
    .line 196
    iget-object v0, v0, Lcom/windmill/sdk/models/Waterfall;->strategy_waterfall:Lcom/windmill/sdk/models/StrategyWaterFall;

    .line 197
    .line 198
    iget-object v0, v0, Lcom/windmill/sdk/models/StrategyWaterFall;->experiment_id:Ljava/lang/Integer;

    .line 199
    .line 200
    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 201
    .line 202
    .line 203
    move-result-object v0

    .line 204
    invoke-virtual {p1, v0}, Lcom/windmill/sdk/point/PointEntityWind;->setExperiment_id(Ljava/lang/String;)V

    .line 205
    .line 206
    .line 207
    iget-object v0, p0, Lcom/windmill/sdk/common/l$5;->e:Lcom/windmill/sdk/models/Waterfall;

    .line 208
    .line 209
    iget-object v0, v0, Lcom/windmill/sdk/models/Waterfall;->strategy_waterfall:Lcom/windmill/sdk/models/StrategyWaterFall;

    .line 210
    .line 211
    iget-object v0, v0, Lcom/windmill/sdk/models/StrategyWaterFall;->sub_experiment_id:Ljava/lang/Integer;

    .line 212
    .line 213
    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 214
    .line 215
    .line 216
    move-result-object v0

    .line 217
    invoke-virtual {p1, v0}, Lcom/windmill/sdk/point/PointEntityWind;->setSub_experiment_id(Ljava/lang/String;)V

    .line 218
    .line 219
    .line 220
    :cond_4
    return-void
.end method
