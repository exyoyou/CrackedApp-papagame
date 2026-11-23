.class public Lcom/xinzhu/overmind/client/hook/proxies/permission/b;
.super Lcom/xinzhu/overmind/client/hook/BinderInvocationStub;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/xinzhu/overmind/client/hook/proxies/permission/b$a;,
        Lcom/xinzhu/overmind/client/hook/proxies/permission/b$b;
    }
.end annotation


# static fields
.field public static final b:Ljava/lang/String; = "b"

.field static final c:Ljava/lang/String; = "permissionmgr"


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 1
    const-string v0, "permissionmgr"

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
    const-string v0, "permissionmgr"

    .line 2
    .line 3
    invoke-static {v0}, Lcom/xinzhu/haunted/android/os/t;->i(Ljava/lang/String;)Landroid/os/IBinder;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-static {v0}, Lh9/a$a;->a(Landroid/os/IBinder;)Landroid/os/IInterface;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    return-object v0
.end method

.method protected inject(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 1

    .line 1
    const-string p1, "permissionmgr"

    .line 2
    .line 3
    invoke-virtual {p0, p1}, Lcom/xinzhu/overmind/client/hook/BinderInvocationStub;->replaceSystemService(Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-static {}, Lcom/xinzhu/haunted/android/app/g;->v()Z

    .line 7
    .line 8
    .line 9
    move-result p1

    .line 10
    if-eqz p1, :cond_0

    .line 11
    .line 12
    move-object p1, p2

    .line 13
    check-cast p1, Landroid/os/IInterface;

    .line 14
    .line 15
    invoke-static {p1}, Lcom/xinzhu/haunted/android/app/g;->t0(Landroid/os/IInterface;)Z

    .line 16
    .line 17
    .line 18
    :cond_0
    :try_start_0
    new-instance p1, Lcom/xinzhu/haunted/android/app/j;

    .line 19
    .line 20
    invoke-static {}, Lcom/xinzhu/overmind/Overmind;->getPackageManager()Landroid/content/pm/PackageManager;

    .line 21
    .line 22
    .line 23
    move-result-object v0

    .line 24
    invoke-direct {p1, v0}, Lcom/xinzhu/haunted/android/app/j;-><init>(Ljava/lang/Object;)V

    .line 25
    .line 26
    .line 27
    invoke-virtual {p1}, Lcom/xinzhu/haunted/android/app/j;->b()Landroid/os/IInterface;

    .line 28
    .line 29
    .line 30
    move-result-object v0

    .line 31
    if-eq v0, p2, :cond_1

    .line 32
    .line 33
    check-cast p2, Landroid/os/IInterface;

    .line 34
    .line 35
    invoke-virtual {p1, p2}, Lcom/xinzhu/haunted/android/app/j;->c(Landroid/os/IInterface;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 36
    .line 37
    .line 38
    :catch_0
    :cond_1
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
    .locals 4

    .line 1
    invoke-super {p0}, Lcom/xinzhu/overmind/client/hook/BinderInvocationStub;->onBindMethod()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Lcom/xinzhu/overmind/client/hook/common/d;

    .line 5
    .line 6
    sget v1, Lcom/xinzhu/overmind/client/hook/common/d;->e:I

    .line 7
    .line 8
    sget v2, Lcom/xinzhu/overmind/client/hook/common/d;->g:I

    .line 9
    .line 10
    const-string v3, "getPermissionFlags"

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
    sget v1, Lcom/xinzhu/overmind/client/hook/common/d;->e:I

    .line 21
    .line 22
    sget v2, Lcom/xinzhu/overmind/client/hook/common/d;->g:I

    .line 23
    .line 24
    const-string v3, "updatePermissionFlags"

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
    sget v1, Lcom/xinzhu/overmind/client/hook/common/d;->e:I

    .line 35
    .line 36
    sget v2, Lcom/xinzhu/overmind/client/hook/common/d;->g:I

    .line 37
    .line 38
    const-string v3, "updatePermissionFlagsForAllApps"

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
    new-instance v0, Lcom/xinzhu/overmind/client/hook/proxies/permission/b$a;

    .line 47
    .line 48
    invoke-direct {v0}, Lcom/xinzhu/overmind/client/hook/proxies/permission/b$a;-><init>()V

    .line 49
    .line 50
    .line 51
    invoke-virtual {p0, v0}, Lcom/xinzhu/overmind/client/hook/b;->addMethodHook(Lcom/xinzhu/overmind/client/hook/e;)V

    .line 52
    .line 53
    .line 54
    new-instance v0, Lcom/xinzhu/overmind/client/hook/proxies/permission/b$b;

    .line 55
    .line 56
    invoke-direct {v0}, Lcom/xinzhu/overmind/client/hook/proxies/permission/b$b;-><init>()V

    .line 57
    .line 58
    .line 59
    invoke-virtual {p0, v0}, Lcom/xinzhu/overmind/client/hook/b;->addMethodHook(Lcom/xinzhu/overmind/client/hook/e;)V

    .line 60
    .line 61
    .line 62
    new-instance v0, Lcom/xinzhu/overmind/client/hook/common/d;

    .line 63
    .line 64
    sget v1, Lcom/xinzhu/overmind/client/hook/common/d;->e:I

    .line 65
    .line 66
    sget v2, Lcom/xinzhu/overmind/client/hook/common/d;->g:I

    .line 67
    .line 68
    const-string v3, "getWhitelistedRestrictedPermissions"

    .line 69
    .line 70
    invoke-direct {v0, v3, v1, v2}, Lcom/xinzhu/overmind/client/hook/common/d;-><init>(Ljava/lang/String;II)V

    .line 71
    .line 72
    .line 73
    invoke-virtual {p0, v0}, Lcom/xinzhu/overmind/client/hook/b;->addMethodHook(Lcom/xinzhu/overmind/client/hook/e;)V

    .line 74
    .line 75
    .line 76
    new-instance v0, Lcom/xinzhu/overmind/client/hook/common/d;

    .line 77
    .line 78
    sget v1, Lcom/xinzhu/overmind/client/hook/common/d;->e:I

    .line 79
    .line 80
    sget v2, Lcom/xinzhu/overmind/client/hook/common/d;->g:I

    .line 81
    .line 82
    const-string v3, "addWhitelistedRestrictedPermission"

    .line 83
    .line 84
    invoke-direct {v0, v3, v1, v2}, Lcom/xinzhu/overmind/client/hook/common/d;-><init>(Ljava/lang/String;II)V

    .line 85
    .line 86
    .line 87
    invoke-virtual {p0, v0}, Lcom/xinzhu/overmind/client/hook/b;->addMethodHook(Lcom/xinzhu/overmind/client/hook/e;)V

    .line 88
    .line 89
    .line 90
    new-instance v0, Lcom/xinzhu/overmind/client/hook/common/d;

    .line 91
    .line 92
    sget v1, Lcom/xinzhu/overmind/client/hook/common/d;->e:I

    .line 93
    .line 94
    sget v2, Lcom/xinzhu/overmind/client/hook/common/d;->g:I

    .line 95
    .line 96
    const-string v3, "removeWhitelistedRestrictedPermission"

    .line 97
    .line 98
    invoke-direct {v0, v3, v1, v2}, Lcom/xinzhu/overmind/client/hook/common/d;-><init>(Ljava/lang/String;II)V

    .line 99
    .line 100
    .line 101
    invoke-virtual {p0, v0}, Lcom/xinzhu/overmind/client/hook/b;->addMethodHook(Lcom/xinzhu/overmind/client/hook/e;)V

    .line 102
    .line 103
    .line 104
    new-instance v0, Lcom/xinzhu/overmind/client/hook/common/d;

    .line 105
    .line 106
    sget v1, Lcom/xinzhu/overmind/client/hook/common/d;->e:I

    .line 107
    .line 108
    sget v2, Lcom/xinzhu/overmind/client/hook/common/d;->g:I

    .line 109
    .line 110
    const-string v3, "grantRuntimePermission"

    .line 111
    .line 112
    invoke-direct {v0, v3, v1, v2}, Lcom/xinzhu/overmind/client/hook/common/d;-><init>(Ljava/lang/String;II)V

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
    const/4 v2, 0x2

    .line 123
    const-string v3, "revokeRuntimePermission"

    .line 124
    .line 125
    invoke-direct {v0, v3, v1, v2}, Lcom/xinzhu/overmind/client/hook/common/d;-><init>(Ljava/lang/String;II)V

    .line 126
    .line 127
    .line 128
    invoke-virtual {p0, v0}, Lcom/xinzhu/overmind/client/hook/b;->addMethodHook(Lcom/xinzhu/overmind/client/hook/e;)V

    .line 129
    .line 130
    .line 131
    new-instance v0, Lcom/xinzhu/overmind/client/hook/common/d;

    .line 132
    .line 133
    sget v1, Lcom/xinzhu/overmind/client/hook/common/d;->e:I

    .line 134
    .line 135
    sget v2, Lcom/xinzhu/overmind/client/hook/common/d;->g:I

    .line 136
    .line 137
    const-string v3, "setDefaultBrowser"

    .line 138
    .line 139
    invoke-direct {v0, v3, v1, v2}, Lcom/xinzhu/overmind/client/hook/common/d;-><init>(Ljava/lang/String;II)V

    .line 140
    .line 141
    .line 142
    invoke-virtual {p0, v0}, Lcom/xinzhu/overmind/client/hook/b;->addMethodHook(Lcom/xinzhu/overmind/client/hook/e;)V

    .line 143
    .line 144
    .line 145
    new-instance v0, Lcom/xinzhu/overmind/client/hook/common/d;

    .line 146
    .line 147
    sget v1, Lcom/xinzhu/overmind/client/hook/common/d;->e:I

    .line 148
    .line 149
    sget v2, Lcom/xinzhu/overmind/client/hook/common/d;->g:I

    .line 150
    .line 151
    const-string v3, "getDefaultBrowser"

    .line 152
    .line 153
    invoke-direct {v0, v3, v1, v2}, Lcom/xinzhu/overmind/client/hook/common/d;-><init>(Ljava/lang/String;II)V

    .line 154
    .line 155
    .line 156
    invoke-virtual {p0, v0}, Lcom/xinzhu/overmind/client/hook/b;->addMethodHook(Lcom/xinzhu/overmind/client/hook/e;)V

    .line 157
    .line 158
    .line 159
    new-instance v0, Lcom/xinzhu/overmind/client/hook/common/d;

    .line 160
    .line 161
    sget v1, Lcom/xinzhu/overmind/client/hook/common/d;->e:I

    .line 162
    .line 163
    sget v2, Lcom/xinzhu/overmind/client/hook/common/d;->g:I

    .line 164
    .line 165
    const-string v3, "grantDefaultPermissionsToEnabledCarrierApps"

    .line 166
    .line 167
    invoke-direct {v0, v3, v1, v2}, Lcom/xinzhu/overmind/client/hook/common/d;-><init>(Ljava/lang/String;II)V

    .line 168
    .line 169
    .line 170
    invoke-virtual {p0, v0}, Lcom/xinzhu/overmind/client/hook/b;->addMethodHook(Lcom/xinzhu/overmind/client/hook/e;)V

    .line 171
    .line 172
    .line 173
    new-instance v0, Lcom/xinzhu/overmind/client/hook/common/d;

    .line 174
    .line 175
    sget v1, Lcom/xinzhu/overmind/client/hook/common/d;->e:I

    .line 176
    .line 177
    sget v2, Lcom/xinzhu/overmind/client/hook/common/d;->g:I

    .line 178
    .line 179
    const-string v3, "grantDefaultPermissionsToEnabledImsServices"

    .line 180
    .line 181
    invoke-direct {v0, v3, v1, v2}, Lcom/xinzhu/overmind/client/hook/common/d;-><init>(Ljava/lang/String;II)V

    .line 182
    .line 183
    .line 184
    invoke-virtual {p0, v0}, Lcom/xinzhu/overmind/client/hook/b;->addMethodHook(Lcom/xinzhu/overmind/client/hook/e;)V

    .line 185
    .line 186
    .line 187
    new-instance v0, Lcom/xinzhu/overmind/client/hook/common/d;

    .line 188
    .line 189
    sget v1, Lcom/xinzhu/overmind/client/hook/common/d;->e:I

    .line 190
    .line 191
    sget v2, Lcom/xinzhu/overmind/client/hook/common/d;->g:I

    .line 192
    .line 193
    const-string v3, "grantDefaultPermissionsToEnabledTelephonyDataServices"

    .line 194
    .line 195
    invoke-direct {v0, v3, v1, v2}, Lcom/xinzhu/overmind/client/hook/common/d;-><init>(Ljava/lang/String;II)V

    .line 196
    .line 197
    .line 198
    invoke-virtual {p0, v0}, Lcom/xinzhu/overmind/client/hook/b;->addMethodHook(Lcom/xinzhu/overmind/client/hook/e;)V

    .line 199
    .line 200
    .line 201
    new-instance v0, Lcom/xinzhu/overmind/client/hook/common/d;

    .line 202
    .line 203
    sget v1, Lcom/xinzhu/overmind/client/hook/common/d;->e:I

    .line 204
    .line 205
    sget v2, Lcom/xinzhu/overmind/client/hook/common/d;->g:I

    .line 206
    .line 207
    const-string v3, "revokeDefaultPermissionsFromDisabledTelephonyDataServices"

    .line 208
    .line 209
    invoke-direct {v0, v3, v1, v2}, Lcom/xinzhu/overmind/client/hook/common/d;-><init>(Ljava/lang/String;II)V

    .line 210
    .line 211
    .line 212
    invoke-virtual {p0, v0}, Lcom/xinzhu/overmind/client/hook/b;->addMethodHook(Lcom/xinzhu/overmind/client/hook/e;)V

    .line 213
    .line 214
    .line 215
    new-instance v0, Lcom/xinzhu/overmind/client/hook/common/d;

    .line 216
    .line 217
    sget v1, Lcom/xinzhu/overmind/client/hook/common/d;->e:I

    .line 218
    .line 219
    sget v2, Lcom/xinzhu/overmind/client/hook/common/d;->g:I

    .line 220
    .line 221
    const-string v3, "grantDefaultPermissionsToActiveLuiApp"

    .line 222
    .line 223
    invoke-direct {v0, v3, v1, v2}, Lcom/xinzhu/overmind/client/hook/common/d;-><init>(Ljava/lang/String;II)V

    .line 224
    .line 225
    .line 226
    invoke-virtual {p0, v0}, Lcom/xinzhu/overmind/client/hook/b;->addMethodHook(Lcom/xinzhu/overmind/client/hook/e;)V

    .line 227
    .line 228
    .line 229
    new-instance v0, Lcom/xinzhu/overmind/client/hook/common/d;

    .line 230
    .line 231
    sget v1, Lcom/xinzhu/overmind/client/hook/common/d;->e:I

    .line 232
    .line 233
    sget v2, Lcom/xinzhu/overmind/client/hook/common/d;->g:I

    .line 234
    .line 235
    const-string v3, "revokeDefaultPermissionsFromLuiApps"

    .line 236
    .line 237
    invoke-direct {v0, v3, v1, v2}, Lcom/xinzhu/overmind/client/hook/common/d;-><init>(Ljava/lang/String;II)V

    .line 238
    .line 239
    .line 240
    invoke-virtual {p0, v0}, Lcom/xinzhu/overmind/client/hook/b;->addMethodHook(Lcom/xinzhu/overmind/client/hook/e;)V

    .line 241
    .line 242
    .line 243
    new-instance v0, Lcom/xinzhu/overmind/client/hook/common/d;

    .line 244
    .line 245
    sget v1, Lcom/xinzhu/overmind/client/hook/common/d;->e:I

    .line 246
    .line 247
    sget v2, Lcom/xinzhu/overmind/client/hook/common/d;->g:I

    .line 248
    .line 249
    const-string v3, "shouldShowRequestPermissionRationale"

    .line 250
    .line 251
    invoke-direct {v0, v3, v1, v2}, Lcom/xinzhu/overmind/client/hook/common/d;-><init>(Ljava/lang/String;II)V

    .line 252
    .line 253
    .line 254
    invoke-virtual {p0, v0}, Lcom/xinzhu/overmind/client/hook/b;->addMethodHook(Lcom/xinzhu/overmind/client/hook/e;)V

    .line 255
    .line 256
    .line 257
    new-instance v0, Lcom/xinzhu/overmind/client/hook/common/d;

    .line 258
    .line 259
    sget v1, Lcom/xinzhu/overmind/client/hook/common/d;->e:I

    .line 260
    .line 261
    sget v2, Lcom/xinzhu/overmind/client/hook/common/d;->g:I

    .line 262
    .line 263
    const-string v3, "isPermissionRevokedByPolicy"

    .line 264
    .line 265
    invoke-direct {v0, v3, v1, v2}, Lcom/xinzhu/overmind/client/hook/common/d;-><init>(Ljava/lang/String;II)V

    .line 266
    .line 267
    .line 268
    invoke-virtual {p0, v0}, Lcom/xinzhu/overmind/client/hook/b;->addMethodHook(Lcom/xinzhu/overmind/client/hook/e;)V

    .line 269
    .line 270
    .line 271
    new-instance v0, Lcom/xinzhu/overmind/client/hook/common/d;

    .line 272
    .line 273
    sget v1, Lcom/xinzhu/overmind/client/hook/common/d;->e:I

    .line 274
    .line 275
    const/4 v2, 0x1

    .line 276
    const-string v3, "startOneTimePermissionSession"

    .line 277
    .line 278
    invoke-direct {v0, v3, v1, v2}, Lcom/xinzhu/overmind/client/hook/common/d;-><init>(Ljava/lang/String;II)V

    .line 279
    .line 280
    .line 281
    invoke-virtual {p0, v0}, Lcom/xinzhu/overmind/client/hook/b;->addMethodHook(Lcom/xinzhu/overmind/client/hook/e;)V

    .line 282
    .line 283
    .line 284
    new-instance v0, Lcom/xinzhu/overmind/client/hook/common/d;

    .line 285
    .line 286
    sget v1, Lcom/xinzhu/overmind/client/hook/common/d;->e:I

    .line 287
    .line 288
    sget v2, Lcom/xinzhu/overmind/client/hook/common/d;->g:I

    .line 289
    .line 290
    const-string v3, "stopOneTimePermissionSession"

    .line 291
    .line 292
    invoke-direct {v0, v3, v1, v2}, Lcom/xinzhu/overmind/client/hook/common/d;-><init>(Ljava/lang/String;II)V

    .line 293
    .line 294
    .line 295
    invoke-virtual {p0, v0}, Lcom/xinzhu/overmind/client/hook/b;->addMethodHook(Lcom/xinzhu/overmind/client/hook/e;)V

    .line 296
    .line 297
    .line 298
    new-instance v0, Lcom/xinzhu/overmind/client/hook/common/d;

    .line 299
    .line 300
    sget v1, Lcom/xinzhu/overmind/client/hook/common/d;->e:I

    .line 301
    .line 302
    sget v2, Lcom/xinzhu/overmind/client/hook/common/d;->g:I

    .line 303
    .line 304
    const-string v3, "getAutoRevokeExemptionRequestedPackages"

    .line 305
    .line 306
    invoke-direct {v0, v3, v1, v2}, Lcom/xinzhu/overmind/client/hook/common/d;-><init>(Ljava/lang/String;II)V

    .line 307
    .line 308
    .line 309
    invoke-virtual {p0, v0}, Lcom/xinzhu/overmind/client/hook/b;->addMethodHook(Lcom/xinzhu/overmind/client/hook/e;)V

    .line 310
    .line 311
    .line 312
    new-instance v0, Lcom/xinzhu/overmind/client/hook/common/d;

    .line 313
    .line 314
    sget v1, Lcom/xinzhu/overmind/client/hook/common/d;->e:I

    .line 315
    .line 316
    sget v2, Lcom/xinzhu/overmind/client/hook/common/d;->g:I

    .line 317
    .line 318
    const-string v3, "getAutoRevokeExemptionGrantedPackages"

    .line 319
    .line 320
    invoke-direct {v0, v3, v1, v2}, Lcom/xinzhu/overmind/client/hook/common/d;-><init>(Ljava/lang/String;II)V

    .line 321
    .line 322
    .line 323
    invoke-virtual {p0, v0}, Lcom/xinzhu/overmind/client/hook/b;->addMethodHook(Lcom/xinzhu/overmind/client/hook/e;)V

    .line 324
    .line 325
    .line 326
    new-instance v0, Lcom/xinzhu/overmind/client/hook/common/d;

    .line 327
    .line 328
    sget v1, Lcom/xinzhu/overmind/client/hook/common/d;->e:I

    .line 329
    .line 330
    sget v2, Lcom/xinzhu/overmind/client/hook/common/d;->g:I

    .line 331
    .line 332
    const-string v3, "setAutoRevokeWhitelisted"

    .line 333
    .line 334
    invoke-direct {v0, v3, v1, v2}, Lcom/xinzhu/overmind/client/hook/common/d;-><init>(Ljava/lang/String;II)V

    .line 335
    .line 336
    .line 337
    invoke-virtual {p0, v0}, Lcom/xinzhu/overmind/client/hook/b;->addMethodHook(Lcom/xinzhu/overmind/client/hook/e;)V

    .line 338
    .line 339
    .line 340
    new-instance v0, Lcom/xinzhu/overmind/client/hook/common/d;

    .line 341
    .line 342
    sget v1, Lcom/xinzhu/overmind/client/hook/common/d;->e:I

    .line 343
    .line 344
    sget v2, Lcom/xinzhu/overmind/client/hook/common/d;->g:I

    .line 345
    .line 346
    const-string v3, "isAutoRevokeWhitelisted"

    .line 347
    .line 348
    invoke-direct {v0, v3, v1, v2}, Lcom/xinzhu/overmind/client/hook/common/d;-><init>(Ljava/lang/String;II)V

    .line 349
    .line 350
    .line 351
    invoke-virtual {p0, v0}, Lcom/xinzhu/overmind/client/hook/b;->addMethodHook(Lcom/xinzhu/overmind/client/hook/e;)V

    .line 352
    .line 353
    .line 354
    new-instance v0, Lcom/xinzhu/overmind/client/hook/common/e;

    .line 355
    .line 356
    const-string v1, "checkUidPermission"

    .line 357
    .line 358
    sget v2, Lcom/xinzhu/overmind/client/hook/common/d;->g:I

    .line 359
    .line 360
    invoke-direct {v0, v1, v2}, Lcom/xinzhu/overmind/client/hook/common/e;-><init>(Ljava/lang/String;I)V

    .line 361
    .line 362
    .line 363
    invoke-virtual {p0, v0}, Lcom/xinzhu/overmind/client/hook/b;->addMethodHook(Lcom/xinzhu/overmind/client/hook/e;)V

    .line 364
    .line 365
    .line 366
    new-instance v0, Lcom/xinzhu/overmind/client/hook/common/e;

    .line 367
    .line 368
    const-string v1, "checkDeviceIdentifierAccess"

    .line 369
    .line 370
    sget v2, Lcom/xinzhu/overmind/client/hook/common/d;->g:I

    .line 371
    .line 372
    invoke-direct {v0, v1, v2}, Lcom/xinzhu/overmind/client/hook/common/e;-><init>(Ljava/lang/String;I)V

    .line 373
    .line 374
    .line 375
    invoke-virtual {p0, v0}, Lcom/xinzhu/overmind/client/hook/b;->addMethodHook(Lcom/xinzhu/overmind/client/hook/e;)V

    .line 376
    .line 377
    .line 378
    new-instance v0, Lcom/xinzhu/overmind/client/hook/common/c;

    .line 379
    .line 380
    const/4 v1, 0x0

    .line 381
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 382
    .line 383
    .line 384
    move-result-object v1

    .line 385
    const-string v2, "addOnPermissionsChangeListener"

    .line 386
    .line 387
    invoke-direct {v0, v2, v1}, Lcom/xinzhu/overmind/client/hook/common/c;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    .line 388
    .line 389
    .line 390
    invoke-virtual {p0, v0}, Lcom/xinzhu/overmind/client/hook/b;->addMethodHook(Lcom/xinzhu/overmind/client/hook/e;)V

    .line 391
    .line 392
    .line 393
    return-void
.end method
