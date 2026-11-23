.class Lcom/beizi/fusion/work/splash/a$5;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/beizi/fusion/work/splash/a;->aU()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:[F

.field final synthetic b:Landroid/widget/ImageView;

.field final synthetic c:[F

.field final synthetic d:F

.field final synthetic e:F

.field final synthetic f:Lcom/beizi/fusion/work/splash/a;


# direct methods
.method constructor <init>(Lcom/beizi/fusion/work/splash/a;[FLandroid/widget/ImageView;[FFF)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/beizi/fusion/work/splash/a$5;->f:Lcom/beizi/fusion/work/splash/a;

    .line 2
    .line 3
    iput-object p2, p0, Lcom/beizi/fusion/work/splash/a$5;->a:[F

    .line 4
    .line 5
    iput-object p3, p0, Lcom/beizi/fusion/work/splash/a$5;->b:Landroid/widget/ImageView;

    .line 6
    .line 7
    iput-object p4, p0, Lcom/beizi/fusion/work/splash/a$5;->c:[F

    .line 8
    .line 9
    iput p5, p0, Lcom/beizi/fusion/work/splash/a$5;->d:F

    .line 10
    .line 11
    iput p6, p0, Lcom/beizi/fusion/work/splash/a$5;->e:F

    .line 12
    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 14
    .line 15
    .line 16
    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 17

    .line 1
    move-object/from16 v1, p0

    .line 2
    .line 3
    const-string v0, ".0"

    .line 4
    .line 5
    :try_start_0
    iget-object v2, v1, Lcom/beizi/fusion/work/splash/a$5;->a:[F

    .line 6
    .line 7
    const/4 v3, 0x0

    .line 8
    aget v2, v2, v3

    .line 9
    .line 10
    iget-object v4, v1, Lcom/beizi/fusion/work/splash/a$5;->b:Landroid/widget/ImageView;

    .line 11
    .line 12
    invoke-virtual {v4}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 13
    .line 14
    .line 15
    move-result-object v4

    .line 16
    iget v4, v4, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 17
    .line 18
    int-to-float v4, v4

    .line 19
    div-float/2addr v2, v4

    .line 20
    iget-object v4, v1, Lcom/beizi/fusion/work/splash/a$5;->c:[F

    .line 21
    .line 22
    aget v3, v4, v3

    .line 23
    .line 24
    iget-object v4, v1, Lcom/beizi/fusion/work/splash/a$5;->b:Landroid/widget/ImageView;

    .line 25
    .line 26
    invoke-virtual {v4}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 27
    .line 28
    .line 29
    move-result-object v4

    .line 30
    iget v4, v4, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 31
    .line 32
    int-to-float v4, v4

    .line 33
    div-float/2addr v3, v4

    .line 34
    iget-object v4, v1, Lcom/beizi/fusion/work/splash/a$5;->f:Lcom/beizi/fusion/work/splash/a;

    .line 35
    .line 36
    invoke-static {v4}, Lcom/beizi/fusion/work/splash/a;->aQ(Lcom/beizi/fusion/work/splash/a;)Landroid/view/View;

    .line 37
    .line 38
    .line 39
    move-result-object v4

    .line 40
    if-eqz v4, :cond_0

    .line 41
    .line 42
    iget-object v4, v1, Lcom/beizi/fusion/work/splash/a$5;->f:Lcom/beizi/fusion/work/splash/a;

    .line 43
    .line 44
    invoke-static {v4}, Lcom/beizi/fusion/work/splash/a;->aQ(Lcom/beizi/fusion/work/splash/a;)Landroid/view/View;

    .line 45
    .line 46
    .line 47
    move-result-object v4

    .line 48
    invoke-virtual {v4}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 49
    .line 50
    .line 51
    move-result-object v4

    .line 52
    iget v4, v4, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 53
    .line 54
    iget-object v5, v1, Lcom/beizi/fusion/work/splash/a$5;->f:Lcom/beizi/fusion/work/splash/a;

    .line 55
    .line 56
    invoke-static {v5}, Lcom/beizi/fusion/work/splash/a;->aQ(Lcom/beizi/fusion/work/splash/a;)Landroid/view/View;

    .line 57
    .line 58
    .line 59
    move-result-object v5

    .line 60
    invoke-virtual {v5}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 61
    .line 62
    .line 63
    move-result-object v5

    .line 64
    iget v5, v5, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 65
    .line 66
    iget-object v6, v1, Lcom/beizi/fusion/work/splash/a$5;->f:Lcom/beizi/fusion/work/splash/a;

    .line 67
    .line 68
    invoke-static {v6}, Lcom/beizi/fusion/work/splash/a;->aQ(Lcom/beizi/fusion/work/splash/a;)Landroid/view/View;

    .line 69
    .line 70
    .line 71
    move-result-object v6

    .line 72
    invoke-virtual {v6}, Landroid/view/View;->getLeft()I

    .line 73
    .line 74
    .line 75
    move-result v6

    .line 76
    iget-object v7, v1, Lcom/beizi/fusion/work/splash/a$5;->f:Lcom/beizi/fusion/work/splash/a;

    .line 77
    .line 78
    invoke-static {v7}, Lcom/beizi/fusion/work/splash/a;->aQ(Lcom/beizi/fusion/work/splash/a;)Landroid/view/View;

    .line 79
    .line 80
    .line 81
    move-result-object v7

    .line 82
    invoke-virtual {v7}, Landroid/view/View;->getTop()I

    .line 83
    .line 84
    .line 85
    move-result v7

    .line 86
    goto :goto_0

    .line 87
    :cond_0
    iget v4, v1, Lcom/beizi/fusion/work/splash/a$5;->d:F

    .line 88
    .line 89
    float-to-double v4, v4

    .line 90
    const-wide v6, 0x3feccccccccccccdL    # 0.9

    .line 91
    .line 92
    .line 93
    .line 94
    .line 95
    mul-double v4, v4, v6

    .line 96
    .line 97
    double-to-int v4, v4

    .line 98
    iget-object v5, v1, Lcom/beizi/fusion/work/splash/a$5;->f:Lcom/beizi/fusion/work/splash/a;

    .line 99
    .line 100
    invoke-static {v5}, Lcom/beizi/fusion/work/splash/a;->K(Lcom/beizi/fusion/work/splash/a;)Landroid/content/Context;

    .line 101
    .line 102
    .line 103
    move-result-object v5

    .line 104
    const/high16 v6, 0x42820000    # 65.0f

    .line 105
    .line 106
    invoke-static {v5, v6}, Lcom/beizi/fusion/tool/au;->a(Landroid/content/Context;F)I

    .line 107
    .line 108
    .line 109
    move-result v5

    .line 110
    iget v6, v1, Lcom/beizi/fusion/work/splash/a$5;->d:F

    .line 111
    .line 112
    float-to-double v6, v6

    .line 113
    const-wide v8, 0x3fb999999999999aL    # 0.1

    .line 114
    .line 115
    .line 116
    .line 117
    .line 118
    mul-double v6, v6, v8

    .line 119
    .line 120
    const-wide/high16 v8, 0x4000000000000000L    # 2.0

    .line 121
    .line 122
    div-double/2addr v6, v8

    .line 123
    double-to-int v6, v6

    .line 124
    iget v7, v1, Lcom/beizi/fusion/work/splash/a$5;->e:F

    .line 125
    .line 126
    float-to-double v7, v7

    .line 127
    const-wide v9, 0x3fe999999999999aL    # 0.8

    .line 128
    .line 129
    .line 130
    .line 131
    .line 132
    mul-double v7, v7, v9

    .line 133
    .line 134
    double-to-int v7, v7

    .line 135
    :goto_0
    int-to-float v4, v4

    .line 136
    mul-float v4, v4, v2

    .line 137
    .line 138
    float-to-int v2, v4

    .line 139
    int-to-float v4, v5

    .line 140
    mul-float v4, v4, v3

    .line 141
    .line 142
    float-to-int v3, v4

    .line 143
    add-int/2addr v6, v2

    .line 144
    add-int/2addr v7, v3

    .line 145
    iget-object v8, v1, Lcom/beizi/fusion/work/splash/a$5;->f:Lcom/beizi/fusion/work/splash/a;

    .line 146
    .line 147
    new-instance v4, Ljava/lang/StringBuilder;

    .line 148
    .line 149
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 150
    .line 151
    .line 152
    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 153
    .line 154
    .line 155
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 156
    .line 157
    .line 158
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 159
    .line 160
    .line 161
    move-result-object v9

    .line 162
    new-instance v4, Ljava/lang/StringBuilder;

    .line 163
    .line 164
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 165
    .line 166
    .line 167
    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 168
    .line 169
    .line 170
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 171
    .line 172
    .line 173
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 174
    .line 175
    .line 176
    move-result-object v10

    .line 177
    new-instance v4, Ljava/lang/StringBuilder;

    .line 178
    .line 179
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 180
    .line 181
    .line 182
    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 183
    .line 184
    .line 185
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 186
    .line 187
    .line 188
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 189
    .line 190
    .line 191
    move-result-object v11

    .line 192
    new-instance v4, Ljava/lang/StringBuilder;

    .line 193
    .line 194
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 195
    .line 196
    .line 197
    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 198
    .line 199
    .line 200
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 201
    .line 202
    .line 203
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 204
    .line 205
    .line 206
    move-result-object v12

    .line 207
    new-instance v4, Ljava/lang/StringBuilder;

    .line 208
    .line 209
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 210
    .line 211
    .line 212
    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 213
    .line 214
    .line 215
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 216
    .line 217
    .line 218
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 219
    .line 220
    .line 221
    move-result-object v13

    .line 222
    new-instance v2, Ljava/lang/StringBuilder;

    .line 223
    .line 224
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 225
    .line 226
    .line 227
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 228
    .line 229
    .line 230
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 231
    .line 232
    .line 233
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 234
    .line 235
    .line 236
    move-result-object v14

    .line 237
    new-instance v2, Ljava/lang/StringBuilder;

    .line 238
    .line 239
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 240
    .line 241
    .line 242
    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 243
    .line 244
    .line 245
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 246
    .line 247
    .line 248
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 249
    .line 250
    .line 251
    move-result-object v15

    .line 252
    new-instance v2, Ljava/lang/StringBuilder;

    .line 253
    .line 254
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 255
    .line 256
    .line 257
    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 258
    .line 259
    .line 260
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 261
    .line 262
    .line 263
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 264
    .line 265
    .line 266
    move-result-object v16

    .line 267
    invoke-virtual/range {v8 .. v16}, Lcom/beizi/fusion/work/splash/a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 268
    .line 269
    .line 270
    goto :goto_1

    .line 271
    :catch_0
    move-exception v0

    .line 272
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 273
    .line 274
    .line 275
    :goto_1
    return-void
.end method
