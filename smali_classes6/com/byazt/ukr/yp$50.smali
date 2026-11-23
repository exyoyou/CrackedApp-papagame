.class public Lcom/byazt/ukr/yp$50;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/byazt/ee/c;


# annotations
.annotation runtime Lcom/byazt/zqa/c;
    c = {
        0x0,
        0x1,
        0x439,
        0x48e
    }
.end annotation

.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/byazt/ukr/yp;->c(Lcom/byazt/ete/ic;FFFFLandroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field public final synthetic a:Landroid/view/View;

.field public final synthetic c:Lcom/byazt/ete/ic;

.field public final synthetic n:F

.field public final synthetic sp:Lcom/byazt/ukr/yp;

.field public final synthetic tt:F

.field public final synthetic uj:F

.field public final synthetic ve:F


# direct methods
.method public constructor <init>(Lcom/byazt/ukr/yp;Lcom/byazt/ete/ic;FFFFLandroid/view/View;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/byazt/ukr/yp$50;->sp:Lcom/byazt/ukr/yp;

    .line 2
    .line 3
    iput-object p2, p0, Lcom/byazt/ukr/yp$50;->c:Lcom/byazt/ete/ic;

    .line 4
    .line 5
    iput p3, p0, Lcom/byazt/ukr/yp$50;->tt:F

    .line 6
    .line 7
    iput p4, p0, Lcom/byazt/ukr/yp$50;->ve:F

    .line 8
    .line 9
    iput p5, p0, Lcom/byazt/ukr/yp$50;->uj:F

    .line 10
    .line 11
    iput p6, p0, Lcom/byazt/ukr/yp$50;->n:F

    .line 12
    .line 13
    iput-object p7, p0, Lcom/byazt/ukr/yp$50;->a:Landroid/view/View;

    .line 14
    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    .line 17
    .line 18
    return-void
.end method


# virtual methods
.method public c()Lcom/byazt/qal/c;
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1
    invoke-static {}, Lcom/byazt/qal/tt;->tt()Lcom/byazt/qal/tt;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    const-string v1, "video_size_gap"

    .line 6
    .line 7
    invoke-virtual {v0, v1}, Lcom/byazt/qal/tt;->c(Ljava/lang/String;)Lcom/byazt/qal/tt;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    iget-object v1, p0, Lcom/byazt/ukr/yp$50;->c:Lcom/byazt/ete/ic;

    .line 12
    .line 13
    if-eqz v1, :cond_0

    .line 14
    .line 15
    invoke-virtual {v1}, Lcom/byazt/ete/ic;->qy()Ljava/lang/String;

    .line 16
    .line 17
    .line 18
    move-result-object v1

    .line 19
    invoke-virtual {v0, v1}, Lcom/byazt/qal/tt;->a(Ljava/lang/String;)Lcom/byazt/qal/tt;

    .line 20
    .line 21
    .line 22
    :cond_0
    new-instance v1, Lorg/json/JSONObject;

    .line 23
    .line 24
    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    .line 25
    .line 26
    .line 27
    iget-object v2, p0, Lcom/byazt/ukr/yp$50;->c:Lcom/byazt/ete/ic;

    .line 28
    .line 29
    invoke-static {v1, v2}, Lcom/byazt/ic/c;->c(Lorg/json/JSONObject;Lcom/byazt/ete/ic;)V

    .line 30
    .line 31
    .line 32
    iget-object v2, p0, Lcom/byazt/ukr/yp$50;->c:Lcom/byazt/ete/ic;

    .line 33
    .line 34
    const/4 v3, 0x0

    .line 35
    if-eqz v2, :cond_1

    .line 36
    .line 37
    invoke-virtual {v2}, Lcom/byazt/ete/ic;->id()I

    .line 38
    .line 39
    .line 40
    move-result v2

    .line 41
    goto :goto_0

    .line 42
    :cond_1
    const/4 v2, 0x0

    .line 43
    :goto_0
    const-string v4, "image_mode"

    .line 44
    .line 45
    invoke-virtual {v1, v4, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 46
    .line 47
    .line 48
    iget-object v2, p0, Lcom/byazt/ukr/yp$50;->c:Lcom/byazt/ete/ic;

    .line 49
    .line 50
    if-eqz v2, :cond_2

    .line 51
    .line 52
    invoke-static {v2}, Lcom/byazt/aas/nb;->sl(Lcom/byazt/ete/ic;)I

    .line 53
    .line 54
    .line 55
    move-result v2

    .line 56
    goto :goto_1

    .line 57
    :cond_2
    const/4 v2, 0x0

    .line 58
    :goto_1
    const-string v4, "slot_type"

    .line 59
    .line 60
    invoke-virtual {v1, v4, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 61
    .line 62
    .line 63
    iget v2, p0, Lcom/byazt/ukr/yp$50;->tt:F

    .line 64
    .line 65
    float-to-double v4, v2

    .line 66
    const-string v2, "resolution_w"

    .line 67
    .line 68
    invoke-virtual {v1, v2, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;D)Lorg/json/JSONObject;

    .line 69
    .line 70
    .line 71
    iget v2, p0, Lcom/byazt/ukr/yp$50;->ve:F

    .line 72
    .line 73
    float-to-double v4, v2

    .line 74
    const-string v2, "resolution_h"

    .line 75
    .line 76
    invoke-virtual {v1, v2, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;D)Lorg/json/JSONObject;

    .line 77
    .line 78
    .line 79
    iget v2, p0, Lcom/byazt/ukr/yp$50;->uj:F

    .line 80
    .line 81
    float-to-double v4, v2

    .line 82
    const-string v2, "container_w"

    .line 83
    .line 84
    invoke-virtual {v1, v2, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;D)Lorg/json/JSONObject;

    .line 85
    .line 86
    .line 87
    iget v2, p0, Lcom/byazt/ukr/yp$50;->n:F

    .line 88
    .line 89
    float-to-double v4, v2

    .line 90
    const-string v2, "container_h"

    .line 91
    .line 92
    invoke-virtual {v1, v2, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;D)Lorg/json/JSONObject;

    .line 93
    .line 94
    .line 95
    iget v2, p0, Lcom/byazt/ukr/yp$50;->tt:F

    .line 96
    .line 97
    const/high16 v4, -0x40800000    # -1.0f

    .line 98
    .line 99
    const/4 v5, 0x0

    .line 100
    cmpl-float v6, v2, v5

    .line 101
    .line 102
    if-eqz v6, :cond_3

    .line 103
    .line 104
    iget v6, p0, Lcom/byazt/ukr/yp$50;->ve:F

    .line 105
    .line 106
    cmpl-float v7, v6, v5

    .line 107
    .line 108
    if-eqz v7, :cond_3

    .line 109
    .line 110
    iget v7, p0, Lcom/byazt/ukr/yp$50;->uj:F

    .line 111
    .line 112
    cmpl-float v8, v7, v5

    .line 113
    .line 114
    if-eqz v8, :cond_3

    .line 115
    .line 116
    iget v8, p0, Lcom/byazt/ukr/yp$50;->n:F

    .line 117
    .line 118
    cmpl-float v9, v8, v5

    .line 119
    .line 120
    if-eqz v9, :cond_3

    .line 121
    .line 122
    div-float/2addr v2, v6

    .line 123
    div-float/2addr v7, v8

    .line 124
    sub-float/2addr v7, v2

    .line 125
    invoke-static {v7}, Ljava/lang/Math;->abs(F)F

    .line 126
    .line 127
    .line 128
    move-result v2

    .line 129
    goto :goto_2

    .line 130
    :cond_3
    const/high16 v2, -0x40800000    # -1.0f

    .line 131
    .line 132
    :goto_2
    const-string v6, "size_gap_value"

    .line 133
    .line 134
    float-to-double v7, v2

    .line 135
    invoke-virtual {v1, v6, v7, v8}, Lorg/json/JSONObject;->put(Ljava/lang/String;D)Lorg/json/JSONObject;

    .line 136
    .line 137
    .line 138
    iget-object v2, p0, Lcom/byazt/ukr/yp$50;->a:Landroid/view/View;

    .line 139
    .line 140
    if-eqz v2, :cond_4

    .line 141
    .line 142
    invoke-virtual {v2}, Landroid/view/View;->getWidth()I

    .line 143
    .line 144
    .line 145
    move-result v2

    .line 146
    int-to-float v2, v2

    .line 147
    goto :goto_3

    .line 148
    :cond_4
    const/4 v2, 0x0

    .line 149
    :goto_3
    iget-object v6, p0, Lcom/byazt/ukr/yp$50;->a:Landroid/view/View;

    .line 150
    .line 151
    if-eqz v6, :cond_5

    .line 152
    .line 153
    invoke-virtual {v6}, Landroid/view/View;->getHeight()I

    .line 154
    .line 155
    .line 156
    move-result v6

    .line 157
    int-to-float v6, v6

    .line 158
    goto :goto_4

    .line 159
    :cond_5
    const/4 v6, 0x0

    .line 160
    :goto_4
    const-string v7, "dev_container_w"

    .line 161
    .line 162
    float-to-double v8, v2

    .line 163
    invoke-virtual {v1, v7, v8, v9}, Lorg/json/JSONObject;->put(Ljava/lang/String;D)Lorg/json/JSONObject;

    .line 164
    .line 165
    .line 166
    const-string v7, "dev_container_h"

    .line 167
    .line 168
    float-to-double v8, v6

    .line 169
    invoke-virtual {v1, v7, v8, v9}, Lorg/json/JSONObject;->put(Ljava/lang/String;D)Lorg/json/JSONObject;

    .line 170
    .line 171
    .line 172
    iget v7, p0, Lcom/byazt/ukr/yp$50;->tt:F

    .line 173
    .line 174
    cmpl-float v8, v7, v5

    .line 175
    .line 176
    if-eqz v8, :cond_6

    .line 177
    .line 178
    iget v8, p0, Lcom/byazt/ukr/yp$50;->ve:F

    .line 179
    .line 180
    cmpl-float v9, v8, v5

    .line 181
    .line 182
    if-eqz v9, :cond_6

    .line 183
    .line 184
    cmpl-float v9, v2, v5

    .line 185
    .line 186
    if-eqz v9, :cond_6

    .line 187
    .line 188
    cmpl-float v5, v6, v5

    .line 189
    .line 190
    if-eqz v5, :cond_6

    .line 191
    .line 192
    div-float/2addr v7, v8

    .line 193
    div-float/2addr v2, v6

    .line 194
    sub-float/2addr v2, v7

    .line 195
    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    .line 196
    .line 197
    .line 198
    move-result v4

    .line 199
    :cond_6
    const-string v2, "dev_size_gap_value"

    .line 200
    .line 201
    float-to-double v4, v4

    .line 202
    invoke-virtual {v1, v2, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;D)Lorg/json/JSONObject;

    .line 203
    .line 204
    .line 205
    const-string v2, "gap_gaosi_fill"

    .line 206
    .line 207
    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 208
    .line 209
    .line 210
    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    .line 211
    .line 212
    .line 213
    move-result-object v1

    .line 214
    invoke-virtual {v0, v1}, Lcom/byazt/qal/tt;->tt(Ljava/lang/String;)Lcom/byazt/qal/tt;

    .line 215
    .line 216
    .line 217
    return-object v0
.end method
