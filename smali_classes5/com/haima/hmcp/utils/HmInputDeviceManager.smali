.class public Lcom/haima/hmcp/utils/HmInputDeviceManager;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/haima/hmcp/utils/HmInputDeviceManager$Vendor;,
        Lcom/haima/hmcp/utils/HmInputDeviceManager$OnDeviceConnectStatusListener;
    }
.end annotation


# static fields
.field private static final JOYSTICK_CHECK_DELAY_MS:I = 0x64

.field private static TAG:Ljava/lang/String; = "HmInputDeviceManager"

.field private static final VIBRATOR_TAG:Ljava/lang/String;

.field private static inputDeviceListener:Landroid/hardware/input/InputManager$InputDeviceListener;

.field private static keyBoardMaps:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Lcom/haima/hmcp/proto/GSSDK$OneInputOPData$InputOP;",
            ">;"
        }
    .end annotation
.end field

.field private static mGamePads:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap<",
            "Lcom/haima/hmcp/beans/InputDeviceInfo;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private static final mHandler:Landroid/os/Handler;

.field private static mHistoryGamePads:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap<",
            "Lcom/haima/hmcp/beans/InputDeviceInfo;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private static mInputManager:Landroid/hardware/input/InputManager;

.field private static final mJoySticks:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap<",
            "Ljava/lang/Integer;",
            "Lcom/haima/hmcp/beans/JoyStickBean;",
            ">;"
        }
    .end annotation
.end field

.field private static usedIndicesPS:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private static usedIndicesXbox:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 4
    .line 5
    .line 6
    sget-object v1, Lcom/haima/hmcp/utils/HmInputDeviceManager;->TAG:Ljava/lang/String;

    .line 7
    .line 8
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 9
    .line 10
    .line 11
    const-string v1, "_VIBRATOR"

    .line 12
    .line 13
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 14
    .line 15
    .line 16
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 17
    .line 18
    .line 19
    move-result-object v0

    .line 20
    sput-object v0, Lcom/haima/hmcp/utils/HmInputDeviceManager;->VIBRATOR_TAG:Ljava/lang/String;

    .line 21
    .line 22
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    .line 23
    .line 24
    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    .line 25
    .line 26
    .line 27
    sput-object v0, Lcom/haima/hmcp/utils/HmInputDeviceManager;->mGamePads:Ljava/util/concurrent/ConcurrentHashMap;

    .line 28
    .line 29
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    .line 30
    .line 31
    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    .line 32
    .line 33
    .line 34
    sput-object v0, Lcom/haima/hmcp/utils/HmInputDeviceManager;->mHistoryGamePads:Ljava/util/concurrent/ConcurrentHashMap;

    .line 35
    .line 36
    new-instance v0, Ljava/util/HashMap;

    .line 37
    .line 38
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 39
    .line 40
    .line 41
    sput-object v0, Lcom/haima/hmcp/utils/HmInputDeviceManager;->keyBoardMaps:Ljava/util/Map;

    .line 42
    .line 43
    new-instance v0, Ljava/util/HashSet;

    .line 44
    .line 45
    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 46
    .line 47
    .line 48
    sput-object v0, Lcom/haima/hmcp/utils/HmInputDeviceManager;->usedIndicesPS:Ljava/util/Set;

    .line 49
    .line 50
    new-instance v0, Ljava/util/HashSet;

    .line 51
    .line 52
    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 53
    .line 54
    .line 55
    sput-object v0, Lcom/haima/hmcp/utils/HmInputDeviceManager;->usedIndicesXbox:Ljava/util/Set;

    .line 56
    .line 57
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    .line 58
    .line 59
    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    .line 60
    .line 61
    .line 62
    sput-object v0, Lcom/haima/hmcp/utils/HmInputDeviceManager;->mJoySticks:Ljava/util/concurrent/ConcurrentHashMap;

    .line 63
    .line 64
    const/4 v0, 0x0

    .line 65
    sput-object v0, Lcom/haima/hmcp/utils/HmInputDeviceManager;->mInputManager:Landroid/hardware/input/InputManager;

    .line 66
    .line 67
    new-instance v0, Landroid/os/Handler;

    .line 68
    .line 69
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    .line 70
    .line 71
    .line 72
    move-result-object v1

    .line 73
    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 74
    .line 75
    .line 76
    sput-object v0, Lcom/haima/hmcp/utils/HmInputDeviceManager;->mHandler:Landroid/os/Handler;

    .line 77
    .line 78
    sget-object v0, Lcom/haima/hmcp/utils/HmInputDeviceManager;->keyBoardMaps:Ljava/util/Map;

    .line 79
    .line 80
    const/16 v1, 0x6f

    .line 81
    .line 82
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 83
    .line 84
    .line 85
    move-result-object v1

    .line 86
    sget-object v2, Lcom/haima/hmcp/proto/GSSDK$OneInputOPData$InputOP;->OP_KEY_VK_ESCAPE:Lcom/haima/hmcp/proto/GSSDK$OneInputOPData$InputOP;

    .line 87
    .line 88
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 89
    .line 90
    .line 91
    sget-object v0, Lcom/haima/hmcp/utils/HmInputDeviceManager;->keyBoardMaps:Ljava/util/Map;

    .line 92
    .line 93
    const/4 v1, 0x4

    .line 94
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 95
    .line 96
    .line 97
    move-result-object v1

    .line 98
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 99
    .line 100
    .line 101
    sget-object v0, Lcom/haima/hmcp/utils/HmInputDeviceManager;->keyBoardMaps:Ljava/util/Map;

    .line 102
    .line 103
    const/16 v1, 0x83

    .line 104
    .line 105
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 106
    .line 107
    .line 108
    move-result-object v1

    .line 109
    sget-object v2, Lcom/haima/hmcp/proto/GSSDK$OneInputOPData$InputOP;->OP_KEY_VK_F1:Lcom/haima/hmcp/proto/GSSDK$OneInputOPData$InputOP;

    .line 110
    .line 111
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 112
    .line 113
    .line 114
    sget-object v0, Lcom/haima/hmcp/utils/HmInputDeviceManager;->keyBoardMaps:Ljava/util/Map;

    .line 115
    .line 116
    const/16 v1, 0x84

    .line 117
    .line 118
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 119
    .line 120
    .line 121
    move-result-object v1

    .line 122
    sget-object v2, Lcom/haima/hmcp/proto/GSSDK$OneInputOPData$InputOP;->OP_KEY_VK_F2:Lcom/haima/hmcp/proto/GSSDK$OneInputOPData$InputOP;

    .line 123
    .line 124
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 125
    .line 126
    .line 127
    sget-object v0, Lcom/haima/hmcp/utils/HmInputDeviceManager;->keyBoardMaps:Ljava/util/Map;

    .line 128
    .line 129
    const/16 v1, 0x85

    .line 130
    .line 131
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 132
    .line 133
    .line 134
    move-result-object v1

    .line 135
    sget-object v2, Lcom/haima/hmcp/proto/GSSDK$OneInputOPData$InputOP;->OP_KEY_VK_F3:Lcom/haima/hmcp/proto/GSSDK$OneInputOPData$InputOP;

    .line 136
    .line 137
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 138
    .line 139
    .line 140
    sget-object v0, Lcom/haima/hmcp/utils/HmInputDeviceManager;->keyBoardMaps:Ljava/util/Map;

    .line 141
    .line 142
    const/16 v1, 0x86

    .line 143
    .line 144
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 145
    .line 146
    .line 147
    move-result-object v1

    .line 148
    sget-object v2, Lcom/haima/hmcp/proto/GSSDK$OneInputOPData$InputOP;->OP_KEY_VK_F4:Lcom/haima/hmcp/proto/GSSDK$OneInputOPData$InputOP;

    .line 149
    .line 150
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 151
    .line 152
    .line 153
    sget-object v0, Lcom/haima/hmcp/utils/HmInputDeviceManager;->keyBoardMaps:Ljava/util/Map;

    .line 154
    .line 155
    const/16 v1, 0x87

    .line 156
    .line 157
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 158
    .line 159
    .line 160
    move-result-object v1

    .line 161
    sget-object v2, Lcom/haima/hmcp/proto/GSSDK$OneInputOPData$InputOP;->OP_KEY_VK_F5:Lcom/haima/hmcp/proto/GSSDK$OneInputOPData$InputOP;

    .line 162
    .line 163
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 164
    .line 165
    .line 166
    sget-object v0, Lcom/haima/hmcp/utils/HmInputDeviceManager;->keyBoardMaps:Ljava/util/Map;

    .line 167
    .line 168
    const/16 v1, 0x88

    .line 169
    .line 170
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 171
    .line 172
    .line 173
    move-result-object v1

    .line 174
    sget-object v2, Lcom/haima/hmcp/proto/GSSDK$OneInputOPData$InputOP;->OP_KEY_VK_F6:Lcom/haima/hmcp/proto/GSSDK$OneInputOPData$InputOP;

    .line 175
    .line 176
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 177
    .line 178
    .line 179
    sget-object v0, Lcom/haima/hmcp/utils/HmInputDeviceManager;->keyBoardMaps:Ljava/util/Map;

    .line 180
    .line 181
    const/16 v1, 0x89

    .line 182
    .line 183
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 184
    .line 185
    .line 186
    move-result-object v1

    .line 187
    sget-object v2, Lcom/haima/hmcp/proto/GSSDK$OneInputOPData$InputOP;->OP_KEY_VK_F7:Lcom/haima/hmcp/proto/GSSDK$OneInputOPData$InputOP;

    .line 188
    .line 189
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 190
    .line 191
    .line 192
    sget-object v0, Lcom/haima/hmcp/utils/HmInputDeviceManager;->keyBoardMaps:Ljava/util/Map;

    .line 193
    .line 194
    const/16 v1, 0x8a

    .line 195
    .line 196
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 197
    .line 198
    .line 199
    move-result-object v1

    .line 200
    sget-object v2, Lcom/haima/hmcp/proto/GSSDK$OneInputOPData$InputOP;->OP_KEY_VK_F8:Lcom/haima/hmcp/proto/GSSDK$OneInputOPData$InputOP;

    .line 201
    .line 202
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 203
    .line 204
    .line 205
    sget-object v0, Lcom/haima/hmcp/utils/HmInputDeviceManager;->keyBoardMaps:Ljava/util/Map;

    .line 206
    .line 207
    const/16 v1, 0x8b

    .line 208
    .line 209
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 210
    .line 211
    .line 212
    move-result-object v1

    .line 213
    sget-object v2, Lcom/haima/hmcp/proto/GSSDK$OneInputOPData$InputOP;->OP_KEY_VK_F9:Lcom/haima/hmcp/proto/GSSDK$OneInputOPData$InputOP;

    .line 214
    .line 215
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 216
    .line 217
    .line 218
    sget-object v0, Lcom/haima/hmcp/utils/HmInputDeviceManager;->keyBoardMaps:Ljava/util/Map;

    .line 219
    .line 220
    const/16 v1, 0x8c

    .line 221
    .line 222
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 223
    .line 224
    .line 225
    move-result-object v1

    .line 226
    sget-object v2, Lcom/haima/hmcp/proto/GSSDK$OneInputOPData$InputOP;->OP_KEY_VK_F10:Lcom/haima/hmcp/proto/GSSDK$OneInputOPData$InputOP;

    .line 227
    .line 228
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 229
    .line 230
    .line 231
    sget-object v0, Lcom/haima/hmcp/utils/HmInputDeviceManager;->keyBoardMaps:Ljava/util/Map;

    .line 232
    .line 233
    const/16 v1, 0x8d

    .line 234
    .line 235
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 236
    .line 237
    .line 238
    move-result-object v1

    .line 239
    sget-object v2, Lcom/haima/hmcp/proto/GSSDK$OneInputOPData$InputOP;->OP_KEY_VK_F11:Lcom/haima/hmcp/proto/GSSDK$OneInputOPData$InputOP;

    .line 240
    .line 241
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 242
    .line 243
    .line 244
    sget-object v0, Lcom/haima/hmcp/utils/HmInputDeviceManager;->keyBoardMaps:Ljava/util/Map;

    .line 245
    .line 246
    const/16 v1, 0x8e

    .line 247
    .line 248
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 249
    .line 250
    .line 251
    move-result-object v1

    .line 252
    sget-object v2, Lcom/haima/hmcp/proto/GSSDK$OneInputOPData$InputOP;->OP_KEY_VK_F12:Lcom/haima/hmcp/proto/GSSDK$OneInputOPData$InputOP;

    .line 253
    .line 254
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 255
    .line 256
    .line 257
    sget-object v0, Lcom/haima/hmcp/utils/HmInputDeviceManager;->keyBoardMaps:Ljava/util/Map;

    .line 258
    .line 259
    const/16 v1, 0x44

    .line 260
    .line 261
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 262
    .line 263
    .line 264
    move-result-object v1

    .line 265
    sget-object v2, Lcom/haima/hmcp/proto/GSSDK$OneInputOPData$InputOP;->OP_KEY_VK_OEM_3:Lcom/haima/hmcp/proto/GSSDK$OneInputOPData$InputOP;

    .line 266
    .line 267
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 268
    .line 269
    .line 270
    sget-object v0, Lcom/haima/hmcp/utils/HmInputDeviceManager;->keyBoardMaps:Ljava/util/Map;

    .line 271
    .line 272
    const/16 v1, 0x8

    .line 273
    .line 274
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 275
    .line 276
    .line 277
    move-result-object v1

    .line 278
    sget-object v2, Lcom/haima/hmcp/proto/GSSDK$OneInputOPData$InputOP;->OP_KEY_KEY_1:Lcom/haima/hmcp/proto/GSSDK$OneInputOPData$InputOP;

    .line 279
    .line 280
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 281
    .line 282
    .line 283
    sget-object v0, Lcom/haima/hmcp/utils/HmInputDeviceManager;->keyBoardMaps:Ljava/util/Map;

    .line 284
    .line 285
    const/16 v1, 0x9

    .line 286
    .line 287
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 288
    .line 289
    .line 290
    move-result-object v1

    .line 291
    sget-object v2, Lcom/haima/hmcp/proto/GSSDK$OneInputOPData$InputOP;->OP_KEY_KEY_2:Lcom/haima/hmcp/proto/GSSDK$OneInputOPData$InputOP;

    .line 292
    .line 293
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 294
    .line 295
    .line 296
    sget-object v0, Lcom/haima/hmcp/utils/HmInputDeviceManager;->keyBoardMaps:Ljava/util/Map;

    .line 297
    .line 298
    const/16 v1, 0xa

    .line 299
    .line 300
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 301
    .line 302
    .line 303
    move-result-object v1

    .line 304
    sget-object v2, Lcom/haima/hmcp/proto/GSSDK$OneInputOPData$InputOP;->OP_KEY_KEY_3:Lcom/haima/hmcp/proto/GSSDK$OneInputOPData$InputOP;

    .line 305
    .line 306
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 307
    .line 308
    .line 309
    sget-object v0, Lcom/haima/hmcp/utils/HmInputDeviceManager;->keyBoardMaps:Ljava/util/Map;

    .line 310
    .line 311
    const/16 v1, 0xb

    .line 312
    .line 313
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 314
    .line 315
    .line 316
    move-result-object v1

    .line 317
    sget-object v2, Lcom/haima/hmcp/proto/GSSDK$OneInputOPData$InputOP;->OP_KEY_KEY_4:Lcom/haima/hmcp/proto/GSSDK$OneInputOPData$InputOP;

    .line 318
    .line 319
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 320
    .line 321
    .line 322
    sget-object v0, Lcom/haima/hmcp/utils/HmInputDeviceManager;->keyBoardMaps:Ljava/util/Map;

    .line 323
    .line 324
    const/16 v1, 0xc

    .line 325
    .line 326
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 327
    .line 328
    .line 329
    move-result-object v1

    .line 330
    sget-object v2, Lcom/haima/hmcp/proto/GSSDK$OneInputOPData$InputOP;->OP_KEY_KEY_5:Lcom/haima/hmcp/proto/GSSDK$OneInputOPData$InputOP;

    .line 331
    .line 332
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 333
    .line 334
    .line 335
    sget-object v0, Lcom/haima/hmcp/utils/HmInputDeviceManager;->keyBoardMaps:Ljava/util/Map;

    .line 336
    .line 337
    const/16 v1, 0xd

    .line 338
    .line 339
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 340
    .line 341
    .line 342
    move-result-object v1

    .line 343
    sget-object v2, Lcom/haima/hmcp/proto/GSSDK$OneInputOPData$InputOP;->OP_KEY_KEY_6:Lcom/haima/hmcp/proto/GSSDK$OneInputOPData$InputOP;

    .line 344
    .line 345
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 346
    .line 347
    .line 348
    sget-object v0, Lcom/haima/hmcp/utils/HmInputDeviceManager;->keyBoardMaps:Ljava/util/Map;

    .line 349
    .line 350
    const/16 v1, 0xe

    .line 351
    .line 352
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 353
    .line 354
    .line 355
    move-result-object v1

    .line 356
    sget-object v2, Lcom/haima/hmcp/proto/GSSDK$OneInputOPData$InputOP;->OP_KEY_KEY_7:Lcom/haima/hmcp/proto/GSSDK$OneInputOPData$InputOP;

    .line 357
    .line 358
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 359
    .line 360
    .line 361
    sget-object v0, Lcom/haima/hmcp/utils/HmInputDeviceManager;->keyBoardMaps:Ljava/util/Map;

    .line 362
    .line 363
    const/16 v1, 0xf

    .line 364
    .line 365
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 366
    .line 367
    .line 368
    move-result-object v1

    .line 369
    sget-object v2, Lcom/haima/hmcp/proto/GSSDK$OneInputOPData$InputOP;->OP_KEY_KEY_8:Lcom/haima/hmcp/proto/GSSDK$OneInputOPData$InputOP;

    .line 370
    .line 371
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 372
    .line 373
    .line 374
    sget-object v0, Lcom/haima/hmcp/utils/HmInputDeviceManager;->keyBoardMaps:Ljava/util/Map;

    .line 375
    .line 376
    const/16 v1, 0x10

    .line 377
    .line 378
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 379
    .line 380
    .line 381
    move-result-object v1

    .line 382
    sget-object v2, Lcom/haima/hmcp/proto/GSSDK$OneInputOPData$InputOP;->OP_KEY_KEY_9:Lcom/haima/hmcp/proto/GSSDK$OneInputOPData$InputOP;

    .line 383
    .line 384
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 385
    .line 386
    .line 387
    sget-object v0, Lcom/haima/hmcp/utils/HmInputDeviceManager;->keyBoardMaps:Ljava/util/Map;

    .line 388
    .line 389
    const/4 v1, 0x7

    .line 390
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 391
    .line 392
    .line 393
    move-result-object v1

    .line 394
    sget-object v2, Lcom/haima/hmcp/proto/GSSDK$OneInputOPData$InputOP;->OP_KEY_KEY_0:Lcom/haima/hmcp/proto/GSSDK$OneInputOPData$InputOP;

    .line 395
    .line 396
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 397
    .line 398
    .line 399
    sget-object v0, Lcom/haima/hmcp/utils/HmInputDeviceManager;->keyBoardMaps:Ljava/util/Map;

    .line 400
    .line 401
    const/16 v1, 0x45

    .line 402
    .line 403
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 404
    .line 405
    .line 406
    move-result-object v1

    .line 407
    sget-object v2, Lcom/haima/hmcp/proto/GSSDK$OneInputOPData$InputOP;->OP_KEY_VK_OEM_MINUS:Lcom/haima/hmcp/proto/GSSDK$OneInputOPData$InputOP;

    .line 408
    .line 409
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 410
    .line 411
    .line 412
    sget-object v0, Lcom/haima/hmcp/utils/HmInputDeviceManager;->keyBoardMaps:Ljava/util/Map;

    .line 413
    .line 414
    const/16 v1, 0x46

    .line 415
    .line 416
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 417
    .line 418
    .line 419
    move-result-object v1

    .line 420
    sget-object v2, Lcom/haima/hmcp/proto/GSSDK$OneInputOPData$InputOP;->OP_KEY_VK_OEM_PLUS:Lcom/haima/hmcp/proto/GSSDK$OneInputOPData$InputOP;

    .line 421
    .line 422
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 423
    .line 424
    .line 425
    sget-object v0, Lcom/haima/hmcp/utils/HmInputDeviceManager;->keyBoardMaps:Ljava/util/Map;

    .line 426
    .line 427
    const/16 v1, 0x43

    .line 428
    .line 429
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 430
    .line 431
    .line 432
    move-result-object v1

    .line 433
    sget-object v2, Lcom/haima/hmcp/proto/GSSDK$OneInputOPData$InputOP;->OP_KEY_VK_BACK:Lcom/haima/hmcp/proto/GSSDK$OneInputOPData$InputOP;

    .line 434
    .line 435
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 436
    .line 437
    .line 438
    sget-object v0, Lcom/haima/hmcp/utils/HmInputDeviceManager;->keyBoardMaps:Ljava/util/Map;

    .line 439
    .line 440
    const/16 v1, 0x70

    .line 441
    .line 442
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 443
    .line 444
    .line 445
    move-result-object v1

    .line 446
    sget-object v2, Lcom/haima/hmcp/proto/GSSDK$OneInputOPData$InputOP;->OP_KEY_VK_DELETE:Lcom/haima/hmcp/proto/GSSDK$OneInputOPData$InputOP;

    .line 447
    .line 448
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 449
    .line 450
    .line 451
    sget-object v0, Lcom/haima/hmcp/utils/HmInputDeviceManager;->keyBoardMaps:Ljava/util/Map;

    .line 452
    .line 453
    const/16 v1, 0x3d

    .line 454
    .line 455
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 456
    .line 457
    .line 458
    move-result-object v1

    .line 459
    sget-object v2, Lcom/haima/hmcp/proto/GSSDK$OneInputOPData$InputOP;->OP_KEY_VK_TAB:Lcom/haima/hmcp/proto/GSSDK$OneInputOPData$InputOP;

    .line 460
    .line 461
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 462
    .line 463
    .line 464
    sget-object v0, Lcom/haima/hmcp/utils/HmInputDeviceManager;->keyBoardMaps:Ljava/util/Map;

    .line 465
    .line 466
    const/16 v1, 0x2d

    .line 467
    .line 468
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 469
    .line 470
    .line 471
    move-result-object v1

    .line 472
    sget-object v2, Lcom/haima/hmcp/proto/GSSDK$OneInputOPData$InputOP;->OP_KEY_KEY_Q:Lcom/haima/hmcp/proto/GSSDK$OneInputOPData$InputOP;

    .line 473
    .line 474
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 475
    .line 476
    .line 477
    sget-object v0, Lcom/haima/hmcp/utils/HmInputDeviceManager;->keyBoardMaps:Ljava/util/Map;

    .line 478
    .line 479
    const/16 v1, 0x33

    .line 480
    .line 481
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 482
    .line 483
    .line 484
    move-result-object v1

    .line 485
    sget-object v2, Lcom/haima/hmcp/proto/GSSDK$OneInputOPData$InputOP;->OP_KEY_KEY_W:Lcom/haima/hmcp/proto/GSSDK$OneInputOPData$InputOP;

    .line 486
    .line 487
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 488
    .line 489
    .line 490
    sget-object v0, Lcom/haima/hmcp/utils/HmInputDeviceManager;->keyBoardMaps:Ljava/util/Map;

    .line 491
    .line 492
    const/16 v1, 0x21

    .line 493
    .line 494
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 495
    .line 496
    .line 497
    move-result-object v1

    .line 498
    sget-object v2, Lcom/haima/hmcp/proto/GSSDK$OneInputOPData$InputOP;->OP_KEY_KEY_E:Lcom/haima/hmcp/proto/GSSDK$OneInputOPData$InputOP;

    .line 499
    .line 500
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 501
    .line 502
    .line 503
    sget-object v0, Lcom/haima/hmcp/utils/HmInputDeviceManager;->keyBoardMaps:Ljava/util/Map;

    .line 504
    .line 505
    const/16 v1, 0x2e

    .line 506
    .line 507
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 508
    .line 509
    .line 510
    move-result-object v1

    .line 511
    sget-object v2, Lcom/haima/hmcp/proto/GSSDK$OneInputOPData$InputOP;->OP_KEY_KEY_R:Lcom/haima/hmcp/proto/GSSDK$OneInputOPData$InputOP;

    .line 512
    .line 513
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 514
    .line 515
    .line 516
    sget-object v0, Lcom/haima/hmcp/utils/HmInputDeviceManager;->keyBoardMaps:Ljava/util/Map;

    .line 517
    .line 518
    const/16 v1, 0x30

    .line 519
    .line 520
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 521
    .line 522
    .line 523
    move-result-object v1

    .line 524
    sget-object v2, Lcom/haima/hmcp/proto/GSSDK$OneInputOPData$InputOP;->OP_KEY_KEY_T:Lcom/haima/hmcp/proto/GSSDK$OneInputOPData$InputOP;

    .line 525
    .line 526
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 527
    .line 528
    .line 529
    sget-object v0, Lcom/haima/hmcp/utils/HmInputDeviceManager;->keyBoardMaps:Ljava/util/Map;

    .line 530
    .line 531
    const/16 v1, 0x35

    .line 532
    .line 533
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 534
    .line 535
    .line 536
    move-result-object v1

    .line 537
    sget-object v2, Lcom/haima/hmcp/proto/GSSDK$OneInputOPData$InputOP;->OP_KEY_KEY_Y:Lcom/haima/hmcp/proto/GSSDK$OneInputOPData$InputOP;

    .line 538
    .line 539
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 540
    .line 541
    .line 542
    sget-object v0, Lcom/haima/hmcp/utils/HmInputDeviceManager;->keyBoardMaps:Ljava/util/Map;

    .line 543
    .line 544
    const/16 v1, 0x31

    .line 545
    .line 546
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 547
    .line 548
    .line 549
    move-result-object v1

    .line 550
    sget-object v2, Lcom/haima/hmcp/proto/GSSDK$OneInputOPData$InputOP;->OP_KEY_KEY_U:Lcom/haima/hmcp/proto/GSSDK$OneInputOPData$InputOP;

    .line 551
    .line 552
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 553
    .line 554
    .line 555
    sget-object v0, Lcom/haima/hmcp/utils/HmInputDeviceManager;->keyBoardMaps:Ljava/util/Map;

    .line 556
    .line 557
    const/16 v1, 0x25

    .line 558
    .line 559
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 560
    .line 561
    .line 562
    move-result-object v1

    .line 563
    sget-object v2, Lcom/haima/hmcp/proto/GSSDK$OneInputOPData$InputOP;->OP_KEY_KEY_I:Lcom/haima/hmcp/proto/GSSDK$OneInputOPData$InputOP;

    .line 564
    .line 565
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 566
    .line 567
    .line 568
    sget-object v0, Lcom/haima/hmcp/utils/HmInputDeviceManager;->keyBoardMaps:Ljava/util/Map;

    .line 569
    .line 570
    const/16 v1, 0x2b

    .line 571
    .line 572
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 573
    .line 574
    .line 575
    move-result-object v1

    .line 576
    sget-object v2, Lcom/haima/hmcp/proto/GSSDK$OneInputOPData$InputOP;->OP_KEY_KEY_O:Lcom/haima/hmcp/proto/GSSDK$OneInputOPData$InputOP;

    .line 577
    .line 578
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 579
    .line 580
    .line 581
    sget-object v0, Lcom/haima/hmcp/utils/HmInputDeviceManager;->keyBoardMaps:Ljava/util/Map;

    .line 582
    .line 583
    const/16 v1, 0x2c

    .line 584
    .line 585
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 586
    .line 587
    .line 588
    move-result-object v1

    .line 589
    sget-object v2, Lcom/haima/hmcp/proto/GSSDK$OneInputOPData$InputOP;->OP_KEY_KEY_P:Lcom/haima/hmcp/proto/GSSDK$OneInputOPData$InputOP;

    .line 590
    .line 591
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 592
    .line 593
    .line 594
    sget-object v0, Lcom/haima/hmcp/utils/HmInputDeviceManager;->keyBoardMaps:Ljava/util/Map;

    .line 595
    .line 596
    const/16 v1, 0x47

    .line 597
    .line 598
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 599
    .line 600
    .line 601
    move-result-object v1

    .line 602
    sget-object v2, Lcom/haima/hmcp/proto/GSSDK$OneInputOPData$InputOP;->OP_KEY_VK_OEM_4:Lcom/haima/hmcp/proto/GSSDK$OneInputOPData$InputOP;

    .line 603
    .line 604
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 605
    .line 606
    .line 607
    sget-object v0, Lcom/haima/hmcp/utils/HmInputDeviceManager;->keyBoardMaps:Ljava/util/Map;

    .line 608
    .line 609
    const/16 v1, 0x48

    .line 610
    .line 611
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 612
    .line 613
    .line 614
    move-result-object v1

    .line 615
    sget-object v2, Lcom/haima/hmcp/proto/GSSDK$OneInputOPData$InputOP;->OP_KEY_VK_OEM_6:Lcom/haima/hmcp/proto/GSSDK$OneInputOPData$InputOP;

    .line 616
    .line 617
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 618
    .line 619
    .line 620
    sget-object v0, Lcom/haima/hmcp/utils/HmInputDeviceManager;->keyBoardMaps:Ljava/util/Map;

    .line 621
    .line 622
    const/16 v1, 0x49

    .line 623
    .line 624
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 625
    .line 626
    .line 627
    move-result-object v1

    .line 628
    sget-object v2, Lcom/haima/hmcp/proto/GSSDK$OneInputOPData$InputOP;->OP_KEY_VK_OEM_5:Lcom/haima/hmcp/proto/GSSDK$OneInputOPData$InputOP;

    .line 629
    .line 630
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 631
    .line 632
    .line 633
    sget-object v0, Lcom/haima/hmcp/utils/HmInputDeviceManager;->keyBoardMaps:Ljava/util/Map;

    .line 634
    .line 635
    const/16 v1, 0x73

    .line 636
    .line 637
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 638
    .line 639
    .line 640
    move-result-object v1

    .line 641
    sget-object v2, Lcom/haima/hmcp/proto/GSSDK$OneInputOPData$InputOP;->OP_KEY_VK_CAPITAL:Lcom/haima/hmcp/proto/GSSDK$OneInputOPData$InputOP;

    .line 642
    .line 643
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 644
    .line 645
    .line 646
    sget-object v0, Lcom/haima/hmcp/utils/HmInputDeviceManager;->keyBoardMaps:Ljava/util/Map;

    .line 647
    .line 648
    const/16 v1, 0x1d

    .line 649
    .line 650
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 651
    .line 652
    .line 653
    move-result-object v1

    .line 654
    sget-object v2, Lcom/haima/hmcp/proto/GSSDK$OneInputOPData$InputOP;->OP_KEY_KEY_A:Lcom/haima/hmcp/proto/GSSDK$OneInputOPData$InputOP;

    .line 655
    .line 656
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 657
    .line 658
    .line 659
    sget-object v0, Lcom/haima/hmcp/utils/HmInputDeviceManager;->keyBoardMaps:Ljava/util/Map;

    .line 660
    .line 661
    const/16 v1, 0x2f

    .line 662
    .line 663
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 664
    .line 665
    .line 666
    move-result-object v1

    .line 667
    sget-object v2, Lcom/haima/hmcp/proto/GSSDK$OneInputOPData$InputOP;->OP_KEY_KEY_S:Lcom/haima/hmcp/proto/GSSDK$OneInputOPData$InputOP;

    .line 668
    .line 669
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 670
    .line 671
    .line 672
    sget-object v0, Lcom/haima/hmcp/utils/HmInputDeviceManager;->keyBoardMaps:Ljava/util/Map;

    .line 673
    .line 674
    const/16 v1, 0x20

    .line 675
    .line 676
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 677
    .line 678
    .line 679
    move-result-object v1

    .line 680
    sget-object v2, Lcom/haima/hmcp/proto/GSSDK$OneInputOPData$InputOP;->OP_KEY_KEY_D:Lcom/haima/hmcp/proto/GSSDK$OneInputOPData$InputOP;

    .line 681
    .line 682
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 683
    .line 684
    .line 685
    sget-object v0, Lcom/haima/hmcp/utils/HmInputDeviceManager;->keyBoardMaps:Ljava/util/Map;

    .line 686
    .line 687
    const/16 v1, 0x22

    .line 688
    .line 689
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 690
    .line 691
    .line 692
    move-result-object v1

    .line 693
    sget-object v2, Lcom/haima/hmcp/proto/GSSDK$OneInputOPData$InputOP;->OP_KEY_KEY_F:Lcom/haima/hmcp/proto/GSSDK$OneInputOPData$InputOP;

    .line 694
    .line 695
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 696
    .line 697
    .line 698
    sget-object v0, Lcom/haima/hmcp/utils/HmInputDeviceManager;->keyBoardMaps:Ljava/util/Map;

    .line 699
    .line 700
    const/16 v1, 0x23

    .line 701
    .line 702
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 703
    .line 704
    .line 705
    move-result-object v1

    .line 706
    sget-object v2, Lcom/haima/hmcp/proto/GSSDK$OneInputOPData$InputOP;->OP_KEY_KEY_G:Lcom/haima/hmcp/proto/GSSDK$OneInputOPData$InputOP;

    .line 707
    .line 708
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 709
    .line 710
    .line 711
    sget-object v0, Lcom/haima/hmcp/utils/HmInputDeviceManager;->keyBoardMaps:Ljava/util/Map;

    .line 712
    .line 713
    const/16 v1, 0x24

    .line 714
    .line 715
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 716
    .line 717
    .line 718
    move-result-object v1

    .line 719
    sget-object v2, Lcom/haima/hmcp/proto/GSSDK$OneInputOPData$InputOP;->OP_KEY_KEY_H:Lcom/haima/hmcp/proto/GSSDK$OneInputOPData$InputOP;

    .line 720
    .line 721
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 722
    .line 723
    .line 724
    sget-object v0, Lcom/haima/hmcp/utils/HmInputDeviceManager;->keyBoardMaps:Ljava/util/Map;

    .line 725
    .line 726
    const/16 v1, 0x26

    .line 727
    .line 728
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 729
    .line 730
    .line 731
    move-result-object v1

    .line 732
    sget-object v2, Lcom/haima/hmcp/proto/GSSDK$OneInputOPData$InputOP;->OP_KEY_KEY_J:Lcom/haima/hmcp/proto/GSSDK$OneInputOPData$InputOP;

    .line 733
    .line 734
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 735
    .line 736
    .line 737
    sget-object v0, Lcom/haima/hmcp/utils/HmInputDeviceManager;->keyBoardMaps:Ljava/util/Map;

    .line 738
    .line 739
    const/16 v1, 0x27

    .line 740
    .line 741
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 742
    .line 743
    .line 744
    move-result-object v1

    .line 745
    sget-object v2, Lcom/haima/hmcp/proto/GSSDK$OneInputOPData$InputOP;->OP_KEY_KEY_K:Lcom/haima/hmcp/proto/GSSDK$OneInputOPData$InputOP;

    .line 746
    .line 747
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 748
    .line 749
    .line 750
    sget-object v0, Lcom/haima/hmcp/utils/HmInputDeviceManager;->keyBoardMaps:Ljava/util/Map;

    .line 751
    .line 752
    const/16 v1, 0x28

    .line 753
    .line 754
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 755
    .line 756
    .line 757
    move-result-object v1

    .line 758
    sget-object v2, Lcom/haima/hmcp/proto/GSSDK$OneInputOPData$InputOP;->OP_KEY_KEY_L:Lcom/haima/hmcp/proto/GSSDK$OneInputOPData$InputOP;

    .line 759
    .line 760
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 761
    .line 762
    .line 763
    sget-object v0, Lcom/haima/hmcp/utils/HmInputDeviceManager;->keyBoardMaps:Ljava/util/Map;

    .line 764
    .line 765
    const/16 v1, 0x4a

    .line 766
    .line 767
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 768
    .line 769
    .line 770
    move-result-object v1

    .line 771
    sget-object v2, Lcom/haima/hmcp/proto/GSSDK$OneInputOPData$InputOP;->OP_KEY_VK_OEM_1:Lcom/haima/hmcp/proto/GSSDK$OneInputOPData$InputOP;

    .line 772
    .line 773
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 774
    .line 775
    .line 776
    sget-object v0, Lcom/haima/hmcp/utils/HmInputDeviceManager;->keyBoardMaps:Ljava/util/Map;

    .line 777
    .line 778
    const/16 v1, 0x4b

    .line 779
    .line 780
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 781
    .line 782
    .line 783
    move-result-object v1

    .line 784
    sget-object v2, Lcom/haima/hmcp/proto/GSSDK$OneInputOPData$InputOP;->OP_KEY_VK_OEM_7:Lcom/haima/hmcp/proto/GSSDK$OneInputOPData$InputOP;

    .line 785
    .line 786
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 787
    .line 788
    .line 789
    sget-object v0, Lcom/haima/hmcp/utils/HmInputDeviceManager;->keyBoardMaps:Ljava/util/Map;

    .line 790
    .line 791
    const/16 v1, 0x42

    .line 792
    .line 793
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 794
    .line 795
    .line 796
    move-result-object v1

    .line 797
    sget-object v2, Lcom/haima/hmcp/proto/GSSDK$OneInputOPData$InputOP;->OP_KEY_VK_RETURN:Lcom/haima/hmcp/proto/GSSDK$OneInputOPData$InputOP;

    .line 798
    .line 799
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 800
    .line 801
    .line 802
    sget-object v0, Lcom/haima/hmcp/utils/HmInputDeviceManager;->keyBoardMaps:Ljava/util/Map;

    .line 803
    .line 804
    const/16 v1, 0x3b

    .line 805
    .line 806
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 807
    .line 808
    .line 809
    move-result-object v1

    .line 810
    sget-object v3, Lcom/haima/hmcp/proto/GSSDK$OneInputOPData$InputOP;->OP_KEY_VK_SHIFT:Lcom/haima/hmcp/proto/GSSDK$OneInputOPData$InputOP;

    .line 811
    .line 812
    invoke-interface {v0, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 813
    .line 814
    .line 815
    sget-object v0, Lcom/haima/hmcp/utils/HmInputDeviceManager;->keyBoardMaps:Ljava/util/Map;

    .line 816
    .line 817
    const/16 v1, 0x36

    .line 818
    .line 819
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 820
    .line 821
    .line 822
    move-result-object v1

    .line 823
    sget-object v3, Lcom/haima/hmcp/proto/GSSDK$OneInputOPData$InputOP;->OP_KEY_KEY_Z:Lcom/haima/hmcp/proto/GSSDK$OneInputOPData$InputOP;

    .line 824
    .line 825
    invoke-interface {v0, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 826
    .line 827
    .line 828
    sget-object v0, Lcom/haima/hmcp/utils/HmInputDeviceManager;->keyBoardMaps:Ljava/util/Map;

    .line 829
    .line 830
    const/16 v1, 0x34

    .line 831
    .line 832
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 833
    .line 834
    .line 835
    move-result-object v1

    .line 836
    sget-object v3, Lcom/haima/hmcp/proto/GSSDK$OneInputOPData$InputOP;->OP_KEY_KEY_X:Lcom/haima/hmcp/proto/GSSDK$OneInputOPData$InputOP;

    .line 837
    .line 838
    invoke-interface {v0, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 839
    .line 840
    .line 841
    sget-object v0, Lcom/haima/hmcp/utils/HmInputDeviceManager;->keyBoardMaps:Ljava/util/Map;

    .line 842
    .line 843
    const/16 v1, 0x1f

    .line 844
    .line 845
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 846
    .line 847
    .line 848
    move-result-object v1

    .line 849
    sget-object v3, Lcom/haima/hmcp/proto/GSSDK$OneInputOPData$InputOP;->OP_KEY_KEY_C:Lcom/haima/hmcp/proto/GSSDK$OneInputOPData$InputOP;

    .line 850
    .line 851
    invoke-interface {v0, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 852
    .line 853
    .line 854
    sget-object v0, Lcom/haima/hmcp/utils/HmInputDeviceManager;->keyBoardMaps:Ljava/util/Map;

    .line 855
    .line 856
    const/16 v1, 0x32

    .line 857
    .line 858
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 859
    .line 860
    .line 861
    move-result-object v1

    .line 862
    sget-object v3, Lcom/haima/hmcp/proto/GSSDK$OneInputOPData$InputOP;->OP_KEY_KEY_V:Lcom/haima/hmcp/proto/GSSDK$OneInputOPData$InputOP;

    .line 863
    .line 864
    invoke-interface {v0, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 865
    .line 866
    .line 867
    sget-object v0, Lcom/haima/hmcp/utils/HmInputDeviceManager;->keyBoardMaps:Ljava/util/Map;

    .line 868
    .line 869
    const/16 v1, 0x1e

    .line 870
    .line 871
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 872
    .line 873
    .line 874
    move-result-object v1

    .line 875
    sget-object v3, Lcom/haima/hmcp/proto/GSSDK$OneInputOPData$InputOP;->OP_KEY_KEY_B:Lcom/haima/hmcp/proto/GSSDK$OneInputOPData$InputOP;

    .line 876
    .line 877
    invoke-interface {v0, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 878
    .line 879
    .line 880
    sget-object v0, Lcom/haima/hmcp/utils/HmInputDeviceManager;->keyBoardMaps:Ljava/util/Map;

    .line 881
    .line 882
    const/16 v1, 0x2a

    .line 883
    .line 884
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 885
    .line 886
    .line 887
    move-result-object v1

    .line 888
    sget-object v3, Lcom/haima/hmcp/proto/GSSDK$OneInputOPData$InputOP;->OP_KEY_KEY_N:Lcom/haima/hmcp/proto/GSSDK$OneInputOPData$InputOP;

    .line 889
    .line 890
    invoke-interface {v0, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 891
    .line 892
    .line 893
    sget-object v0, Lcom/haima/hmcp/utils/HmInputDeviceManager;->keyBoardMaps:Ljava/util/Map;

    .line 894
    .line 895
    const/16 v1, 0x29

    .line 896
    .line 897
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 898
    .line 899
    .line 900
    move-result-object v1

    .line 901
    sget-object v3, Lcom/haima/hmcp/proto/GSSDK$OneInputOPData$InputOP;->OP_KEY_KEY_M:Lcom/haima/hmcp/proto/GSSDK$OneInputOPData$InputOP;

    .line 902
    .line 903
    invoke-interface {v0, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 904
    .line 905
    .line 906
    sget-object v0, Lcom/haima/hmcp/utils/HmInputDeviceManager;->keyBoardMaps:Ljava/util/Map;

    .line 907
    .line 908
    const/16 v1, 0x37

    .line 909
    .line 910
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 911
    .line 912
    .line 913
    move-result-object v1

    .line 914
    sget-object v3, Lcom/haima/hmcp/proto/GSSDK$OneInputOPData$InputOP;->OP_KEY_VK_OEM_COMMA:Lcom/haima/hmcp/proto/GSSDK$OneInputOPData$InputOP;

    .line 915
    .line 916
    invoke-interface {v0, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 917
    .line 918
    .line 919
    sget-object v0, Lcom/haima/hmcp/utils/HmInputDeviceManager;->keyBoardMaps:Ljava/util/Map;

    .line 920
    .line 921
    const/16 v1, 0x38

    .line 922
    .line 923
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 924
    .line 925
    .line 926
    move-result-object v1

    .line 927
    sget-object v3, Lcom/haima/hmcp/proto/GSSDK$OneInputOPData$InputOP;->OP_KEY_VK_OEM_PERIOD:Lcom/haima/hmcp/proto/GSSDK$OneInputOPData$InputOP;

    .line 928
    .line 929
    invoke-interface {v0, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 930
    .line 931
    .line 932
    sget-object v0, Lcom/haima/hmcp/utils/HmInputDeviceManager;->keyBoardMaps:Ljava/util/Map;

    .line 933
    .line 934
    const/16 v1, 0x4c

    .line 935
    .line 936
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 937
    .line 938
    .line 939
    move-result-object v1

    .line 940
    sget-object v3, Lcom/haima/hmcp/proto/GSSDK$OneInputOPData$InputOP;->OP_KEY_VK_OEM_2:Lcom/haima/hmcp/proto/GSSDK$OneInputOPData$InputOP;

    .line 941
    .line 942
    invoke-interface {v0, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 943
    .line 944
    .line 945
    sget-object v0, Lcom/haima/hmcp/utils/HmInputDeviceManager;->keyBoardMaps:Ljava/util/Map;

    .line 946
    .line 947
    const/16 v1, 0x3c

    .line 948
    .line 949
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 950
    .line 951
    .line 952
    move-result-object v1

    .line 953
    sget-object v3, Lcom/haima/hmcp/proto/GSSDK$OneInputOPData$InputOP;->OP_KEY_VK_RSHIFT:Lcom/haima/hmcp/proto/GSSDK$OneInputOPData$InputOP;

    .line 954
    .line 955
    invoke-interface {v0, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 956
    .line 957
    .line 958
    sget-object v0, Lcom/haima/hmcp/utils/HmInputDeviceManager;->keyBoardMaps:Ljava/util/Map;

    .line 959
    .line 960
    const/16 v1, 0x71

    .line 961
    .line 962
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 963
    .line 964
    .line 965
    move-result-object v1

    .line 966
    sget-object v3, Lcom/haima/hmcp/proto/GSSDK$OneInputOPData$InputOP;->OP_KEY_VK_CONTROL:Lcom/haima/hmcp/proto/GSSDK$OneInputOPData$InputOP;

    .line 967
    .line 968
    invoke-interface {v0, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 969
    .line 970
    .line 971
    sget-object v0, Lcom/haima/hmcp/utils/HmInputDeviceManager;->keyBoardMaps:Ljava/util/Map;

    .line 972
    .line 973
    const/16 v1, 0x39

    .line 974
    .line 975
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 976
    .line 977
    .line 978
    move-result-object v1

    .line 979
    sget-object v3, Lcom/haima/hmcp/proto/GSSDK$OneInputOPData$InputOP;->OP_KEY_VK_MENU:Lcom/haima/hmcp/proto/GSSDK$OneInputOPData$InputOP;

    .line 980
    .line 981
    invoke-interface {v0, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 982
    .line 983
    .line 984
    sget-object v0, Lcom/haima/hmcp/utils/HmInputDeviceManager;->keyBoardMaps:Ljava/util/Map;

    .line 985
    .line 986
    const/16 v1, 0x3e

    .line 987
    .line 988
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 989
    .line 990
    .line 991
    move-result-object v1

    .line 992
    sget-object v3, Lcom/haima/hmcp/proto/GSSDK$OneInputOPData$InputOP;->OP_KEY_VK_SPACE:Lcom/haima/hmcp/proto/GSSDK$OneInputOPData$InputOP;

    .line 993
    .line 994
    invoke-interface {v0, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 995
    .line 996
    .line 997
    sget-object v0, Lcom/haima/hmcp/utils/HmInputDeviceManager;->keyBoardMaps:Ljava/util/Map;

    .line 998
    .line 999
    const/16 v1, 0x3a

    .line 1000
    .line 1001
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 1002
    .line 1003
    .line 1004
    move-result-object v1

    .line 1005
    sget-object v3, Lcom/haima/hmcp/proto/GSSDK$OneInputOPData$InputOP;->OP_KEY_VK_RMENU:Lcom/haima/hmcp/proto/GSSDK$OneInputOPData$InputOP;

    .line 1006
    .line 1007
    invoke-interface {v0, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1008
    .line 1009
    .line 1010
    sget-object v0, Lcom/haima/hmcp/utils/HmInputDeviceManager;->keyBoardMaps:Ljava/util/Map;

    .line 1011
    .line 1012
    const/16 v1, 0x13

    .line 1013
    .line 1014
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 1015
    .line 1016
    .line 1017
    move-result-object v1

    .line 1018
    sget-object v3, Lcom/haima/hmcp/proto/GSSDK$OneInputOPData$InputOP;->OP_KEY_VK_UP:Lcom/haima/hmcp/proto/GSSDK$OneInputOPData$InputOP;

    .line 1019
    .line 1020
    invoke-interface {v0, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1021
    .line 1022
    .line 1023
    sget-object v0, Lcom/haima/hmcp/utils/HmInputDeviceManager;->keyBoardMaps:Ljava/util/Map;

    .line 1024
    .line 1025
    const/16 v1, 0x72

    .line 1026
    .line 1027
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 1028
    .line 1029
    .line 1030
    move-result-object v1

    .line 1031
    sget-object v3, Lcom/haima/hmcp/proto/GSSDK$OneInputOPData$InputOP;->OP_KEY_VK_RCONTROL:Lcom/haima/hmcp/proto/GSSDK$OneInputOPData$InputOP;

    .line 1032
    .line 1033
    invoke-interface {v0, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1034
    .line 1035
    .line 1036
    sget-object v0, Lcom/haima/hmcp/utils/HmInputDeviceManager;->keyBoardMaps:Ljava/util/Map;

    .line 1037
    .line 1038
    const/16 v1, 0xab

    .line 1039
    .line 1040
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 1041
    .line 1042
    .line 1043
    move-result-object v1

    .line 1044
    sget-object v3, Lcom/haima/hmcp/proto/GSSDK$OneInputOPData$InputOP;->OP_KEY_VK_RWIN:Lcom/haima/hmcp/proto/GSSDK$OneInputOPData$InputOP;

    .line 1045
    .line 1046
    invoke-interface {v0, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1047
    .line 1048
    .line 1049
    sget-object v0, Lcom/haima/hmcp/utils/HmInputDeviceManager;->keyBoardMaps:Ljava/util/Map;

    .line 1050
    .line 1051
    const/16 v1, 0x75

    .line 1052
    .line 1053
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 1054
    .line 1055
    .line 1056
    move-result-object v1

    .line 1057
    sget-object v4, Lcom/haima/hmcp/proto/GSSDK$OneInputOPData$InputOP;->OP_KEY_VK_LWIN:Lcom/haima/hmcp/proto/GSSDK$OneInputOPData$InputOP;

    .line 1058
    .line 1059
    invoke-interface {v0, v1, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1060
    .line 1061
    .line 1062
    sget-object v0, Lcom/haima/hmcp/utils/HmInputDeviceManager;->keyBoardMaps:Ljava/util/Map;

    .line 1063
    .line 1064
    const/16 v1, 0x76

    .line 1065
    .line 1066
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 1067
    .line 1068
    .line 1069
    move-result-object v1

    .line 1070
    invoke-interface {v0, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1071
    .line 1072
    .line 1073
    sget-object v0, Lcom/haima/hmcp/utils/HmInputDeviceManager;->keyBoardMaps:Ljava/util/Map;

    .line 1074
    .line 1075
    const/16 v1, 0x52

    .line 1076
    .line 1077
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 1078
    .line 1079
    .line 1080
    move-result-object v1

    .line 1081
    sget-object v3, Lcom/haima/hmcp/proto/GSSDK$OneInputOPData$InputOP;->OP_KEY_VK_APPS:Lcom/haima/hmcp/proto/GSSDK$OneInputOPData$InputOP;

    .line 1082
    .line 1083
    invoke-interface {v0, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1084
    .line 1085
    .line 1086
    sget-object v0, Lcom/haima/hmcp/utils/HmInputDeviceManager;->keyBoardMaps:Ljava/util/Map;

    .line 1087
    .line 1088
    const/16 v1, 0x14

    .line 1089
    .line 1090
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 1091
    .line 1092
    .line 1093
    move-result-object v1

    .line 1094
    sget-object v3, Lcom/haima/hmcp/proto/GSSDK$OneInputOPData$InputOP;->OP_KEY_VK_DOWN:Lcom/haima/hmcp/proto/GSSDK$OneInputOPData$InputOP;

    .line 1095
    .line 1096
    invoke-interface {v0, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1097
    .line 1098
    .line 1099
    sget-object v0, Lcom/haima/hmcp/utils/HmInputDeviceManager;->keyBoardMaps:Ljava/util/Map;

    .line 1100
    .line 1101
    const/16 v1, 0x15

    .line 1102
    .line 1103
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 1104
    .line 1105
    .line 1106
    move-result-object v1

    .line 1107
    sget-object v3, Lcom/haima/hmcp/proto/GSSDK$OneInputOPData$InputOP;->OP_KEY_VK_LEFT:Lcom/haima/hmcp/proto/GSSDK$OneInputOPData$InputOP;

    .line 1108
    .line 1109
    invoke-interface {v0, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1110
    .line 1111
    .line 1112
    sget-object v0, Lcom/haima/hmcp/utils/HmInputDeviceManager;->keyBoardMaps:Ljava/util/Map;

    .line 1113
    .line 1114
    const/16 v1, 0x16

    .line 1115
    .line 1116
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 1117
    .line 1118
    .line 1119
    move-result-object v1

    .line 1120
    sget-object v3, Lcom/haima/hmcp/proto/GSSDK$OneInputOPData$InputOP;->OP_KEY_VK_RIGHT:Lcom/haima/hmcp/proto/GSSDK$OneInputOPData$InputOP;

    .line 1121
    .line 1122
    invoke-interface {v0, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1123
    .line 1124
    .line 1125
    sget-object v0, Lcom/haima/hmcp/utils/HmInputDeviceManager;->keyBoardMaps:Ljava/util/Map;

    .line 1126
    .line 1127
    const/16 v1, 0x17

    .line 1128
    .line 1129
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 1130
    .line 1131
    .line 1132
    move-result-object v1

    .line 1133
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1134
    .line 1135
    .line 1136
    sget-object v0, Lcom/haima/hmcp/utils/HmInputDeviceManager;->keyBoardMaps:Ljava/util/Map;

    .line 1137
    .line 1138
    const/16 v1, 0x78

    .line 1139
    .line 1140
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 1141
    .line 1142
    .line 1143
    move-result-object v1

    .line 1144
    sget-object v2, Lcom/haima/hmcp/proto/GSSDK$OneInputOPData$InputOP;->OP_KEY_VK_SNAPSHOT:Lcom/haima/hmcp/proto/GSSDK$OneInputOPData$InputOP;

    .line 1145
    .line 1146
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1147
    .line 1148
    .line 1149
    sget-object v0, Lcom/haima/hmcp/utils/HmInputDeviceManager;->keyBoardMaps:Ljava/util/Map;

    .line 1150
    .line 1151
    const/16 v1, 0x7a

    .line 1152
    .line 1153
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 1154
    .line 1155
    .line 1156
    move-result-object v1

    .line 1157
    sget-object v2, Lcom/haima/hmcp/proto/GSSDK$OneInputOPData$InputOP;->OP_KEY_VK_HOME:Lcom/haima/hmcp/proto/GSSDK$OneInputOPData$InputOP;

    .line 1158
    .line 1159
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1160
    .line 1161
    .line 1162
    sget-object v0, Lcom/haima/hmcp/utils/HmInputDeviceManager;->keyBoardMaps:Ljava/util/Map;

    .line 1163
    .line 1164
    const/16 v1, 0x79

    .line 1165
    .line 1166
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 1167
    .line 1168
    .line 1169
    move-result-object v1

    .line 1170
    sget-object v2, Lcom/haima/hmcp/proto/GSSDK$OneInputOPData$InputOP;->OP_KEY_VK_PAUSE:Lcom/haima/hmcp/proto/GSSDK$OneInputOPData$InputOP;

    .line 1171
    .line 1172
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1173
    .line 1174
    .line 1175
    sget-object v0, Lcom/haima/hmcp/utils/HmInputDeviceManager;->keyBoardMaps:Ljava/util/Map;

    .line 1176
    .line 1177
    const/16 v1, 0x7b

    .line 1178
    .line 1179
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 1180
    .line 1181
    .line 1182
    move-result-object v1

    .line 1183
    sget-object v2, Lcom/haima/hmcp/proto/GSSDK$OneInputOPData$InputOP;->OP_KEY_VK_END:Lcom/haima/hmcp/proto/GSSDK$OneInputOPData$InputOP;

    .line 1184
    .line 1185
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1186
    .line 1187
    .line 1188
    sget-object v0, Lcom/haima/hmcp/utils/HmInputDeviceManager;->keyBoardMaps:Ljava/util/Map;

    .line 1189
    .line 1190
    const/16 v1, 0x5c

    .line 1191
    .line 1192
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 1193
    .line 1194
    .line 1195
    move-result-object v1

    .line 1196
    sget-object v2, Lcom/haima/hmcp/proto/GSSDK$OneInputOPData$InputOP;->OP_KEY_VK_PRIOR:Lcom/haima/hmcp/proto/GSSDK$OneInputOPData$InputOP;

    .line 1197
    .line 1198
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1199
    .line 1200
    .line 1201
    sget-object v0, Lcom/haima/hmcp/utils/HmInputDeviceManager;->keyBoardMaps:Ljava/util/Map;

    .line 1202
    .line 1203
    const/16 v1, 0x5d

    .line 1204
    .line 1205
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 1206
    .line 1207
    .line 1208
    move-result-object v1

    .line 1209
    sget-object v2, Lcom/haima/hmcp/proto/GSSDK$OneInputOPData$InputOP;->OP_KEY_VK_NEXT:Lcom/haima/hmcp/proto/GSSDK$OneInputOPData$InputOP;

    .line 1210
    .line 1211
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1212
    .line 1213
    .line 1214
    sget-object v0, Lcom/haima/hmcp/utils/HmInputDeviceManager;->keyBoardMaps:Ljava/util/Map;

    .line 1215
    .line 1216
    const/16 v1, 0x7c

    .line 1217
    .line 1218
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 1219
    .line 1220
    .line 1221
    move-result-object v1

    .line 1222
    sget-object v2, Lcom/haima/hmcp/proto/GSSDK$OneInputOPData$InputOP;->OP_KEY_VK_INSERT:Lcom/haima/hmcp/proto/GSSDK$OneInputOPData$InputOP;

    .line 1223
    .line 1224
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1225
    .line 1226
    .line 1227
    sget-object v0, Lcom/haima/hmcp/utils/HmInputDeviceManager;->keyBoardMaps:Ljava/util/Map;

    .line 1228
    .line 1229
    const/16 v1, 0x74

    .line 1230
    .line 1231
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 1232
    .line 1233
    .line 1234
    move-result-object v1

    .line 1235
    sget-object v2, Lcom/haima/hmcp/proto/GSSDK$OneInputOPData$InputOP;->OP_KEY_VK_SCROLL:Lcom/haima/hmcp/proto/GSSDK$OneInputOPData$InputOP;

    .line 1236
    .line 1237
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1238
    .line 1239
    .line 1240
    sget-object v0, Lcom/haima/hmcp/utils/HmInputDeviceManager;->keyBoardMaps:Ljava/util/Map;

    .line 1241
    .line 1242
    const/16 v1, 0x91

    .line 1243
    .line 1244
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 1245
    .line 1246
    .line 1247
    move-result-object v1

    .line 1248
    sget-object v2, Lcom/haima/hmcp/proto/GSSDK$OneInputOPData$InputOP;->OP_KEY_VK_NUMPAD1:Lcom/haima/hmcp/proto/GSSDK$OneInputOPData$InputOP;

    .line 1249
    .line 1250
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1251
    .line 1252
    .line 1253
    sget-object v0, Lcom/haima/hmcp/utils/HmInputDeviceManager;->keyBoardMaps:Ljava/util/Map;

    .line 1254
    .line 1255
    const/16 v1, 0x92

    .line 1256
    .line 1257
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 1258
    .line 1259
    .line 1260
    move-result-object v1

    .line 1261
    sget-object v2, Lcom/haima/hmcp/proto/GSSDK$OneInputOPData$InputOP;->OP_KEY_VK_NUMPAD2:Lcom/haima/hmcp/proto/GSSDK$OneInputOPData$InputOP;

    .line 1262
    .line 1263
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1264
    .line 1265
    .line 1266
    sget-object v0, Lcom/haima/hmcp/utils/HmInputDeviceManager;->keyBoardMaps:Ljava/util/Map;

    .line 1267
    .line 1268
    const/16 v1, 0x93

    .line 1269
    .line 1270
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 1271
    .line 1272
    .line 1273
    move-result-object v1

    .line 1274
    sget-object v2, Lcom/haima/hmcp/proto/GSSDK$OneInputOPData$InputOP;->OP_KEY_VK_NUMPAD3:Lcom/haima/hmcp/proto/GSSDK$OneInputOPData$InputOP;

    .line 1275
    .line 1276
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1277
    .line 1278
    .line 1279
    sget-object v0, Lcom/haima/hmcp/utils/HmInputDeviceManager;->keyBoardMaps:Ljava/util/Map;

    .line 1280
    .line 1281
    const/16 v1, 0x94

    .line 1282
    .line 1283
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 1284
    .line 1285
    .line 1286
    move-result-object v1

    .line 1287
    sget-object v2, Lcom/haima/hmcp/proto/GSSDK$OneInputOPData$InputOP;->OP_KEY_VK_NUMPAD4:Lcom/haima/hmcp/proto/GSSDK$OneInputOPData$InputOP;

    .line 1288
    .line 1289
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1290
    .line 1291
    .line 1292
    sget-object v0, Lcom/haima/hmcp/utils/HmInputDeviceManager;->keyBoardMaps:Ljava/util/Map;

    .line 1293
    .line 1294
    const/16 v1, 0x95

    .line 1295
    .line 1296
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 1297
    .line 1298
    .line 1299
    move-result-object v1

    .line 1300
    sget-object v2, Lcom/haima/hmcp/proto/GSSDK$OneInputOPData$InputOP;->OP_KEY_VK_NUMPAD5:Lcom/haima/hmcp/proto/GSSDK$OneInputOPData$InputOP;

    .line 1301
    .line 1302
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1303
    .line 1304
    .line 1305
    sget-object v0, Lcom/haima/hmcp/utils/HmInputDeviceManager;->keyBoardMaps:Ljava/util/Map;

    .line 1306
    .line 1307
    const/16 v1, 0x96

    .line 1308
    .line 1309
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 1310
    .line 1311
    .line 1312
    move-result-object v1

    .line 1313
    sget-object v2, Lcom/haima/hmcp/proto/GSSDK$OneInputOPData$InputOP;->OP_KEY_VK_NUMPAD6:Lcom/haima/hmcp/proto/GSSDK$OneInputOPData$InputOP;

    .line 1314
    .line 1315
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1316
    .line 1317
    .line 1318
    sget-object v0, Lcom/haima/hmcp/utils/HmInputDeviceManager;->keyBoardMaps:Ljava/util/Map;

    .line 1319
    .line 1320
    const/16 v1, 0x97

    .line 1321
    .line 1322
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 1323
    .line 1324
    .line 1325
    move-result-object v1

    .line 1326
    sget-object v2, Lcom/haima/hmcp/proto/GSSDK$OneInputOPData$InputOP;->OP_KEY_VK_NUMPAD7:Lcom/haima/hmcp/proto/GSSDK$OneInputOPData$InputOP;

    .line 1327
    .line 1328
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1329
    .line 1330
    .line 1331
    sget-object v0, Lcom/haima/hmcp/utils/HmInputDeviceManager;->keyBoardMaps:Ljava/util/Map;

    .line 1332
    .line 1333
    const/16 v1, 0x98

    .line 1334
    .line 1335
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 1336
    .line 1337
    .line 1338
    move-result-object v1

    .line 1339
    sget-object v2, Lcom/haima/hmcp/proto/GSSDK$OneInputOPData$InputOP;->OP_KEY_VK_NUMPAD8:Lcom/haima/hmcp/proto/GSSDK$OneInputOPData$InputOP;

    .line 1340
    .line 1341
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1342
    .line 1343
    .line 1344
    sget-object v0, Lcom/haima/hmcp/utils/HmInputDeviceManager;->keyBoardMaps:Ljava/util/Map;

    .line 1345
    .line 1346
    const/16 v1, 0x99

    .line 1347
    .line 1348
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 1349
    .line 1350
    .line 1351
    move-result-object v1

    .line 1352
    sget-object v2, Lcom/haima/hmcp/proto/GSSDK$OneInputOPData$InputOP;->OP_KEY_VK_NUMPAD9:Lcom/haima/hmcp/proto/GSSDK$OneInputOPData$InputOP;

    .line 1353
    .line 1354
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1355
    .line 1356
    .line 1357
    sget-object v0, Lcom/haima/hmcp/utils/HmInputDeviceManager;->keyBoardMaps:Ljava/util/Map;

    .line 1358
    .line 1359
    const/16 v1, 0x90

    .line 1360
    .line 1361
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 1362
    .line 1363
    .line 1364
    move-result-object v1

    .line 1365
    sget-object v2, Lcom/haima/hmcp/proto/GSSDK$OneInputOPData$InputOP;->OP_KEY_VK_NUMPAD0:Lcom/haima/hmcp/proto/GSSDK$OneInputOPData$InputOP;

    .line 1366
    .line 1367
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1368
    .line 1369
    .line 1370
    sget-object v0, Lcom/haima/hmcp/utils/HmInputDeviceManager;->keyBoardMaps:Ljava/util/Map;

    .line 1371
    .line 1372
    const/16 v1, 0x9e

    .line 1373
    .line 1374
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 1375
    .line 1376
    .line 1377
    move-result-object v1

    .line 1378
    sget-object v2, Lcom/haima/hmcp/proto/GSSDK$OneInputOPData$InputOP;->OP_KEY_VK_DECIMAL:Lcom/haima/hmcp/proto/GSSDK$OneInputOPData$InputOP;

    .line 1379
    .line 1380
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1381
    .line 1382
    .line 1383
    sget-object v0, Lcom/haima/hmcp/utils/HmInputDeviceManager;->keyBoardMaps:Ljava/util/Map;

    .line 1384
    .line 1385
    const/16 v1, 0xa0

    .line 1386
    .line 1387
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 1388
    .line 1389
    .line 1390
    move-result-object v1

    .line 1391
    sget-object v2, Lcom/haima/hmcp/proto/GSSDK$OneInputOPData$InputOP;->OP_KEY_VK_SEPARATOR:Lcom/haima/hmcp/proto/GSSDK$OneInputOPData$InputOP;

    .line 1392
    .line 1393
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1394
    .line 1395
    .line 1396
    sget-object v0, Lcom/haima/hmcp/utils/HmInputDeviceManager;->keyBoardMaps:Ljava/util/Map;

    .line 1397
    .line 1398
    const/16 v1, 0x9a

    .line 1399
    .line 1400
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 1401
    .line 1402
    .line 1403
    move-result-object v1

    .line 1404
    sget-object v2, Lcom/haima/hmcp/proto/GSSDK$OneInputOPData$InputOP;->OP_KEY_VK_DIVIDE:Lcom/haima/hmcp/proto/GSSDK$OneInputOPData$InputOP;

    .line 1405
    .line 1406
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1407
    .line 1408
    .line 1409
    sget-object v0, Lcom/haima/hmcp/utils/HmInputDeviceManager;->keyBoardMaps:Ljava/util/Map;

    .line 1410
    .line 1411
    const/16 v1, 0x9b

    .line 1412
    .line 1413
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 1414
    .line 1415
    .line 1416
    move-result-object v1

    .line 1417
    sget-object v2, Lcom/haima/hmcp/proto/GSSDK$OneInputOPData$InputOP;->OP_KEY_VK_MULTIPLY:Lcom/haima/hmcp/proto/GSSDK$OneInputOPData$InputOP;

    .line 1418
    .line 1419
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1420
    .line 1421
    .line 1422
    sget-object v0, Lcom/haima/hmcp/utils/HmInputDeviceManager;->keyBoardMaps:Ljava/util/Map;

    .line 1423
    .line 1424
    const/16 v1, 0x9c

    .line 1425
    .line 1426
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 1427
    .line 1428
    .line 1429
    move-result-object v1

    .line 1430
    sget-object v2, Lcom/haima/hmcp/proto/GSSDK$OneInputOPData$InputOP;->OP_KEY_VK_SUBTRACT:Lcom/haima/hmcp/proto/GSSDK$OneInputOPData$InputOP;

    .line 1431
    .line 1432
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1433
    .line 1434
    .line 1435
    sget-object v0, Lcom/haima/hmcp/utils/HmInputDeviceManager;->keyBoardMaps:Ljava/util/Map;

    .line 1436
    .line 1437
    const/16 v1, 0x9d

    .line 1438
    .line 1439
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 1440
    .line 1441
    .line 1442
    move-result-object v1

    .line 1443
    sget-object v2, Lcom/haima/hmcp/proto/GSSDK$OneInputOPData$InputOP;->OP_KEY_VK_ADD:Lcom/haima/hmcp/proto/GSSDK$OneInputOPData$InputOP;

    .line 1444
    .line 1445
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1446
    .line 1447
    .line 1448
    sget-object v0, Lcom/haima/hmcp/utils/HmInputDeviceManager;->keyBoardMaps:Ljava/util/Map;

    .line 1449
    .line 1450
    const/16 v1, 0x8f

    .line 1451
    .line 1452
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 1453
    .line 1454
    .line 1455
    move-result-object v1

    .line 1456
    sget-object v2, Lcom/haima/hmcp/proto/GSSDK$OneInputOPData$InputOP;->OP_KEY_VK_NUMLOCK:Lcom/haima/hmcp/proto/GSSDK$OneInputOPData$InputOP;

    .line 1457
    .line 1458
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1459
    .line 1460
    .line 1461
    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method static synthetic access$000(ILjava/lang/String;)Landroid/view/InputDevice;
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lcom/haima/hmcp/utils/HmInputDeviceManager;->getValidInputDevice(ILjava/lang/String;)Landroid/view/InputDevice;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method static synthetic access$100(Landroid/view/InputDevice;Lcom/haima/hmcp/utils/HmInputDeviceManager$OnDeviceConnectStatusListener;Ljava/lang/String;I)V
    .locals 0

    .line 1
    invoke-static {p0, p1, p2, p3}, Lcom/haima/hmcp/utils/HmInputDeviceManager;->joyStickActions(Landroid/view/InputDevice;Lcom/haima/hmcp/utils/HmInputDeviceManager$OnDeviceConnectStatusListener;Ljava/lang/String;I)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method static synthetic access$200()Ljava/lang/String;
    .locals 1

    .line 1
    sget-object v0, Lcom/haima/hmcp/utils/HmInputDeviceManager;->TAG:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method static synthetic access$300()Landroid/os/Handler;
    .locals 1

    .line 1
    sget-object v0, Lcom/haima/hmcp/utils/HmInputDeviceManager;->mHandler:Landroid/os/Handler;

    .line 2
    .line 3
    return-object v0
.end method

.method static synthetic access$400()Ljava/util/concurrent/ConcurrentHashMap;
    .locals 1

    .line 1
    sget-object v0, Lcom/haima/hmcp/utils/HmInputDeviceManager;->mGamePads:Ljava/util/concurrent/ConcurrentHashMap;

    .line 2
    .line 3
    return-object v0
.end method

.method static synthetic access$500(ILjava/util/concurrent/ConcurrentHashMap;)Lcom/haima/hmcp/beans/InputDeviceInfo;
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lcom/haima/hmcp/utils/HmInputDeviceManager;->getDeviceInfoById(ILjava/util/concurrent/ConcurrentHashMap;)Lcom/haima/hmcp/beans/InputDeviceInfo;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static addIndex(Lcom/haima/hmcp/beans/InputDeviceInfo;I)V
    .locals 3

    .line 1
    invoke-virtual {p0}, Lcom/haima/hmcp/beans/InputDeviceInfo;->getInputDeviceId()Ljava/lang/Integer;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    sget-object v1, Lcom/haima/hmcp/utils/HmInputDeviceManager;->mJoySticks:Ljava/util/concurrent/ConcurrentHashMap;

    .line 6
    .line 7
    invoke-virtual {v1, v0}, Ljava/util/concurrent/ConcurrentHashMap;->containsKey(Ljava/lang/Object;)Z

    .line 8
    .line 9
    .line 10
    move-result v2

    .line 11
    if-nez v2, :cond_0

    .line 12
    .line 13
    new-instance v2, Lcom/haima/hmcp/beans/JoyStickBean;

    .line 14
    .line 15
    invoke-direct {v2}, Lcom/haima/hmcp/beans/JoyStickBean;-><init>()V

    .line 16
    .line 17
    .line 18
    invoke-virtual {v1, v0, v2}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 19
    .line 20
    .line 21
    :cond_0
    invoke-virtual {p0}, Lcom/haima/hmcp/beans/InputDeviceInfo;->getVendorId()Ljava/lang/String;

    .line 22
    .line 23
    .line 24
    move-result-object p0

    .line 25
    invoke-static {p0}, Lcom/haima/hmcp/utils/HmInputDeviceManager;->isGamepadPS(Ljava/lang/String;)Z

    .line 26
    .line 27
    .line 28
    move-result p0

    .line 29
    if-eqz p0, :cond_1

    .line 30
    .line 31
    sget-object p0, Lcom/haima/hmcp/utils/HmInputDeviceManager;->usedIndicesPS:Ljava/util/Set;

    .line 32
    .line 33
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 34
    .line 35
    .line 36
    move-result-object p1

    .line 37
    invoke-interface {p0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 38
    .line 39
    .line 40
    goto :goto_0

    .line 41
    :cond_1
    sget-object p0, Lcom/haima/hmcp/utils/HmInputDeviceManager;->usedIndicesXbox:Ljava/util/Set;

    .line 42
    .line 43
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 44
    .line 45
    .line 46
    move-result-object p1

    .line 47
    invoke-interface {p0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 48
    .line 49
    .line 50
    :goto_0
    return-void
.end method

.method public static clearGamePadsStatus()V
    .locals 2

    .line 1
    sget-object v0, Lcom/haima/hmcp/utils/HmInputDeviceManager;->mGamePads:Ljava/util/concurrent/ConcurrentHashMap;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap;->clear()V

    .line 6
    .line 7
    .line 8
    :cond_0
    sget-object v0, Lcom/haima/hmcp/utils/HmInputDeviceManager;->mHistoryGamePads:Ljava/util/concurrent/ConcurrentHashMap;

    .line 9
    .line 10
    if-eqz v0, :cond_1

    .line 11
    .line 12
    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap;->clear()V

    .line 13
    .line 14
    .line 15
    :cond_1
    sget-object v0, Lcom/haima/hmcp/utils/HmInputDeviceManager;->usedIndicesPS:Ljava/util/Set;

    .line 16
    .line 17
    if-eqz v0, :cond_2

    .line 18
    .line 19
    invoke-interface {v0}, Ljava/util/Set;->clear()V

    .line 20
    .line 21
    .line 22
    :cond_2
    sget-object v0, Lcom/haima/hmcp/utils/HmInputDeviceManager;->usedIndicesXbox:Ljava/util/Set;

    .line 23
    .line 24
    if-eqz v0, :cond_3

    .line 25
    .line 26
    invoke-interface {v0}, Ljava/util/Set;->clear()V

    .line 27
    .line 28
    .line 29
    :cond_3
    sget-object v0, Lcom/haima/hmcp/utils/HmInputDeviceManager;->mInputManager:Landroid/hardware/input/InputManager;

    .line 30
    .line 31
    if-eqz v0, :cond_4

    .line 32
    .line 33
    sget-object v0, Lcom/haima/hmcp/utils/HmInputDeviceManager;->inputDeviceListener:Landroid/hardware/input/InputManager$InputDeviceListener;

    .line 34
    .line 35
    if-eqz v0, :cond_4

    .line 36
    .line 37
    sget-object v0, Lcom/haima/hmcp/utils/HmInputDeviceManager;->mInputManager:Landroid/hardware/input/InputManager;

    .line 38
    .line 39
    sget-object v1, Lcom/haima/hmcp/utils/HmInputDeviceManager;->inputDeviceListener:Landroid/hardware/input/InputManager$InputDeviceListener;

    .line 40
    .line 41
    invoke-virtual {v0, v1}, Landroid/hardware/input/InputManager;->unregisterInputDeviceListener(Landroid/hardware/input/InputManager$InputDeviceListener;)V

    .line 42
    .line 43
    .line 44
    const/4 v0, 0x0

    .line 45
    sput-object v0, Lcom/haima/hmcp/utils/HmInputDeviceManager;->inputDeviceListener:Landroid/hardware/input/InputManager$InputDeviceListener;

    .line 46
    .line 47
    :cond_4
    return-void
.end method

.method public static contains([II)Z
    .locals 4

    .line 1
    const/4 v0, 0x0

    .line 2
    if-nez p0, :cond_0

    .line 3
    .line 4
    return v0

    .line 5
    :cond_0
    array-length v1, p0

    .line 6
    const/4 v2, 0x0

    .line 7
    :goto_0
    if-ge v2, v1, :cond_2

    .line 8
    .line 9
    aget v3, p0, v2

    .line 10
    .line 11
    if-ne v3, p1, :cond_1

    .line 12
    .line 13
    const/4 p0, 0x1

    .line 14
    return p0

    .line 15
    :cond_1
    add-int/lit8 v2, v2, 0x1

    .line 16
    .line 17
    goto :goto_0

    .line 18
    :cond_2
    return v0
.end method

.method public static getDeviceInfoByEvent(Landroid/view/InputEvent;)Lcom/haima/hmcp/beans/InputDeviceInfo;
    .locals 6

    .line 1
    const/4 v0, 0x0

    .line 2
    if-eqz p0, :cond_2

    .line 3
    .line 4
    sget-object v1, Lcom/haima/hmcp/utils/HmInputDeviceManager;->mGamePads:Ljava/util/concurrent/ConcurrentHashMap;

    .line 5
    .line 6
    if-nez v1, :cond_0

    .line 7
    .line 8
    goto :goto_0

    .line 9
    :cond_0
    invoke-virtual {v1}, Ljava/util/concurrent/ConcurrentHashMap;->keySet()Ljava/util/Set;

    .line 10
    .line 11
    .line 12
    move-result-object v1

    .line 13
    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 14
    .line 15
    .line 16
    move-result-object v1

    .line 17
    :cond_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 18
    .line 19
    .line 20
    move-result v2

    .line 21
    if-eqz v2, :cond_2

    .line 22
    .line 23
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 24
    .line 25
    .line 26
    move-result-object v2

    .line 27
    check-cast v2, Lcom/haima/hmcp/beans/InputDeviceInfo;

    .line 28
    .line 29
    sget-object v3, Lcom/haima/hmcp/utils/HmInputDeviceManager;->TAG:Ljava/lang/String;

    .line 30
    .line 31
    new-instance v4, Ljava/lang/StringBuilder;

    .line 32
    .line 33
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 34
    .line 35
    .line 36
    const-string v5, "getDeviceInfoById inputDevices:"

    .line 37
    .line 38
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 39
    .line 40
    .line 41
    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 42
    .line 43
    .line 44
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 45
    .line 46
    .line 47
    move-result-object v4

    .line 48
    invoke-static {v3, v4}, Lcom/haima/hmcp/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 49
    .line 50
    .line 51
    invoke-virtual {p0}, Landroid/view/InputEvent;->getDeviceId()I

    .line 52
    .line 53
    .line 54
    move-result v3

    .line 55
    invoke-virtual {v2}, Lcom/haima/hmcp/beans/InputDeviceInfo;->getInputDeviceId()Ljava/lang/Integer;

    .line 56
    .line 57
    .line 58
    move-result-object v4

    .line 59
    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    .line 60
    .line 61
    .line 62
    move-result v4

    .line 63
    if-ne v3, v4, :cond_1

    .line 64
    .line 65
    return-object v2

    .line 66
    :cond_2
    :goto_0
    return-object v0
.end method

.method private static getDeviceInfoById(ILjava/util/concurrent/ConcurrentHashMap;)Lcom/haima/hmcp/beans/InputDeviceInfo;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/concurrent/ConcurrentHashMap<",
            "Lcom/haima/hmcp/beans/InputDeviceInfo;",
            "Ljava/lang/Integer;",
            ">;)",
            "Lcom/haima/hmcp/beans/InputDeviceInfo;"
        }
    .end annotation

    .line 1
    const/4 v0, 0x0

    .line 2
    if-nez p1, :cond_0

    .line 3
    .line 4
    return-object v0

    .line 5
    :cond_0
    invoke-virtual {p1}, Ljava/util/concurrent/ConcurrentHashMap;->keySet()Ljava/util/Set;

    .line 6
    .line 7
    .line 8
    move-result-object p1

    .line 9
    sget-object v1, Lcom/haima/hmcp/utils/HmInputDeviceManager;->TAG:Ljava/lang/String;

    .line 10
    .line 11
    new-instance v2, Ljava/lang/StringBuilder;

    .line 12
    .line 13
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 14
    .line 15
    .line 16
    const-string v3, "getDeviceInfoById inputDevices:"

    .line 17
    .line 18
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 19
    .line 20
    .line 21
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 22
    .line 23
    .line 24
    const-string v4, ",deviceId:"

    .line 25
    .line 26
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 27
    .line 28
    .line 29
    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 30
    .line 31
    .line 32
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 33
    .line 34
    .line 35
    move-result-object v2

    .line 36
    invoke-static {v1, v2}, Lcom/haima/hmcp/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 37
    .line 38
    .line 39
    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 40
    .line 41
    .line 42
    move-result-object p1

    .line 43
    :cond_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 44
    .line 45
    .line 46
    move-result v1

    .line 47
    if-eqz v1, :cond_2

    .line 48
    .line 49
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 50
    .line 51
    .line 52
    move-result-object v1

    .line 53
    check-cast v1, Lcom/haima/hmcp/beans/InputDeviceInfo;

    .line 54
    .line 55
    sget-object v2, Lcom/haima/hmcp/utils/HmInputDeviceManager;->TAG:Ljava/lang/String;

    .line 56
    .line 57
    new-instance v4, Ljava/lang/StringBuilder;

    .line 58
    .line 59
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 60
    .line 61
    .line 62
    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 63
    .line 64
    .line 65
    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 66
    .line 67
    .line 68
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 69
    .line 70
    .line 71
    move-result-object v4

    .line 72
    invoke-static {v2, v4}, Lcom/haima/hmcp/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 73
    .line 74
    .line 75
    invoke-virtual {v1}, Lcom/haima/hmcp/beans/InputDeviceInfo;->getInputDeviceId()Ljava/lang/Integer;

    .line 76
    .line 77
    .line 78
    move-result-object v2

    .line 79
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    .line 80
    .line 81
    .line 82
    move-result v2

    .line 83
    if-ne p0, v2, :cond_1

    .line 84
    .line 85
    return-object v1

    .line 86
    :cond_2
    return-object v0
.end method

.method public static getGamePads()Ljava/util/concurrent/ConcurrentHashMap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/concurrent/ConcurrentHashMap<",
            "Lcom/haima/hmcp/beans/InputDeviceInfo;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 1
    sget-object v0, Lcom/haima/hmcp/utils/HmInputDeviceManager;->mGamePads:Ljava/util/concurrent/ConcurrentHashMap;

    .line 2
    .line 3
    return-object v0
.end method

.method public static getIndexByEvent(Landroid/view/InputEvent;)I
    .locals 5

    .line 1
    const/4 v0, -0x1

    .line 2
    if-nez p0, :cond_0

    .line 3
    .line 4
    sget-object p0, Lcom/haima/hmcp/utils/HmInputDeviceManager;->TAG:Ljava/lang/String;

    .line 5
    .line 6
    const-string v1, "event == null"

    .line 7
    .line 8
    invoke-static {p0, v1}, Lcom/haima/hmcp/utils/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    return v0

    .line 12
    :cond_0
    invoke-virtual {p0}, Landroid/view/InputEvent;->getDevice()Landroid/view/InputDevice;

    .line 13
    .line 14
    .line 15
    move-result-object v1

    .line 16
    if-nez v1, :cond_1

    .line 17
    .line 18
    sget-object p0, Lcom/haima/hmcp/utils/HmInputDeviceManager;->TAG:Ljava/lang/String;

    .line 19
    .line 20
    const-string v1, "event.getDevice() == null"

    .line 21
    .line 22
    invoke-static {p0, v1}, Lcom/haima/hmcp/utils/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 23
    .line 24
    .line 25
    return v0

    .line 26
    :cond_1
    new-instance v2, Lcom/haima/hmcp/beans/InputDeviceInfo;

    .line 27
    .line 28
    invoke-direct {v2}, Lcom/haima/hmcp/beans/InputDeviceInfo;-><init>()V

    .line 29
    .line 30
    .line 31
    invoke-static {p0}, Lcom/haima/hmcp/utils/HmInputDeviceManager;->getVendorId(Landroid/view/InputEvent;)Ljava/lang/String;

    .line 32
    .line 33
    .line 34
    move-result-object p0

    .line 35
    invoke-virtual {v2, p0}, Lcom/haima/hmcp/beans/InputDeviceInfo;->setVendorId(Ljava/lang/String;)V

    .line 36
    .line 37
    .line 38
    invoke-virtual {v1}, Landroid/view/InputDevice;->getId()I

    .line 39
    .line 40
    .line 41
    move-result p0

    .line 42
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 43
    .line 44
    .line 45
    move-result-object p0

    .line 46
    invoke-virtual {v2, p0}, Lcom/haima/hmcp/beans/InputDeviceInfo;->setInputDeviceId(Ljava/lang/Integer;)V

    .line 47
    .line 48
    .line 49
    sget-object p0, Lcom/haima/hmcp/utils/HmInputDeviceManager;->mGamePads:Ljava/util/concurrent/ConcurrentHashMap;

    .line 50
    .line 51
    invoke-virtual {p0, v2}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 52
    .line 53
    .line 54
    move-result-object p0

    .line 55
    check-cast p0, Ljava/lang/Integer;

    .line 56
    .line 57
    sget-object v1, Lcom/haima/hmcp/utils/HmInputDeviceManager;->TAG:Ljava/lang/String;

    .line 58
    .line 59
    new-instance v3, Ljava/lang/StringBuilder;

    .line 60
    .line 61
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 62
    .line 63
    .line 64
    const-string v4, "getIndexByEvent inputDeviceInfo:"

    .line 65
    .line 66
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 67
    .line 68
    .line 69
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 70
    .line 71
    .line 72
    const-string v2, ",mGamePads:"

    .line 73
    .line 74
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 75
    .line 76
    .line 77
    sget-object v2, Lcom/haima/hmcp/utils/HmInputDeviceManager;->mGamePads:Ljava/util/concurrent/ConcurrentHashMap;

    .line 78
    .line 79
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 80
    .line 81
    .line 82
    const-string v2, ",deviceIndex:"

    .line 83
    .line 84
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 85
    .line 86
    .line 87
    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 88
    .line 89
    .line 90
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 91
    .line 92
    .line 93
    move-result-object v2

    .line 94
    invoke-static {v1, v2}, Lcom/haima/hmcp/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 95
    .line 96
    .line 97
    if-eqz p0, :cond_2

    .line 98
    .line 99
    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    .line 100
    .line 101
    .line 102
    move-result p0

    .line 103
    return p0

    .line 104
    :cond_2
    return v0
.end method

.method public static getNextDeviceIndex(Ljava/lang/String;)I
    .locals 3

    .line 1
    sget-object v0, Lcom/haima/hmcp/utils/HmInputDeviceManager;->TAG:Ljava/lang/String;

    .line 2
    .line 3
    new-instance v1, Ljava/lang/StringBuilder;

    .line 4
    .line 5
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 6
    .line 7
    .line 8
    const-string v2, "getNextDeviceIndex usedIndicesPS:"

    .line 9
    .line 10
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 11
    .line 12
    .line 13
    sget-object v2, Lcom/haima/hmcp/utils/HmInputDeviceManager;->usedIndicesPS:Ljava/util/Set;

    .line 14
    .line 15
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 16
    .line 17
    .line 18
    const-string v2, ",usedIndicesXbox:"

    .line 19
    .line 20
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 21
    .line 22
    .line 23
    sget-object v2, Lcom/haima/hmcp/utils/HmInputDeviceManager;->usedIndicesXbox:Ljava/util/Set;

    .line 24
    .line 25
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 26
    .line 27
    .line 28
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 29
    .line 30
    .line 31
    move-result-object v1

    .line 32
    invoke-static {v0, v1}, Lcom/haima/hmcp/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 33
    .line 34
    .line 35
    invoke-static {p0}, Lcom/haima/hmcp/utils/HmInputDeviceManager;->isGamepadPS(Ljava/lang/String;)Z

    .line 36
    .line 37
    .line 38
    move-result p0

    .line 39
    const/4 v0, 0x0

    .line 40
    if-eqz p0, :cond_0

    .line 41
    .line 42
    :goto_0
    sget-object p0, Lcom/haima/hmcp/utils/HmInputDeviceManager;->usedIndicesPS:Ljava/util/Set;

    .line 43
    .line 44
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 45
    .line 46
    .line 47
    move-result-object v1

    .line 48
    invoke-interface {p0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    .line 49
    .line 50
    .line 51
    move-result p0

    .line 52
    if-eqz p0, :cond_1

    .line 53
    .line 54
    add-int/lit8 v0, v0, 0x1

    .line 55
    .line 56
    goto :goto_0

    .line 57
    :cond_0
    :goto_1
    sget-object p0, Lcom/haima/hmcp/utils/HmInputDeviceManager;->usedIndicesXbox:Ljava/util/Set;

    .line 58
    .line 59
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 60
    .line 61
    .line 62
    move-result-object v1

    .line 63
    invoke-interface {p0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    .line 64
    .line 65
    .line 66
    move-result p0

    .line 67
    if-eqz p0, :cond_1

    .line 68
    .line 69
    add-int/lit8 v0, v0, 0x1

    .line 70
    .line 71
    goto :goto_1

    .line 72
    :cond_1
    return v0
.end method

.method public static getRealInputOp(I)Lcom/haima/hmcp/proto/GSSDK$OneInputOPData$InputOP;
    .locals 1

    .line 1
    sget-object v0, Lcom/haima/hmcp/utils/HmInputDeviceManager;->keyBoardMaps:Ljava/util/Map;

    .line 2
    .line 3
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 8
    .line 9
    .line 10
    move-result-object p0

    .line 11
    check-cast p0, Lcom/haima/hmcp/proto/GSSDK$OneInputOPData$InputOP;

    .line 12
    .line 13
    return-object p0
.end method

.method private static getValidInputDevice(ILjava/lang/String;)Landroid/view/InputDevice;
    .locals 4

    .line 1
    invoke-static {p0}, Landroid/view/InputDevice;->getDevice(I)Landroid/view/InputDevice;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    sget-object v1, Lcom/haima/hmcp/utils/HmInputDeviceManager;->TAG:Ljava/lang/String;

    .line 6
    .line 7
    new-instance v2, Ljava/lang/StringBuilder;

    .line 8
    .line 9
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 10
    .line 11
    .line 12
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 13
    .line 14
    .line 15
    const-string v3, " deviceId:"

    .line 16
    .line 17
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 18
    .line 19
    .line 20
    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 21
    .line 22
    .line 23
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 24
    .line 25
    .line 26
    move-result-object v2

    .line 27
    invoke-static {v1, v2}, Lcom/haima/hmcp/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 28
    .line 29
    .line 30
    const/4 v1, 0x0

    .line 31
    if-nez v0, :cond_0

    .line 32
    .line 33
    sget-object p1, Lcom/haima/hmcp/utils/HmInputDeviceManager;->TAG:Ljava/lang/String;

    .line 34
    .line 35
    new-instance v0, Ljava/lang/StringBuilder;

    .line 36
    .line 37
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 38
    .line 39
    .line 40
    const-string v2, "inputDevice is null=====:"

    .line 41
    .line 42
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 43
    .line 44
    .line 45
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 46
    .line 47
    .line 48
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 49
    .line 50
    .line 51
    move-result-object p0

    .line 52
    invoke-static {p1, p0}, Lcom/haima/hmcp/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 53
    .line 54
    .line 55
    return-object v1

    .line 56
    :cond_0
    sget-object v2, Lcom/haima/hmcp/utils/HmInputDeviceManager;->mGamePads:Ljava/util/concurrent/ConcurrentHashMap;

    .line 57
    .line 58
    invoke-static {p0, v2}, Lcom/haima/hmcp/utils/HmInputDeviceManager;->getDeviceInfoById(ILjava/util/concurrent/ConcurrentHashMap;)Lcom/haima/hmcp/beans/InputDeviceInfo;

    .line 59
    .line 60
    .line 61
    move-result-object v2

    .line 62
    if-eqz v2, :cond_1

    .line 63
    .line 64
    sget-object v0, Lcom/haima/hmcp/utils/HmInputDeviceManager;->TAG:Ljava/lang/String;

    .line 65
    .line 66
    new-instance v2, Ljava/lang/StringBuilder;

    .line 67
    .line 68
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 69
    .line 70
    .line 71
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 72
    .line 73
    .line 74
    const-string p1, " already added deviceId:"

    .line 75
    .line 76
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 77
    .line 78
    .line 79
    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 80
    .line 81
    .line 82
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 83
    .line 84
    .line 85
    move-result-object p0

    .line 86
    invoke-static {v0, p0}, Lcom/haima/hmcp/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 87
    .line 88
    .line 89
    return-object v1

    .line 90
    :cond_1
    return-object v0
.end method

.method public static getVendorId(Landroid/view/InputDevice;)Ljava/lang/String;
    .locals 2

    const-string v0, ""

    if-nez p0, :cond_0

    return-object v0

    .line 1
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Landroid/view/InputDevice;->getVendorId()I

    move-result p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static getVendorId(Landroid/view/InputEvent;)Ljava/lang/String;
    .locals 2

    const-string v0, ""

    if-eqz p0, :cond_2

    .line 2
    invoke-virtual {p0}, Landroid/view/InputEvent;->getDevice()Landroid/view/InputDevice;

    move-result-object p0

    if-nez p0, :cond_0

    return-object v0

    .line 3
    :cond_0
    invoke-virtual {p0}, Landroid/view/InputDevice;->getId()I

    move-result p0

    sget-object v1, Lcom/haima/hmcp/utils/HmInputDeviceManager;->mGamePads:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {p0, v1}, Lcom/haima/hmcp/utils/HmInputDeviceManager;->getDeviceInfoById(ILjava/util/concurrent/ConcurrentHashMap;)Lcom/haima/hmcp/beans/InputDeviceInfo;

    move-result-object p0

    if-nez p0, :cond_1

    return-object v0

    .line 4
    :cond_1
    invoke-virtual {p0}, Lcom/haima/hmcp/beans/InputDeviceInfo;->getVendorId()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_2
    return-object v0
.end method

.method private static getVendorType(Ljava/lang/String;)Lcom/haima/hmcp/utils/HmInputDeviceManager$Vendor;
    .locals 0

    .line 1
    invoke-static {p0}, Lcom/haima/hmcp/utils/HmInputDeviceManager;->isGamepadPS(Ljava/lang/String;)Z

    .line 2
    .line 3
    .line 4
    move-result p0

    .line 5
    if-eqz p0, :cond_0

    .line 6
    .line 7
    sget-object p0, Lcom/haima/hmcp/utils/HmInputDeviceManager$Vendor;->PS:Lcom/haima/hmcp/utils/HmInputDeviceManager$Vendor;

    .line 8
    .line 9
    return-object p0

    .line 10
    :cond_0
    sget-object p0, Lcom/haima/hmcp/utils/HmInputDeviceManager$Vendor;->XBOX:Lcom/haima/hmcp/utils/HmInputDeviceManager$Vendor;

    .line 11
    .line 12
    return-object p0
.end method

.method private static getVibrator(II)Landroid/os/Vibrator;
    .locals 4
    .annotation build Landroidx/annotation/RequiresApi;
        api = 0x13
    .end annotation

    .line 14
    invoke-static {p1}, Landroid/view/InputDevice;->getDevice(I)Landroid/view/InputDevice;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    .line 15
    :cond_0
    invoke-virtual {v0}, Landroid/view/InputDevice;->getVibrator()Landroid/os/Vibrator;

    move-result-object v0

    if-nez v0, :cond_1

    return-object v1

    .line 16
    :cond_1
    invoke-virtual {v0}, Landroid/os/Vibrator;->hasVibrator()Z

    move-result v2

    if-nez v2, :cond_2

    return-object v1

    .line 17
    :cond_2
    sget-object v1, Lcom/haima/hmcp/utils/HmInputDeviceManager;->VIBRATOR_TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getVibrator succeed: index="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, " deviceId="

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Lcom/haima/hmcp/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method private static getVibrator(IILcom/haima/hmcp/utils/HmInputDeviceManager$Vendor;Ljava/lang/String;)Landroid/os/Vibrator;
    .locals 0
    .annotation build Landroidx/annotation/RequiresApi;
        api = 0x13
    .end annotation

    .line 18
    invoke-static {p1}, Landroid/view/InputDevice;->getDevice(I)Landroid/view/InputDevice;

    move-result-object p2

    if-nez p2, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 19
    :cond_0
    invoke-static {p0, p1}, Lcom/haima/hmcp/utils/HmInputDeviceManager;->getVibrator(II)Landroid/os/Vibrator;

    move-result-object p0

    return-object p0
.end method

.method private static getVibrator(ILcom/haima/hmcp/utils/HmInputDeviceManager$Vendor;ILjava/lang/String;)Landroid/os/Vibrator;
    .locals 7
    .annotation build Landroidx/annotation/RequiresApi;
        api = 0x13
    .end annotation

    const/4 v0, 0x0

    const-string v1, " "

    if-ltz p0, :cond_6

    if-nez p1, :cond_0

    goto/16 :goto_0

    .line 1
    :cond_0
    sget-object v2, Lcom/haima/hmcp/utils/HmInputDeviceManager;->mGamePads:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v2}, Ljava/util/concurrent/ConcurrentHashMap;->entrySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    const v3, 0x7fffffff

    :cond_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Map$Entry;

    .line 2
    invoke-interface {v4}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    .line 3
    invoke-interface {v4}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/haima/hmcp/beans/InputDeviceInfo;

    .line 4
    invoke-virtual {v4}, Lcom/haima/hmcp/beans/InputDeviceInfo;->getVendorId()Ljava/lang/String;

    move-result-object v6

    .line 5
    invoke-virtual {v4}, Lcom/haima/hmcp/beans/InputDeviceInfo;->getInputDeviceId()Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    if-ge v4, v3, :cond_2

    move v3, v4

    :cond_2
    if-ne p0, v5, :cond_1

    .line 6
    invoke-static {v6}, Lcom/haima/hmcp/utils/HmInputDeviceManager;->getVendorType(Ljava/lang/String;)Lcom/haima/hmcp/utils/HmInputDeviceManager$Vendor;

    move-result-object v5

    if-ne v5, p1, :cond_1

    sget-boolean v5, Lcom/haima/hmcp/Constants;->CONFIG_IS_SINGLE_GAMEPAD_MODE:Z

    if-nez v5, :cond_1

    .line 7
    sget-object p2, Lcom/haima/hmcp/utils/HmInputDeviceManager;->VIBRATOR_TAG:Ljava/lang/String;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "getVibrator vendor="

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1}, Lcom/haima/hmcp/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 8
    invoke-static {p0, v4}, Lcom/haima/hmcp/utils/HmInputDeviceManager;->getVibrator(II)Landroid/os/Vibrator;

    move-result-object p0

    return-object p0

    .line 9
    :cond_3
    sget-boolean v2, Lcom/haima/hmcp/Constants;->CONFIG_IS_GAME_SUPPORT_GAMEPAD_HOT_SWAP:Z

    if-eqz v2, :cond_5

    sget-boolean v2, Lcom/haima/hmcp/Constants;->CONFIG_IS_SINGLE_GAMEPAD_MODE:Z

    if-eqz v2, :cond_5

    .line 10
    invoke-static {p0, p2, p1, p3}, Lcom/haima/hmcp/utils/HmInputDeviceManager;->getVibrator(IILcom/haima/hmcp/utils/HmInputDeviceManager$Vendor;Ljava/lang/String;)Landroid/os/Vibrator;

    move-result-object p0

    if-nez p0, :cond_4

    const/4 p0, 0x0

    .line 11
    invoke-static {p0, v3, p1, p3}, Lcom/haima/hmcp/utils/HmInputDeviceManager;->getVibrator(IILcom/haima/hmcp/utils/HmInputDeviceManager$Vendor;Ljava/lang/String;)Landroid/os/Vibrator;

    move-result-object p0

    :cond_4
    return-object p0

    .line 12
    :cond_5
    sget-object p2, Lcom/haima/hmcp/utils/HmInputDeviceManager;->VIBRATOR_TAG:Ljava/lang/String;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getVibrator failed:device not found "

    invoke-virtual {p3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p2, p0}, Lcom/haima/hmcp/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0

    .line 13
    :cond_6
    :goto_0
    sget-object p2, Lcom/haima/hmcp/utils/HmInputDeviceManager;->VIBRATOR_TAG:Ljava/lang/String;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getVibrator failed:"

    invoke-virtual {p3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p2, p0}, Lcom/haima/hmcp/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method public static hasJoyStick()Z
    .locals 4

    .line 1
    invoke-static {}, Landroid/view/InputDevice;->getDeviceIds()[I

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    array-length v1, v0

    .line 6
    const/4 v2, 0x0

    .line 7
    const/4 v3, 0x0

    .line 8
    :goto_0
    if-ge v2, v1, :cond_1

    .line 9
    .line 10
    aget v3, v0, v2

    .line 11
    .line 12
    invoke-static {v3}, Landroid/view/InputDevice;->getDevice(I)Landroid/view/InputDevice;

    .line 13
    .line 14
    .line 15
    move-result-object v3

    .line 16
    invoke-static {v3}, Lcom/haima/hmcp/utils/HmInputDeviceManager;->isJoyStick(Landroid/view/InputDevice;)Z

    .line 17
    .line 18
    .line 19
    move-result v3

    .line 20
    if-eqz v3, :cond_0

    .line 21
    .line 22
    goto :goto_1

    .line 23
    :cond_0
    add-int/lit8 v2, v2, 0x1

    .line 24
    .line 25
    goto :goto_0

    .line 26
    :cond_1
    :goto_1
    return v3
.end method

.method public static initGamePadDevices(Lcom/haima/hmcp/utils/HmInputDeviceManager$OnDeviceConnectStatusListener;)V
    .locals 9

    .line 1
    sget-object v0, Lcom/haima/hmcp/utils/HmInputDeviceManager;->mGamePads:Ljava/util/concurrent/ConcurrentHashMap;

    .line 2
    .line 3
    if-eqz v0, :cond_9

    .line 4
    .line 5
    sget-object v0, Lcom/haima/hmcp/utils/HmInputDeviceManager;->mHistoryGamePads:Ljava/util/concurrent/ConcurrentHashMap;

    .line 6
    .line 7
    if-nez v0, :cond_0

    .line 8
    .line 9
    goto/16 :goto_5

    .line 10
    .line 11
    :cond_0
    if-nez p0, :cond_1

    .line 12
    .line 13
    sget-object p0, Lcom/haima/hmcp/utils/HmInputDeviceManager;->TAG:Ljava/lang/String;

    .line 14
    .line 15
    const-string v0, "updateGamePadDevices failure listener == null"

    .line 16
    .line 17
    invoke-static {p0, v0}, Lcom/haima/hmcp/utils/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 18
    .line 19
    .line 20
    invoke-static {v0}, Lcom/haima/hmcp/countly/CountlyUtil;->recordErrorEvent(Ljava/lang/String;)V

    .line 21
    .line 22
    .line 23
    return-void

    .line 24
    :cond_1
    invoke-static {}, Landroid/view/InputDevice;->getDeviceIds()[I

    .line 25
    .line 26
    .line 27
    move-result-object v0

    .line 28
    sget-object v1, Lcom/haima/hmcp/utils/HmInputDeviceManager;->mHistoryGamePads:Ljava/util/concurrent/ConcurrentHashMap;

    .line 29
    .line 30
    invoke-virtual {v1}, Ljava/util/concurrent/ConcurrentHashMap;->clear()V

    .line 31
    .line 32
    .line 33
    sget-object v1, Lcom/haima/hmcp/utils/HmInputDeviceManager;->mHistoryGamePads:Ljava/util/concurrent/ConcurrentHashMap;

    .line 34
    .line 35
    sget-object v2, Lcom/haima/hmcp/utils/HmInputDeviceManager;->mGamePads:Ljava/util/concurrent/ConcurrentHashMap;

    .line 36
    .line 37
    invoke-virtual {v1, v2}, Ljava/util/concurrent/ConcurrentHashMap;->putAll(Ljava/util/Map;)V

    .line 38
    .line 39
    .line 40
    sget-object v1, Lcom/haima/hmcp/utils/HmInputDeviceManager;->mGamePads:Ljava/util/concurrent/ConcurrentHashMap;

    .line 41
    .line 42
    invoke-virtual {v1}, Ljava/util/concurrent/ConcurrentHashMap;->clear()V

    .line 43
    .line 44
    .line 45
    sget-object v1, Lcom/haima/hmcp/utils/HmInputDeviceManager;->mHistoryGamePads:Ljava/util/concurrent/ConcurrentHashMap;

    .line 46
    .line 47
    invoke-virtual {v1}, Ljava/util/concurrent/ConcurrentHashMap;->entrySet()Ljava/util/Set;

    .line 48
    .line 49
    .line 50
    move-result-object v1

    .line 51
    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 52
    .line 53
    .line 54
    move-result-object v1

    .line 55
    :cond_2
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 56
    .line 57
    .line 58
    move-result v2

    .line 59
    if-eqz v2, :cond_3

    .line 60
    .line 61
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 62
    .line 63
    .line 64
    move-result-object v2

    .line 65
    check-cast v2, Ljava/util/Map$Entry;

    .line 66
    .line 67
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    .line 68
    .line 69
    .line 70
    move-result-object v2

    .line 71
    check-cast v2, Lcom/haima/hmcp/beans/InputDeviceInfo;

    .line 72
    .line 73
    if-eqz v2, :cond_2

    .line 74
    .line 75
    invoke-virtual {v2}, Lcom/haima/hmcp/beans/InputDeviceInfo;->getInputDeviceId()Ljava/lang/Integer;

    .line 76
    .line 77
    .line 78
    move-result-object v3

    .line 79
    if-eqz v3, :cond_2

    .line 80
    .line 81
    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    .line 82
    .line 83
    .line 84
    move-result v3

    .line 85
    invoke-static {v0, v3}, Lcom/haima/hmcp/utils/HmInputDeviceManager;->contains([II)Z

    .line 86
    .line 87
    .line 88
    move-result v3

    .line 89
    if-nez v3, :cond_2

    .line 90
    .line 91
    invoke-static {v2}, Lcom/haima/hmcp/utils/HmInputDeviceManager;->removeDevice(Lcom/haima/hmcp/beans/InputDeviceInfo;)V

    .line 92
    .line 93
    .line 94
    sget-object v3, Lcom/haima/hmcp/utils/HmInputDeviceManager;->mHistoryGamePads:Ljava/util/concurrent/ConcurrentHashMap;

    .line 95
    .line 96
    invoke-virtual {v3, v2}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 97
    .line 98
    .line 99
    move-result-object v3

    .line 100
    check-cast v3, Ljava/lang/Integer;

    .line 101
    .line 102
    sget-object v4, Lcom/haima/hmcp/utils/HmInputDeviceManager;->TAG:Ljava/lang/String;

    .line 103
    .line 104
    new-instance v5, Ljava/lang/StringBuilder;

    .line 105
    .line 106
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 107
    .line 108
    .line 109
    const-string v6, "initGamePadDevices  cachedInputDeviceIndex"

    .line 110
    .line 111
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 112
    .line 113
    .line 114
    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 115
    .line 116
    .line 117
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 118
    .line 119
    .line 120
    move-result-object v5

    .line 121
    invoke-static {v4, v5}, Lcom/haima/hmcp/utils/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 122
    .line 123
    .line 124
    if-eqz v3, :cond_2

    .line 125
    .line 126
    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    .line 127
    .line 128
    .line 129
    move-result v3

    .line 130
    invoke-static {v2, v3}, Lcom/haima/hmcp/utils/HmInputDeviceManager;->removeIndex(Lcom/haima/hmcp/beans/InputDeviceInfo;I)V

    .line 131
    .line 132
    .line 133
    goto :goto_0

    .line 134
    :cond_3
    array-length v1, v0

    .line 135
    const/4 v2, 0x0

    .line 136
    const/4 v3, 0x0

    .line 137
    :goto_1
    if-ge v3, v1, :cond_7

    .line 138
    .line 139
    aget v4, v0, v3

    .line 140
    .line 141
    invoke-static {v4}, Landroid/view/InputDevice;->getDevice(I)Landroid/view/InputDevice;

    .line 142
    .line 143
    .line 144
    move-result-object v5

    .line 145
    sget-object v6, Lcom/haima/hmcp/utils/HmInputDeviceManager;->TAG:Ljava/lang/String;

    .line 146
    .line 147
    new-instance v7, Ljava/lang/StringBuilder;

    .line 148
    .line 149
    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    .line 150
    .line 151
    .line 152
    const-string v8, "initGamePadDevices id:"

    .line 153
    .line 154
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 155
    .line 156
    .line 157
    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 158
    .line 159
    .line 160
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 161
    .line 162
    .line 163
    move-result-object v7

    .line 164
    invoke-static {v6, v7}, Lcom/haima/hmcp/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 165
    .line 166
    .line 167
    invoke-static {v5}, Lcom/haima/hmcp/utils/HmInputDeviceManager;->isJoyStick(Landroid/view/InputDevice;)Z

    .line 168
    .line 169
    .line 170
    move-result v6

    .line 171
    if-eqz v6, :cond_6

    .line 172
    .line 173
    new-instance v6, Lcom/haima/hmcp/beans/InputDeviceInfo;

    .line 174
    .line 175
    invoke-direct {v6}, Lcom/haima/hmcp/beans/InputDeviceInfo;-><init>()V

    .line 176
    .line 177
    .line 178
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 179
    .line 180
    .line 181
    move-result-object v7

    .line 182
    invoke-virtual {v6, v7}, Lcom/haima/hmcp/beans/InputDeviceInfo;->setInputDeviceId(Ljava/lang/Integer;)V

    .line 183
    .line 184
    .line 185
    invoke-static {v5}, Lcom/haima/hmcp/utils/HmInputDeviceManager;->isNewDevice(Landroid/view/InputDevice;)Z

    .line 186
    .line 187
    .line 188
    move-result v7

    .line 189
    if-eqz v7, :cond_4

    .line 190
    .line 191
    sget-object v4, Lcom/haima/hmcp/utils/HmInputDeviceManager;->TAG:Ljava/lang/String;

    .line 192
    .line 193
    new-instance v7, Ljava/lang/StringBuilder;

    .line 194
    .line 195
    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    .line 196
    .line 197
    .line 198
    const-string v8, "initGamePadDevices not contains device:"

    .line 199
    .line 200
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 201
    .line 202
    .line 203
    invoke-virtual {v5}, Landroid/view/InputDevice;->toString()Ljava/lang/String;

    .line 204
    .line 205
    .line 206
    move-result-object v8

    .line 207
    invoke-static {v8}, Lcom/haima/hmcp/utils/StringUtils;->replaceSpecialStr(Ljava/lang/String;)Ljava/lang/String;

    .line 208
    .line 209
    .line 210
    move-result-object v8

    .line 211
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 212
    .line 213
    .line 214
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 215
    .line 216
    .line 217
    move-result-object v7

    .line 218
    invoke-static {v4, v7}, Lcom/haima/hmcp/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 219
    .line 220
    .line 221
    invoke-static {v5}, Lcom/haima/hmcp/utils/HmInputDeviceManager;->getVendorId(Landroid/view/InputDevice;)Ljava/lang/String;

    .line 222
    .line 223
    .line 224
    move-result-object v4

    .line 225
    invoke-static {v4}, Lcom/haima/hmcp/utils/HmInputDeviceManager;->getNextDeviceIndex(Ljava/lang/String;)I

    .line 226
    .line 227
    .line 228
    move-result v4

    .line 229
    invoke-static {v5}, Lcom/haima/hmcp/utils/HmInputDeviceManager;->getVendorId(Landroid/view/InputDevice;)Ljava/lang/String;

    .line 230
    .line 231
    .line 232
    move-result-object v7

    .line 233
    invoke-virtual {v6, v7}, Lcom/haima/hmcp/beans/InputDeviceInfo;->setVendorId(Ljava/lang/String;)V

    .line 234
    .line 235
    .line 236
    sget-object v7, Lcom/haima/hmcp/utils/HmInputDeviceManager;->mGamePads:Ljava/util/concurrent/ConcurrentHashMap;

    .line 237
    .line 238
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 239
    .line 240
    .line 241
    move-result-object v8

    .line 242
    invoke-virtual {v7, v6, v8}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 243
    .line 244
    .line 245
    invoke-static {v6, v4}, Lcom/haima/hmcp/utils/HmInputDeviceManager;->addIndex(Lcom/haima/hmcp/beans/InputDeviceInfo;I)V

    .line 246
    .line 247
    .line 248
    invoke-static {}, Lcom/haima/hmcp/business/SwitchControllerManager;->getInstance()Lcom/haima/hmcp/business/SwitchControllerManager;

    .line 249
    .line 250
    .line 251
    move-result-object v7

    .line 252
    invoke-virtual {v7, v5, v4}, Lcom/haima/hmcp/business/SwitchControllerManager;->addDevice(Landroid/view/InputDevice;I)Z

    .line 253
    .line 254
    .line 255
    goto :goto_3

    .line 256
    :cond_4
    sget-object v6, Lcom/haima/hmcp/utils/HmInputDeviceManager;->mHistoryGamePads:Ljava/util/concurrent/ConcurrentHashMap;

    .line 257
    .line 258
    invoke-static {v4, v6}, Lcom/haima/hmcp/utils/HmInputDeviceManager;->getDeviceInfoById(ILjava/util/concurrent/ConcurrentHashMap;)Lcom/haima/hmcp/beans/InputDeviceInfo;

    .line 259
    .line 260
    .line 261
    move-result-object v6

    .line 262
    sget-object v4, Lcom/haima/hmcp/utils/HmInputDeviceManager;->mHistoryGamePads:Ljava/util/concurrent/ConcurrentHashMap;

    .line 263
    .line 264
    invoke-virtual {v4, v6}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 265
    .line 266
    .line 267
    move-result-object v4

    .line 268
    check-cast v4, Ljava/lang/Integer;

    .line 269
    .line 270
    if-eqz v4, :cond_5

    .line 271
    .line 272
    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    .line 273
    .line 274
    .line 275
    move-result v4

    .line 276
    goto :goto_2

    .line 277
    :cond_5
    const/4 v4, 0x0

    .line 278
    :goto_2
    sget-object v7, Lcom/haima/hmcp/utils/HmInputDeviceManager;->mGamePads:Ljava/util/concurrent/ConcurrentHashMap;

    .line 279
    .line 280
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 281
    .line 282
    .line 283
    move-result-object v8

    .line 284
    invoke-virtual {v7, v6, v8}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 285
    .line 286
    .line 287
    invoke-static {}, Lcom/haima/hmcp/business/SwitchControllerManager;->getInstance()Lcom/haima/hmcp/business/SwitchControllerManager;

    .line 288
    .line 289
    .line 290
    move-result-object v7

    .line 291
    invoke-virtual {v7, v5, v4}, Lcom/haima/hmcp/business/SwitchControllerManager;->addDevice(Landroid/view/InputDevice;I)Z

    .line 292
    .line 293
    .line 294
    :goto_3
    sget-object v5, Lcom/haima/hmcp/utils/HmInputDeviceManager;->TAG:Ljava/lang/String;

    .line 295
    .line 296
    new-instance v7, Ljava/lang/StringBuilder;

    .line 297
    .line 298
    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    .line 299
    .line 300
    .line 301
    const-string v8, "inputDevice :mGamePads.put "

    .line 302
    .line 303
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 304
    .line 305
    .line 306
    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 307
    .line 308
    .line 309
    const-string v6, ","

    .line 310
    .line 311
    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 312
    .line 313
    .line 314
    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 315
    .line 316
    .line 317
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 318
    .line 319
    .line 320
    move-result-object v4

    .line 321
    invoke-static {v5, v4}, Lcom/haima/hmcp/utils/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 322
    .line 323
    .line 324
    :cond_6
    add-int/lit8 v3, v3, 0x1

    .line 325
    .line 326
    goto/16 :goto_1

    .line 327
    .line 328
    :cond_7
    new-instance v0, Ljava/util/ArrayList;

    .line 329
    .line 330
    sget-object v1, Lcom/haima/hmcp/utils/HmInputDeviceManager;->mGamePads:Ljava/util/concurrent/ConcurrentHashMap;

    .line 331
    .line 332
    invoke-virtual {v1}, Ljava/util/concurrent/ConcurrentHashMap;->entrySet()Ljava/util/Set;

    .line 333
    .line 334
    .line 335
    move-result-object v1

    .line 336
    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 337
    .line 338
    .line 339
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 340
    .line 341
    .line 342
    move-result-object v0

    .line 343
    :goto_4
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 344
    .line 345
    .line 346
    move-result v1

    .line 347
    if-eqz v1, :cond_8

    .line 348
    .line 349
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 350
    .line 351
    .line 352
    move-result-object v1

    .line 353
    check-cast v1, Ljava/util/Map$Entry;

    .line 354
    .line 355
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    .line 356
    .line 357
    .line 358
    move-result-object v2

    .line 359
    check-cast v2, Lcom/haima/hmcp/beans/InputDeviceInfo;

    .line 360
    .line 361
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    .line 362
    .line 363
    .line 364
    move-result-object v1

    .line 365
    check-cast v1, Ljava/lang/Integer;

    .line 366
    .line 367
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    .line 368
    .line 369
    .line 370
    move-result v1

    .line 371
    invoke-interface {p0, v2, v1}, Lcom/haima/hmcp/utils/HmInputDeviceManager$OnDeviceConnectStatusListener;->deviceConnected(Lcom/haima/hmcp/beans/InputDeviceInfo;I)V

    .line 372
    .line 373
    .line 374
    goto :goto_4

    .line 375
    :cond_8
    return-void

    .line 376
    :cond_9
    :goto_5
    sget-object p0, Lcom/haima/hmcp/utils/HmInputDeviceManager;->TAG:Ljava/lang/String;

    .line 377
    .line 378
    const-string v0, "updateGamePadDevices failure mGamePads == null || mHistoryGamePads == null"

    .line 379
    .line 380
    invoke-static {p0, v0}, Lcom/haima/hmcp/utils/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 381
    .line 382
    .line 383
    invoke-static {v0}, Lcom/haima/hmcp/countly/CountlyUtil;->recordErrorEvent(Ljava/lang/String;)V

    .line 384
    .line 385
    .line 386
    return-void
.end method

.method public static isGamepadPS(Ljava/lang/String;)Z
    .locals 1

    .line 1
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-nez v0, :cond_0

    .line 6
    .line 7
    sget-object v0, Lcom/haima/hmcp/Constants;->CONFIG_GAMEPAD_PS_VENDOR_IDS:Ljava/lang/String;

    .line 8
    .line 9
    invoke-virtual {v0, p0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 10
    .line 11
    .line 12
    move-result p0

    .line 13
    if-eqz p0, :cond_0

    .line 14
    .line 15
    const/4 p0, 0x1

    .line 16
    goto :goto_0

    .line 17
    :cond_0
    const/4 p0, 0x0

    .line 18
    :goto_0
    return p0
.end method

.method public static isJoyStick(Landroid/view/InputDevice;)Z
    .locals 8

    const/4 v0, 0x0

    if-nez p0, :cond_0

    .line 3
    sget-object p0, Lcom/haima/hmcp/utils/HmInputDeviceManager;->TAG:Ljava/lang/String;

    const-string v1, "isJoyStick device is null"

    invoke-static {p0, v1}, Lcom/haima/hmcp/utils/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    return v0

    .line 4
    :cond_0
    invoke-virtual {p0}, Landroid/view/InputDevice;->getSources()I

    move-result v1

    const v2, 0x1000010

    and-int/2addr v1, v2

    const/4 v3, 0x1

    if-eq v1, v2, :cond_2

    .line 5
    invoke-virtual {p0}, Landroid/view/InputDevice;->getSources()I

    move-result v1

    const/16 v2, 0x401

    and-int/2addr v1, v2

    if-ne v1, v2, :cond_1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    goto :goto_1

    :cond_2
    :goto_0
    const/4 v1, 0x1

    .line 6
    :goto_1
    invoke-virtual {p0, v0}, Landroid/view/InputDevice;->getMotionRange(I)Landroid/view/InputDevice$MotionRange;

    move-result-object v2

    if-nez v2, :cond_4

    .line 7
    invoke-virtual {p0, v3}, Landroid/view/InputDevice;->getMotionRange(I)Landroid/view/InputDevice$MotionRange;

    move-result-object v2

    if-nez v2, :cond_4

    const/16 v2, 0xb

    .line 8
    invoke-virtual {p0, v2}, Landroid/view/InputDevice;->getMotionRange(I)Landroid/view/InputDevice$MotionRange;

    move-result-object v2

    if-nez v2, :cond_4

    const/16 v2, 0xc

    .line 9
    invoke-virtual {p0, v2}, Landroid/view/InputDevice;->getMotionRange(I)Landroid/view/InputDevice$MotionRange;

    move-result-object v2

    if-nez v2, :cond_4

    const/16 v2, 0xd

    .line 10
    invoke-virtual {p0, v2}, Landroid/view/InputDevice;->getMotionRange(I)Landroid/view/InputDevice$MotionRange;

    move-result-object v2

    if-nez v2, :cond_4

    const/16 v2, 0xe

    .line 11
    invoke-virtual {p0, v2}, Landroid/view/InputDevice;->getMotionRange(I)Landroid/view/InputDevice$MotionRange;

    move-result-object v2

    if-eqz v2, :cond_3

    goto :goto_2

    :cond_3
    const/4 v2, 0x0

    goto :goto_3

    :cond_4
    :goto_2
    const/4 v2, 0x1

    :goto_3
    const/16 v4, 0x63

    const/16 v5, 0x64

    const/16 v6, 0x60

    const/16 v7, 0x61

    .line 12
    filled-new-array {v6, v7, v4, v5}, [I

    move-result-object v4

    invoke-virtual {p0, v4}, Landroid/view/InputDevice;->hasKeys([I)[Z

    move-result-object v4

    aget-boolean v4, v4, v0

    .line 13
    invoke-virtual {p0}, Landroid/view/InputDevice;->getSources()I

    move-result v5

    const/16 v6, 0x2002

    and-int/2addr v5, v6

    if-eq v5, v6, :cond_6

    .line 14
    invoke-virtual {p0}, Landroid/view/InputDevice;->getSources()I

    move-result p0

    const v5, 0x20004

    and-int/2addr p0, v5

    if-ne p0, v5, :cond_5

    goto :goto_4

    :cond_5
    const/4 p0, 0x0

    goto :goto_5

    :cond_6
    :goto_4
    const/4 p0, 0x1

    :goto_5
    if-eqz p0, :cond_7

    if-nez v4, :cond_7

    const/4 p0, 0x1

    goto :goto_6

    :cond_7
    const/4 p0, 0x0

    .line 15
    :goto_6
    sget-object v4, Lcom/haima/hmcp/utils/HmInputDeviceManager;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "isJoyStick: sourceJoy = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v6, ", hasJoyMotion = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v6, ", isMouse = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/haima/hmcp/utils/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz v1, :cond_8

    if-eqz v2, :cond_8

    if-nez p0, :cond_8

    const/4 v0, 0x1

    :cond_8
    return v0
.end method

.method public static isJoyStick(Landroid/view/InputEvent;)Z
    .locals 0

    .line 1
    invoke-virtual {p0}, Landroid/view/InputEvent;->getDevice()Landroid/view/InputDevice;

    move-result-object p0

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return p0

    .line 2
    :cond_0
    invoke-static {p0}, Lcom/haima/hmcp/utils/HmInputDeviceManager;->isJoyStick(Landroid/view/InputDevice;)Z

    move-result p0

    return p0
.end method

.method public static isMouse(Landroid/view/InputDevice;)Z
    .locals 4

    const/16 v0, 0x63

    const/16 v1, 0x64

    const/16 v2, 0x60

    const/16 v3, 0x61

    .line 3
    filled-new-array {v2, v3, v0, v1}, [I

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/view/InputDevice;->hasKeys([I)[Z

    move-result-object v0

    const/4 v1, 0x0

    aget-boolean v0, v0, v1

    .line 4
    invoke-virtual {p0}, Landroid/view/InputDevice;->getSources()I

    move-result v2

    const/16 v3, 0x2002

    and-int/2addr v2, v3

    if-eq v2, v3, :cond_0

    .line 5
    invoke-virtual {p0}, Landroid/view/InputDevice;->getSources()I

    move-result p0

    const v2, 0x20004

    and-int/2addr p0, v2

    if-ne p0, v2, :cond_1

    :cond_0
    if-nez v0, :cond_1

    const/4 v1, 0x1

    :cond_1
    return v1
.end method

.method public static isMouse(Landroid/view/InputEvent;)Z
    .locals 0

    .line 1
    invoke-virtual {p0}, Landroid/view/InputEvent;->getDevice()Landroid/view/InputDevice;

    move-result-object p0

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return p0

    .line 2
    :cond_0
    invoke-static {p0}, Lcom/haima/hmcp/utils/HmInputDeviceManager;->isMouse(Landroid/view/InputDevice;)Z

    move-result p0

    return p0
.end method

.method public static isMouseInput(Landroid/view/InputEvent;)Z
    .locals 5

    .line 1
    sget-object v0, Lcom/haima/hmcp/utils/HmInputDeviceManager;->TAG:Ljava/lang/String;

    .line 2
    .line 3
    const-string v1, "isMouseInput "

    .line 4
    .line 5
    invoke-static {v0, v1}, Lcom/haima/hmcp/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    const/4 v0, 0x0

    .line 9
    if-eqz p0, :cond_2

    .line 10
    .line 11
    invoke-virtual {p0}, Landroid/view/InputEvent;->getSource()I

    .line 12
    .line 13
    .line 14
    move-result p0

    .line 15
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 16
    .line 17
    const/16 v2, 0x1a

    .line 18
    .line 19
    const/4 v3, 0x1

    .line 20
    const/16 v4, 0x2002

    .line 21
    .line 22
    if-lt v1, v2, :cond_1

    .line 23
    .line 24
    and-int/lit16 v1, p0, 0x2002

    .line 25
    .line 26
    if-eq v1, v4, :cond_0

    .line 27
    .line 28
    const v1, 0x20004

    .line 29
    .line 30
    .line 31
    and-int/2addr p0, v1

    .line 32
    if-ne p0, v1, :cond_2

    .line 33
    .line 34
    :cond_0
    :goto_0
    const/4 v0, 0x1

    .line 35
    goto :goto_1

    .line 36
    :cond_1
    and-int/2addr p0, v4

    .line 37
    if-ne p0, v4, :cond_2

    .line 38
    .line 39
    goto :goto_0

    .line 40
    :cond_2
    :goto_1
    sget-object p0, Lcom/haima/hmcp/utils/HmInputDeviceManager;->TAG:Ljava/lang/String;

    .line 41
    .line 42
    new-instance v1, Ljava/lang/StringBuilder;

    .line 43
    .line 44
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 45
    .line 46
    .line 47
    const-string v2, "isMouseInput isMouse:"

    .line 48
    .line 49
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 50
    .line 51
    .line 52
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 53
    .line 54
    .line 55
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 56
    .line 57
    .line 58
    move-result-object v1

    .line 59
    invoke-static {p0, v1}, Lcom/haima/hmcp/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 60
    .line 61
    .line 62
    return v0
.end method

.method public static isMouseLeftKeyEvent(Landroid/view/MotionEvent;)Z
    .locals 5

    .line 1
    sget-object v0, Lcom/haima/hmcp/utils/HmInputDeviceManager;->TAG:Ljava/lang/String;

    .line 2
    .line 3
    new-instance v1, Ljava/lang/StringBuilder;

    .line 4
    .line 5
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 6
    .line 7
    .line 8
    const-string v2, "isMouseEvent event"

    .line 9
    .line 10
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 11
    .line 12
    .line 13
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 14
    .line 15
    .line 16
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 17
    .line 18
    .line 19
    move-result-object v1

    .line 20
    invoke-static {v0, v1}, Lcom/haima/hmcp/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 21
    .line 22
    .line 23
    invoke-static {p0}, Lcom/haima/hmcp/utils/HmInputDeviceManager;->isMouseInput(Landroid/view/InputEvent;)Z

    .line 24
    .line 25
    .line 26
    move-result v0

    .line 27
    sget-object v1, Lcom/haima/hmcp/utils/HmInputDeviceManager;->TAG:Ljava/lang/String;

    .line 28
    .line 29
    new-instance v2, Ljava/lang/StringBuilder;

    .line 30
    .line 31
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 32
    .line 33
    .line 34
    const-string v3, "isMouseEvent isMouseInput:"

    .line 35
    .line 36
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 37
    .line 38
    .line 39
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 40
    .line 41
    .line 42
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 43
    .line 44
    .line 45
    move-result-object v2

    .line 46
    invoke-static {v1, v2}, Lcom/haima/hmcp/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 47
    .line 48
    .line 49
    if-eqz v0, :cond_1

    .line 50
    .line 51
    sget-object v1, Lcom/haima/hmcp/utils/HmInputDeviceManager;->TAG:Ljava/lang/String;

    .line 52
    .line 53
    new-instance v2, Ljava/lang/StringBuilder;

    .line 54
    .line 55
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 56
    .line 57
    .line 58
    const-string v3, "isMouseEvent is mouse result:"

    .line 59
    .line 60
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 61
    .line 62
    .line 63
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 64
    .line 65
    .line 66
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 67
    .line 68
    .line 69
    move-result-object v2

    .line 70
    invoke-static {v1, v2}, Lcom/haima/hmcp/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 71
    .line 72
    .line 73
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 74
    .line 75
    const/16 v2, 0x17

    .line 76
    .line 77
    if-lt v1, v2, :cond_1

    .line 78
    .line 79
    invoke-virtual {p0}, Landroid/view/MotionEvent;->getAction()I

    .line 80
    .line 81
    .line 82
    move-result v0

    .line 83
    invoke-static {p0}, Lcom/haima/hmcp/business/c;->a(Landroid/view/MotionEvent;)I

    .line 84
    .line 85
    .line 86
    move-result v1

    .line 87
    invoke-virtual {p0}, Landroid/view/MotionEvent;->getButtonState()I

    .line 88
    .line 89
    .line 90
    move-result p0

    .line 91
    sget-object v2, Lcom/haima/hmcp/utils/HmInputDeviceManager;->TAG:Ljava/lang/String;

    .line 92
    .line 93
    new-instance v3, Ljava/lang/StringBuilder;

    .line 94
    .line 95
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 96
    .line 97
    .line 98
    const-string v4, "isMouseEvent action:"

    .line 99
    .line 100
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 101
    .line 102
    .line 103
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 104
    .line 105
    .line 106
    const-string v0, ",actionButton:"

    .line 107
    .line 108
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 109
    .line 110
    .line 111
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 112
    .line 113
    .line 114
    const-string v0, ",actionButtonState:"

    .line 115
    .line 116
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 117
    .line 118
    .line 119
    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 120
    .line 121
    .line 122
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 123
    .line 124
    .line 125
    move-result-object p0

    .line 126
    invoke-static {v2, p0}, Lcom/haima/hmcp/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 127
    .line 128
    .line 129
    const/4 p0, 0x1

    .line 130
    if-ne v1, p0, :cond_0

    .line 131
    .line 132
    const/4 v0, 0x1

    .line 133
    goto :goto_0

    .line 134
    :cond_0
    const/4 p0, 0x0

    .line 135
    const/4 v0, 0x0

    .line 136
    :cond_1
    :goto_0
    sget-object p0, Lcom/haima/hmcp/utils/HmInputDeviceManager;->TAG:Ljava/lang/String;

    .line 137
    .line 138
    new-instance v1, Ljava/lang/StringBuilder;

    .line 139
    .line 140
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 141
    .line 142
    .line 143
    const-string v2, "isMouseEvent is left mouse result:"

    .line 144
    .line 145
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 146
    .line 147
    .line 148
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 149
    .line 150
    .line 151
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 152
    .line 153
    .line 154
    move-result-object v1

    .line 155
    invoke-static {p0, v1}, Lcom/haima/hmcp/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 156
    .line 157
    .line 158
    return v0
.end method

.method private static isNewDevice(Landroid/view/InputDevice;)Z
    .locals 4

    .line 1
    const/4 v0, 0x0

    .line 2
    if-nez p0, :cond_0

    .line 3
    .line 4
    return v0

    .line 5
    :cond_0
    sget-object v1, Lcom/haima/hmcp/utils/HmInputDeviceManager;->mHistoryGamePads:Ljava/util/concurrent/ConcurrentHashMap;

    .line 6
    .line 7
    invoke-virtual {v1}, Ljava/util/concurrent/ConcurrentHashMap;->keySet()Ljava/util/Set;

    .line 8
    .line 9
    .line 10
    move-result-object v1

    .line 11
    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 12
    .line 13
    .line 14
    move-result-object v1

    .line 15
    :cond_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 16
    .line 17
    .line 18
    move-result v2

    .line 19
    if-eqz v2, :cond_2

    .line 20
    .line 21
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 22
    .line 23
    .line 24
    move-result-object v2

    .line 25
    check-cast v2, Lcom/haima/hmcp/beans/InputDeviceInfo;

    .line 26
    .line 27
    if-eqz v2, :cond_1

    .line 28
    .line 29
    invoke-virtual {v2}, Lcom/haima/hmcp/beans/InputDeviceInfo;->getInputDeviceId()Ljava/lang/Integer;

    .line 30
    .line 31
    .line 32
    move-result-object v2

    .line 33
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    .line 34
    .line 35
    .line 36
    move-result v2

    .line 37
    invoke-virtual {p0}, Landroid/view/InputDevice;->getId()I

    .line 38
    .line 39
    .line 40
    move-result v3

    .line 41
    if-ne v2, v3, :cond_1

    .line 42
    .line 43
    return v0

    .line 44
    :cond_2
    sget-object v0, Lcom/haima/hmcp/utils/HmInputDeviceManager;->TAG:Ljava/lang/String;

    .line 45
    .line 46
    new-instance v1, Ljava/lang/StringBuilder;

    .line 47
    .line 48
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 49
    .line 50
    .line 51
    const-string v2, "GamePadData isNewDevice id:"

    .line 52
    .line 53
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 54
    .line 55
    .line 56
    invoke-virtual {p0}, Landroid/view/InputDevice;->getId()I

    .line 57
    .line 58
    .line 59
    move-result p0

    .line 60
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 61
    .line 62
    .line 63
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 64
    .line 65
    .line 66
    move-result-object p0

    .line 67
    invoke-static {v0, p0}, Lcom/haima/hmcp/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 68
    .line 69
    .line 70
    const/4 p0, 0x1

    .line 71
    return p0
.end method

.method public static isSameVendorType(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 0

    .line 1
    invoke-static {p0}, Lcom/haima/hmcp/utils/HmInputDeviceManager;->getVendorType(Ljava/lang/String;)Lcom/haima/hmcp/utils/HmInputDeviceManager$Vendor;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    invoke-static {p1}, Lcom/haima/hmcp/utils/HmInputDeviceManager;->getVendorType(Ljava/lang/String;)Lcom/haima/hmcp/utils/HmInputDeviceManager$Vendor;

    .line 6
    .line 7
    .line 8
    move-result-object p1

    .line 9
    if-ne p0, p1, :cond_0

    .line 10
    .line 11
    const/4 p0, 0x1

    .line 12
    goto :goto_0

    .line 13
    :cond_0
    const/4 p0, 0x0

    .line 14
    :goto_0
    return p0
.end method

.method public static isSystemAPISupportVibrator()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method private static joyStickActions(Landroid/view/InputDevice;Lcom/haima/hmcp/utils/HmInputDeviceManager$OnDeviceConnectStatusListener;Ljava/lang/String;I)V
    .locals 3

    .line 1
    invoke-static {p0}, Lcom/haima/hmcp/utils/HmInputDeviceManager;->getVendorId(Landroid/view/InputDevice;)Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-static {v0}, Lcom/haima/hmcp/utils/HmInputDeviceManager;->getNextDeviceIndex(Ljava/lang/String;)I

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    sget-object v1, Lcom/haima/hmcp/utils/HmInputDeviceManager;->TAG:Ljava/lang/String;

    .line 10
    .line 11
    new-instance v2, Ljava/lang/StringBuilder;

    .line 12
    .line 13
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 14
    .line 15
    .line 16
    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 17
    .line 18
    .line 19
    const-string p2, "=singleGamePad= isJoyStick deviceId:"

    .line 20
    .line 21
    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 22
    .line 23
    .line 24
    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 25
    .line 26
    .line 27
    const-string p2, ",index:"

    .line 28
    .line 29
    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 30
    .line 31
    .line 32
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 33
    .line 34
    .line 35
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 36
    .line 37
    .line 38
    move-result-object p2

    .line 39
    invoke-static {v1, p2}, Lcom/haima/hmcp/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 40
    .line 41
    .line 42
    new-instance p2, Lcom/haima/hmcp/beans/InputDeviceInfo;

    .line 43
    .line 44
    invoke-direct {p2}, Lcom/haima/hmcp/beans/InputDeviceInfo;-><init>()V

    .line 45
    .line 46
    .line 47
    invoke-static {p0}, Lcom/haima/hmcp/utils/HmInputDeviceManager;->getVendorId(Landroid/view/InputDevice;)Ljava/lang/String;

    .line 48
    .line 49
    .line 50
    move-result-object p3

    .line 51
    invoke-virtual {p2, p3}, Lcom/haima/hmcp/beans/InputDeviceInfo;->setVendorId(Ljava/lang/String;)V

    .line 52
    .line 53
    .line 54
    invoke-virtual {p0}, Landroid/view/InputDevice;->getId()I

    .line 55
    .line 56
    .line 57
    move-result p3

    .line 58
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 59
    .line 60
    .line 61
    move-result-object p3

    .line 62
    invoke-virtual {p2, p3}, Lcom/haima/hmcp/beans/InputDeviceInfo;->setInputDeviceId(Ljava/lang/Integer;)V

    .line 63
    .line 64
    .line 65
    sget-object p3, Lcom/haima/hmcp/utils/HmInputDeviceManager;->mGamePads:Ljava/util/concurrent/ConcurrentHashMap;

    .line 66
    .line 67
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 68
    .line 69
    .line 70
    move-result-object v1

    .line 71
    invoke-virtual {p3, p2, v1}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 72
    .line 73
    .line 74
    invoke-static {}, Lcom/haima/hmcp/business/SwitchControllerManager;->getInstance()Lcom/haima/hmcp/business/SwitchControllerManager;

    .line 75
    .line 76
    .line 77
    move-result-object p3

    .line 78
    invoke-virtual {p3, p0, v0}, Lcom/haima/hmcp/business/SwitchControllerManager;->addDevice(Landroid/view/InputDevice;I)Z

    .line 79
    .line 80
    .line 81
    invoke-interface {p1, p2, v0}, Lcom/haima/hmcp/utils/HmInputDeviceManager$OnDeviceConnectStatusListener;->deviceConnected(Lcom/haima/hmcp/beans/InputDeviceInfo;I)V

    .line 82
    .line 83
    .line 84
    invoke-static {p2, v0}, Lcom/haima/hmcp/utils/HmInputDeviceManager;->addIndex(Lcom/haima/hmcp/beans/InputDeviceInfo;I)V

    .line 85
    .line 86
    .line 87
    return-void
.end method

.method public static parseJoyKey(Landroid/view/KeyEvent;)Lcom/haima/hmcp/beans/JoyStickBean;
    .locals 6

    .line 1
    new-instance v0, Lcom/haima/hmcp/beans/JoyStickBean;

    invoke-direct {v0}, Lcom/haima/hmcp/beans/JoyStickBean;-><init>()V

    .line 2
    invoke-virtual {p0}, Landroid/view/InputEvent;->getDevice()Landroid/view/InputDevice;

    move-result-object v1

    if-nez v1, :cond_0

    .line 3
    sget-object p0, Lcom/haima/hmcp/utils/HmInputDeviceManager;->TAG:Ljava/lang/String;

    const-string v1, "parseJoyKey interrupted:inputDevice is null"

    invoke-static {p0, v1}, Lcom/haima/hmcp/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0

    .line 4
    :cond_0
    invoke-virtual {v1}, Landroid/view/InputDevice;->getId()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    .line 5
    sget-object v1, Lcom/haima/hmcp/utils/HmInputDeviceManager;->mJoySticks:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v1, v0}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/haima/hmcp/beans/JoyStickBean;

    if-nez v2, :cond_1

    .line 6
    new-instance v2, Lcom/haima/hmcp/beans/JoyStickBean;

    invoke-direct {v2}, Lcom/haima/hmcp/beans/JoyStickBean;-><init>()V

    .line 7
    :cond_1
    invoke-virtual {v2, p0}, Lcom/haima/hmcp/beans/JoyStickBean;->parseKey(Landroid/view/KeyEvent;)Z

    move-result p0

    .line 8
    sget-object v3, Lcom/haima/hmcp/utils/HmInputDeviceManager;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "parseJoyKey hasChanged:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v3, p0}, Lcom/haima/hmcp/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 9
    invoke-virtual {v1, v0, v2}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object v2
.end method

.method public static parseJoyKey(Ljava/lang/String;Landroid/view/InputEvent;I)Lcom/haima/hmcp/beans/JoyStickBean;
    .locals 11

    .line 10
    new-instance v0, Lcom/haima/hmcp/beans/JoyStickBean;

    invoke-direct {v0}, Lcom/haima/hmcp/beans/JoyStickBean;-><init>()V

    .line 11
    invoke-virtual {p1}, Landroid/view/InputEvent;->getDevice()Landroid/view/InputDevice;

    move-result-object p1

    if-nez p1, :cond_0

    .line 12
    sget-object p0, Lcom/haima/hmcp/utils/HmInputDeviceManager;->TAG:Ljava/lang/String;

    const-string p1, "parseJoyKey interrupted:inputDevice is null"

    invoke-static {p0, p1}, Lcom/haima/hmcp/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0

    :cond_0
    const/16 p1, 0x3e8

    .line 13
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    .line 14
    sget-object v0, Lcom/haima/hmcp/utils/HmInputDeviceManager;->mJoySticks:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/haima/hmcp/beans/JoyStickBean;

    if-nez v0, :cond_1

    .line 15
    new-instance v0, Lcom/haima/hmcp/beans/JoyStickBean;

    invoke-direct {v0}, Lcom/haima/hmcp/beans/JoyStickBean;-><init>()V

    .line 16
    :cond_1
    sget-object v1, Lcom/haima/hmcp/utils/HmInputDeviceManager;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "parseJoyKey: keyCodeName:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/haima/hmcp/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p0, :cond_7

    const-string v1, "|"

    .line 17
    invoke-virtual {p0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_7

    const-string v1, "\\|"

    .line 18
    invoke-virtual {p0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p0

    .line 19
    array-length v1, p0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    :goto_0
    if-ge v3, v1, :cond_6

    aget-object v5, p0, v3

    if-eqz v5, :cond_5

    .line 20
    invoke-virtual {v5}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->isEmpty()Z

    move-result v6

    if-nez v6, :cond_5

    .line 21
    invoke-virtual {v5}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/haima/hmcp/widgets/JoyStickMappingManager;->getKeyCode(Ljava/lang/String;)I

    move-result v6

    const/4 v7, -0x1

    if-eq v6, v7, :cond_4

    .line 22
    invoke-virtual {v0, v6, p2}, Lcom/haima/hmcp/beans/JoyStickBean;->parseMappingKey(II)Z

    move-result v7

    if-nez v4, :cond_3

    if-eqz v7, :cond_2

    goto :goto_1

    :cond_2
    const/4 v4, 0x0

    goto :goto_2

    :cond_3
    :goto_1
    const/4 v4, 0x1

    .line 23
    :goto_2
    sget-object v8, Lcom/haima/hmcp/utils/HmInputDeviceManager;->TAG:Ljava/lang/String;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "parseJoyKey multi-key: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " (keyCode:"

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, ") hasChanged:"

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v8, v5}, Lcom/haima/hmcp/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_3

    .line 24
    :cond_4
    sget-object v6, Lcom/haima/hmcp/utils/HmInputDeviceManager;->TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "parseJoyKey multi-key: invalid keyCode for "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v6, v5}, Lcom/haima/hmcp/utils/LogUtils;->w(Ljava/lang/String;Ljava/lang/String;)V

    :cond_5
    :goto_3
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 25
    :cond_6
    sget-object p0, Lcom/haima/hmcp/utils/HmInputDeviceManager;->TAG:Ljava/lang/String;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "parseJoyKey multi-key total hasChanged:"

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p0, p2}, Lcom/haima/hmcp/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_4

    .line 26
    :cond_7
    invoke-static {p0}, Lcom/haima/hmcp/widgets/JoyStickMappingManager;->getKeyCode(Ljava/lang/String;)I

    move-result v1

    .line 27
    invoke-virtual {v0, v1, p2}, Lcom/haima/hmcp/beans/JoyStickBean;->parseMappingKey(II)Z

    move-result p2

    .line 28
    sget-object v1, Lcom/haima/hmcp/utils/HmInputDeviceManager;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "parseJoyKey single-key: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, " hasChanged:"

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Lcom/haima/hmcp/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 29
    :goto_4
    sget-object p0, Lcom/haima/hmcp/utils/HmInputDeviceManager;->mJoySticks:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {p0, p1, v0}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 30
    sget-object p0, Lcom/haima/hmcp/utils/HmInputDeviceManager;->TAG:Ljava/lang/String;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "parseJoyKey joyStickBean="

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/haima/hmcp/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method public static parseJoyMotion(Landroid/view/MotionEvent;)Lcom/haima/hmcp/beans/JoyStickBean;
    .locals 6

    .line 1
    new-instance v0, Lcom/haima/hmcp/beans/JoyStickBean;

    .line 2
    .line 3
    invoke-direct {v0}, Lcom/haima/hmcp/beans/JoyStickBean;-><init>()V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p0}, Landroid/view/InputEvent;->getDevice()Landroid/view/InputDevice;

    .line 7
    .line 8
    .line 9
    move-result-object v1

    .line 10
    if-nez v1, :cond_0

    .line 11
    .line 12
    sget-object p0, Lcom/haima/hmcp/utils/HmInputDeviceManager;->TAG:Ljava/lang/String;

    .line 13
    .line 14
    const-string v1, "parseJoyMotion interrupted:inputDevice is null"

    .line 15
    .line 16
    invoke-static {p0, v1}, Lcom/haima/hmcp/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 17
    .line 18
    .line 19
    return-object v0

    .line 20
    :cond_0
    invoke-virtual {v1}, Landroid/view/InputDevice;->getId()I

    .line 21
    .line 22
    .line 23
    move-result v1

    .line 24
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 25
    .line 26
    .line 27
    move-result-object v1

    .line 28
    sget-object v2, Lcom/haima/hmcp/utils/HmInputDeviceManager;->mJoySticks:Ljava/util/concurrent/ConcurrentHashMap;

    .line 29
    .line 30
    invoke-virtual {v2, v1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 31
    .line 32
    .line 33
    move-result-object v3

    .line 34
    if-nez v3, :cond_1

    .line 35
    .line 36
    invoke-virtual {v2, v1, v0}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 37
    .line 38
    .line 39
    :cond_1
    invoke-virtual {v2, v1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 40
    .line 41
    .line 42
    move-result-object v0

    .line 43
    check-cast v0, Lcom/haima/hmcp/beans/JoyStickBean;

    .line 44
    .line 45
    if-nez v0, :cond_2

    .line 46
    .line 47
    new-instance v0, Lcom/haima/hmcp/beans/JoyStickBean;

    .line 48
    .line 49
    invoke-direct {v0}, Lcom/haima/hmcp/beans/JoyStickBean;-><init>()V

    .line 50
    .line 51
    .line 52
    :cond_2
    invoke-virtual {v0, p0}, Lcom/haima/hmcp/beans/JoyStickBean;->parseMotion(Landroid/view/MotionEvent;)Z

    .line 53
    .line 54
    .line 55
    move-result p0

    .line 56
    sget-object v3, Lcom/haima/hmcp/utils/HmInputDeviceManager;->TAG:Ljava/lang/String;

    .line 57
    .line 58
    new-instance v4, Ljava/lang/StringBuilder;

    .line 59
    .line 60
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 61
    .line 62
    .line 63
    const-string v5, "parseJoyMotion hasChanged:"

    .line 64
    .line 65
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 66
    .line 67
    .line 68
    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 69
    .line 70
    .line 71
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 72
    .line 73
    .line 74
    move-result-object p0

    .line 75
    invoke-static {v3, p0}, Lcom/haima/hmcp/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 76
    .line 77
    .line 78
    invoke-virtual {v2, v1, v0}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 79
    .line 80
    .line 81
    return-object v0
.end method

.method public static parseMappingMotion(Landroid/view/InputEvent;FFI)Lcom/haima/hmcp/beans/JoyStickBean;
    .locals 3

    .line 1
    new-instance v0, Lcom/haima/hmcp/beans/JoyStickBean;

    .line 2
    .line 3
    invoke-direct {v0}, Lcom/haima/hmcp/beans/JoyStickBean;-><init>()V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p0}, Landroid/view/InputEvent;->getDevice()Landroid/view/InputDevice;

    .line 7
    .line 8
    .line 9
    move-result-object p0

    .line 10
    if-nez p0, :cond_0

    .line 11
    .line 12
    sget-object p0, Lcom/haima/hmcp/utils/HmInputDeviceManager;->TAG:Ljava/lang/String;

    .line 13
    .line 14
    const-string p1, "parseJoyKey interrupted:inputDevice is null"

    .line 15
    .line 16
    invoke-static {p0, p1}, Lcom/haima/hmcp/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 17
    .line 18
    .line 19
    return-object v0

    .line 20
    :cond_0
    const/16 p0, 0x3e8

    .line 21
    .line 22
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 23
    .line 24
    .line 25
    move-result-object p0

    .line 26
    sget-object v0, Lcom/haima/hmcp/utils/HmInputDeviceManager;->mJoySticks:Ljava/util/concurrent/ConcurrentHashMap;

    .line 27
    .line 28
    invoke-virtual {v0, p0}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 29
    .line 30
    .line 31
    move-result-object v1

    .line 32
    check-cast v1, Lcom/haima/hmcp/beans/JoyStickBean;

    .line 33
    .line 34
    if-nez v1, :cond_1

    .line 35
    .line 36
    new-instance v1, Lcom/haima/hmcp/beans/JoyStickBean;

    .line 37
    .line 38
    invoke-direct {v1}, Lcom/haima/hmcp/beans/JoyStickBean;-><init>()V

    .line 39
    .line 40
    .line 41
    :cond_1
    const/4 v2, 0x2

    .line 42
    if-ne p3, v2, :cond_2

    .line 43
    .line 44
    iget p3, v1, Lcom/haima/hmcp/beans/JoyStickBean;->R_X:F

    .line 45
    .line 46
    iget v2, v1, Lcom/haima/hmcp/beans/JoyStickBean;->R_Y:F

    .line 47
    .line 48
    neg-float v2, v2

    .line 49
    invoke-virtual {v1, p1, p2, p3, v2}, Lcom/haima/hmcp/beans/JoyStickBean;->parseMappingMotion(FFFF)V

    .line 50
    .line 51
    .line 52
    goto :goto_0

    .line 53
    :cond_2
    const/4 v2, 0x3

    .line 54
    if-ne p3, v2, :cond_3

    .line 55
    .line 56
    iget p3, v1, Lcom/haima/hmcp/beans/JoyStickBean;->L_X:F

    .line 57
    .line 58
    iget v2, v1, Lcom/haima/hmcp/beans/JoyStickBean;->L_Y:F

    .line 59
    .line 60
    neg-float v2, v2

    .line 61
    invoke-virtual {v1, p3, v2, p1, p2}, Lcom/haima/hmcp/beans/JoyStickBean;->parseMappingMotion(FFFF)V

    .line 62
    .line 63
    .line 64
    :cond_3
    :goto_0
    invoke-virtual {v0, p0, v1}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 65
    .line 66
    .line 67
    sget-object p0, Lcom/haima/hmcp/utils/HmInputDeviceManager;->TAG:Ljava/lang/String;

    .line 68
    .line 69
    new-instance p1, Ljava/lang/StringBuilder;

    .line 70
    .line 71
    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    .line 72
    .line 73
    .line 74
    const-string p2, "parseMappingMotion joyStickBean="

    .line 75
    .line 76
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 77
    .line 78
    .line 79
    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    .line 80
    .line 81
    .line 82
    move-result p2

    .line 83
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 84
    .line 85
    .line 86
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 87
    .line 88
    .line 89
    move-result-object p1

    .line 90
    invoke-static {p0, p1}, Lcom/haima/hmcp/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 91
    .line 92
    .line 93
    return-object v1
.end method

.method public static registGamePadListener(Landroid/content/Context;Lcom/haima/hmcp/utils/HmInputDeviceManager$OnDeviceConnectStatusListener;)V
    .locals 1

    .line 1
    if-nez p1, :cond_0

    .line 2
    .line 3
    sget-object p0, Lcom/haima/hmcp/utils/HmInputDeviceManager;->TAG:Ljava/lang/String;

    .line 4
    .line 5
    const-string p1, "updateGamePadDevices failure listener == null"

    .line 6
    .line 7
    invoke-static {p0, p1}, Lcom/haima/hmcp/utils/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 8
    .line 9
    .line 10
    invoke-static {p1}, Lcom/haima/hmcp/countly/CountlyUtil;->recordErrorEvent(Ljava/lang/String;)V

    .line 11
    .line 12
    .line 13
    return-void

    .line 14
    :cond_0
    sget-object v0, Lcom/haima/hmcp/utils/HmInputDeviceManager;->inputDeviceListener:Landroid/hardware/input/InputManager$InputDeviceListener;

    .line 15
    .line 16
    if-nez v0, :cond_1

    .line 17
    .line 18
    const-string v0, "input"

    .line 19
    .line 20
    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 21
    .line 22
    .line 23
    move-result-object p0

    .line 24
    check-cast p0, Landroid/hardware/input/InputManager;

    .line 25
    .line 26
    sput-object p0, Lcom/haima/hmcp/utils/HmInputDeviceManager;->mInputManager:Landroid/hardware/input/InputManager;

    .line 27
    .line 28
    new-instance p0, Lcom/haima/hmcp/utils/HmInputDeviceManager$1;

    .line 29
    .line 30
    invoke-direct {p0, p1}, Lcom/haima/hmcp/utils/HmInputDeviceManager$1;-><init>(Lcom/haima/hmcp/utils/HmInputDeviceManager$OnDeviceConnectStatusListener;)V

    .line 31
    .line 32
    .line 33
    sput-object p0, Lcom/haima/hmcp/utils/HmInputDeviceManager;->inputDeviceListener:Landroid/hardware/input/InputManager$InputDeviceListener;

    .line 34
    .line 35
    sget-object p1, Lcom/haima/hmcp/utils/HmInputDeviceManager;->mInputManager:Landroid/hardware/input/InputManager;

    .line 36
    .line 37
    if-eqz p1, :cond_1

    .line 38
    .line 39
    const/4 v0, 0x0

    .line 40
    invoke-virtual {p1, p0, v0}, Landroid/hardware/input/InputManager;->registerInputDeviceListener(Landroid/hardware/input/InputManager$InputDeviceListener;Landroid/os/Handler;)V

    .line 41
    .line 42
    .line 43
    :cond_1
    return-void
.end method

.method public static removeDevice(Lcom/haima/hmcp/beans/InputDeviceInfo;)V
    .locals 3

    .line 1
    sget-object v0, Lcom/haima/hmcp/utils/HmInputDeviceManager;->TAG:Ljava/lang/String;

    .line 2
    .line 3
    new-instance v1, Ljava/lang/StringBuilder;

    .line 4
    .line 5
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 6
    .line 7
    .line 8
    const-string v2, "removeDevice:"

    .line 9
    .line 10
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 11
    .line 12
    .line 13
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 14
    .line 15
    .line 16
    const-string v2, ",mJoySticks:"

    .line 17
    .line 18
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 19
    .line 20
    .line 21
    sget-object v2, Lcom/haima/hmcp/utils/HmInputDeviceManager;->mJoySticks:Ljava/util/concurrent/ConcurrentHashMap;

    .line 22
    .line 23
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 24
    .line 25
    .line 26
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 27
    .line 28
    .line 29
    move-result-object v1

    .line 30
    invoke-static {v0, v1}, Lcom/haima/hmcp/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 31
    .line 32
    .line 33
    if-eqz p0, :cond_0

    .line 34
    .line 35
    invoke-virtual {p0}, Lcom/haima/hmcp/beans/InputDeviceInfo;->getInputDeviceId()Ljava/lang/Integer;

    .line 36
    .line 37
    .line 38
    move-result-object p0

    .line 39
    invoke-virtual {v2, p0}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 40
    .line 41
    .line 42
    :cond_0
    sget-object p0, Lcom/haima/hmcp/utils/HmInputDeviceManager;->TAG:Ljava/lang/String;

    .line 43
    .line 44
    new-instance v0, Ljava/lang/StringBuilder;

    .line 45
    .line 46
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 47
    .line 48
    .line 49
    const-string v1, "removeDevice mJoySticks:"

    .line 50
    .line 51
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 52
    .line 53
    .line 54
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 55
    .line 56
    .line 57
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 58
    .line 59
    .line 60
    move-result-object v0

    .line 61
    invoke-static {p0, v0}, Lcom/haima/hmcp/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 62
    .line 63
    .line 64
    return-void
.end method

.method public static removeIndex(Lcom/haima/hmcp/beans/InputDeviceInfo;I)V
    .locals 3

    .line 1
    sget-object v0, Lcom/haima/hmcp/utils/HmInputDeviceManager;->TAG:Ljava/lang/String;

    .line 2
    .line 3
    new-instance v1, Ljava/lang/StringBuilder;

    .line 4
    .line 5
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 6
    .line 7
    .line 8
    const-string v2, "removeIndex inputDevice:"

    .line 9
    .line 10
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 11
    .line 12
    .line 13
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 14
    .line 15
    .line 16
    const-string v2, ",index:"

    .line 17
    .line 18
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 19
    .line 20
    .line 21
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 22
    .line 23
    .line 24
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 25
    .line 26
    .line 27
    move-result-object v1

    .line 28
    invoke-static {v0, v1}, Lcom/haima/hmcp/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 29
    .line 30
    .line 31
    if-nez p0, :cond_0

    .line 32
    .line 33
    sget-object p0, Lcom/haima/hmcp/utils/HmInputDeviceManager;->TAG:Ljava/lang/String;

    .line 34
    .line 35
    const-string p1, "removeIndex inputDevice==null"

    .line 36
    .line 37
    invoke-static {p0, p1}, Lcom/haima/hmcp/utils/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 38
    .line 39
    .line 40
    return-void

    .line 41
    :cond_0
    invoke-virtual {p0}, Lcom/haima/hmcp/beans/InputDeviceInfo;->getVendorId()Ljava/lang/String;

    .line 42
    .line 43
    .line 44
    move-result-object p0

    .line 45
    invoke-static {p0}, Lcom/haima/hmcp/utils/HmInputDeviceManager;->isGamepadPS(Ljava/lang/String;)Z

    .line 46
    .line 47
    .line 48
    move-result p0

    .line 49
    if-eqz p0, :cond_1

    .line 50
    .line 51
    sget-object p0, Lcom/haima/hmcp/utils/HmInputDeviceManager;->usedIndicesPS:Ljava/util/Set;

    .line 52
    .line 53
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 54
    .line 55
    .line 56
    move-result-object p1

    .line 57
    invoke-interface {p0, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 58
    .line 59
    .line 60
    goto :goto_0

    .line 61
    :cond_1
    sget-object p0, Lcom/haima/hmcp/utils/HmInputDeviceManager;->usedIndicesXbox:Ljava/util/Set;

    .line 62
    .line 63
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 64
    .line 65
    .line 66
    move-result-object p1

    .line 67
    invoke-interface {p0, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 68
    .line 69
    .line 70
    :goto_0
    return-void
.end method

.method public static resetJoyStickBean(Landroid/view/InputEvent;)Lcom/haima/hmcp/beans/JoyStickBean;
    .locals 2

    .line 1
    new-instance v0, Lcom/haima/hmcp/beans/JoyStickBean;

    .line 2
    .line 3
    invoke-direct {v0}, Lcom/haima/hmcp/beans/JoyStickBean;-><init>()V

    .line 4
    .line 5
    .line 6
    if-nez p0, :cond_0

    .line 7
    .line 8
    return-object v0

    .line 9
    :cond_0
    invoke-virtual {p0}, Landroid/view/InputEvent;->getDevice()Landroid/view/InputDevice;

    .line 10
    .line 11
    .line 12
    move-result-object p0

    .line 13
    if-nez p0, :cond_1

    .line 14
    .line 15
    return-object v0

    .line 16
    :cond_1
    sget-object v1, Lcom/haima/hmcp/utils/HmInputDeviceManager;->mJoySticks:Ljava/util/concurrent/ConcurrentHashMap;

    .line 17
    .line 18
    invoke-virtual {p0}, Landroid/view/InputDevice;->getId()I

    .line 19
    .line 20
    .line 21
    move-result p0

    .line 22
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 23
    .line 24
    .line 25
    move-result-object p0

    .line 26
    invoke-virtual {v1, p0, v0}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 27
    .line 28
    .line 29
    return-object v0
.end method

.method public static startVibrator(ILcom/haima/hmcp/utils/HmInputDeviceManager$Vendor;IILandroid/content/Context;ILjava/lang/String;)V
    .locals 3
    .annotation build Landroidx/annotation/RequiresApi;
        api = 0x13
    .end annotation

    .line 1
    sget-object v0, Lcom/haima/hmcp/utils/HmInputDeviceManager;->VIBRATOR_TAG:Ljava/lang/String;

    .line 2
    .line 3
    new-instance v1, Ljava/lang/StringBuilder;

    .line 4
    .line 5
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 6
    .line 7
    .line 8
    const-string v2, "startVibrator "

    .line 9
    .line 10
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 11
    .line 12
    .line 13
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 14
    .line 15
    .line 16
    const-string v2, " "

    .line 17
    .line 18
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 19
    .line 20
    .line 21
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 22
    .line 23
    .line 24
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 25
    .line 26
    .line 27
    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 28
    .line 29
    .line 30
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 31
    .line 32
    .line 33
    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

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
    invoke-static {p4}, Lcom/haima/hmcp/utils/VibratorUtil;->hasVibratorPermission(Landroid/content/Context;)Z

    .line 44
    .line 45
    .line 46
    move-result p4

    .line 47
    if-nez p4, :cond_0

    .line 48
    .line 49
    return-void

    .line 50
    :cond_0
    invoke-static {p0, p1, p5, p6}, Lcom/haima/hmcp/utils/HmInputDeviceManager;->getVibrator(ILcom/haima/hmcp/utils/HmInputDeviceManager$Vendor;ILjava/lang/String;)Landroid/os/Vibrator;

    .line 51
    .line 52
    .line 53
    move-result-object p0

    .line 54
    if-eqz p0, :cond_2

    .line 55
    .line 56
    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 57
    .line 58
    const/16 p4, 0x1a

    .line 59
    .line 60
    if-lt p1, p4, :cond_1

    .line 61
    .line 62
    int-to-long p3, p3

    .line 63
    invoke-static {p3, p4, p2}, Lcom/haima/hmcp/utils/h;->a(JI)Landroid/os/VibrationEffect;

    .line 64
    .line 65
    .line 66
    move-result-object p1

    .line 67
    invoke-static {p0, p1}, Ly0/b;->a(Landroid/os/Vibrator;Landroid/os/VibrationEffect;)V

    .line 68
    .line 69
    .line 70
    goto :goto_0

    .line 71
    :cond_1
    int-to-long p1, p3

    .line 72
    invoke-virtual {p0, p1, p2}, Landroid/os/Vibrator;->vibrate(J)V

    .line 73
    .line 74
    .line 75
    :cond_2
    :goto_0
    return-void
.end method

.method public static stopAllVibrators(Landroid/content/Context;)V
    .locals 2
    .annotation build Landroidx/annotation/RequiresApi;
        api = 0x13
    .end annotation

    .line 1
    sget-object v0, Lcom/haima/hmcp/utils/HmInputDeviceManager;->VIBRATOR_TAG:Ljava/lang/String;

    .line 2
    .line 3
    const-string v1, "stopAllVibrators"

    .line 4
    .line 5
    invoke-static {v0, v1}, Lcom/haima/hmcp/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    invoke-static {p0}, Lcom/haima/hmcp/utils/VibratorUtil;->hasVibratorPermission(Landroid/content/Context;)Z

    .line 9
    .line 10
    .line 11
    move-result p0

    .line 12
    if-nez p0, :cond_0

    .line 13
    .line 14
    return-void

    .line 15
    :cond_0
    sget-object p0, Lcom/haima/hmcp/utils/HmInputDeviceManager;->mGamePads:Ljava/util/concurrent/ConcurrentHashMap;

    .line 16
    .line 17
    invoke-virtual {p0}, Ljava/util/concurrent/ConcurrentHashMap;->entrySet()Ljava/util/Set;

    .line 18
    .line 19
    .line 20
    move-result-object p0

    .line 21
    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 22
    .line 23
    .line 24
    move-result-object p0

    .line 25
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 26
    .line 27
    .line 28
    move-result v0

    .line 29
    if-eqz v0, :cond_4

    .line 30
    .line 31
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 32
    .line 33
    .line 34
    move-result-object v0

    .line 35
    check-cast v0, Ljava/util/Map$Entry;

    .line 36
    .line 37
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    .line 38
    .line 39
    .line 40
    move-result-object v0

    .line 41
    check-cast v0, Lcom/haima/hmcp/beans/InputDeviceInfo;

    .line 42
    .line 43
    invoke-virtual {v0}, Lcom/haima/hmcp/beans/InputDeviceInfo;->getInputDeviceId()Ljava/lang/Integer;

    .line 44
    .line 45
    .line 46
    move-result-object v0

    .line 47
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    .line 48
    .line 49
    .line 50
    move-result v0

    .line 51
    invoke-static {v0}, Landroid/view/InputDevice;->getDevice(I)Landroid/view/InputDevice;

    .line 52
    .line 53
    .line 54
    move-result-object v0

    .line 55
    if-nez v0, :cond_1

    .line 56
    .line 57
    return-void

    .line 58
    :cond_1
    invoke-virtual {v0}, Landroid/view/InputDevice;->getVibrator()Landroid/os/Vibrator;

    .line 59
    .line 60
    .line 61
    move-result-object v0

    .line 62
    if-nez v0, :cond_2

    .line 63
    .line 64
    return-void

    .line 65
    :cond_2
    invoke-virtual {v0}, Landroid/os/Vibrator;->hasVibrator()Z

    .line 66
    .line 67
    .line 68
    move-result v1

    .line 69
    if-nez v1, :cond_3

    .line 70
    .line 71
    return-void

    .line 72
    :cond_3
    invoke-virtual {v0}, Landroid/os/Vibrator;->cancel()V

    .line 73
    .line 74
    .line 75
    goto :goto_0

    .line 76
    :cond_4
    return-void
.end method

.method public static stopVibrator(ILcom/haima/hmcp/utils/HmInputDeviceManager$Vendor;Landroid/content/Context;ILjava/lang/String;)V
    .locals 3
    .annotation build Landroidx/annotation/RequiresApi;
        api = 0x13
    .end annotation

    .line 1
    sget-object v0, Lcom/haima/hmcp/utils/HmInputDeviceManager;->VIBRATOR_TAG:Ljava/lang/String;

    .line 2
    .line 3
    new-instance v1, Ljava/lang/StringBuilder;

    .line 4
    .line 5
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 6
    .line 7
    .line 8
    const-string v2, "stopVibrator "

    .line 9
    .line 10
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 11
    .line 12
    .line 13
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 14
    .line 15
    .line 16
    const-string v2, " "

    .line 17
    .line 18
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 19
    .line 20
    .line 21
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 22
    .line 23
    .line 24
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 25
    .line 26
    .line 27
    move-result-object v1

    .line 28
    invoke-static {v0, v1}, Lcom/haima/hmcp/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 29
    .line 30
    .line 31
    invoke-static {p2}, Lcom/haima/hmcp/utils/VibratorUtil;->hasVibratorPermission(Landroid/content/Context;)Z

    .line 32
    .line 33
    .line 34
    move-result p2

    .line 35
    if-nez p2, :cond_0

    .line 36
    .line 37
    return-void

    .line 38
    :cond_0
    invoke-static {p0, p1, p3, p4}, Lcom/haima/hmcp/utils/HmInputDeviceManager;->getVibrator(ILcom/haima/hmcp/utils/HmInputDeviceManager$Vendor;ILjava/lang/String;)Landroid/os/Vibrator;

    .line 39
    .line 40
    .line 41
    move-result-object p0

    .line 42
    if-eqz p0, :cond_1

    .line 43
    .line 44
    invoke-virtual {p0}, Landroid/os/Vibrator;->cancel()V

    .line 45
    .line 46
    .line 47
    :cond_1
    return-void
.end method
