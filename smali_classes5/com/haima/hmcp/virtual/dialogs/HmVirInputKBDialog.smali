.class public Lcom/haima/hmcp/virtual/dialogs/HmVirInputKBDialog;
.super Landroid/app/Dialog;
.source "SourceFile"


# instance fields
.field private final TAG:Ljava/lang/String;

.field private fullKeyboardLayout:Lcom/haima/hmcp/virtual/views/HmVirFullKeyBoardLayout;

.field private operateType:Lcom/haima/hmcp/widgets/beans/VirtualOperateType;

.field private rtcVideoView:Lcom/haima/hmcp/widgets/AbsIjkVideoView;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/haima/hmcp/widgets/AbsIjkVideoView;)V
    .locals 7
    .param p1    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    sget v0, Lcom/haima/hmcp/R$style;->haima_hmcp_virtual_dialog:I

    .line 2
    .line 3
    invoke-direct {p0, p1, v0}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    .line 11
    .line 12
    .line 13
    move-result-object v0

    .line 14
    iput-object v0, p0, Lcom/haima/hmcp/virtual/dialogs/HmVirInputKBDialog;->TAG:Ljava/lang/String;

    .line 15
    .line 16
    sget-object v0, Lcom/haima/hmcp/widgets/beans/VirtualOperateType;->NONE:Lcom/haima/hmcp/widgets/beans/VirtualOperateType;

    .line 17
    .line 18
    iput-object v0, p0, Lcom/haima/hmcp/virtual/dialogs/HmVirInputKBDialog;->operateType:Lcom/haima/hmcp/widgets/beans/VirtualOperateType;

    .line 19
    .line 20
    iput-object p2, p0, Lcom/haima/hmcp/virtual/dialogs/HmVirInputKBDialog;->rtcVideoView:Lcom/haima/hmcp/widgets/AbsIjkVideoView;

    .line 21
    .line 22
    invoke-static {p1}, Lcom/haima/hmcp/virtual/HmVirtualDeviceUtils;->getActivityFromContext(Landroid/content/Context;)Landroid/app/Activity;

    .line 23
    .line 24
    .line 25
    move-result-object v0

    .line 26
    if-eqz v0, :cond_1

    .line 27
    .line 28
    invoke-virtual {v0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    .line 29
    .line 30
    .line 31
    move-result-object v1

    .line 32
    invoke-virtual {v1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    .line 33
    .line 34
    .line 35
    move-result-object v1

    .line 36
    invoke-virtual {v1}, Landroid/view/View;->getSystemUiVisibility()I

    .line 37
    .line 38
    .line 39
    move-result v1

    .line 40
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 41
    .line 42
    const/16 v3, 0x1c

    .line 43
    .line 44
    if-lt v2, v3, :cond_0

    .line 45
    .line 46
    invoke-virtual {v0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    .line 47
    .line 48
    .line 49
    move-result-object v0

    .line 50
    invoke-virtual {v0}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    .line 51
    .line 52
    .line 53
    move-result-object v0

    .line 54
    invoke-static {v0}, Lcom/haima/hmcp/virtual/dialogs/a;->a(Landroid/view/WindowManager$LayoutParams;)I

    .line 55
    .line 56
    .line 57
    move-result v0

    .line 58
    invoke-virtual {p0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    .line 59
    .line 60
    .line 61
    move-result-object v2

    .line 62
    invoke-virtual {v2}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    .line 63
    .line 64
    .line 65
    move-result-object v2

    .line 66
    invoke-static {v2, v0}, Lcom/aggmoread/sdk/z/a/r/e;->a(Landroid/view/WindowManager$LayoutParams;I)V

    .line 67
    .line 68
    .line 69
    invoke-virtual {p0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    .line 70
    .line 71
    .line 72
    move-result-object v0

    .line 73
    invoke-virtual {v0, v2}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    .line 74
    .line 75
    .line 76
    :cond_0
    invoke-virtual {p0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    .line 77
    .line 78
    .line 79
    move-result-object v0

    .line 80
    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    .line 81
    .line 82
    .line 83
    move-result-object v0

    .line 84
    invoke-virtual {v0, v1}, Landroid/view/View;->setSystemUiVisibility(I)V

    .line 85
    .line 86
    .line 87
    :cond_1
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    .line 88
    .line 89
    .line 90
    move-result-object p1

    .line 91
    sget v0, Lcom/haima/hmcp/R$layout;->hm_dialog_fullkeyboard:I

    .line 92
    .line 93
    const/4 v1, 0x0

    .line 94
    const/4 v2, 0x0

    .line 95
    invoke-virtual {p1, v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 96
    .line 97
    .line 98
    move-result-object p1

    .line 99
    sget v0, Lcom/haima/hmcp/R$id;->secondRoot:I

    .line 100
    .line 101
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 102
    .line 103
    .line 104
    move-result-object v0

    .line 105
    check-cast v0, Landroid/widget/FrameLayout;

    .line 106
    .line 107
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 108
    .line 109
    .line 110
    move-result-object v1

    .line 111
    check-cast v1, Landroid/widget/FrameLayout$LayoutParams;

    .line 112
    .line 113
    invoke-virtual {p2}, Landroid/view/View;->getHeight()I

    .line 114
    .line 115
    .line 116
    move-result v2

    .line 117
    int-to-float v2, v2

    .line 118
    const v3, 0x3f3b0cf8

    .line 119
    .line 120
    .line 121
    mul-float v2, v2, v3

    .line 122
    .line 123
    float-to-int v2, v2

    .line 124
    iput v2, v1, Landroid/widget/FrameLayout$LayoutParams;->height:I

    .line 125
    .line 126
    invoke-virtual {v0, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 127
    .line 128
    .line 129
    new-instance v1, Lcom/haima/hmcp/virtual/dialogs/HmVirInputKBDialog$1;

    .line 130
    .line 131
    invoke-direct {v1, p0}, Lcom/haima/hmcp/virtual/dialogs/HmVirInputKBDialog$1;-><init>(Lcom/haima/hmcp/virtual/dialogs/HmVirInputKBDialog;)V

    .line 132
    .line 133
    .line 134
    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 135
    .line 136
    .line 137
    iget-object v0, p0, Lcom/haima/hmcp/virtual/dialogs/HmVirInputKBDialog;->rtcVideoView:Lcom/haima/hmcp/widgets/AbsIjkVideoView;

    .line 138
    .line 139
    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    .line 140
    .line 141
    .line 142
    move-result v0

    .line 143
    int-to-float v0, v0

    .line 144
    const v1, 0x3d75a31e

    .line 145
    .line 146
    .line 147
    mul-float v0, v0, v1

    .line 148
    .line 149
    float-to-int v0, v0

    .line 150
    iget-object v1, p0, Lcom/haima/hmcp/virtual/dialogs/HmVirInputKBDialog;->rtcVideoView:Lcom/haima/hmcp/widgets/AbsIjkVideoView;

    .line 151
    .line 152
    invoke-virtual {v1}, Landroid/view/View;->getHeight()I

    .line 153
    .line 154
    .line 155
    move-result v1

    .line 156
    int-to-float v1, v1

    .line 157
    const v2, 0x3db9af72

    .line 158
    .line 159
    .line 160
    mul-float v1, v1, v2

    .line 161
    .line 162
    float-to-int v1, v1

    .line 163
    iget-object v2, p0, Lcom/haima/hmcp/virtual/dialogs/HmVirInputKBDialog;->rtcVideoView:Lcom/haima/hmcp/widgets/AbsIjkVideoView;

    .line 164
    .line 165
    invoke-virtual {v2}, Landroid/view/View;->getHeight()I

    .line 166
    .line 167
    .line 168
    move-result v2

    .line 169
    int-to-float v2, v2

    .line 170
    const v3, 0x3c2ec33e

    .line 171
    .line 172
    .line 173
    mul-float v2, v2, v3

    .line 174
    .line 175
    float-to-int v2, v2

    .line 176
    sget v3, Lcom/haima/hmcp/R$id;->fullKeyboardLayout:I

    .line 177
    .line 178
    invoke-virtual {p1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 179
    .line 180
    .line 181
    move-result-object v3

    .line 182
    check-cast v3, Lcom/haima/hmcp/virtual/views/HmVirFullKeyBoardLayout;

    .line 183
    .line 184
    iput-object v3, p0, Lcom/haima/hmcp/virtual/dialogs/HmVirInputKBDialog;->fullKeyboardLayout:Lcom/haima/hmcp/virtual/views/HmVirFullKeyBoardLayout;

    .line 185
    .line 186
    invoke-virtual {v3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 187
    .line 188
    .line 189
    move-result-object v3

    .line 190
    check-cast v3, Landroid/widget/FrameLayout$LayoutParams;

    .line 191
    .line 192
    iget-object v4, p0, Lcom/haima/hmcp/virtual/dialogs/HmVirInputKBDialog;->rtcVideoView:Lcom/haima/hmcp/widgets/AbsIjkVideoView;

    .line 193
    .line 194
    invoke-virtual {v4}, Landroid/view/View;->getWidth()I

    .line 195
    .line 196
    .line 197
    move-result v4

    .line 198
    mul-int/lit8 v5, v0, 0xf

    .line 199
    .line 200
    sub-int/2addr v4, v5

    .line 201
    mul-int/lit8 v6, v2, 0xe

    .line 202
    .line 203
    if-ge v4, v6, :cond_2

    .line 204
    .line 205
    div-int/lit8 v4, v4, 0xe

    .line 206
    .line 207
    int-to-float v2, v4

    .line 208
    const/high16 v4, 0x3f800000    # 1.0f

    .line 209
    .line 210
    mul-float v2, v2, v4

    .line 211
    .line 212
    float-to-int v2, v2

    .line 213
    :cond_2
    mul-int/lit8 v4, v2, 0xe

    .line 214
    .line 215
    add-int/2addr v5, v4

    .line 216
    iput v5, v3, Landroid/widget/FrameLayout$LayoutParams;->width:I

    .line 217
    .line 218
    mul-int/lit8 v4, v1, 0x6

    .line 219
    .line 220
    mul-int/lit8 v5, v2, 0x5

    .line 221
    .line 222
    add-int/2addr v4, v5

    .line 223
    iput v4, v3, Landroid/widget/FrameLayout$LayoutParams;->height:I

    .line 224
    .line 225
    iget-object v4, p0, Lcom/haima/hmcp/virtual/dialogs/HmVirInputKBDialog;->fullKeyboardLayout:Lcom/haima/hmcp/virtual/views/HmVirFullKeyBoardLayout;

    .line 226
    .line 227
    invoke-virtual {v4, v3}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 228
    .line 229
    .line 230
    iget-object v3, p0, Lcom/haima/hmcp/virtual/dialogs/HmVirInputKBDialog;->fullKeyboardLayout:Lcom/haima/hmcp/virtual/views/HmVirFullKeyBoardLayout;

    .line 231
    .line 232
    invoke-virtual {v3, v0, v1, v2}, Lcom/haima/hmcp/virtual/views/HmVirFullKeyBoardLayout;->setChildParams(III)V

    .line 233
    .line 234
    .line 235
    new-instance v0, Ljava/lang/StringBuilder;

    .line 236
    .line 237
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 238
    .line 239
    .line 240
    const-string v1, "HmVirInputKBDialog:container width:"

    .line 241
    .line 242
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 243
    .line 244
    .line 245
    iget-object v1, p0, Lcom/haima/hmcp/virtual/dialogs/HmVirInputKBDialog;->rtcVideoView:Lcom/haima/hmcp/widgets/AbsIjkVideoView;

    .line 246
    .line 247
    invoke-virtual {v1}, Landroid/view/View;->getWidth()I

    .line 248
    .line 249
    .line 250
    move-result v1

    .line 251
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 252
    .line 253
    .line 254
    const-string v1, ",container height:"

    .line 255
    .line 256
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 257
    .line 258
    .line 259
    iget-object v1, p0, Lcom/haima/hmcp/virtual/dialogs/HmVirInputKBDialog;->rtcVideoView:Lcom/haima/hmcp/widgets/AbsIjkVideoView;

    .line 260
    .line 261
    invoke-virtual {v1}, Landroid/view/View;->getHeight()I

    .line 262
    .line 263
    .line 264
    move-result v1

    .line 265
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 266
    .line 267
    .line 268
    const-string v1, ",childInterval:"

    .line 269
    .line 270
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 271
    .line 272
    .line 273
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 274
    .line 275
    .line 276
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 277
    .line 278
    .line 279
    move-result-object v0

    .line 280
    const-string v1, "12702"

    .line 281
    .line 282
    invoke-static {v1, v0}, Lcom/haima/hmcp/countly/CountlyUtil;->recordEvent(Ljava/lang/String;Ljava/lang/String;)V

    .line 283
    .line 284
    .line 285
    iget-object v0, p0, Lcom/haima/hmcp/virtual/dialogs/HmVirInputKBDialog;->fullKeyboardLayout:Lcom/haima/hmcp/virtual/views/HmVirFullKeyBoardLayout;

    .line 286
    .line 287
    new-instance v1, Lcom/haima/hmcp/virtual/dialogs/HmVirInputKBDialog$2;

    .line 288
    .line 289
    invoke-direct {v1, p0, p2}, Lcom/haima/hmcp/virtual/dialogs/HmVirInputKBDialog$2;-><init>(Lcom/haima/hmcp/virtual/dialogs/HmVirInputKBDialog;Lcom/haima/hmcp/widgets/AbsIjkVideoView;)V

    .line 290
    .line 291
    .line 292
    invoke-virtual {v0, v1}, Lcom/haima/hmcp/virtual/views/HmVirFullKeyBoardLayout;->setListener(Lcom/haima/hmcp/virtual/views/HmVirFullKeyBoardLayout$FullKBClickListener;)V

    .line 293
    .line 294
    .line 295
    new-instance p2, Lcom/haima/hmcp/virtual/dialogs/HmVirInputKBDialog$3;

    .line 296
    .line 297
    invoke-direct {p2, p0}, Lcom/haima/hmcp/virtual/dialogs/HmVirInputKBDialog$3;-><init>(Lcom/haima/hmcp/virtual/dialogs/HmVirInputKBDialog;)V

    .line 298
    .line 299
    .line 300
    invoke-virtual {p1, p2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 301
    .line 302
    .line 303
    invoke-virtual {p0, p1}, Landroid/app/Dialog;->setContentView(Landroid/view/View;)V

    .line 304
    .line 305
    .line 306
    return-void
.end method

.method static synthetic access$000(Lcom/haima/hmcp/virtual/dialogs/HmVirInputKBDialog;)Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/haima/hmcp/virtual/dialogs/HmVirInputKBDialog;->TAG:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method

.method static synthetic access$100(Lcom/haima/hmcp/virtual/dialogs/HmVirInputKBDialog;Lcom/haima/hmcp/widgets/AbsIjkVideoView;I)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/haima/hmcp/virtual/dialogs/HmVirInputKBDialog;->handleKey(Lcom/haima/hmcp/widgets/AbsIjkVideoView;I)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method private handleKey(Lcom/haima/hmcp/widgets/AbsIjkVideoView;I)V
    .locals 3

    .line 1
    if-nez p1, :cond_0

    .line 2
    .line 3
    iget-object p1, p0, Lcom/haima/hmcp/virtual/dialogs/HmVirInputKBDialog;->TAG:Ljava/lang/String;

    .line 4
    .line 5
    const-string p2, "sendKeyError:view is null"

    .line 6
    .line 7
    invoke-static {p1, p2}, Lcom/haima/hmcp/utils/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 8
    .line 9
    .line 10
    return-void

    .line 11
    :cond_0
    invoke-virtual {p1}, Lcom/haima/hmcp/widgets/AbsIjkVideoView;->isAllowInput()Z

    .line 12
    .line 13
    .line 14
    move-result v0

    .line 15
    if-nez v0, :cond_1

    .line 16
    .line 17
    iget-object p1, p0, Lcom/haima/hmcp/virtual/dialogs/HmVirInputKBDialog;->TAG:Ljava/lang/String;

    .line 18
    .line 19
    const-string p2, "not allow handle vir full keyboard event"

    .line 20
    .line 21
    invoke-static {p1, p2}, Lcom/haima/hmcp/utils/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 22
    .line 23
    .line 24
    return-void

    .line 25
    :cond_1
    const/16 v0, 0x14

    .line 26
    .line 27
    if-ne p2, v0, :cond_2

    .line 28
    .line 29
    sget-boolean p2, Lcom/haima/hmcp/virtual/views/HmVirFullKeyBoardLayout;->IS_UPPER:Z

    .line 30
    .line 31
    invoke-virtual {p1, p2}, Lcom/haima/hmcp/widgets/AbsIjkVideoView;->syncCapLock(Z)V

    .line 32
    .line 33
    .line 34
    goto :goto_0

    .line 35
    :cond_2
    invoke-static {p2}, Lcom/haima/hmcp/proto/GSSDK$OneInputOPData$InputOP;->forNumber(I)Lcom/haima/hmcp/proto/GSSDK$OneInputOPData$InputOP;

    .line 36
    .line 37
    .line 38
    move-result-object v0

    .line 39
    invoke-virtual {p1, v0}, Lcom/haima/hmcp/widgets/AbsIjkVideoView;->sendKeyCodeDown(Lcom/haima/hmcp/proto/GSSDK$OneInputOPData$InputOP;)Z

    .line 40
    .line 41
    .line 42
    new-instance v0, Lcom/haima/hmcp/virtual/dialogs/HmVirInputKBDialog$4;

    .line 43
    .line 44
    invoke-direct {v0, p0, p1, p2}, Lcom/haima/hmcp/virtual/dialogs/HmVirInputKBDialog$4;-><init>(Lcom/haima/hmcp/virtual/dialogs/HmVirInputKBDialog;Lcom/haima/hmcp/widgets/AbsIjkVideoView;I)V

    .line 45
    .line 46
    .line 47
    const-wide/16 v1, 0x10

    .line 48
    .line 49
    invoke-virtual {p1, v0, v1, v2}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 50
    .line 51
    .line 52
    :goto_0
    return-void
.end method


# virtual methods
.method public dismiss()V
    .locals 4

    .line 1
    invoke-super {p0}, Landroid/app/Dialog;->dismiss()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lcom/haima/hmcp/virtual/dialogs/HmVirInputKBDialog;->rtcVideoView:Lcom/haima/hmcp/widgets/AbsIjkVideoView;

    .line 5
    .line 6
    if-eqz v0, :cond_1

    .line 7
    .line 8
    iget-object v1, p0, Lcom/haima/hmcp/virtual/dialogs/HmVirInputKBDialog;->operateType:Lcom/haima/hmcp/widgets/beans/VirtualOperateType;

    .line 9
    .line 10
    sget-object v2, Lcom/haima/hmcp/widgets/beans/VirtualOperateType;->NONE:Lcom/haima/hmcp/widgets/beans/VirtualOperateType;

    .line 11
    .line 12
    if-eq v1, v2, :cond_1

    .line 13
    .line 14
    sget-object v2, Lcom/haima/hmcp/widgets/beans/VirtualOperateType;->VIRTUAL_KEYBOARD:Lcom/haima/hmcp/widgets/beans/VirtualOperateType;

    .line 15
    .line 16
    const/4 v3, 0x1

    .line 17
    if-ne v1, v2, :cond_0

    .line 18
    .line 19
    invoke-virtual {v0, v3}, Lcom/haima/hmcp/widgets/AbsIjkVideoView;->showVirtualKeyboardInner(Z)Z

    .line 20
    .line 21
    .line 22
    goto :goto_0

    .line 23
    :cond_0
    invoke-virtual {v0, v3}, Lcom/haima/hmcp/widgets/AbsIjkVideoView;->showVirtualStickInner(Z)Z

    .line 24
    .line 25
    .line 26
    :cond_1
    :goto_0
    return-void
.end method

.method public show()V
    .locals 4

    .line 1
    invoke-virtual {p0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-static {v0}, Lcom/haima/hmcp/utils/DialogUtils;->isContextValid(Landroid/content/Context;)Z

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    if-nez v0, :cond_0

    .line 10
    .line 11
    return-void

    .line 12
    :cond_0
    :try_start_0
    invoke-super {p0}, Landroid/app/Dialog;->show()V

    .line 13
    .line 14
    .line 15
    iget-object v0, p0, Lcom/haima/hmcp/virtual/dialogs/HmVirInputKBDialog;->TAG:Ljava/lang/String;

    .line 16
    .line 17
    new-instance v1, Ljava/lang/StringBuilder;

    .line 18
    .line 19
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 20
    .line 21
    .line 22
    const-string v2, "screen  = "

    .line 23
    .line 24
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 25
    .line 26
    .line 27
    sget-object v2, Lcom/haima/hmcp/virtual/HmVirtualDeviceManager;->rawRootPoint:Landroid/graphics/Point;

    .line 28
    .line 29
    invoke-virtual {v2}, Landroid/graphics/Point;->toString()Ljava/lang/String;

    .line 30
    .line 31
    .line 32
    move-result-object v2

    .line 33
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 34
    .line 35
    .line 36
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 37
    .line 38
    .line 39
    move-result-object v1

    .line 40
    invoke-static {v0, v1}, Lcom/haima/hmcp/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 41
    .line 42
    .line 43
    invoke-virtual {p0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    .line 44
    .line 45
    .line 46
    move-result-object v0

    .line 47
    invoke-virtual {v0}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    .line 48
    .line 49
    .line 50
    move-result-object v0

    .line 51
    sget-object v1, Lcom/haima/hmcp/virtual/HmVirtualDeviceManager;->rawRootPoint:Landroid/graphics/Point;

    .line 52
    .line 53
    iget v2, v1, Landroid/graphics/Point;->x:I

    .line 54
    .line 55
    iput v2, v0, Landroid/view/WindowManager$LayoutParams;->width:I

    .line 56
    .line 57
    iget v1, v1, Landroid/graphics/Point;->y:I

    .line 58
    .line 59
    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->height:I

    .line 60
    .line 61
    invoke-virtual {p0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    .line 62
    .line 63
    .line 64
    move-result-object v1

    .line 65
    invoke-virtual {v1, v0}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V
    :try_end_0
    .catch Landroid/view/WindowManager$BadTokenException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    .line 66
    .line 67
    .line 68
    iget-object v0, p0, Lcom/haima/hmcp/virtual/dialogs/HmVirInputKBDialog;->rtcVideoView:Lcom/haima/hmcp/widgets/AbsIjkVideoView;

    .line 69
    .line 70
    if-eqz v0, :cond_2

    .line 71
    .line 72
    invoke-virtual {v0}, Lcom/haima/hmcp/widgets/AbsIjkVideoView;->getOperateType()Lcom/haima/hmcp/widgets/beans/VirtualOperateType;

    .line 73
    .line 74
    .line 75
    move-result-object v0

    .line 76
    iput-object v0, p0, Lcom/haima/hmcp/virtual/dialogs/HmVirInputKBDialog;->operateType:Lcom/haima/hmcp/widgets/beans/VirtualOperateType;

    .line 77
    .line 78
    sget-object v1, Lcom/haima/hmcp/widgets/beans/VirtualOperateType;->VIRTUAL_KEYBOARD:Lcom/haima/hmcp/widgets/beans/VirtualOperateType;

    .line 79
    .line 80
    const/4 v2, 0x0

    .line 81
    if-ne v0, v1, :cond_1

    .line 82
    .line 83
    iget-object v0, p0, Lcom/haima/hmcp/virtual/dialogs/HmVirInputKBDialog;->rtcVideoView:Lcom/haima/hmcp/widgets/AbsIjkVideoView;

    .line 84
    .line 85
    invoke-virtual {v0, v2}, Lcom/haima/hmcp/widgets/AbsIjkVideoView;->showVirtualKeyboardInner(Z)Z

    .line 86
    .line 87
    .line 88
    goto :goto_0

    .line 89
    :cond_1
    sget-object v1, Lcom/haima/hmcp/widgets/beans/VirtualOperateType;->VIRTUAL_STICK_XBOX:Lcom/haima/hmcp/widgets/beans/VirtualOperateType;

    .line 90
    .line 91
    if-ne v0, v1, :cond_2

    .line 92
    .line 93
    iget-object v0, p0, Lcom/haima/hmcp/virtual/dialogs/HmVirInputKBDialog;->rtcVideoView:Lcom/haima/hmcp/widgets/AbsIjkVideoView;

    .line 94
    .line 95
    invoke-virtual {v0, v2}, Lcom/haima/hmcp/widgets/AbsIjkVideoView;->showVirtualStickInner(Z)Z

    .line 96
    .line 97
    .line 98
    :cond_2
    :goto_0
    return-void

    .line 99
    :catch_0
    move-exception v0

    .line 100
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 101
    .line 102
    .line 103
    return-void

    .line 104
    :catch_1
    move-exception v0

    .line 105
    iget-object v1, p0, Lcom/haima/hmcp/virtual/dialogs/HmVirInputKBDialog;->TAG:Ljava/lang/String;

    .line 106
    .line 107
    new-instance v2, Ljava/lang/StringBuilder;

    .line 108
    .line 109
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 110
    .line 111
    .line 112
    const-string v3, "BadTokenException when showing dialog: "

    .line 113
    .line 114
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 115
    .line 116
    .line 117
    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 118
    .line 119
    .line 120
    move-result-object v0

    .line 121
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 122
    .line 123
    .line 124
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 125
    .line 126
    .line 127
    move-result-object v0

    .line 128
    invoke-static {v1, v0}, Lcom/haima/hmcp/utils/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 129
    .line 130
    .line 131
    return-void
.end method

.method public updateKeyboardLayout()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/haima/hmcp/virtual/dialogs/HmVirInputKBDialog;->fullKeyboardLayout:Lcom/haima/hmcp/virtual/views/HmVirFullKeyBoardLayout;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0}, Lcom/haima/hmcp/virtual/views/HmVirFullKeyBoardLayout;->updateLayout()V

    .line 6
    .line 7
    .line 8
    :cond_0
    return-void
.end method
