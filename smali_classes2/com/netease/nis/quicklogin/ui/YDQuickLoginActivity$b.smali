.class Lcom/netease/nis/quicklogin/ui/YDQuickLoginActivity$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/netease/nis/quicklogin/ui/YDQuickLoginActivity;->g()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/netease/nis/quicklogin/ui/YDQuickLoginActivity;


# direct methods
.method constructor <init>(Lcom/netease/nis/quicklogin/ui/YDQuickLoginActivity;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/netease/nis/quicklogin/ui/YDQuickLoginActivity$b;->a:Lcom/netease/nis/quicklogin/ui/YDQuickLoginActivity;

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
    .locals 7

    .line 1
    iget-object p1, p0, Lcom/netease/nis/quicklogin/ui/YDQuickLoginActivity$b;->a:Lcom/netease/nis/quicklogin/ui/YDQuickLoginActivity;

    .line 2
    .line 3
    invoke-static {p1}, Lcom/netease/nis/quicklogin/ui/YDQuickLoginActivity;->b(Lcom/netease/nis/quicklogin/ui/YDQuickLoginActivity;)Landroid/widget/CheckBox;

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
    iget-object p1, p0, Lcom/netease/nis/quicklogin/ui/YDQuickLoginActivity$b;->a:Lcom/netease/nis/quicklogin/ui/YDQuickLoginActivity;

    .line 17
    .line 18
    invoke-static {p1}, Lcom/netease/nis/quicklogin/ui/YDQuickLoginActivity;->c(Lcom/netease/nis/quicklogin/ui/YDQuickLoginActivity;)Lcom/netease/nis/quicklogin/helper/UnifyUiConfig;

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
    iget-object p1, p0, Lcom/netease/nis/quicklogin/ui/YDQuickLoginActivity$b;->a:Lcom/netease/nis/quicklogin/ui/YDQuickLoginActivity;

    .line 29
    .line 30
    invoke-static {p1}, Lcom/netease/nis/quicklogin/ui/YDQuickLoginActivity;->d(Lcom/netease/nis/quicklogin/ui/YDQuickLoginActivity;)Landroid/view/ViewGroup;

    .line 31
    .line 32
    .line 33
    move-result-object p1

    .line 34
    invoke-virtual {p1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 35
    .line 36
    .line 37
    :cond_0
    iget-object p1, p0, Lcom/netease/nis/quicklogin/ui/YDQuickLoginActivity$b;->a:Lcom/netease/nis/quicklogin/ui/YDQuickLoginActivity;

    .line 38
    .line 39
    invoke-static {p1}, Lcom/netease/nis/quicklogin/ui/YDQuickLoginActivity;->e(Lcom/netease/nis/quicklogin/ui/YDQuickLoginActivity;)Lcom/netease/nis/quicklogin/view/FastClickButton;

    .line 40
    .line 41
    .line 42
    move-result-object p1

    .line 43
    invoke-virtual {p1, v1}, Lcom/netease/nis/quicklogin/view/FastClickButton;->a(Z)V

    .line 44
    .line 45
    .line 46
    iget-object p1, p0, Lcom/netease/nis/quicklogin/ui/YDQuickLoginActivity$b;->a:Lcom/netease/nis/quicklogin/ui/YDQuickLoginActivity;

    .line 47
    .line 48
    invoke-static {p1, v0, v1}, Lcom/netease/nis/quicklogin/ui/YDQuickLoginActivity;->a(Lcom/netease/nis/quicklogin/ui/YDQuickLoginActivity;II)V

    .line 49
    .line 50
    .line 51
    iget-object p1, p0, Lcom/netease/nis/quicklogin/ui/YDQuickLoginActivity$b;->a:Lcom/netease/nis/quicklogin/ui/YDQuickLoginActivity;

    .line 52
    .line 53
    invoke-static {p1}, Lcom/netease/nis/quicklogin/ui/YDQuickLoginActivity;->f(Lcom/netease/nis/quicklogin/ui/YDQuickLoginActivity;)V

    .line 54
    .line 55
    .line 56
    goto/16 :goto_3

    .line 57
    .line 58
    :cond_1
    iget-object p1, p0, Lcom/netease/nis/quicklogin/ui/YDQuickLoginActivity$b;->a:Lcom/netease/nis/quicklogin/ui/YDQuickLoginActivity;

    .line 59
    .line 60
    invoke-static {p1}, Lcom/netease/nis/quicklogin/ui/YDQuickLoginActivity;->d(Lcom/netease/nis/quicklogin/ui/YDQuickLoginActivity;)Landroid/view/ViewGroup;

    .line 61
    .line 62
    .line 63
    move-result-object p1

    .line 64
    const/16 v3, 0x8

    .line 65
    .line 66
    invoke-virtual {p1, v3}, Landroid/view/View;->setVisibility(I)V

    .line 67
    .line 68
    .line 69
    iget-object p1, p0, Lcom/netease/nis/quicklogin/ui/YDQuickLoginActivity$b;->a:Lcom/netease/nis/quicklogin/ui/YDQuickLoginActivity;

    .line 70
    .line 71
    invoke-static {p1}, Lcom/netease/nis/quicklogin/ui/YDQuickLoginActivity;->e(Lcom/netease/nis/quicklogin/ui/YDQuickLoginActivity;)Lcom/netease/nis/quicklogin/view/FastClickButton;

    .line 72
    .line 73
    .line 74
    move-result-object p1

    .line 75
    invoke-virtual {p1, v2}, Lcom/netease/nis/quicklogin/view/FastClickButton;->a(Z)V

    .line 76
    .line 77
    .line 78
    iget-object p1, p0, Lcom/netease/nis/quicklogin/ui/YDQuickLoginActivity$b;->a:Lcom/netease/nis/quicklogin/ui/YDQuickLoginActivity;

    .line 79
    .line 80
    invoke-static {p1, v0, v2}, Lcom/netease/nis/quicklogin/ui/YDQuickLoginActivity;->a(Lcom/netease/nis/quicklogin/ui/YDQuickLoginActivity;II)V

    .line 81
    .line 82
    .line 83
    :try_start_0
    iget-object p1, p0, Lcom/netease/nis/quicklogin/ui/YDQuickLoginActivity$b;->a:Lcom/netease/nis/quicklogin/ui/YDQuickLoginActivity;

    .line 84
    .line 85
    invoke-static {p1}, Lcom/netease/nis/quicklogin/ui/YDQuickLoginActivity;->c(Lcom/netease/nis/quicklogin/ui/YDQuickLoginActivity;)Lcom/netease/nis/quicklogin/helper/UnifyUiConfig;

    .line 86
    .line 87
    .line 88
    move-result-object p1

    .line 89
    if-eqz p1, :cond_7

    .line 90
    .line 91
    iget-object p1, p0, Lcom/netease/nis/quicklogin/ui/YDQuickLoginActivity$b;->a:Lcom/netease/nis/quicklogin/ui/YDQuickLoginActivity;

    .line 92
    .line 93
    invoke-static {p1}, Lcom/netease/nis/quicklogin/ui/YDQuickLoginActivity;->c(Lcom/netease/nis/quicklogin/ui/YDQuickLoginActivity;)Lcom/netease/nis/quicklogin/helper/UnifyUiConfig;

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
    if-eqz p1, :cond_2

    .line 102
    .line 103
    iget-object v0, p0, Lcom/netease/nis/quicklogin/ui/YDQuickLoginActivity$b;->a:Lcom/netease/nis/quicklogin/ui/YDQuickLoginActivity;

    .line 104
    .line 105
    invoke-static {v0}, Lcom/netease/nis/quicklogin/ui/YDQuickLoginActivity;->g(Lcom/netease/nis/quicklogin/ui/YDQuickLoginActivity;)Landroid/widget/TextView;

    .line 106
    .line 107
    .line 108
    move-result-object v0

    .line 109
    iget-object v2, p0, Lcom/netease/nis/quicklogin/ui/YDQuickLoginActivity$b;->a:Lcom/netease/nis/quicklogin/ui/YDQuickLoginActivity;

    .line 110
    .line 111
    invoke-static {v2}, Lcom/netease/nis/quicklogin/ui/YDQuickLoginActivity;->e(Lcom/netease/nis/quicklogin/ui/YDQuickLoginActivity;)Lcom/netease/nis/quicklogin/view/FastClickButton;

    .line 112
    .line 113
    .line 114
    move-result-object v2

    .line 115
    invoke-virtual {p1, v0, v2}, Lcom/netease/nis/quicklogin/listener/LoginListener;->onDisagreePrivacy(Landroid/widget/TextView;Landroid/widget/Button;)Z

    .line 116
    .line 117
    .line 118
    move-result p1

    .line 119
    if-nez p1, :cond_8

    .line 120
    .line 121
    :cond_2
    new-instance p1, Landroid/app/AlertDialog$Builder;

    .line 122
    .line 123
    iget-object v0, p0, Lcom/netease/nis/quicklogin/ui/YDQuickLoginActivity$b;->a:Lcom/netease/nis/quicklogin/ui/YDQuickLoginActivity;

    .line 124
    .line 125
    invoke-direct {p1, v0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 126
    .line 127
    .line 128
    iget-object v0, p0, Lcom/netease/nis/quicklogin/ui/YDQuickLoginActivity$b;->a:Lcom/netease/nis/quicklogin/ui/YDQuickLoginActivity;

    .line 129
    .line 130
    invoke-static {v0}, Lcom/netease/nis/quicklogin/ui/YDQuickLoginActivity;->c(Lcom/netease/nis/quicklogin/ui/YDQuickLoginActivity;)Lcom/netease/nis/quicklogin/helper/UnifyUiConfig;

    .line 131
    .line 132
    .line 133
    move-result-object v0

    .line 134
    invoke-virtual {v0}, Lcom/netease/nis/quicklogin/helper/UnifyUiConfig;->getPrivacyDialogText()Ljava/lang/String;

    .line 135
    .line 136
    .line 137
    move-result-object v0

    .line 138
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 139
    .line 140
    .line 141
    move-result v0

    .line 142
    const/4 v2, 0x2

    .line 143
    if-eqz v0, :cond_4

    .line 144
    .line 145
    iget-object v0, p0, Lcom/netease/nis/quicklogin/ui/YDQuickLoginActivity$b;->a:Lcom/netease/nis/quicklogin/ui/YDQuickLoginActivity;

    .line 146
    .line 147
    iget-boolean v3, v0, Lcom/netease/nis/quicklogin/ui/YDQuickLoginActivity;->r:Z

    .line 148
    .line 149
    if-eqz v3, :cond_3

    .line 150
    .line 151
    goto :goto_0

    .line 152
    :cond_3
    const/4 v1, 0x2

    .line 153
    :goto_0
    invoke-static {v0}, Lcom/netease/nis/quicklogin/ui/YDQuickLoginActivity;->c(Lcom/netease/nis/quicklogin/ui/YDQuickLoginActivity;)Lcom/netease/nis/quicklogin/helper/UnifyUiConfig;

    .line 154
    .line 155
    .line 156
    move-result-object v0

    .line 157
    const-string v3, "\u8bf7\u60a8\u4ed4\u7ec6\u9605\u8bfb"

    .line 158
    .line 159
    const-string v4, "\uff0c\u70b9\u51fb\u201c\u786e\u8ba4\u201d\uff0c\u8868\u793a\u60a8\u5df2\u7ecf\u9605\u8bfb\u5e76\u540c\u610f\u4ee5\u4e0a\u534f\u8bae"

    .line 160
    .line 161
    invoke-static {v1, v0, v3, v4}, Lcom/netease/nis/quicklogin/utils/a;->a(ILcom/netease/nis/quicklogin/helper/UnifyUiConfig;Ljava/lang/String;Ljava/lang/String;)Landroid/text/SpannableString;

    .line 162
    .line 163
    .line 164
    move-result-object v0

    .line 165
    goto :goto_1

    .line 166
    :cond_4
    iget-object v0, p0, Lcom/netease/nis/quicklogin/ui/YDQuickLoginActivity$b;->a:Lcom/netease/nis/quicklogin/ui/YDQuickLoginActivity;

    .line 167
    .line 168
    invoke-static {v0}, Lcom/netease/nis/quicklogin/ui/YDQuickLoginActivity;->c(Lcom/netease/nis/quicklogin/ui/YDQuickLoginActivity;)Lcom/netease/nis/quicklogin/helper/UnifyUiConfig;

    .line 169
    .line 170
    .line 171
    move-result-object v0

    .line 172
    invoke-virtual {v0}, Lcom/netease/nis/quicklogin/helper/UnifyUiConfig;->getPrivacyDialogText()Ljava/lang/String;

    .line 173
    .line 174
    .line 175
    move-result-object v0

    .line 176
    :goto_1
    invoke-virtual {p1, v0}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 177
    .line 178
    .line 179
    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 180
    const-string v0, "\u786e\u8ba4"

    .line 181
    .line 182
    :try_start_1
    new-instance v1, Lcom/netease/nis/quicklogin/ui/YDQuickLoginActivity$b$b;

    .line 183
    .line 184
    invoke-direct {v1, p0}, Lcom/netease/nis/quicklogin/ui/YDQuickLoginActivity$b$b;-><init>(Lcom/netease/nis/quicklogin/ui/YDQuickLoginActivity$b;)V

    .line 185
    .line 186
    .line 187
    invoke-virtual {p1, v0, v1}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 188
    .line 189
    .line 190
    move-result-object p1
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 191
    const-string v0, "\u53d6\u6d88"

    .line 192
    .line 193
    :try_start_2
    new-instance v1, Lcom/netease/nis/quicklogin/ui/YDQuickLoginActivity$b$a;

    .line 194
    .line 195
    invoke-direct {v1, p0}, Lcom/netease/nis/quicklogin/ui/YDQuickLoginActivity$b$a;-><init>(Lcom/netease/nis/quicklogin/ui/YDQuickLoginActivity$b;)V

    .line 196
    .line 197
    .line 198
    invoke-virtual {p1, v0, v1}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 199
    .line 200
    .line 201
    move-result-object p1

    .line 202
    invoke-virtual {p1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    .line 203
    .line 204
    .line 205
    move-result-object p1

    .line 206
    iget-object v0, p0, Lcom/netease/nis/quicklogin/ui/YDQuickLoginActivity$b;->a:Lcom/netease/nis/quicklogin/ui/YDQuickLoginActivity;

    .line 207
    .line 208
    invoke-virtual {v0}, Landroid/app/Activity;->isFinishing()Z

    .line 209
    .line 210
    .line 211
    move-result v0

    .line 212
    if-nez v0, :cond_5

    .line 213
    .line 214
    invoke-virtual {p1}, Landroid/app/Dialog;->show()V

    .line 215
    .line 216
    .line 217
    :cond_5
    invoke-virtual {p1}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    .line 218
    .line 219
    .line 220
    move-result-object v0

    .line 221
    invoke-virtual {v0}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    .line 222
    .line 223
    .line 224
    move-result-object v1

    .line 225
    iget-object v3, p0, Lcom/netease/nis/quicklogin/ui/YDQuickLoginActivity$b;->a:Lcom/netease/nis/quicklogin/ui/YDQuickLoginActivity;

    .line 226
    .line 227
    invoke-static {v3}, Lcom/netease/nis/quicklogin/utils/i;->a(Landroid/content/Context;)I

    .line 228
    .line 229
    .line 230
    move-result v3

    .line 231
    int-to-double v3, v3

    .line 232
    const-wide v5, 0x3fee666666666666L    # 0.95

    .line 233
    .line 234
    .line 235
    .line 236
    .line 237
    mul-double v3, v3, v5

    .line 238
    .line 239
    double-to-int v3, v3

    .line 240
    iput v3, v1, Landroid/view/WindowManager$LayoutParams;->width:I

    .line 241
    .line 242
    const/16 v3, 0x11

    .line 243
    .line 244
    iput v3, v1, Landroid/view/WindowManager$LayoutParams;->gravity:I

    .line 245
    .line 246
    invoke-virtual {v0, v1}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    .line 247
    .line 248
    .line 249
    const v0, 0x102000b

    .line 250
    .line 251
    .line 252
    invoke-virtual {p1, v0}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    .line 253
    .line 254
    .line 255
    move-result-object v1

    .line 256
    check-cast v1, Landroid/widget/TextView;

    .line 257
    .line 258
    invoke-static {}, Landroid/text/method/LinkMovementMethod;->getInstance()Landroid/text/method/MovementMethod;

    .line 259
    .line 260
    .line 261
    move-result-object v3

    .line 262
    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setMovementMethod(Landroid/text/method/MovementMethod;)V

    .line 263
    .line 264
    .line 265
    invoke-virtual {p1, v0}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    .line 266
    .line 267
    .line 268
    move-result-object p1

    .line 269
    check-cast p1, Landroid/widget/TextView;

    .line 270
    .line 271
    iget-object v0, p0, Lcom/netease/nis/quicklogin/ui/YDQuickLoginActivity$b;->a:Lcom/netease/nis/quicklogin/ui/YDQuickLoginActivity;

    .line 272
    .line 273
    invoke-static {v0}, Lcom/netease/nis/quicklogin/ui/YDQuickLoginActivity;->c(Lcom/netease/nis/quicklogin/ui/YDQuickLoginActivity;)Lcom/netease/nis/quicklogin/helper/UnifyUiConfig;

    .line 274
    .line 275
    .line 276
    move-result-object v0

    .line 277
    invoke-virtual {v0}, Lcom/netease/nis/quicklogin/helper/UnifyUiConfig;->getPrivacyDialogTextSize()F

    .line 278
    .line 279
    .line 280
    move-result v0

    .line 281
    const/4 v1, 0x0

    .line 282
    cmpl-float v0, v0, v1

    .line 283
    .line 284
    if-eqz v0, :cond_6

    .line 285
    .line 286
    iget-object v0, p0, Lcom/netease/nis/quicklogin/ui/YDQuickLoginActivity$b;->a:Lcom/netease/nis/quicklogin/ui/YDQuickLoginActivity;

    .line 287
    .line 288
    invoke-static {v0}, Lcom/netease/nis/quicklogin/ui/YDQuickLoginActivity;->c(Lcom/netease/nis/quicklogin/ui/YDQuickLoginActivity;)Lcom/netease/nis/quicklogin/helper/UnifyUiConfig;

    .line 289
    .line 290
    .line 291
    move-result-object v0

    .line 292
    invoke-virtual {v0}, Lcom/netease/nis/quicklogin/helper/UnifyUiConfig;->getPrivacyDialogTextSize()F

    .line 293
    .line 294
    .line 295
    move-result v0

    .line 296
    goto :goto_2

    .line 297
    :cond_6
    const/high16 v0, 0x41500000    # 13.0f

    .line 298
    .line 299
    :goto_2
    invoke-virtual {p1, v2, v0}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 300
    .line 301
    .line 302
    goto :goto_3

    .line 303
    :cond_7
    iget-object p1, p0, Lcom/netease/nis/quicklogin/ui/YDQuickLoginActivity$b;->a:Lcom/netease/nis/quicklogin/ui/YDQuickLoginActivity;

    .line 304
    .line 305
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    .line 306
    .line 307
    .line 308
    move-result-object p1

    .line 309
    sget v0, Lcom/netease/nis/quicklogin/R$string;->yd_privacy_agree:I

    .line 310
    .line 311
    invoke-static {p1, v0, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    .line 312
    .line 313
    .line 314
    move-result-object p1

    .line 315
    invoke-virtual {p1}, Landroid/widget/Toast;->show()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .line 316
    .line 317
    .line 318
    goto :goto_3

    .line 319
    :catch_0
    move-exception p1

    .line 320
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 321
    .line 322
    .line 323
    :cond_8
    :goto_3
    return-void
.end method
