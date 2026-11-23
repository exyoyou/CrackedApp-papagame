.class Lcom/windmill/sdk/common/t$19;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/windmill/sdk/utils/m$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/windmill/sdk/common/t;->a(Lcom/windmill/sdk/custom/WMAdBaseAdapter;Ljava/lang/String;Lcom/windmill/sdk/strategy/a;Ljava/util/Map;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/windmill/sdk/strategy/a;

.field final synthetic b:Ljava/lang/String;

.field final synthetic c:Ljava/lang/String;

.field final synthetic d:Lcom/windmill/sdk/custom/WMAdBaseAdapter;

.field final synthetic e:Lcom/windmill/sdk/common/t;


# direct methods
.method constructor <init>(Lcom/windmill/sdk/common/t;Lcom/windmill/sdk/strategy/a;Ljava/lang/String;Ljava/lang/String;Lcom/windmill/sdk/custom/WMAdBaseAdapter;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010,
            0x1010,
            0x1010,
            0x1010
        }
        names = {
            "this$0",
            "val$strategy",
            "val$final_offer_id",
            "val$category",
            "val$adapter"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/windmill/sdk/common/t$19;->e:Lcom/windmill/sdk/common/t;

    .line 2
    .line 3
    iput-object p2, p0, Lcom/windmill/sdk/common/t$19;->a:Lcom/windmill/sdk/strategy/a;

    .line 4
    .line 5
    iput-object p3, p0, Lcom/windmill/sdk/common/t$19;->b:Ljava/lang/String;

    .line 6
    .line 7
    iput-object p4, p0, Lcom/windmill/sdk/common/t$19;->c:Ljava/lang/String;

    .line 8
    .line 9
    iput-object p5, p0, Lcom/windmill/sdk/common/t$19;->d:Lcom/windmill/sdk/custom/WMAdBaseAdapter;

    .line 10
    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 12
    .line 13
    .line 14
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
    if-eqz v0, :cond_3

    .line 4
    .line 5
    check-cast p1, Lcom/windmill/sdk/point/PointEntityWind;

    .line 6
    .line 7
    iget-object v0, p0, Lcom/windmill/sdk/common/t$19;->a:Lcom/windmill/sdk/strategy/a;

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
    iget-object v0, p0, Lcom/windmill/sdk/common/t$19;->e:Lcom/windmill/sdk/common/t;

    .line 17
    .line 18
    invoke-static {v0}, Lcom/windmill/sdk/common/t;->d(Lcom/windmill/sdk/common/t;)Ljava/lang/String;

    .line 19
    .line 20
    .line 21
    move-result-object v0

    .line 22
    invoke-virtual {p1, v0}, Lcom/czhj/sdk/common/mta/PointEntityBase;->setScene_id(Ljava/lang/String;)V

    .line 23
    .line 24
    .line 25
    iget-object v0, p0, Lcom/windmill/sdk/common/t$19;->e:Lcom/windmill/sdk/common/t;

    .line 26
    .line 27
    invoke-static {v0}, Lcom/windmill/sdk/common/t;->e(Lcom/windmill/sdk/common/t;)Ljava/lang/String;

    .line 28
    .line 29
    .line 30
    move-result-object v0

    .line 31
    invoke-virtual {p1, v0}, Lcom/czhj/sdk/common/mta/PointEntityBase;->setScene_desc(Ljava/lang/String;)V

    .line 32
    .line 33
    .line 34
    iget-object v0, p0, Lcom/windmill/sdk/common/t$19;->a:Lcom/windmill/sdk/strategy/a;

    .line 35
    .line 36
    invoke-virtual {v0}, Lcom/windmill/sdk/strategy/a;->V()Ljava/lang/String;

    .line 37
    .line 38
    .line 39
    move-result-object v0

    .line 40
    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 41
    .line 42
    .line 43
    move-result-object v0

    .line 44
    invoke-virtual {p1, v0}, Lcom/windmill/sdk/point/PointEntityWind;->setEcpm(Ljava/lang/String;)V

    .line 45
    .line 46
    .line 47
    iget-object v0, p0, Lcom/windmill/sdk/common/t$19;->a:Lcom/windmill/sdk/strategy/a;

    .line 48
    .line 49
    invoke-virtual {v0}, Lcom/windmill/sdk/strategy/a;->T()I

    .line 50
    .line 51
    .line 52
    move-result v0

    .line 53
    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 54
    .line 55
    .line 56
    move-result-object v0

    .line 57
    invoke-virtual {p1, v0}, Lcom/czhj/sdk/common/mta/PointEntitySuper;->setSub_category(Ljava/lang/String;)V

    .line 58
    .line 59
    .line 60
    iget-object v0, p0, Lcom/windmill/sdk/common/t$19;->a:Lcom/windmill/sdk/strategy/a;

    .line 61
    .line 62
    invoke-virtual {v0}, Lcom/windmill/sdk/strategy/a;->m()D

    .line 63
    .line 64
    .line 65
    move-result-wide v0

    .line 66
    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(D)Ljava/lang/String;

    .line 67
    .line 68
    .line 69
    move-result-object v0

    .line 70
    invoke-virtual {p1, v0}, Lcom/windmill/sdk/point/PointEntityWind;->setCurrency_coefficient(Ljava/lang/String;)V

    .line 71
    .line 72
    .line 73
    iget-object v0, p0, Lcom/windmill/sdk/common/t$19;->a:Lcom/windmill/sdk/strategy/a;

    .line 74
    .line 75
    invoke-virtual {v0}, Lcom/windmill/sdk/strategy/a;->l()Ljava/lang/Float;

    .line 76
    .line 77
    .line 78
    move-result-object v0

    .line 79
    if-eqz v0, :cond_0

    .line 80
    .line 81
    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 82
    .line 83
    .line 84
    move-result-object v0

    .line 85
    invoke-virtual {p1, v0}, Lcom/windmill/sdk/point/PointEntityWind;->setExchange_rate(Ljava/lang/String;)V

    .line 86
    .line 87
    .line 88
    :cond_0
    iget-object v0, p0, Lcom/windmill/sdk/common/t$19;->b:Ljava/lang/String;

    .line 89
    .line 90
    invoke-virtual {p1, v0}, Lcom/windmill/sdk/point/PointEntityWind;->setOffer_id(Ljava/lang/String;)V

    .line 91
    .line 92
    .line 93
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    .line 94
    .line 95
    iget-object v1, p0, Lcom/windmill/sdk/common/t$19;->e:Lcom/windmill/sdk/common/t;

    .line 96
    .line 97
    iget-object v1, v1, Lcom/windmill/sdk/common/l;->o:Lcom/windmill/sdk/WindMillAdRequest;

    .line 98
    .line 99
    invoke-virtual {v1}, Lcom/windmill/sdk/WindMillAdRequest;->getOptions()Ljava/util/Map;

    .line 100
    .line 101
    .line 102
    move-result-object v1

    .line 103
    invoke-direct {v0, v1}, Lorg/json/JSONObject;-><init>(Ljava/util/Map;)V

    .line 104
    .line 105
    .line 106
    invoke-virtual {p1}, Lcom/czhj/sdk/common/mta/PointEntitySuper;->getOptions()Ljava/util/Map;

    .line 107
    .line 108
    .line 109
    move-result-object v1

    .line 110
    const-string v2, "request_options"

    .line 111
    .line 112
    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    .line 113
    .line 114
    .line 115
    move-result-object v0

    .line 116
    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 117
    .line 118
    .line 119
    goto :goto_0

    .line 120
    :catchall_0
    nop

    .line 121
    :goto_0
    iget-object v0, p0, Lcom/windmill/sdk/common/t$19;->e:Lcom/windmill/sdk/common/t;

    .line 122
    .line 123
    iget-object v0, v0, Lcom/windmill/sdk/common/l;->b:Lcom/windmill/sdk/strategy/q;

    .line 124
    .line 125
    if-eqz v0, :cond_1

    .line 126
    .line 127
    iget v0, v0, Lcom/windmill/sdk/strategy/q;->g:I

    .line 128
    .line 129
    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 130
    .line 131
    .line 132
    move-result-object v0

    .line 133
    invoke-virtual {p1, v0}, Lcom/windmill/sdk/point/PointEntityWind;->setLoad_model(Ljava/lang/String;)V

    .line 134
    .line 135
    .line 136
    iget-object v0, p0, Lcom/windmill/sdk/common/t$19;->e:Lcom/windmill/sdk/common/t;

    .line 137
    .line 138
    iget-object v0, v0, Lcom/windmill/sdk/common/l;->b:Lcom/windmill/sdk/strategy/q;

    .line 139
    .line 140
    iget v0, v0, Lcom/windmill/sdk/strategy/q;->a:I

    .line 141
    .line 142
    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 143
    .line 144
    .line 145
    move-result-object v0

    .line 146
    invoke-virtual {p1, v0}, Lcom/windmill/sdk/point/PointEntityWind;->setConcurrent_count(Ljava/lang/String;)V

    .line 147
    .line 148
    .line 149
    :cond_1
    const-string v0, "start"

    .line 150
    .line 151
    iget-object v1, p0, Lcom/windmill/sdk/common/t$19;->c:Ljava/lang/String;

    .line 152
    .line 153
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 154
    .line 155
    .line 156
    move-result v0

    .line 157
    if-eqz v0, :cond_2

    .line 158
    .line 159
    invoke-virtual {p1}, Lcom/czhj/sdk/common/mta/PointEntitySuper;->getOptions()Ljava/util/Map;

    .line 160
    .line 161
    .line 162
    move-result-object v0

    .line 163
    invoke-static {}, Lcom/windmill/sdk/common/o;->d()Lcom/windmill/sdk/common/o;

    .line 164
    .line 165
    .line 166
    move-result-object v1

    .line 167
    invoke-virtual {v1}, Lcom/windmill/sdk/common/o;->c()Ljava/lang/String;

    .line 168
    .line 169
    .line 170
    move-result-object v1

    .line 171
    const-string v2, "active_id"

    .line 172
    .line 173
    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 174
    .line 175
    .line 176
    :cond_2
    iget-object v0, p0, Lcom/windmill/sdk/common/t$19;->e:Lcom/windmill/sdk/common/t;

    .line 177
    .line 178
    iget-object v1, p0, Lcom/windmill/sdk/common/t$19;->d:Lcom/windmill/sdk/custom/WMAdBaseAdapter;

    .line 179
    .line 180
    invoke-virtual {v0, v1, p1}, Lcom/windmill/sdk/common/l;->a(Lcom/windmill/sdk/custom/WMAdBaseAdapter;Lcom/windmill/sdk/point/PointEntityWind;)V

    .line 181
    .line 182
    .line 183
    :cond_3
    return-void
.end method
