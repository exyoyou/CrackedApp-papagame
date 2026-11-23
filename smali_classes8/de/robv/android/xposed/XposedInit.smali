.class public final Lde/robv/android/xposed/XposedInit;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final INSTANT_RUN_CLASS:Ljava/lang/String; = "com.android.tools.fd.runtime.BootstrapApplication"

.field private static final TAG:Ljava/lang/String; = "SandXposed"

.field private static volatile bootstrapHooked:Ljava/util/concurrent/atomic/AtomicBoolean; = null

.field private static disableResources:Z = true

.field private static volatile modulesLoaded:Ljava/util/concurrent/atomic/AtomicBoolean;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    .line 5
    .line 6
    .line 7
    sput-object v0, Lde/robv/android/xposed/XposedInit;->bootstrapHooked:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 8
    .line 9
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 10
    .line 11
    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    .line 12
    .line 13
    .line 14
    sput-object v0, Lde/robv/android/xposed/XposedInit;->modulesLoaded:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 15
    .line 16
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

.method static hookResources()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    return-void
.end method

.method public static loadModule(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/ClassLoader;)V
    .locals 5

    .line 1
    new-instance v0, Ljava/io/File;

    .line 2
    .line 3
    invoke-direct {v0, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    .line 7
    .line 8
    .line 9
    move-result v0

    .line 10
    if-nez v0, :cond_0

    .line 11
    .line 12
    return-void

    .line 13
    :cond_0
    :try_start_0
    new-instance v0, Ldalvik/system/DexFile;

    .line 14
    .line 15
    invoke-direct {v0, p0}, Ldalvik/system/DexFile;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_3

    .line 16
    .line 17
    .line 18
    const-string v1, "com.android.tools.fd.runtime.BootstrapApplication"

    .line 19
    .line 20
    invoke-virtual {v0, v1, p3}, Ldalvik/system/DexFile;->loadClass(Ljava/lang/String;Ljava/lang/ClassLoader;)Ljava/lang/Class;

    .line 21
    .line 22
    .line 23
    move-result-object v1

    .line 24
    if-eqz v1, :cond_1

    .line 25
    .line 26
    invoke-static {v0}, Lde/robv/android/xposed/XposedHelpers;->closeSilently(Ldalvik/system/DexFile;)V

    .line 27
    .line 28
    .line 29
    return-void

    .line 30
    :cond_1
    const-class v1, Lde/robv/android/xposed/XposedBridge;

    .line 31
    .line 32
    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    .line 33
    .line 34
    .line 35
    move-result-object v1

    .line 36
    invoke-virtual {v0, v1, p3}, Ldalvik/system/DexFile;->loadClass(Ljava/lang/String;Ljava/lang/ClassLoader;)Ljava/lang/Class;

    .line 37
    .line 38
    .line 39
    move-result-object v1

    .line 40
    if-eqz v1, :cond_2

    .line 41
    .line 42
    invoke-static {v0}, Lde/robv/android/xposed/XposedHelpers;->closeSilently(Ldalvik/system/DexFile;)V

    .line 43
    .line 44
    .line 45
    return-void

    .line 46
    :cond_2
    invoke-static {v0}, Lde/robv/android/xposed/XposedHelpers;->closeSilently(Ldalvik/system/DexFile;)V

    .line 47
    .line 48
    .line 49
    const/4 v0, 0x0

    .line 50
    :try_start_1
    new-instance v1, Ljava/util/zip/ZipFile;

    .line 51
    .line 52
    invoke-direct {v1, p0}, Ljava/util/zip/ZipFile;-><init>(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_2

    .line 53
    .line 54
    .line 55
    :try_start_2
    const-string v0, "assets/xposed_init"

    .line 56
    .line 57
    invoke-virtual {v1, v0}, Ljava/util/zip/ZipFile;->getEntry(Ljava/lang/String;)Ljava/util/zip/ZipEntry;

    .line 58
    .line 59
    .line 60
    move-result-object v0

    .line 61
    if-nez v0, :cond_3

    .line 62
    .line 63
    invoke-static {v1}, Lde/robv/android/xposed/XposedHelpers;->closeSilently(Ljava/util/zip/ZipFile;)V

    .line 64
    .line 65
    .line 66
    return-void

    .line 67
    :cond_3
    invoke-virtual {v1, v0}, Ljava/util/zip/ZipFile;->getInputStream(Ljava/util/zip/ZipEntry;)Ljava/io/InputStream;

    .line 68
    .line 69
    .line 70
    move-result-object v0
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    .line 71
    new-instance v2, Ldalvik/system/DexClassLoader;

    .line 72
    .line 73
    invoke-direct {v2, p0, p1, p2, p3}, Ldalvik/system/DexClassLoader;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/ClassLoader;)V

    .line 74
    .line 75
    .line 76
    new-instance p1, Ljava/io/BufferedReader;

    .line 77
    .line 78
    new-instance p2, Ljava/io/InputStreamReader;

    .line 79
    .line 80
    invoke-direct {p2, v0}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    .line 81
    .line 82
    .line 83
    invoke-direct {p1, p2}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 84
    .line 85
    .line 86
    :cond_4
    :goto_0
    :try_start_3
    invoke-virtual {p1}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    .line 87
    .line 88
    .line 89
    move-result-object p2

    .line 90
    if-eqz p2, :cond_b

    .line 91
    .line 92
    invoke-virtual {p2}, Ljava/lang/String;->trim()Ljava/lang/String;

    .line 93
    .line 94
    .line 95
    move-result-object p2

    .line 96
    invoke-virtual {p2}, Ljava/lang/String;->isEmpty()Z

    .line 97
    .line 98
    .line 99
    move-result p3

    .line 100
    if-nez p3, :cond_4

    .line 101
    .line 102
    const-string p3, "#"

    .line 103
    .line 104
    invoke-virtual {p2, p3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 105
    .line 106
    .line 107
    move-result p3
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 108
    if-eqz p3, :cond_5

    .line 109
    .line 110
    goto :goto_0

    .line 111
    :cond_5
    :try_start_4
    new-instance p3, Ljava/lang/StringBuilder;

    .line 112
    .line 113
    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    .line 114
    .line 115
    .line 116
    const-string v3, "  Loading class "

    .line 117
    .line 118
    invoke-virtual {p3, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 119
    .line 120
    .line 121
    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 122
    .line 123
    .line 124
    invoke-virtual {v2, p2}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    .line 125
    .line 126
    .line 127
    move-result-object p3

    .line 128
    const-class v3, Lde/robv/android/xposed/IXposedMod;

    .line 129
    .line 130
    invoke-virtual {v3, p3}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    .line 131
    .line 132
    .line 133
    move-result v3

    .line 134
    if-nez v3, :cond_6

    .line 135
    .line 136
    goto :goto_0

    .line 137
    :cond_6
    sget-boolean v3, Lde/robv/android/xposed/XposedInit;->disableResources:Z

    .line 138
    .line 139
    if-eqz v3, :cond_7

    .line 140
    .line 141
    const-class v3, Lde/robv/android/xposed/IXposedHookInitPackageResources;

    .line 142
    .line 143
    invoke-virtual {v3, p3}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    .line 144
    .line 145
    .line 146
    move-result v3

    .line 147
    if-eqz v3, :cond_7

    .line 148
    .line 149
    goto :goto_0

    .line 150
    :cond_7
    invoke-virtual {p3}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    .line 151
    .line 152
    .line 153
    move-result-object p3

    .line 154
    instance-of v3, p3, Lde/robv/android/xposed/IXposedHookZygoteInit;

    .line 155
    .line 156
    if-eqz v3, :cond_8

    .line 157
    .line 158
    new-instance v3, Lde/robv/android/xposed/IXposedHookZygoteInit$StartupParam;

    .line 159
    .line 160
    invoke-direct {v3}, Lde/robv/android/xposed/IXposedHookZygoteInit$StartupParam;-><init>()V

    .line 161
    .line 162
    .line 163
    iput-object p0, v3, Lde/robv/android/xposed/IXposedHookZygoteInit$StartupParam;->modulePath:Ljava/lang/String;

    .line 164
    .line 165
    const/4 v4, 0x0

    .line 166
    iput-boolean v4, v3, Lde/robv/android/xposed/IXposedHookZygoteInit$StartupParam;->startsSystemServer:Z

    .line 167
    .line 168
    move-object v4, p3

    .line 169
    check-cast v4, Lde/robv/android/xposed/IXposedHookZygoteInit;

    .line 170
    .line 171
    invoke-interface {v4, v3}, Lde/robv/android/xposed/IXposedHookZygoteInit;->initZygote(Lde/robv/android/xposed/IXposedHookZygoteInit$StartupParam;)V

    .line 172
    .line 173
    .line 174
    :cond_8
    instance-of v3, p3, Lde/robv/android/xposed/IXposedHookLoadPackage;

    .line 175
    .line 176
    if-eqz v3, :cond_9

    .line 177
    .line 178
    new-instance v3, Lde/robv/android/xposed/IXposedHookLoadPackage$Wrapper;

    .line 179
    .line 180
    move-object v4, p3

    .line 181
    check-cast v4, Lde/robv/android/xposed/IXposedHookLoadPackage;

    .line 182
    .line 183
    invoke-direct {v3, v4}, Lde/robv/android/xposed/IXposedHookLoadPackage$Wrapper;-><init>(Lde/robv/android/xposed/IXposedHookLoadPackage;)V

    .line 184
    .line 185
    .line 186
    invoke-static {v3}, Lde/robv/android/xposed/XposedBridge;->hookLoadPackage(Lde/robv/android/xposed/callbacks/XC_LoadPackage;)V

    .line 187
    .line 188
    .line 189
    :cond_9
    instance-of p3, p3, Lde/robv/android/xposed/IXposedHookInitPackageResources;

    .line 190
    .line 191
    if-nez p3, :cond_a

    .line 192
    .line 193
    goto :goto_0

    .line 194
    :cond_a
    new-instance p3, Ljava/lang/UnsupportedOperationException;

    .line 195
    .line 196
    const-string v3, "can not hook resource!"

    .line 197
    .line 198
    invoke-direct {p3, v3}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    .line 199
    .line 200
    .line 201
    throw p3
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 202
    :catchall_0
    :try_start_5
    new-instance p3, Ljava/lang/StringBuilder;

    .line 203
    .line 204
    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    .line 205
    .line 206
    .line 207
    const-string v3, "    Failed to load class "

    .line 208
    .line 209
    invoke-virtual {p3, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 210
    .line 211
    .line 212
    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_0
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 213
    .line 214
    .line 215
    goto/16 :goto_0

    .line 216
    .line 217
    :cond_b
    :goto_1
    invoke-static {v0}, Lde/robv/android/xposed/XposedHelpers;->closeSilently(Ljava/io/Closeable;)V

    .line 218
    .line 219
    .line 220
    invoke-static {v1}, Lde/robv/android/xposed/XposedHelpers;->closeSilently(Ljava/util/zip/ZipFile;)V

    .line 221
    .line 222
    .line 223
    goto :goto_2

    .line 224
    :catchall_1
    move-exception p0

    .line 225
    goto :goto_3

    .line 226
    :catch_0
    :try_start_6
    new-instance p1, Ljava/lang/StringBuilder;

    .line 227
    .line 228
    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    .line 229
    .line 230
    .line 231
    const-string p2, "  Failed to load module from "

    .line 232
    .line 233
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 234
    .line 235
    .line 236
    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    .line 237
    .line 238
    .line 239
    goto :goto_1

    .line 240
    :goto_2
    return-void

    .line 241
    :goto_3
    invoke-static {v0}, Lde/robv/android/xposed/XposedHelpers;->closeSilently(Ljava/io/Closeable;)V

    .line 242
    .line 243
    .line 244
    invoke-static {v1}, Lde/robv/android/xposed/XposedHelpers;->closeSilently(Ljava/util/zip/ZipFile;)V

    .line 245
    .line 246
    .line 247
    throw p0

    .line 248
    :catch_1
    move-object v0, v1

    .line 249
    :catch_2
    invoke-static {v0}, Lde/robv/android/xposed/XposedHelpers;->closeSilently(Ljava/util/zip/ZipFile;)V

    .line 250
    .line 251
    .line 252
    :catch_3
    return-void
.end method

.method private static needsToCloseFilesForFork()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method
