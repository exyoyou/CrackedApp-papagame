.class Lcom/papa/controller/component/bluetooth/spp/a$b;
.super Landroid/os/Handler;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/papa/controller/component/bluetooth/spp/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/papa/controller/component/bluetooth/spp/a;


# direct methods
.method constructor <init>(Lcom/papa/controller/component/bluetooth/spp/a;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/papa/controller/component/bluetooth/spp/a$b;->a:Lcom/papa/controller/component/bluetooth/spp/a;

    .line 2
    .line 3
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 6

    .line 1
    iget v0, p1, Landroid/os/Message;->what:I

    .line 2
    .line 3
    const/4 v1, 0x2

    .line 4
    const/4 v2, 0x1

    .line 5
    const/4 v3, 0x0

    .line 6
    if-eq v0, v2, :cond_4

    .line 7
    .line 8
    if-eq v0, v1, :cond_3

    .line 9
    .line 10
    const/4 v1, 0x4

    .line 11
    if-eq v0, v1, :cond_1

    .line 12
    .line 13
    const/4 v1, 0x5

    .line 14
    if-eq v0, v1, :cond_0

    .line 15
    .line 16
    goto/16 :goto_0

    .line 17
    .line 18
    :cond_0
    iget-object v0, p0, Lcom/papa/controller/component/bluetooth/spp/a$b;->a:Lcom/papa/controller/component/bluetooth/spp/a;

    .line 19
    .line 20
    invoke-static {v0}, Lcom/papa/controller/component/bluetooth/spp/a;->u(Lcom/papa/controller/component/bluetooth/spp/a;)Landroid/content/Context;

    .line 21
    .line 22
    .line 23
    move-result-object v0

    .line 24
    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    .line 25
    .line 26
    .line 27
    move-result-object p1

    .line 28
    const-string v1, "toast"

    .line 29
    .line 30
    invoke-virtual {p1, v1}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 31
    .line 32
    .line 33
    move-result-object p1

    .line 34
    invoke-static {v0, p1, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    .line 35
    .line 36
    .line 37
    move-result-object p1

    .line 38
    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    .line 39
    .line 40
    .line 41
    goto/16 :goto_0

    .line 42
    .line 43
    :cond_1
    iget-object v0, p0, Lcom/papa/controller/component/bluetooth/spp/a$b;->a:Lcom/papa/controller/component/bluetooth/spp/a;

    .line 44
    .line 45
    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    .line 46
    .line 47
    .line 48
    move-result-object v1

    .line 49
    const-string v3, "device_name"

    .line 50
    .line 51
    invoke-virtual {v1, v3}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 52
    .line 53
    .line 54
    move-result-object v1

    .line 55
    invoke-static {v0, v1}, Lcom/papa/controller/component/bluetooth/spp/a;->o(Lcom/papa/controller/component/bluetooth/spp/a;Ljava/lang/String;)Ljava/lang/String;

    .line 56
    .line 57
    .line 58
    iget-object v0, p0, Lcom/papa/controller/component/bluetooth/spp/a$b;->a:Lcom/papa/controller/component/bluetooth/spp/a;

    .line 59
    .line 60
    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    .line 61
    .line 62
    .line 63
    move-result-object p1

    .line 64
    const-string v1, "device_address"

    .line 65
    .line 66
    invoke-virtual {p1, v1}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 67
    .line 68
    .line 69
    move-result-object p1

    .line 70
    invoke-static {v0, p1}, Lcom/papa/controller/component/bluetooth/spp/a;->q(Lcom/papa/controller/component/bluetooth/spp/a;Ljava/lang/String;)Ljava/lang/String;

    .line 71
    .line 72
    .line 73
    iget-object p1, p0, Lcom/papa/controller/component/bluetooth/spp/a$b;->a:Lcom/papa/controller/component/bluetooth/spp/a;

    .line 74
    .line 75
    invoke-static {p1}, Lcom/papa/controller/component/bluetooth/spp/a;->r(Lcom/papa/controller/component/bluetooth/spp/a;)Lcom/papa/controller/component/bluetooth/spp/a$e;

    .line 76
    .line 77
    .line 78
    move-result-object p1

    .line 79
    if-eqz p1, :cond_2

    .line 80
    .line 81
    iget-object p1, p0, Lcom/papa/controller/component/bluetooth/spp/a$b;->a:Lcom/papa/controller/component/bluetooth/spp/a;

    .line 82
    .line 83
    invoke-static {p1}, Lcom/papa/controller/component/bluetooth/spp/a;->r(Lcom/papa/controller/component/bluetooth/spp/a;)Lcom/papa/controller/component/bluetooth/spp/a$e;

    .line 84
    .line 85
    .line 86
    move-result-object p1

    .line 87
    iget-object v0, p0, Lcom/papa/controller/component/bluetooth/spp/a$b;->a:Lcom/papa/controller/component/bluetooth/spp/a;

    .line 88
    .line 89
    invoke-static {v0}, Lcom/papa/controller/component/bluetooth/spp/a;->n(Lcom/papa/controller/component/bluetooth/spp/a;)Ljava/lang/String;

    .line 90
    .line 91
    .line 92
    move-result-object v0

    .line 93
    iget-object v1, p0, Lcom/papa/controller/component/bluetooth/spp/a$b;->a:Lcom/papa/controller/component/bluetooth/spp/a;

    .line 94
    .line 95
    invoke-static {v1}, Lcom/papa/controller/component/bluetooth/spp/a;->p(Lcom/papa/controller/component/bluetooth/spp/a;)Ljava/lang/String;

    .line 96
    .line 97
    .line 98
    move-result-object v1

    .line 99
    invoke-interface {p1, v0, v1}, Lcom/papa/controller/component/bluetooth/spp/a$e;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 100
    .line 101
    .line 102
    :cond_2
    iget-object p1, p0, Lcom/papa/controller/component/bluetooth/spp/a$b;->a:Lcom/papa/controller/component/bluetooth/spp/a;

    .line 103
    .line 104
    invoke-static {p1, v2}, Lcom/papa/controller/component/bluetooth/spp/a;->t(Lcom/papa/controller/component/bluetooth/spp/a;Z)Z

    .line 105
    .line 106
    .line 107
    goto/16 :goto_0

    .line 108
    .line 109
    :cond_3
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 110
    .line 111
    check-cast p1, [B

    .line 112
    .line 113
    new-instance v0, Ljava/lang/String;

    .line 114
    .line 115
    invoke-direct {v0, p1}, Ljava/lang/String;-><init>([B)V

    .line 116
    .line 117
    .line 118
    if-eqz p1, :cond_b

    .line 119
    .line 120
    array-length v1, p1

    .line 121
    if-lez v1, :cond_b

    .line 122
    .line 123
    iget-object v1, p0, Lcom/papa/controller/component/bluetooth/spp/a$b;->a:Lcom/papa/controller/component/bluetooth/spp/a;

    .line 124
    .line 125
    invoke-static {v1}, Lcom/papa/controller/component/bluetooth/spp/a;->m(Lcom/papa/controller/component/bluetooth/spp/a;)Lcom/papa/controller/component/bluetooth/spp/a$g;

    .line 126
    .line 127
    .line 128
    move-result-object v1

    .line 129
    if-eqz v1, :cond_b

    .line 130
    .line 131
    iget-object v1, p0, Lcom/papa/controller/component/bluetooth/spp/a$b;->a:Lcom/papa/controller/component/bluetooth/spp/a;

    .line 132
    .line 133
    invoke-static {v1}, Lcom/papa/controller/component/bluetooth/spp/a;->m(Lcom/papa/controller/component/bluetooth/spp/a;)Lcom/papa/controller/component/bluetooth/spp/a$g;

    .line 134
    .line 135
    .line 136
    move-result-object v1

    .line 137
    invoke-interface {v1, p1, v0}, Lcom/papa/controller/component/bluetooth/spp/a$g;->a([BLjava/lang/String;)V

    .line 138
    .line 139
    .line 140
    goto/16 :goto_0

    .line 141
    .line 142
    :cond_4
    iget-object v0, p0, Lcom/papa/controller/component/bluetooth/spp/a$b;->a:Lcom/papa/controller/component/bluetooth/spp/a;

    .line 143
    .line 144
    invoke-static {v0}, Lcom/papa/controller/component/bluetooth/spp/a;->v(Lcom/papa/controller/component/bluetooth/spp/a;)Lcom/papa/controller/component/bluetooth/spp/a$f;

    .line 145
    .line 146
    .line 147
    move-result-object v0

    .line 148
    if-eqz v0, :cond_5

    .line 149
    .line 150
    iget-object v0, p0, Lcom/papa/controller/component/bluetooth/spp/a$b;->a:Lcom/papa/controller/component/bluetooth/spp/a;

    .line 151
    .line 152
    invoke-static {v0}, Lcom/papa/controller/component/bluetooth/spp/a;->v(Lcom/papa/controller/component/bluetooth/spp/a;)Lcom/papa/controller/component/bluetooth/spp/a$f;

    .line 153
    .line 154
    .line 155
    move-result-object v0

    .line 156
    iget v4, p1, Landroid/os/Message;->arg1:I

    .line 157
    .line 158
    invoke-interface {v0, v4}, Lcom/papa/controller/component/bluetooth/spp/a$f;->a(I)V

    .line 159
    .line 160
    .line 161
    :cond_5
    iget-object v0, p0, Lcom/papa/controller/component/bluetooth/spp/a$b;->a:Lcom/papa/controller/component/bluetooth/spp/a;

    .line 162
    .line 163
    invoke-static {v0}, Lcom/papa/controller/component/bluetooth/spp/a;->s(Lcom/papa/controller/component/bluetooth/spp/a;)Z

    .line 164
    .line 165
    .line 166
    move-result v0

    .line 167
    const/4 v4, 0x3

    .line 168
    if-eqz v0, :cond_8

    .line 169
    .line 170
    iget v0, p1, Landroid/os/Message;->arg1:I

    .line 171
    .line 172
    if-eq v0, v4, :cond_8

    .line 173
    .line 174
    iget-object v0, p0, Lcom/papa/controller/component/bluetooth/spp/a$b;->a:Lcom/papa/controller/component/bluetooth/spp/a;

    .line 175
    .line 176
    invoke-static {v0}, Lcom/papa/controller/component/bluetooth/spp/a;->r(Lcom/papa/controller/component/bluetooth/spp/a;)Lcom/papa/controller/component/bluetooth/spp/a$e;

    .line 177
    .line 178
    .line 179
    move-result-object v0

    .line 180
    if-eqz v0, :cond_6

    .line 181
    .line 182
    iget-object v0, p0, Lcom/papa/controller/component/bluetooth/spp/a$b;->a:Lcom/papa/controller/component/bluetooth/spp/a;

    .line 183
    .line 184
    invoke-static {v0}, Lcom/papa/controller/component/bluetooth/spp/a;->r(Lcom/papa/controller/component/bluetooth/spp/a;)Lcom/papa/controller/component/bluetooth/spp/a$e;

    .line 185
    .line 186
    .line 187
    move-result-object v0

    .line 188
    invoke-interface {v0}, Lcom/papa/controller/component/bluetooth/spp/a$e;->b()V

    .line 189
    .line 190
    .line 191
    :cond_6
    iget-object v0, p0, Lcom/papa/controller/component/bluetooth/spp/a$b;->a:Lcom/papa/controller/component/bluetooth/spp/a;

    .line 192
    .line 193
    invoke-static {v0}, Lcom/papa/controller/component/bluetooth/spp/a;->w(Lcom/papa/controller/component/bluetooth/spp/a;)Z

    .line 194
    .line 195
    .line 196
    move-result v0

    .line 197
    if-eqz v0, :cond_7

    .line 198
    .line 199
    iget-object v0, p0, Lcom/papa/controller/component/bluetooth/spp/a$b;->a:Lcom/papa/controller/component/bluetooth/spp/a;

    .line 200
    .line 201
    invoke-static {v0, v3}, Lcom/papa/controller/component/bluetooth/spp/a;->x(Lcom/papa/controller/component/bluetooth/spp/a;Z)Z

    .line 202
    .line 203
    .line 204
    iget-object v0, p0, Lcom/papa/controller/component/bluetooth/spp/a$b;->a:Lcom/papa/controller/component/bluetooth/spp/a;

    .line 205
    .line 206
    invoke-static {v0}, Lcom/papa/controller/component/bluetooth/spp/a;->c(Lcom/papa/controller/component/bluetooth/spp/a;)Ljava/lang/String;

    .line 207
    .line 208
    .line 209
    move-result-object v5

    .line 210
    invoke-virtual {v0, v5}, Lcom/papa/controller/component/bluetooth/spp/a;->y(Ljava/lang/String;)V

    .line 211
    .line 212
    .line 213
    :cond_7
    iget-object v0, p0, Lcom/papa/controller/component/bluetooth/spp/a$b;->a:Lcom/papa/controller/component/bluetooth/spp/a;

    .line 214
    .line 215
    invoke-static {v0, v3}, Lcom/papa/controller/component/bluetooth/spp/a;->t(Lcom/papa/controller/component/bluetooth/spp/a;Z)Z

    .line 216
    .line 217
    .line 218
    iget-object v0, p0, Lcom/papa/controller/component/bluetooth/spp/a$b;->a:Lcom/papa/controller/component/bluetooth/spp/a;

    .line 219
    .line 220
    const/4 v5, 0x0

    .line 221
    invoke-static {v0, v5}, Lcom/papa/controller/component/bluetooth/spp/a;->o(Lcom/papa/controller/component/bluetooth/spp/a;Ljava/lang/String;)Ljava/lang/String;

    .line 222
    .line 223
    .line 224
    iget-object v0, p0, Lcom/papa/controller/component/bluetooth/spp/a$b;->a:Lcom/papa/controller/component/bluetooth/spp/a;

    .line 225
    .line 226
    invoke-static {v0, v5}, Lcom/papa/controller/component/bluetooth/spp/a;->q(Lcom/papa/controller/component/bluetooth/spp/a;Ljava/lang/String;)Ljava/lang/String;

    .line 227
    .line 228
    .line 229
    :cond_8
    iget-object v0, p0, Lcom/papa/controller/component/bluetooth/spp/a$b;->a:Lcom/papa/controller/component/bluetooth/spp/a;

    .line 230
    .line 231
    invoke-static {v0}, Lcom/papa/controller/component/bluetooth/spp/a;->e(Lcom/papa/controller/component/bluetooth/spp/a;)Z

    .line 232
    .line 233
    .line 234
    move-result v0

    .line 235
    if-nez v0, :cond_9

    .line 236
    .line 237
    iget v0, p1, Landroid/os/Message;->arg1:I

    .line 238
    .line 239
    if-ne v0, v1, :cond_9

    .line 240
    .line 241
    iget-object p1, p0, Lcom/papa/controller/component/bluetooth/spp/a$b;->a:Lcom/papa/controller/component/bluetooth/spp/a;

    .line 242
    .line 243
    invoke-static {p1, v2}, Lcom/papa/controller/component/bluetooth/spp/a;->f(Lcom/papa/controller/component/bluetooth/spp/a;Z)Z

    .line 244
    .line 245
    .line 246
    goto :goto_0

    .line 247
    :cond_9
    iget-object v0, p0, Lcom/papa/controller/component/bluetooth/spp/a$b;->a:Lcom/papa/controller/component/bluetooth/spp/a;

    .line 248
    .line 249
    invoke-static {v0}, Lcom/papa/controller/component/bluetooth/spp/a;->e(Lcom/papa/controller/component/bluetooth/spp/a;)Z

    .line 250
    .line 251
    .line 252
    move-result v0

    .line 253
    if-eqz v0, :cond_b

    .line 254
    .line 255
    iget p1, p1, Landroid/os/Message;->arg1:I

    .line 256
    .line 257
    if-eq p1, v4, :cond_a

    .line 258
    .line 259
    iget-object p1, p0, Lcom/papa/controller/component/bluetooth/spp/a$b;->a:Lcom/papa/controller/component/bluetooth/spp/a;

    .line 260
    .line 261
    invoke-static {p1}, Lcom/papa/controller/component/bluetooth/spp/a;->r(Lcom/papa/controller/component/bluetooth/spp/a;)Lcom/papa/controller/component/bluetooth/spp/a$e;

    .line 262
    .line 263
    .line 264
    move-result-object p1

    .line 265
    if-eqz p1, :cond_a

    .line 266
    .line 267
    iget-object p1, p0, Lcom/papa/controller/component/bluetooth/spp/a$b;->a:Lcom/papa/controller/component/bluetooth/spp/a;

    .line 268
    .line 269
    invoke-static {p1}, Lcom/papa/controller/component/bluetooth/spp/a;->r(Lcom/papa/controller/component/bluetooth/spp/a;)Lcom/papa/controller/component/bluetooth/spp/a$e;

    .line 270
    .line 271
    .line 272
    move-result-object p1

    .line 273
    invoke-interface {p1}, Lcom/papa/controller/component/bluetooth/spp/a$e;->a()V

    .line 274
    .line 275
    .line 276
    :cond_a
    iget-object p1, p0, Lcom/papa/controller/component/bluetooth/spp/a$b;->a:Lcom/papa/controller/component/bluetooth/spp/a;

    .line 277
    .line 278
    invoke-static {p1, v3}, Lcom/papa/controller/component/bluetooth/spp/a;->f(Lcom/papa/controller/component/bluetooth/spp/a;Z)Z

    .line 279
    .line 280
    .line 281
    :cond_b
    :goto_0
    return-void
.end method
