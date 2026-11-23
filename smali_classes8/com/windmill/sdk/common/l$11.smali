.class Lcom/windmill/sdk/common/l$11;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/windmill/sdk/utils/m$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/windmill/sdk/common/l;->a(Lcom/windmill/sdk/WindMillAdRequest;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/windmill/sdk/WindMillAdRequest;

.field final synthetic b:Ljava/lang/String;

.field final synthetic c:Lcom/windmill/sdk/common/l;


# direct methods
.method constructor <init>(Lcom/windmill/sdk/common/l;Lcom/windmill/sdk/WindMillAdRequest;Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010,
            0x1010
        }
        names = {
            "this$0",
            "val$request",
            "val$strategy_stage"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/windmill/sdk/common/l$11;->c:Lcom/windmill/sdk/common/l;

    .line 2
    .line 3
    iput-object p2, p0, Lcom/windmill/sdk/common/l$11;->a:Lcom/windmill/sdk/WindMillAdRequest;

    .line 4
    .line 5
    iput-object p3, p0, Lcom/windmill/sdk/common/l$11;->b:Ljava/lang/String;

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
    if-eqz v0, :cond_5

    .line 4
    .line 5
    check-cast p1, Lcom/windmill/sdk/point/PointEntityWind;

    .line 6
    .line 7
    iget-object v0, p0, Lcom/windmill/sdk/common/l$11;->c:Lcom/windmill/sdk/common/l;

    .line 8
    .line 9
    iget-object v0, v0, Lcom/windmill/sdk/common/l;->r:Lcom/windmill/sdk/common/l$a;

    .line 10
    .line 11
    iget v0, v0, Lcom/windmill/sdk/common/l$a;->a:I

    .line 12
    .line 13
    add-int/lit8 v0, v0, 0x1

    .line 14
    .line 15
    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    invoke-virtual {p1, v0}, Lcom/windmill/sdk/point/PointEntityWind;->setLoad_count(Ljava/lang/String;)V

    .line 20
    .line 21
    .line 22
    iget-object v0, p0, Lcom/windmill/sdk/common/l$11;->c:Lcom/windmill/sdk/common/l;

    .line 23
    .line 24
    iget-object v0, v0, Lcom/windmill/sdk/common/l;->r:Lcom/windmill/sdk/common/l$a;

    .line 25
    .line 26
    iget v0, v0, Lcom/windmill/sdk/common/l$a;->c:I

    .line 27
    .line 28
    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 29
    .line 30
    .line 31
    move-result-object v0

    .line 32
    invoke-virtual {p1, v0}, Lcom/windmill/sdk/point/PointEntityWind;->setLoading_filters(Ljava/lang/String;)V

    .line 33
    .line 34
    .line 35
    iget-object v0, p0, Lcom/windmill/sdk/common/l$11;->c:Lcom/windmill/sdk/common/l;

    .line 36
    .line 37
    iget-object v0, v0, Lcom/windmill/sdk/common/l;->r:Lcom/windmill/sdk/common/l$a;

    .line 38
    .line 39
    iget v0, v0, Lcom/windmill/sdk/common/l$a;->b:I

    .line 40
    .line 41
    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 42
    .line 43
    .line 44
    move-result-object v0

    .line 45
    invoke-virtual {p1, v0}, Lcom/windmill/sdk/point/PointEntityWind;->setGdpr_filters(Ljava/lang/String;)V

    .line 46
    .line 47
    .line 48
    iget-object v0, p0, Lcom/windmill/sdk/common/l$11;->c:Lcom/windmill/sdk/common/l;

    .line 49
    .line 50
    iget-object v0, v0, Lcom/windmill/sdk/common/l;->r:Lcom/windmill/sdk/common/l$a;

    .line 51
    .line 52
    iget v0, v0, Lcom/windmill/sdk/common/l$a;->e:I

    .line 53
    .line 54
    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 55
    .line 56
    .line 57
    move-result-object v0

    .line 58
    invoke-virtual {p1, v0}, Lcom/windmill/sdk/point/PointEntityWind;->setInterval_filters(Ljava/lang/String;)V

    .line 59
    .line 60
    .line 61
    iget-object v0, p0, Lcom/windmill/sdk/common/l$11;->c:Lcom/windmill/sdk/common/l;

    .line 62
    .line 63
    invoke-static {v0}, Lcom/windmill/sdk/common/l;->b(Lcom/windmill/sdk/common/l;)I

    .line 64
    .line 65
    .line 66
    move-result v0

    .line 67
    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 68
    .line 69
    .line 70
    move-result-object v0

    .line 71
    invoke-virtual {p1, v0}, Lcom/windmill/sdk/point/PointEntityWind;->setPldempty_filters(Ljava/lang/String;)V

    .line 72
    .line 73
    .line 74
    iget-object v0, p0, Lcom/windmill/sdk/common/l$11;->c:Lcom/windmill/sdk/common/l;

    .line 75
    .line 76
    iget-object v0, v0, Lcom/windmill/sdk/common/l;->r:Lcom/windmill/sdk/common/l$a;

    .line 77
    .line 78
    iget v0, v0, Lcom/windmill/sdk/common/l$a;->d:I

    .line 79
    .line 80
    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 81
    .line 82
    .line 83
    move-result-object v0

    .line 84
    invoke-virtual {p1, v0}, Lcom/windmill/sdk/point/PointEntityWind;->setInit_filters(Ljava/lang/String;)V

    .line 85
    .line 86
    .line 87
    iget-object v0, p0, Lcom/windmill/sdk/common/l$11;->a:Lcom/windmill/sdk/WindMillAdRequest;

    .line 88
    .line 89
    invoke-virtual {v0}, Lcom/windmill/sdk/WindMillAdRequest;->getLoadId()Ljava/lang/String;

    .line 90
    .line 91
    .line 92
    move-result-object v0

    .line 93
    invoke-virtual {p1, v0}, Lcom/czhj/sdk/common/mta/PointEntityBase;->setLoad_id(Ljava/lang/String;)V

    .line 94
    .line 95
    .line 96
    const-string v0, "1"

    .line 97
    .line 98
    invoke-virtual {p1, v0}, Lcom/windmill/sdk/point/PointEntityWind;->setIs_enter_sdk(Ljava/lang/String;)V

    .line 99
    .line 100
    .line 101
    invoke-virtual {p1}, Lcom/czhj/sdk/common/mta/PointEntitySuper;->getOptions()Ljava/util/Map;

    .line 102
    .line 103
    .line 104
    move-result-object v0

    .line 105
    iget-object v1, p0, Lcom/windmill/sdk/common/l$11;->a:Lcom/windmill/sdk/WindMillAdRequest;

    .line 106
    .line 107
    invoke-virtual {v1}, Lcom/windmill/sdk/WindMillAdRequest;->getOptions()Ljava/util/Map;

    .line 108
    .line 109
    .line 110
    move-result-object v1

    .line 111
    invoke-virtual {p1, v1}, Lcom/czhj/sdk/common/mta/PointEntitySuper;->toJsonString(Ljava/util/Map;)Ljava/lang/String;

    .line 112
    .line 113
    .line 114
    move-result-object v1

    .line 115
    const-string v2, "request_options"

    .line 116
    .line 117
    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 118
    .line 119
    .line 120
    iget-object v0, p0, Lcom/windmill/sdk/common/l$11;->b:Ljava/lang/String;

    .line 121
    .line 122
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 123
    .line 124
    .line 125
    move-result v0

    .line 126
    if-nez v0, :cond_0

    .line 127
    .line 128
    iget-object v0, p0, Lcom/windmill/sdk/common/l$11;->b:Ljava/lang/String;

    .line 129
    .line 130
    invoke-virtual {p1, v0}, Lcom/windmill/sdk/point/PointEntityWind;->setStrategy_stage(Ljava/lang/String;)V

    .line 131
    .line 132
    .line 133
    :cond_0
    iget-object v0, p0, Lcom/windmill/sdk/common/l$11;->a:Lcom/windmill/sdk/WindMillAdRequest;

    .line 134
    .line 135
    invoke-virtual {v0}, Lcom/windmill/sdk/WindMillAdRequest;->getAdType()I

    .line 136
    .line 137
    .line 138
    move-result v0

    .line 139
    const/4 v1, 0x5

    .line 140
    if-ne v0, v1, :cond_1

    .line 141
    .line 142
    iget-object v0, p0, Lcom/windmill/sdk/common/l$11;->a:Lcom/windmill/sdk/WindMillAdRequest;

    .line 143
    .line 144
    invoke-virtual {v0}, Lcom/windmill/sdk/WindMillAdRequest;->getAdCount()I

    .line 145
    .line 146
    .line 147
    move-result v0

    .line 148
    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 149
    .line 150
    .line 151
    move-result-object v0

    .line 152
    invoke-virtual {p1, v0}, Lcom/windmill/sdk/point/PointEntityWind;->setFeed_cnt(Ljava/lang/String;)V

    .line 153
    .line 154
    .line 155
    :cond_1
    :try_start_0
    invoke-static {}, Lcom/windmill/sdk/strategy/d;->a()Lcom/windmill/sdk/strategy/d;

    .line 156
    .line 157
    .line 158
    move-result-object v0

    .line 159
    invoke-virtual {v0}, Lcom/windmill/sdk/strategy/d;->b()Ljava/util/Map;

    .line 160
    .line 161
    .line 162
    move-result-object v0

    .line 163
    if-eqz v0, :cond_2

    .line 164
    .line 165
    invoke-static {}, Lcom/windmill/sdk/strategy/d;->a()Lcom/windmill/sdk/strategy/d;

    .line 166
    .line 167
    .line 168
    move-result-object v0

    .line 169
    invoke-virtual {v0}, Lcom/windmill/sdk/strategy/d;->b()Ljava/util/Map;

    .line 170
    .line 171
    .line 172
    move-result-object v0

    .line 173
    invoke-static {v0}, Lcom/czhj/sdk/common/json/JSONSerializer;->Serialize(Ljava/lang/Object;)Ljava/lang/String;

    .line 174
    .line 175
    .line 176
    move-result-object v0

    .line 177
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 178
    .line 179
    .line 180
    move-result v1

    .line 181
    if-nez v1, :cond_2

    .line 182
    .line 183
    invoke-virtual {p1, v0}, Lcom/windmill/sdk/point/PointEntityWind;->setCustom_info(Ljava/lang/String;)V

    .line 184
    .line 185
    .line 186
    :cond_2
    iget-object v0, p0, Lcom/windmill/sdk/common/l$11;->a:Lcom/windmill/sdk/WindMillAdRequest;

    .line 187
    .line 188
    invoke-virtual {v0}, Lcom/windmill/sdk/WindMillAdRequest;->getPlacementId()Ljava/lang/String;

    .line 189
    .line 190
    .line 191
    move-result-object v0

    .line 192
    iget-object v1, p0, Lcom/windmill/sdk/common/l$11;->c:Lcom/windmill/sdk/common/l;

    .line 193
    .line 194
    invoke-virtual {v1}, Lcom/windmill/sdk/common/l;->n()Lcom/windmill/sdk/strategy/s;

    .line 195
    .line 196
    .line 197
    move-result-object v1

    .line 198
    if-eqz v1, :cond_3

    .line 199
    .line 200
    invoke-virtual {v1}, Lcom/windmill/sdk/strategy/s;->n()Ljava/util/HashMap;

    .line 201
    .line 202
    .line 203
    move-result-object v0

    .line 204
    goto :goto_0

    .line 205
    :cond_3
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 206
    .line 207
    .line 208
    move-result v1

    .line 209
    if-nez v1, :cond_4

    .line 210
    .line 211
    invoke-static {}, Lcom/windmill/sdk/strategy/d;->a()Lcom/windmill/sdk/strategy/d;

    .line 212
    .line 213
    .line 214
    move-result-object v1

    .line 215
    invoke-virtual {v1, v0}, Lcom/windmill/sdk/strategy/d;->a(Ljava/lang/String;)Ljava/util/Map;

    .line 216
    .line 217
    .line 218
    move-result-object v1

    .line 219
    if-eqz v1, :cond_4

    .line 220
    .line 221
    invoke-static {}, Lcom/windmill/sdk/strategy/d;->a()Lcom/windmill/sdk/strategy/d;

    .line 222
    .line 223
    .line 224
    move-result-object v1

    .line 225
    invoke-virtual {v1, v0}, Lcom/windmill/sdk/strategy/d;->a(Ljava/lang/String;)Ljava/util/Map;

    .line 226
    .line 227
    .line 228
    move-result-object v0

    .line 229
    goto :goto_0

    .line 230
    :cond_4
    const/4 v0, 0x0

    .line 231
    :goto_0
    if-eqz v0, :cond_5

    .line 232
    .line 233
    invoke-static {v0}, Lcom/czhj/sdk/common/json/JSONSerializer;->Serialize(Ljava/lang/Object;)Ljava/lang/String;

    .line 234
    .line 235
    .line 236
    move-result-object v0

    .line 237
    invoke-virtual {p1, v0}, Lcom/windmill/sdk/point/PointEntityWind;->setAd_position_custom_info(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 238
    .line 239
    .line 240
    goto :goto_1

    .line 241
    :catch_0
    move-exception p1

    .line 242
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 243
    .line 244
    .line 245
    :cond_5
    :goto_1
    return-void
.end method
