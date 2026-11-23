.class public Lcom/xinzhu/overmind/client/hook/proxies/audio/a;
.super Lcom/xinzhu/overmind/client/hook/BinderInvocationStub;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    const-string v0, "audio"

    .line 2
    .line 3
    invoke-static {v0}, Lcom/xinzhu/haunted/android/os/t;->i(Ljava/lang/String;)Landroid/os/IBinder;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-direct {p0, v0}, Lcom/xinzhu/overmind/client/hook/BinderInvocationStub;-><init>(Landroid/os/IBinder;)V

    .line 8
    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method public b()Z
    .locals 1

    .line 1
    const/4 v0, 0x0

    return v0
.end method

.method protected getWho()Ljava/lang/Object;
    .locals 1

    .line 1
    const-string v0, "audio"

    .line 2
    .line 3
    invoke-static {v0}, Lcom/xinzhu/haunted/android/os/t;->i(Ljava/lang/String;)Landroid/os/IBinder;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-static {v0}, Lb9/a$a;->a(Landroid/os/IBinder;)Landroid/os/IInterface;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    return-object v0
.end method

.method protected inject(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0

    .line 1
    const-string p1, "audio"

    .line 2
    .line 3
    invoke-virtual {p0, p1}, Lcom/xinzhu/overmind/client/hook/BinderInvocationStub;->replaceSystemService(Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method protected onBindMethod()V
    .locals 4

    .line 1
    invoke-super {p0}, Lcom/xinzhu/overmind/client/hook/BinderInvocationStub;->onBindMethod()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Lcom/xinzhu/overmind/client/hook/common/d;

    .line 5
    .line 6
    sget v1, Lcom/xinzhu/overmind/client/hook/common/d;->f:I

    .line 7
    .line 8
    sget v2, Lcom/xinzhu/overmind/client/hook/common/d;->e:I

    .line 9
    .line 10
    const-string v3, "adjustSuggestedStreamVolume"

    .line 11
    .line 12
    invoke-direct {v0, v3, v1, v2}, Lcom/xinzhu/overmind/client/hook/common/d;-><init>(Ljava/lang/String;II)V

    .line 13
    .line 14
    .line 15
    invoke-virtual {p0, v0}, Lcom/xinzhu/overmind/client/hook/b;->addMethodHook(Lcom/xinzhu/overmind/client/hook/e;)V

    .line 16
    .line 17
    .line 18
    new-instance v0, Lcom/xinzhu/overmind/client/hook/common/d;

    .line 19
    .line 20
    sget v1, Lcom/xinzhu/overmind/client/hook/common/d;->f:I

    .line 21
    .line 22
    sget v2, Lcom/xinzhu/overmind/client/hook/common/d;->e:I

    .line 23
    .line 24
    const-string v3, "adjustStreamVolume"

    .line 25
    .line 26
    invoke-direct {v0, v3, v1, v2}, Lcom/xinzhu/overmind/client/hook/common/d;-><init>(Ljava/lang/String;II)V

    .line 27
    .line 28
    .line 29
    invoke-virtual {p0, v0}, Lcom/xinzhu/overmind/client/hook/b;->addMethodHook(Lcom/xinzhu/overmind/client/hook/e;)V

    .line 30
    .line 31
    .line 32
    new-instance v0, Lcom/xinzhu/overmind/client/hook/common/d;

    .line 33
    .line 34
    sget v1, Lcom/xinzhu/overmind/client/hook/common/d;->f:I

    .line 35
    .line 36
    sget v2, Lcom/xinzhu/overmind/client/hook/common/d;->e:I

    .line 37
    .line 38
    const-string v3, "setStreamVolume"

    .line 39
    .line 40
    invoke-direct {v0, v3, v1, v2}, Lcom/xinzhu/overmind/client/hook/common/d;-><init>(Ljava/lang/String;II)V

    .line 41
    .line 42
    .line 43
    invoke-virtual {p0, v0}, Lcom/xinzhu/overmind/client/hook/b;->addMethodHook(Lcom/xinzhu/overmind/client/hook/e;)V

    .line 44
    .line 45
    .line 46
    new-instance v0, Lcom/xinzhu/overmind/client/hook/common/d;

    .line 47
    .line 48
    sget v1, Lcom/xinzhu/overmind/client/hook/common/d;->f:I

    .line 49
    .line 50
    sget v2, Lcom/xinzhu/overmind/client/hook/common/d;->e:I

    .line 51
    .line 52
    const-string v3, "handleVolumeKey"

    .line 53
    .line 54
    invoke-direct {v0, v3, v1, v2}, Lcom/xinzhu/overmind/client/hook/common/d;-><init>(Ljava/lang/String;II)V

    .line 55
    .line 56
    .line 57
    invoke-virtual {p0, v0}, Lcom/xinzhu/overmind/client/hook/b;->addMethodHook(Lcom/xinzhu/overmind/client/hook/e;)V

    .line 58
    .line 59
    .line 60
    new-instance v0, Lcom/xinzhu/overmind/client/hook/common/d;

    .line 61
    .line 62
    sget v1, Lcom/xinzhu/overmind/client/hook/common/d;->f:I

    .line 63
    .line 64
    sget v2, Lcom/xinzhu/overmind/client/hook/common/d;->g:I

    .line 65
    .line 66
    const-string v3, "setMasterMute"

    .line 67
    .line 68
    invoke-direct {v0, v3, v1, v2}, Lcom/xinzhu/overmind/client/hook/common/d;-><init>(Ljava/lang/String;II)V

    .line 69
    .line 70
    .line 71
    invoke-virtual {p0, v0}, Lcom/xinzhu/overmind/client/hook/b;->addMethodHook(Lcom/xinzhu/overmind/client/hook/e;)V

    .line 72
    .line 73
    .line 74
    new-instance v0, Lcom/xinzhu/overmind/client/hook/common/d;

    .line 75
    .line 76
    sget v1, Lcom/xinzhu/overmind/client/hook/common/d;->f:I

    .line 77
    .line 78
    sget v2, Lcom/xinzhu/overmind/client/hook/common/d;->e:I

    .line 79
    .line 80
    const-string v3, "setVolumeIndexForAttributes"

    .line 81
    .line 82
    invoke-direct {v0, v3, v1, v2}, Lcom/xinzhu/overmind/client/hook/common/d;-><init>(Ljava/lang/String;II)V

    .line 83
    .line 84
    .line 85
    invoke-virtual {p0, v0}, Lcom/xinzhu/overmind/client/hook/b;->addMethodHook(Lcom/xinzhu/overmind/client/hook/e;)V

    .line 86
    .line 87
    .line 88
    new-instance v0, Lcom/xinzhu/overmind/client/hook/common/d;

    .line 89
    .line 90
    sget v1, Lcom/xinzhu/overmind/client/hook/common/d;->f:I

    .line 91
    .line 92
    sget v2, Lcom/xinzhu/overmind/client/hook/common/d;->g:I

    .line 93
    .line 94
    const-string v3, "setMicrophoneMute"

    .line 95
    .line 96
    invoke-direct {v0, v3, v1, v2}, Lcom/xinzhu/overmind/client/hook/common/d;-><init>(Ljava/lang/String;II)V

    .line 97
    .line 98
    .line 99
    invoke-virtual {p0, v0}, Lcom/xinzhu/overmind/client/hook/b;->addMethodHook(Lcom/xinzhu/overmind/client/hook/e;)V

    .line 100
    .line 101
    .line 102
    new-instance v0, Lcom/xinzhu/overmind/client/hook/common/d;

    .line 103
    .line 104
    sget v1, Lcom/xinzhu/overmind/client/hook/common/d;->f:I

    .line 105
    .line 106
    sget v2, Lcom/xinzhu/overmind/client/hook/common/d;->e:I

    .line 107
    .line 108
    const-string v3, "setMode"

    .line 109
    .line 110
    invoke-direct {v0, v3, v1, v2}, Lcom/xinzhu/overmind/client/hook/common/d;-><init>(Ljava/lang/String;II)V

    .line 111
    .line 112
    .line 113
    invoke-virtual {p0, v0}, Lcom/xinzhu/overmind/client/hook/b;->addMethodHook(Lcom/xinzhu/overmind/client/hook/e;)V

    .line 114
    .line 115
    .line 116
    new-instance v0, Lcom/xinzhu/overmind/client/hook/common/d;

    .line 117
    .line 118
    sget v1, Lcom/xinzhu/overmind/client/hook/common/d;->f:I

    .line 119
    .line 120
    sget v2, Lcom/xinzhu/overmind/client/hook/common/d;->e:I

    .line 121
    .line 122
    const-string v3, "requestAudioFocus"

    .line 123
    .line 124
    invoke-direct {v0, v3, v1, v2}, Lcom/xinzhu/overmind/client/hook/common/d;-><init>(Ljava/lang/String;II)V

    .line 125
    .line 126
    .line 127
    invoke-virtual {p0, v0}, Lcom/xinzhu/overmind/client/hook/b;->addMethodHook(Lcom/xinzhu/overmind/client/hook/e;)V

    .line 128
    .line 129
    .line 130
    new-instance v0, Lcom/xinzhu/overmind/client/hook/common/d;

    .line 131
    .line 132
    sget v1, Lcom/xinzhu/overmind/client/hook/common/d;->f:I

    .line 133
    .line 134
    sget v2, Lcom/xinzhu/overmind/client/hook/common/d;->e:I

    .line 135
    .line 136
    const-string v3, "abandonAudioFocus"

    .line 137
    .line 138
    invoke-direct {v0, v3, v1, v2}, Lcom/xinzhu/overmind/client/hook/common/d;-><init>(Ljava/lang/String;II)V

    .line 139
    .line 140
    .line 141
    invoke-virtual {p0, v0}, Lcom/xinzhu/overmind/client/hook/b;->addMethodHook(Lcom/xinzhu/overmind/client/hook/e;)V

    .line 142
    .line 143
    .line 144
    new-instance v0, Lcom/xinzhu/overmind/client/hook/common/d;

    .line 145
    .line 146
    sget v1, Lcom/xinzhu/overmind/client/hook/common/d;->f:I

    .line 147
    .line 148
    sget v2, Lcom/xinzhu/overmind/client/hook/common/d;->e:I

    .line 149
    .line 150
    const-string v3, "disableSafeMediaVolume"

    .line 151
    .line 152
    invoke-direct {v0, v3, v1, v2}, Lcom/xinzhu/overmind/client/hook/common/d;-><init>(Ljava/lang/String;II)V

    .line 153
    .line 154
    .line 155
    invoke-virtual {p0, v0}, Lcom/xinzhu/overmind/client/hook/b;->addMethodHook(Lcom/xinzhu/overmind/client/hook/e;)V

    .line 156
    .line 157
    .line 158
    new-instance v0, Lcom/xinzhu/overmind/client/hook/common/e;

    .line 159
    .line 160
    const-string v1, "setUidDeviceAffinity"

    .line 161
    .line 162
    const/4 v2, 0x1

    .line 163
    invoke-direct {v0, v1, v2}, Lcom/xinzhu/overmind/client/hook/common/e;-><init>(Ljava/lang/String;I)V

    .line 164
    .line 165
    .line 166
    invoke-virtual {p0, v0}, Lcom/xinzhu/overmind/client/hook/b;->addMethodHook(Lcom/xinzhu/overmind/client/hook/e;)V

    .line 167
    .line 168
    .line 169
    new-instance v0, Lcom/xinzhu/overmind/client/hook/common/e;

    .line 170
    .line 171
    const-string v1, "removeUidDeviceAffinity"

    .line 172
    .line 173
    invoke-direct {v0, v1, v2}, Lcom/xinzhu/overmind/client/hook/common/e;-><init>(Ljava/lang/String;I)V

    .line 174
    .line 175
    .line 176
    invoke-virtual {p0, v0}, Lcom/xinzhu/overmind/client/hook/b;->addMethodHook(Lcom/xinzhu/overmind/client/hook/e;)V

    .line 177
    .line 178
    .line 179
    new-instance v0, Lcom/xinzhu/overmind/client/hook/common/d;

    .line 180
    .line 181
    const-string v1, "setUserIdDeviceAffinity"

    .line 182
    .line 183
    sget v3, Lcom/xinzhu/overmind/client/hook/common/d;->e:I

    .line 184
    .line 185
    invoke-direct {v0, v1, v3, v2}, Lcom/xinzhu/overmind/client/hook/common/d;-><init>(Ljava/lang/String;II)V

    .line 186
    .line 187
    .line 188
    invoke-virtual {p0, v0}, Lcom/xinzhu/overmind/client/hook/b;->addMethodHook(Lcom/xinzhu/overmind/client/hook/e;)V

    .line 189
    .line 190
    .line 191
    new-instance v0, Lcom/xinzhu/overmind/client/hook/common/d;

    .line 192
    .line 193
    const-string v1, "removeUserIdDeviceAffinity"

    .line 194
    .line 195
    sget v3, Lcom/xinzhu/overmind/client/hook/common/d;->e:I

    .line 196
    .line 197
    invoke-direct {v0, v1, v3, v2}, Lcom/xinzhu/overmind/client/hook/common/d;-><init>(Ljava/lang/String;II)V

    .line 198
    .line 199
    .line 200
    invoke-virtual {p0, v0}, Lcom/xinzhu/overmind/client/hook/b;->addMethodHook(Lcom/xinzhu/overmind/client/hook/e;)V

    .line 201
    .line 202
    .line 203
    return-void
.end method
