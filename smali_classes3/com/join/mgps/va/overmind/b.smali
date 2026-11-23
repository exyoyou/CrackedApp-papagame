.class public final Lcom/join/mgps/va/overmind/b;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/join/mgps/va/overmind/b$a;
    }
.end annotation


# static fields
.field public static final g:Lcom/join/mgps/va/overmind/b$a;
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final h:Ljava/lang/String; = "com.join.android.app.mgsim.wufun"
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field

.field public static final i:Ljava/lang/String; = "com.join.android.app.mgsim.wufun.addon"
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation
.end field


# instance fields
.field private a:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private b:Ljava/lang/String;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private c:I

.field private d:Lcom/join/mgps/mod/utils/b;
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation
.end field

.field private e:I

.field private f:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/join/mgps/va/overmind/b$a;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/join/mgps/va/overmind/b$a;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/join/mgps/va/overmind/b;->g:Lcom/join/mgps/va/overmind/b$a;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    const-string v0, ""

    .line 5
    .line 6
    iput-object v0, p0, Lcom/join/mgps/va/overmind/b;->a:Ljava/lang/String;

    .line 7
    .line 8
    const-string v0, "0"

    .line 9
    .line 10
    iput-object v0, p0, Lcom/join/mgps/va/overmind/b;->b:Ljava/lang/String;

    .line 11
    .line 12
    return-void
.end method


# virtual methods
.method public final a()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/join/mgps/va/overmind/b;->f:Z

    .line 2
    .line 3
    return v0
.end method

.method public final b()Z
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/join/mgps/va/overmind/b;->d()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-nez v0, :cond_0

    .line 6
    .line 7
    const/4 v0, 0x0

    .line 8
    return v0

    .line 9
    :cond_0
    invoke-static {}, Lcom/xinzhu/overmind/Overmind;->isPluginPkgInstalled()Z

    .line 10
    .line 11
    .line 12
    move-result v0

    .line 13
    return v0
.end method

.method public final c(Ljava/lang/String;)Z
    .locals 3
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param

    .line 1
    invoke-virtual {p0}, Lcom/join/mgps/va/overmind/b;->d()Z

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
    const/4 v0, 0x1

    .line 10
    if-eqz p1, :cond_2

    .line 11
    .line 12
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    .line 13
    .line 14
    .line 15
    move-result v2

    .line 16
    if-nez v2, :cond_1

    .line 17
    .line 18
    goto :goto_0

    .line 19
    :cond_1
    const/4 v2, 0x0

    .line 20
    goto :goto_1

    .line 21
    :cond_2
    :goto_0
    const/4 v2, 0x1

    .line 22
    :goto_1
    if-eqz v2, :cond_3

    .line 23
    .line 24
    return v1

    .line 25
    :cond_3
    invoke-static {}, Lcom/xinzhu/overmind/Overmind;->getMindPackageManager()Lma/g;

    .line 26
    .line 27
    .line 28
    move-result-object v2

    .line 29
    invoke-virtual {v2, p1}, Lma/g;->k(Ljava/lang/String;)Lcom/xinzhu/overmind/server/pm/MindPackageSettings;

    .line 30
    .line 31
    .line 32
    move-result-object v2

    .line 33
    if-nez v2, :cond_5

    .line 34
    .line 35
    invoke-static {p1}, Lcom/xinzhu/overmind/a;->d(Ljava/lang/String;)Ljava/io/File;

    .line 36
    .line 37
    .line 38
    move-result-object p1

    .line 39
    if-eqz p1, :cond_4

    .line 40
    .line 41
    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    .line 42
    .line 43
    .line 44
    move-result p1

    .line 45
    if-eqz p1, :cond_4

    .line 46
    .line 47
    return v0

    .line 48
    :cond_4
    return v1

    .line 49
    :cond_5
    invoke-virtual {v2}, Lcom/xinzhu/overmind/server/pm/MindPackageSettings;->E()Z

    .line 50
    .line 51
    .line 52
    move-result p1

    .line 53
    return p1
.end method

.method public final d()Z
    .locals 2

    .line 1
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 2
    .line 3
    const/16 v1, 0x1a

    .line 4
    .line 5
    if-lt v0, v1, :cond_0

    .line 6
    .line 7
    const/4 v0, 0x1

    .line 8
    goto :goto_0

    .line 9
    :cond_0
    const/4 v0, 0x0

    .line 10
    :goto_0
    return v0
.end method

.method public final e(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 2
    .param p1    # Landroid/content/Context;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    .line 1
    const-string v0, "path"

    .line 2
    .line 3
    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    new-instance v0, Ljava/io/File;

    .line 7
    .line 8
    invoke-direct {v0, p2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    .line 12
    .line 13
    .line 14
    move-result v0

    .line 15
    const/4 v1, 0x0

    .line 16
    if-nez v0, :cond_0

    .line 17
    .line 18
    return v1

    .line 19
    :cond_0
    if-eqz p1, :cond_2

    .line 20
    .line 21
    :try_start_0
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    .line 22
    .line 23
    .line 24
    move-result-object p1

    .line 25
    if-eqz p1, :cond_2

    .line 26
    .line 27
    const/16 v0, 0x80

    .line 28
    .line 29
    invoke-virtual {p1, p2, v0}, Landroid/content/pm/PackageManager;->getPackageArchiveInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    .line 30
    .line 31
    .line 32
    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 33
    if-nez p1, :cond_1

    .line 34
    .line 35
    goto :goto_0

    .line 36
    :catch_0
    move-exception p1

    .line 37
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 38
    .line 39
    .line 40
    const/4 p1, 0x0

    .line 41
    :cond_1
    if-eqz p1, :cond_2

    .line 42
    .line 43
    iget-object p1, p1, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    .line 44
    .line 45
    if-eqz p1, :cond_2

    .line 46
    .line 47
    iget-object p1, p1, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    .line 48
    .line 49
    if-eqz p1, :cond_2

    .line 50
    .line 51
    const-string p2, "useNativeLib"

    .line 52
    .line 53
    invoke-virtual {p1, p2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    .line 54
    .line 55
    .line 56
    move-result v1

    .line 57
    :cond_2
    :goto_0
    return v1
.end method

.method public final f(Ljava/lang/String;Ljava/lang/String;Landroid/app/Application;)Ljava/lang/Object;
    .locals 27
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .param p3    # Landroid/app/Application;
        .annotation build Lorg/jetbrains/annotations/Nullable;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/Nullable;
    .end annotation

    .line 1
    move-object/from16 v1, p0

    .line 2
    .line 3
    move-object/from16 v2, p1

    .line 4
    .line 5
    move-object/from16 v3, p3

    .line 6
    .line 7
    const-string v0, "targetVersion"

    .line 8
    .line 9
    const-string v4, "load mod"

    .line 10
    .line 11
    const-string v5, "packageName"

    .line 12
    .line 13
    invoke-static {v2, v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 14
    .line 15
    .line 16
    invoke-virtual/range {p0 .. p0}, Lcom/join/mgps/va/overmind/b;->d()Z

    .line 17
    .line 18
    .line 19
    move-result v5

    .line 20
    const/4 v6, 0x0

    .line 21
    if-nez v5, :cond_0

    .line 22
    .line 23
    return-object v6

    .line 24
    :cond_0
    :try_start_0
    sget-object v5, Lcom/join/mgps/va/overmind/VApp;->Companion:Lcom/join/mgps/va/overmind/VApp$a;

    .line 25
    .line 26
    invoke-virtual {v5}, Lcom/join/mgps/va/overmind/VApp$a;->a()Landroid/content/Context;

    .line 27
    .line 28
    .line 29
    move-result-object v5

    .line 30
    invoke-static {v5}, Lcom/join/mgps/mod/utils/PluginConfig;->getLastLaunchPkg(Landroid/content/Context;)Ljava/lang/String;

    .line 31
    .line 32
    .line 33
    move-result-object v5

    .line 34
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 35
    .line 36
    .line 37
    move-result v7

    .line 38
    if-nez v7, :cond_1

    .line 39
    .line 40
    invoke-static {v5, v2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 41
    .line 42
    .line 43
    move-result v7

    .line 44
    if-nez v7, :cond_1

    .line 45
    .line 46
    return-object v6

    .line 47
    :cond_1
    invoke-static {}, Lcom/xinzhu/overmind/Overmind;->getContext()Landroid/content/Context;

    .line 48
    .line 49
    .line 50
    move-result-object v7

    .line 51
    new-instance v8, Landroid/content/Intent;

    .line 52
    .line 53
    const-string v9, "com.join.android.app.mgsim.wufun.loadMod"

    .line 54
    .line 55
    invoke-direct {v8, v9}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 56
    .line 57
    .line 58
    invoke-virtual {v7, v8}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 59
    .line 60
    .line 61
    invoke-virtual/range {p0 .. p0}, Lcom/join/mgps/va/overmind/b;->b()Z

    .line 62
    .line 63
    .line 64
    move-result v7

    .line 65
    const/4 v8, 0x1

    .line 66
    const/4 v9, 0x0

    .line 67
    if-eqz v7, :cond_2

    .line 68
    .line 69
    invoke-virtual/range {p0 .. p1}, Lcom/join/mgps/va/overmind/b;->c(Ljava/lang/String;)Z

    .line 70
    .line 71
    .line 72
    move-result v7

    .line 73
    if-eqz v7, :cond_2

    .line 74
    .line 75
    const/4 v7, 0x1

    .line 76
    goto :goto_0

    .line 77
    :cond_2
    const/4 v7, 0x0

    .line 78
    :goto_0
    const/4 v10, 0x2

    .line 79
    new-array v11, v10, [Ljava/lang/String;

    .line 80
    .line 81
    aput-object v4, v11, v9

    .line 82
    .line 83
    new-instance v12, Ljava/lang/StringBuilder;

    .line 84
    .line 85
    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    .line 86
    .line 87
    .line 88
    const-string v13, "packageName="

    .line 89
    .line 90
    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 91
    .line 92
    .line 93
    invoke-virtual {v12, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 94
    .line 95
    .line 96
    const-string v13, ", lastLaunchPackage="

    .line 97
    .line 98
    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 99
    .line 100
    .line 101
    invoke-virtual {v12, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 102
    .line 103
    .line 104
    const/16 v5, 0x20

    .line 105
    .line 106
    invoke-virtual {v12, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 107
    .line 108
    .line 109
    invoke-virtual {v12, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 110
    .line 111
    .line 112
    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 113
    .line 114
    .line 115
    move-result-object v12

    .line 116
    aput-object v12, v11, v8

    .line 117
    .line 118
    invoke-static {v11}, Lcom/join/mgps/Util/h1;->e([Ljava/lang/String;)V

    .line 119
    .line 120
    .line 121
    invoke-static {}, Lcom/xinzhu/overmind/Overmind;->is64Bit()Z

    .line 122
    .line 123
    .line 124
    move-result v11

    .line 125
    if-eqz v11, :cond_3

    .line 126
    .line 127
    if-nez v7, :cond_3

    .line 128
    .line 129
    new-instance v11, Ljava/lang/StringBuilder;

    .line 130
    .line 131
    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    .line 132
    .line 133
    .line 134
    sget-object v12, Lcom/join/mgps/va/overmind/k;->a:Lcom/join/mgps/va/overmind/k;

    .line 135
    .line 136
    invoke-virtual {v12, v2}, Lcom/join/mgps/va/overmind/k;->m(Ljava/lang/String;)Ljava/lang/String;

    .line 137
    .line 138
    .line 139
    move-result-object v12

    .line 140
    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 141
    .line 142
    .line 143
    const-string v12, "/arm64"

    .line 144
    .line 145
    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 146
    .line 147
    .line 148
    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 149
    .line 150
    .line 151
    move-result-object v11

    .line 152
    goto :goto_1

    .line 153
    :cond_3
    new-instance v11, Ljava/lang/StringBuilder;

    .line 154
    .line 155
    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    .line 156
    .line 157
    .line 158
    sget-object v12, Lcom/join/mgps/va/overmind/k;->a:Lcom/join/mgps/va/overmind/k;

    .line 159
    .line 160
    invoke-virtual {v12, v2}, Lcom/join/mgps/va/overmind/k;->n(Ljava/lang/String;)Ljava/lang/String;

    .line 161
    .line 162
    .line 163
    move-result-object v12

    .line 164
    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 165
    .line 166
    .line 167
    const-string v12, "/arm"

    .line 168
    .line 169
    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 170
    .line 171
    .line 172
    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 173
    .line 174
    .line 175
    move-result-object v11

    .line 176
    :goto_1
    if-eqz v7, :cond_4

    .line 177
    .line 178
    sget-object v12, Lcom/join/mgps/va/overmind/k;->a:Lcom/join/mgps/va/overmind/k;

    .line 179
    .line 180
    invoke-virtual {v12, v2, v9}, Lcom/join/mgps/va/overmind/k;->R(Ljava/lang/String;I)Ljava/lang/String;

    .line 181
    .line 182
    .line 183
    move-result-object v13

    .line 184
    invoke-virtual {v12, v2, v9}, Lcom/join/mgps/va/overmind/k;->d0(Ljava/lang/String;I)Ljava/lang/String;

    .line 185
    .line 186
    .line 187
    move-result-object v12

    .line 188
    goto :goto_2

    .line 189
    :cond_4
    sget-object v12, Lcom/join/mgps/va/overmind/k;->a:Lcom/join/mgps/va/overmind/k;

    .line 190
    .line 191
    invoke-virtual {v12, v2, v9}, Lcom/join/mgps/va/overmind/k;->O(Ljava/lang/String;I)Ljava/lang/String;

    .line 192
    .line 193
    .line 194
    move-result-object v13

    .line 195
    invoke-virtual {v12, v2, v9}, Lcom/join/mgps/va/overmind/k;->a0(Ljava/lang/String;I)Ljava/lang/String;

    .line 196
    .line 197
    .line 198
    move-result-object v12

    .line 199
    :goto_2
    const-string v14, ""

    .line 200
    .line 201
    if-eqz v13, :cond_6

    .line 202
    .line 203
    invoke-interface {v13}, Ljava/lang/CharSequence;->length()I

    .line 204
    .line 205
    .line 206
    move-result v15
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_3

    .line 207
    if-nez v15, :cond_5

    .line 208
    .line 209
    goto :goto_3

    .line 210
    :cond_5
    const/4 v15, 0x0

    .line 211
    goto :goto_4

    .line 212
    :cond_6
    :goto_3
    const/4 v15, 0x1

    .line 213
    :goto_4
    const-string v16, "0"

    .line 214
    .line 215
    if-nez v15, :cond_a

    .line 216
    .line 217
    :try_start_1
    new-instance v15, Ljava/io/File;

    .line 218
    .line 219
    invoke-direct {v15, v13}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 220
    .line 221
    .line 222
    invoke-virtual {v15}, Ljava/io/File;->exists()Z

    .line 223
    .line 224
    .line 225
    move-result v15

    .line 226
    if-eqz v15, :cond_a

    .line 227
    .line 228
    invoke-static {v13}, Lcom/join/mgps/mod/utils/PluginConfig;->getModPath(Ljava/lang/String;)Ljava/lang/String;

    .line 229
    .line 230
    .line 231
    move-result-object v14

    .line 232
    iput-object v14, v1, Lcom/join/mgps/va/overmind/b;->a:Ljava/lang/String;

    .line 233
    .line 234
    invoke-static {v13}, Lcom/join/mgps/mod/utils/PluginConfig;->getSoVersion(Ljava/lang/String;)Ljava/lang/String;

    .line 235
    .line 236
    .line 237
    move-result-object v14

    .line 238
    iput-object v14, v1, Lcom/join/mgps/va/overmind/b;->b:Ljava/lang/String;

    .line 239
    .line 240
    invoke-static {v13}, Lcom/join/mgps/mod/utils/PluginConfig;->getSoCode(Ljava/lang/String;)I

    .line 241
    .line 242
    .line 243
    move-result v14

    .line 244
    iput v14, v1, Lcom/join/mgps/va/overmind/b;->c:I

    .line 245
    .line 246
    invoke-static {v13}, Lcom/join/mgps/mod/utils/PluginConfig;->getModGameId(Ljava/lang/String;)Ljava/lang/String;

    .line 247
    .line 248
    .line 249
    move-result-object v14

    .line 250
    invoke-static {v13}, Lcom/join/mgps/mod/utils/PluginConfig;->getModMenuSwitch(Ljava/lang/String;)Lcom/join/mgps/Util/y$c;

    .line 251
    .line 252
    .line 253
    move-result-object v15

    .line 254
    if-eqz v15, :cond_7

    .line 255
    .line 256
    const-string v5, "goldFingerSwitch"

    .line 257
    .line 258
    invoke-virtual {v15, v5}, Lcom/join/mgps/Util/y$c;->c(Ljava/lang/String;)Ljava/lang/String;

    .line 259
    .line 260
    .line 261
    move-result-object v5

    .line 262
    const-string v8, "archiveCloudSwitch"

    .line 263
    .line 264
    invoke-virtual {v15, v8}, Lcom/join/mgps/Util/y$c;->c(Ljava/lang/String;)Ljava/lang/String;

    .line 265
    .line 266
    .line 267
    move-result-object v8

    .line 268
    const-string v6, "introductionSwitch"

    .line 269
    .line 270
    invoke-virtual {v15, v6}, Lcom/join/mgps/Util/y$c;->c(Ljava/lang/String;)Ljava/lang/String;

    .line 271
    .line 272
    .line 273
    move-result-object v6

    .line 274
    goto :goto_5

    .line 275
    :cond_7
    move-object/from16 v5, v16

    .line 276
    .line 277
    move-object v6, v5

    .line 278
    move-object v8, v6

    .line 279
    :goto_5
    invoke-static {v13}, Lcom/join/mgps/mod/utils/PluginConfig;->getModConfig(Ljava/lang/String;)Lcom/join/mgps/Util/y$c;

    .line 280
    .line 281
    .line 282
    move-result-object v13

    .line 283
    if-eqz v13, :cond_9

    .line 284
    .line 285
    const-string v15, "channelNum"

    .line 286
    .line 287
    invoke-virtual {v13, v15}, Lcom/join/mgps/Util/y$c;->c(Ljava/lang/String;)Ljava/lang/String;

    .line 288
    .line 289
    .line 290
    move-result-object v16

    .line 291
    invoke-virtual {v13, v0}, Lcom/join/mgps/Util/y$c;->c(Ljava/lang/String;)Ljava/lang/String;

    .line 292
    .line 293
    .line 294
    move-result-object v15

    .line 295
    invoke-static {v15}, Lcom/join/mgps/Util/t2;->i(Ljava/lang/String;)Z

    .line 296
    .line 297
    .line 298
    move-result v15
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 299
    if-eqz v15, :cond_8

    .line 300
    .line 301
    :try_start_2
    invoke-virtual {v13, v0}, Lcom/join/mgps/Util/y$c;->c(Ljava/lang/String;)Ljava/lang/String;

    .line 302
    .line 303
    .line 304
    move-result-object v0

    .line 305
    const-string v15, "get(...)"

    .line 306
    .line 307
    invoke-static {v0, v15}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 308
    .line 309
    .line 310
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 311
    .line 312
    .line 313
    move-result v0
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .line 314
    goto :goto_6

    .line 315
    :catch_0
    move-exception v0

    .line 316
    :try_start_3
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 317
    .line 318
    .line 319
    :cond_8
    const/4 v0, 0x0

    .line 320
    :goto_6
    const-string v15, "androidId"

    .line 321
    .line 322
    invoke-virtual {v13, v15}, Lcom/join/mgps/Util/y$c;->c(Ljava/lang/String;)Ljava/lang/String;

    .line 323
    .line 324
    .line 325
    move-result-object v15

    .line 326
    const-string v9, "platform"

    .line 327
    .line 328
    invoke-virtual {v13, v9}, Lcom/join/mgps/Util/y$c;->c(Ljava/lang/String;)Ljava/lang/String;

    .line 329
    .line 330
    .line 331
    move-result-object v9

    .line 332
    const-string v10, "package_type"

    .line 333
    .line 334
    invoke-virtual {v13, v10}, Lcom/join/mgps/Util/y$c;->c(Ljava/lang/String;)Ljava/lang/String;

    .line 335
    .line 336
    .line 337
    move-result-object v10

    .line 338
    move/from16 v17, v0

    .line 339
    .line 340
    const-string v0, "typeId"

    .line 341
    .line 342
    invoke-virtual {v13, v0}, Lcom/join/mgps/Util/y$c;->c(Ljava/lang/String;)Ljava/lang/String;

    .line 343
    .line 344
    .line 345
    move-result-object v0

    .line 346
    move-object/from16 v18, v0

    .line 347
    .line 348
    move-object v13, v10

    .line 349
    move/from16 v0, v17

    .line 350
    .line 351
    move-object v10, v9

    .line 352
    move-object/from16 v9, v16

    .line 353
    .line 354
    goto :goto_8

    .line 355
    :cond_9
    move-object/from16 v9, v16

    .line 356
    .line 357
    goto :goto_7

    .line 358
    :catch_1
    move-exception v0

    .line 359
    const/4 v4, 0x0

    .line 360
    goto/16 :goto_c

    .line 361
    .line 362
    :cond_a
    move-object/from16 v5, v16

    .line 363
    .line 364
    move-object v6, v5

    .line 365
    move-object v8, v6

    .line 366
    move-object v9, v8

    .line 367
    :goto_7
    move-object v10, v9

    .line 368
    move-object v13, v10

    .line 369
    move-object v15, v13

    .line 370
    move-object/from16 v18, v15

    .line 371
    .line 372
    const/4 v0, 0x0

    .line 373
    :goto_8
    if-eqz v7, :cond_d

    .line 374
    .line 375
    iget-object v7, v1, Lcom/join/mgps/va/overmind/b;->a:Ljava/lang/String;

    .line 376
    .line 377
    if-eqz v7, :cond_b

    .line 378
    .line 379
    move-object/from16 v16, v13

    .line 380
    .line 381
    invoke-static {}, Lcom/xinzhu/overmind/Overmind;->getPluginPkg()Ljava/lang/String;

    .line 382
    .line 383
    .line 384
    move-result-object v13

    .line 385
    move-object/from16 v17, v10

    .line 386
    .line 387
    const-string v10, "getPluginPkg(...)"

    .line 388
    .line 389
    invoke-static {v13, v10}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 390
    .line 391
    .line 392
    move-object/from16 v20, v9

    .line 393
    .line 394
    move-object/from16 v19, v15

    .line 395
    .line 396
    const/4 v9, 0x0

    .line 397
    const/4 v10, 0x2

    .line 398
    const/4 v15, 0x0

    .line 399
    invoke-static {v7, v13, v9, v10, v15}, Lkotlin/text/StringsKt;->contains$default(Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZILjava/lang/Object;)Z

    .line 400
    .line 401
    .line 402
    move-result v7

    .line 403
    if-nez v7, :cond_c

    .line 404
    .line 405
    const/4 v7, 0x1

    .line 406
    goto :goto_9

    .line 407
    :cond_b
    move-object/from16 v20, v9

    .line 408
    .line 409
    move-object/from16 v17, v10

    .line 410
    .line 411
    move-object/from16 v16, v13

    .line 412
    .line 413
    move-object/from16 v19, v15

    .line 414
    .line 415
    :cond_c
    const/4 v7, 0x0

    .line 416
    :goto_9
    if-eqz v7, :cond_e

    .line 417
    .line 418
    iget-object v7, v1, Lcom/join/mgps/va/overmind/b;->a:Ljava/lang/String;

    .line 419
    .line 420
    invoke-static {v7}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 421
    .line 422
    .line 423
    move-result-object v7

    .line 424
    invoke-virtual {v1, v7}, Lcom/join/mgps/va/overmind/b;->g(Ljava/lang/String;)Ljava/lang/String;

    .line 425
    .line 426
    .line 427
    move-result-object v7

    .line 428
    iput-object v7, v1, Lcom/join/mgps/va/overmind/b;->a:Ljava/lang/String;

    .line 429
    .line 430
    goto :goto_a

    .line 431
    :cond_d
    move-object/from16 v20, v9

    .line 432
    .line 433
    move-object/from16 v17, v10

    .line 434
    .line 435
    move-object/from16 v16, v13

    .line 436
    .line 437
    move-object/from16 v19, v15

    .line 438
    .line 439
    :cond_e
    :goto_a
    const/4 v7, 0x2

    .line 440
    new-array v9, v7, [Ljava/lang/String;

    .line 441
    .line 442
    const/4 v7, 0x0

    .line 443
    aput-object v4, v9, v7

    .line 444
    .line 445
    new-instance v7, Ljava/lang/StringBuilder;

    .line 446
    .line 447
    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    .line 448
    .line 449
    .line 450
    const-string v10, "modPath="

    .line 451
    .line 452
    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 453
    .line 454
    .line 455
    iget-object v10, v1, Lcom/join/mgps/va/overmind/b;->a:Ljava/lang/String;

    .line 456
    .line 457
    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 458
    .line 459
    .line 460
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 461
    .line 462
    .line 463
    move-result-object v7

    .line 464
    const/4 v10, 0x1

    .line 465
    aput-object v7, v9, v10

    .line 466
    .line 467
    invoke-static {v9}, Lcom/join/mgps/Util/h1;->e([Ljava/lang/String;)V

    .line 468
    .line 469
    .line 470
    iget-object v7, v1, Lcom/join/mgps/va/overmind/b;->a:Ljava/lang/String;

    .line 471
    .line 472
    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 473
    .line 474
    .line 475
    move-result v7

    .line 476
    if-eqz v7, :cond_f

    .line 477
    .line 478
    const/4 v7, 0x0

    .line 479
    return-object v7

    .line 480
    :cond_f
    iget-object v7, v1, Lcom/join/mgps/va/overmind/b;->a:Ljava/lang/String;

    .line 481
    .line 482
    invoke-static {v7}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 483
    .line 484
    .line 485
    move-result-object v7

    .line 486
    invoke-virtual {v1, v3, v7}, Lcom/join/mgps/va/overmind/b;->e(Landroid/content/Context;Ljava/lang/String;)Z

    .line 487
    .line 488
    .line 489
    move-result v7

    .line 490
    iput-boolean v7, v1, Lcom/join/mgps/va/overmind/b;->f:Z

    .line 491
    .line 492
    const/4 v7, 0x2

    .line 493
    new-array v7, v7, [Ljava/lang/String;

    .line 494
    .line 495
    const/4 v9, 0x0

    .line 496
    aput-object v4, v7, v9

    .line 497
    .line 498
    new-instance v4, Ljava/lang/StringBuilder;

    .line 499
    .line 500
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 501
    .line 502
    .line 503
    const-string v9, "ApkLoader "

    .line 504
    .line 505
    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 506
    .line 507
    .line 508
    iget-boolean v9, v1, Lcom/join/mgps/va/overmind/b;->f:Z

    .line 509
    .line 510
    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 511
    .line 512
    .line 513
    const/16 v9, 0x20

    .line 514
    .line 515
    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 516
    .line 517
    .line 518
    invoke-virtual {v4, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 519
    .line 520
    .line 521
    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 522
    .line 523
    .line 524
    invoke-virtual {v4, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 525
    .line 526
    .line 527
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 528
    .line 529
    .line 530
    move-result-object v4

    .line 531
    const/4 v9, 0x1

    .line 532
    aput-object v4, v7, v9

    .line 533
    .line 534
    invoke-static {v7}, Lcom/join/mgps/Util/h1;->e([Ljava/lang/String;)V

    .line 535
    .line 536
    .line 537
    new-instance v4, Lcom/join/mgps/mod/utils/b;

    .line 538
    .line 539
    iget-boolean v7, v1, Lcom/join/mgps/va/overmind/b;->f:Z

    .line 540
    .line 541
    if-eqz v7, :cond_10

    .line 542
    .line 543
    move-object v7, v11

    .line 544
    goto :goto_b

    .line 545
    :cond_10
    move-object v7, v12

    .line 546
    :goto_b
    invoke-direct {v4, v3, v7}, Lcom/join/mgps/mod/utils/b;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 547
    .line 548
    .line 549
    iput-object v4, v1, Lcom/join/mgps/va/overmind/b;->d:Lcom/join/mgps/mod/utils/b;

    .line 550
    .line 551
    invoke-static {v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 552
    .line 553
    .line 554
    invoke-virtual {v4}, Lcom/join/mgps/mod/utils/b;->j()Z

    .line 555
    .line 556
    .line 557
    move-result v4

    .line 558
    if-nez v4, :cond_12

    .line 559
    .line 560
    iget-object v4, v1, Lcom/join/mgps/va/overmind/b;->d:Lcom/join/mgps/mod/utils/b;

    .line 561
    .line 562
    invoke-static {v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 563
    .line 564
    .line 565
    iget-object v7, v1, Lcom/join/mgps/va/overmind/b;->a:Ljava/lang/String;

    .line 566
    .line 567
    invoke-virtual {v4, v7}, Lcom/join/mgps/mod/utils/b;->k(Ljava/lang/String;)V

    .line 568
    .line 569
    .line 570
    iget-object v4, v1, Lcom/join/mgps/va/overmind/b;->d:Lcom/join/mgps/mod/utils/b;

    .line 571
    .line 572
    invoke-static {v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 573
    .line 574
    .line 575
    invoke-virtual {v4}, Lcom/join/mgps/mod/utils/b;->j()Z

    .line 576
    .line 577
    .line 578
    move-result v4
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    .line 579
    if-nez v4, :cond_11

    .line 580
    .line 581
    const/4 v4, 0x0

    .line 582
    return-object v4

    .line 583
    :cond_11
    const/4 v4, 0x0

    .line 584
    :try_start_4
    new-instance v7, Lcom/join/mgps/mod/bean/ModMeta;

    .line 585
    .line 586
    invoke-direct {v7}, Lcom/join/mgps/mod/bean/ModMeta;-><init>()V

    .line 587
    .line 588
    .line 589
    sget-object v9, Lcom/join/mgps/va/overmind/VApp;->Companion:Lcom/join/mgps/va/overmind/VApp$a;

    .line 590
    .line 591
    invoke-virtual {v9}, Lcom/join/mgps/va/overmind/VApp$a;->a()Landroid/content/Context;

    .line 592
    .line 593
    .line 594
    move-result-object v9

    .line 595
    invoke-virtual {v9}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    .line 596
    .line 597
    .line 598
    move-result-object v9

    .line 599
    const-string v10, "null cannot be cast to non-null type android.app.Application"

    .line 600
    .line 601
    invoke-static {v9, v10}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 602
    .line 603
    .line 604
    check-cast v9, Landroid/app/Application;

    .line 605
    .line 606
    move-object/from16 v10, p2

    .line 607
    .line 608
    invoke-virtual {v7, v9, v2, v10, v3}, Lcom/join/mgps/mod/bean/ModMeta;->bind(Landroid/app/Application;Ljava/lang/String;Ljava/lang/String;Landroid/app/Application;)V

    .line 609
    .line 610
    .line 611
    iget-object v2, v1, Lcom/join/mgps/va/overmind/b;->a:Ljava/lang/String;

    .line 612
    .line 613
    iget-object v3, v1, Lcom/join/mgps/va/overmind/b;->d:Lcom/join/mgps/mod/utils/b;

    .line 614
    .line 615
    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 616
    .line 617
    .line 618
    invoke-virtual {v3}, Lcom/join/mgps/mod/utils/b;->h()Landroid/content/pm/PackageInfo;

    .line 619
    .line 620
    .line 621
    move-result-object v23

    .line 622
    iget-object v3, v1, Lcom/join/mgps/va/overmind/b;->d:Lcom/join/mgps/mod/utils/b;

    .line 623
    .line 624
    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 625
    .line 626
    .line 627
    invoke-virtual {v3}, Lcom/join/mgps/mod/utils/b;->e()Ldalvik/system/DexClassLoader;

    .line 628
    .line 629
    .line 630
    move-result-object v24

    .line 631
    iget-object v3, v1, Lcom/join/mgps/va/overmind/b;->d:Lcom/join/mgps/mod/utils/b;

    .line 632
    .line 633
    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 634
    .line 635
    .line 636
    invoke-virtual {v3}, Lcom/join/mgps/mod/utils/b;->getResources()Landroid/content/res/Resources;

    .line 637
    .line 638
    .line 639
    move-result-object v25

    .line 640
    iget-object v3, v1, Lcom/join/mgps/va/overmind/b;->d:Lcom/join/mgps/mod/utils/b;

    .line 641
    .line 642
    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 643
    .line 644
    .line 645
    invoke-virtual {v3}, Lcom/join/mgps/mod/utils/b;->f()Ljava/lang/String;

    .line 646
    .line 647
    .line 648
    move-result-object v26

    .line 649
    move-object/from16 v21, v7

    .line 650
    .line 651
    move-object/from16 v22, v2

    .line 652
    .line 653
    invoke-virtual/range {v21 .. v26}, Lcom/join/mgps/mod/bean/ModMeta;->setModInfo(Ljava/lang/String;Landroid/content/pm/PackageInfo;Ldalvik/system/DexClassLoader;Landroid/content/res/Resources;Ljava/lang/String;)V

    .line 654
    .line 655
    .line 656
    iget-object v2, v1, Lcom/join/mgps/va/overmind/b;->d:Lcom/join/mgps/mod/utils/b;

    .line 657
    .line 658
    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 659
    .line 660
    .line 661
    invoke-virtual {v2}, Lcom/join/mgps/mod/utils/b;->g()Ljava/lang/String;

    .line 662
    .line 663
    .line 664
    move-result-object v2

    .line 665
    invoke-virtual {v7, v2}, Lcom/join/mgps/mod/bean/ModMeta;->setEntryDataClass(Ljava/lang/String;)V

    .line 666
    .line 667
    .line 668
    invoke-virtual {v7, v14}, Lcom/join/mgps/mod/bean/ModMeta;->setGameId(Ljava/lang/String;)V

    .line 669
    .line 670
    .line 671
    iget-boolean v2, v1, Lcom/join/mgps/va/overmind/b;->f:Z

    .line 672
    .line 673
    invoke-virtual {v7, v2}, Lcom/join/mgps/mod/bean/ModMeta;->setUseNativeLibDir(Z)V

    .line 674
    .line 675
    .line 676
    invoke-virtual {v7, v11}, Lcom/join/mgps/mod/bean/ModMeta;->setNativeLibDir(Ljava/lang/String;)V

    .line 677
    .line 678
    .line 679
    invoke-virtual {v7, v12}, Lcom/join/mgps/mod/bean/ModMeta;->setPluginLibDir(Ljava/lang/String;)V

    .line 680
    .line 681
    .line 682
    iget-object v2, v1, Lcom/join/mgps/va/overmind/b;->b:Ljava/lang/String;

    .line 683
    .line 684
    invoke-virtual {v7, v2}, Lcom/join/mgps/mod/bean/ModMeta;->setModVersion(Ljava/lang/String;)V

    .line 685
    .line 686
    .line 687
    iget v2, v1, Lcom/join/mgps/va/overmind/b;->c:I

    .line 688
    .line 689
    invoke-virtual {v7, v2}, Lcom/join/mgps/mod/bean/ModMeta;->setModCode(I)V

    .line 690
    .line 691
    .line 692
    invoke-static {}, Lcom/xinzhu/overmind/Overmind;->getMainPkg()Ljava/lang/String;

    .line 693
    .line 694
    .line 695
    move-result-object v2

    .line 696
    invoke-virtual {v7, v2}, Lcom/join/mgps/mod/bean/ModMeta;->setHostPackage(Ljava/lang/String;)V

    .line 697
    .line 698
    .line 699
    iget v2, v1, Lcom/join/mgps/va/overmind/b;->e:I

    .line 700
    .line 701
    invoke-virtual {v7, v2}, Lcom/join/mgps/mod/bean/ModMeta;->setUserId(I)V

    .line 702
    .line 703
    .line 704
    invoke-virtual {v7, v5}, Lcom/join/mgps/mod/bean/ModMeta;->setGoldFingerSwitch(Ljava/lang/String;)V

    .line 705
    .line 706
    .line 707
    invoke-virtual {v7, v8}, Lcom/join/mgps/mod/bean/ModMeta;->setArchiveCloudSwitch(Ljava/lang/String;)V

    .line 708
    .line 709
    .line 710
    invoke-virtual {v7, v6}, Lcom/join/mgps/mod/bean/ModMeta;->setIntroductionSwitch(Ljava/lang/String;)V

    .line 711
    .line 712
    .line 713
    move-object/from16 v2, v20

    .line 714
    .line 715
    invoke-virtual {v7, v2}, Lcom/join/mgps/mod/bean/ModMeta;->setChannelNum(Ljava/lang/String;)V

    .line 716
    .line 717
    .line 718
    invoke-virtual {v7, v0}, Lcom/join/mgps/mod/bean/ModMeta;->setTarget_version(I)V

    .line 719
    .line 720
    .line 721
    move-object/from16 v15, v19

    .line 722
    .line 723
    invoke-virtual {v7, v15}, Lcom/join/mgps/mod/bean/ModMeta;->setAndroidId(Ljava/lang/String;)V

    .line 724
    .line 725
    .line 726
    move-object/from16 v9, v17

    .line 727
    .line 728
    invoke-virtual {v7, v9}, Lcom/join/mgps/mod/bean/ModMeta;->setPlatform(Ljava/lang/String;)V

    .line 729
    .line 730
    .line 731
    move-object/from16 v10, v16

    .line 732
    .line 733
    invoke-virtual {v7, v10}, Lcom/join/mgps/mod/bean/ModMeta;->setPackage_type(Ljava/lang/String;)V

    .line 734
    .line 735
    .line 736
    move-object/from16 v0, v18

    .line 737
    .line 738
    invoke-virtual {v7, v0}, Lcom/join/mgps/mod/bean/ModMeta;->setTypeId(Ljava/lang/String;)V

    .line 739
    .line 740
    .line 741
    iget-object v0, v1, Lcom/join/mgps/va/overmind/b;->d:Lcom/join/mgps/mod/utils/b;

    .line 742
    .line 743
    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 744
    .line 745
    .line 746
    invoke-virtual {v0, v7}, Lcom/join/mgps/mod/utils/b;->n(Lcom/join/mgps/mod/bean/ModMeta;)Ljava/lang/Object;

    .line 747
    .line 748
    .line 749
    move-result-object v6
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_2

    .line 750
    goto :goto_e

    .line 751
    :catch_2
    move-exception v0

    .line 752
    goto :goto_c

    .line 753
    :cond_12
    const/4 v4, 0x0

    .line 754
    goto :goto_d

    .line 755
    :catch_3
    move-exception v0

    .line 756
    move-object v4, v6

    .line 757
    :goto_c
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 758
    .line 759
    .line 760
    :goto_d
    move-object v6, v4

    .line 761
    :goto_e
    return-object v6
.end method

.method public final g(Ljava/lang/String;)Ljava/lang/String;
    .locals 14
    .param p1    # Ljava/lang/String;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation build Lorg/jetbrains/annotations/NotNull;
    .end annotation

    .line 1
    const-string v0, "path"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    :try_start_0
    const-string v0, "com.join.android.app.mgsim.wufun"

    .line 7
    .line 8
    const/4 v3, 0x0

    .line 9
    const/4 v4, 0x0

    .line 10
    const/4 v5, 0x6

    .line 11
    const/4 v6, 0x0

    .line 12
    move-object v1, p1

    .line 13
    move-object v2, v0

    .line 14
    invoke-static/range {v1 .. v6}, Lkotlin/text/StringsKt;->indexOf$default(Ljava/lang/CharSequence;Ljava/lang/String;IZILjava/lang/Object;)I

    .line 15
    .line 16
    .line 17
    move-result v1

    .line 18
    const-string v8, "/"

    .line 19
    .line 20
    const/4 v10, 0x0

    .line 21
    const/4 v11, 0x4

    .line 22
    const/4 v12, 0x0

    .line 23
    move-object v7, p1

    .line 24
    move v9, v1

    .line 25
    invoke-static/range {v7 .. v12}, Lkotlin/text/StringsKt;->indexOf$default(Ljava/lang/CharSequence;Ljava/lang/String;IZILjava/lang/Object;)I

    .line 26
    .line 27
    .line 28
    move-result v2

    .line 29
    const/4 v3, -0x1

    .line 30
    if-eq v1, v3, :cond_0

    .line 31
    .line 32
    if-ge v1, v2, :cond_0

    .line 33
    .line 34
    invoke-virtual {p1, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 35
    .line 36
    .line 37
    move-result-object v0

    .line 38
    const-string v1, "substring(...)"

    .line 39
    .line 40
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 41
    .line 42
    .line 43
    :cond_0
    move-object v2, v0

    .line 44
    const-string v3, "com.join.android.app.mgsim.wufun.addon"

    .line 45
    .line 46
    const/4 v4, 0x0

    .line 47
    const/4 v5, 0x4

    .line 48
    const/4 v6, 0x0

    .line 49
    move-object v1, p1

    .line 50
    invoke-static/range {v1 .. v6}, Lkotlin/text/StringsKt;->replace$default(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Ljava/lang/String;

    .line 51
    .line 52
    .line 53
    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 54
    const/4 v1, 0x1

    .line 55
    :try_start_1
    new-array v1, v1, [Ljava/lang/String;

    .line 56
    .line 57
    new-instance v2, Ljava/lang/StringBuilder;

    .line 58
    .line 59
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 60
    .line 61
    .line 62
    const-string v3, "replace "

    .line 63
    .line 64
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 65
    .line 66
    .line 67
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 68
    .line 69
    .line 70
    const-string p1, " \u2192 "

    .line 71
    .line 72
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 73
    .line 74
    .line 75
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 76
    .line 77
    .line 78
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 79
    .line 80
    .line 81
    move-result-object p1

    .line 82
    const/4 v2, 0x0

    .line 83
    aput-object p1, v1, v2

    .line 84
    .line 85
    invoke-static {v1}, Lcom/join/mgps/Util/h1;->e([Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 86
    .line 87
    .line 88
    goto :goto_1

    .line 89
    :catch_0
    move-exception p1

    .line 90
    move-object v13, v0

    .line 91
    move-object v0, p1

    .line 92
    move-object p1, v13

    .line 93
    goto :goto_0

    .line 94
    :catch_1
    move-exception v0

    .line 95
    :goto_0
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 96
    .line 97
    .line 98
    move-object v0, p1

    .line 99
    :goto_1
    return-object v0
.end method

.method public final h(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/join/mgps/va/overmind/b;->f:Z

    .line 2
    .line 3
    return-void
.end method
