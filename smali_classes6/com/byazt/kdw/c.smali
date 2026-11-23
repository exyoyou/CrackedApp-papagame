.class public Lcom/byazt/kdw/c;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Lcom/byazt/zqa/c;
    c = {
        0x0,
        0x1,
        0x6ae,
        0x14
    }
.end annotation


# static fields
.field public static final c:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .locals 7

    .line 1
    new-instance v0, Ljava/util/HashSet;

    .line 2
    .line 3
    const-string v1, "interactiveFinish"

    .line 4
    .line 5
    const-string v2, "nextVideoCancel"

    .line 6
    .line 7
    const-string v3, "haptic"

    .line 8
    .line 9
    const-string v4, "closeWidget"

    .line 10
    .line 11
    const-string v5, "dismiss"

    .line 12
    .line 13
    const-string v6, "openNewAdPage"

    .line 14
    .line 15
    filled-new-array/range {v1 .. v6}, [Ljava/lang/String;

    .line 16
    .line 17
    .line 18
    move-result-object v1

    .line 19
    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    .line 20
    .line 21
    .line 22
    move-result-object v1

    .line 23
    invoke-direct {v0, v1}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    .line 24
    .line 25
    .line 26
    sput-object v0, Lcom/byazt/kdw/c;->c:Ljava/util/HashSet;

    .line 27
    .line 28
    return-void
.end method

.method public static c(Lcom/byazt/ouz/sl;Lcom/byazt/kdw/tt;Lcom/byazt/ete/ic;Landroid/content/Context;Ljava/lang/String;Lcom/byazt/pm/a$c;Lcom/byazt/sy/sp;Lcom/byazt/xj/ve;)V
    .locals 3

    .line 1
    if-nez p5, :cond_0

    .line 2
    .line 3
    return-void

    .line 4
    :cond_0
    invoke-virtual {p5}, Lcom/byazt/pm/a$c;->ve()Ljava/util/Map;

    .line 5
    .line 6
    .line 7
    move-result-object p5

    .line 8
    invoke-virtual {p4}, Ljava/lang/String;->hashCode()I

    .line 9
    .line 10
    .line 11
    invoke-virtual {p4}, Ljava/lang/String;->hashCode()I

    .line 12
    .line 13
    .line 14
    move-result v0

    .line 15
    const/4 v1, 0x0

    .line 16
    const/4 v2, -0x1

    .line 17
    sparse-switch v0, :sswitch_data_0

    .line 18
    .line 19
    .line 20
    goto :goto_0

    .line 21
    :sswitch_0
    const-string v0, "dismiss"

    .line 22
    .line 23
    invoke-virtual {p4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 24
    .line 25
    .line 26
    move-result p4

    .line 27
    if-nez p4, :cond_1

    .line 28
    .line 29
    goto :goto_0

    .line 30
    :cond_1
    const/4 v2, 0x5

    .line 31
    goto :goto_0

    .line 32
    :sswitch_1
    const-string v0, "interactiveFinish"

    .line 33
    .line 34
    invoke-virtual {p4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 35
    .line 36
    .line 37
    move-result p4

    .line 38
    if-nez p4, :cond_2

    .line 39
    .line 40
    goto :goto_0

    .line 41
    :cond_2
    const/4 v2, 0x4

    .line 42
    goto :goto_0

    .line 43
    :sswitch_2
    const-string v0, "closeWidget"

    .line 44
    .line 45
    invoke-virtual {p4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 46
    .line 47
    .line 48
    move-result p4

    .line 49
    if-nez p4, :cond_3

    .line 50
    .line 51
    goto :goto_0

    .line 52
    :cond_3
    const/4 v2, 0x3

    .line 53
    goto :goto_0

    .line 54
    :sswitch_3
    const-string v0, "haptic"

    .line 55
    .line 56
    invoke-virtual {p4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 57
    .line 58
    .line 59
    move-result p4

    .line 60
    if-nez p4, :cond_4

    .line 61
    .line 62
    goto :goto_0

    .line 63
    :cond_4
    const/4 v2, 0x2

    .line 64
    goto :goto_0

    .line 65
    :sswitch_4
    const-string v0, "openNewAdPage"

    .line 66
    .line 67
    invoke-virtual {p4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 68
    .line 69
    .line 70
    move-result p4

    .line 71
    if-nez p4, :cond_5

    .line 72
    .line 73
    goto :goto_0

    .line 74
    :cond_5
    const/4 v2, 0x1

    .line 75
    goto :goto_0

    .line 76
    :sswitch_5
    const-string v0, "nextVideoCancel"

    .line 77
    .line 78
    invoke-virtual {p4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 79
    .line 80
    .line 81
    move-result p4

    .line 82
    if-nez p4, :cond_6

    .line 83
    .line 84
    goto :goto_0

    .line 85
    :cond_6
    const/4 v2, 0x0

    .line 86
    :goto_0
    packed-switch v2, :pswitch_data_0

    .line 87
    .line 88
    .line 89
    goto/16 :goto_4

    .line 90
    .line 91
    :pswitch_0
    if-eqz p7, :cond_b

    .line 92
    .line 93
    const/16 p0, 0x8

    .line 94
    .line 95
    invoke-virtual {p7, p0}, Lcom/byazt/xj/ve;->tt(I)V

    .line 96
    .line 97
    .line 98
    return-void

    .line 99
    :pswitch_1
    if-eqz p5, :cond_7

    .line 100
    .line 101
    :try_start_0
    const-string p1, "reduce_duration"

    .line 102
    .line 103
    invoke-interface {p5, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 104
    .line 105
    .line 106
    move-result-object p1

    .line 107
    instance-of p3, p1, Ljava/lang/Integer;

    .line 108
    .line 109
    if-eqz p3, :cond_7

    .line 110
    .line 111
    check-cast p1, Ljava/lang/Integer;

    .line 112
    .line 113
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    .line 114
    .line 115
    .line 116
    move-result p1

    .line 117
    invoke-static {p2, p1}, Lcom/byazt/qx/gu;->c(Lcom/byazt/ete/ic;I)I

    .line 118
    .line 119
    .line 120
    move-result p1
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 121
    move v1, p1

    .line 122
    goto :goto_1

    .line 123
    :catch_0
    nop

    .line 124
    :cond_7
    :goto_1
    if-eqz p0, :cond_b

    .line 125
    .line 126
    invoke-interface {p0, v1}, Lcom/byazt/ouz/sl;->tt(I)V

    .line 127
    .line 128
    .line 129
    return-void

    .line 130
    :pswitch_2
    if-eqz p6, :cond_b

    .line 131
    .line 132
    invoke-interface {p6}, Lcom/byazt/sy/sp;->n()V

    .line 133
    .line 134
    .line 135
    return-void

    .line 136
    :pswitch_3
    if-eqz p5, :cond_b

    .line 137
    .line 138
    const-string p0, "params"

    .line 139
    .line 140
    invoke-interface {p5, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 141
    .line 142
    .line 143
    move-result-object p0

    .line 144
    instance-of p1, p0, Ljava/lang/String;

    .line 145
    .line 146
    if-eqz p1, :cond_8

    .line 147
    .line 148
    move-object p1, p0

    .line 149
    check-cast p1, Ljava/lang/String;

    .line 150
    .line 151
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 152
    .line 153
    .line 154
    move-result p1

    .line 155
    if-nez p1, :cond_8

    .line 156
    .line 157
    :try_start_1
    new-instance p1, Lorg/json/JSONObject;

    .line 158
    .line 159
    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 160
    .line 161
    .line 162
    move-result-object p0

    .line 163
    invoke-direct {p1, p0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 164
    .line 165
    .line 166
    invoke-static {p1, p3, p2}, Lcom/byazt/fx/ve;->c(Lorg/json/JSONObject;Landroid/content/Context;Lcom/byazt/ete/ic;)V
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_1

    .line 167
    .line 168
    .line 169
    :catch_1
    :cond_8
    return-void

    .line 170
    :pswitch_4
    if-eqz p5, :cond_a

    .line 171
    .line 172
    const-string p0, "second_page_type"

    .line 173
    .line 174
    invoke-interface {p5, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 175
    .line 176
    .line 177
    move-result-object p0

    .line 178
    if-eqz p0, :cond_9

    .line 179
    .line 180
    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 181
    .line 182
    .line 183
    move-result-object p0

    .line 184
    goto :goto_2

    .line 185
    :cond_9
    const-string p0, ""

    .line 186
    .line 187
    :goto_2
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 188
    .line 189
    .line 190
    move-result p1

    .line 191
    if-nez p1, :cond_a

    .line 192
    .line 193
    :try_start_2
    invoke-static {p0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 194
    .line 195
    .line 196
    move-result v1
    :try_end_2
    .catch Ljava/lang/NumberFormatException; {:try_start_2 .. :try_end_2} :catch_2

    .line 197
    goto :goto_3

    .line 198
    :catch_2
    nop

    .line 199
    :cond_a
    :goto_3
    if-eqz p6, :cond_b

    .line 200
    .line 201
    invoke-interface {p6, v1}, Lcom/byazt/sy/sp;->c(I)V

    .line 202
    .line 203
    .line 204
    goto :goto_4

    .line 205
    :pswitch_5
    if-eqz p1, :cond_b

    .line 206
    .line 207
    invoke-interface {p1}, Lcom/byazt/kdw/tt;->c()V

    .line 208
    .line 209
    .line 210
    :cond_b
    :goto_4
    return-void

    :sswitch_data_0
    .sparse-switch
        -0x7815821e -> :sswitch_5
        -0x4d669c18 -> :sswitch_4
        -0x48fc6d69 -> :sswitch_3
        0x1081ca5c -> :sswitch_2
        0x4ac71615 -> :sswitch_1
        0x63a3b28a -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
