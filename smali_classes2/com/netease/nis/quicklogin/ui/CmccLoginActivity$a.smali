.class Lcom/netease/nis/quicklogin/ui/CmccLoginActivity$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/netease/nis/quicklogin/ui/CmccLoginActivity;->y()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/view/ViewGroup;

.field final synthetic b:Lcom/netease/nis/quicklogin/ui/CmccLoginActivity;


# direct methods
.method constructor <init>(Lcom/netease/nis/quicklogin/ui/CmccLoginActivity;Landroid/view/ViewGroup;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/netease/nis/quicklogin/ui/CmccLoginActivity$a;->b:Lcom/netease/nis/quicklogin/ui/CmccLoginActivity;

    .line 2
    .line 3
    iput-object p2, p0, Lcom/netease/nis/quicklogin/ui/CmccLoginActivity$a;->a:Landroid/view/ViewGroup;

    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 6

    .line 1
    iget-object p1, p0, Lcom/netease/nis/quicklogin/ui/CmccLoginActivity$a;->b:Lcom/netease/nis/quicklogin/ui/CmccLoginActivity;

    .line 2
    .line 3
    invoke-static {p1}, Lcom/netease/nis/quicklogin/ui/CmccLoginActivity;->a(Lcom/netease/nis/quicklogin/ui/CmccLoginActivity;)Landroid/widget/CheckBox;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    invoke-virtual {p1}, Landroid/widget/CompoundButton;->isChecked()Z

    .line 8
    .line 9
    .line 10
    move-result p1

    .line 11
    const/4 v0, 0x4

    .line 12
    const/4 v1, 0x1

    .line 13
    const/4 v2, 0x0

    .line 14
    if-eqz p1, :cond_1

    .line 15
    .line 16
    iget-object p1, p0, Lcom/netease/nis/quicklogin/ui/CmccLoginActivity$a;->b:Lcom/netease/nis/quicklogin/ui/CmccLoginActivity;

    .line 17
    .line 18
    invoke-static {p1}, Lcom/netease/nis/quicklogin/ui/CmccLoginActivity;->b(Lcom/netease/nis/quicklogin/ui/CmccLoginActivity;)Lcom/netease/nis/quicklogin/helper/UnifyUiConfig;

    .line 19
    .line 20
    .line 21
    move-result-object p1

    .line 22
    invoke-virtual {p1}, Lcom/netease/nis/quicklogin/helper/UnifyUiConfig;->getLoadingVisible()Z

    .line 23
    .line 24
    .line 25
    move-result p1

    .line 26
    if-eqz p1, :cond_0

    .line 27
    .line 28
    iget-object p1, p0, Lcom/netease/nis/quicklogin/ui/CmccLoginActivity$a;->b:Lcom/netease/nis/quicklogin/ui/CmccLoginActivity;

    .line 29
    .line 30
    invoke-static {p1}, Lcom/netease/nis/quicklogin/ui/CmccLoginActivity;->c(Lcom/netease/nis/quicklogin/ui/CmccLoginActivity;)Landroid/view/ViewGroup;

    .line 31
    .line 32
    .line 33
    move-result-object p1

    .line 34
    if-eqz p1, :cond_0

    .line 35
    .line 36
    iget-object p1, p0, Lcom/netease/nis/quicklogin/ui/CmccLoginActivity$a;->b:Lcom/netease/nis/quicklogin/ui/CmccLoginActivity;

    .line 37
    .line 38
    invoke-static {p1}, Lcom/netease/nis/quicklogin/ui/CmccLoginActivity;->c(Lcom/netease/nis/quicklogin/ui/CmccLoginActivity;)Landroid/view/ViewGroup;

    .line 39
    .line 40
    .line 41
    move-result-object p1

    .line 42
    invoke-virtual {p1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 43
    .line 44
    .line 45
    :cond_0
    iget-object p1, p0, Lcom/netease/nis/quicklogin/ui/CmccLoginActivity$a;->b:Lcom/netease/nis/quicklogin/ui/CmccLoginActivity;

    .line 46
    .line 47
    invoke-static {p1, v0, v1}, Lcom/netease/nis/quicklogin/ui/CmccLoginActivity;->a(Lcom/netease/nis/quicklogin/ui/CmccLoginActivity;II)V

    .line 48
    .line 49
    .line 50
    iget-object p1, p0, Lcom/netease/nis/quicklogin/ui/CmccLoginActivity$a;->b:Lcom/netease/nis/quicklogin/ui/CmccLoginActivity;

    .line 51
    .line 52
    invoke-static {p1}, Lcom/netease/nis/quicklogin/ui/CmccLoginActivity;->d(Lcom/netease/nis/quicklogin/ui/CmccLoginActivity;)Lcom/netease/nis/quicklogin/view/FastClickButton;

    .line 53
    .line 54
    .line 55
    move-result-object p1

    .line 56
    invoke-virtual {p1, v1}, Lcom/netease/nis/quicklogin/view/FastClickButton;->a(Z)V

    .line 57
    .line 58
    .line 59
    iget-object p1, p0, Lcom/netease/nis/quicklogin/ui/CmccLoginActivity$a;->a:Landroid/view/ViewGroup;

    .line 60
    .line 61
    invoke-virtual {p1}, Landroid/view/View;->performClick()Z

    .line 62
    .line 63
    .line 64
    goto/16 :goto_3

    .line 65
    .line 66
    :cond_1
    iget-object p1, p0, Lcom/netease/nis/quicklogin/ui/CmccLoginActivity$a;->b:Lcom/netease/nis/quicklogin/ui/CmccLoginActivity;

    .line 67
    .line 68
    invoke-static {p1}, Lcom/netease/nis/quicklogin/ui/CmccLoginActivity;->c(Lcom/netease/nis/quicklogin/ui/CmccLoginActivity;)Landroid/view/ViewGroup;

    .line 69
    .line 70
    .line 71
    move-result-object p1

    .line 72
    const/16 v3, 0x8

    .line 73
    .line 74
    invoke-virtual {p1, v3}, Landroid/view/View;->setVisibility(I)V

    .line 75
    .line 76
    .line 77
    iget-object p1, p0, Lcom/netease/nis/quicklogin/ui/CmccLoginActivity$a;->b:Lcom/netease/nis/quicklogin/ui/CmccLoginActivity;

    .line 78
    .line 79
    invoke-static {p1}, Lcom/netease/nis/quicklogin/ui/CmccLoginActivity;->d(Lcom/netease/nis/quicklogin/ui/CmccLoginActivity;)Lcom/netease/nis/quicklogin/view/FastClickButton;

    .line 80
    .line 81
    .line 82
    move-result-object p1

    .line 83
    invoke-virtual {p1, v2}, Lcom/netease/nis/quicklogin/view/FastClickButton;->a(Z)V

    .line 84
    .line 85
    .line 86
    iget-object p1, p0, Lcom/netease/nis/quicklogin/ui/CmccLoginActivity$a;->b:Lcom/netease/nis/quicklogin/ui/CmccLoginActivity;

    .line 87
    .line 88
    invoke-static {p1, v0, v2}, Lcom/netease/nis/quicklogin/ui/CmccLoginActivity;->a(Lcom/netease/nis/quicklogin/ui/CmccLoginActivity;II)V

    .line 89
    .line 90
    .line 91
    iget-object p1, p0, Lcom/netease/nis/quicklogin/ui/CmccLoginActivity$a;->b:Lcom/netease/nis/quicklogin/ui/CmccLoginActivity;

    .line 92
    .line 93
    invoke-static {p1}, Lcom/netease/nis/quicklogin/ui/CmccLoginActivity;->b(Lcom/netease/nis/quicklogin/ui/CmccLoginActivity;)Lcom/netease/nis/quicklogin/helper/UnifyUiConfig;

    .line 94
    .line 95
    .line 96
    move-result-object p1

    .line 97
    invoke-virtual {p1}, Lcom/netease/nis/quicklogin/helper/UnifyUiConfig;->getLoginListener()Lcom/netease/nis/quicklogin/listener/LoginListener;

    .line 98
    .line 99
    .line 100
    move-result-object p1

    .line 101
    iget-object v0, p0, Lcom/netease/nis/quicklogin/ui/CmccLoginActivity$a;->b:Lcom/netease/nis/quicklogin/ui/CmccLoginActivity;

    .line 102
    .line 103
    sget v3, Lcom/netease/nis/quicklogin/R$id;->yd_ll_protocol:I

    .line 104
    .line 105
    invoke-virtual {v0, v3}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    .line 106
    .line 107
    .line 108
    move-result-object v0

    .line 109
    check-cast v0, Landroid/widget/LinearLayout;

    .line 110
    .line 111
    if-eqz v0, :cond_2

    .line 112
    .line 113
    sget v3, Lcom/netease/nis/quicklogin/R$id;->yd_tv_privacy:I

    .line 114
    .line 115
    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 116
    .line 117
    .line 118
    move-result-object v0

    .line 119
    check-cast v0, Landroid/widget/TextView;

    .line 120
    .line 121
    goto :goto_0

    .line 122
    :cond_2
    const/4 v0, 0x0

    .line 123
    :goto_0
    if-eqz v0, :cond_7

    .line 124
    .line 125
    if-eqz p1, :cond_3

    .line 126
    .line 127
    :try_start_0
    iget-object v1, p0, Lcom/netease/nis/quicklogin/ui/CmccLoginActivity$a;->b:Lcom/netease/nis/quicklogin/ui/CmccLoginActivity;

    .line 128
    .line 129
    invoke-static {v1}, Lcom/netease/nis/quicklogin/ui/CmccLoginActivity;->d(Lcom/netease/nis/quicklogin/ui/CmccLoginActivity;)Lcom/netease/nis/quicklogin/view/FastClickButton;

    .line 130
    .line 131
    .line 132
    move-result-object v1

    .line 133
    invoke-virtual {p1, v0, v1}, Lcom/netease/nis/quicklogin/listener/LoginListener;->onDisagreePrivacy(Landroid/widget/TextView;Landroid/widget/Button;)Z

    .line 134
    .line 135
    .line 136
    move-result p1

    .line 137
    if-nez p1, :cond_8

    .line 138
    .line 139
    :cond_3
    new-instance p1, Landroid/app/AlertDialog$Builder;

    .line 140
    .line 141
    iget-object v0, p0, Lcom/netease/nis/quicklogin/ui/CmccLoginActivity$a;->b:Lcom/netease/nis/quicklogin/ui/CmccLoginActivity;

    .line 142
    .line 143
    invoke-direct {p1, v0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 144
    .line 145
    .line 146
    iget-object v0, p0, Lcom/netease/nis/quicklogin/ui/CmccLoginActivity$a;->b:Lcom/netease/nis/quicklogin/ui/CmccLoginActivity;

    .line 147
    .line 148
    invoke-static {v0}, Lcom/netease/nis/quicklogin/ui/CmccLoginActivity;->b(Lcom/netease/nis/quicklogin/ui/CmccLoginActivity;)Lcom/netease/nis/quicklogin/helper/UnifyUiConfig;

    .line 149
    .line 150
    .line 151
    move-result-object v0

    .line 152
    invoke-virtual {v0}, Lcom/netease/nis/quicklogin/helper/UnifyUiConfig;->getPrivacyDialogText()Ljava/lang/String;

    .line 153
    .line 154
    .line 155
    move-result-object v0

    .line 156
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 157
    .line 158
    .line 159
    move-result v0

    .line 160
    if-eqz v0, :cond_4

    .line 161
    .line 162
    iget-object v0, p0, Lcom/netease/nis/quicklogin/ui/CmccLoginActivity$a;->b:Lcom/netease/nis/quicklogin/ui/CmccLoginActivity;

    .line 163
    .line 164
    invoke-static {v0}, Lcom/netease/nis/quicklogin/ui/CmccLoginActivity;->b(Lcom/netease/nis/quicklogin/ui/CmccLoginActivity;)Lcom/netease/nis/quicklogin/helper/UnifyUiConfig;

    .line 165
    .line 166
    .line 167
    move-result-object v0

    .line 168
    const-string v1, "\u8bf7\u60a8\u4ed4\u7ec6\u9605\u8bfb"

    .line 169
    .line 170
    const-string v3, "\uff0c\u70b9\u51fb\u201c\u786e\u8ba4\u201d\uff0c\u8868\u793a\u60a8\u5df2\u7ecf\u9605\u8bfb\u5e76\u540c\u610f\u4ee5\u4e0a\u534f\u8bae"

    .line 171
    .line 172
    invoke-static {v2, v0, v1, v3}, Lcom/netease/nis/quicklogin/utils/a;->a(ILcom/netease/nis/quicklogin/helper/UnifyUiConfig;Ljava/lang/String;Ljava/lang/String;)Landroid/text/SpannableString;

    .line 173
    .line 174
    .line 175
    move-result-object v0

    .line 176
    goto :goto_1

    .line 177
    :cond_4
    iget-object v0, p0, Lcom/netease/nis/quicklogin/ui/CmccLoginActivity$a;->b:Lcom/netease/nis/quicklogin/ui/CmccLoginActivity;

    .line 178
    .line 179
    invoke-static {v0}, Lcom/netease/nis/quicklogin/ui/CmccLoginActivity;->b(Lcom/netease/nis/quicklogin/ui/CmccLoginActivity;)Lcom/netease/nis/quicklogin/helper/UnifyUiConfig;

    .line 180
    .line 181
    .line 182
    move-result-object v0

    .line 183
    invoke-virtual {v0}, Lcom/netease/nis/quicklogin/helper/UnifyUiConfig;->getPrivacyDialogText()Ljava/lang/String;

    .line 184
    .line 185
    .line 186
    move-result-object v0

    .line 187
    :goto_1
    invoke-virtual {p1, v0}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 188
    .line 189
    .line 190
    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 191
    const-string v0, "\u786e\u8ba4"

    .line 192
    .line 193
    :try_start_1
    new-instance v1, Lcom/netease/nis/quicklogin/ui/CmccLoginActivity$a$b;

    .line 194
    .line 195
    invoke-direct {v1, p0}, Lcom/netease/nis/quicklogin/ui/CmccLoginActivity$a$b;-><init>(Lcom/netease/nis/quicklogin/ui/CmccLoginActivity$a;)V

    .line 196
    .line 197
    .line 198
    invoke-virtual {p1, v0, v1}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 199
    .line 200
    .line 201
    move-result-object p1
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 202
    const-string v0, "\u53d6\u6d88"

    .line 203
    .line 204
    :try_start_2
    new-instance v1, Lcom/netease/nis/quicklogin/ui/CmccLoginActivity$a$a;

    .line 205
    .line 206
    invoke-direct {v1, p0}, Lcom/netease/nis/quicklogin/ui/CmccLoginActivity$a$a;-><init>(Lcom/netease/nis/quicklogin/ui/CmccLoginActivity$a;)V

    .line 207
    .line 208
    .line 209
    invoke-virtual {p1, v0, v1}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 210
    .line 211
    .line 212
    move-result-object p1

    .line 213
    invoke-virtual {p1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    .line 214
    .line 215
    .line 216
    move-result-object p1

    .line 217
    iget-object v0, p0, Lcom/netease/nis/quicklogin/ui/CmccLoginActivity$a;->b:Lcom/netease/nis/quicklogin/ui/CmccLoginActivity;

    .line 218
    .line 219
    invoke-virtual {v0}, Landroid/app/Activity;->isFinishing()Z

    .line 220
    .line 221
    .line 222
    move-result v0

    .line 223
    if-nez v0, :cond_5

    .line 224
    .line 225
    invoke-virtual {p1}, Landroid/app/Dialog;->show()V

    .line 226
    .line 227
    .line 228
    :cond_5
    invoke-virtual {p1}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    .line 229
    .line 230
    .line 231
    move-result-object v0

    .line 232
    invoke-virtual {v0}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    .line 233
    .line 234
    .line 235
    move-result-object v1

    .line 236
    iget-object v2, p0, Lcom/netease/nis/quicklogin/ui/CmccLoginActivity$a;->b:Lcom/netease/nis/quicklogin/ui/CmccLoginActivity;

    .line 237
    .line 238
    invoke-static {v2}, Lcom/netease/nis/quicklogin/utils/i;->a(Landroid/content/Context;)I

    .line 239
    .line 240
    .line 241
    move-result v2

    .line 242
    int-to-double v2, v2

    .line 243
    const-wide v4, 0x3fee666666666666L    # 0.95

    .line 244
    .line 245
    .line 246
    .line 247
    .line 248
    mul-double v2, v2, v4

    .line 249
    .line 250
    double-to-int v2, v2

    .line 251
    iput v2, v1, Landroid/view/WindowManager$LayoutParams;->width:I

    .line 252
    .line 253
    const/16 v2, 0x11

    .line 254
    .line 255
    iput v2, v1, Landroid/view/WindowManager$LayoutParams;->gravity:I

    .line 256
    .line 257
    invoke-virtual {v0, v1}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    .line 258
    .line 259
    .line 260
    const v0, 0x102000b

    .line 261
    .line 262
    .line 263
    invoke-virtual {p1, v0}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    .line 264
    .line 265
    .line 266
    move-result-object v1

    .line 267
    check-cast v1, Landroid/widget/TextView;

    .line 268
    .line 269
    invoke-static {}, Landroid/text/method/LinkMovementMethod;->getInstance()Landroid/text/method/MovementMethod;

    .line 270
    .line 271
    .line 272
    move-result-object v2

    .line 273
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setMovementMethod(Landroid/text/method/MovementMethod;)V

    .line 274
    .line 275
    .line 276
    invoke-virtual {p1, v0}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    .line 277
    .line 278
    .line 279
    move-result-object p1

    .line 280
    check-cast p1, Landroid/widget/TextView;

    .line 281
    .line 282
    iget-object v0, p0, Lcom/netease/nis/quicklogin/ui/CmccLoginActivity$a;->b:Lcom/netease/nis/quicklogin/ui/CmccLoginActivity;

    .line 283
    .line 284
    invoke-static {v0}, Lcom/netease/nis/quicklogin/ui/CmccLoginActivity;->b(Lcom/netease/nis/quicklogin/ui/CmccLoginActivity;)Lcom/netease/nis/quicklogin/helper/UnifyUiConfig;

    .line 285
    .line 286
    .line 287
    move-result-object v0

    .line 288
    invoke-virtual {v0}, Lcom/netease/nis/quicklogin/helper/UnifyUiConfig;->getPrivacyDialogTextSize()F

    .line 289
    .line 290
    .line 291
    move-result v0

    .line 292
    const/4 v1, 0x0

    .line 293
    cmpl-float v0, v0, v1

    .line 294
    .line 295
    if-eqz v0, :cond_6

    .line 296
    .line 297
    iget-object v0, p0, Lcom/netease/nis/quicklogin/ui/CmccLoginActivity$a;->b:Lcom/netease/nis/quicklogin/ui/CmccLoginActivity;

    .line 298
    .line 299
    invoke-static {v0}, Lcom/netease/nis/quicklogin/ui/CmccLoginActivity;->b(Lcom/netease/nis/quicklogin/ui/CmccLoginActivity;)Lcom/netease/nis/quicklogin/helper/UnifyUiConfig;

    .line 300
    .line 301
    .line 302
    move-result-object v0

    .line 303
    invoke-virtual {v0}, Lcom/netease/nis/quicklogin/helper/UnifyUiConfig;->getPrivacyDialogTextSize()F

    .line 304
    .line 305
    .line 306
    move-result v0

    .line 307
    goto :goto_2

    .line 308
    :cond_6
    const/high16 v0, 0x41500000    # 13.0f

    .line 309
    .line 310
    :goto_2
    const/4 v1, 0x2

    .line 311
    invoke-virtual {p1, v1, v0}, Landroid/widget/TextView;->setTextSize(IF)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .line 312
    .line 313
    .line 314
    goto :goto_3

    .line 315
    :catch_0
    move-exception p1

    .line 316
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 317
    .line 318
    .line 319
    goto :goto_3

    .line 320
    :cond_7
    iget-object p1, p0, Lcom/netease/nis/quicklogin/ui/CmccLoginActivity$a;->b:Lcom/netease/nis/quicklogin/ui/CmccLoginActivity;

    .line 321
    .line 322
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    .line 323
    .line 324
    .line 325
    move-result-object p1

    .line 326
    sget v0, Lcom/netease/nis/quicklogin/R$string;->yd_privacy_agree:I

    .line 327
    .line 328
    invoke-static {p1, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    .line 329
    .line 330
    .line 331
    move-result-object p1

    .line 332
    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    .line 333
    .line 334
    .line 335
    :cond_8
    :goto_3
    return-void
.end method
