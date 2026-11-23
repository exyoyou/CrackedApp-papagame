.class public Lcom/join/mgps/activity/HandShankCheckKeyActivity;
.super Lcom/join/mgps/activity/HandShankBaseActivity;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/join/mgps/activity/HandShankCheckKeyActivity$c;
    }
.end annotation

.annotation build Lorg/androidannotations/annotations/EActivity;
    value = 0x7f0d0372
.end annotation


# instance fields
.field from:Ljava/lang/String;
    .annotation build Lorg/androidannotations/annotations/Extra;
    .end annotation
.end field

.field private isKeyDown:Z

.field private keyMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field mHandler:Landroid/os/Handler;

.field private map:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/Integer;",
            "Lcom/join/mgps/activity/HandShankCheckKeyActivity$c;",
            ">;"
        }
    .end annotation
.end field

.field private soundPool:Landroid/media/SoundPool;

.field titleText:Landroid/widget/TextView;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field

.field private transition:Landroid/graphics/drawable/TransitionDrawable;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/join/mgps/activity/HandShankBaseActivity;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Ljava/util/HashMap;

    .line 5
    .line 6
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 7
    .line 8
    .line 9
    iput-object v0, p0, Lcom/join/mgps/activity/HandShankCheckKeyActivity;->map:Ljava/util/HashMap;

    .line 10
    .line 11
    new-instance v0, Ljava/util/HashMap;

    .line 12
    .line 13
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 14
    .line 15
    .line 16
    iput-object v0, p0, Lcom/join/mgps/activity/HandShankCheckKeyActivity;->keyMap:Ljava/util/HashMap;

    .line 17
    .line 18
    new-instance v0, Landroid/os/Handler;

    .line 19
    .line 20
    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    .line 21
    .line 22
    .line 23
    iput-object v0, p0, Lcom/join/mgps/activity/HandShankCheckKeyActivity;->mHandler:Landroid/os/Handler;

    .line 24
    .line 25
    return-void
.end method

.method static synthetic access$000(Lcom/join/mgps/activity/HandShankCheckKeyActivity;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/join/mgps/activity/HandShankCheckKeyActivity;->playBtnSound()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method static synthetic access$102(Lcom/join/mgps/activity/HandShankCheckKeyActivity;Z)Z
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/join/mgps/activity/HandShankCheckKeyActivity;->isKeyDown:Z

    .line 2
    .line 3
    return p1
.end method

.method private adjustVolume(Landroid/view/KeyEvent;)V
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "event"
        }
    .end annotation

    .line 1
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    .line 2
    .line 3
    .line 4
    move-result p1

    .line 5
    const-string v0, "audio"

    .line 6
    .line 7
    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    check-cast v0, Landroid/media/AudioManager;

    .line 12
    .line 13
    const/16 v1, 0x18

    .line 14
    .line 15
    const/4 v2, 0x5

    .line 16
    const/4 v3, 0x3

    .line 17
    if-eq p1, v1, :cond_1

    .line 18
    .line 19
    const/16 v1, 0x19

    .line 20
    .line 21
    if-eq p1, v1, :cond_0

    .line 22
    .line 23
    goto :goto_0

    .line 24
    :cond_0
    const/4 p1, -0x1

    .line 25
    invoke-virtual {v0, v3, p1, v2}, Landroid/media/AudioManager;->adjustStreamVolume(III)V

    .line 26
    .line 27
    .line 28
    goto :goto_0

    .line 29
    :cond_1
    const/4 p1, 0x1

    .line 30
    invoke-virtual {v0, v3, p1, v2}, Landroid/media/AudioManager;->adjustStreamVolume(III)V

    .line 31
    .line 32
    .line 33
    :goto_0
    return-void
.end method

.method private initMap()V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/HandShankCheckKeyActivity;->keyMap:Ljava/util/HashMap;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 4
    .line 5
    .line 6
    const-string v0, "KEY"

    .line 7
    .line 8
    invoke-static {v0}, Lcom/join/mgps/joystick/map/d;->c(Ljava/lang/String;)Ljava/util/Map;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    .line 13
    .line 14
    .line 15
    move-result-object v1

    .line 16
    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 17
    .line 18
    .line 19
    move-result-object v1

    .line 20
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 21
    .line 22
    .line 23
    move-result v2

    .line 24
    if-eqz v2, :cond_0

    .line 25
    .line 26
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 27
    .line 28
    .line 29
    move-result-object v2

    .line 30
    check-cast v2, Ljava/lang/String;

    .line 31
    .line 32
    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 33
    .line 34
    .line 35
    move-result-object v3

    .line 36
    check-cast v3, Ljava/lang/String;

    .line 37
    .line 38
    iget-object v4, p0, Lcom/join/mgps/activity/HandShankCheckKeyActivity;->keyMap:Ljava/util/HashMap;

    .line 39
    .line 40
    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 41
    .line 42
    .line 43
    move-result v3

    .line 44
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 45
    .line 46
    .line 47
    move-result-object v3

    .line 48
    invoke-virtual {v4, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 49
    .line 50
    .line 51
    goto :goto_0

    .line 52
    :cond_0
    iget-object v0, p0, Lcom/join/mgps/activity/HandShankCheckKeyActivity;->keyMap:Ljava/util/HashMap;

    .line 53
    .line 54
    invoke-virtual {v0}, Ljava/util/HashMap;->size()I

    .line 55
    .line 56
    .line 57
    move-result v0

    .line 58
    if-nez v0, :cond_1

    .line 59
    .line 60
    iget-object v0, p0, Lcom/join/mgps/activity/HandShankCheckKeyActivity;->keyMap:Ljava/util/HashMap;

    .line 61
    .line 62
    const/16 v1, 0x6c

    .line 63
    .line 64
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 65
    .line 66
    .line 67
    move-result-object v1

    .line 68
    const-string v2, "KEY_START"

    .line 69
    .line 70
    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 71
    .line 72
    .line 73
    iget-object v0, p0, Lcom/join/mgps/activity/HandShankCheckKeyActivity;->keyMap:Ljava/util/HashMap;

    .line 74
    .line 75
    const/16 v1, 0x6d

    .line 76
    .line 77
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 78
    .line 79
    .line 80
    move-result-object v1

    .line 81
    const-string v2, "KEY_SELECT"

    .line 82
    .line 83
    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 84
    .line 85
    .line 86
    iget-object v0, p0, Lcom/join/mgps/activity/HandShankCheckKeyActivity;->keyMap:Ljava/util/HashMap;

    .line 87
    .line 88
    const/16 v1, 0x63

    .line 89
    .line 90
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 91
    .line 92
    .line 93
    move-result-object v1

    .line 94
    const-string v2, "KEY_X"

    .line 95
    .line 96
    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 97
    .line 98
    .line 99
    iget-object v0, p0, Lcom/join/mgps/activity/HandShankCheckKeyActivity;->keyMap:Ljava/util/HashMap;

    .line 100
    .line 101
    const/16 v1, 0x60

    .line 102
    .line 103
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 104
    .line 105
    .line 106
    move-result-object v1

    .line 107
    const-string v2, "KEY_A"

    .line 108
    .line 109
    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 110
    .line 111
    .line 112
    iget-object v0, p0, Lcom/join/mgps/activity/HandShankCheckKeyActivity;->keyMap:Ljava/util/HashMap;

    .line 113
    .line 114
    const/16 v1, 0x64

    .line 115
    .line 116
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 117
    .line 118
    .line 119
    move-result-object v1

    .line 120
    const-string v2, "KEY_Y"

    .line 121
    .line 122
    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 123
    .line 124
    .line 125
    iget-object v0, p0, Lcom/join/mgps/activity/HandShankCheckKeyActivity;->keyMap:Ljava/util/HashMap;

    .line 126
    .line 127
    const/16 v1, 0x61

    .line 128
    .line 129
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 130
    .line 131
    .line 132
    move-result-object v1

    .line 133
    const-string v2, "KEY_B"

    .line 134
    .line 135
    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 136
    .line 137
    .line 138
    iget-object v0, p0, Lcom/join/mgps/activity/HandShankCheckKeyActivity;->keyMap:Ljava/util/HashMap;

    .line 139
    .line 140
    const/16 v1, 0x66

    .line 141
    .line 142
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 143
    .line 144
    .line 145
    move-result-object v1

    .line 146
    const-string v2, "KEY_L1"

    .line 147
    .line 148
    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 149
    .line 150
    .line 151
    iget-object v0, p0, Lcom/join/mgps/activity/HandShankCheckKeyActivity;->keyMap:Ljava/util/HashMap;

    .line 152
    .line 153
    const/16 v1, 0x68

    .line 154
    .line 155
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 156
    .line 157
    .line 158
    move-result-object v1

    .line 159
    const-string v2, "KEY_L2"

    .line 160
    .line 161
    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 162
    .line 163
    .line 164
    iget-object v0, p0, Lcom/join/mgps/activity/HandShankCheckKeyActivity;->keyMap:Ljava/util/HashMap;

    .line 165
    .line 166
    const/16 v1, 0x67

    .line 167
    .line 168
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 169
    .line 170
    .line 171
    move-result-object v1

    .line 172
    const-string v2, "KEY_R1"

    .line 173
    .line 174
    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 175
    .line 176
    .line 177
    iget-object v0, p0, Lcom/join/mgps/activity/HandShankCheckKeyActivity;->keyMap:Ljava/util/HashMap;

    .line 178
    .line 179
    const/16 v1, 0x69

    .line 180
    .line 181
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 182
    .line 183
    .line 184
    move-result-object v1

    .line 185
    const-string v2, "KEY_R2"

    .line 186
    .line 187
    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 188
    .line 189
    .line 190
    iget-object v0, p0, Lcom/join/mgps/activity/HandShankCheckKeyActivity;->keyMap:Ljava/util/HashMap;

    .line 191
    .line 192
    const/16 v1, 0x15

    .line 193
    .line 194
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 195
    .line 196
    .line 197
    move-result-object v1

    .line 198
    const-string v2, "KEY_DPAD_LEFT"

    .line 199
    .line 200
    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 201
    .line 202
    .line 203
    iget-object v0, p0, Lcom/join/mgps/activity/HandShankCheckKeyActivity;->keyMap:Ljava/util/HashMap;

    .line 204
    .line 205
    const/16 v1, 0x13

    .line 206
    .line 207
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 208
    .line 209
    .line 210
    move-result-object v1

    .line 211
    const-string v2, "KEY_DPAD_UP"

    .line 212
    .line 213
    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 214
    .line 215
    .line 216
    iget-object v0, p0, Lcom/join/mgps/activity/HandShankCheckKeyActivity;->keyMap:Ljava/util/HashMap;

    .line 217
    .line 218
    const/16 v1, 0x16

    .line 219
    .line 220
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 221
    .line 222
    .line 223
    move-result-object v1

    .line 224
    const-string v2, "KEY_DPAD_RIGHT"

    .line 225
    .line 226
    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 227
    .line 228
    .line 229
    iget-object v0, p0, Lcom/join/mgps/activity/HandShankCheckKeyActivity;->keyMap:Ljava/util/HashMap;

    .line 230
    .line 231
    const/16 v1, 0x14

    .line 232
    .line 233
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 234
    .line 235
    .line 236
    move-result-object v1

    .line 237
    const-string v2, "KEY_DPAD_DOWN"

    .line 238
    .line 239
    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 240
    .line 241
    .line 242
    iget-object v0, p0, Lcom/join/mgps/activity/HandShankCheckKeyActivity;->keyMap:Ljava/util/HashMap;

    .line 243
    .line 244
    const/16 v1, 0x6b

    .line 245
    .line 246
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 247
    .line 248
    .line 249
    move-result-object v1

    .line 250
    const-string v2, "KEY_BUTTON_THUMBR"

    .line 251
    .line 252
    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 253
    .line 254
    .line 255
    iget-object v0, p0, Lcom/join/mgps/activity/HandShankCheckKeyActivity;->keyMap:Ljava/util/HashMap;

    .line 256
    .line 257
    const/16 v1, 0x6a

    .line 258
    .line 259
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 260
    .line 261
    .line 262
    move-result-object v1

    .line 263
    const-string v2, "KEY_BUTTON_THUMBL"

    .line 264
    .line 265
    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 266
    .line 267
    .line 268
    :cond_1
    iget-object v0, p0, Lcom/join/mgps/activity/HandShankCheckKeyActivity;->keyMap:Ljava/util/HashMap;

    .line 269
    .line 270
    invoke-direct {p0, v0}, Lcom/join/mgps/activity/HandShankCheckKeyActivity;->initMapData(Ljava/util/Map;)V

    .line 271
    .line 272
    .line 273
    return-void
.end method

.method private initMapData(Ljava/util/Map;)V
    .locals 6
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "keyMap"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/HandShankCheckKeyActivity;->map:Ljava/util/HashMap;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lcom/join/mgps/activity/HandShankCheckKeyActivity;->map:Ljava/util/HashMap;

    .line 7
    .line 8
    const-string v1, "KEY_Y"

    .line 9
    .line 10
    invoke-interface {p1, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 11
    .line 12
    .line 13
    move-result-object v1

    .line 14
    check-cast v1, Ljava/lang/Integer;

    .line 15
    .line 16
    new-instance v2, Lcom/join/mgps/activity/HandShankCheckKeyActivity$c;

    .line 17
    .line 18
    const v3, 0x7f0a1c1e

    .line 19
    .line 20
    .line 21
    const v4, 0x7f0806a1

    .line 22
    .line 23
    .line 24
    const v5, 0x7f0806a2

    .line 25
    .line 26
    .line 27
    invoke-direct {v2, p0, v3, v4, v5}, Lcom/join/mgps/activity/HandShankCheckKeyActivity$c;-><init>(Lcom/join/mgps/activity/HandShankCheckKeyActivity;III)V

    .line 28
    .line 29
    .line 30
    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 31
    .line 32
    .line 33
    iget-object v0, p0, Lcom/join/mgps/activity/HandShankCheckKeyActivity;->map:Ljava/util/HashMap;

    .line 34
    .line 35
    const-string v1, "KEY_A"

    .line 36
    .line 37
    invoke-interface {p1, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 38
    .line 39
    .line 40
    move-result-object v1

    .line 41
    check-cast v1, Ljava/lang/Integer;

    .line 42
    .line 43
    new-instance v2, Lcom/join/mgps/activity/HandShankCheckKeyActivity$c;

    .line 44
    .line 45
    const v3, 0x7f0a0031

    .line 46
    .line 47
    .line 48
    invoke-direct {v2, p0, v3, v4, v5}, Lcom/join/mgps/activity/HandShankCheckKeyActivity$c;-><init>(Lcom/join/mgps/activity/HandShankCheckKeyActivity;III)V

    .line 49
    .line 50
    .line 51
    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 52
    .line 53
    .line 54
    iget-object v0, p0, Lcom/join/mgps/activity/HandShankCheckKeyActivity;->map:Ljava/util/HashMap;

    .line 55
    .line 56
    const-string v1, "KEY_X"

    .line 57
    .line 58
    invoke-interface {p1, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 59
    .line 60
    .line 61
    move-result-object v1

    .line 62
    check-cast v1, Ljava/lang/Integer;

    .line 63
    .line 64
    new-instance v2, Lcom/join/mgps/activity/HandShankCheckKeyActivity$c;

    .line 65
    .line 66
    const v3, 0x7f0a1c06

    .line 67
    .line 68
    .line 69
    invoke-direct {v2, p0, v3, v4, v5}, Lcom/join/mgps/activity/HandShankCheckKeyActivity$c;-><init>(Lcom/join/mgps/activity/HandShankCheckKeyActivity;III)V

    .line 70
    .line 71
    .line 72
    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 73
    .line 74
    .line 75
    iget-object v0, p0, Lcom/join/mgps/activity/HandShankCheckKeyActivity;->map:Ljava/util/HashMap;

    .line 76
    .line 77
    const-string v1, "KEY_B"

    .line 78
    .line 79
    invoke-interface {p1, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 80
    .line 81
    .line 82
    move-result-object v1

    .line 83
    check-cast v1, Ljava/lang/Integer;

    .line 84
    .line 85
    new-instance v2, Lcom/join/mgps/activity/HandShankCheckKeyActivity$c;

    .line 86
    .line 87
    const v3, 0x7f0a0136

    .line 88
    .line 89
    .line 90
    invoke-direct {v2, p0, v3, v4, v5}, Lcom/join/mgps/activity/HandShankCheckKeyActivity$c;-><init>(Lcom/join/mgps/activity/HandShankCheckKeyActivity;III)V

    .line 91
    .line 92
    .line 93
    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 94
    .line 95
    .line 96
    iget-object v0, p0, Lcom/join/mgps/activity/HandShankCheckKeyActivity;->map:Ljava/util/HashMap;

    .line 97
    .line 98
    const-string v1, "KEY_L1"

    .line 99
    .line 100
    invoke-interface {p1, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 101
    .line 102
    .line 103
    move-result-object v1

    .line 104
    check-cast v1, Ljava/lang/Integer;

    .line 105
    .line 106
    new-instance v2, Lcom/join/mgps/activity/HandShankCheckKeyActivity$c;

    .line 107
    .line 108
    const v3, 0x7f080699

    .line 109
    .line 110
    .line 111
    const v4, 0x7f08069a

    .line 112
    .line 113
    .line 114
    const v5, 0x7f0a07e9

    .line 115
    .line 116
    .line 117
    invoke-direct {v2, p0, v5, v3, v4}, Lcom/join/mgps/activity/HandShankCheckKeyActivity$c;-><init>(Lcom/join/mgps/activity/HandShankCheckKeyActivity;III)V

    .line 118
    .line 119
    .line 120
    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 121
    .line 122
    .line 123
    iget-object v0, p0, Lcom/join/mgps/activity/HandShankCheckKeyActivity;->map:Ljava/util/HashMap;

    .line 124
    .line 125
    const-string v1, "KEY_L2"

    .line 126
    .line 127
    invoke-interface {p1, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 128
    .line 129
    .line 130
    move-result-object v1

    .line 131
    check-cast v1, Ljava/lang/Integer;

    .line 132
    .line 133
    new-instance v2, Lcom/join/mgps/activity/HandShankCheckKeyActivity$c;

    .line 134
    .line 135
    const v3, 0x7f08069c

    .line 136
    .line 137
    .line 138
    const v4, 0x7f08069d

    .line 139
    .line 140
    .line 141
    const v5, 0x7f0a07ea

    .line 142
    .line 143
    .line 144
    invoke-direct {v2, p0, v5, v3, v4}, Lcom/join/mgps/activity/HandShankCheckKeyActivity$c;-><init>(Lcom/join/mgps/activity/HandShankCheckKeyActivity;III)V

    .line 145
    .line 146
    .line 147
    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 148
    .line 149
    .line 150
    iget-object v0, p0, Lcom/join/mgps/activity/HandShankCheckKeyActivity;->map:Ljava/util/HashMap;

    .line 151
    .line 152
    const-string v1, "KEY_R1"

    .line 153
    .line 154
    invoke-interface {p1, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 155
    .line 156
    .line 157
    move-result-object v1

    .line 158
    check-cast v1, Ljava/lang/Integer;

    .line 159
    .line 160
    new-instance v2, Lcom/join/mgps/activity/HandShankCheckKeyActivity$c;

    .line 161
    .line 162
    const v3, 0x7f0806a5

    .line 163
    .line 164
    .line 165
    const v4, 0x7f0806a6

    .line 166
    .line 167
    .line 168
    const v5, 0x7f0a07eb

    .line 169
    .line 170
    .line 171
    invoke-direct {v2, p0, v5, v3, v4}, Lcom/join/mgps/activity/HandShankCheckKeyActivity$c;-><init>(Lcom/join/mgps/activity/HandShankCheckKeyActivity;III)V

    .line 172
    .line 173
    .line 174
    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 175
    .line 176
    .line 177
    iget-object v0, p0, Lcom/join/mgps/activity/HandShankCheckKeyActivity;->map:Ljava/util/HashMap;

    .line 178
    .line 179
    const-string v1, "KEY_R2"

    .line 180
    .line 181
    invoke-interface {p1, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 182
    .line 183
    .line 184
    move-result-object v1

    .line 185
    check-cast v1, Ljava/lang/Integer;

    .line 186
    .line 187
    new-instance v2, Lcom/join/mgps/activity/HandShankCheckKeyActivity$c;

    .line 188
    .line 189
    const v3, 0x7f0806a8

    .line 190
    .line 191
    .line 192
    const v4, 0x7f0806a9

    .line 193
    .line 194
    .line 195
    const v5, 0x7f0a07ec

    .line 196
    .line 197
    .line 198
    invoke-direct {v2, p0, v5, v3, v4}, Lcom/join/mgps/activity/HandShankCheckKeyActivity$c;-><init>(Lcom/join/mgps/activity/HandShankCheckKeyActivity;III)V

    .line 199
    .line 200
    .line 201
    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 202
    .line 203
    .line 204
    iget-object v0, p0, Lcom/join/mgps/activity/HandShankCheckKeyActivity;->map:Ljava/util/HashMap;

    .line 205
    .line 206
    const-string v1, "KEY_BUTTON_THUMBL"

    .line 207
    .line 208
    invoke-interface {p1, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 209
    .line 210
    .line 211
    move-result-object v1

    .line 212
    check-cast v1, Ljava/lang/Integer;

    .line 213
    .line 214
    new-instance v2, Lcom/join/mgps/activity/HandShankCheckKeyActivity$c;

    .line 215
    .line 216
    const v3, 0x7f0a07ed

    .line 217
    .line 218
    .line 219
    const v4, 0x7f0806ab

    .line 220
    .line 221
    .line 222
    const v5, 0x7f0806ac

    .line 223
    .line 224
    .line 225
    invoke-direct {v2, p0, v3, v4, v5}, Lcom/join/mgps/activity/HandShankCheckKeyActivity$c;-><init>(Lcom/join/mgps/activity/HandShankCheckKeyActivity;III)V

    .line 226
    .line 227
    .line 228
    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 229
    .line 230
    .line 231
    iget-object v0, p0, Lcom/join/mgps/activity/HandShankCheckKeyActivity;->map:Ljava/util/HashMap;

    .line 232
    .line 233
    const-string v1, "KEY_BUTTON_THUMBR"

    .line 234
    .line 235
    invoke-interface {p1, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 236
    .line 237
    .line 238
    move-result-object v1

    .line 239
    check-cast v1, Ljava/lang/Integer;

    .line 240
    .line 241
    new-instance v2, Lcom/join/mgps/activity/HandShankCheckKeyActivity$c;

    .line 242
    .line 243
    const v3, 0x7f0a07ee

    .line 244
    .line 245
    .line 246
    invoke-direct {v2, p0, v3, v4, v5}, Lcom/join/mgps/activity/HandShankCheckKeyActivity$c;-><init>(Lcom/join/mgps/activity/HandShankCheckKeyActivity;III)V

    .line 247
    .line 248
    .line 249
    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 250
    .line 251
    .line 252
    iget-object v0, p0, Lcom/join/mgps/activity/HandShankCheckKeyActivity;->map:Ljava/util/HashMap;

    .line 253
    .line 254
    const-string v1, "KEY_DPAD_LEFT"

    .line 255
    .line 256
    invoke-interface {p1, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 257
    .line 258
    .line 259
    move-result-object v1

    .line 260
    check-cast v1, Ljava/lang/Integer;

    .line 261
    .line 262
    new-instance v2, Lcom/join/mgps/activity/HandShankCheckKeyActivity$c;

    .line 263
    .line 264
    const v3, 0x7f080690

    .line 265
    .line 266
    .line 267
    const v4, 0x7f0a07e7

    .line 268
    .line 269
    .line 270
    const v5, 0x7f08068d

    .line 271
    .line 272
    .line 273
    invoke-direct {v2, p0, v4, v5, v3}, Lcom/join/mgps/activity/HandShankCheckKeyActivity$c;-><init>(Lcom/join/mgps/activity/HandShankCheckKeyActivity;III)V

    .line 274
    .line 275
    .line 276
    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 277
    .line 278
    .line 279
    iget-object v0, p0, Lcom/join/mgps/activity/HandShankCheckKeyActivity;->map:Ljava/util/HashMap;

    .line 280
    .line 281
    const-string v1, "KEY_DPAD_UP"

    .line 282
    .line 283
    invoke-interface {p1, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 284
    .line 285
    .line 286
    move-result-object v1

    .line 287
    check-cast v1, Ljava/lang/Integer;

    .line 288
    .line 289
    new-instance v2, Lcom/join/mgps/activity/HandShankCheckKeyActivity$c;

    .line 290
    .line 291
    const v3, 0x7f080694

    .line 292
    .line 293
    .line 294
    invoke-direct {v2, p0, v4, v5, v3}, Lcom/join/mgps/activity/HandShankCheckKeyActivity$c;-><init>(Lcom/join/mgps/activity/HandShankCheckKeyActivity;III)V

    .line 295
    .line 296
    .line 297
    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 298
    .line 299
    .line 300
    iget-object v0, p0, Lcom/join/mgps/activity/HandShankCheckKeyActivity;->map:Ljava/util/HashMap;

    .line 301
    .line 302
    const-string v1, "KEY_DPAD_RIGHT"

    .line 303
    .line 304
    invoke-interface {p1, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 305
    .line 306
    .line 307
    move-result-object v1

    .line 308
    check-cast v1, Ljava/lang/Integer;

    .line 309
    .line 310
    new-instance v2, Lcom/join/mgps/activity/HandShankCheckKeyActivity$c;

    .line 311
    .line 312
    const v3, 0x7f080692

    .line 313
    .line 314
    .line 315
    invoke-direct {v2, p0, v4, v5, v3}, Lcom/join/mgps/activity/HandShankCheckKeyActivity$c;-><init>(Lcom/join/mgps/activity/HandShankCheckKeyActivity;III)V

    .line 316
    .line 317
    .line 318
    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 319
    .line 320
    .line 321
    iget-object v0, p0, Lcom/join/mgps/activity/HandShankCheckKeyActivity;->map:Ljava/util/HashMap;

    .line 322
    .line 323
    const-string v1, "KEY_DPAD_DOWN"

    .line 324
    .line 325
    invoke-interface {p1, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 326
    .line 327
    .line 328
    move-result-object p1

    .line 329
    check-cast p1, Ljava/lang/Integer;

    .line 330
    .line 331
    new-instance v1, Lcom/join/mgps/activity/HandShankCheckKeyActivity$c;

    .line 332
    .line 333
    const v2, 0x7f08068e

    .line 334
    .line 335
    .line 336
    invoke-direct {v1, p0, v4, v5, v2}, Lcom/join/mgps/activity/HandShankCheckKeyActivity$c;-><init>(Lcom/join/mgps/activity/HandShankCheckKeyActivity;III)V

    .line 337
    .line 338
    .line 339
    invoke-virtual {v0, p1, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 340
    .line 341
    .line 342
    return-void
.end method

.method private initViews()V
    .locals 2

    .line 1
    const v0, 0x7f0a07e8

    .line 2
    .line 3
    .line 4
    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    .line 5
    .line 6
    .line 7
    move-result-object v0

    .line 8
    invoke-virtual {v0}, Landroid/view/View;->requestFocus()Z

    .line 9
    .line 10
    .line 11
    iget-object v0, p0, Lcom/join/mgps/activity/HandShankCheckKeyActivity;->titleText:Landroid/widget/TextView;

    .line 12
    .line 13
    const-string v1, "\u6821\u9a8c\u624b\u67c4\u6309\u952e"

    .line 14
    .line 15
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 16
    .line 17
    .line 18
    return-void
.end method

.method private loadSound()V
    .locals 4

    .line 1
    new-instance v0, Landroid/media/SoundPool;

    .line 2
    .line 3
    const/4 v1, 0x3

    .line 4
    const/16 v2, 0xa

    .line 5
    .line 6
    const/16 v3, 0x15

    .line 7
    .line 8
    invoke-direct {v0, v3, v1, v2}, Landroid/media/SoundPool;-><init>(III)V

    .line 9
    .line 10
    .line 11
    iput-object v0, p0, Lcom/join/mgps/activity/HandShankCheckKeyActivity;->soundPool:Landroid/media/SoundPool;

    .line 12
    .line 13
    const v1, 0x7f110004

    .line 14
    .line 15
    .line 16
    const/4 v2, 0x1

    .line 17
    invoke-virtual {v0, p0, v1, v2}, Landroid/media/SoundPool;->load(Landroid/content/Context;II)I

    .line 18
    .line 19
    .line 20
    return-void
.end method

.method private playBtnSound()V
    .locals 7

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/HandShankCheckKeyActivity;->soundPool:Landroid/media/SoundPool;

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    const/high16 v2, 0x3f800000    # 1.0f

    .line 5
    .line 6
    const/high16 v3, 0x3f800000    # 1.0f

    .line 7
    .line 8
    const/4 v4, 0x1

    .line 9
    const/4 v5, 0x0

    .line 10
    const/high16 v6, 0x3f800000    # 1.0f

    .line 11
    .line 12
    invoke-virtual/range {v0 .. v6}, Landroid/media/SoundPool;->play(IFFIIF)I

    .line 13
    .line 14
    .line 15
    return-void
.end method


# virtual methods
.method afterView()V
    .locals 0
    .annotation build Lorg/androidannotations/annotations/AfterViews;
    .end annotation

    .line 1
    invoke-direct {p0}, Lcom/join/mgps/activity/HandShankCheckKeyActivity;->loadSound()V

    .line 2
    .line 3
    .line 4
    invoke-direct {p0}, Lcom/join/mgps/activity/HandShankCheckKeyActivity;->initViews()V

    .line 5
    .line 6
    .line 7
    return-void
.end method

.method backImage()V
    .locals 2
    .annotation build Lorg/androidannotations/annotations/Click;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/HandShankCheckKeyActivity;->from:Ljava/lang/String;

    .line 2
    .line 3
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    .line 10
    .line 11
    .line 12
    goto :goto_0

    .line 13
    :cond_0
    iget-object v0, p0, Lcom/join/mgps/activity/HandShankCheckKeyActivity;->from:Ljava/lang/String;

    .line 14
    .line 15
    const-string v1, "first"

    .line 16
    .line 17
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 18
    .line 19
    .line 20
    move-result v0

    .line 21
    if-eqz v0, :cond_1

    .line 22
    .line 23
    new-instance v0, Landroid/content/Intent;

    .line 24
    .line 25
    const-class v1, Lcom/join/mgps/activity/HandShankYesActivity_;

    .line 26
    .line 27
    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 28
    .line 29
    .line 30
    const/high16 v1, 0x24000000

    .line 31
    .line 32
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 33
    .line 34
    .line 35
    invoke-virtual {p0, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 36
    .line 37
    .line 38
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    .line 39
    .line 40
    .line 41
    :cond_1
    :goto_0
    return-void
.end method

.method errButn()V
    .locals 3
    .annotation build Lorg/androidannotations/annotations/Click;
    .end annotation

    .line 1
    new-instance v0, Landroid/content/Intent;

    .line 2
    .line 3
    const-class v1, Lcom/join/mgps/activity/HandShankSetKeyActivity_;

    .line 4
    .line 5
    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 6
    .line 7
    .line 8
    iget-object v1, p0, Lcom/join/mgps/activity/HandShankCheckKeyActivity;->from:Ljava/lang/String;

    .line 9
    .line 10
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 11
    .line 12
    .line 13
    move-result v1

    .line 14
    if-nez v1, :cond_0

    .line 15
    .line 16
    const-string v1, "from"

    .line 17
    .line 18
    iget-object v2, p0, Lcom/join/mgps/activity/HandShankCheckKeyActivity;->from:Ljava/lang/String;

    .line 19
    .line 20
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 21
    .line 22
    .line 23
    invoke-virtual {p0, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 24
    .line 25
    .line 26
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    .line 27
    .line 28
    .line 29
    goto :goto_0

    .line 30
    :cond_0
    invoke-virtual {p0, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 31
    .line 32
    .line 33
    :goto_0
    return-void
.end method

.method handleKeyDownUi(Lcom/join/mgps/activity/HandShankCheckKeyActivity$c;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "keyInfo"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/HandShankCheckKeyActivity;->mHandler:Landroid/os/Handler;

    .line 2
    .line 3
    new-instance v1, Lcom/join/mgps/activity/HandShankCheckKeyActivity$a;

    .line 4
    .line 5
    invoke-direct {v1, p0, p1}, Lcom/join/mgps/activity/HandShankCheckKeyActivity$a;-><init>(Lcom/join/mgps/activity/HandShankCheckKeyActivity;Lcom/join/mgps/activity/HandShankCheckKeyActivity$c;)V

    .line 6
    .line 7
    .line 8
    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 9
    .line 10
    .line 11
    return-void
.end method

.method handleKeyUpUi(Lcom/join/mgps/activity/HandShankCheckKeyActivity$c;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "keyInfo"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/HandShankCheckKeyActivity;->mHandler:Landroid/os/Handler;

    .line 2
    .line 3
    new-instance v1, Lcom/join/mgps/activity/HandShankCheckKeyActivity$b;

    .line 4
    .line 5
    invoke-direct {v1, p0, p1}, Lcom/join/mgps/activity/HandShankCheckKeyActivity$b;-><init>(Lcom/join/mgps/activity/HandShankCheckKeyActivity;Lcom/join/mgps/activity/HandShankCheckKeyActivity$c;)V

    .line 6
    .line 7
    .line 8
    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 9
    .line 10
    .line 11
    return-void
.end method

.method okButn()V
    .locals 2
    .annotation build Lorg/androidannotations/annotations/Click;
    .end annotation

    .line 1
    new-instance v0, Landroid/content/Intent;

    .line 2
    .line 3
    const-class v1, Lcom/join/mgps/activity/HandShankYesActivity_;

    .line 4
    .line 5
    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 6
    .line 7
    .line 8
    const/high16 v1, 0x24000000

    .line 9
    .line 10
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 11
    .line 12
    .line 13
    invoke-virtual {p0, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 14
    .line 15
    .line 16
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    .line 17
    .line 18
    .line 19
    return-void
.end method

.method public onKeyDown1(ILandroid/view/KeyEvent;)Z
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "keyCode",
            "event"
        }
    .end annotation

    .line 1
    :try_start_0
    invoke-virtual {p2}, Landroid/view/InputEvent;->getDevice()Landroid/view/InputDevice;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0}, Landroid/view/InputDevice;->getName()Ljava/lang/String;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    invoke-static {}, Lcom/join/mgps/joystick/map/a;->b()Lcom/join/mgps/joystick/map/a;

    .line 10
    .line 11
    .line 12
    move-result-object v1

    .line 13
    invoke-virtual {v1, v0}, Lcom/join/mgps/joystick/map/a;->f(Ljava/lang/String;)Z

    .line 14
    .line 15
    .line 16
    move-result v0

    .line 17
    if-eqz v0, :cond_0

    .line 18
    .line 19
    const/4 p1, 0x0

    .line 20
    return p1

    .line 21
    :cond_0
    invoke-direct {p0, p2}, Lcom/join/mgps/activity/HandShankCheckKeyActivity;->adjustVolume(Landroid/view/KeyEvent;)V

    .line 22
    .line 23
    .line 24
    const/4 v0, 0x4

    .line 25
    if-eq p1, v0, :cond_2

    .line 26
    .line 27
    iget-boolean v0, p0, Lcom/join/mgps/activity/HandShankCheckKeyActivity;->isKeyDown:Z

    .line 28
    .line 29
    const/4 v1, 0x1

    .line 30
    if-nez v0, :cond_1

    .line 31
    .line 32
    iput-boolean v1, p0, Lcom/join/mgps/activity/HandShankCheckKeyActivity;->isKeyDown:Z

    .line 33
    .line 34
    iget-object v0, p0, Lcom/join/mgps/activity/HandShankCheckKeyActivity;->map:Ljava/util/HashMap;

    .line 35
    .line 36
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 37
    .line 38
    .line 39
    move-result-object v2

    .line 40
    invoke-virtual {v0, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 41
    .line 42
    .line 43
    move-result-object v0

    .line 44
    check-cast v0, Lcom/join/mgps/activity/HandShankCheckKeyActivity$c;

    .line 45
    .line 46
    invoke-virtual {p0, v0}, Lcom/join/mgps/activity/HandShankCheckKeyActivity;->handleKeyDownUi(Lcom/join/mgps/activity/HandShankCheckKeyActivity$c;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 47
    .line 48
    .line 49
    :cond_1
    return v1

    .line 50
    :catch_0
    move-exception v0

    .line 51
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 52
    .line 53
    .line 54
    :cond_2
    invoke-super {p0, p1, p2}, Landroid/app/Activity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    .line 55
    .line 56
    .line 57
    move-result p1

    .line 58
    return p1
.end method

.method protected onKeyEvent(ILcom/papa/controller/core/PadKeyEvent;)Z
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "keyCode",
            "event"
        }
    .end annotation

    .line 1
    invoke-virtual {p2}, Lcom/papa/controller/core/BaseEvent;->f()Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-static {}, Lcom/join/mgps/joystick/map/a;->b()Lcom/join/mgps/joystick/map/a;

    .line 6
    .line 7
    .line 8
    move-result-object v1

    .line 9
    invoke-virtual {v1, v0}, Lcom/join/mgps/joystick/map/a;->f(Ljava/lang/String;)Z

    .line 10
    .line 11
    .line 12
    move-result v0

    .line 13
    if-eqz v0, :cond_0

    .line 14
    .line 15
    const/4 p1, 0x0

    .line 16
    return p1

    .line 17
    :cond_0
    invoke-virtual {p2}, Lcom/papa/controller/core/PadKeyEvent;->w()I

    .line 18
    .line 19
    .line 20
    move-result v0

    .line 21
    if-nez v0, :cond_1

    .line 22
    .line 23
    invoke-virtual {p0, p2}, Lcom/join/mgps/activity/HandShankBaseActivity;->padEvent2KeyEvent(Lcom/papa/controller/core/PadKeyEvent;)Landroid/view/KeyEvent;

    .line 24
    .line 25
    .line 26
    move-result-object v0

    .line 27
    invoke-virtual {p0, p1, v0}, Lcom/join/mgps/activity/HandShankCheckKeyActivity;->onKeyDown1(ILandroid/view/KeyEvent;)Z

    .line 28
    .line 29
    .line 30
    goto :goto_0

    .line 31
    :cond_1
    invoke-virtual {p0, p2}, Lcom/join/mgps/activity/HandShankBaseActivity;->padEvent2KeyEvent(Lcom/papa/controller/core/PadKeyEvent;)Landroid/view/KeyEvent;

    .line 32
    .line 33
    .line 34
    move-result-object v0

    .line 35
    invoke-virtual {p0, p1, v0}, Lcom/join/mgps/activity/HandShankCheckKeyActivity;->onKeyUp1(ILandroid/view/KeyEvent;)Z

    .line 36
    .line 37
    .line 38
    :goto_0
    invoke-super {p0, p1, p2}, Lcom/join/mgps/activity/HandShankBaseActivity;->onKeyEvent(ILcom/papa/controller/core/PadKeyEvent;)Z

    .line 39
    .line 40
    .line 41
    move-result p1

    .line 42
    return p1
.end method

.method public onKeyUp1(ILandroid/view/KeyEvent;)Z
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "keyCode",
            "event"
        }
    .end annotation

    .line 1
    invoke-virtual {p2}, Landroid/view/InputEvent;->getDevice()Landroid/view/InputDevice;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0}, Landroid/view/InputDevice;->getName()Ljava/lang/String;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    invoke-static {}, Lcom/join/mgps/joystick/map/a;->b()Lcom/join/mgps/joystick/map/a;

    .line 10
    .line 11
    .line 12
    move-result-object v1

    .line 13
    invoke-virtual {v1, v0}, Lcom/join/mgps/joystick/map/a;->f(Ljava/lang/String;)Z

    .line 14
    .line 15
    .line 16
    move-result v0

    .line 17
    if-eqz v0, :cond_0

    .line 18
    .line 19
    const/4 p1, 0x0

    .line 20
    return p1

    .line 21
    :cond_0
    const/4 v0, 0x4

    .line 22
    if-eq p1, v0, :cond_1

    .line 23
    .line 24
    iget-object p2, p0, Lcom/join/mgps/activity/HandShankCheckKeyActivity;->map:Ljava/util/HashMap;

    .line 25
    .line 26
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 27
    .line 28
    .line 29
    move-result-object p1

    .line 30
    invoke-virtual {p2, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 31
    .line 32
    .line 33
    move-result-object p1

    .line 34
    check-cast p1, Lcom/join/mgps/activity/HandShankCheckKeyActivity$c;

    .line 35
    .line 36
    invoke-virtual {p0, p1}, Lcom/join/mgps/activity/HandShankCheckKeyActivity;->handleKeyUpUi(Lcom/join/mgps/activity/HandShankCheckKeyActivity$c;)V

    .line 37
    .line 38
    .line 39
    const/4 p1, 0x1

    .line 40
    return p1

    .line 41
    :cond_1
    invoke-super {p0, p1, p2}, Landroid/app/Activity;->onKeyUp(ILandroid/view/KeyEvent;)Z

    .line 42
    .line 43
    .line 44
    move-result p1

    .line 45
    return p1
.end method

.method protected onResume()V
    .locals 0

    .line 1
    invoke-super {p0}, Lcom/join/mgps/activity/HandShankBaseActivity;->onResume()V

    .line 2
    .line 3
    .line 4
    invoke-direct {p0}, Lcom/join/mgps/activity/HandShankCheckKeyActivity;->initMap()V

    .line 5
    .line 6
    .line 7
    return-void
.end method

.method protected onStickEvent(Lcom/papa/controller/core/PadMotionEvent;)Z
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "event"
        }
    .end annotation

    .line 1
    invoke-super {p0, p1}, Lcom/join/mgps/activity/HandShankBaseActivity;->onStickEvent(Lcom/papa/controller/core/PadMotionEvent;)Z

    .line 2
    .line 3
    .line 4
    move-result p1

    .line 5
    return p1
.end method
