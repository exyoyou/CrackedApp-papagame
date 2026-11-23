.class Lcom/join/android/app/common/dialog/j$c;
.super Landroid/os/Handler;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/join/android/app/common/dialog/j;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/join/android/app/common/dialog/j;


# direct methods
.method constructor <init>(Lcom/join/android/app/common/dialog/j;)V
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
    iput-object p1, p0, Lcom/join/android/app/common/dialog/j$c;->a:Lcom/join/android/app/common/dialog/j;

    .line 2
    .line 3
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public static synthetic a(Lcom/join/android/app/common/dialog/j$c;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/join/android/app/common/dialog/j$c;->b()V

    return-void
.end method

.method private synthetic b()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/android/app/common/dialog/j$c;->a:Lcom/join/android/app/common/dialog/j;

    .line 2
    .line 3
    invoke-virtual {v0}, Landroidx/fragment/app/DialogFragment;->dismissAllowingStateLoss()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 6
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "msg"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/android/app/common/dialog/j$c;->a:Lcom/join/android/app/common/dialog/j;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/join/android/app/common/dialog/j;->Q(Lcom/join/android/app/common/dialog/j;)Lcom/join/mgps/customview/NoScrollViewPager;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-virtual {v0}, Landroidx/viewpager/widget/ViewPager;->getCurrentItem()I

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    iget-object v1, p0, Lcom/join/android/app/common/dialog/j$c;->a:Lcom/join/android/app/common/dialog/j;

    .line 12
    .line 13
    invoke-virtual {v1}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    .line 14
    .line 15
    .line 16
    move-result-object v1

    .line 17
    if-nez v1, :cond_0

    .line 18
    .line 19
    iget-object v1, p0, Lcom/join/android/app/common/dialog/j$c;->a:Lcom/join/android/app/common/dialog/j;

    .line 20
    .line 21
    invoke-virtual {v1}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    .line 22
    .line 23
    .line 24
    move-result-object v1

    .line 25
    :cond_0
    iget v2, p1, Landroid/os/Message;->what:I

    .line 26
    .line 27
    const-string v3, "\u786e\u5b9a"

    .line 28
    .line 29
    const/4 v4, 0x0

    .line 30
    const/4 v5, 0x1

    .line 31
    packed-switch v2, :pswitch_data_0

    .line 32
    .line 33
    .line 34
    goto/16 :goto_0

    .line 35
    .line 36
    :pswitch_0
    iget-object v0, p0, Lcom/join/android/app/common/dialog/j$c;->a:Lcom/join/android/app/common/dialog/j;

    .line 37
    .line 38
    invoke-static {v0}, Lcom/join/android/app/common/dialog/j;->U(Lcom/join/android/app/common/dialog/j;)Landroid/widget/Button;

    .line 39
    .line 40
    .line 41
    move-result-object v0

    .line 42
    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 43
    .line 44
    .line 45
    iget-object v0, p0, Lcom/join/android/app/common/dialog/j$c;->a:Lcom/join/android/app/common/dialog/j;

    .line 46
    .line 47
    invoke-static {v0}, Lcom/join/android/app/common/dialog/j;->U(Lcom/join/android/app/common/dialog/j;)Landroid/widget/Button;

    .line 48
    .line 49
    .line 50
    move-result-object v0

    .line 51
    invoke-virtual {v0, v5}, Landroid/view/View;->setEnabled(Z)V

    .line 52
    .line 53
    .line 54
    iget-object v0, p0, Lcom/join/android/app/common/dialog/j$c;->a:Lcom/join/android/app/common/dialog/j;

    .line 55
    .line 56
    invoke-static {v0}, Lcom/join/android/app/common/dialog/j;->V(Lcom/join/android/app/common/dialog/j;)Landroid/widget/TextView;

    .line 57
    .line 58
    .line 59
    move-result-object v0

    .line 60
    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 61
    .line 62
    .line 63
    if-eqz v1, :cond_7

    .line 64
    .line 65
    const-string v0, "\u89e3\u538b\u5931\u8d25\uff0c\u8bf7\u91cd\u8bd5\uff01"

    .line 66
    .line 67
    invoke-static {v1, v0, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    .line 68
    .line 69
    .line 70
    move-result-object v0

    .line 71
    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 72
    .line 73
    .line 74
    goto/16 :goto_0

    .line 75
    .line 76
    :pswitch_1
    iget-object v0, p0, Lcom/join/android/app/common/dialog/j$c;->a:Lcom/join/android/app/common/dialog/j;

    .line 77
    .line 78
    invoke-static {v0}, Lcom/join/android/app/common/dialog/j;->U(Lcom/join/android/app/common/dialog/j;)Landroid/widget/Button;

    .line 79
    .line 80
    .line 81
    move-result-object v0

    .line 82
    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 83
    .line 84
    .line 85
    iget-object v0, p0, Lcom/join/android/app/common/dialog/j$c;->a:Lcom/join/android/app/common/dialog/j;

    .line 86
    .line 87
    invoke-static {v0}, Lcom/join/android/app/common/dialog/j;->U(Lcom/join/android/app/common/dialog/j;)Landroid/widget/Button;

    .line 88
    .line 89
    .line 90
    move-result-object v0

    .line 91
    invoke-virtual {v0, v5}, Landroid/view/View;->setEnabled(Z)V

    .line 92
    .line 93
    .line 94
    iget-object v0, p0, Lcom/join/android/app/common/dialog/j$c;->a:Lcom/join/android/app/common/dialog/j;

    .line 95
    .line 96
    invoke-static {v0}, Lcom/join/android/app/common/dialog/j;->V(Lcom/join/android/app/common/dialog/j;)Landroid/widget/TextView;

    .line 97
    .line 98
    .line 99
    move-result-object v0

    .line 100
    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 101
    .line 102
    .line 103
    goto/16 :goto_0

    .line 104
    .line 105
    :pswitch_2
    iget-object v0, p0, Lcom/join/android/app/common/dialog/j$c;->a:Lcom/join/android/app/common/dialog/j;

    .line 106
    .line 107
    invoke-static {v0}, Lcom/join/android/app/common/dialog/j;->U(Lcom/join/android/app/common/dialog/j;)Landroid/widget/Button;

    .line 108
    .line 109
    .line 110
    move-result-object v0

    .line 111
    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 112
    .line 113
    .line 114
    iget-object v0, p0, Lcom/join/android/app/common/dialog/j$c;->a:Lcom/join/android/app/common/dialog/j;

    .line 115
    .line 116
    invoke-static {v0}, Lcom/join/android/app/common/dialog/j;->U(Lcom/join/android/app/common/dialog/j;)Landroid/widget/Button;

    .line 117
    .line 118
    .line 119
    move-result-object v0

    .line 120
    invoke-virtual {v0, v5}, Landroid/view/View;->setEnabled(Z)V

    .line 121
    .line 122
    .line 123
    iget-object v0, p0, Lcom/join/android/app/common/dialog/j$c;->a:Lcom/join/android/app/common/dialog/j;

    .line 124
    .line 125
    invoke-static {v0}, Lcom/join/android/app/common/dialog/j;->V(Lcom/join/android/app/common/dialog/j;)Landroid/widget/TextView;

    .line 126
    .line 127
    .line 128
    move-result-object v0

    .line 129
    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 130
    .line 131
    .line 132
    if-eqz v1, :cond_7

    .line 133
    .line 134
    const-string v0, "\u6587\u4ef6\u521d\u59cb\u5316\u5931\u8d25\uff0c\u8bf7\u91cd\u8bd5\uff01"

    .line 135
    .line 136
    invoke-static {v1, v0, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    .line 137
    .line 138
    .line 139
    move-result-object v0

    .line 140
    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 141
    .line 142
    .line 143
    goto/16 :goto_0

    .line 144
    .line 145
    :pswitch_3
    iget-object v0, p0, Lcom/join/android/app/common/dialog/j$c;->a:Lcom/join/android/app/common/dialog/j;

    .line 146
    .line 147
    invoke-static {v0}, Lcom/join/android/app/common/dialog/j;->U(Lcom/join/android/app/common/dialog/j;)Landroid/widget/Button;

    .line 148
    .line 149
    .line 150
    move-result-object v0

    .line 151
    const-string v1, "\u6b63\u5728\u521d\u59cb\u5316"

    .line 152
    .line 153
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 154
    .line 155
    .line 156
    iget-object v0, p0, Lcom/join/android/app/common/dialog/j$c;->a:Lcom/join/android/app/common/dialog/j;

    .line 157
    .line 158
    invoke-static {v0}, Lcom/join/android/app/common/dialog/j;->U(Lcom/join/android/app/common/dialog/j;)Landroid/widget/Button;

    .line 159
    .line 160
    .line 161
    move-result-object v0

    .line 162
    invoke-virtual {v0, v4}, Landroid/view/View;->setEnabled(Z)V

    .line 163
    .line 164
    .line 165
    iget-object v0, p0, Lcom/join/android/app/common/dialog/j$c;->a:Lcom/join/android/app/common/dialog/j;

    .line 166
    .line 167
    invoke-static {v0}, Lcom/join/android/app/common/dialog/j;->V(Lcom/join/android/app/common/dialog/j;)Landroid/widget/TextView;

    .line 168
    .line 169
    .line 170
    move-result-object v0

    .line 171
    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 172
    .line 173
    .line 174
    goto/16 :goto_0

    .line 175
    .line 176
    :pswitch_4
    add-int/2addr v0, v5

    .line 177
    iget-object v2, p0, Lcom/join/android/app/common/dialog/j$c;->a:Lcom/join/android/app/common/dialog/j;

    .line 178
    .line 179
    iget-object v2, v2, Lcom/join/android/app/common/dialog/j;->g:Ljava/util/Map;

    .line 180
    .line 181
    invoke-interface {v2}, Ljava/util/Map;->size()I

    .line 182
    .line 183
    .line 184
    move-result v2

    .line 185
    if-ge v0, v2, :cond_7

    .line 186
    .line 187
    if-eqz v1, :cond_1

    .line 188
    .line 189
    const-string v0, "\u6587\u4ef6\u590d\u5236\u51fa\u9519\uff01"

    .line 190
    .line 191
    invoke-static {v1, v0, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    .line 192
    .line 193
    .line 194
    move-result-object v0

    .line 195
    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 196
    .line 197
    .line 198
    :cond_1
    iget-object v0, p0, Lcom/join/android/app/common/dialog/j$c;->a:Lcom/join/android/app/common/dialog/j;

    .line 199
    .line 200
    invoke-static {v0}, Lcom/join/android/app/common/dialog/j;->W(Lcom/join/android/app/common/dialog/j;)V

    .line 201
    .line 202
    .line 203
    goto/16 :goto_0

    .line 204
    .line 205
    :pswitch_5
    iget-object v0, p0, Lcom/join/android/app/common/dialog/j$c;->a:Lcom/join/android/app/common/dialog/j;

    .line 206
    .line 207
    invoke-static {v0}, Lcom/join/android/app/common/dialog/j;->U(Lcom/join/android/app/common/dialog/j;)Landroid/widget/Button;

    .line 208
    .line 209
    .line 210
    move-result-object v0

    .line 211
    const-string v1, "\u89e3\u538b\u4e2d"

    .line 212
    .line 213
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 214
    .line 215
    .line 216
    goto/16 :goto_0

    .line 217
    .line 218
    :pswitch_6
    iget-object v2, p0, Lcom/join/android/app/common/dialog/j$c;->a:Lcom/join/android/app/common/dialog/j;

    .line 219
    .line 220
    invoke-static {v2}, Lcom/join/android/app/common/dialog/j;->U(Lcom/join/android/app/common/dialog/j;)Landroid/widget/Button;

    .line 221
    .line 222
    .line 223
    move-result-object v2

    .line 224
    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 225
    .line 226
    .line 227
    iget-object v2, p0, Lcom/join/android/app/common/dialog/j$c;->a:Lcom/join/android/app/common/dialog/j;

    .line 228
    .line 229
    invoke-static {v2}, Lcom/join/android/app/common/dialog/j;->U(Lcom/join/android/app/common/dialog/j;)Landroid/widget/Button;

    .line 230
    .line 231
    .line 232
    move-result-object v2

    .line 233
    invoke-virtual {v2, v5}, Landroid/view/View;->setEnabled(Z)V

    .line 234
    .line 235
    .line 236
    iget-object v2, p0, Lcom/join/android/app/common/dialog/j$c;->a:Lcom/join/android/app/common/dialog/j;

    .line 237
    .line 238
    invoke-static {v2}, Lcom/join/android/app/common/dialog/j;->V(Lcom/join/android/app/common/dialog/j;)Landroid/widget/TextView;

    .line 239
    .line 240
    .line 241
    move-result-object v2

    .line 242
    invoke-virtual {v2, v5}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 243
    .line 244
    .line 245
    if-eqz v1, :cond_2

    .line 246
    .line 247
    const-string v2, "\u6e38\u620f\u5df2\u5b58\u5728\uff0c\u4f46\u662f\u672a\u5b8c\u6210\uff01"

    .line 248
    .line 249
    invoke-static {v1, v2, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    .line 250
    .line 251
    .line 252
    move-result-object v1

    .line 253
    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    .line 254
    .line 255
    .line 256
    :cond_2
    add-int/2addr v0, v5

    .line 257
    iget-object v1, p0, Lcom/join/android/app/common/dialog/j$c;->a:Lcom/join/android/app/common/dialog/j;

    .line 258
    .line 259
    iget-object v1, v1, Lcom/join/android/app/common/dialog/j;->g:Ljava/util/Map;

    .line 260
    .line 261
    invoke-interface {v1}, Ljava/util/Map;->size()I

    .line 262
    .line 263
    .line 264
    move-result v1

    .line 265
    if-lt v0, v1, :cond_3

    .line 266
    .line 267
    new-instance v0, Landroid/os/Message;

    .line 268
    .line 269
    invoke-direct {v0}, Landroid/os/Message;-><init>()V

    .line 270
    .line 271
    .line 272
    iput v4, v0, Landroid/os/Message;->what:I

    .line 273
    .line 274
    iget-object v1, p0, Lcom/join/android/app/common/dialog/j$c;->a:Lcom/join/android/app/common/dialog/j;

    .line 275
    .line 276
    invoke-static {v1}, Lcom/join/android/app/common/dialog/j;->X(Lcom/join/android/app/common/dialog/j;)Landroid/os/Handler;

    .line 277
    .line 278
    .line 279
    move-result-object v1

    .line 280
    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 281
    .line 282
    .line 283
    goto/16 :goto_0

    .line 284
    .line 285
    :cond_3
    iget-object v0, p0, Lcom/join/android/app/common/dialog/j$c;->a:Lcom/join/android/app/common/dialog/j;

    .line 286
    .line 287
    invoke-static {v0}, Lcom/join/android/app/common/dialog/j;->W(Lcom/join/android/app/common/dialog/j;)V

    .line 288
    .line 289
    .line 290
    goto/16 :goto_0

    .line 291
    .line 292
    :pswitch_7
    iget-object v2, p0, Lcom/join/android/app/common/dialog/j$c;->a:Lcom/join/android/app/common/dialog/j;

    .line 293
    .line 294
    invoke-static {v2}, Lcom/join/android/app/common/dialog/j;->U(Lcom/join/android/app/common/dialog/j;)Landroid/widget/Button;

    .line 295
    .line 296
    .line 297
    move-result-object v2

    .line 298
    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 299
    .line 300
    .line 301
    iget-object v2, p0, Lcom/join/android/app/common/dialog/j$c;->a:Lcom/join/android/app/common/dialog/j;

    .line 302
    .line 303
    invoke-static {v2}, Lcom/join/android/app/common/dialog/j;->U(Lcom/join/android/app/common/dialog/j;)Landroid/widget/Button;

    .line 304
    .line 305
    .line 306
    move-result-object v2

    .line 307
    invoke-virtual {v2, v5}, Landroid/view/View;->setEnabled(Z)V

    .line 308
    .line 309
    .line 310
    iget-object v2, p0, Lcom/join/android/app/common/dialog/j$c;->a:Lcom/join/android/app/common/dialog/j;

    .line 311
    .line 312
    invoke-static {v2}, Lcom/join/android/app/common/dialog/j;->V(Lcom/join/android/app/common/dialog/j;)Landroid/widget/TextView;

    .line 313
    .line 314
    .line 315
    move-result-object v2

    .line 316
    invoke-virtual {v2, v5}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 317
    .line 318
    .line 319
    if-eqz v1, :cond_4

    .line 320
    .line 321
    const-string v2, "\u6e38\u620f\u5df2\u5b58\u5728\uff01"

    .line 322
    .line 323
    invoke-static {v1, v2, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    .line 324
    .line 325
    .line 326
    move-result-object v1

    .line 327
    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    .line 328
    .line 329
    .line 330
    :cond_4
    add-int/2addr v0, v5

    .line 331
    iget-object v1, p0, Lcom/join/android/app/common/dialog/j$c;->a:Lcom/join/android/app/common/dialog/j;

    .line 332
    .line 333
    iget-object v1, v1, Lcom/join/android/app/common/dialog/j;->g:Ljava/util/Map;

    .line 334
    .line 335
    invoke-interface {v1}, Ljava/util/Map;->size()I

    .line 336
    .line 337
    .line 338
    move-result v1

    .line 339
    if-lt v0, v1, :cond_5

    .line 340
    .line 341
    new-instance v0, Landroid/os/Message;

    .line 342
    .line 343
    invoke-direct {v0}, Landroid/os/Message;-><init>()V

    .line 344
    .line 345
    .line 346
    iput v4, v0, Landroid/os/Message;->what:I

    .line 347
    .line 348
    iget-object v1, p0, Lcom/join/android/app/common/dialog/j$c;->a:Lcom/join/android/app/common/dialog/j;

    .line 349
    .line 350
    invoke-static {v1}, Lcom/join/android/app/common/dialog/j;->X(Lcom/join/android/app/common/dialog/j;)Landroid/os/Handler;

    .line 351
    .line 352
    .line 353
    move-result-object v1

    .line 354
    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 355
    .line 356
    .line 357
    goto :goto_0

    .line 358
    :cond_5
    iget-object v0, p0, Lcom/join/android/app/common/dialog/j$c;->a:Lcom/join/android/app/common/dialog/j;

    .line 359
    .line 360
    invoke-static {v0}, Lcom/join/android/app/common/dialog/j;->W(Lcom/join/android/app/common/dialog/j;)V

    .line 361
    .line 362
    .line 363
    goto :goto_0

    .line 364
    :pswitch_8
    iget-object v0, p0, Lcom/join/android/app/common/dialog/j$c;->a:Lcom/join/android/app/common/dialog/j;

    .line 365
    .line 366
    invoke-static {v0}, Lcom/join/android/app/common/dialog/j;->W(Lcom/join/android/app/common/dialog/j;)V

    .line 367
    .line 368
    .line 369
    goto :goto_0

    .line 370
    :pswitch_9
    iget-object v0, p0, Lcom/join/android/app/common/dialog/j$c;->a:Lcom/join/android/app/common/dialog/j;

    .line 371
    .line 372
    invoke-static {v0}, Lcom/join/android/app/common/dialog/j;->U(Lcom/join/android/app/common/dialog/j;)Landroid/widget/Button;

    .line 373
    .line 374
    .line 375
    move-result-object v0

    .line 376
    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 377
    .line 378
    .line 379
    iget-object v0, p0, Lcom/join/android/app/common/dialog/j$c;->a:Lcom/join/android/app/common/dialog/j;

    .line 380
    .line 381
    invoke-static {v0}, Lcom/join/android/app/common/dialog/j;->U(Lcom/join/android/app/common/dialog/j;)Landroid/widget/Button;

    .line 382
    .line 383
    .line 384
    move-result-object v0

    .line 385
    invoke-virtual {v0, v5}, Landroid/view/View;->setEnabled(Z)V

    .line 386
    .line 387
    .line 388
    iget-object v0, p0, Lcom/join/android/app/common/dialog/j$c;->a:Lcom/join/android/app/common/dialog/j;

    .line 389
    .line 390
    invoke-static {v0}, Lcom/join/android/app/common/dialog/j;->V(Lcom/join/android/app/common/dialog/j;)Landroid/widget/TextView;

    .line 391
    .line 392
    .line 393
    move-result-object v0

    .line 394
    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 395
    .line 396
    .line 397
    if-eqz v1, :cond_6

    .line 398
    .line 399
    const-string v0, "\u6e38\u620f\u68c0\u6d4b\u5b8c\u6210\uff01"

    .line 400
    .line 401
    invoke-static {v1, v0, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    .line 402
    .line 403
    .line 404
    move-result-object v0

    .line 405
    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 406
    .line 407
    .line 408
    :cond_6
    new-instance v0, Landroid/os/Handler;

    .line 409
    .line 410
    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    .line 411
    .line 412
    .line 413
    new-instance v1, Lcom/join/android/app/common/dialog/k;

    .line 414
    .line 415
    invoke-direct {v1, p0}, Lcom/join/android/app/common/dialog/k;-><init>(Lcom/join/android/app/common/dialog/j$c;)V

    .line 416
    .line 417
    .line 418
    const-wide/16 v2, 0x1f4

    .line 419
    .line 420
    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 421
    .line 422
    .line 423
    :cond_7
    :goto_0
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    .line 424
    .line 425
    .line 426
    return-void

    .line 427
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
