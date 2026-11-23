.class Lcom/kongzue/dialogx/dialogs/l$h$f;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kongzue/dialogx/dialogs/l$h;->init()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic b:Lcom/kongzue/dialogx/dialogs/l$h;


# direct methods
.method constructor <init>(Lcom/kongzue/dialogx/dialogs/l$h;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/kongzue/dialogx/dialogs/l$h$f;->b:Lcom/kongzue/dialogx/dialogs/l$h;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/kongzue/dialogx/dialogs/l$h$f;->b:Lcom/kongzue/dialogx/dialogs/l$h;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/kongzue/dialogx/dialogs/l$h;->d()Lcom/kongzue/dialogx/interfaces/g;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    iget-object v1, p0, Lcom/kongzue/dialogx/dialogs/l$h$f;->b:Lcom/kongzue/dialogx/dialogs/l$h;

    .line 8
    .line 9
    iget-object v2, v1, Lcom/kongzue/dialogx/dialogs/l$h;->i:Lcom/kongzue/dialogx/dialogs/l;

    .line 10
    .line 11
    iget-object v2, v2, Lcom/kongzue/dialogx/dialogs/l;->O:Lcom/kongzue/dialogx/dialogs/l;

    .line 12
    .line 13
    iget-object v1, v1, Lcom/kongzue/dialogx/dialogs/l$h;->b:Landroid/view/ViewGroup;

    .line 14
    .line 15
    invoke-virtual {v0, v2, v1}, Lcom/kongzue/dialogx/interfaces/g;->b(Ljava/lang/Object;Landroid/view/ViewGroup;)V

    .line 16
    .line 17
    .line 18
    sget-boolean v0, Lcom/kongzue/dialogx/DialogX;->m:Z

    .line 19
    .line 20
    if-nez v0, :cond_0

    .line 21
    .line 22
    sget-object v0, Lcom/kongzue/dialogx/dialogs/l;->e2:Ljava/util/List;

    .line 23
    .line 24
    if-eqz v0, :cond_0

    .line 25
    .line 26
    const/4 v0, 0x0

    .line 27
    :goto_0
    sget-object v1, Lcom/kongzue/dialogx/dialogs/l;->e2:Ljava/util/List;

    .line 28
    .line 29
    invoke-interface {v1}, Ljava/util/List;->size()I

    .line 30
    .line 31
    .line 32
    move-result v1

    .line 33
    add-int/lit8 v1, v1, -0x1

    .line 34
    .line 35
    if-ge v0, v1, :cond_0

    .line 36
    .line 37
    sget-object v1, Lcom/kongzue/dialogx/dialogs/l;->e2:Ljava/util/List;

    .line 38
    .line 39
    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 40
    .line 41
    .line 42
    move-result-object v1

    .line 43
    check-cast v1, Lcom/kongzue/dialogx/dialogs/l;

    .line 44
    .line 45
    iget-object v2, p0, Lcom/kongzue/dialogx/dialogs/l$h$f;->b:Lcom/kongzue/dialogx/dialogs/l$h;

    .line 46
    .line 47
    iget-object v2, v2, Lcom/kongzue/dialogx/dialogs/l$h;->b:Landroid/view/ViewGroup;

    .line 48
    .line 49
    invoke-virtual {v2}, Landroid/view/View;->getHeight()I

    .line 50
    .line 51
    .line 52
    move-result v2

    .line 53
    invoke-static {v1, v2}, Lcom/kongzue/dialogx/dialogs/l;->X0(Lcom/kongzue/dialogx/dialogs/l;I)V

    .line 54
    .line 55
    .line 56
    add-int/lit8 v0, v0, 0x1

    .line 57
    .line 58
    goto :goto_0

    .line 59
    :cond_0
    iget-object v0, p0, Lcom/kongzue/dialogx/dialogs/l$h$f;->b:Lcom/kongzue/dialogx/dialogs/l$h;

    .line 60
    .line 61
    iget-object v0, v0, Lcom/kongzue/dialogx/dialogs/l$h;->i:Lcom/kongzue/dialogx/dialogs/l;

    .line 62
    .line 63
    invoke-virtual {v0}, Lcom/kongzue/dialogx/interfaces/BaseDialog;->T()Lcom/kongzue/dialogx/interfaces/DialogXStyle;

    .line 64
    .line 65
    .line 66
    move-result-object v0

    .line 67
    invoke-virtual {v0}, Lcom/kongzue/dialogx/interfaces/DialogXStyle;->k()Lcom/kongzue/dialogx/interfaces/DialogXStyle$PopNotificationSettings;

    .line 68
    .line 69
    .line 70
    move-result-object v0

    .line 71
    if-eqz v0, :cond_2

    .line 72
    .line 73
    iget-object v0, p0, Lcom/kongzue/dialogx/dialogs/l$h$f;->b:Lcom/kongzue/dialogx/dialogs/l$h;

    .line 74
    .line 75
    iget-object v0, v0, Lcom/kongzue/dialogx/dialogs/l$h;->i:Lcom/kongzue/dialogx/dialogs/l;

    .line 76
    .line 77
    invoke-virtual {v0}, Lcom/kongzue/dialogx/interfaces/BaseDialog;->T()Lcom/kongzue/dialogx/interfaces/DialogXStyle;

    .line 78
    .line 79
    .line 80
    move-result-object v0

    .line 81
    invoke-virtual {v0}, Lcom/kongzue/dialogx/interfaces/DialogXStyle;->k()Lcom/kongzue/dialogx/interfaces/DialogXStyle$PopNotificationSettings;

    .line 82
    .line 83
    .line 84
    move-result-object v0

    .line 85
    invoke-virtual {v0}, Lcom/kongzue/dialogx/interfaces/DialogXStyle$PopNotificationSettings;->b()Lcom/kongzue/dialogx/interfaces/DialogXStyle$a;

    .line 86
    .line 87
    .line 88
    move-result-object v0

    .line 89
    if-eqz v0, :cond_2

    .line 90
    .line 91
    iget-object v0, p0, Lcom/kongzue/dialogx/dialogs/l$h$f;->b:Lcom/kongzue/dialogx/dialogs/l$h;

    .line 92
    .line 93
    iget-object v0, v0, Lcom/kongzue/dialogx/dialogs/l$h;->i:Lcom/kongzue/dialogx/dialogs/l;

    .line 94
    .line 95
    invoke-virtual {v0}, Lcom/kongzue/dialogx/interfaces/BaseDialog;->T()Lcom/kongzue/dialogx/interfaces/DialogXStyle;

    .line 96
    .line 97
    .line 98
    move-result-object v0

    .line 99
    invoke-virtual {v0}, Lcom/kongzue/dialogx/interfaces/DialogXStyle;->k()Lcom/kongzue/dialogx/interfaces/DialogXStyle$PopNotificationSettings;

    .line 100
    .line 101
    .line 102
    move-result-object v0

    .line 103
    invoke-virtual {v0}, Lcom/kongzue/dialogx/interfaces/DialogXStyle$PopNotificationSettings;->b()Lcom/kongzue/dialogx/interfaces/DialogXStyle$a;

    .line 104
    .line 105
    .line 106
    move-result-object v0

    .line 107
    invoke-virtual {v0}, Lcom/kongzue/dialogx/interfaces/DialogXStyle$a;->a()Z

    .line 108
    .line 109
    .line 110
    move-result v0

    .line 111
    if-eqz v0, :cond_2

    .line 112
    .line 113
    iget-object v0, p0, Lcom/kongzue/dialogx/dialogs/l$h$f;->b:Lcom/kongzue/dialogx/dialogs/l$h;

    .line 114
    .line 115
    iget-object v0, v0, Lcom/kongzue/dialogx/dialogs/l$h;->i:Lcom/kongzue/dialogx/dialogs/l;

    .line 116
    .line 117
    invoke-static {v0}, Lcom/kongzue/dialogx/dialogs/l;->Y0(Lcom/kongzue/dialogx/dialogs/l;)Ljava/lang/Integer;

    .line 118
    .line 119
    .line 120
    move-result-object v0

    .line 121
    if-nez v0, :cond_1

    .line 122
    .line 123
    iget-object v0, p0, Lcom/kongzue/dialogx/dialogs/l$h$f;->b:Lcom/kongzue/dialogx/dialogs/l$h;

    .line 124
    .line 125
    iget-object v0, v0, Lcom/kongzue/dialogx/dialogs/l$h;->i:Lcom/kongzue/dialogx/dialogs/l;

    .line 126
    .line 127
    invoke-virtual {v0}, Lcom/kongzue/dialogx/interfaces/BaseDialog;->T()Lcom/kongzue/dialogx/interfaces/DialogXStyle;

    .line 128
    .line 129
    .line 130
    move-result-object v1

    .line 131
    invoke-virtual {v1}, Lcom/kongzue/dialogx/interfaces/DialogXStyle;->k()Lcom/kongzue/dialogx/interfaces/DialogXStyle$PopNotificationSettings;

    .line 132
    .line 133
    .line 134
    move-result-object v1

    .line 135
    invoke-virtual {v1}, Lcom/kongzue/dialogx/interfaces/DialogXStyle$PopNotificationSettings;->b()Lcom/kongzue/dialogx/interfaces/DialogXStyle$a;

    .line 136
    .line 137
    .line 138
    move-result-object v1

    .line 139
    iget-object v2, p0, Lcom/kongzue/dialogx/dialogs/l$h$f;->b:Lcom/kongzue/dialogx/dialogs/l$h;

    .line 140
    .line 141
    iget-object v2, v2, Lcom/kongzue/dialogx/dialogs/l$h;->i:Lcom/kongzue/dialogx/dialogs/l;

    .line 142
    .line 143
    invoke-virtual {v2}, Lcom/kongzue/dialogx/interfaces/BaseDialog;->i0()Z

    .line 144
    .line 145
    .line 146
    move-result v2

    .line 147
    invoke-virtual {v1, v2}, Lcom/kongzue/dialogx/interfaces/DialogXStyle$a;->c(Z)I

    .line 148
    .line 149
    .line 150
    move-result v1

    .line 151
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 152
    .line 153
    .line 154
    move-result-object v1

    .line 155
    invoke-static {v0, v1}, Lcom/kongzue/dialogx/dialogs/l;->Z0(Lcom/kongzue/dialogx/dialogs/l;Ljava/lang/Integer;)Ljava/lang/Integer;

    .line 156
    .line 157
    .line 158
    move-result-object v1

    .line 159
    invoke-static {v0, v1}, Lcom/kongzue/dialogx/dialogs/l;->a1(Lcom/kongzue/dialogx/dialogs/l;Ljava/lang/Integer;)Ljava/lang/Integer;

    .line 160
    .line 161
    .line 162
    move-result-object v0

    .line 163
    goto :goto_1

    .line 164
    :cond_1
    iget-object v0, p0, Lcom/kongzue/dialogx/dialogs/l$h$f;->b:Lcom/kongzue/dialogx/dialogs/l$h;

    .line 165
    .line 166
    iget-object v0, v0, Lcom/kongzue/dialogx/dialogs/l$h;->i:Lcom/kongzue/dialogx/dialogs/l;

    .line 167
    .line 168
    invoke-static {v0}, Lcom/kongzue/dialogx/dialogs/l;->b1(Lcom/kongzue/dialogx/dialogs/l;)Ljava/lang/Integer;

    .line 169
    .line 170
    .line 171
    move-result-object v0

    .line 172
    :goto_1
    iget-object v1, p0, Lcom/kongzue/dialogx/dialogs/l$h$f;->b:Lcom/kongzue/dialogx/dialogs/l$h;

    .line 173
    .line 174
    iget-object v1, v1, Lcom/kongzue/dialogx/dialogs/l$h;->i:Lcom/kongzue/dialogx/dialogs/l;

    .line 175
    .line 176
    invoke-virtual {v1}, Lcom/kongzue/dialogx/interfaces/BaseDialog;->T()Lcom/kongzue/dialogx/interfaces/DialogXStyle;

    .line 177
    .line 178
    .line 179
    move-result-object v2

    .line 180
    invoke-virtual {v2}, Lcom/kongzue/dialogx/interfaces/DialogXStyle;->k()Lcom/kongzue/dialogx/interfaces/DialogXStyle$PopNotificationSettings;

    .line 181
    .line 182
    .line 183
    move-result-object v2

    .line 184
    invoke-virtual {v2}, Lcom/kongzue/dialogx/interfaces/DialogXStyle$PopNotificationSettings;->b()Lcom/kongzue/dialogx/interfaces/DialogXStyle$a;

    .line 185
    .line 186
    .line 187
    move-result-object v2

    .line 188
    invoke-virtual {v2}, Lcom/kongzue/dialogx/interfaces/DialogXStyle$a;->b()I

    .line 189
    .line 190
    .line 191
    move-result v2

    .line 192
    int-to-float v2, v2

    .line 193
    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 194
    .line 195
    .line 196
    move-result-object v2

    .line 197
    invoke-static {v1, v2}, Lcom/kongzue/dialogx/dialogs/l;->c1(Lcom/kongzue/dialogx/dialogs/l;Ljava/lang/Float;)Ljava/lang/Float;

    .line 198
    .line 199
    .line 200
    move-result-object v1

    .line 201
    goto :goto_2

    .line 202
    :cond_2
    const/4 v0, 0x0

    .line 203
    move-object v1, v0

    .line 204
    :goto_2
    iget-object v2, p0, Lcom/kongzue/dialogx/dialogs/l$h$f;->b:Lcom/kongzue/dialogx/dialogs/l$h;

    .line 205
    .line 206
    invoke-static {v2}, Lcom/kongzue/dialogx/dialogs/l$h;->c(Lcom/kongzue/dialogx/dialogs/l$h;)Ljava/util/List;

    .line 207
    .line 208
    .line 209
    move-result-object v2

    .line 210
    if-eqz v2, :cond_4

    .line 211
    .line 212
    iget-object v2, p0, Lcom/kongzue/dialogx/dialogs/l$h$f;->b:Lcom/kongzue/dialogx/dialogs/l$h;

    .line 213
    .line 214
    invoke-static {v2}, Lcom/kongzue/dialogx/dialogs/l$h;->c(Lcom/kongzue/dialogx/dialogs/l$h;)Ljava/util/List;

    .line 215
    .line 216
    .line 217
    move-result-object v2

    .line 218
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 219
    .line 220
    .line 221
    move-result-object v2

    .line 222
    :goto_3
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    .line 223
    .line 224
    .line 225
    move-result v3

    .line 226
    if-eqz v3, :cond_4

    .line 227
    .line 228
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 229
    .line 230
    .line 231
    move-result-object v3

    .line 232
    check-cast v3, Landroid/view/View;

    .line 233
    .line 234
    check-cast v3, Lcom/kongzue/dialogx/interfaces/b;

    .line 235
    .line 236
    iget-object v4, p0, Lcom/kongzue/dialogx/dialogs/l$h$f;->b:Lcom/kongzue/dialogx/dialogs/l$h;

    .line 237
    .line 238
    iget-object v4, v4, Lcom/kongzue/dialogx/dialogs/l$h;->i:Lcom/kongzue/dialogx/dialogs/l;

    .line 239
    .line 240
    invoke-static {v4}, Lcom/kongzue/dialogx/dialogs/l;->d1(Lcom/kongzue/dialogx/dialogs/l;)Ljava/lang/Integer;

    .line 241
    .line 242
    .line 243
    move-result-object v4

    .line 244
    if-nez v4, :cond_3

    .line 245
    .line 246
    move-object v4, v0

    .line 247
    goto :goto_4

    .line 248
    :cond_3
    iget-object v4, p0, Lcom/kongzue/dialogx/dialogs/l$h$f;->b:Lcom/kongzue/dialogx/dialogs/l$h;

    .line 249
    .line 250
    iget-object v4, v4, Lcom/kongzue/dialogx/dialogs/l$h;->i:Lcom/kongzue/dialogx/dialogs/l;

    .line 251
    .line 252
    invoke-static {v4}, Lcom/kongzue/dialogx/dialogs/l;->e1(Lcom/kongzue/dialogx/dialogs/l;)Ljava/lang/Integer;

    .line 253
    .line 254
    .line 255
    move-result-object v4

    .line 256
    :goto_4
    invoke-interface {v3, v4}, Lcom/kongzue/dialogx/interfaces/b;->b(Ljava/lang/Integer;)V

    .line 257
    .line 258
    .line 259
    invoke-interface {v3, v1}, Lcom/kongzue/dialogx/interfaces/b;->a(Ljava/lang/Float;)V

    .line 260
    .line 261
    .line 262
    goto :goto_3

    .line 263
    :cond_4
    iget-object v0, p0, Lcom/kongzue/dialogx/dialogs/l$h$f;->b:Lcom/kongzue/dialogx/dialogs/l$h;

    .line 264
    .line 265
    iget-object v0, v0, Lcom/kongzue/dialogx/dialogs/l$h;->i:Lcom/kongzue/dialogx/dialogs/l;

    .line 266
    .line 267
    sget-object v1, Landroidx/lifecycle/Lifecycle$State;->RESUMED:Landroidx/lifecycle/Lifecycle$State;

    .line 268
    .line 269
    invoke-static {v0, v1}, Lcom/kongzue/dialogx/dialogs/l;->g1(Lcom/kongzue/dialogx/dialogs/l;Landroidx/lifecycle/Lifecycle$State;)V

    .line 270
    .line 271
    .line 272
    return-void
.end method
