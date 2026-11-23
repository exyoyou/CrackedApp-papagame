.class Lcom/haima/hmcp/virtual/dialogs/HmAddXboxDialog$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/haima/hmcp/virtual/dialogs/HmAddXboxDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/haima/hmcp/virtual/dialogs/HmAddXboxDialog;


# direct methods
.method constructor <init>(Lcom/haima/hmcp/virtual/dialogs/HmAddXboxDialog;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/haima/hmcp/virtual/dialogs/HmAddXboxDialog$2;->this$0:Lcom/haima/hmcp/virtual/dialogs/HmAddXboxDialog;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 11

    .line 1
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    sget v1, Lcom/haima/hmcp/R$id;->imgDirection:I

    .line 6
    .line 7
    const-string v2, "\u6b64\u7c7b\u578b\u4e0d\u652f\u6301\u7ec4\u5408\u952e"

    .line 8
    .line 9
    const/16 v3, 0xf0

    .line 10
    .line 11
    const/4 v4, 0x1

    .line 12
    if-ne v0, v1, :cond_1

    .line 13
    .line 14
    iget-object p1, p0, Lcom/haima/hmcp/virtual/dialogs/HmAddXboxDialog$2;->this$0:Lcom/haima/hmcp/virtual/dialogs/HmAddXboxDialog;

    .line 15
    .line 16
    iget-boolean v0, p1, Lcom/haima/hmcp/virtual/dialogs/HmBaseAddDialog;->isMoreKeyMode:Z

    .line 17
    .line 18
    if-eqz v0, :cond_0

    .line 19
    .line 20
    invoke-virtual {p1, v2}, Lcom/haima/hmcp/virtual/dialogs/HmBaseAddDialog;->showToast(Ljava/lang/String;)V

    .line 21
    .line 22
    .line 23
    return-void

    .line 24
    :cond_0
    const-string p1, "Direction"

    .line 25
    .line 26
    const/4 v0, 0x3

    .line 27
    move-object v6, p1

    .line 28
    const/4 v7, 0x1

    .line 29
    const/4 v8, 0x3

    .line 30
    :goto_0
    const/16 v9, 0xf0

    .line 31
    .line 32
    const/16 v10, 0xf0

    .line 33
    .line 34
    goto/16 :goto_2

    .line 35
    .line 36
    :cond_1
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    .line 37
    .line 38
    .line 39
    move-result v0

    .line 40
    sget v1, Lcom/haima/hmcp/R$id;->imgRRocker:I

    .line 41
    .line 42
    if-ne v0, v1, :cond_3

    .line 43
    .line 44
    iget-object p1, p0, Lcom/haima/hmcp/virtual/dialogs/HmAddXboxDialog$2;->this$0:Lcom/haima/hmcp/virtual/dialogs/HmAddXboxDialog;

    .line 45
    .line 46
    iget-boolean v0, p1, Lcom/haima/hmcp/virtual/dialogs/HmBaseAddDialog;->isMoreKeyMode:Z

    .line 47
    .line 48
    if-eqz v0, :cond_2

    .line 49
    .line 50
    invoke-virtual {p1, v2}, Lcom/haima/hmcp/virtual/dialogs/HmBaseAddDialog;->showToast(Ljava/lang/String;)V

    .line 51
    .line 52
    .line 53
    return-void

    .line 54
    :cond_2
    const-string p1, "RRocker"

    .line 55
    .line 56
    const/4 v0, 0x5

    .line 57
    move-object v6, p1

    .line 58
    const/4 v7, 0x1

    .line 59
    const/4 v8, 0x5

    .line 60
    goto :goto_0

    .line 61
    :cond_3
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    .line 62
    .line 63
    .line 64
    move-result v0

    .line 65
    sget v1, Lcom/haima/hmcp/R$id;->imgLRocker:I

    .line 66
    .line 67
    if-ne v0, v1, :cond_5

    .line 68
    .line 69
    iget-object p1, p0, Lcom/haima/hmcp/virtual/dialogs/HmAddXboxDialog$2;->this$0:Lcom/haima/hmcp/virtual/dialogs/HmAddXboxDialog;

    .line 70
    .line 71
    iget-boolean v0, p1, Lcom/haima/hmcp/virtual/dialogs/HmBaseAddDialog;->isMoreKeyMode:Z

    .line 72
    .line 73
    if-eqz v0, :cond_4

    .line 74
    .line 75
    invoke-virtual {p1, v2}, Lcom/haima/hmcp/virtual/dialogs/HmBaseAddDialog;->showToast(Ljava/lang/String;)V

    .line 76
    .line 77
    .line 78
    return-void

    .line 79
    :cond_4
    const/16 v3, 0x17c

    .line 80
    .line 81
    const-string p1, "LRocker"

    .line 82
    .line 83
    const/4 v0, 0x4

    .line 84
    move-object v6, p1

    .line 85
    const/4 v7, 0x1

    .line 86
    const/4 v8, 0x4

    .line 87
    const/16 v9, 0x17c

    .line 88
    .line 89
    const/16 v10, 0x17c

    .line 90
    .line 91
    goto/16 :goto_2

    .line 92
    .line 93
    :cond_5
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    .line 94
    .line 95
    .line 96
    move-result v0

    .line 97
    sget v1, Lcom/haima/hmcp/R$id;->imgA:I

    .line 98
    .line 99
    const/16 v3, 0x6c

    .line 100
    .line 101
    if-ne v0, v1, :cond_6

    .line 102
    .line 103
    const/16 p1, 0x1000

    .line 104
    .line 105
    const-string v0, "A"

    .line 106
    .line 107
    move-object v6, v0

    .line 108
    const/16 v7, 0x1000

    .line 109
    .line 110
    :goto_1
    const/4 v8, 0x1

    .line 111
    const/16 v9, 0x6c

    .line 112
    .line 113
    const/16 v10, 0x6c

    .line 114
    .line 115
    goto/16 :goto_2

    .line 116
    .line 117
    :cond_6
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    .line 118
    .line 119
    .line 120
    move-result v0

    .line 121
    sget v1, Lcom/haima/hmcp/R$id;->imgB:I

    .line 122
    .line 123
    if-ne v0, v1, :cond_7

    .line 124
    .line 125
    const/16 p1, 0x2000

    .line 126
    .line 127
    const-string v0, "B"

    .line 128
    .line 129
    move-object v6, v0

    .line 130
    const/16 v7, 0x2000

    .line 131
    .line 132
    goto :goto_1

    .line 133
    :cond_7
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    .line 134
    .line 135
    .line 136
    move-result v0

    .line 137
    sget v1, Lcom/haima/hmcp/R$id;->imgX:I

    .line 138
    .line 139
    if-ne v0, v1, :cond_8

    .line 140
    .line 141
    const/16 p1, 0x4000

    .line 142
    .line 143
    const-string v0, "X"

    .line 144
    .line 145
    move-object v6, v0

    .line 146
    const/16 v7, 0x4000

    .line 147
    .line 148
    goto :goto_1

    .line 149
    :cond_8
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    .line 150
    .line 151
    .line 152
    move-result v0

    .line 153
    sget v1, Lcom/haima/hmcp/R$id;->imgY:I

    .line 154
    .line 155
    if-ne v0, v1, :cond_9

    .line 156
    .line 157
    const p1, 0x8000

    .line 158
    .line 159
    .line 160
    const-string v0, "Y"

    .line 161
    .line 162
    move-object v6, v0

    .line 163
    const v7, 0x8000

    .line 164
    .line 165
    .line 166
    goto :goto_1

    .line 167
    :cond_9
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    .line 168
    .line 169
    .line 170
    move-result v0

    .line 171
    sget v1, Lcom/haima/hmcp/R$id;->imgLT:I

    .line 172
    .line 173
    if-ne v0, v1, :cond_a

    .line 174
    .line 175
    const/16 p1, 0x401

    .line 176
    .line 177
    const-string v0, "LT"

    .line 178
    .line 179
    move-object v6, v0

    .line 180
    const/16 v7, 0x401

    .line 181
    .line 182
    goto :goto_1

    .line 183
    :cond_a
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    .line 184
    .line 185
    .line 186
    move-result v0

    .line 187
    sget v1, Lcom/haima/hmcp/R$id;->imgRT:I

    .line 188
    .line 189
    if-ne v0, v1, :cond_b

    .line 190
    .line 191
    const/16 p1, 0x402

    .line 192
    .line 193
    const-string v0, "RT"

    .line 194
    .line 195
    move-object v6, v0

    .line 196
    const/16 v7, 0x402

    .line 197
    .line 198
    goto :goto_1

    .line 199
    :cond_b
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    .line 200
    .line 201
    .line 202
    move-result v0

    .line 203
    sget v1, Lcom/haima/hmcp/R$id;->imgLB:I

    .line 204
    .line 205
    if-ne v0, v1, :cond_c

    .line 206
    .line 207
    const/16 p1, 0x100

    .line 208
    .line 209
    const-string v0, "LB"

    .line 210
    .line 211
    move-object v6, v0

    .line 212
    const/16 v7, 0x100

    .line 213
    .line 214
    goto :goto_1

    .line 215
    :cond_c
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    .line 216
    .line 217
    .line 218
    move-result v0

    .line 219
    sget v1, Lcom/haima/hmcp/R$id;->imgRB:I

    .line 220
    .line 221
    if-ne v0, v1, :cond_d

    .line 222
    .line 223
    const/16 p1, 0x200

    .line 224
    .line 225
    const-string v0, "RB"

    .line 226
    .line 227
    move-object v6, v0

    .line 228
    const/16 v7, 0x200

    .line 229
    .line 230
    goto :goto_1

    .line 231
    :cond_d
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    .line 232
    .line 233
    .line 234
    move-result v0

    .line 235
    sget v1, Lcom/haima/hmcp/R$id;->imgLS:I

    .line 236
    .line 237
    if-ne v0, v1, :cond_e

    .line 238
    .line 239
    const/16 p1, 0x40

    .line 240
    .line 241
    const-string v0, "LS"

    .line 242
    .line 243
    move-object v6, v0

    .line 244
    const/16 v7, 0x40

    .line 245
    .line 246
    goto/16 :goto_1

    .line 247
    .line 248
    :cond_e
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    .line 249
    .line 250
    .line 251
    move-result v0

    .line 252
    sget v1, Lcom/haima/hmcp/R$id;->imgRS:I

    .line 253
    .line 254
    if-ne v0, v1, :cond_f

    .line 255
    .line 256
    const/16 p1, 0x80

    .line 257
    .line 258
    const-string v0, "RS"

    .line 259
    .line 260
    move-object v6, v0

    .line 261
    const/16 v7, 0x80

    .line 262
    .line 263
    goto/16 :goto_1

    .line 264
    .line 265
    :cond_f
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    .line 266
    .line 267
    .line 268
    move-result v0

    .line 269
    sget v1, Lcom/haima/hmcp/R$id;->imgStart:I

    .line 270
    .line 271
    if-ne v0, v1, :cond_10

    .line 272
    .line 273
    const/16 p1, 0x10

    .line 274
    .line 275
    const-string v0, "START"

    .line 276
    .line 277
    move-object v6, v0

    .line 278
    const/16 v7, 0x10

    .line 279
    .line 280
    goto/16 :goto_1

    .line 281
    .line 282
    :cond_10
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    .line 283
    .line 284
    .line 285
    move-result p1

    .line 286
    sget v0, Lcom/haima/hmcp/R$id;->imgSelect:I

    .line 287
    .line 288
    if-ne p1, v0, :cond_11

    .line 289
    .line 290
    const/16 p1, 0x20

    .line 291
    .line 292
    const-string v0, "SELECT"

    .line 293
    .line 294
    move-object v6, v0

    .line 295
    const/16 v7, 0x20

    .line 296
    .line 297
    goto/16 :goto_1

    .line 298
    .line 299
    :cond_11
    const/4 p1, 0x0

    .line 300
    const-string v0, ""

    .line 301
    .line 302
    move-object v6, v0

    .line 303
    const/4 v7, 0x0

    .line 304
    goto/16 :goto_1

    .line 305
    .line 306
    :goto_2
    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 307
    .line 308
    .line 309
    move-result p1

    .line 310
    if-eqz p1, :cond_12

    .line 311
    .line 312
    return-void

    .line 313
    :cond_12
    iget-object v5, p0, Lcom/haima/hmcp/virtual/dialogs/HmAddXboxDialog$2;->this$0:Lcom/haima/hmcp/virtual/dialogs/HmAddXboxDialog;

    .line 314
    .line 315
    invoke-static/range {v5 .. v10}, Lcom/haima/hmcp/virtual/dialogs/HmAddXboxDialog;->access$000(Lcom/haima/hmcp/virtual/dialogs/HmAddXboxDialog;Ljava/lang/String;IIII)V

    .line 316
    .line 317
    .line 318
    return-void
.end method
