.class public Lcom/haima/hmcp/model/MappingInputTypeModel;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final TAG:Ljava/lang/String; = "MappingInputTypeModel"


# instance fields
.field private inputType:I

.field private listener:Lcom/haima/hmcp/listeners/MappingInputTypeModelListener;

.field private mCurrentKeyboardMode:I


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x1

    .line 5
    iput v0, p0, Lcom/haima/hmcp/model/MappingInputTypeModel;->inputType:I

    .line 6
    .line 7
    const/4 v0, 0x0

    .line 8
    iput v0, p0, Lcom/haima/hmcp/model/MappingInputTypeModel;->mCurrentKeyboardMode:I

    .line 9
    .line 10
    return-void
.end method

.method private allowSet()Z
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/haima/hmcp/model/MappingInputTypeModel;->listener:Lcom/haima/hmcp/listeners/MappingInputTypeModelListener;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-interface {v0}, Lcom/haima/hmcp/listeners/MappingInputTypeModelListener;->isAllowSet()Z

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    return v0

    .line 10
    :cond_0
    sget-object v0, Lcom/haima/hmcp/model/MappingInputTypeModel;->TAG:Ljava/lang/String;

    .line 11
    .line 12
    const-string v1, "allowSet called fail"

    .line 13
    .line 14
    invoke-static {v0, v1}, Lcom/haima/hmcp/utils/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 15
    .line 16
    .line 17
    const/4 v0, 0x0

    .line 18
    return v0
.end method

.method private clearKeyEvent()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/haima/hmcp/model/MappingInputTypeModel;->listener:Lcom/haima/hmcp/listeners/MappingInputTypeModelListener;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-interface {v0}, Lcom/haima/hmcp/listeners/MappingInputTypeModelListener;->clearKeyEvent()V

    .line 6
    .line 7
    .line 8
    goto :goto_0

    .line 9
    :cond_0
    sget-object v0, Lcom/haima/hmcp/model/MappingInputTypeModel;->TAG:Ljava/lang/String;

    .line 10
    .line 11
    const-string v1, "clearKeyEvent called fail"

    .line 12
    .line 13
    invoke-static {v0, v1}, Lcom/haima/hmcp/utils/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 14
    .line 15
    .line 16
    :goto_0
    return-void
.end method

.method private hasBattleMapping()Z
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/haima/hmcp/model/MappingInputTypeModel;->listener:Lcom/haima/hmcp/listeners/MappingInputTypeModelListener;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-interface {v0}, Lcom/haima/hmcp/listeners/MappingInputTypeModelListener;->hasBattleMapping()Z

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    return v0

    .line 10
    :cond_0
    sget-object v0, Lcom/haima/hmcp/model/MappingInputTypeModel;->TAG:Ljava/lang/String;

    .line 11
    .line 12
    const-string v1, "hasBattleMapping called fail"

    .line 13
    .line 14
    invoke-static {v0, v1}, Lcom/haima/hmcp/utils/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 15
    .line 16
    .line 17
    const/4 v0, 0x0

    .line 18
    return v0
.end method

.method private hasCurrentButtonMapping()Z
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/haima/hmcp/model/MappingInputTypeModel;->listener:Lcom/haima/hmcp/listeners/MappingInputTypeModelListener;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-interface {v0}, Lcom/haima/hmcp/listeners/MappingInputTypeModelListener;->hasCurrentButtonMapping()Z

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    return v0

    .line 10
    :cond_0
    sget-object v0, Lcom/haima/hmcp/model/MappingInputTypeModel;->TAG:Ljava/lang/String;

    .line 11
    .line 12
    const-string v1, "hasCurrentButtonMapping called fail"

    .line 13
    .line 14
    invoke-static {v0, v1}, Lcom/haima/hmcp/utils/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 15
    .line 16
    .line 17
    const/4 v0, 0x0

    .line 18
    return v0
.end method

.method private hasInputOpMapping()Z
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/haima/hmcp/model/MappingInputTypeModel;->listener:Lcom/haima/hmcp/listeners/MappingInputTypeModelListener;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-interface {v0}, Lcom/haima/hmcp/listeners/MappingInputTypeModelListener;->hasInputOpMapping()Z

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    return v0

    .line 10
    :cond_0
    sget-object v0, Lcom/haima/hmcp/model/MappingInputTypeModel;->TAG:Ljava/lang/String;

    .line 11
    .line 12
    const-string v1, "hasInputOpMapping called fail"

    .line 13
    .line 14
    invoke-static {v0, v1}, Lcom/haima/hmcp/utils/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 15
    .line 16
    .line 17
    const/4 v0, 0x0

    .line 18
    return v0
.end method

.method private hasKeyboardMappingEvent()Z
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/haima/hmcp/model/MappingInputTypeModel;->listener:Lcom/haima/hmcp/listeners/MappingInputTypeModelListener;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-interface {v0}, Lcom/haima/hmcp/listeners/MappingInputTypeModelListener;->hasKeyboardMappingEvent()Z

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    return v0

    .line 10
    :cond_0
    sget-object v0, Lcom/haima/hmcp/model/MappingInputTypeModel;->TAG:Ljava/lang/String;

    .line 11
    .line 12
    const-string v1, "hasKeyboardMappingEvent called fail"

    .line 13
    .line 14
    invoke-static {v0, v1}, Lcom/haima/hmcp/utils/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 15
    .line 16
    .line 17
    const/4 v0, 0x0

    .line 18
    return v0
.end method

.method private hasMappingEvent()Z
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/haima/hmcp/model/MappingInputTypeModel;->listener:Lcom/haima/hmcp/listeners/MappingInputTypeModelListener;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-interface {v0}, Lcom/haima/hmcp/listeners/MappingInputTypeModelListener;->hasMappingEvent()Z

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    return v0

    .line 10
    :cond_0
    sget-object v0, Lcom/haima/hmcp/model/MappingInputTypeModel;->TAG:Ljava/lang/String;

    .line 11
    .line 12
    const-string v1, "hasEventMapping called fail"

    .line 13
    .line 14
    invoke-static {v0, v1}, Lcom/haima/hmcp/utils/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 15
    .line 16
    .line 17
    const/4 v0, 0x0

    .line 18
    return v0
.end method

.method private isBattle()Z
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/haima/hmcp/model/MappingInputTypeModel;->listener:Lcom/haima/hmcp/listeners/MappingInputTypeModelListener;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-interface {v0}, Lcom/haima/hmcp/listeners/MappingInputTypeModelListener;->isBattle()Z

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    return v0

    .line 10
    :cond_0
    sget-object v0, Lcom/haima/hmcp/model/MappingInputTypeModel;->TAG:Ljava/lang/String;

    .line 11
    .line 12
    const-string v1, "isBattle called fail"

    .line 13
    .line 14
    invoke-static {v0, v1}, Lcom/haima/hmcp/utils/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 15
    .line 16
    .line 17
    const/4 v0, 0x0

    .line 18
    return v0
.end method

.method private setMouseShow(Z)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/haima/hmcp/model/MappingInputTypeModel;->listener:Lcom/haima/hmcp/listeners/MappingInputTypeModelListener;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-interface {v0, p1}, Lcom/haima/hmcp/listeners/MappingInputTypeModelListener;->showMouse(Z)V

    .line 6
    .line 7
    .line 8
    goto :goto_0

    .line 9
    :cond_0
    sget-object p1, Lcom/haima/hmcp/model/MappingInputTypeModel;->TAG:Ljava/lang/String;

    .line 10
    .line 11
    const-string v0, "setMouseShow called fail"

    .line 12
    .line 13
    invoke-static {p1, v0}, Lcom/haima/hmcp/utils/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 14
    .line 15
    .line 16
    :goto_0
    return-void
.end method


# virtual methods
.method public getmCurrentInputMode()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/haima/hmcp/model/MappingInputTypeModel;->inputType:I

    .line 2
    .line 3
    return v0
.end method

.method public getmCurrentKeyboardMode()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/haima/hmcp/model/MappingInputTypeModel;->mCurrentKeyboardMode:I

    .line 2
    .line 3
    return v0
.end method

.method public setButtonMappingMode(I)Z
    .locals 6

    .line 1
    invoke-direct {p0}, Lcom/haima/hmcp/model/MappingInputTypeModel;->allowSet()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    const/4 v1, 0x0

    .line 6
    if-nez v0, :cond_0

    .line 7
    .line 8
    return v1

    .line 9
    :cond_0
    sget-object v0, Lcom/haima/hmcp/model/MappingInputTypeModel;->TAG:Ljava/lang/String;

    .line 10
    .line 11
    new-instance v2, Ljava/lang/StringBuilder;

    .line 12
    .line 13
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 14
    .line 15
    .line 16
    const-string v3, "set button mapping mode: "

    .line 17
    .line 18
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 19
    .line 20
    .line 21
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 22
    .line 23
    .line 24
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 25
    .line 26
    .line 27
    move-result-object v2

    .line 28
    invoke-static {v0, v2}, Lcom/haima/hmcp/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 29
    .line 30
    .line 31
    const/4 v2, 0x4

    .line 32
    const-string v4, " set fail, no mapping"

    .line 33
    .line 34
    const-string v5, "setButtonMappingMode: "

    .line 35
    .line 36
    if-ne p1, v2, :cond_1

    .line 37
    .line 38
    invoke-direct {p0}, Lcom/haima/hmcp/model/MappingInputTypeModel;->hasCurrentButtonMapping()Z

    .line 39
    .line 40
    .line 41
    move-result v2

    .line 42
    if-nez v2, :cond_1

    .line 43
    .line 44
    invoke-direct {p0}, Lcom/haima/hmcp/model/MappingInputTypeModel;->hasMappingEvent()Z

    .line 45
    .line 46
    .line 47
    move-result v2

    .line 48
    if-nez v2, :cond_1

    .line 49
    .line 50
    invoke-direct {p0}, Lcom/haima/hmcp/model/MappingInputTypeModel;->hasKeyboardMappingEvent()Z

    .line 51
    .line 52
    .line 53
    move-result v2

    .line 54
    if-nez v2, :cond_1

    .line 55
    .line 56
    new-instance v2, Ljava/lang/StringBuilder;

    .line 57
    .line 58
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 59
    .line 60
    .line 61
    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 62
    .line 63
    .line 64
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 65
    .line 66
    .line 67
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 68
    .line 69
    .line 70
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 71
    .line 72
    .line 73
    move-result-object p1

    .line 74
    invoke-static {v0, p1}, Lcom/haima/hmcp/utils/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 75
    .line 76
    .line 77
    return v1

    .line 78
    :cond_1
    const/4 v2, 0x5

    .line 79
    if-ne p1, v2, :cond_2

    .line 80
    .line 81
    invoke-direct {p0}, Lcom/haima/hmcp/model/MappingInputTypeModel;->hasMappingEvent()Z

    .line 82
    .line 83
    .line 84
    move-result v2

    .line 85
    if-nez v2, :cond_2

    .line 86
    .line 87
    new-instance v2, Ljava/lang/StringBuilder;

    .line 88
    .line 89
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 90
    .line 91
    .line 92
    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 93
    .line 94
    .line 95
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 96
    .line 97
    .line 98
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 99
    .line 100
    .line 101
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 102
    .line 103
    .line 104
    move-result-object p1

    .line 105
    invoke-static {v0, p1}, Lcom/haima/hmcp/utils/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 106
    .line 107
    .line 108
    return v1

    .line 109
    :cond_2
    const/4 v2, 0x6

    .line 110
    if-ne p1, v2, :cond_5

    .line 111
    .line 112
    invoke-direct {p0}, Lcom/haima/hmcp/model/MappingInputTypeModel;->hasBattleMapping()Z

    .line 113
    .line 114
    .line 115
    move-result v2

    .line 116
    if-nez v2, :cond_3

    .line 117
    .line 118
    const-string p1, "tv_battle->setButtonMappingMode: GAMEPAD_MODE_DPAD_BATTLE set fail, not battle key mapping"

    .line 119
    .line 120
    invoke-static {v0, p1}, Lcom/haima/hmcp/utils/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 121
    .line 122
    .line 123
    return v1

    .line 124
    :cond_3
    invoke-direct {p0}, Lcom/haima/hmcp/model/MappingInputTypeModel;->isBattle()Z

    .line 125
    .line 126
    .line 127
    move-result v2

    .line 128
    if-eqz v2, :cond_4

    .line 129
    .line 130
    invoke-virtual {p0, p1}, Lcom/haima/hmcp/model/MappingInputTypeModel;->setmCurrentInputMode(I)V

    .line 131
    .line 132
    .line 133
    const-string v2, "tv_battle->setButtonMappingMode: GAMEPAD_MODE_DPAD_BATTLE set success"

    .line 134
    .line 135
    invoke-static {v0, v2}, Lcom/haima/hmcp/utils/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 136
    .line 137
    .line 138
    goto :goto_0

    .line 139
    :cond_4
    const-string p1, "tv_battle->setButtonMappingMode: GAMEPAD_MODE_DPAD_BATTLE set fail, not in battle"

    .line 140
    .line 141
    invoke-static {v0, p1}, Lcom/haima/hmcp/utils/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 142
    .line 143
    .line 144
    return v1

    .line 145
    :cond_5
    const/4 v2, 0x7

    .line 146
    if-ne p1, v2, :cond_7

    .line 147
    .line 148
    invoke-direct {p0}, Lcom/haima/hmcp/model/MappingInputTypeModel;->hasInputOpMapping()Z

    .line 149
    .line 150
    .line 151
    move-result v2

    .line 152
    if-nez v2, :cond_6

    .line 153
    .line 154
    const-string p1, "HmInputOp-->setButtonMappingMode: GAMEPAD_MODE_INPUT_OP set fail, not config"

    .line 155
    .line 156
    invoke-static {v0, p1}, Lcom/haima/hmcp/utils/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 157
    .line 158
    .line 159
    return v1

    .line 160
    :cond_6
    invoke-virtual {p0, p1}, Lcom/haima/hmcp/model/MappingInputTypeModel;->setmCurrentInputMode(I)V

    .line 161
    .line 162
    .line 163
    const-string v2, "HmInputOp-->setButtonMappingMode: GAMEPAD_MODE_INPUT_OP set success"

    .line 164
    .line 165
    invoke-static {v0, v2}, Lcom/haima/hmcp/utils/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 166
    .line 167
    .line 168
    goto :goto_0

    .line 169
    :cond_7
    invoke-virtual {p0, p1}, Lcom/haima/hmcp/model/MappingInputTypeModel;->setmCurrentInputMode(I)V

    .line 170
    .line 171
    .line 172
    :goto_0
    const/4 v0, 0x2

    .line 173
    const/4 v2, 0x1

    .line 174
    if-ne p1, v0, :cond_8

    .line 175
    .line 176
    const/4 v1, 0x1

    .line 177
    :cond_8
    invoke-direct {p0, v1}, Lcom/haima/hmcp/model/MappingInputTypeModel;->setMouseShow(Z)V

    .line 178
    .line 179
    .line 180
    invoke-direct {p0}, Lcom/haima/hmcp/model/MappingInputTypeModel;->clearKeyEvent()V

    .line 181
    .line 182
    .line 183
    new-instance v0, Ljava/lang/StringBuilder;

    .line 184
    .line 185
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 186
    .line 187
    .line 188
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 189
    .line 190
    .line 191
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 192
    .line 193
    .line 194
    const-string p1, "success"

    .line 195
    .line 196
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 197
    .line 198
    .line 199
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 200
    .line 201
    .line 202
    move-result-object p1

    .line 203
    const-string v0, "setButtonMappingMode"

    .line 204
    .line 205
    invoke-static {v0, p1}, Lcom/haima/hmcp/utils/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 206
    .line 207
    .line 208
    return v2
.end method

.method public setListener(Lcom/haima/hmcp/listeners/MappingInputTypeModelListener;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/haima/hmcp/model/MappingInputTypeModel;->listener:Lcom/haima/hmcp/listeners/MappingInputTypeModelListener;

    .line 2
    .line 3
    return-void
.end method

.method public setmCurrentInputMode(I)V
    .locals 3

    .line 1
    iput p1, p0, Lcom/haima/hmcp/model/MappingInputTypeModel;->inputType:I

    .line 2
    .line 3
    sget-object v0, Lcom/haima/hmcp/model/MappingInputTypeModel;->TAG:Ljava/lang/String;

    .line 4
    .line 5
    new-instance v1, Ljava/lang/StringBuilder;

    .line 6
    .line 7
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 8
    .line 9
    .line 10
    const-string v2, "tv_battle->inputType = "

    .line 11
    .line 12
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 13
    .line 14
    .line 15
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 16
    .line 17
    .line 18
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 19
    .line 20
    .line 21
    move-result-object p1

    .line 22
    invoke-static {v0, p1}, Lcom/haima/hmcp/utils/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 23
    .line 24
    .line 25
    return-void
.end method

.method public setmCurrentKeyboardMode(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/haima/hmcp/model/MappingInputTypeModel;->mCurrentKeyboardMode:I

    .line 2
    .line 3
    return-void
.end method
