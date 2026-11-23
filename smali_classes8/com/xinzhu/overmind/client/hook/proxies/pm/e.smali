.class public Lcom/xinzhu/overmind/client/hook/proxies/pm/e;
.super Lcom/xinzhu/overmind/client/hook/BinderInvocationStub;
.source "SourceFile"


# static fields
.field static final synthetic b:Z


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 1
    const-string v0, "shortcut"

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
    const-string v0, "shortcut"

    .line 2
    .line 3
    invoke-static {v0}, Lcom/xinzhu/haunted/android/os/t;->i(Ljava/lang/String;)Landroid/os/IBinder;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-static {v0}, Lcom/xinzhu/haunted/android/content/pm/g$a;->a(Landroid/os/IBinder;)Landroid/os/IInterface;

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
    const-string p1, "shortcut"

    .line 2
    .line 3
    invoke-virtual {p0, p1}, Lcom/xinzhu/overmind/client/hook/BinderInvocationStub;->replaceSystemService(Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
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
    .locals 9

    .line 1
    invoke-super {p0}, Lcom/xinzhu/overmind/client/hook/BinderInvocationStub;->onBindMethod()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Lcom/xinzhu/overmind/client/hook/common/c;

    .line 5
    .line 6
    const/4 v1, 0x0

    .line 7
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 8
    .line 9
    .line 10
    move-result-object v1

    .line 11
    const-string v2, "updateShortcuts"

    .line 12
    .line 13
    invoke-direct {v0, v2, v1}, Lcom/xinzhu/overmind/client/hook/common/c;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    .line 14
    .line 15
    .line 16
    invoke-virtual {p0, v0}, Lcom/xinzhu/overmind/client/hook/b;->addMethodHook(Lcom/xinzhu/overmind/client/hook/e;)V

    .line 17
    .line 18
    .line 19
    new-instance v0, Lcom/xinzhu/overmind/client/hook/common/c;

    .line 20
    .line 21
    const-string v2, "requestPinShortcut"

    .line 22
    .line 23
    invoke-direct {v0, v2, v1}, Lcom/xinzhu/overmind/client/hook/common/c;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    .line 24
    .line 25
    .line 26
    invoke-virtual {p0, v0}, Lcom/xinzhu/overmind/client/hook/b;->addMethodHook(Lcom/xinzhu/overmind/client/hook/e;)V

    .line 27
    .line 28
    .line 29
    new-instance v0, Lcom/xinzhu/overmind/client/hook/common/c;

    .line 30
    .line 31
    const-string v3, "disableShortcuts"

    .line 32
    .line 33
    invoke-direct {v0, v3, v1}, Lcom/xinzhu/overmind/client/hook/common/c;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    .line 34
    .line 35
    .line 36
    invoke-virtual {p0, v0}, Lcom/xinzhu/overmind/client/hook/b;->addMethodHook(Lcom/xinzhu/overmind/client/hook/e;)V

    .line 37
    .line 38
    .line 39
    new-instance v0, Lcom/xinzhu/overmind/client/hook/common/c;

    .line 40
    .line 41
    const-string v3, "enableShortcuts"

    .line 42
    .line 43
    invoke-direct {v0, v3, v1}, Lcom/xinzhu/overmind/client/hook/common/c;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    .line 44
    .line 45
    .line 46
    invoke-virtual {p0, v0}, Lcom/xinzhu/overmind/client/hook/b;->addMethodHook(Lcom/xinzhu/overmind/client/hook/e;)V

    .line 47
    .line 48
    .line 49
    new-instance v0, Lcom/xinzhu/overmind/client/hook/common/c;

    .line 50
    .line 51
    const-string v3, "removeDynamicShortcuts"

    .line 52
    .line 53
    invoke-direct {v0, v3, v1}, Lcom/xinzhu/overmind/client/hook/common/c;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    .line 54
    .line 55
    .line 56
    invoke-virtual {p0, v0}, Lcom/xinzhu/overmind/client/hook/b;->addMethodHook(Lcom/xinzhu/overmind/client/hook/e;)V

    .line 57
    .line 58
    .line 59
    new-instance v0, Lcom/xinzhu/overmind/client/hook/common/c;

    .line 60
    .line 61
    const-string v3, "removeAllDynamicShortcuts"

    .line 62
    .line 63
    invoke-direct {v0, v3, v1}, Lcom/xinzhu/overmind/client/hook/common/c;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    .line 64
    .line 65
    .line 66
    invoke-virtual {p0, v0}, Lcom/xinzhu/overmind/client/hook/b;->addMethodHook(Lcom/xinzhu/overmind/client/hook/e;)V

    .line 67
    .line 68
    .line 69
    new-instance v0, Lcom/xinzhu/overmind/client/hook/common/c;

    .line 70
    .line 71
    const-string v3, "removeLongLivedShortcuts"

    .line 72
    .line 73
    invoke-direct {v0, v3, v1}, Lcom/xinzhu/overmind/client/hook/common/c;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    .line 74
    .line 75
    .line 76
    invoke-virtual {p0, v0}, Lcom/xinzhu/overmind/client/hook/b;->addMethodHook(Lcom/xinzhu/overmind/client/hook/e;)V

    .line 77
    .line 78
    .line 79
    invoke-static {}, Lcom/xinzhu/overmind/utils/e;->h()Z

    .line 80
    .line 81
    .line 82
    move-result v0

    .line 83
    const-string v3, "createShortcutResultIntent"

    .line 84
    .line 85
    const-string v4, "pushDynamicShortcut"

    .line 86
    .line 87
    const-string v5, "setDynamicShortcuts"

    .line 88
    .line 89
    const-string v6, "addDynamicShortcuts"

    .line 90
    .line 91
    if-eqz v0, :cond_0

    .line 92
    .line 93
    invoke-static {}, Lcom/xinzhu/overmind/utils/e;->j()Z

    .line 94
    .line 95
    .line 96
    move-result v0

    .line 97
    if-nez v0, :cond_0

    .line 98
    .line 99
    invoke-static {}, Lu9/a;->e()Lu9/a;

    .line 100
    .line 101
    .line 102
    move-result-object v0

    .line 103
    sget-object v7, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 104
    .line 105
    invoke-virtual {v0, v7}, Lu9/a;->d(Ljava/lang/Object;)Z

    .line 106
    .line 107
    .line 108
    new-instance v7, Lcom/xinzhu/overmind/client/hook/common/c;

    .line 109
    .line 110
    iget-object v8, v0, Lu9/a;->a:Ljava/lang/Object;

    .line 111
    .line 112
    invoke-direct {v7, v2, v8}, Lcom/xinzhu/overmind/client/hook/common/c;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    .line 113
    .line 114
    .line 115
    invoke-virtual {p0, v7}, Lcom/xinzhu/overmind/client/hook/b;->addMethodHook(Lcom/xinzhu/overmind/client/hook/e;)V

    .line 116
    .line 117
    .line 118
    new-instance v2, Lcom/xinzhu/overmind/client/hook/common/c;

    .line 119
    .line 120
    iget-object v7, v0, Lu9/a;->a:Ljava/lang/Object;

    .line 121
    .line 122
    invoke-direct {v2, v5, v7}, Lcom/xinzhu/overmind/client/hook/common/c;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    .line 123
    .line 124
    .line 125
    invoke-virtual {p0, v2}, Lcom/xinzhu/overmind/client/hook/b;->addMethodHook(Lcom/xinzhu/overmind/client/hook/e;)V

    .line 126
    .line 127
    .line 128
    new-instance v2, Lcom/xinzhu/overmind/client/hook/common/c;

    .line 129
    .line 130
    iget-object v5, v0, Lu9/a;->a:Ljava/lang/Object;

    .line 131
    .line 132
    invoke-direct {v2, v6, v5}, Lcom/xinzhu/overmind/client/hook/common/c;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    .line 133
    .line 134
    .line 135
    invoke-virtual {p0, v2}, Lcom/xinzhu/overmind/client/hook/b;->addMethodHook(Lcom/xinzhu/overmind/client/hook/e;)V

    .line 136
    .line 137
    .line 138
    new-instance v2, Lcom/xinzhu/overmind/client/hook/common/c;

    .line 139
    .line 140
    iget-object v0, v0, Lu9/a;->a:Ljava/lang/Object;

    .line 141
    .line 142
    invoke-direct {v2, v4, v0}, Lcom/xinzhu/overmind/client/hook/common/c;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    .line 143
    .line 144
    .line 145
    invoke-virtual {p0, v2}, Lcom/xinzhu/overmind/client/hook/b;->addMethodHook(Lcom/xinzhu/overmind/client/hook/e;)V

    .line 146
    .line 147
    .line 148
    invoke-static {}, Lu9/a;->e()Lu9/a;

    .line 149
    .line 150
    .line 151
    move-result-object v0

    .line 152
    new-instance v2, Landroid/content/Intent;

    .line 153
    .line 154
    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    .line 155
    .line 156
    .line 157
    invoke-virtual {v0, v2}, Lu9/a;->d(Ljava/lang/Object;)Z

    .line 158
    .line 159
    .line 160
    new-instance v2, Lcom/xinzhu/overmind/client/hook/common/c;

    .line 161
    .line 162
    iget-object v0, v0, Lu9/a;->a:Ljava/lang/Object;

    .line 163
    .line 164
    invoke-direct {v2, v3, v0}, Lcom/xinzhu/overmind/client/hook/common/c;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    .line 165
    .line 166
    .line 167
    invoke-virtual {p0, v2}, Lcom/xinzhu/overmind/client/hook/b;->addMethodHook(Lcom/xinzhu/overmind/client/hook/e;)V

    .line 168
    .line 169
    .line 170
    goto :goto_0

    .line 171
    :cond_0
    new-instance v0, Lcom/xinzhu/overmind/client/hook/common/c;

    .line 172
    .line 173
    sget-object v7, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 174
    .line 175
    invoke-direct {v0, v6, v7}, Lcom/xinzhu/overmind/client/hook/common/c;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    .line 176
    .line 177
    .line 178
    invoke-virtual {p0, v0}, Lcom/xinzhu/overmind/client/hook/b;->addMethodHook(Lcom/xinzhu/overmind/client/hook/e;)V

    .line 179
    .line 180
    .line 181
    new-instance v0, Lcom/xinzhu/overmind/client/hook/common/c;

    .line 182
    .line 183
    invoke-direct {v0, v5, v7}, Lcom/xinzhu/overmind/client/hook/common/c;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    .line 184
    .line 185
    .line 186
    invoke-virtual {p0, v0}, Lcom/xinzhu/overmind/client/hook/b;->addMethodHook(Lcom/xinzhu/overmind/client/hook/e;)V

    .line 187
    .line 188
    .line 189
    new-instance v0, Lcom/xinzhu/overmind/client/hook/common/c;

    .line 190
    .line 191
    invoke-direct {v0, v2, v7}, Lcom/xinzhu/overmind/client/hook/common/c;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    .line 192
    .line 193
    .line 194
    invoke-virtual {p0, v0}, Lcom/xinzhu/overmind/client/hook/b;->addMethodHook(Lcom/xinzhu/overmind/client/hook/e;)V

    .line 195
    .line 196
    .line 197
    new-instance v0, Lcom/xinzhu/overmind/client/hook/common/c;

    .line 198
    .line 199
    invoke-direct {v0, v4, v7}, Lcom/xinzhu/overmind/client/hook/common/c;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    .line 200
    .line 201
    .line 202
    invoke-virtual {p0, v0}, Lcom/xinzhu/overmind/client/hook/b;->addMethodHook(Lcom/xinzhu/overmind/client/hook/e;)V

    .line 203
    .line 204
    .line 205
    new-instance v0, Lcom/xinzhu/overmind/client/hook/common/c;

    .line 206
    .line 207
    new-instance v2, Landroid/content/Intent;

    .line 208
    .line 209
    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    .line 210
    .line 211
    .line 212
    invoke-direct {v0, v3, v2}, Lcom/xinzhu/overmind/client/hook/common/c;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    .line 213
    .line 214
    .line 215
    invoke-virtual {p0, v0}, Lcom/xinzhu/overmind/client/hook/b;->addMethodHook(Lcom/xinzhu/overmind/client/hook/e;)V

    .line 216
    .line 217
    .line 218
    :goto_0
    new-instance v0, Lcom/xinzhu/overmind/client/hook/common/c;

    .line 219
    .line 220
    const-string v2, "getShortcuts"

    .line 221
    .line 222
    invoke-static {}, Lcom/xinzhu/haunted/android/content/pm/o;->e()Ljava/lang/Object;

    .line 223
    .line 224
    .line 225
    move-result-object v3

    .line 226
    invoke-direct {v0, v2, v3}, Lcom/xinzhu/overmind/client/hook/common/c;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    .line 227
    .line 228
    .line 229
    invoke-virtual {p0, v0}, Lcom/xinzhu/overmind/client/hook/b;->addMethodHook(Lcom/xinzhu/overmind/client/hook/e;)V

    .line 230
    .line 231
    .line 232
    new-instance v0, Lcom/xinzhu/overmind/client/hook/common/c;

    .line 233
    .line 234
    const-string v2, "getShareTargets"

    .line 235
    .line 236
    invoke-static {}, Lcom/xinzhu/haunted/android/content/pm/o;->e()Ljava/lang/Object;

    .line 237
    .line 238
    .line 239
    move-result-object v3

    .line 240
    invoke-direct {v0, v2, v3}, Lcom/xinzhu/overmind/client/hook/common/c;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    .line 241
    .line 242
    .line 243
    invoke-virtual {p0, v0}, Lcom/xinzhu/overmind/client/hook/b;->addMethodHook(Lcom/xinzhu/overmind/client/hook/e;)V

    .line 244
    .line 245
    .line 246
    new-instance v0, Lcom/xinzhu/overmind/client/hook/common/c;

    .line 247
    .line 248
    sget-object v2, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 249
    .line 250
    const-string v3, "hasShareTargets"

    .line 251
    .line 252
    invoke-direct {v0, v3, v2}, Lcom/xinzhu/overmind/client/hook/common/c;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    .line 253
    .line 254
    .line 255
    invoke-virtual {p0, v0}, Lcom/xinzhu/overmind/client/hook/b;->addMethodHook(Lcom/xinzhu/overmind/client/hook/e;)V

    .line 256
    .line 257
    .line 258
    new-instance v0, Lcom/xinzhu/overmind/client/hook/common/c;

    .line 259
    .line 260
    const-string v3, "getMaxShortcutCountPerActivity"

    .line 261
    .line 262
    invoke-direct {v0, v3, v1}, Lcom/xinzhu/overmind/client/hook/common/c;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    .line 263
    .line 264
    .line 265
    invoke-virtual {p0, v0}, Lcom/xinzhu/overmind/client/hook/b;->addMethodHook(Lcom/xinzhu/overmind/client/hook/e;)V

    .line 266
    .line 267
    .line 268
    new-instance v0, Lcom/xinzhu/overmind/client/hook/common/c;

    .line 269
    .line 270
    const-string v3, "getRemainingCallCount"

    .line 271
    .line 272
    invoke-direct {v0, v3, v1}, Lcom/xinzhu/overmind/client/hook/common/c;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    .line 273
    .line 274
    .line 275
    invoke-virtual {p0, v0}, Lcom/xinzhu/overmind/client/hook/b;->addMethodHook(Lcom/xinzhu/overmind/client/hook/e;)V

    .line 276
    .line 277
    .line 278
    new-instance v0, Lcom/xinzhu/overmind/client/hook/common/c;

    .line 279
    .line 280
    const-string v3, "getRateLimitResetTime"

    .line 281
    .line 282
    invoke-direct {v0, v3, v1}, Lcom/xinzhu/overmind/client/hook/common/c;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    .line 283
    .line 284
    .line 285
    invoke-virtual {p0, v0}, Lcom/xinzhu/overmind/client/hook/b;->addMethodHook(Lcom/xinzhu/overmind/client/hook/e;)V

    .line 286
    .line 287
    .line 288
    new-instance v0, Lcom/xinzhu/overmind/client/hook/common/c;

    .line 289
    .line 290
    const-string v3, "getIconMaxDimensions"

    .line 291
    .line 292
    invoke-direct {v0, v3, v1}, Lcom/xinzhu/overmind/client/hook/common/c;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    .line 293
    .line 294
    .line 295
    invoke-virtual {p0, v0}, Lcom/xinzhu/overmind/client/hook/b;->addMethodHook(Lcom/xinzhu/overmind/client/hook/e;)V

    .line 296
    .line 297
    .line 298
    new-instance v0, Lcom/xinzhu/overmind/client/hook/common/c;

    .line 299
    .line 300
    const-string v3, "reportShortcutUsed"

    .line 301
    .line 302
    invoke-direct {v0, v3, v1}, Lcom/xinzhu/overmind/client/hook/common/c;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    .line 303
    .line 304
    .line 305
    invoke-virtual {p0, v0}, Lcom/xinzhu/overmind/client/hook/b;->addMethodHook(Lcom/xinzhu/overmind/client/hook/e;)V

    .line 306
    .line 307
    .line 308
    new-instance v0, Lcom/xinzhu/overmind/client/hook/common/c;

    .line 309
    .line 310
    const-string v3, "isRequestPinItemSupported"

    .line 311
    .line 312
    invoke-direct {v0, v3, v2}, Lcom/xinzhu/overmind/client/hook/common/c;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    .line 313
    .line 314
    .line 315
    invoke-virtual {p0, v0}, Lcom/xinzhu/overmind/client/hook/b;->addMethodHook(Lcom/xinzhu/overmind/client/hook/e;)V

    .line 316
    .line 317
    .line 318
    new-instance v0, Lcom/xinzhu/overmind/client/hook/common/c;

    .line 319
    .line 320
    const-string v2, "onApplicationActive"

    .line 321
    .line 322
    invoke-direct {v0, v2, v1}, Lcom/xinzhu/overmind/client/hook/common/c;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    .line 323
    .line 324
    .line 325
    invoke-virtual {p0, v0}, Lcom/xinzhu/overmind/client/hook/b;->addMethodHook(Lcom/xinzhu/overmind/client/hook/e;)V

    .line 326
    .line 327
    .line 328
    new-instance v0, Lcom/xinzhu/overmind/client/hook/common/c;

    .line 329
    .line 330
    const-string v2, "getBackupPayload"

    .line 331
    .line 332
    const/4 v3, 0x0

    .line 333
    invoke-direct {v0, v2, v3}, Lcom/xinzhu/overmind/client/hook/common/c;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    .line 334
    .line 335
    .line 336
    invoke-virtual {p0, v0}, Lcom/xinzhu/overmind/client/hook/b;->addMethodHook(Lcom/xinzhu/overmind/client/hook/e;)V

    .line 337
    .line 338
    .line 339
    new-instance v0, Lcom/xinzhu/overmind/client/hook/common/c;

    .line 340
    .line 341
    const-string v2, "applyRestore"

    .line 342
    .line 343
    invoke-direct {v0, v2, v1}, Lcom/xinzhu/overmind/client/hook/common/c;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    .line 344
    .line 345
    .line 346
    invoke-virtual {p0, v0}, Lcom/xinzhu/overmind/client/hook/b;->addMethodHook(Lcom/xinzhu/overmind/client/hook/e;)V

    .line 347
    .line 348
    .line 349
    return-void
.end method
