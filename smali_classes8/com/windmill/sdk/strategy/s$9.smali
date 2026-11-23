.class Lcom/windmill/sdk/strategy/s$9;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/windmill/sdk/utils/m$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/windmill/sdk/strategy/s;->a(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/windmill/sdk/strategy/s;


# direct methods
.method constructor <init>(Lcom/windmill/sdk/strategy/s;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            "this$0"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/windmill/sdk/strategy/s$9;->a:Lcom/windmill/sdk/strategy/s;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
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
    if-eqz v0, :cond_7

    .line 4
    .line 5
    check-cast p1, Lcom/windmill/sdk/point/PointEntityWind;

    .line 6
    .line 7
    iget-object v0, p0, Lcom/windmill/sdk/strategy/s$9;->a:Lcom/windmill/sdk/strategy/s;

    .line 8
    .line 9
    invoke-static {v0}, Lcom/windmill/sdk/strategy/s;->a(Lcom/windmill/sdk/strategy/s;)Lcom/windmill/sdk/strategy/q;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    if-eqz v0, :cond_0

    .line 14
    .line 15
    iget-object v0, p0, Lcom/windmill/sdk/strategy/s$9;->a:Lcom/windmill/sdk/strategy/s;

    .line 16
    .line 17
    invoke-static {v0}, Lcom/windmill/sdk/strategy/s;->a(Lcom/windmill/sdk/strategy/s;)Lcom/windmill/sdk/strategy/q;

    .line 18
    .line 19
    .line 20
    move-result-object v0

    .line 21
    iget-object v0, v0, Lcom/windmill/sdk/strategy/q;->b:Ljava/lang/String;

    .line 22
    .line 23
    invoke-virtual {p1, v0}, Lcom/windmill/sdk/point/PointEntityWind;->setGroup_id(Ljava/lang/String;)V

    .line 24
    .line 25
    .line 26
    iget-object v0, p0, Lcom/windmill/sdk/strategy/s$9;->a:Lcom/windmill/sdk/strategy/s;

    .line 27
    .line 28
    invoke-static {v0}, Lcom/windmill/sdk/strategy/s;->a(Lcom/windmill/sdk/strategy/s;)Lcom/windmill/sdk/strategy/q;

    .line 29
    .line 30
    .line 31
    move-result-object v0

    .line 32
    iget v0, v0, Lcom/windmill/sdk/strategy/q;->d:I

    .line 33
    .line 34
    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 35
    .line 36
    .line 37
    move-result-object v0

    .line 38
    invoke-virtual {p1, v0}, Lcom/windmill/sdk/point/PointEntityWind;->setTraffic_weight(Ljava/lang/String;)V

    .line 39
    .line 40
    .line 41
    iget-object v0, p0, Lcom/windmill/sdk/strategy/s$9;->a:Lcom/windmill/sdk/strategy/s;

    .line 42
    .line 43
    invoke-static {v0}, Lcom/windmill/sdk/strategy/s;->a(Lcom/windmill/sdk/strategy/s;)Lcom/windmill/sdk/strategy/q;

    .line 44
    .line 45
    .line 46
    move-result-object v0

    .line 47
    iget-boolean v0, v0, Lcom/windmill/sdk/strategy/q;->e:Z

    .line 48
    .line 49
    if-eqz v0, :cond_0

    .line 50
    .line 51
    iget-object v0, p0, Lcom/windmill/sdk/strategy/s$9;->a:Lcom/windmill/sdk/strategy/s;

    .line 52
    .line 53
    invoke-static {v0}, Lcom/windmill/sdk/strategy/s;->a(Lcom/windmill/sdk/strategy/s;)Lcom/windmill/sdk/strategy/q;

    .line 54
    .line 55
    .line 56
    move-result-object v0

    .line 57
    iget v0, v0, Lcom/windmill/sdk/strategy/q;->c:I

    .line 58
    .line 59
    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 60
    .line 61
    .line 62
    move-result-object v0

    .line 63
    invoke-virtual {p1, v0}, Lcom/windmill/sdk/point/PointEntityWind;->setAb_test(Ljava/lang/String;)V

    .line 64
    .line 65
    .line 66
    :cond_0
    const-string v0, "1"

    .line 67
    .line 68
    invoke-virtual {p1, v0}, Lcom/windmill/sdk/point/PointEntityWind;->setIs_success(Ljava/lang/String;)V

    .line 69
    .line 70
    .line 71
    iget-object v0, p0, Lcom/windmill/sdk/strategy/s$9;->a:Lcom/windmill/sdk/strategy/s;

    .line 72
    .line 73
    invoke-static {v0}, Lcom/windmill/sdk/strategy/s;->j(Lcom/windmill/sdk/strategy/s;)Lcom/windmill/sdk/WindMillAdRequest;

    .line 74
    .line 75
    .line 76
    move-result-object v0

    .line 77
    invoke-virtual {v0}, Lcom/windmill/sdk/WindMillAdRequest;->getLoadId()Ljava/lang/String;

    .line 78
    .line 79
    .line 80
    move-result-object v0

    .line 81
    invoke-virtual {p1, v0}, Lcom/czhj/sdk/common/mta/PointEntityBase;->setLoad_id(Ljava/lang/String;)V

    .line 82
    .line 83
    .line 84
    iget-object v0, p0, Lcom/windmill/sdk/strategy/s$9;->a:Lcom/windmill/sdk/strategy/s;

    .line 85
    .line 86
    invoke-virtual {v0}, Lcom/windmill/sdk/strategy/s;->f()I

    .line 87
    .line 88
    .line 89
    move-result v0

    .line 90
    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 91
    .line 92
    .line 93
    move-result-object v0

    .line 94
    invoke-virtual {p1, v0}, Lcom/windmill/sdk/point/PointEntityWind;->setSdk_operation_bid_type(Ljava/lang/String;)V

    .line 95
    .line 96
    .line 97
    iget-object v0, p0, Lcom/windmill/sdk/strategy/s$9;->a:Lcom/windmill/sdk/strategy/s;

    .line 98
    .line 99
    invoke-static {v0}, Lcom/windmill/sdk/strategy/s;->h(Lcom/windmill/sdk/strategy/s;)Ljava/lang/String;

    .line 100
    .line 101
    .line 102
    move-result-object v0

    .line 103
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 104
    .line 105
    .line 106
    move-result v0

    .line 107
    if-nez v0, :cond_1

    .line 108
    .line 109
    iget-object v0, p0, Lcom/windmill/sdk/strategy/s$9;->a:Lcom/windmill/sdk/strategy/s;

    .line 110
    .line 111
    invoke-static {v0}, Lcom/windmill/sdk/strategy/s;->h(Lcom/windmill/sdk/strategy/s;)Ljava/lang/String;

    .line 112
    .line 113
    .line 114
    move-result-object v0

    .line 115
    invoke-virtual {p1, v0}, Lcom/windmill/sdk/point/PointEntityWind;->setStrategy_stage(Ljava/lang/String;)V

    .line 116
    .line 117
    .line 118
    :cond_1
    iget-object v0, p0, Lcom/windmill/sdk/strategy/s$9;->a:Lcom/windmill/sdk/strategy/s;

    .line 119
    .line 120
    invoke-static {v0}, Lcom/windmill/sdk/strategy/s;->a(Lcom/windmill/sdk/strategy/s;)Lcom/windmill/sdk/strategy/q;

    .line 121
    .line 122
    .line 123
    move-result-object v0

    .line 124
    if-eqz v0, :cond_3

    .line 125
    .line 126
    iget-object v0, p0, Lcom/windmill/sdk/strategy/s$9;->a:Lcom/windmill/sdk/strategy/s;

    .line 127
    .line 128
    invoke-static {v0}, Lcom/windmill/sdk/strategy/s;->a(Lcom/windmill/sdk/strategy/s;)Lcom/windmill/sdk/strategy/q;

    .line 129
    .line 130
    .line 131
    move-result-object v0

    .line 132
    iget-object v0, v0, Lcom/windmill/sdk/strategy/q;->n:Ljava/util/Map;

    .line 133
    .line 134
    if-eqz v0, :cond_3

    .line 135
    .line 136
    invoke-virtual {p1}, Lcom/czhj/sdk/common/mta/PointEntitySuper;->getOptions()Ljava/util/Map;

    .line 137
    .line 138
    .line 139
    move-result-object v0

    .line 140
    if-eqz v0, :cond_2

    .line 141
    .line 142
    iget-object v1, p0, Lcom/windmill/sdk/strategy/s$9;->a:Lcom/windmill/sdk/strategy/s;

    .line 143
    .line 144
    invoke-static {v1}, Lcom/windmill/sdk/strategy/s;->a(Lcom/windmill/sdk/strategy/s;)Lcom/windmill/sdk/strategy/q;

    .line 145
    .line 146
    .line 147
    move-result-object v1

    .line 148
    iget-object v1, v1, Lcom/windmill/sdk/strategy/q;->n:Ljava/util/Map;

    .line 149
    .line 150
    invoke-interface {v0, v1}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 151
    .line 152
    .line 153
    invoke-virtual {p1, v0}, Lcom/czhj/sdk/common/mta/PointEntitySuper;->setOptions(Ljava/util/Map;)V

    .line 154
    .line 155
    .line 156
    goto :goto_0

    .line 157
    :cond_2
    iget-object v0, p0, Lcom/windmill/sdk/strategy/s$9;->a:Lcom/windmill/sdk/strategy/s;

    .line 158
    .line 159
    invoke-static {v0}, Lcom/windmill/sdk/strategy/s;->a(Lcom/windmill/sdk/strategy/s;)Lcom/windmill/sdk/strategy/q;

    .line 160
    .line 161
    .line 162
    move-result-object v0

    .line 163
    iget-object v0, v0, Lcom/windmill/sdk/strategy/q;->n:Ljava/util/Map;

    .line 164
    .line 165
    invoke-virtual {p1, v0}, Lcom/czhj/sdk/common/mta/PointEntitySuper;->setOptions(Ljava/util/Map;)V

    .line 166
    .line 167
    .line 168
    :cond_3
    :goto_0
    :try_start_0
    invoke-static {}, Lcom/windmill/sdk/strategy/d;->a()Lcom/windmill/sdk/strategy/d;

    .line 169
    .line 170
    .line 171
    move-result-object v0

    .line 172
    invoke-virtual {v0}, Lcom/windmill/sdk/strategy/d;->b()Ljava/util/Map;

    .line 173
    .line 174
    .line 175
    move-result-object v0

    .line 176
    if-eqz v0, :cond_4

    .line 177
    .line 178
    invoke-static {}, Lcom/windmill/sdk/strategy/d;->a()Lcom/windmill/sdk/strategy/d;

    .line 179
    .line 180
    .line 181
    move-result-object v0

    .line 182
    invoke-virtual {v0}, Lcom/windmill/sdk/strategy/d;->b()Ljava/util/Map;

    .line 183
    .line 184
    .line 185
    move-result-object v0

    .line 186
    invoke-static {v0}, Lcom/czhj/sdk/common/json/JSONSerializer;->Serialize(Ljava/lang/Object;)Ljava/lang/String;

    .line 187
    .line 188
    .line 189
    move-result-object v0

    .line 190
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 191
    .line 192
    .line 193
    move-result v1

    .line 194
    if-nez v1, :cond_4

    .line 195
    .line 196
    invoke-virtual {p1, v0}, Lcom/windmill/sdk/point/PointEntityWind;->setCustom_info(Ljava/lang/String;)V

    .line 197
    .line 198
    .line 199
    :cond_4
    iget-object v0, p0, Lcom/windmill/sdk/strategy/s$9;->a:Lcom/windmill/sdk/strategy/s;

    .line 200
    .line 201
    invoke-static {v0}, Lcom/windmill/sdk/strategy/s;->j(Lcom/windmill/sdk/strategy/s;)Lcom/windmill/sdk/WindMillAdRequest;

    .line 202
    .line 203
    .line 204
    move-result-object v0

    .line 205
    invoke-virtual {v0}, Lcom/windmill/sdk/WindMillAdRequest;->getPlacementId()Ljava/lang/String;

    .line 206
    .line 207
    .line 208
    move-result-object v0

    .line 209
    iget-object v1, p0, Lcom/windmill/sdk/strategy/s$9;->a:Lcom/windmill/sdk/strategy/s;

    .line 210
    .line 211
    iget-object v1, v1, Lcom/windmill/sdk/strategy/s;->c:Ljava/util/HashMap;

    .line 212
    .line 213
    invoke-virtual {v1}, Ljava/util/HashMap;->isEmpty()Z

    .line 214
    .line 215
    .line 216
    move-result v1

    .line 217
    if-nez v1, :cond_5

    .line 218
    .line 219
    iget-object v0, p0, Lcom/windmill/sdk/strategy/s$9;->a:Lcom/windmill/sdk/strategy/s;

    .line 220
    .line 221
    iget-object v0, v0, Lcom/windmill/sdk/strategy/s;->c:Ljava/util/HashMap;

    .line 222
    .line 223
    goto :goto_1

    .line 224
    :cond_5
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 225
    .line 226
    .line 227
    move-result v1

    .line 228
    if-nez v1, :cond_6

    .line 229
    .line 230
    invoke-static {}, Lcom/windmill/sdk/strategy/d;->a()Lcom/windmill/sdk/strategy/d;

    .line 231
    .line 232
    .line 233
    move-result-object v1

    .line 234
    invoke-virtual {v1, v0}, Lcom/windmill/sdk/strategy/d;->a(Ljava/lang/String;)Ljava/util/Map;

    .line 235
    .line 236
    .line 237
    move-result-object v1

    .line 238
    if-eqz v1, :cond_6

    .line 239
    .line 240
    invoke-static {}, Lcom/windmill/sdk/strategy/d;->a()Lcom/windmill/sdk/strategy/d;

    .line 241
    .line 242
    .line 243
    move-result-object v1

    .line 244
    invoke-virtual {v1, v0}, Lcom/windmill/sdk/strategy/d;->a(Ljava/lang/String;)Ljava/util/Map;

    .line 245
    .line 246
    .line 247
    move-result-object v0

    .line 248
    goto :goto_1

    .line 249
    :cond_6
    const/4 v0, 0x0

    .line 250
    :goto_1
    if-eqz v0, :cond_7

    .line 251
    .line 252
    invoke-static {v0}, Lcom/czhj/sdk/common/json/JSONSerializer;->Serialize(Ljava/lang/Object;)Ljava/lang/String;

    .line 253
    .line 254
    .line 255
    move-result-object v0

    .line 256
    invoke-virtual {p1, v0}, Lcom/windmill/sdk/point/PointEntityWind;->setAd_position_custom_info(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 257
    .line 258
    .line 259
    goto :goto_2

    .line 260
    :catch_0
    move-exception p1

    .line 261
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 262
    .line 263
    .line 264
    :cond_7
    :goto_2
    return-void
.end method
