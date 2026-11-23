.class public Lcom/xinzhu/overmind/client/hook/proxies/app/d;
.super Lcom/xinzhu/overmind/client/hook/BinderInvocationStub;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-static {}, Lcom/xinzhu/haunted/android/app/x;->c()Landroid/os/IInterface;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-interface {v0}, Landroid/os/IInterface;->asBinder()Landroid/os/IBinder;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    invoke-direct {p0, v0}, Lcom/xinzhu/overmind/client/hook/BinderInvocationStub;-><init>(Landroid/os/IBinder;)V

    .line 10
    .line 11
    .line 12
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
    invoke-static {}, Lcom/xinzhu/haunted/android/app/x;->c()Landroid/os/IInterface;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    return-object v0
.end method

.method protected inject(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/xinzhu/overmind/client/hook/b;->getProxyInvocation()Ljava/lang/Object;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    check-cast p1, Landroid/os/IInterface;

    .line 6
    .line 7
    invoke-static {p1}, Lcom/xinzhu/haunted/android/app/x;->e(Landroid/os/IInterface;)Z

    .line 8
    .line 9
    .line 10
    const-string p1, "notification"

    .line 11
    .line 12
    invoke-virtual {p0, p1}, Lcom/xinzhu/overmind/client/hook/BinderInvocationStub;->replaceSystemService(Ljava/lang/String;)V

    .line 13
    .line 14
    .line 15
    return-void
.end method

.method public invoke(Ljava/lang/Object;Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 1
    invoke-static {p3}, Lsa/r;->c([Ljava/lang/Object;)V

    .line 2
    .line 3
    .line 4
    invoke-super {p0, p1, p2, p3}, Lcom/xinzhu/overmind/client/hook/b;->invoke(Ljava/lang/Object;Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 5
    .line 6
    .line 7
    move-result-object p1

    .line 8
    return-object p1
.end method

.method protected onBindMethod()V
    .locals 5

    .line 1
    invoke-super {p0}, Lcom/xinzhu/overmind/client/hook/BinderInvocationStub;->onBindMethod()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Lcom/xinzhu/overmind/client/hook/proxies/app/d$a;

    .line 5
    .line 6
    sget v1, Lcom/xinzhu/overmind/client/hook/common/d;->e:I

    .line 7
    .line 8
    sget v2, Lcom/xinzhu/overmind/client/hook/common/d;->g:I

    .line 9
    .line 10
    const-string v3, "cancelAllNotifications"

    .line 11
    .line 12
    invoke-direct {v0, p0, v3, v1, v2}, Lcom/xinzhu/overmind/client/hook/proxies/app/d$a;-><init>(Lcom/xinzhu/overmind/client/hook/proxies/app/d;Ljava/lang/String;II)V

    .line 13
    .line 14
    .line 15
    invoke-virtual {p0, v0}, Lcom/xinzhu/overmind/client/hook/b;->addMethodHook(Lcom/xinzhu/overmind/client/hook/e;)V

    .line 16
    .line 17
    .line 18
    new-instance v0, Lcom/xinzhu/overmind/client/hook/proxies/app/d$b;

    .line 19
    .line 20
    sget v1, Lcom/xinzhu/overmind/client/hook/common/d;->e:I

    .line 21
    .line 22
    sget v2, Lcom/xinzhu/overmind/client/hook/common/d;->g:I

    .line 23
    .line 24
    const-string v3, "enqueueNotificationWithTag"

    .line 25
    .line 26
    invoke-direct {v0, p0, v3, v1, v2}, Lcom/xinzhu/overmind/client/hook/proxies/app/d$b;-><init>(Lcom/xinzhu/overmind/client/hook/proxies/app/d;Ljava/lang/String;II)V

    .line 27
    .line 28
    .line 29
    invoke-virtual {p0, v0}, Lcom/xinzhu/overmind/client/hook/b;->addMethodHook(Lcom/xinzhu/overmind/client/hook/e;)V

    .line 30
    .line 31
    .line 32
    new-instance v0, Lcom/xinzhu/overmind/client/hook/proxies/app/d$c;

    .line 33
    .line 34
    sget v1, Lcom/xinzhu/overmind/client/hook/common/d;->e:I

    .line 35
    .line 36
    sget v2, Lcom/xinzhu/overmind/client/hook/common/d;->g:I

    .line 37
    .line 38
    const-string v3, "cancelNotificationWithTag"

    .line 39
    .line 40
    invoke-direct {v0, p0, v3, v1, v2}, Lcom/xinzhu/overmind/client/hook/proxies/app/d$c;-><init>(Lcom/xinzhu/overmind/client/hook/proxies/app/d;Ljava/lang/String;II)V

    .line 41
    .line 42
    .line 43
    invoke-virtual {p0, v0}, Lcom/xinzhu/overmind/client/hook/b;->addMethodHook(Lcom/xinzhu/overmind/client/hook/e;)V

    .line 44
    .line 45
    .line 46
    new-instance v0, Lcom/xinzhu/overmind/client/hook/proxies/app/d$d;

    .line 47
    .line 48
    sget v1, Lcom/xinzhu/overmind/client/hook/common/d;->f:I

    .line 49
    .line 50
    sget v2, Lcom/xinzhu/overmind/client/hook/common/d;->e:I

    .line 51
    .line 52
    const-string v3, "deleteNotificationChannel"

    .line 53
    .line 54
    invoke-direct {v0, p0, v3, v1, v2}, Lcom/xinzhu/overmind/client/hook/proxies/app/d$d;-><init>(Lcom/xinzhu/overmind/client/hook/proxies/app/d;Ljava/lang/String;II)V

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
    sget v1, Lcom/xinzhu/overmind/client/hook/common/d;->e:I

    .line 63
    .line 64
    invoke-static {}, Lcom/xinzhu/overmind/utils/e;->f()Z

    .line 65
    .line 66
    .line 67
    move-result v2

    .line 68
    const/4 v3, 0x1

    .line 69
    if-eqz v2, :cond_0

    .line 70
    .line 71
    const/4 v2, 0x1

    .line 72
    goto :goto_0

    .line 73
    :cond_0
    sget v2, Lcom/xinzhu/overmind/client/hook/common/d;->e:I

    .line 74
    .line 75
    :goto_0
    const-string v4, "getNotificationChannel"

    .line 76
    .line 77
    invoke-direct {v0, v4, v1, v2}, Lcom/xinzhu/overmind/client/hook/common/d;-><init>(Ljava/lang/String;II)V

    .line 78
    .line 79
    .line 80
    invoke-virtual {p0, v0}, Lcom/xinzhu/overmind/client/hook/b;->addMethodHook(Lcom/xinzhu/overmind/client/hook/e;)V

    .line 81
    .line 82
    .line 83
    new-instance v0, Lcom/xinzhu/overmind/client/hook/common/d;

    .line 84
    .line 85
    const-string v1, "getConversationNotificationChannel"

    .line 86
    .line 87
    sget v2, Lcom/xinzhu/overmind/client/hook/common/d;->e:I

    .line 88
    .line 89
    invoke-direct {v0, v1, v2, v3}, Lcom/xinzhu/overmind/client/hook/common/d;-><init>(Ljava/lang/String;II)V

    .line 90
    .line 91
    .line 92
    invoke-virtual {p0, v0}, Lcom/xinzhu/overmind/client/hook/b;->addMethodHook(Lcom/xinzhu/overmind/client/hook/e;)V

    .line 93
    .line 94
    .line 95
    new-instance v0, Lcom/xinzhu/overmind/client/hook/common/d;

    .line 96
    .line 97
    sget v1, Lcom/xinzhu/overmind/client/hook/common/d;->e:I

    .line 98
    .line 99
    invoke-static {}, Lcom/xinzhu/overmind/utils/e;->f()Z

    .line 100
    .line 101
    .line 102
    move-result v2

    .line 103
    if-eqz v2, :cond_1

    .line 104
    .line 105
    sget v2, Lcom/xinzhu/overmind/client/hook/common/d;->g:I

    .line 106
    .line 107
    goto :goto_1

    .line 108
    :cond_1
    sget v2, Lcom/xinzhu/overmind/client/hook/common/d;->e:I

    .line 109
    .line 110
    :goto_1
    const-string v4, "getNotificationChannels"

    .line 111
    .line 112
    invoke-direct {v0, v4, v1, v2}, Lcom/xinzhu/overmind/client/hook/common/d;-><init>(Ljava/lang/String;II)V

    .line 113
    .line 114
    .line 115
    invoke-virtual {p0, v0}, Lcom/xinzhu/overmind/client/hook/b;->addMethodHook(Lcom/xinzhu/overmind/client/hook/e;)V

    .line 116
    .line 117
    .line 118
    new-instance v0, Lcom/xinzhu/overmind/client/hook/common/d;

    .line 119
    .line 120
    sget v1, Lcom/xinzhu/overmind/client/hook/common/d;->e:I

    .line 121
    .line 122
    sget v2, Lcom/xinzhu/overmind/client/hook/common/d;->g:I

    .line 123
    .line 124
    const-string v4, "getBlockedAppCount"

    .line 125
    .line 126
    invoke-direct {v0, v4, v1, v2}, Lcom/xinzhu/overmind/client/hook/common/d;-><init>(Ljava/lang/String;II)V

    .line 127
    .line 128
    .line 129
    invoke-virtual {p0, v0}, Lcom/xinzhu/overmind/client/hook/b;->addMethodHook(Lcom/xinzhu/overmind/client/hook/e;)V

    .line 130
    .line 131
    .line 132
    new-instance v0, Lcom/xinzhu/overmind/client/hook/common/d;

    .line 133
    .line 134
    sget v1, Lcom/xinzhu/overmind/client/hook/common/d;->e:I

    .line 135
    .line 136
    sget v2, Lcom/xinzhu/overmind/client/hook/common/d;->g:I

    .line 137
    .line 138
    const-string v4, "getNotificationChannelsBypassingDnd"

    .line 139
    .line 140
    invoke-direct {v0, v4, v1, v2}, Lcom/xinzhu/overmind/client/hook/common/d;-><init>(Ljava/lang/String;II)V

    .line 141
    .line 142
    .line 143
    invoke-virtual {p0, v0}, Lcom/xinzhu/overmind/client/hook/b;->addMethodHook(Lcom/xinzhu/overmind/client/hook/e;)V

    .line 144
    .line 145
    .line 146
    new-instance v0, Lcom/xinzhu/overmind/client/hook/common/d;

    .line 147
    .line 148
    sget v1, Lcom/xinzhu/overmind/client/hook/common/d;->e:I

    .line 149
    .line 150
    sget v2, Lcom/xinzhu/overmind/client/hook/common/d;->g:I

    .line 151
    .line 152
    const-string v4, "registerListener"

    .line 153
    .line 154
    invoke-direct {v0, v4, v1, v2}, Lcom/xinzhu/overmind/client/hook/common/d;-><init>(Ljava/lang/String;II)V

    .line 155
    .line 156
    .line 157
    invoke-virtual {p0, v0}, Lcom/xinzhu/overmind/client/hook/b;->addMethodHook(Lcom/xinzhu/overmind/client/hook/e;)V

    .line 158
    .line 159
    .line 160
    new-instance v0, Lcom/xinzhu/overmind/client/hook/common/d;

    .line 161
    .line 162
    sget v1, Lcom/xinzhu/overmind/client/hook/common/d;->e:I

    .line 163
    .line 164
    sget v2, Lcom/xinzhu/overmind/client/hook/common/d;->g:I

    .line 165
    .line 166
    const-string v4, "unregisterListener"

    .line 167
    .line 168
    invoke-direct {v0, v4, v1, v2}, Lcom/xinzhu/overmind/client/hook/common/d;-><init>(Ljava/lang/String;II)V

    .line 169
    .line 170
    .line 171
    invoke-virtual {p0, v0}, Lcom/xinzhu/overmind/client/hook/b;->addMethodHook(Lcom/xinzhu/overmind/client/hook/e;)V

    .line 172
    .line 173
    .line 174
    new-instance v0, Lcom/xinzhu/overmind/client/hook/common/d;

    .line 175
    .line 176
    sget v1, Lcom/xinzhu/overmind/client/hook/common/d;->e:I

    .line 177
    .line 178
    sget v2, Lcom/xinzhu/overmind/client/hook/common/d;->g:I

    .line 179
    .line 180
    const-string v4, "isNotificationListenerAccessGrantedForUser"

    .line 181
    .line 182
    invoke-direct {v0, v4, v1, v2}, Lcom/xinzhu/overmind/client/hook/common/d;-><init>(Ljava/lang/String;II)V

    .line 183
    .line 184
    .line 185
    invoke-virtual {p0, v0}, Lcom/xinzhu/overmind/client/hook/b;->addMethodHook(Lcom/xinzhu/overmind/client/hook/e;)V

    .line 186
    .line 187
    .line 188
    new-instance v0, Lcom/xinzhu/overmind/client/hook/common/d;

    .line 189
    .line 190
    const-string v1, "setNotificationListenerAccessGrantedForUser"

    .line 191
    .line 192
    sget v2, Lcom/xinzhu/overmind/client/hook/common/d;->e:I

    .line 193
    .line 194
    invoke-direct {v0, v1, v2, v3}, Lcom/xinzhu/overmind/client/hook/common/d;-><init>(Ljava/lang/String;II)V

    .line 195
    .line 196
    .line 197
    invoke-virtual {p0, v0}, Lcom/xinzhu/overmind/client/hook/b;->addMethodHook(Lcom/xinzhu/overmind/client/hook/e;)V

    .line 198
    .line 199
    .line 200
    new-instance v0, Lcom/xinzhu/overmind/client/hook/common/d;

    .line 201
    .line 202
    const-string v1, "setNotificationAssistantAccessGrantedForUser"

    .line 203
    .line 204
    sget v2, Lcom/xinzhu/overmind/client/hook/common/d;->e:I

    .line 205
    .line 206
    invoke-direct {v0, v1, v2, v3}, Lcom/xinzhu/overmind/client/hook/common/d;-><init>(Ljava/lang/String;II)V

    .line 207
    .line 208
    .line 209
    invoke-virtual {p0, v0}, Lcom/xinzhu/overmind/client/hook/b;->addMethodHook(Lcom/xinzhu/overmind/client/hook/e;)V

    .line 210
    .line 211
    .line 212
    new-instance v0, Lcom/xinzhu/overmind/client/hook/common/d;

    .line 213
    .line 214
    sget v1, Lcom/xinzhu/overmind/client/hook/common/d;->e:I

    .line 215
    .line 216
    sget v2, Lcom/xinzhu/overmind/client/hook/common/d;->g:I

    .line 217
    .line 218
    const-string v4, "getEnabledNotificationListeners"

    .line 219
    .line 220
    invoke-direct {v0, v4, v1, v2}, Lcom/xinzhu/overmind/client/hook/common/d;-><init>(Ljava/lang/String;II)V

    .line 221
    .line 222
    .line 223
    invoke-virtual {p0, v0}, Lcom/xinzhu/overmind/client/hook/b;->addMethodHook(Lcom/xinzhu/overmind/client/hook/e;)V

    .line 224
    .line 225
    .line 226
    new-instance v0, Lcom/xinzhu/overmind/client/hook/common/d;

    .line 227
    .line 228
    sget v1, Lcom/xinzhu/overmind/client/hook/common/d;->e:I

    .line 229
    .line 230
    sget v2, Lcom/xinzhu/overmind/client/hook/common/d;->g:I

    .line 231
    .line 232
    const-string v4, "getAllowedNotificationAssistantForUser"

    .line 233
    .line 234
    invoke-direct {v0, v4, v1, v2}, Lcom/xinzhu/overmind/client/hook/common/d;-><init>(Ljava/lang/String;II)V

    .line 235
    .line 236
    .line 237
    invoke-virtual {p0, v0}, Lcom/xinzhu/overmind/client/hook/b;->addMethodHook(Lcom/xinzhu/overmind/client/hook/e;)V

    .line 238
    .line 239
    .line 240
    new-instance v0, Lcom/xinzhu/overmind/client/hook/common/d;

    .line 241
    .line 242
    const-string v1, "setNotificationPolicyAccessGrantedForUser"

    .line 243
    .line 244
    sget v2, Lcom/xinzhu/overmind/client/hook/common/d;->e:I

    .line 245
    .line 246
    invoke-direct {v0, v1, v2, v3}, Lcom/xinzhu/overmind/client/hook/common/d;-><init>(Ljava/lang/String;II)V

    .line 247
    .line 248
    .line 249
    invoke-virtual {p0, v0}, Lcom/xinzhu/overmind/client/hook/b;->addMethodHook(Lcom/xinzhu/overmind/client/hook/e;)V

    .line 250
    .line 251
    .line 252
    new-instance v0, Lcom/xinzhu/overmind/client/hook/common/d;

    .line 253
    .line 254
    sget v1, Lcom/xinzhu/overmind/client/hook/common/d;->e:I

    .line 255
    .line 256
    sget v2, Lcom/xinzhu/overmind/client/hook/common/d;->g:I

    .line 257
    .line 258
    const-string v3, "getAppActiveNotifications"

    .line 259
    .line 260
    invoke-direct {v0, v3, v1, v2}, Lcom/xinzhu/overmind/client/hook/common/d;-><init>(Ljava/lang/String;II)V

    .line 261
    .line 262
    .line 263
    invoke-virtual {p0, v0}, Lcom/xinzhu/overmind/client/hook/b;->addMethodHook(Lcom/xinzhu/overmind/client/hook/e;)V

    .line 264
    .line 265
    .line 266
    new-instance v0, Lcom/xinzhu/overmind/client/hook/common/d;

    .line 267
    .line 268
    sget v1, Lcom/xinzhu/overmind/client/hook/common/d;->e:I

    .line 269
    .line 270
    sget v2, Lcom/xinzhu/overmind/client/hook/common/d;->g:I

    .line 271
    .line 272
    const-string v3, "canNotifyAsPackage"

    .line 273
    .line 274
    invoke-direct {v0, v3, v1, v2}, Lcom/xinzhu/overmind/client/hook/common/d;-><init>(Ljava/lang/String;II)V

    .line 275
    .line 276
    .line 277
    invoke-virtual {p0, v0}, Lcom/xinzhu/overmind/client/hook/b;->addMethodHook(Lcom/xinzhu/overmind/client/hook/e;)V

    .line 278
    .line 279
    .line 280
    new-instance v0, Lcom/xinzhu/overmind/client/hook/common/d;

    .line 281
    .line 282
    sget v1, Lcom/xinzhu/overmind/client/hook/common/d;->e:I

    .line 283
    .line 284
    sget v2, Lcom/xinzhu/overmind/client/hook/common/d;->g:I

    .line 285
    .line 286
    const-string v3, "removeEdgeNotification"

    .line 287
    .line 288
    invoke-direct {v0, v3, v1, v2}, Lcom/xinzhu/overmind/client/hook/common/d;-><init>(Ljava/lang/String;II)V

    .line 289
    .line 290
    .line 291
    invoke-virtual {p0, v0}, Lcom/xinzhu/overmind/client/hook/b;->addMethodHook(Lcom/xinzhu/overmind/client/hook/e;)V

    .line 292
    .line 293
    .line 294
    new-instance v0, Lcom/xinzhu/overmind/client/hook/proxies/app/d$e;

    .line 295
    .line 296
    const-string v1, "hasPackageBeenManaged"

    .line 297
    .line 298
    sget v2, Lcom/xinzhu/overmind/client/hook/common/d;->g:I

    .line 299
    .line 300
    invoke-direct {v0, p0, v1, v2}, Lcom/xinzhu/overmind/client/hook/proxies/app/d$e;-><init>(Lcom/xinzhu/overmind/client/hook/proxies/app/d;Ljava/lang/String;I)V

    .line 301
    .line 302
    .line 303
    invoke-virtual {p0, v0}, Lcom/xinzhu/overmind/client/hook/b;->addMethodHook(Lcom/xinzhu/overmind/client/hook/e;)V

    .line 304
    .line 305
    .line 306
    return-void
.end method
