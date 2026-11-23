.class public Lcom/join/kotlin/module/hmcloud/dialog/HMGuideKeyBaseDialog;
.super Lcom/join/kotlin/module/hmcloud/dialog/HMBaseDialog;
.source "SourceFile"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000N\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u0008\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\u0008\t\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0004\u0008\u0016\u0018\u00002\u00020\u0001B\u0011\u0008\u0016\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0004\u0008\u0004\u0010\u0005B\u0019\u0008\u0016\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0006\u001a\u00020\u0007\u00a2\u0006\u0004\u0008\u0004\u0010\u0008J\u0012\u0010%\u001a\u00020\u001d2\u0008\u0010&\u001a\u0004\u0018\u00010\'H\u0014J\u0010\u0010(\u001a\u00020\u001d2\u0006\u0010)\u001a\u00020*H\u0016J\u0014\u0010+\u001a\u00020\u001d2\u000c\u0010,\u001a\u0008\u0012\u0004\u0012\u00020\u001d0\u001cJ\u0010\u0010-\u001a\u00020\u001d2\u0006\u0010)\u001a\u00020*H\u0002R\u001a\u0010\t\u001a\u00020\nX\u0086.\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u000b\u0010\u000c\"\u0004\u0008\r\u0010\u000eR\u001a\u0010\u000f\u001a\u00020\u0010X\u0086.\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0011\u0010\u0012\"\u0004\u0008\u0013\u0010\u0014R\u001a\u0010\u0015\u001a\u00020\u0016X\u0086.\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0017\u0010\u0018\"\u0004\u0008\u0019\u0010\u001aR\"\u0010\u001b\u001a\n\u0012\u0004\u0012\u00020\u001d\u0018\u00010\u001cX\u0084\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u001e\u0010\u001f\"\u0004\u0008 \u0010!R\u0014\u0010\"\u001a\u00020\u0007X\u0096D\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008#\u0010$\u00a8\u0006."
    }
    d2 = {
        "Lcom/join/kotlin/module/hmcloud/dialog/HMGuideKeyBaseDialog;",
        "Lcom/join/kotlin/module/hmcloud/dialog/HMBaseDialog;",
        "context",
        "Landroid/content/Context;",
        "<init>",
        "(Landroid/content/Context;)V",
        "themeResId",
        "",
        "(Landroid/content/Context;I)V",
        "keyContainer",
        "Landroid/widget/FrameLayout;",
        "getKeyContainer",
        "()Landroid/widget/FrameLayout;",
        "setKeyContainer",
        "(Landroid/widget/FrameLayout;)V",
        "text",
        "Landroid/widget/TextView;",
        "getText",
        "()Landroid/widget/TextView;",
        "setText",
        "(Landroid/widget/TextView;)V",
        "next",
        "Landroid/view/View;",
        "getNext",
        "()Landroid/view/View;",
        "setNext",
        "(Landroid/view/View;)V",
        "mCallback",
        "Lkotlin/Function0;",
        "",
        "getMCallback",
        "()Lkotlin/jvm/functions/Function0;",
        "setMCallback",
        "(Lkotlin/jvm/functions/Function0;)V",
        "layoutId",
        "getLayoutId",
        "()I",
        "onCreate",
        "savedInstanceState",
        "Landroid/os/Bundle;",
        "setData",
        "item",
        "Lcom/join/mgps/dto/hmcloud/HMKeyItem;",
        "setCallback",
        "callback",
        "layoutKey",
        "app_wufunNormalRelease"
    }
    k = 0x1
    mv = {
        0x2,
        0x1,
        0x0
    }
    xi = 0x30
.end annotation


# instance fields
.field public keyContainer:Landroid/widget/FrameLayout;

.field private final layoutId:I

.field private mCallback:Lkotlin/jvm/functions/Function0;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function0<",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field public next:Landroid/view/View;

.field public text:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1    # Landroid/content/Context;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0, p1}, Lcom/join/kotlin/module/hmcloud/dialog/HMBaseDialog;-><init>(Landroid/content/Context;)V

    const p1, 0x7f0d05cd

    .line 2
    iput p1, p0, Lcom/join/kotlin/module/hmcloud/dialog/HMGuideKeyBaseDialog;->layoutId:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;I)V
    .locals 1
    .param p1    # Landroid/content/Context;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3
    invoke-direct {p0, p1, p2}, Lcom/join/kotlin/module/hmcloud/dialog/HMBaseDialog;-><init>(Landroid/content/Context;I)V

    const p1, 0x7f0d05cd

    .line 4
    iput p1, p0, Lcom/join/kotlin/module/hmcloud/dialog/HMGuideKeyBaseDialog;->layoutId:I

    return-void
.end method

.method public static synthetic a(Lcom/join/kotlin/module/hmcloud/dialog/HMGuideKeyBaseDialog;Landroid/view/View;)V
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lcom/join/kotlin/module/hmcloud/dialog/HMGuideKeyBaseDialog;->onCreate$lambda$0(Lcom/join/kotlin/module/hmcloud/dialog/HMGuideKeyBaseDialog;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic b(Lcom/join/kotlin/module/hmcloud/dialog/HMGuideKeyBaseDialog;Lkotlin/jvm/functions/Function0;Landroid/view/View;)V
    .locals 0

    .line 1
    invoke-static {p0, p1, p2}, Lcom/join/kotlin/module/hmcloud/dialog/HMGuideKeyBaseDialog;->setCallback$lambda$2(Lcom/join/kotlin/module/hmcloud/dialog/HMGuideKeyBaseDialog;Lkotlin/jvm/functions/Function0;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic c(Landroid/view/View;)V
    .locals 0

    .line 1
    invoke-static {p0}, Lcom/join/kotlin/module/hmcloud/dialog/HMGuideKeyBaseDialog;->onCreate$lambda$1(Landroid/view/View;)V

    return-void
.end method

.method private final layoutKey(Lcom/join/mgps/dto/hmcloud/HMKeyItem;)V
    .locals 6

    .line 1
    invoke-virtual {p1}, Lcom/join/mgps/dto/hmcloud/HMKeyItem;->getKey()Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    sget-object v1, Lcom/join/kotlin/module/hmcloud/pad/HMKeyData;->Dpad:Lcom/join/kotlin/module/hmcloud/pad/HMKeyData;

    .line 6
    .line 7
    invoke-virtual {v1}, Lcom/join/kotlin/module/hmcloud/pad/HMKeyData;->getKey()Ljava/lang/String;

    .line 8
    .line 9
    .line 10
    move-result-object v1

    .line 11
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 12
    .line 13
    .line 14
    move-result v1

    .line 15
    const-string v2, "getContext(...)"

    .line 16
    .line 17
    const/4 v3, 0x0

    .line 18
    if-eqz v1, :cond_0

    .line 19
    .line 20
    new-instance v0, Lcom/join/kotlin/module/hmcloud/pad/HMDpadView;

    .line 21
    .line 22
    invoke-virtual {p0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    .line 23
    .line 24
    .line 25
    move-result-object v1

    .line 26
    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 27
    .line 28
    .line 29
    invoke-direct {v0, v1}, Lcom/join/kotlin/module/hmcloud/pad/HMDpadView;-><init>(Landroid/content/Context;)V

    .line 30
    .line 31
    .line 32
    invoke-virtual {v0, v3}, Lcom/join/kotlin/module/hmcloud/pad/HMControllerView;->setTouchable(Z)V

    .line 33
    .line 34
    .line 35
    goto/16 :goto_8

    .line 36
    .line 37
    :cond_0
    sget-object v1, Lcom/join/kotlin/module/hmcloud/pad/HMKeyData;->JoyL:Lcom/join/kotlin/module/hmcloud/pad/HMKeyData;

    .line 38
    .line 39
    invoke-virtual {v1}, Lcom/join/kotlin/module/hmcloud/pad/HMKeyData;->getKey()Ljava/lang/String;

    .line 40
    .line 41
    .line 42
    move-result-object v1

    .line 43
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 44
    .line 45
    .line 46
    move-result v1

    .line 47
    if-nez v1, :cond_12

    .line 48
    .line 49
    sget-object v1, Lcom/join/kotlin/module/hmcloud/pad/HMKeyData;->JoyR:Lcom/join/kotlin/module/hmcloud/pad/HMKeyData;

    .line 50
    .line 51
    invoke-virtual {v1}, Lcom/join/kotlin/module/hmcloud/pad/HMKeyData;->getKey()Ljava/lang/String;

    .line 52
    .line 53
    .line 54
    move-result-object v1

    .line 55
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 56
    .line 57
    .line 58
    move-result v1

    .line 59
    if-eqz v1, :cond_1

    .line 60
    .line 61
    goto/16 :goto_7

    .line 62
    .line 63
    :cond_1
    sget-object v1, Lcom/join/kotlin/module/hmcloud/pad/HMKeyData;->JoyDpad:Lcom/join/kotlin/module/hmcloud/pad/HMKeyData;

    .line 64
    .line 65
    invoke-virtual {v1}, Lcom/join/kotlin/module/hmcloud/pad/HMKeyData;->getKey()Ljava/lang/String;

    .line 66
    .line 67
    .line 68
    move-result-object v1

    .line 69
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 70
    .line 71
    .line 72
    move-result v1

    .line 73
    if-eqz v1, :cond_2

    .line 74
    .line 75
    new-instance v0, Lcom/join/kotlin/module/hmcloud/pad/HMAnalogDpadView;

    .line 76
    .line 77
    invoke-virtual {p0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    .line 78
    .line 79
    .line 80
    move-result-object v1

    .line 81
    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 82
    .line 83
    .line 84
    invoke-direct {v0, v1}, Lcom/join/kotlin/module/hmcloud/pad/HMAnalogDpadView;-><init>(Landroid/content/Context;)V

    .line 85
    .line 86
    .line 87
    invoke-virtual {v0, v3}, Lcom/join/kotlin/module/hmcloud/pad/HMControllerView;->setTouchable(Z)V

    .line 88
    .line 89
    .line 90
    goto/16 :goto_8

    .line 91
    .line 92
    :cond_2
    sget-object v1, Lcom/join/kotlin/module/hmcloud/pad/HMKeyData;->JoyWasd:Lcom/join/kotlin/module/hmcloud/pad/HMKeyData;

    .line 93
    .line 94
    invoke-virtual {v1}, Lcom/join/kotlin/module/hmcloud/pad/HMKeyData;->getKey()Ljava/lang/String;

    .line 95
    .line 96
    .line 97
    move-result-object v1

    .line 98
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 99
    .line 100
    .line 101
    move-result v1

    .line 102
    if-eqz v1, :cond_3

    .line 103
    .line 104
    new-instance v0, Lcom/join/kotlin/module/hmcloud/pad/HMAnalogWasdView;

    .line 105
    .line 106
    invoke-virtual {p0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    .line 107
    .line 108
    .line 109
    move-result-object v1

    .line 110
    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 111
    .line 112
    .line 113
    invoke-direct {v0, v1}, Lcom/join/kotlin/module/hmcloud/pad/HMAnalogWasdView;-><init>(Landroid/content/Context;)V

    .line 114
    .line 115
    .line 116
    invoke-virtual {v0, v3}, Lcom/join/kotlin/module/hmcloud/pad/HMControllerView;->setTouchable(Z)V

    .line 117
    .line 118
    .line 119
    goto/16 :goto_8

    .line 120
    .line 121
    :cond_3
    sget-object v1, Lcom/join/kotlin/module/hmcloud/pad/HMKeyData;->JoyArrow:Lcom/join/kotlin/module/hmcloud/pad/HMKeyData;

    .line 122
    .line 123
    invoke-virtual {v1}, Lcom/join/kotlin/module/hmcloud/pad/HMKeyData;->getKey()Ljava/lang/String;

    .line 124
    .line 125
    .line 126
    move-result-object v1

    .line 127
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 128
    .line 129
    .line 130
    move-result v1

    .line 131
    if-eqz v1, :cond_4

    .line 132
    .line 133
    new-instance v0, Lcom/join/kotlin/module/hmcloud/pad/HMAnalogArrowView;

    .line 134
    .line 135
    invoke-virtual {p0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    .line 136
    .line 137
    .line 138
    move-result-object v1

    .line 139
    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 140
    .line 141
    .line 142
    invoke-direct {v0, v1}, Lcom/join/kotlin/module/hmcloud/pad/HMAnalogArrowView;-><init>(Landroid/content/Context;)V

    .line 143
    .line 144
    .line 145
    invoke-virtual {v0, v3}, Lcom/join/kotlin/module/hmcloud/pad/HMControllerView;->setTouchable(Z)V

    .line 146
    .line 147
    .line 148
    goto/16 :goto_8

    .line 149
    .line 150
    :cond_4
    sget-object v1, Lcom/join/kotlin/module/hmcloud/pad/HMKeyData;->MouseLeft:Lcom/join/kotlin/module/hmcloud/pad/HMKeyData;

    .line 151
    .line 152
    invoke-virtual {v1}, Lcom/join/kotlin/module/hmcloud/pad/HMKeyData;->getKey()Ljava/lang/String;

    .line 153
    .line 154
    .line 155
    move-result-object v1

    .line 156
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 157
    .line 158
    .line 159
    move-result v1

    .line 160
    if-nez v1, :cond_11

    .line 161
    .line 162
    sget-object v1, Lcom/join/kotlin/module/hmcloud/pad/HMKeyData;->MouseRight:Lcom/join/kotlin/module/hmcloud/pad/HMKeyData;

    .line 163
    .line 164
    invoke-virtual {v1}, Lcom/join/kotlin/module/hmcloud/pad/HMKeyData;->getKey()Ljava/lang/String;

    .line 165
    .line 166
    .line 167
    move-result-object v1

    .line 168
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 169
    .line 170
    .line 171
    move-result v1

    .line 172
    if-nez v1, :cond_11

    .line 173
    .line 174
    sget-object v1, Lcom/join/kotlin/module/hmcloud/pad/HMKeyData;->MouseMiddle:Lcom/join/kotlin/module/hmcloud/pad/HMKeyData;

    .line 175
    .line 176
    invoke-virtual {v1}, Lcom/join/kotlin/module/hmcloud/pad/HMKeyData;->getKey()Ljava/lang/String;

    .line 177
    .line 178
    .line 179
    move-result-object v1

    .line 180
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 181
    .line 182
    .line 183
    move-result v1

    .line 184
    if-nez v1, :cond_11

    .line 185
    .line 186
    sget-object v1, Lcom/join/kotlin/module/hmcloud/pad/HMKeyData;->MouseMoveUp:Lcom/join/kotlin/module/hmcloud/pad/HMKeyData;

    .line 187
    .line 188
    invoke-virtual {v1}, Lcom/join/kotlin/module/hmcloud/pad/HMKeyData;->getKey()Ljava/lang/String;

    .line 189
    .line 190
    .line 191
    move-result-object v1

    .line 192
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 193
    .line 194
    .line 195
    move-result v1

    .line 196
    if-nez v1, :cond_11

    .line 197
    .line 198
    sget-object v1, Lcom/join/kotlin/module/hmcloud/pad/HMKeyData;->MouseMoveDown:Lcom/join/kotlin/module/hmcloud/pad/HMKeyData;

    .line 199
    .line 200
    invoke-virtual {v1}, Lcom/join/kotlin/module/hmcloud/pad/HMKeyData;->getKey()Ljava/lang/String;

    .line 201
    .line 202
    .line 203
    move-result-object v1

    .line 204
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 205
    .line 206
    .line 207
    move-result v0

    .line 208
    if-eqz v0, :cond_5

    .line 209
    .line 210
    goto/16 :goto_6

    .line 211
    .line 212
    :cond_5
    sget-object v0, Lcom/join/kotlin/module/hmcloud/pad/HMOpSkin;->Companion:Lcom/join/kotlin/module/hmcloud/pad/HMOpSkin$Companion;

    .line 213
    .line 214
    invoke-virtual {v0}, Lcom/join/kotlin/module/hmcloud/pad/HMOpSkin$Companion;->getDefault()Lcom/join/kotlin/module/hmcloud/pad/HMOpSkinWrapper;

    .line 215
    .line 216
    .line 217
    move-result-object v1

    .line 218
    instance-of v1, v1, Lcom/join/kotlin/module/hmcloud/pad/HMOpSkinDefault;

    .line 219
    .line 220
    const/4 v4, 0x1

    .line 221
    if-eqz v1, :cond_9

    .line 222
    .line 223
    invoke-virtual {v0}, Lcom/join/kotlin/module/hmcloud/pad/HMOpSkin$Companion;->getDefault()Lcom/join/kotlin/module/hmcloud/pad/HMOpSkinWrapper;

    .line 224
    .line 225
    .line 226
    move-result-object v0

    .line 227
    check-cast v0, Lcom/join/kotlin/module/hmcloud/pad/HMOpSkinDefault;

    .line 228
    .line 229
    invoke-virtual {v0}, Lcom/join/kotlin/module/hmcloud/pad/HMOpSkinDefault;->getGamepad()Ljava/util/Map;

    .line 230
    .line 231
    .line 232
    move-result-object v0

    .line 233
    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    .line 234
    .line 235
    .line 236
    move-result-object v0

    .line 237
    invoke-virtual {p1}, Lcom/join/mgps/dto/hmcloud/HMKeyItem;->getKey()Ljava/lang/String;

    .line 238
    .line 239
    .line 240
    move-result-object v1

    .line 241
    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    .line 242
    .line 243
    .line 244
    move-result v0

    .line 245
    if-eqz v0, :cond_9

    .line 246
    .line 247
    invoke-virtual {p1}, Lcom/join/mgps/dto/hmcloud/HMKeyItem;->getNickname()Ljava/lang/String;

    .line 248
    .line 249
    .line 250
    move-result-object v0

    .line 251
    if-eqz v0, :cond_7

    .line 252
    .line 253
    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    .line 254
    .line 255
    .line 256
    move-result v0

    .line 257
    if-nez v0, :cond_6

    .line 258
    .line 259
    goto :goto_0

    .line 260
    :cond_6
    const/4 v4, 0x0

    .line 261
    :cond_7
    :goto_0
    if-nez v4, :cond_8

    .line 262
    .line 263
    new-instance v0, Lcom/join/kotlin/module/hmcloud/pad/HMButtonView;

    .line 264
    .line 265
    invoke-virtual {p0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    .line 266
    .line 267
    .line 268
    move-result-object v1

    .line 269
    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 270
    .line 271
    .line 272
    invoke-direct {v0, v1}, Lcom/join/kotlin/module/hmcloud/pad/HMButtonView;-><init>(Landroid/content/Context;)V

    .line 273
    .line 274
    .line 275
    goto/16 :goto_8

    .line 276
    .line 277
    :cond_8
    new-instance v0, Landroid/widget/ImageView;

    .line 278
    .line 279
    invoke-virtual {p0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    .line 280
    .line 281
    .line 282
    move-result-object v1

    .line 283
    invoke-direct {v0, v1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 284
    .line 285
    .line 286
    sget-object v1, Landroid/widget/ImageView$ScaleType;->FIT_XY:Landroid/widget/ImageView$ScaleType;

    .line 287
    .line 288
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 289
    .line 290
    .line 291
    goto/16 :goto_8

    .line 292
    .line 293
    :cond_9
    invoke-virtual {p1}, Lcom/join/mgps/dto/hmcloud/HMKeyItem;->getCombine()Ljava/util/List;

    .line 294
    .line 295
    .line 296
    move-result-object v0

    .line 297
    if-eqz v0, :cond_a

    .line 298
    .line 299
    check-cast v0, Ljava/util/Collection;

    .line 300
    .line 301
    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    .line 302
    .line 303
    .line 304
    move-result v0

    .line 305
    xor-int/2addr v0, v4

    .line 306
    if-ne v0, v4, :cond_a

    .line 307
    .line 308
    const/4 v0, 0x1

    .line 309
    goto :goto_1

    .line 310
    :cond_a
    const/4 v0, 0x0

    .line 311
    :goto_1
    if-nez v0, :cond_10

    .line 312
    .line 313
    invoke-virtual {p1}, Lcom/join/mgps/dto/hmcloud/HMKeyItem;->getName()Ljava/lang/String;

    .line 314
    .line 315
    .line 316
    move-result-object v0

    .line 317
    if-eqz v0, :cond_c

    .line 318
    .line 319
    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    .line 320
    .line 321
    .line 322
    move-result v0

    .line 323
    if-nez v0, :cond_b

    .line 324
    .line 325
    goto :goto_2

    .line 326
    :cond_b
    const/4 v0, 0x0

    .line 327
    goto :goto_3

    .line 328
    :cond_c
    :goto_2
    const/4 v0, 0x1

    .line 329
    :goto_3
    if-eqz v0, :cond_10

    .line 330
    .line 331
    invoke-virtual {p1}, Lcom/join/mgps/dto/hmcloud/HMKeyItem;->getNickname()Ljava/lang/String;

    .line 332
    .line 333
    .line 334
    move-result-object v0

    .line 335
    if-eqz v0, :cond_e

    .line 336
    .line 337
    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    .line 338
    .line 339
    .line 340
    move-result v0

    .line 341
    if-nez v0, :cond_d

    .line 342
    .line 343
    goto :goto_4

    .line 344
    :cond_d
    const/4 v4, 0x0

    .line 345
    :cond_e
    :goto_4
    if-nez v4, :cond_f

    .line 346
    .line 347
    goto :goto_5

    .line 348
    :cond_f
    new-instance v0, Landroid/widget/ImageView;

    .line 349
    .line 350
    invoke-virtual {p0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    .line 351
    .line 352
    .line 353
    move-result-object v1

    .line 354
    invoke-direct {v0, v1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 355
    .line 356
    .line 357
    sget-object v1, Landroid/widget/ImageView$ScaleType;->FIT_XY:Landroid/widget/ImageView$ScaleType;

    .line 358
    .line 359
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 360
    .line 361
    .line 362
    goto :goto_8

    .line 363
    :cond_10
    :goto_5
    new-instance v0, Lcom/join/kotlin/module/hmcloud/pad/HMButtonView;

    .line 364
    .line 365
    invoke-virtual {p0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    .line 366
    .line 367
    .line 368
    move-result-object v1

    .line 369
    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 370
    .line 371
    .line 372
    invoke-direct {v0, v1}, Lcom/join/kotlin/module/hmcloud/pad/HMButtonView;-><init>(Landroid/content/Context;)V

    .line 373
    .line 374
    .line 375
    goto :goto_8

    .line 376
    :cond_11
    :goto_6
    new-instance v0, Lcom/join/kotlin/module/hmcloud/pad/HMButtonView;

    .line 377
    .line 378
    invoke-virtual {p0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    .line 379
    .line 380
    .line 381
    move-result-object v1

    .line 382
    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 383
    .line 384
    .line 385
    invoke-direct {v0, v1}, Lcom/join/kotlin/module/hmcloud/pad/HMButtonView;-><init>(Landroid/content/Context;)V

    .line 386
    .line 387
    .line 388
    goto :goto_8

    .line 389
    :cond_12
    :goto_7
    new-instance v0, Lcom/join/kotlin/module/hmcloud/pad/HMAnalogView;

    .line 390
    .line 391
    invoke-virtual {p0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    .line 392
    .line 393
    .line 394
    move-result-object v1

    .line 395
    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 396
    .line 397
    .line 398
    invoke-direct {v0, v1}, Lcom/join/kotlin/module/hmcloud/pad/HMAnalogView;-><init>(Landroid/content/Context;)V

    .line 399
    .line 400
    .line 401
    invoke-virtual {v0, v3}, Lcom/join/kotlin/module/hmcloud/pad/HMControllerView;->setTouchable(Z)V

    .line 402
    .line 403
    .line 404
    :goto_8
    invoke-virtual {v0, p1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 405
    .line 406
    .line 407
    instance-of v1, v0, Lcom/join/kotlin/module/hmcloud/pad/HMAnalogView;

    .line 408
    .line 409
    const v2, 0x7f071311

    .line 410
    .line 411
    .line 412
    if-nez v1, :cond_18

    .line 413
    .line 414
    instance-of v1, v0, Lcom/join/kotlin/module/hmcloud/pad/HMAnalogDpadView;

    .line 415
    .line 416
    if-eqz v1, :cond_13

    .line 417
    .line 418
    goto/16 :goto_a

    .line 419
    .line 420
    :cond_13
    if-nez v1, :cond_17

    .line 421
    .line 422
    instance-of v1, v0, Lcom/join/kotlin/module/hmcloud/pad/HMAnalogWasdView;

    .line 423
    .line 424
    if-nez v1, :cond_17

    .line 425
    .line 426
    instance-of v1, v0, Lcom/join/kotlin/module/hmcloud/pad/HMAnalogArrowView;

    .line 427
    .line 428
    if-eqz v1, :cond_14

    .line 429
    .line 430
    goto :goto_9

    .line 431
    :cond_14
    instance-of v1, v0, Lcom/join/kotlin/module/hmcloud/pad/HMButtonView;

    .line 432
    .line 433
    const v4, 0x7f0711b6

    .line 434
    .line 435
    .line 436
    if-eqz v1, :cond_15

    .line 437
    .line 438
    invoke-virtual {p0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    .line 439
    .line 440
    .line 441
    move-result-object v1

    .line 442
    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 443
    .line 444
    .line 445
    move-result-object v1

    .line 446
    invoke-virtual {v1, v4}, Landroid/content/res/Resources;->getDimension(I)F

    .line 447
    .line 448
    .line 449
    move-result v1

    .line 450
    float-to-int v1, v1

    .line 451
    new-instance v2, Landroid/widget/FrameLayout$LayoutParams;

    .line 452
    .line 453
    invoke-direct {v2, v1, v1}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 454
    .line 455
    .line 456
    move-object v1, v0

    .line 457
    check-cast v1, Lcom/join/kotlin/module/hmcloud/pad/HMButtonView;

    .line 458
    .line 459
    invoke-virtual {v1, v2}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 460
    .line 461
    .line 462
    goto/16 :goto_b

    .line 463
    .line 464
    :cond_15
    sget-object v1, Lcom/join/kotlin/module/hmcloud/pad/HMKeyData;->Companion:Lcom/join/kotlin/module/hmcloud/pad/HMKeyData$Companion;

    .line 465
    .line 466
    invoke-virtual {p1}, Lcom/join/mgps/dto/hmcloud/HMKeyItem;->getKey()Ljava/lang/String;

    .line 467
    .line 468
    .line 469
    move-result-object v5

    .line 470
    invoke-virtual {v1, v5}, Lcom/join/kotlin/module/hmcloud/pad/HMKeyData$Companion;->isShoulder(Ljava/lang/String;)Z

    .line 471
    .line 472
    .line 473
    move-result v1

    .line 474
    if-eqz v1, :cond_16

    .line 475
    .line 476
    invoke-virtual {p0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    .line 477
    .line 478
    .line 479
    move-result-object v1

    .line 480
    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 481
    .line 482
    .line 483
    move-result-object v1

    .line 484
    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimension(I)F

    .line 485
    .line 486
    .line 487
    move-result v1

    .line 488
    float-to-int v1, v1

    .line 489
    invoke-virtual {p0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    .line 490
    .line 491
    .line 492
    move-result-object v2

    .line 493
    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 494
    .line 495
    .line 496
    move-result-object v2

    .line 497
    const v4, 0x7f0715d7

    .line 498
    .line 499
    .line 500
    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getDimension(I)F

    .line 501
    .line 502
    .line 503
    move-result v2

    .line 504
    float-to-int v2, v2

    .line 505
    new-instance v4, Landroid/widget/FrameLayout$LayoutParams;

    .line 506
    .line 507
    invoke-direct {v4, v1, v2}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 508
    .line 509
    .line 510
    invoke-virtual {v0, v4}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 511
    .line 512
    .line 513
    goto :goto_b

    .line 514
    :cond_16
    invoke-virtual {p0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    .line 515
    .line 516
    .line 517
    move-result-object v1

    .line 518
    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 519
    .line 520
    .line 521
    move-result-object v1

    .line 522
    invoke-virtual {v1, v4}, Landroid/content/res/Resources;->getDimension(I)F

    .line 523
    .line 524
    .line 525
    move-result v1

    .line 526
    float-to-int v1, v1

    .line 527
    new-instance v2, Landroid/widget/FrameLayout$LayoutParams;

    .line 528
    .line 529
    invoke-direct {v2, v1, v1}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 530
    .line 531
    .line 532
    invoke-virtual {v0, v2}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 533
    .line 534
    .line 535
    goto :goto_b

    .line 536
    :cond_17
    :goto_9
    invoke-virtual {p0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    .line 537
    .line 538
    .line 539
    move-result-object v1

    .line 540
    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 541
    .line 542
    .line 543
    move-result-object v1

    .line 544
    const v2, 0x7f071332

    .line 545
    .line 546
    .line 547
    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimension(I)F

    .line 548
    .line 549
    .line 550
    move-result v1

    .line 551
    float-to-int v1, v1

    .line 552
    new-instance v2, Landroid/widget/FrameLayout$LayoutParams;

    .line 553
    .line 554
    invoke-direct {v2, v1, v1}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 555
    .line 556
    .line 557
    move-object v1, v0

    .line 558
    check-cast v1, Lcom/join/kotlin/module/hmcloud/pad/HMControllerView;

    .line 559
    .line 560
    invoke-virtual {v1, v2}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 561
    .line 562
    .line 563
    goto :goto_b

    .line 564
    :cond_18
    :goto_a
    invoke-virtual {p0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    .line 565
    .line 566
    .line 567
    move-result-object v1

    .line 568
    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 569
    .line 570
    .line 571
    move-result-object v1

    .line 572
    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimension(I)F

    .line 573
    .line 574
    .line 575
    move-result v1

    .line 576
    float-to-int v1, v1

    .line 577
    new-instance v2, Landroid/widget/FrameLayout$LayoutParams;

    .line 578
    .line 579
    invoke-direct {v2, v1, v1}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 580
    .line 581
    .line 582
    move-object v1, v0

    .line 583
    check-cast v1, Lcom/join/kotlin/module/hmcloud/pad/HMControllerView;

    .line 584
    .line 585
    invoke-virtual {v1, v2}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 586
    .line 587
    .line 588
    :goto_b
    invoke-virtual {v0, v3}, Landroid/view/View;->setClickable(Z)V

    .line 589
    .line 590
    .line 591
    invoke-virtual {p0}, Lcom/join/kotlin/module/hmcloud/dialog/HMGuideKeyBaseDialog;->getKeyContainer()Landroid/widget/FrameLayout;

    .line 592
    .line 593
    .line 594
    move-result-object v1

    .line 595
    invoke-virtual {v1}, Landroid/view/ViewGroup;->removeAllViews()V

    .line 596
    .line 597
    .line 598
    invoke-virtual {p0}, Lcom/join/kotlin/module/hmcloud/dialog/HMGuideKeyBaseDialog;->getKeyContainer()Landroid/widget/FrameLayout;

    .line 599
    .line 600
    .line 601
    move-result-object v1

    .line 602
    const/4 v2, -0x1

    .line 603
    invoke-virtual {v1, v0, v2, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;II)V

    .line 604
    .line 605
    .line 606
    sget-object v1, Lcom/join/kotlin/module/hmcloud/pad/HMOpSkin;->Companion:Lcom/join/kotlin/module/hmcloud/pad/HMOpSkin$Companion;

    .line 607
    .line 608
    invoke-virtual {v1}, Lcom/join/kotlin/module/hmcloud/pad/HMOpSkin$Companion;->getDefault()Lcom/join/kotlin/module/hmcloud/pad/HMOpSkinWrapper;

    .line 609
    .line 610
    .line 611
    move-result-object v1

    .line 612
    invoke-interface {v1, v0, p1}, Lcom/join/kotlin/module/hmcloud/pad/HMOpSkinWrapper;->load(Landroid/view/View;Lcom/join/mgps/dto/hmcloud/HMKeyItem;)V

    .line 613
    .line 614
    .line 615
    return-void
.end method

.method private static final onCreate$lambda$0(Lcom/join/kotlin/module/hmcloud/dialog/HMGuideKeyBaseDialog;Landroid/view/View;)V
    .locals 0

    .line 1
    iget-object p1, p0, Lcom/join/kotlin/module/hmcloud/dialog/HMGuideKeyBaseDialog;->mCallback:Lkotlin/jvm/functions/Function0;

    .line 2
    .line 3
    if-eqz p1, :cond_0

    .line 4
    .line 5
    invoke-interface {p1}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    .line 6
    .line 7
    .line 8
    :cond_0
    invoke-virtual {p0}, Landroid/app/Dialog;->dismiss()V

    .line 9
    .line 10
    .line 11
    return-void
.end method

.method private static final onCreate$lambda$1(Landroid/view/View;)V
    .locals 0

    return-void
.end method

.method private static final setCallback$lambda$2(Lcom/join/kotlin/module/hmcloud/dialog/HMGuideKeyBaseDialog;Lkotlin/jvm/functions/Function0;Landroid/view/View;)V
    .locals 0

    .line 1
    invoke-virtual {p0}, Landroid/app/Dialog;->dismiss()V

    .line 2
    .line 3
    .line 4
    invoke-interface {p1}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    .line 5
    .line 6
    .line 7
    return-void
.end method


# virtual methods
.method public final getKeyContainer()Landroid/widget/FrameLayout;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/kotlin/module/hmcloud/dialog/HMGuideKeyBaseDialog;->keyContainer:Landroid/widget/FrameLayout;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    return-object v0

    .line 6
    :cond_0
    const-string v0, "keyContainer"

    .line 7
    .line 8
    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    const/4 v0, 0x0

    .line 12
    return-object v0
.end method

.method public getLayoutId()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/join/kotlin/module/hmcloud/dialog/HMGuideKeyBaseDialog;->layoutId:I

    .line 2
    .line 3
    return v0
.end method

.method protected final getMCallback()Lkotlin/jvm/functions/Function0;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lkotlin/jvm/functions/Function0<",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation

    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/kotlin/module/hmcloud/dialog/HMGuideKeyBaseDialog;->mCallback:Lkotlin/jvm/functions/Function0;

    .line 2
    .line 3
    return-object v0
.end method

.method public final getNext()Landroid/view/View;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/kotlin/module/hmcloud/dialog/HMGuideKeyBaseDialog;->next:Landroid/view/View;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    return-object v0

    .line 6
    :cond_0
    const-string v0, "next"

    .line 7
    .line 8
    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    const/4 v0, 0x0

    .line 12
    return-object v0
.end method

.method public final getText()Landroid/widget/TextView;
    .locals 1
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/kotlin/module/hmcloud/dialog/HMGuideKeyBaseDialog;->text:Landroid/widget/TextView;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    return-object v0

    .line 6
    :cond_0
    const-string v0, "text"

    .line 7
    .line 8
    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    const/4 v0, 0x0

    .line 12
    return-object v0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2
    .param p1    # Landroid/os/Bundle;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    invoke-super {p0, p1}, Landroid/app/Dialog;->onCreate(Landroid/os/Bundle;)V

    .line 2
    .line 3
    .line 4
    invoke-virtual {p0}, Lcom/join/kotlin/module/hmcloud/dialog/HMGuideKeyBaseDialog;->getLayoutId()I

    .line 5
    .line 6
    .line 7
    move-result p1

    .line 8
    invoke-virtual {p0, p1}, Landroid/app/Dialog;->setContentView(I)V

    .line 9
    .line 10
    .line 11
    const p1, 0x7f0a0654

    .line 12
    .line 13
    .line 14
    invoke-virtual {p0, p1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    .line 15
    .line 16
    .line 17
    move-result-object p1

    .line 18
    check-cast p1, Landroid/widget/FrameLayout;

    .line 19
    .line 20
    invoke-virtual {p0, p1}, Lcom/join/kotlin/module/hmcloud/dialog/HMGuideKeyBaseDialog;->setKeyContainer(Landroid/widget/FrameLayout;)V

    .line 21
    .line 22
    .line 23
    const p1, 0x7f0a169a

    .line 24
    .line 25
    .line 26
    invoke-virtual {p0, p1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    .line 27
    .line 28
    .line 29
    move-result-object p1

    .line 30
    check-cast p1, Landroid/widget/TextView;

    .line 31
    .line 32
    invoke-virtual {p0, p1}, Lcom/join/kotlin/module/hmcloud/dialog/HMGuideKeyBaseDialog;->setText(Landroid/widget/TextView;)V

    .line 33
    .line 34
    .line 35
    const p1, 0x7f0a1129

    .line 36
    .line 37
    .line 38
    invoke-virtual {p0, p1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    .line 39
    .line 40
    .line 41
    move-result-object p1

    .line 42
    invoke-virtual {p0, p1}, Lcom/join/kotlin/module/hmcloud/dialog/HMGuideKeyBaseDialog;->setNext(Landroid/view/View;)V

    .line 43
    .line 44
    .line 45
    const p1, 0x7f0a0368

    .line 46
    .line 47
    .line 48
    invoke-virtual {p0, p1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    .line 49
    .line 50
    .line 51
    move-result-object p1

    .line 52
    const-string v0, "findViewById(...)"

    .line 53
    .line 54
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 55
    .line 56
    .line 57
    const v1, 0x7f0a038e

    .line 58
    .line 59
    .line 60
    invoke-virtual {p0, v1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    .line 61
    .line 62
    .line 63
    move-result-object v1

    .line 64
    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 65
    .line 66
    .line 67
    new-instance v0, Lcom/join/kotlin/module/hmcloud/dialog/f;

    .line 68
    .line 69
    invoke-direct {v0, p0}, Lcom/join/kotlin/module/hmcloud/dialog/f;-><init>(Lcom/join/kotlin/module/hmcloud/dialog/HMGuideKeyBaseDialog;)V

    .line 70
    .line 71
    .line 72
    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 73
    .line 74
    .line 75
    new-instance p1, Lcom/join/kotlin/module/hmcloud/dialog/g;

    .line 76
    .line 77
    invoke-direct {p1}, Lcom/join/kotlin/module/hmcloud/dialog/g;-><init>()V

    .line 78
    .line 79
    .line 80
    invoke-virtual {v1, p1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 81
    .line 82
    .line 83
    return-void
.end method

.method public final setCallback(Lkotlin/jvm/functions/Function0;)V
    .locals 2
    .param p1    # Lkotlin/jvm/functions/Function0;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/jvm/functions/Function0<",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    .line 1
    const-string v0, "callback"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iput-object p1, p0, Lcom/join/kotlin/module/hmcloud/dialog/HMGuideKeyBaseDialog;->mCallback:Lkotlin/jvm/functions/Function0;

    .line 7
    .line 8
    invoke-virtual {p0}, Lcom/join/kotlin/module/hmcloud/dialog/HMGuideKeyBaseDialog;->getNext()Landroid/view/View;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    new-instance v1, Lcom/join/kotlin/module/hmcloud/dialog/e;

    .line 13
    .line 14
    invoke-direct {v1, p0, p1}, Lcom/join/kotlin/module/hmcloud/dialog/e;-><init>(Lcom/join/kotlin/module/hmcloud/dialog/HMGuideKeyBaseDialog;Lkotlin/jvm/functions/Function0;)V

    .line 15
    .line 16
    .line 17
    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 18
    .line 19
    .line 20
    return-void
.end method

.method public setData(Lcom/join/mgps/dto/hmcloud/HMKeyItem;)V
    .locals 6
    .param p1    # Lcom/join/mgps/dto/hmcloud/HMKeyItem;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    const-string v0, "item"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p1}, Lcom/join/mgps/dto/hmcloud/HMKeyItem;->getNickname()Ljava/lang/String;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    const/4 v1, 0x0

    .line 11
    const/4 v2, 0x1

    .line 12
    if-eqz v0, :cond_1

    .line 13
    .line 14
    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    .line 15
    .line 16
    .line 17
    move-result v0

    .line 18
    if-nez v0, :cond_0

    .line 19
    .line 20
    goto :goto_0

    .line 21
    :cond_0
    const/4 v0, 0x0

    .line 22
    goto :goto_1

    .line 23
    :cond_1
    :goto_0
    const/4 v0, 0x1

    .line 24
    :goto_1
    if-nez v0, :cond_2

    .line 25
    .line 26
    invoke-virtual {p1}, Lcom/join/mgps/dto/hmcloud/HMKeyItem;->getNickname()Ljava/lang/String;

    .line 27
    .line 28
    .line 29
    move-result-object v0

    .line 30
    goto :goto_2

    .line 31
    :cond_2
    invoke-virtual {p1}, Lcom/join/mgps/dto/hmcloud/HMKeyItem;->getName()Ljava/lang/String;

    .line 32
    .line 33
    .line 34
    move-result-object v0

    .line 35
    :goto_2
    const/4 v3, 0x0

    .line 36
    if-eqz v0, :cond_4

    .line 37
    .line 38
    :try_start_0
    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    .line 39
    .line 40
    .line 41
    move-result v4

    .line 42
    if-nez v4, :cond_3

    .line 43
    .line 44
    goto :goto_3

    .line 45
    :cond_3
    const/4 v4, 0x0

    .line 46
    goto :goto_4

    .line 47
    :catch_0
    move-exception v4

    .line 48
    goto :goto_5

    .line 49
    :cond_4
    :goto_3
    const/4 v4, 0x1

    .line 50
    :goto_4
    if-eqz v4, :cond_6

    .line 51
    .line 52
    sget-object v4, Lcom/join/kotlin/module/hmcloud/pad/HMKeyData;->Companion:Lcom/join/kotlin/module/hmcloud/pad/HMKeyData$Companion;

    .line 53
    .line 54
    invoke-virtual {p1}, Lcom/join/mgps/dto/hmcloud/HMKeyItem;->getKey()Ljava/lang/String;

    .line 55
    .line 56
    .line 57
    move-result-object v5

    .line 58
    invoke-virtual {v4, v5}, Lcom/join/kotlin/module/hmcloud/pad/HMKeyData$Companion;->parse(Ljava/lang/String;)Lcom/join/kotlin/module/hmcloud/pad/HMKeyData;

    .line 59
    .line 60
    .line 61
    move-result-object v4

    .line 62
    if-eqz v4, :cond_5

    .line 63
    .line 64
    invoke-virtual {v4}, Lcom/join/kotlin/module/hmcloud/pad/HMKeyData;->getNickname()Ljava/lang/String;

    .line 65
    .line 66
    .line 67
    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 68
    goto :goto_6

    .line 69
    :cond_5
    move-object v0, v3

    .line 70
    goto :goto_6

    .line 71
    :goto_5
    invoke-virtual {v4}, Ljava/lang/Throwable;->printStackTrace()V

    .line 72
    .line 73
    .line 74
    :cond_6
    :goto_6
    invoke-virtual {p1}, Lcom/join/mgps/dto/hmcloud/HMKeyItem;->getGuide()Lcom/join/mgps/dto/hmcloud/HMKeyItem$Guide;

    .line 75
    .line 76
    .line 77
    move-result-object v4

    .line 78
    if-eqz v4, :cond_7

    .line 79
    .line 80
    invoke-virtual {v4}, Lcom/join/mgps/dto/hmcloud/HMKeyItem$Guide;->getText()Ljava/lang/String;

    .line 81
    .line 82
    .line 83
    move-result-object v3

    .line 84
    :cond_7
    if-eqz v3, :cond_8

    .line 85
    .line 86
    invoke-interface {v3}, Ljava/lang/CharSequence;->length()I

    .line 87
    .line 88
    .line 89
    move-result v3

    .line 90
    if-nez v3, :cond_9

    .line 91
    .line 92
    :cond_8
    const/4 v1, 0x1

    .line 93
    :cond_9
    if-eqz v1, :cond_a

    .line 94
    .line 95
    new-instance v1, Ljava/lang/StringBuilder;

    .line 96
    .line 97
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 98
    .line 99
    .line 100
    const-string v2, "\u70b9\u51fb\u8be5\u952e\uff0c\u53ef\u6267\u884c\u3010"

    .line 101
    .line 102
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 103
    .line 104
    .line 105
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 106
    .line 107
    .line 108
    const-string v0, "\u3011\u64cd\u4f5c"

    .line 109
    .line 110
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 111
    .line 112
    .line 113
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 114
    .line 115
    .line 116
    move-result-object v0

    .line 117
    goto :goto_7

    .line 118
    :cond_a
    invoke-virtual {p1}, Lcom/join/mgps/dto/hmcloud/HMKeyItem;->getGuide()Lcom/join/mgps/dto/hmcloud/HMKeyItem$Guide;

    .line 119
    .line 120
    .line 121
    move-result-object v0

    .line 122
    if-eqz v0, :cond_b

    .line 123
    .line 124
    invoke-virtual {v0}, Lcom/join/mgps/dto/hmcloud/HMKeyItem$Guide;->getText()Ljava/lang/String;

    .line 125
    .line 126
    .line 127
    move-result-object v0

    .line 128
    if-nez v0, :cond_c

    .line 129
    .line 130
    :cond_b
    const-string v0, ""

    .line 131
    .line 132
    :cond_c
    :goto_7
    invoke-virtual {p0}, Lcom/join/kotlin/module/hmcloud/dialog/HMGuideKeyBaseDialog;->getText()Landroid/widget/TextView;

    .line 133
    .line 134
    .line 135
    move-result-object v1

    .line 136
    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 137
    .line 138
    .line 139
    invoke-direct {p0, p1}, Lcom/join/kotlin/module/hmcloud/dialog/HMGuideKeyBaseDialog;->layoutKey(Lcom/join/mgps/dto/hmcloud/HMKeyItem;)V

    .line 140
    .line 141
    .line 142
    return-void
.end method

.method public final setKeyContainer(Landroid/widget/FrameLayout;)V
    .locals 1
    .param p1    # Landroid/widget/FrameLayout;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    const-string v0, "<set-?>"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iput-object p1, p0, Lcom/join/kotlin/module/hmcloud/dialog/HMGuideKeyBaseDialog;->keyContainer:Landroid/widget/FrameLayout;

    .line 7
    .line 8
    return-void
.end method

.method protected final setMCallback(Lkotlin/jvm/functions/Function0;)V
    .locals 0
    .param p1    # Lkotlin/jvm/functions/Function0;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/jvm/functions/Function0<",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/join/kotlin/module/hmcloud/dialog/HMGuideKeyBaseDialog;->mCallback:Lkotlin/jvm/functions/Function0;

    .line 2
    .line 3
    return-void
.end method

.method public final setNext(Landroid/view/View;)V
    .locals 1
    .param p1    # Landroid/view/View;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    const-string v0, "<set-?>"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iput-object p1, p0, Lcom/join/kotlin/module/hmcloud/dialog/HMGuideKeyBaseDialog;->next:Landroid/view/View;

    .line 7
    .line 8
    return-void
.end method

.method public final setText(Landroid/widget/TextView;)V
    .locals 1
    .param p1    # Landroid/widget/TextView;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    const-string v0, "<set-?>"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iput-object p1, p0, Lcom/join/kotlin/module/hmcloud/dialog/HMGuideKeyBaseDialog;->text:Landroid/widget/TextView;

    .line 7
    .line 8
    return-void
.end method
