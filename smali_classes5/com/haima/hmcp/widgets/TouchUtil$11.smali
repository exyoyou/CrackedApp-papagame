.class Lcom/haima/hmcp/widgets/TouchUtil$11;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnCapturedPointerListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/haima/hmcp/widgets/TouchUtil;->setPCMouseStyle(ZLcom/haima/hmcp/proto/GSSDK$GameCursor$CursorStyle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/haima/hmcp/widgets/TouchUtil;

.field final synthetic val$isUseSysMouse:Z

.field final synthetic val$useCustomMouseIcon:Z


# direct methods
.method constructor <init>(Lcom/haima/hmcp/widgets/TouchUtil;ZZ)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/haima/hmcp/widgets/TouchUtil$11;->this$0:Lcom/haima/hmcp/widgets/TouchUtil;

    .line 2
    .line 3
    iput-boolean p2, p0, Lcom/haima/hmcp/widgets/TouchUtil$11;->val$useCustomMouseIcon:Z

    .line 4
    .line 5
    iput-boolean p3, p0, Lcom/haima/hmcp/widgets/TouchUtil$11;->val$isUseSysMouse:Z

    .line 6
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method public onCapturedPointer(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 9

    .line 1
    iget-object p1, p0, Lcom/haima/hmcp/widgets/TouchUtil$11;->this$0:Lcom/haima/hmcp/widgets/TouchUtil;

    .line 2
    .line 3
    invoke-virtual {p1}, Lcom/haima/hmcp/widgets/TouchUtil;->isAllowInput()Z

    .line 4
    .line 5
    .line 6
    move-result p1

    .line 7
    const/4 v0, 0x1

    .line 8
    if-nez p1, :cond_0

    .line 9
    .line 10
    invoke-static {}, Lcom/haima/hmcp/widgets/TouchUtil;->access$800()Ljava/lang/String;

    .line 11
    .line 12
    .line 13
    move-result-object p1

    .line 14
    const-string p2, "not allow handle captured pointer motion event"

    .line 15
    .line 16
    invoke-static {p1, p2}, Lcom/haima/hmcp/utils/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 17
    .line 18
    .line 19
    return v0

    .line 20
    :cond_0
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    .line 21
    .line 22
    .line 23
    move-result p1

    .line 24
    invoke-static {p2}, Lcom/haima/hmcp/business/c;->a(Landroid/view/MotionEvent;)I

    .line 25
    .line 26
    .line 27
    move-result v1

    .line 28
    const/16 v2, 0x10

    .line 29
    .line 30
    const/16 v3, 0x8

    .line 31
    .line 32
    const/4 v4, 0x2

    .line 33
    if-eq v1, v0, :cond_1

    .line 34
    .line 35
    if-eq v1, v4, :cond_1

    .line 36
    .line 37
    const/4 v5, 0x4

    .line 38
    if-eq v1, v5, :cond_1

    .line 39
    .line 40
    if-eq v1, v2, :cond_1

    .line 41
    .line 42
    if-ne v1, v3, :cond_9

    .line 43
    .line 44
    :cond_1
    if-eq v1, v0, :cond_5

    .line 45
    .line 46
    if-eq v1, v4, :cond_4

    .line 47
    .line 48
    if-eq v1, v3, :cond_3

    .line 49
    .line 50
    if-eq v1, v2, :cond_2

    .line 51
    .line 52
    sget-object v1, Lcom/haima/hmcp/proto/GSSDK$OneInputOPData$InputOP;->OP_MOUSE_BUTTON_MIDDLE:Lcom/haima/hmcp/proto/GSSDK$OneInputOPData$InputOP;

    .line 53
    .line 54
    goto :goto_0

    .line 55
    :cond_2
    sget-object v1, Lcom/haima/hmcp/proto/GSSDK$OneInputOPData$InputOP;->OP_MOUSE_BUTTON_5:Lcom/haima/hmcp/proto/GSSDK$OneInputOPData$InputOP;

    .line 56
    .line 57
    goto :goto_0

    .line 58
    :cond_3
    sget-object v1, Lcom/haima/hmcp/proto/GSSDK$OneInputOPData$InputOP;->OP_MOUSE_BUTTON_4:Lcom/haima/hmcp/proto/GSSDK$OneInputOPData$InputOP;

    .line 59
    .line 60
    goto :goto_0

    .line 61
    :cond_4
    sget-object v1, Lcom/haima/hmcp/proto/GSSDK$OneInputOPData$InputOP;->OP_MOUSE_BUTTON_RIGHT:Lcom/haima/hmcp/proto/GSSDK$OneInputOPData$InputOP;

    .line 62
    .line 63
    goto :goto_0

    .line 64
    :cond_5
    sget-object v1, Lcom/haima/hmcp/proto/GSSDK$OneInputOPData$InputOP;->OP_MOUSE_BUTTON_LEFT:Lcom/haima/hmcp/proto/GSSDK$OneInputOPData$InputOP;

    .line 65
    .line 66
    :goto_0
    const/16 v2, 0xb

    .line 67
    .line 68
    if-ne p1, v2, :cond_6

    .line 69
    .line 70
    sget-object v2, Lcom/haima/hmcp/proto/GSSDK$OneInputOPData$InputState;->OP_STATE_DOWN:Lcom/haima/hmcp/proto/GSSDK$OneInputOPData$InputState;

    .line 71
    .line 72
    goto :goto_1

    .line 73
    :cond_6
    const/16 v2, 0xc

    .line 74
    .line 75
    if-ne p1, v2, :cond_7

    .line 76
    .line 77
    sget-object v2, Lcom/haima/hmcp/proto/GSSDK$OneInputOPData$InputState;->OP_STATE_UP:Lcom/haima/hmcp/proto/GSSDK$OneInputOPData$InputState;

    .line 78
    .line 79
    goto :goto_1

    .line 80
    :cond_7
    const/4 v2, 0x0

    .line 81
    :goto_1
    if-eqz v2, :cond_9

    .line 82
    .line 83
    sget-boolean p1, Lcom/haima/hmcp/widgets/JoyStickMappingManager;->isKeyboardMapperGamepadEnable:Z

    .line 84
    .line 85
    if-eqz p1, :cond_8

    .line 86
    .line 87
    iget-object p1, p0, Lcom/haima/hmcp/widgets/TouchUtil$11;->this$0:Lcom/haima/hmcp/widgets/TouchUtil;

    .line 88
    .line 89
    iget-object p1, p1, Lcom/haima/hmcp/widgets/TouchUtil;->mJoyStickMappingConfig:Lcom/haima/hmcp/beans/JoyStickMappingConfig;

    .line 90
    .line 91
    invoke-static {p2, p1}, Lcom/haima/hmcp/widgets/JoyStickMappingManager;->getMouseMappingButtonName(Landroid/view/MotionEvent;Lcom/haima/hmcp/beans/JoyStickMappingConfig;)Ljava/lang/String;

    .line 92
    .line 93
    .line 94
    move-result-object p1

    .line 95
    iget-object v0, p0, Lcom/haima/hmcp/widgets/TouchUtil$11;->this$0:Lcom/haima/hmcp/widgets/TouchUtil;

    .line 96
    .line 97
    invoke-static {v0, p2, p1}, Lcom/haima/hmcp/widgets/TouchUtil;->access$900(Lcom/haima/hmcp/widgets/TouchUtil;Landroid/view/MotionEvent;Ljava/lang/String;)Z

    .line 98
    .line 99
    .line 100
    move-result p1

    .line 101
    return p1

    .line 102
    :cond_8
    iget-object p1, p0, Lcom/haima/hmcp/widgets/TouchUtil$11;->this$0:Lcom/haima/hmcp/widgets/TouchUtil;

    .line 103
    .line 104
    invoke-virtual {p1, v1, v2}, Lcom/haima/hmcp/widgets/TouchUtil;->sendMouseButtonEvent(Lcom/haima/hmcp/proto/GSSDK$OneInputOPData$InputOP;Lcom/haima/hmcp/proto/GSSDK$OneInputOPData$InputState;)Z

    .line 105
    .line 106
    .line 107
    return v0

    .line 108
    :cond_9
    const/4 v1, 0x0

    .line 109
    if-ne p1, v4, :cond_e

    .line 110
    .line 111
    iget-object v2, p0, Lcom/haima/hmcp/widgets/TouchUtil$11;->this$0:Lcom/haima/hmcp/widgets/TouchUtil;

    .line 112
    .line 113
    invoke-virtual {v2}, Lcom/haima/hmcp/widgets/TouchUtil;->shouldUseReversePointerCapture()Z

    .line 114
    .line 115
    .line 116
    move-result v2

    .line 117
    if-eqz v2, :cond_a

    .line 118
    .line 119
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawY()F

    .line 120
    .line 121
    .line 122
    move-result v2

    .line 123
    neg-float v2, v2

    .line 124
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawX()F

    .line 125
    .line 126
    .line 127
    move-result v4

    .line 128
    goto :goto_2

    .line 129
    :cond_a
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawX()F

    .line 130
    .line 131
    .line 132
    move-result v2

    .line 133
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawY()F

    .line 134
    .line 135
    .line 136
    move-result v4

    .line 137
    :goto_2
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getHistorySize()I

    .line 138
    .line 139
    .line 140
    move-result v5

    .line 141
    const/4 v6, 0x0

    .line 142
    :goto_3
    if-ge v6, v5, :cond_c

    .line 143
    .line 144
    iget-object v7, p0, Lcom/haima/hmcp/widgets/TouchUtil$11;->this$0:Lcom/haima/hmcp/widgets/TouchUtil;

    .line 145
    .line 146
    invoke-virtual {v7}, Lcom/haima/hmcp/widgets/TouchUtil;->shouldUseReversePointerCapture()Z

    .line 147
    .line 148
    .line 149
    move-result v7

    .line 150
    if-eqz v7, :cond_b

    .line 151
    .line 152
    invoke-virtual {p2, v6}, Landroid/view/MotionEvent;->getHistoricalY(I)F

    .line 153
    .line 154
    .line 155
    move-result v7

    .line 156
    neg-float v7, v7

    .line 157
    invoke-virtual {p2, v6}, Landroid/view/MotionEvent;->getHistoricalX(I)F

    .line 158
    .line 159
    .line 160
    move-result v8

    .line 161
    goto :goto_4

    .line 162
    :cond_b
    invoke-virtual {p2, v6}, Landroid/view/MotionEvent;->getHistoricalX(I)F

    .line 163
    .line 164
    .line 165
    move-result v7

    .line 166
    invoke-virtual {p2, v6}, Landroid/view/MotionEvent;->getHistoricalY(I)F

    .line 167
    .line 168
    .line 169
    move-result v8

    .line 170
    :goto_4
    add-float/2addr v2, v7

    .line 171
    add-float/2addr v4, v8

    .line 172
    add-int/lit8 v6, v6, 0x1

    .line 173
    .line 174
    goto :goto_3

    .line 175
    :cond_c
    sget-boolean v5, Lcom/haima/hmcp/widgets/JoyStickMappingManager;->isKeyboardMapperGamepadEnable:Z

    .line 176
    .line 177
    if-eqz v5, :cond_d

    .line 178
    .line 179
    iget-object v2, p0, Lcom/haima/hmcp/widgets/TouchUtil$11;->this$0:Lcom/haima/hmcp/widgets/TouchUtil;

    .line 180
    .line 181
    iget-object v2, v2, Lcom/haima/hmcp/widgets/TouchUtil;->mJoyStickMappingConfig:Lcom/haima/hmcp/beans/JoyStickMappingConfig;

    .line 182
    .line 183
    if-eqz v2, :cond_e

    .line 184
    .line 185
    invoke-virtual {v2}, Lcom/haima/hmcp/beans/JoyStickMappingConfig;->isMouseConfigured()Z

    .line 186
    .line 187
    .line 188
    move-result v2

    .line 189
    if-eqz v2, :cond_e

    .line 190
    .line 191
    iget-object v2, p0, Lcom/haima/hmcp/widgets/TouchUtil$11;->this$0:Lcom/haima/hmcp/widgets/TouchUtil;

    .line 192
    .line 193
    invoke-virtual {v2, p2, v0}, Lcom/haima/hmcp/widgets/TouchUtil;->sendJoystickRockerMapping(Landroid/view/MotionEvent;Z)V

    .line 194
    .line 195
    .line 196
    goto :goto_5

    .line 197
    :cond_d
    iget-object v5, p0, Lcom/haima/hmcp/widgets/TouchUtil$11;->this$0:Lcom/haima/hmcp/widgets/TouchUtil;

    .line 198
    .line 199
    invoke-static {v5}, Lcom/haima/hmcp/widgets/TouchUtil;->access$1000(Lcom/haima/hmcp/widgets/TouchUtil;)F

    .line 200
    .line 201
    .line 202
    move-result v5

    .line 203
    mul-float v2, v2, v5

    .line 204
    .line 205
    iget-object v5, p0, Lcom/haima/hmcp/widgets/TouchUtil$11;->this$0:Lcom/haima/hmcp/widgets/TouchUtil;

    .line 206
    .line 207
    invoke-static {v5}, Lcom/haima/hmcp/widgets/TouchUtil;->access$1000(Lcom/haima/hmcp/widgets/TouchUtil;)F

    .line 208
    .line 209
    .line 210
    move-result v5

    .line 211
    mul-float v4, v4, v5

    .line 212
    .line 213
    iget-object v5, p0, Lcom/haima/hmcp/widgets/TouchUtil$11;->this$0:Lcom/haima/hmcp/widgets/TouchUtil;

    .line 214
    .line 215
    float-to-int v2, v2

    .line 216
    float-to-int v4, v4

    .line 217
    invoke-virtual {v5, v2, v4, v1}, Lcom/haima/hmcp/widgets/TouchUtil;->sendRelMouseEvent(IIZ)V

    .line 218
    .line 219
    .line 220
    :cond_e
    :goto_5
    if-ne p1, v3, :cond_f

    .line 221
    .line 222
    const/16 p1, 0x9

    .line 223
    .line 224
    invoke-virtual {p2, p1}, Landroid/view/MotionEvent;->getAxisValue(I)F

    .line 225
    .line 226
    .line 227
    move-result p1

    .line 228
    float-to-int p1, p1

    .line 229
    sget-boolean p2, Lcom/haima/hmcp/widgets/JoyStickMappingManager;->isKeyboardMapperGamepadEnable:Z

    .line 230
    .line 231
    if-nez p2, :cond_f

    .line 232
    .line 233
    iget-object p2, p0, Lcom/haima/hmcp/widgets/TouchUtil$11;->this$0:Lcom/haima/hmcp/widgets/TouchUtil;

    .line 234
    .line 235
    invoke-static {p2}, Lcom/haima/hmcp/widgets/TouchUtil;->access$500(Lcom/haima/hmcp/widgets/TouchUtil;)Lcom/haima/hmcp/widgets/AbsIjkVideoView;

    .line 236
    .line 237
    .line 238
    move-result-object p2

    .line 239
    invoke-static {p1}, Lcom/haima/hmcp/utils/ProtoBufUtil;->getMouseWheelData(I)[B

    .line 240
    .line 241
    .line 242
    move-result-object p1

    .line 243
    invoke-virtual {p2, p1}, Lcom/haima/hmcp/widgets/AbsIjkVideoView;->sendEvent([B)Z

    .line 244
    .line 245
    .line 246
    :cond_f
    iget-boolean p1, p0, Lcom/haima/hmcp/widgets/TouchUtil$11;->val$useCustomMouseIcon:Z

    .line 247
    .line 248
    if-eqz p1, :cond_10

    .line 249
    .line 250
    iget-boolean p1, p0, Lcom/haima/hmcp/widgets/TouchUtil$11;->val$isUseSysMouse:Z

    .line 251
    .line 252
    if-eqz p1, :cond_10

    .line 253
    .line 254
    goto :goto_6

    .line 255
    :cond_10
    const/4 v0, 0x0

    .line 256
    :goto_6
    return v0
.end method
