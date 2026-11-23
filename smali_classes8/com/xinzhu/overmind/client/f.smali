.class public Lcom/xinzhu/overmind/client/f;
.super Lcom/xinzhu/overmind/client/c$b;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/xinzhu/overmind/client/f$m;
    }
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z = false

.field public static final HANDLE_FINISH:I = 0x0

.field public static final HANDLE_NEW_INTENT:I = 0x0

.field public static final TAG:Ljava/lang/String; = "f"

.field private static sOverlord:Lcom/xinzhu/overmind/client/f;


# instance fields
.field private mActivityThread:Landroid/os/IInterface;

.field private mApplicationsMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Landroid/app/Application;",
            ">;"
        }
    .end annotation
.end field

.field private mBoundApplication:Lcom/xinzhu/overmind/client/f$m;

.field private mClientConfig:Lcom/xinzhu/overmind/entity/ClientConfig;

.field private final mH:Landroid/os/Handler;

.field private mInitialApplication:Landroid/app/Application;

.field private mProviders:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/content/pm/ProviderInfo;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Lcom/xinzhu/overmind/client/c$b;-><init>()V

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
    iput-object v0, p0, Lcom/xinzhu/overmind/client/f;->mApplicationsMap:Ljava/util/Map;

    .line 10
    .line 11
    new-instance v0, Ljava/util/ArrayList;

    .line 12
    .line 13
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 14
    .line 15
    .line 16
    iput-object v0, p0, Lcom/xinzhu/overmind/client/f;->mProviders:Ljava/util/List;

    .line 17
    .line 18
    new-instance v0, Landroid/os/Handler;

    .line 19
    .line 20
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    .line 21
    .line 22
    .line 23
    move-result-object v1

    .line 24
    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 25
    .line 26
    .line 27
    iput-object v0, p0, Lcom/xinzhu/overmind/client/f;->mH:Landroid/os/Handler;

    .line 28
    .line 29
    return-void
.end method

.method private createPackageContext(Landroid/content/pm/ApplicationInfo;)Landroid/content/Context;
    .locals 2

    .line 1
    :try_start_0
    invoke-static {}, Lcom/xinzhu/overmind/Overmind;->getContext()Landroid/content/Context;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    iget-object p1, p1, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    .line 6
    .line 7
    const/4 v1, 0x3

    .line 8
    invoke-virtual {v0, p1, v1}, Landroid/content/Context;->createPackageContext(Ljava/lang/String;I)Landroid/content/Context;

    .line 9
    .line 10
    .line 11
    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 12
    return-object p1

    .line 13
    :catch_0
    move-exception p1

    .line 14
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 15
    .line 16
    .line 17
    const/4 p1, 0x0

    .line 18
    return-object p1
.end method

.method private gameSpecificHooks(Ljava/lang/String;)V
    .locals 17

    .line 1
    move-object/from16 v1, p0

    .line 2
    .line 3
    move-object/from16 v2, p1

    .line 4
    .line 5
    const-string v3, "applySingleLine"

    .line 6
    .line 7
    const-class v0, Ljava/lang/String;

    .line 8
    .line 9
    const-string v4, "android.widget.TextView"

    .line 10
    .line 11
    const-class v5, [Ljava/lang/String;

    .line 12
    .line 13
    :try_start_0
    sget-object v6, Lcom/xinzhu/overmind/client/f;->TAG:Ljava/lang/String;

    .line 14
    .line 15
    new-instance v7, Ljava/lang/StringBuilder;

    .line 16
    .line 17
    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    .line 18
    .line 19
    .line 20
    const-string v8, "gameSpecificHooks "

    .line 21
    .line 22
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 23
    .line 24
    .line 25
    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 26
    .line 27
    .line 28
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 29
    .line 30
    .line 31
    move-result-object v7

    .line 32
    invoke-static {v6, v7}, Lcom/xinzhu/overmind/b;->c(Ljava/lang/String;Ljava/lang/String;)I

    .line 33
    .line 34
    .line 35
    const-string v6, "com.google.android.gsf"

    .line 36
    .line 37
    invoke-virtual {v2, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 38
    .line 39
    .line 40
    move-result v6
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_3

    .line 41
    const/4 v7, 0x5

    .line 42
    const/4 v8, 0x3

    .line 43
    const/4 v9, 0x4

    .line 44
    const/4 v10, 0x1

    .line 45
    const/4 v11, 0x0

    .line 46
    const/4 v12, 0x2

    .line 47
    if-eqz v6, :cond_0

    .line 48
    .line 49
    :try_start_1
    const-string v6, "com.google.android.gsf.gservices.GservicesProvider"

    .line 50
    .line 51
    invoke-static {}, Lcom/xinzhu/overmind/client/f;->getApplication()Landroid/app/Application;

    .line 52
    .line 53
    .line 54
    move-result-object v13

    .line 55
    invoke-virtual {v13}, Landroid/content/Context;->getClassLoader()Ljava/lang/ClassLoader;

    .line 56
    .line 57
    .line 58
    move-result-object v13

    .line 59
    const-string v14, "query"

    .line 60
    .line 61
    const/4 v15, 0x6

    .line 62
    new-array v15, v15, [Ljava/lang/Object;

    .line 63
    .line 64
    const-class v16, Landroid/net/Uri;

    .line 65
    .line 66
    aput-object v16, v15, v11

    .line 67
    .line 68
    aput-object v5, v15, v10

    .line 69
    .line 70
    aput-object v0, v15, v12

    .line 71
    .line 72
    aput-object v5, v15, v8

    .line 73
    .line 74
    aput-object v0, v15, v9

    .line 75
    .line 76
    new-instance v0, Lcom/xinzhu/overmind/client/f$j;

    .line 77
    .line 78
    invoke-direct {v0, v1}, Lcom/xinzhu/overmind/client/f$j;-><init>(Lcom/xinzhu/overmind/client/f;)V

    .line 79
    .line 80
    .line 81
    aput-object v0, v15, v7

    .line 82
    .line 83
    invoke-static {v6, v13, v14, v15}, Lde/robv/android/xposed/XposedHelpers;->findAndHookMethod(Ljava/lang/String;Ljava/lang/ClassLoader;Ljava/lang/String;[Ljava/lang/Object;)Lde/robv/android/xposed/XC_MethodHook$Unhook;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 84
    .line 85
    .line 86
    :catchall_0
    :cond_0
    :try_start_2
    const-class v0, Landroid/app/DialogFragment;

    .line 87
    .line 88
    const-string v5, "onDismiss"

    .line 89
    .line 90
    new-array v6, v12, [Ljava/lang/Object;

    .line 91
    .line 92
    const-class v13, Landroid/content/DialogInterface;

    .line 93
    .line 94
    aput-object v13, v6, v11

    .line 95
    .line 96
    new-instance v13, Lcom/xinzhu/overmind/client/f$k;

    .line 97
    .line 98
    invoke-direct {v13, v1}, Lcom/xinzhu/overmind/client/f$k;-><init>(Lcom/xinzhu/overmind/client/f;)V

    .line 99
    .line 100
    .line 101
    aput-object v13, v6, v10

    .line 102
    .line 103
    invoke-static {v0, v5, v6}, Lde/robv/android/xposed/XposedHelpers;->findAndHookMethod(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Object;)Lde/robv/android/xposed/XC_MethodHook$Unhook;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 104
    .line 105
    .line 106
    goto :goto_0

    .line 107
    :catchall_1
    move-exception v0

    .line 108
    :try_start_3
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 109
    .line 110
    .line 111
    :goto_0
    const-string v0, "rockstargames"

    .line 112
    .line 113
    invoke-virtual {v2, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 114
    .line 115
    .line 116
    move-result v0

    .line 117
    if-eqz v0, :cond_1

    .line 118
    .line 119
    invoke-static {}, Lcom/xinzhu/overmind/Overmind;->is64Bit()Z

    .line 120
    .line 121
    .line 122
    move-result v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_3

    .line 123
    if-nez v0, :cond_1

    .line 124
    .line 125
    :try_start_4
    invoke-static {}, Ljava/lang/ClassLoader;->getSystemClassLoader()Ljava/lang/ClassLoader;

    .line 126
    .line 127
    .line 128
    move-result-object v0

    .line 129
    new-array v2, v9, [Ljava/lang/Object;

    .line 130
    .line 131
    sget-object v5, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    .line 132
    .line 133
    aput-object v5, v2, v11

    .line 134
    .line 135
    aput-object v5, v2, v10

    .line 136
    .line 137
    aput-object v5, v2, v12

    .line 138
    .line 139
    new-instance v5, Lcom/xinzhu/overmind/client/f$l;

    .line 140
    .line 141
    invoke-direct {v5, v1}, Lcom/xinzhu/overmind/client/f$l;-><init>(Lcom/xinzhu/overmind/client/f;)V

    .line 142
    .line 143
    .line 144
    aput-object v5, v2, v8

    .line 145
    .line 146
    invoke-static {v4, v0, v3, v2}, Lde/robv/android/xposed/XposedHelpers;->findAndHookMethod(Ljava/lang/String;Ljava/lang/ClassLoader;Ljava/lang/String;[Ljava/lang/Object;)Lde/robv/android/xposed/XC_MethodHook$Unhook;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    .line 147
    .line 148
    .line 149
    goto :goto_1

    .line 150
    :catchall_2
    :try_start_5
    sget-object v0, Lcom/xinzhu/overmind/client/f;->TAG:Ljava/lang/String;

    .line 151
    .line 152
    const-string v2, "Cannot do hook ZZZ, try ZZZZ."

    .line 153
    .line 154
    invoke-static {v0, v2}, Lcom/xinzhu/overmind/b;->c(Ljava/lang/String;Ljava/lang/String;)I

    .line 155
    .line 156
    .line 157
    invoke-static {}, Ljava/lang/ClassLoader;->getSystemClassLoader()Ljava/lang/ClassLoader;

    .line 158
    .line 159
    .line 160
    move-result-object v0

    .line 161
    new-array v2, v7, [Ljava/lang/Object;

    .line 162
    .line 163
    sget-object v5, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    .line 164
    .line 165
    aput-object v5, v2, v11

    .line 166
    .line 167
    aput-object v5, v2, v10

    .line 168
    .line 169
    aput-object v5, v2, v12

    .line 170
    .line 171
    aput-object v5, v2, v8

    .line 172
    .line 173
    new-instance v5, Lcom/xinzhu/overmind/client/f$a;

    .line 174
    .line 175
    invoke-direct {v5, v1}, Lcom/xinzhu/overmind/client/f$a;-><init>(Lcom/xinzhu/overmind/client/f;)V

    .line 176
    .line 177
    .line 178
    aput-object v5, v2, v9

    .line 179
    .line 180
    invoke-static {v4, v0, v3, v2}, Lde/robv/android/xposed/XposedHelpers;->findAndHookMethod(Ljava/lang/String;Ljava/lang/ClassLoader;Ljava/lang/String;[Ljava/lang/Object;)Lde/robv/android/xposed/XC_MethodHook$Unhook;
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_3

    .line 181
    .line 182
    .line 183
    goto :goto_1

    .line 184
    :catchall_3
    sget-object v0, Lcom/xinzhu/overmind/client/f;->TAG:Ljava/lang/String;

    .line 185
    .line 186
    const-string v2, "Cannot do hook both!"

    .line 187
    .line 188
    invoke-static {v0, v2}, Lcom/xinzhu/overmind/b;->c(Ljava/lang/String;Ljava/lang/String;)I

    .line 189
    .line 190
    .line 191
    :cond_1
    :goto_1
    return-void
.end method

.method public static getApplication()Landroid/app/Application;
    .locals 1

    .line 1
    invoke-static {}, Lcom/xinzhu/overmind/client/f;->getClient()Lcom/xinzhu/overmind/client/f;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    iget-object v0, v0, Lcom/xinzhu/overmind/client/f;->mInitialApplication:Landroid/app/Application;

    .line 6
    .line 7
    return-object v0
.end method

.method public static getBaseVUid()I
    .locals 1

    .line 1
    invoke-static {}, Lcom/xinzhu/overmind/client/f;->getClientConfig()Lcom/xinzhu/overmind/entity/ClientConfig;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    if-nez v0, :cond_0

    .line 6
    .line 7
    const/16 v0, 0x2710

    .line 8
    .line 9
    goto :goto_0

    .line 10
    :cond_0
    invoke-static {}, Lcom/xinzhu/overmind/client/f;->getClientConfig()Lcom/xinzhu/overmind/entity/ClientConfig;

    .line 11
    .line 12
    .line 13
    move-result-object v0

    .line 14
    iget v0, v0, Lcom/xinzhu/overmind/entity/ClientConfig;->h:I

    .line 15
    .line 16
    :goto_0
    return v0
.end method

.method public static getClient()Lcom/xinzhu/overmind/client/f;
    .locals 2

    .line 1
    sget-object v0, Lcom/xinzhu/overmind/client/f;->sOverlord:Lcom/xinzhu/overmind/client/f;

    .line 2
    .line 3
    if-nez v0, :cond_1

    .line 4
    .line 5
    const-class v0, Lcom/xinzhu/overmind/client/f;

    .line 6
    .line 7
    monitor-enter v0

    .line 8
    :try_start_0
    sget-object v1, Lcom/xinzhu/overmind/client/f;->sOverlord:Lcom/xinzhu/overmind/client/f;

    .line 9
    .line 10
    if-nez v1, :cond_0

    .line 11
    .line 12
    new-instance v1, Lcom/xinzhu/overmind/client/f;

    .line 13
    .line 14
    invoke-direct {v1}, Lcom/xinzhu/overmind/client/f;-><init>()V

    .line 15
    .line 16
    .line 17
    sput-object v1, Lcom/xinzhu/overmind/client/f;->sOverlord:Lcom/xinzhu/overmind/client/f;

    .line 18
    .line 19
    :cond_0
    monitor-exit v0

    .line 20
    goto :goto_0

    .line 21
    :catchall_0
    move-exception v1

    .line 22
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 23
    throw v1

    .line 24
    :cond_1
    :goto_0
    sget-object v0, Lcom/xinzhu/overmind/client/f;->sOverlord:Lcom/xinzhu/overmind/client/f;

    .line 25
    .line 26
    return-object v0
.end method

.method public static declared-synchronized getClientConfig()Lcom/xinzhu/overmind/entity/ClientConfig;
    .locals 2

    .line 1
    const-class v0, Lcom/xinzhu/overmind/client/f;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    invoke-static {}, Lcom/xinzhu/overmind/client/f;->getClient()Lcom/xinzhu/overmind/client/f;

    .line 5
    .line 6
    .line 7
    move-result-object v1

    .line 8
    iget-object v1, v1, Lcom/xinzhu/overmind/client/f;->mClientConfig:Lcom/xinzhu/overmind/entity/ClientConfig;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 9
    .line 10
    monitor-exit v0

    .line 11
    return-object v1

    .line 12
    :catchall_0
    move-exception v1

    .line 13
    monitor-exit v0

    .line 14
    throw v1
.end method

.method public static getProviders()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/content/pm/ProviderInfo;",
            ">;"
        }
    .end annotation

    .line 1
    invoke-static {}, Lcom/xinzhu/overmind/client/f;->getClient()Lcom/xinzhu/overmind/client/f;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    iget-object v0, v0, Lcom/xinzhu/overmind/client/f;->mProviders:Ljava/util/List;

    .line 6
    .line 7
    return-object v0
.end method

.method public static getUid()I
    .locals 1

    .line 1
    invoke-static {}, Lcom/xinzhu/overmind/client/f;->getClientConfig()Lcom/xinzhu/overmind/entity/ClientConfig;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    if-nez v0, :cond_0

    .line 6
    .line 7
    const/4 v0, -0x1

    .line 8
    goto :goto_0

    .line 9
    :cond_0
    invoke-static {}, Lcom/xinzhu/overmind/client/f;->getClientConfig()Lcom/xinzhu/overmind/entity/ClientConfig;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    iget v0, v0, Lcom/xinzhu/overmind/entity/ClientConfig;->f:I

    .line 14
    .line 15
    :goto_0
    return v0
.end method

.method public static getUserId()I
    .locals 1

    .line 1
    invoke-static {}, Lcom/xinzhu/overmind/client/f;->getClientConfig()Lcom/xinzhu/overmind/entity/ClientConfig;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    if-nez v0, :cond_0

    .line 6
    .line 7
    const/4 v0, 0x0

    .line 8
    goto :goto_0

    .line 9
    :cond_0
    invoke-static {}, Lcom/xinzhu/overmind/client/f;->getClientConfig()Lcom/xinzhu/overmind/entity/ClientConfig;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    iget v0, v0, Lcom/xinzhu/overmind/entity/ClientConfig;->g:I

    .line 14
    .line 15
    :goto_0
    return v0
.end method

.method public static getVPackageName()Ljava/lang/String;
    .locals 1

    .line 1
    invoke-static {}, Lcom/xinzhu/overmind/client/f;->getClientConfig()Lcom/xinzhu/overmind/entity/ClientConfig;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    invoke-static {}, Lcom/xinzhu/overmind/client/f;->getClientConfig()Lcom/xinzhu/overmind/entity/ClientConfig;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    iget-object v0, v0, Lcom/xinzhu/overmind/entity/ClientConfig;->b:Ljava/lang/String;

    .line 12
    .line 13
    return-object v0

    .line 14
    :cond_0
    invoke-static {}, Lcom/xinzhu/overmind/client/f;->getClient()Lcom/xinzhu/overmind/client/f;

    .line 15
    .line 16
    .line 17
    move-result-object v0

    .line 18
    iget-object v0, v0, Lcom/xinzhu/overmind/client/f;->mInitialApplication:Landroid/app/Application;

    .line 19
    .line 20
    if-eqz v0, :cond_1

    .line 21
    .line 22
    invoke-static {}, Lcom/xinzhu/overmind/client/f;->getClient()Lcom/xinzhu/overmind/client/f;

    .line 23
    .line 24
    .line 25
    move-result-object v0

    .line 26
    iget-object v0, v0, Lcom/xinzhu/overmind/client/f;->mInitialApplication:Landroid/app/Application;

    .line 27
    .line 28
    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    .line 29
    .line 30
    .line 31
    move-result-object v0

    .line 32
    return-object v0

    .line 33
    :cond_1
    const/4 v0, 0x0

    .line 34
    return-object v0
.end method

.method public static getVPid()I
    .locals 1

    .line 1
    invoke-static {}, Lcom/xinzhu/overmind/client/f;->getClientConfig()Lcom/xinzhu/overmind/entity/ClientConfig;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    if-nez v0, :cond_0

    .line 6
    .line 7
    const/4 v0, -0x1

    .line 8
    goto :goto_0

    .line 9
    :cond_0
    invoke-static {}, Lcom/xinzhu/overmind/client/f;->getClientConfig()Lcom/xinzhu/overmind/entity/ClientConfig;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    iget v0, v0, Lcom/xinzhu/overmind/entity/ClientConfig;->d:I

    .line 14
    .line 15
    :goto_0
    return v0
.end method

.method public static getVProcessName()Ljava/lang/String;
    .locals 1

    .line 1
    invoke-static {}, Lcom/xinzhu/overmind/client/f;->getClientConfig()Lcom/xinzhu/overmind/entity/ClientConfig;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    invoke-static {}, Lcom/xinzhu/overmind/client/f;->getClientConfig()Lcom/xinzhu/overmind/entity/ClientConfig;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    iget-object v0, v0, Lcom/xinzhu/overmind/entity/ClientConfig;->c:Ljava/lang/String;

    .line 12
    .line 13
    return-object v0

    .line 14
    :cond_0
    invoke-static {}, Lcom/xinzhu/overmind/client/f;->getClient()Lcom/xinzhu/overmind/client/f;

    .line 15
    .line 16
    .line 17
    move-result-object v0

    .line 18
    iget-object v0, v0, Lcom/xinzhu/overmind/client/f;->mBoundApplication:Lcom/xinzhu/overmind/client/f$m;

    .line 19
    .line 20
    if-eqz v0, :cond_1

    .line 21
    .line 22
    invoke-static {}, Lcom/xinzhu/overmind/client/f;->getClient()Lcom/xinzhu/overmind/client/f;

    .line 23
    .line 24
    .line 25
    move-result-object v0

    .line 26
    iget-object v0, v0, Lcom/xinzhu/overmind/client/f;->mBoundApplication:Lcom/xinzhu/overmind/client/f$m;

    .line 27
    .line 28
    iget-object v0, v0, Lcom/xinzhu/overmind/client/f$m;->b:Ljava/lang/String;

    .line 29
    .line 30
    return-object v0

    .line 31
    :cond_1
    const/4 v0, 0x0

    .line 32
    return-object v0
.end method

.method public static getVUid()I
    .locals 1

    .line 1
    invoke-static {}, Lcom/xinzhu/overmind/client/f;->getClientConfig()Lcom/xinzhu/overmind/entity/ClientConfig;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    if-nez v0, :cond_0

    .line 6
    .line 7
    const/16 v0, 0x2710

    .line 8
    .line 9
    goto :goto_0

    .line 10
    :cond_0
    invoke-static {}, Lcom/xinzhu/overmind/client/f;->getClientConfig()Lcom/xinzhu/overmind/entity/ClientConfig;

    .line 11
    .line 12
    .line 13
    move-result-object v0

    .line 14
    iget v0, v0, Lcom/xinzhu/overmind/entity/ClientConfig;->e:I

    .line 15
    .line 16
    :goto_0
    return v0
.end method

.method private installProviders(Landroid/content/Context;Ljava/lang/String;Ljava/util/List;)V
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Landroid/content/pm/ProviderInfo;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    .line 2
    .line 3
    .line 4
    move-result-wide v0

    .line 5
    :try_start_0
    invoke-interface {p3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 6
    .line 7
    .line 8
    move-result-object p3

    .line 9
    :cond_0
    :goto_0
    invoke-interface {p3}, Ljava/util/Iterator;->hasNext()Z

    .line 10
    .line 11
    .line 12
    move-result v2

    .line 13
    if-eqz v2, :cond_2

    .line 14
    .line 15
    invoke-interface {p3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 16
    .line 17
    .line 18
    move-result-object v2

    .line 19
    move-object v6, v2

    .line 20
    check-cast v6, Landroid/content/pm/ProviderInfo;

    .line 21
    .line 22
    iget-object v2, v6, Landroid/content/pm/ProviderInfo;->authority:Ljava/lang/String;

    .line 23
    .line 24
    const-string v3, ";"

    .line 25
    .line 26
    invoke-virtual {v2, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    .line 27
    .line 28
    .line 29
    move-result-object v2

    .line 30
    const/4 v3, 0x0

    .line 31
    aget-object v2, v2, v3

    .line 32
    .line 33
    iput-object v2, v6, Landroid/content/pm/ProviderInfo;->authority:Ljava/lang/String;

    .line 34
    .line 35
    sget-object v2, Lcom/xinzhu/overmind/client/f;->TAG:Ljava/lang/String;

    .line 36
    .line 37
    new-instance v3, Ljava/lang/StringBuilder;

    .line 38
    .line 39
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 40
    .line 41
    .line 42
    const-string v4, "installProviders info "

    .line 43
    .line 44
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 45
    .line 46
    .line 47
    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 48
    .line 49
    .line 50
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 51
    .line 52
    .line 53
    move-result-object v3

    .line 54
    invoke-static {v2, v3}, Lcom/xinzhu/overmind/b;->c(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 55
    .line 56
    .line 57
    :try_start_1
    iget-object v2, v6, Landroid/content/pm/ProviderInfo;->processName:Ljava/lang/String;

    .line 58
    .line 59
    invoke-virtual {p2, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 60
    .line 61
    .line 62
    move-result v2

    .line 63
    if-eqz v2, :cond_0

    .line 64
    .line 65
    invoke-static {}, Lcom/xinzhu/overmind/utils/e;->x()Z

    .line 66
    .line 67
    .line 68
    move-result v2

    .line 69
    if-eqz v2, :cond_1

    .line 70
    .line 71
    new-instance v3, Lcom/xinzhu/haunted/android/app/g;

    .line 72
    .line 73
    invoke-static {}, Lcom/xinzhu/overmind/Overmind;->mainThread()Ljava/lang/Object;

    .line 74
    .line 75
    .line 76
    move-result-object v2

    .line 77
    invoke-direct {v3, v2}, Lcom/xinzhu/haunted/android/app/g;-><init>(Ljava/lang/Object;)V

    .line 78
    .line 79
    .line 80
    const/4 v5, 0x0

    .line 81
    const/4 v7, 0x0

    .line 82
    const/4 v8, 0x1

    .line 83
    const/4 v9, 0x1

    .line 84
    move-object v4, p1

    .line 85
    invoke-virtual/range {v3 .. v9}, Lcom/xinzhu/haunted/android/app/g;->g0(Landroid/content/Context;Ljava/lang/Object;Landroid/content/pm/ProviderInfo;ZZZ)Ljava/lang/Object;

    .line 86
    .line 87
    .line 88
    goto :goto_0

    .line 89
    :cond_1
    new-instance v3, Lcom/xinzhu/haunted/android/app/g;

    .line 90
    .line 91
    invoke-static {}, Lcom/xinzhu/overmind/Overmind;->mainThread()Ljava/lang/Object;

    .line 92
    .line 93
    .line 94
    move-result-object v2

    .line 95
    invoke-direct {v3, v2}, Lcom/xinzhu/haunted/android/app/g;-><init>(Ljava/lang/Object;)V

    .line 96
    .line 97
    .line 98
    const/4 v5, 0x0

    .line 99
    const/4 v7, 0x0

    .line 100
    const/4 v8, 0x1

    .line 101
    const/4 v9, 0x1

    .line 102
    move-object v4, p1

    .line 103
    invoke-virtual/range {v3 .. v9}, Lcom/xinzhu/haunted/android/app/g;->f0(Landroid/content/Context;Ljava/lang/Object;Landroid/content/pm/ProviderInfo;ZZZ)Ljava/lang/Object;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 104
    .line 105
    .line 106
    goto :goto_0

    .line 107
    :catchall_0
    move-exception v2

    .line 108
    :try_start_2
    invoke-virtual {v2}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 109
    .line 110
    .line 111
    goto :goto_0

    .line 112
    :cond_2
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 113
    .line 114
    .line 115
    invoke-static {}, Lcom/xinzhu/overmind/client/hook/delegate/b;->d()V

    .line 116
    .line 117
    .line 118
    return-void

    .line 119
    :catchall_1
    move-exception p1

    .line 120
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 121
    .line 122
    .line 123
    invoke-static {}, Lcom/xinzhu/overmind/client/hook/delegate/b;->d()V

    .line 124
    .line 125
    .line 126
    throw p1
.end method

.method private uidHooks()V
    .locals 11

    .line 1
    const-class v0, Ljava/lang/String;

    .line 2
    .line 3
    const-class v1, Landroid/content/Context;

    .line 4
    .line 5
    :try_start_0
    const-class v2, Landroid/os/Binder;

    .line 6
    .line 7
    const-string v3, "getCallingUid"

    .line 8
    .line 9
    const/4 v4, 0x1

    .line 10
    new-array v5, v4, [Ljava/lang/Object;

    .line 11
    .line 12
    new-instance v6, Lcom/xinzhu/overmind/client/f$f;

    .line 13
    .line 14
    invoke-direct {v6, p0}, Lcom/xinzhu/overmind/client/f$f;-><init>(Lcom/xinzhu/overmind/client/f;)V

    .line 15
    .line 16
    .line 17
    const/4 v7, 0x0

    .line 18
    aput-object v6, v5, v7

    .line 19
    .line 20
    invoke-static {v2, v3, v5}, Lde/robv/android/xposed/XposedHelpers;->findAndHookMethod(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Object;)Lde/robv/android/xposed/XC_MethodHook$Unhook;

    .line 21
    .line 22
    .line 23
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 24
    .line 25
    const/16 v3, 0x1f

    .line 26
    .line 27
    if-lt v2, v3, :cond_0

    .line 28
    .line 29
    invoke-static {}, Lcom/xinzhu/overmind/client/e;->a()Ljava/lang/Class;

    .line 30
    .line 31
    .line 32
    move-result-object v2

    .line 33
    const-string v3, "checkCallingUid"

    .line 34
    .line 35
    new-array v5, v4, [Ljava/lang/Object;

    .line 36
    .line 37
    new-instance v6, Lcom/xinzhu/overmind/client/f$g;

    .line 38
    .line 39
    invoke-direct {v6, p0}, Lcom/xinzhu/overmind/client/f$g;-><init>(Lcom/xinzhu/overmind/client/f;)V

    .line 40
    .line 41
    .line 42
    aput-object v6, v5, v7

    .line 43
    .line 44
    invoke-static {v2, v3, v5}, Lde/robv/android/xposed/XposedHelpers;->findAndHookMethod(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Object;)Lde/robv/android/xposed/XC_MethodHook$Unhook;

    .line 45
    .line 46
    .line 47
    :cond_0
    sget-object v2, Lcom/xinzhu/haunted/android/app/g;->c:Ljava/lang/Class;

    .line 48
    .line 49
    const-string v3, "acquireProvider"

    .line 50
    .line 51
    const/4 v5, 0x5

    .line 52
    new-array v5, v5, [Ljava/lang/Object;

    .line 53
    .line 54
    aput-object v1, v5, v7

    .line 55
    .line 56
    aput-object v0, v5, v4

    .line 57
    .line 58
    sget-object v6, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    .line 59
    .line 60
    const/4 v8, 0x2

    .line 61
    aput-object v6, v5, v8

    .line 62
    .line 63
    sget-object v6, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    .line 64
    .line 65
    const/4 v9, 0x3

    .line 66
    aput-object v6, v5, v9

    .line 67
    .line 68
    new-instance v6, Lcom/xinzhu/overmind/client/f$h;

    .line 69
    .line 70
    invoke-direct {v6, p0}, Lcom/xinzhu/overmind/client/f$h;-><init>(Lcom/xinzhu/overmind/client/f;)V

    .line 71
    .line 72
    .line 73
    const/4 v10, 0x4

    .line 74
    aput-object v6, v5, v10

    .line 75
    .line 76
    invoke-static {v2, v3, v5}, Lde/robv/android/xposed/XposedHelpers;->findAndHookMethod(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Object;)Lde/robv/android/xposed/XC_MethodHook$Unhook;

    .line 77
    .line 78
    .line 79
    invoke-static {}, Lcom/xinzhu/overmind/utils/e;->j()Z

    .line 80
    .line 81
    .line 82
    move-result v2

    .line 83
    if-eqz v2, :cond_1

    .line 84
    .line 85
    invoke-static {}, Lcom/xinzhu/overmind/utils/e;->k()Z

    .line 86
    .line 87
    .line 88
    move-result v2

    .line 89
    if-nez v2, :cond_1

    .line 90
    .line 91
    const-string v2, "android.provider.DeviceConfig"

    .line 92
    .line 93
    invoke-static {}, Lcom/xinzhu/overmind/Overmind;->getContext()Landroid/content/Context;

    .line 94
    .line 95
    .line 96
    move-result-object v3

    .line 97
    invoke-virtual {v3}, Landroid/content/Context;->getClassLoader()Ljava/lang/ClassLoader;

    .line 98
    .line 99
    .line 100
    move-result-object v3

    .line 101
    const-string v5, "enforceReadPermission"

    .line 102
    .line 103
    new-array v6, v9, [Ljava/lang/Object;

    .line 104
    .line 105
    aput-object v1, v6, v7

    .line 106
    .line 107
    aput-object v0, v6, v4

    .line 108
    .line 109
    new-instance v0, Lcom/xinzhu/overmind/client/f$i;

    .line 110
    .line 111
    invoke-direct {v0, p0}, Lcom/xinzhu/overmind/client/f$i;-><init>(Lcom/xinzhu/overmind/client/f;)V

    .line 112
    .line 113
    .line 114
    aput-object v0, v6, v8

    .line 115
    .line 116
    invoke-static {v2, v3, v5, v6}, Lde/robv/android/xposed/XposedHelpers;->findAndHookMethod(Ljava/lang/String;Ljava/lang/ClassLoader;Ljava/lang/String;[Ljava/lang/Object;)Lde/robv/android/xposed/XC_MethodHook$Unhook;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 117
    .line 118
    .line 119
    goto :goto_0

    .line 120
    :catchall_0
    move-exception v0

    .line 121
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 122
    .line 123
    .line 124
    :cond_1
    :goto_0
    return-void
.end method


# virtual methods
.method public acquireContentProviderClient(Landroid/content/pm/ProviderInfo;)Landroid/os/IBinder;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lcom/xinzhu/overmind/client/f;->isInit()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-nez v0, :cond_0

    .line 6
    .line 7
    invoke-static {}, Lcom/xinzhu/overmind/client/f;->getClientConfig()Lcom/xinzhu/overmind/entity/ClientConfig;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    iget-object v0, v0, Lcom/xinzhu/overmind/entity/ClientConfig;->b:Ljava/lang/String;

    .line 12
    .line 13
    invoke-static {}, Lcom/xinzhu/overmind/client/f;->getClientConfig()Lcom/xinzhu/overmind/entity/ClientConfig;

    .line 14
    .line 15
    .line 16
    move-result-object v1

    .line 17
    iget-object v1, v1, Lcom/xinzhu/overmind/entity/ClientConfig;->c:Ljava/lang/String;

    .line 18
    .line 19
    invoke-virtual {p0, v0, v1}, Lcom/xinzhu/overmind/client/f;->bindApplication(Ljava/lang/String;Ljava/lang/String;)V

    .line 20
    .line 21
    .line 22
    :cond_0
    iget-object p1, p1, Landroid/content/pm/ProviderInfo;->authority:Ljava/lang/String;

    .line 23
    .line 24
    const-string v0, ";"

    .line 25
    .line 26
    invoke-virtual {p1, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    .line 27
    .line 28
    .line 29
    move-result-object p1

    .line 30
    const/4 v0, 0x0

    .line 31
    aget-object p1, p1, v0

    .line 32
    .line 33
    invoke-static {}, Lcom/xinzhu/overmind/Overmind;->getContext()Landroid/content/Context;

    .line 34
    .line 35
    .line 36
    move-result-object v0

    .line 37
    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 38
    .line 39
    .line 40
    move-result-object v0

    .line 41
    invoke-virtual {v0, p1}, Landroid/content/ContentResolver;->acquireContentProviderClient(Ljava/lang/String;)Landroid/content/ContentProviderClient;

    .line 42
    .line 43
    .line 44
    move-result-object p1

    .line 45
    new-instance v0, Lt8/e;

    .line 46
    .line 47
    invoke-direct {v0, p1}, Lt8/e;-><init>(Ljava/lang/Object;)V

    .line 48
    .line 49
    .line 50
    invoke-virtual {v0}, Lt8/e;->b()Landroid/os/IInterface;

    .line 51
    .line 52
    .line 53
    move-result-object p1

    .line 54
    if-nez p1, :cond_1

    .line 55
    .line 56
    const/4 p1, 0x0

    .line 57
    return-object p1

    .line 58
    :cond_1
    new-instance v0, Lcom/xinzhu/overmind/client/hook/proxies/context/providers/a;

    .line 59
    .line 60
    invoke-direct {v0}, Lcom/xinzhu/overmind/client/hook/proxies/context/providers/a;-><init>()V

    .line 61
    .line 62
    .line 63
    invoke-static {}, Lcom/xinzhu/overmind/Overmind;->getHostPkg()Ljava/lang/String;

    .line 64
    .line 65
    .line 66
    move-result-object v1

    .line 67
    invoke-virtual {v0, p1, v1}, Lcom/xinzhu/overmind/client/hook/proxies/context/providers/a;->a(Landroid/os/IInterface;Ljava/lang/String;)Landroid/os/IInterface;

    .line 68
    .line 69
    .line 70
    move-result-object p1

    .line 71
    invoke-interface {p1}, Landroid/os/IInterface;->asBinder()Landroid/os/IBinder;

    .line 72
    .line 73
    .line 74
    move-result-object p1

    .line 75
    return-object p1
.end method

.method public bindApplication()V
    .locals 2

    .line 6
    invoke-virtual {p0}, Lcom/xinzhu/overmind/client/f;->isInit()Z

    move-result v0

    if-nez v0, :cond_0

    .line 7
    invoke-static {}, Lcom/xinzhu/overmind/client/f;->getVPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Lcom/xinzhu/overmind/client/f;->getVProcessName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/xinzhu/overmind/client/f;->bindApplication(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public bindApplication(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    .line 1
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    if-eq v0, v1, :cond_0

    .line 2
    new-instance v0, Landroid/os/ConditionVariable;

    invoke-direct {v0}, Landroid/os/ConditionVariable;-><init>()V

    .line 3
    new-instance v1, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance v2, Lcom/xinzhu/overmind/client/f$d;

    invoke-direct {v2, p0, p1, p2, v0}, Lcom/xinzhu/overmind/client/f$d;-><init>(Lcom/xinzhu/overmind/client/f;Ljava/lang/String;Ljava/lang/String;Landroid/os/ConditionVariable;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 4
    invoke-virtual {v0}, Landroid/os/ConditionVariable;->block()V

    goto :goto_0

    .line 5
    :cond_0
    invoke-virtual {p0, p1, p2}, Lcom/xinzhu/overmind/client/f;->handleBindApplication(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method public createJobService(Landroid/content/pm/ServiceInfo;)Landroid/app/Service;
    .locals 12

    .line 1
    const-string v0, ": "

    .line 2
    .line 3
    invoke-static {}, Lcom/xinzhu/overmind/client/f;->getClient()Lcom/xinzhu/overmind/client/f;

    .line 4
    .line 5
    .line 6
    move-result-object v1

    .line 7
    invoke-virtual {v1}, Lcom/xinzhu/overmind/client/f;->isInit()Z

    .line 8
    .line 9
    .line 10
    move-result v1

    .line 11
    if-nez v1, :cond_0

    .line 12
    .line 13
    invoke-static {}, Lcom/xinzhu/overmind/client/f;->getClient()Lcom/xinzhu/overmind/client/f;

    .line 14
    .line 15
    .line 16
    move-result-object v1

    .line 17
    iget-object v2, p1, Landroid/content/pm/ServiceInfo;->packageName:Ljava/lang/String;

    .line 18
    .line 19
    iget-object v3, p1, Landroid/content/pm/ServiceInfo;->processName:Ljava/lang/String;

    .line 20
    .line 21
    invoke-virtual {v1, v2, v3}, Lcom/xinzhu/overmind/client/f;->bindApplication(Ljava/lang/String;Ljava/lang/String;)V

    .line 22
    .line 23
    .line 24
    :cond_0
    new-instance v1, Lcom/xinzhu/haunted/android/app/v;

    .line 25
    .line 26
    iget-object v2, p0, Lcom/xinzhu/overmind/client/f;->mBoundApplication:Lcom/xinzhu/overmind/client/f$m;

    .line 27
    .line 28
    iget-object v2, v2, Lcom/xinzhu/overmind/client/f$m;->e:Ljava/lang/Object;

    .line 29
    .line 30
    invoke-direct {v1, v2}, Lcom/xinzhu/haunted/android/app/v;-><init>(Ljava/lang/Object;)V

    .line 31
    .line 32
    .line 33
    invoke-virtual {v1}, Lcom/xinzhu/haunted/android/app/v;->i()Ljava/lang/ClassLoader;

    .line 34
    .line 35
    .line 36
    move-result-object v1

    .line 37
    :try_start_0
    iget-object v2, p1, Landroid/content/pm/ServiceInfo;->name:Ljava/lang/String;

    .line 38
    .line 39
    invoke-virtual {v1, v2}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    .line 40
    .line 41
    .line 42
    move-result-object v1

    .line 43
    invoke-virtual {v1}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    .line 44
    .line 45
    .line 46
    move-result-object v1

    .line 47
    check-cast v1, Landroid/app/Service;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 48
    .line 49
    :try_start_1
    invoke-static {}, Lcom/xinzhu/overmind/Overmind;->getContext()Landroid/content/Context;

    .line 50
    .line 51
    .line 52
    move-result-object v2

    .line 53
    iget-object v3, p1, Landroid/content/pm/ServiceInfo;->packageName:Ljava/lang/String;

    .line 54
    .line 55
    const/4 v4, 0x3

    .line 56
    invoke-virtual {v2, v3, v4}, Landroid/content/Context;->createPackageContext(Ljava/lang/String;I)Landroid/content/Context;

    .line 57
    .line 58
    .line 59
    move-result-object v2

    .line 60
    new-instance v3, Lcom/xinzhu/haunted/android/app/l;

    .line 61
    .line 62
    invoke-direct {v3, v2}, Lcom/xinzhu/haunted/android/app/l;-><init>(Ljava/lang/Object;)V

    .line 63
    .line 64
    .line 65
    invoke-virtual {v3, v1}, Lcom/xinzhu/haunted/android/app/l;->p(Landroid/content/Context;)V

    .line 66
    .line 67
    .line 68
    new-instance v5, Lcom/xinzhu/haunted/android/app/a0;

    .line 69
    .line 70
    invoke-direct {v5, v1}, Lcom/xinzhu/haunted/android/app/a0;-><init>(Ljava/lang/Object;)V

    .line 71
    .line 72
    .line 73
    invoke-static {}, Lcom/xinzhu/overmind/Overmind;->mainThread()Ljava/lang/Object;

    .line 74
    .line 75
    .line 76
    move-result-object v7

    .line 77
    iget-object v8, p1, Landroid/content/pm/ServiceInfo;->name:Ljava/lang/String;

    .line 78
    .line 79
    invoke-static {}, Lcom/xinzhu/overmind/client/f;->getClient()Lcom/xinzhu/overmind/client/f;

    .line 80
    .line 81
    .line 82
    move-result-object v3

    .line 83
    invoke-virtual {v3}, Lcom/xinzhu/overmind/client/f;->getActivityThread()Landroid/os/IBinder;

    .line 84
    .line 85
    .line 86
    move-result-object v9

    .line 87
    iget-object v10, p0, Lcom/xinzhu/overmind/client/f;->mInitialApplication:Landroid/app/Application;

    .line 88
    .line 89
    invoke-static {}, Lcom/xinzhu/haunted/android/app/d;->c()Landroid/os/IInterface;

    .line 90
    .line 91
    .line 92
    move-result-object v11

    .line 93
    move-object v6, v2

    .line 94
    invoke-virtual/range {v5 .. v11}, Lcom/xinzhu/haunted/android/app/a0;->a(Landroid/content/Context;Ljava/lang/Object;Ljava/lang/String;Landroid/os/IBinder;Landroid/app/Application;Ljava/lang/Object;)V

    .line 95
    .line 96
    .line 97
    invoke-static {v2}, Lcom/xinzhu/overmind/client/hook/fixer/ContextFixer;->fix(Landroid/content/Context;)V

    .line 98
    .line 99
    .line 100
    invoke-virtual {v1}, Landroid/app/Service;->onCreate()V

    .line 101
    .line 102
    .line 103
    const/4 v2, 0x0

    .line 104
    invoke-virtual {v1, v2}, Landroid/app/Service;->onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 105
    .line 106
    .line 107
    return-object v1

    .line 108
    :catch_0
    move-exception v1

    .line 109
    new-instance v2, Ljava/lang/RuntimeException;

    .line 110
    .line 111
    new-instance v3, Ljava/lang/StringBuilder;

    .line 112
    .line 113
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 114
    .line 115
    .line 116
    const-string v4, "Unable to create JobService "

    .line 117
    .line 118
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 119
    .line 120
    .line 121
    iget-object p1, p1, Landroid/content/pm/ServiceInfo;->name:Ljava/lang/String;

    .line 122
    .line 123
    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 124
    .line 125
    .line 126
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 127
    .line 128
    .line 129
    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 130
    .line 131
    .line 132
    move-result-object p1

    .line 133
    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 134
    .line 135
    .line 136
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 137
    .line 138
    .line 139
    move-result-object p1

    .line 140
    invoke-direct {v2, p1, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 141
    .line 142
    .line 143
    throw v2

    .line 144
    :catch_1
    move-exception v1

    .line 145
    new-instance v2, Ljava/lang/RuntimeException;

    .line 146
    .line 147
    new-instance v3, Ljava/lang/StringBuilder;

    .line 148
    .line 149
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 150
    .line 151
    .line 152
    const-string v4, "Unable to instantiate service "

    .line 153
    .line 154
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 155
    .line 156
    .line 157
    iget-object p1, p1, Landroid/content/pm/ServiceInfo;->name:Ljava/lang/String;

    .line 158
    .line 159
    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 160
    .line 161
    .line 162
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 163
    .line 164
    .line 165
    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 166
    .line 167
    .line 168
    move-result-object p1

    .line 169
    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 170
    .line 171
    .line 172
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 173
    .line 174
    .line 175
    move-result-object p1

    .line 176
    invoke-direct {v2, p1, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 177
    .line 178
    .line 179
    throw v2
.end method

.method public createService(Landroid/content/pm/ServiceInfo;)Landroid/app/Service;
    .locals 12

    .line 1
    const-string v0, ": "

    .line 2
    .line 3
    invoke-static {}, Lcom/xinzhu/overmind/client/f;->getClient()Lcom/xinzhu/overmind/client/f;

    .line 4
    .line 5
    .line 6
    move-result-object v1

    .line 7
    invoke-virtual {v1}, Lcom/xinzhu/overmind/client/f;->isInit()Z

    .line 8
    .line 9
    .line 10
    move-result v1

    .line 11
    if-nez v1, :cond_0

    .line 12
    .line 13
    invoke-static {}, Lcom/xinzhu/overmind/client/f;->getClient()Lcom/xinzhu/overmind/client/f;

    .line 14
    .line 15
    .line 16
    move-result-object v1

    .line 17
    iget-object v2, p1, Landroid/content/pm/ServiceInfo;->packageName:Ljava/lang/String;

    .line 18
    .line 19
    iget-object v3, p1, Landroid/content/pm/ServiceInfo;->processName:Ljava/lang/String;

    .line 20
    .line 21
    invoke-virtual {v1, v2, v3}, Lcom/xinzhu/overmind/client/f;->bindApplication(Ljava/lang/String;Ljava/lang/String;)V

    .line 22
    .line 23
    .line 24
    :cond_0
    new-instance v1, Lcom/xinzhu/haunted/android/app/v;

    .line 25
    .line 26
    iget-object v2, p0, Lcom/xinzhu/overmind/client/f;->mBoundApplication:Lcom/xinzhu/overmind/client/f$m;

    .line 27
    .line 28
    iget-object v2, v2, Lcom/xinzhu/overmind/client/f$m;->e:Ljava/lang/Object;

    .line 29
    .line 30
    invoke-direct {v1, v2}, Lcom/xinzhu/haunted/android/app/v;-><init>(Ljava/lang/Object;)V

    .line 31
    .line 32
    .line 33
    invoke-virtual {v1}, Lcom/xinzhu/haunted/android/app/v;->i()Ljava/lang/ClassLoader;

    .line 34
    .line 35
    .line 36
    move-result-object v1

    .line 37
    :try_start_0
    iget-object v2, p1, Landroid/content/pm/ServiceInfo;->name:Ljava/lang/String;

    .line 38
    .line 39
    invoke-virtual {v1, v2}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    .line 40
    .line 41
    .line 42
    move-result-object v1

    .line 43
    invoke-virtual {v1}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    .line 44
    .line 45
    .line 46
    move-result-object v1

    .line 47
    check-cast v1, Landroid/app/Service;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 48
    .line 49
    :try_start_1
    invoke-static {}, Lcom/xinzhu/overmind/Overmind;->getContext()Landroid/content/Context;

    .line 50
    .line 51
    .line 52
    move-result-object v2

    .line 53
    iget-object v3, p1, Landroid/content/pm/ServiceInfo;->packageName:Ljava/lang/String;

    .line 54
    .line 55
    const/4 v4, 0x3

    .line 56
    invoke-virtual {v2, v3, v4}, Landroid/content/Context;->createPackageContext(Ljava/lang/String;I)Landroid/content/Context;

    .line 57
    .line 58
    .line 59
    move-result-object v2

    .line 60
    new-instance v3, Lcom/xinzhu/haunted/android/app/l;

    .line 61
    .line 62
    invoke-direct {v3, v2}, Lcom/xinzhu/haunted/android/app/l;-><init>(Ljava/lang/Object;)V

    .line 63
    .line 64
    .line 65
    invoke-virtual {v3, v1}, Lcom/xinzhu/haunted/android/app/l;->p(Landroid/content/Context;)V

    .line 66
    .line 67
    .line 68
    new-instance v5, Lcom/xinzhu/haunted/android/app/a0;

    .line 69
    .line 70
    invoke-direct {v5, v1}, Lcom/xinzhu/haunted/android/app/a0;-><init>(Ljava/lang/Object;)V

    .line 71
    .line 72
    .line 73
    invoke-static {}, Lcom/xinzhu/overmind/Overmind;->mainThread()Ljava/lang/Object;

    .line 74
    .line 75
    .line 76
    move-result-object v7

    .line 77
    iget-object v8, p1, Landroid/content/pm/ServiceInfo;->name:Ljava/lang/String;

    .line 78
    .line 79
    invoke-static {}, Lcom/xinzhu/overmind/client/f;->getClient()Lcom/xinzhu/overmind/client/f;

    .line 80
    .line 81
    .line 82
    move-result-object v3

    .line 83
    invoke-virtual {v3}, Lcom/xinzhu/overmind/client/f;->getActivityThread()Landroid/os/IBinder;

    .line 84
    .line 85
    .line 86
    move-result-object v9

    .line 87
    iget-object v10, p0, Lcom/xinzhu/overmind/client/f;->mInitialApplication:Landroid/app/Application;

    .line 88
    .line 89
    invoke-static {}, Lcom/xinzhu/haunted/android/app/d;->c()Landroid/os/IInterface;

    .line 90
    .line 91
    .line 92
    move-result-object v11

    .line 93
    move-object v6, v2

    .line 94
    invoke-virtual/range {v5 .. v11}, Lcom/xinzhu/haunted/android/app/a0;->a(Landroid/content/Context;Ljava/lang/Object;Ljava/lang/String;Landroid/os/IBinder;Landroid/app/Application;Ljava/lang/Object;)V

    .line 95
    .line 96
    .line 97
    invoke-static {v2}, Lcom/xinzhu/overmind/client/hook/fixer/ContextFixer;->fix(Landroid/content/Context;)V

    .line 98
    .line 99
    .line 100
    invoke-virtual {v1}, Landroid/app/Service;->onCreate()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 101
    .line 102
    .line 103
    return-object v1

    .line 104
    :catch_0
    move-exception v1

    .line 105
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 106
    .line 107
    .line 108
    new-instance v2, Ljava/lang/RuntimeException;

    .line 109
    .line 110
    new-instance v3, Ljava/lang/StringBuilder;

    .line 111
    .line 112
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 113
    .line 114
    .line 115
    const-string v4, "Unable to create service "

    .line 116
    .line 117
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 118
    .line 119
    .line 120
    iget-object p1, p1, Landroid/content/pm/ServiceInfo;->name:Ljava/lang/String;

    .line 121
    .line 122
    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 123
    .line 124
    .line 125
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 126
    .line 127
    .line 128
    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 129
    .line 130
    .line 131
    move-result-object p1

    .line 132
    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 133
    .line 134
    .line 135
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 136
    .line 137
    .line 138
    move-result-object p1

    .line 139
    invoke-direct {v2, p1, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 140
    .line 141
    .line 142
    throw v2

    .line 143
    :catch_1
    move-exception v1

    .line 144
    new-instance v2, Ljava/lang/RuntimeException;

    .line 145
    .line 146
    new-instance v3, Ljava/lang/StringBuilder;

    .line 147
    .line 148
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 149
    .line 150
    .line 151
    const-string v4, "Unable to instantiate service "

    .line 152
    .line 153
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 154
    .line 155
    .line 156
    iget-object p1, p1, Landroid/content/pm/ServiceInfo;->name:Ljava/lang/String;

    .line 157
    .line 158
    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 159
    .line 160
    .line 161
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 162
    .line 163
    .line 164
    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 165
    .line 166
    .line 167
    move-result-object p1

    .line 168
    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 169
    .line 170
    .line 171
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 172
    .line 173
    .line 174
    move-result-object p1

    .line 175
    invoke-direct {v2, p1, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 176
    .line 177
    .line 178
    throw v2
.end method

.method public finishActivity(Landroid/os/IBinder;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/xinzhu/overmind/client/f;->mH:Landroid/os/Handler;

    .line 2
    .line 3
    new-instance v1, Lcom/xinzhu/overmind/client/f$b;

    .line 4
    .line 5
    invoke-direct {v1, p0, p1}, Lcom/xinzhu/overmind/client/f$b;-><init>(Lcom/xinzhu/overmind/client/f;Landroid/os/IBinder;)V

    .line 6
    .line 7
    .line 8
    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 9
    .line 10
    .line 11
    return-void
.end method

.method public getActivityThread()Landroid/os/IBinder;
    .locals 2

    .line 1
    new-instance v0, Lcom/xinzhu/haunted/android/app/g;

    .line 2
    .line 3
    invoke-static {}, Lcom/xinzhu/overmind/Overmind;->mainThread()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v1

    .line 7
    invoke-direct {v0, v1}, Lcom/xinzhu/haunted/android/app/g;-><init>(Ljava/lang/Object;)V

    .line 8
    .line 9
    .line 10
    invoke-virtual {v0}, Lcom/xinzhu/haunted/android/app/g;->K()Landroid/os/IBinder;

    .line 11
    .line 12
    .line 13
    move-result-object v0

    .line 14
    return-object v0
.end method

.method public declared-synchronized handleBindApplication(Ljava/lang/String;Ljava/lang/String;)V
    .locals 13

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    invoke-static {}, Lcom/xinzhu/overmind/client/b;->a()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3
    .line 4
    .line 5
    :catchall_0
    :try_start_1
    invoke-static {}, Lcom/xinzhu/overmind/client/f;->getClientConfig()Lcom/xinzhu/overmind/entity/ClientConfig;

    .line 6
    .line 7
    .line 8
    move-result-object v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    .line 9
    if-nez v0, :cond_0

    .line 10
    .line 11
    monitor-exit p0

    .line 12
    return-void

    .line 13
    :cond_0
    :try_start_2
    iget-object v0, p0, Lcom/xinzhu/overmind/client/f;->mApplicationsMap:Ljava/util/Map;

    .line 14
    .line 15
    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    .line 16
    .line 17
    .line 18
    move-result v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 19
    if-eqz v0, :cond_1

    .line 20
    .line 21
    monitor-exit p0

    .line 22
    return-void

    .line 23
    :cond_1
    :try_start_3
    invoke-static {}, Lcom/xinzhu/overmind/Overmind;->getMindPackageManager()Lma/g;

    .line 24
    .line 25
    .line 26
    move-result-object v0

    .line 27
    invoke-static {}, Lcom/xinzhu/overmind/client/f;->getUserId()I

    .line 28
    .line 29
    .line 30
    move-result v1

    .line 31
    const/16 v2, 0x8

    .line 32
    .line 33
    invoke-virtual {v0, p1, v2, v1}, Lma/g;->l(Ljava/lang/String;II)Landroid/content/pm/PackageInfo;

    .line 34
    .line 35
    .line 36
    move-result-object v0

    .line 37
    invoke-static {}, Lcom/xinzhu/overmind/Overmind;->get()Lcom/xinzhu/overmind/Overmind;

    .line 38
    .line 39
    .line 40
    move-result-object v1

    .line 41
    invoke-virtual {v1}, Lcom/xinzhu/overmind/Overmind;->getCustomCallback()Lcom/xinzhu/overmind/custom/CustomCallback;

    .line 42
    .line 43
    .line 44
    move-result-object v1

    .line 45
    invoke-static {}, Lcom/xinzhu/overmind/client/f;->getUserId()I

    .line 46
    .line 47
    .line 48
    move-result v2

    .line 49
    invoke-virtual {v1, p1, v2}, Lcom/xinzhu/overmind/custom/CustomCallback;->customIORedirect(Ljava/lang/String;I)Ljava/util/LinkedHashMap;

    .line 50
    .line 51
    .line 52
    move-result-object v1

    .line 53
    invoke-static {}, Lcom/xinzhu/overmind/client/hook/IOManager;->get()Lcom/xinzhu/overmind/client/hook/IOManager;

    .line 54
    .line 55
    .line 56
    move-result-object v2

    .line 57
    iget-object v3, v0, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    .line 58
    .line 59
    iget v3, v3, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    .line 60
    .line 61
    invoke-virtual {v2, p1, v1, v3}, Lcom/xinzhu/overmind/client/hook/IOManager;->enableRedirect(Ljava/lang/String;Ljava/util/Map;I)V

    .line 62
    .line 63
    .line 64
    invoke-static {}, Lcom/xinzhu/overmind/Overmind;->getContext()Landroid/content/Context;

    .line 65
    .line 66
    .line 67
    move-result-object v1

    .line 68
    invoke-virtual {v1}, Landroid/content/Context;->getClassLoader()Ljava/lang/ClassLoader;

    .line 69
    .line 70
    .line 71
    move-result-object v1

    .line 72
    invoke-static {v1}, Lcom/xinzhu/overmind/client/VMCore;->initClientClassloader(Ljava/lang/ClassLoader;)V

    .line 73
    .line 74
    .line 75
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 76
    .line 77
    invoke-static {}, Lcom/xinzhu/overmind/Overmind;->getHostPkg()Ljava/lang/String;

    .line 78
    .line 79
    .line 80
    move-result-object v2

    .line 81
    invoke-static {}, Lcom/xinzhu/overmind/client/f;->getVPackageName()Ljava/lang/String;

    .line 82
    .line 83
    .line 84
    move-result-object v3

    .line 85
    invoke-static {}, Lcom/xinzhu/overmind/client/f;->getClientConfig()Lcom/xinzhu/overmind/entity/ClientConfig;

    .line 86
    .line 87
    .line 88
    move-result-object v4

    .line 89
    iget-boolean v4, v4, Lcom/xinzhu/overmind/entity/ClientConfig;->j:Z

    .line 90
    .line 91
    if-eqz v4, :cond_2

    .line 92
    .line 93
    invoke-static {}, Lcom/xinzhu/overmind/a;->m()Ljava/io/File;

    .line 94
    .line 95
    .line 96
    move-result-object v4

    .line 97
    :goto_0
    invoke-virtual {v4}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    .line 98
    .line 99
    .line 100
    move-result-object v4

    .line 101
    goto :goto_1

    .line 102
    :cond_2
    invoke-static {}, Lcom/xinzhu/overmind/a;->l()Ljava/io/File;

    .line 103
    .line 104
    .line 105
    move-result-object v4

    .line 106
    goto :goto_0

    .line 107
    :goto_1
    invoke-static {v1, v2, v3, v4}, Lcom/xinzhu/overmind/client/VMCore;->init(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 108
    .line 109
    .line 110
    invoke-static {v0}, Lcom/xinzhu/overmind/server/pm/q;->d(Landroid/content/pm/PackageInfo;)Landroid/content/pm/PackageInfo;

    .line 111
    .line 112
    .line 113
    move-result-object v0

    .line 114
    iget-object v0, v0, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    .line 115
    .line 116
    invoke-static {p2, v0}, Lna/e;->h(Ljava/lang/String;Landroid/content/pm/ApplicationInfo;)V

    .line 117
    .line 118
    .line 119
    invoke-static {}, Lma/g;->d()Lma/g;

    .line 120
    .line 121
    .line 122
    move-result-object v1

    .line 123
    invoke-static {}, Lcom/xinzhu/overmind/client/f;->getVUid()I

    .line 124
    .line 125
    .line 126
    move-result v2

    .line 127
    invoke-static {}, Lcom/xinzhu/overmind/client/f;->getUserId()I

    .line 128
    .line 129
    .line 130
    move-result v3

    .line 131
    const/16 v4, 0x80

    .line 132
    .line 133
    invoke-virtual {v1, p2, v2, v4, v3}, Lma/g;->u(Ljava/lang/String;III)Ljava/util/List;

    .line 134
    .line 135
    .line 136
    move-result-object v1

    .line 137
    iput-object v1, p0, Lcom/xinzhu/overmind/client/f;->mProviders:Ljava/util/List;

    .line 138
    .line 139
    new-instance v1, Lcom/xinzhu/haunted/android/app/g;

    .line 140
    .line 141
    invoke-static {}, Lcom/xinzhu/overmind/Overmind;->mainThread()Ljava/lang/Object;

    .line 142
    .line 143
    .line 144
    move-result-object v2

    .line 145
    invoke-direct {v1, v2}, Lcom/xinzhu/haunted/android/app/g;-><init>(Ljava/lang/Object;)V

    .line 146
    .line 147
    .line 148
    invoke-virtual {v1}, Lcom/xinzhu/haunted/android/app/g;->U()Ljava/lang/Object;

    .line 149
    .line 150
    .line 151
    move-result-object v2

    .line 152
    invoke-direct {p0, v0}, Lcom/xinzhu/overmind/client/f;->createPackageContext(Landroid/content/pm/ApplicationInfo;)Landroid/content/Context;

    .line 153
    .line 154
    .line 155
    move-result-object v3

    .line 156
    new-instance v4, Lcom/xinzhu/haunted/android/app/l;

    .line 157
    .line 158
    invoke-direct {v4, v3}, Lcom/xinzhu/haunted/android/app/l;-><init>(Ljava/lang/Object;)V

    .line 159
    .line 160
    .line 161
    invoke-virtual {v4}, Lcom/xinzhu/haunted/android/app/l;->m()Ljava/lang/Object;

    .line 162
    .line 163
    .line 164
    move-result-object v4

    .line 165
    new-instance v5, Lcom/xinzhu/haunted/android/app/v;

    .line 166
    .line 167
    invoke-direct {v5, v4}, Lcom/xinzhu/haunted/android/app/v;-><init>(Ljava/lang/Object;)V

    .line 168
    .line 169
    .line 170
    const/4 v6, 0x0

    .line 171
    invoke-virtual {v5, v6}, Lcom/xinzhu/haunted/android/app/v;->s(Z)Z

    .line 172
    .line 173
    .line 174
    invoke-virtual {v5, v0}, Lcom/xinzhu/haunted/android/app/v;->q(Landroid/content/pm/ApplicationInfo;)Z

    .line 175
    .line 176
    .line 177
    iget v7, v0, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    .line 178
    .line 179
    const/16 v8, 0x9

    .line 180
    .line 181
    if-ge v7, v8, :cond_3

    .line 182
    .line 183
    new-instance v8, Landroid/os/StrictMode$ThreadPolicy$Builder;

    .line 184
    .line 185
    invoke-static {}, Landroid/os/StrictMode;->getThreadPolicy()Landroid/os/StrictMode$ThreadPolicy;

    .line 186
    .line 187
    .line 188
    move-result-object v9

    .line 189
    invoke-direct {v8, v9}, Landroid/os/StrictMode$ThreadPolicy$Builder;-><init>(Landroid/os/StrictMode$ThreadPolicy;)V

    .line 190
    .line 191
    .line 192
    invoke-virtual {v8}, Landroid/os/StrictMode$ThreadPolicy$Builder;->permitNetwork()Landroid/os/StrictMode$ThreadPolicy$Builder;

    .line 193
    .line 194
    .line 195
    move-result-object v8

    .line 196
    invoke-virtual {v8}, Landroid/os/StrictMode$ThreadPolicy$Builder;->build()Landroid/os/StrictMode$ThreadPolicy;

    .line 197
    .line 198
    .line 199
    move-result-object v8

    .line 200
    invoke-static {v8}, Landroid/os/StrictMode;->setThreadPolicy(Landroid/os/StrictMode$ThreadPolicy;)V

    .line 201
    .line 202
    .line 203
    :cond_3
    invoke-static {}, Lcom/xinzhu/overmind/utils/e;->d()Z

    .line 204
    .line 205
    .line 206
    move-result v8

    .line 207
    if-eqz v8, :cond_4

    .line 208
    .line 209
    const/16 v8, 0x18

    .line 210
    .line 211
    if-ge v7, v8, :cond_4

    .line 212
    .line 213
    invoke-static {}, Lcom/xinzhu/haunted/android/os/u;->c()V

    .line 214
    .line 215
    .line 216
    :cond_4
    invoke-static {}, Lda/a;->e()Lda/a;

    .line 217
    .line 218
    .line 219
    move-result-object v7

    .line 220
    iget v8, v0, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    .line 221
    .line 222
    invoke-virtual {v7, v8}, Lda/a;->h(I)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    .line 223
    .line 224
    .line 225
    :try_start_4
    const-string v7, "dalvik.system.VMRuntime"

    .line 226
    .line 227
    invoke-static {}, Ljava/lang/ClassLoader;->getSystemClassLoader()Ljava/lang/ClassLoader;

    .line 228
    .line 229
    .line 230
    move-result-object v8

    .line 231
    const-string v9, "setHiddenApiExemptions"

    .line 232
    .line 233
    const/4 v10, 0x2

    .line 234
    new-array v10, v10, [Ljava/lang/Object;

    .line 235
    .line 236
    const-class v11, [Ljava/lang/String;

    .line 237
    .line 238
    aput-object v11, v10, v6

    .line 239
    .line 240
    new-instance v11, Lcom/xinzhu/overmind/client/f$e;

    .line 241
    .line 242
    invoke-direct {v11, p0}, Lcom/xinzhu/overmind/client/f$e;-><init>(Lcom/xinzhu/overmind/client/f;)V

    .line 243
    .line 244
    .line 245
    const/4 v12, 0x1

    .line 246
    aput-object v11, v10, v12

    .line 247
    .line 248
    invoke-static {v7, v8, v9, v10}, Lde/robv/android/xposed/XposedHelpers;->findAndHookMethod(Ljava/lang/String;Ljava/lang/ClassLoader;Ljava/lang/String;[Ljava/lang/Object;)Lde/robv/android/xposed/XC_MethodHook$Unhook;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 249
    .line 250
    .line 251
    :catchall_1
    :try_start_5
    invoke-static {}, Lcom/xinzhu/overmind/Overmind;->get()Lcom/xinzhu/overmind/Overmind;

    .line 252
    .line 253
    .line 254
    move-result-object v7

    .line 255
    invoke-virtual {v7}, Lcom/xinzhu/overmind/Overmind;->getCustomCallback()Lcom/xinzhu/overmind/custom/CustomCallback;

    .line 256
    .line 257
    .line 258
    move-result-object v7

    .line 259
    invoke-static {}, Lcom/xinzhu/overmind/client/f;->getUserId()I

    .line 260
    .line 261
    .line 262
    move-result v8

    .line 263
    invoke-virtual {v7, p1, v8}, Lcom/xinzhu/overmind/custom/CustomCallback;->customLoadLibgggg(Ljava/lang/String;I)V

    .line 264
    .line 265
    .line 266
    new-instance v7, Lcom/xinzhu/overmind/client/f$m;

    .line 267
    .line 268
    const/4 v8, 0x0

    .line 269
    invoke-direct {v7, v8}, Lcom/xinzhu/overmind/client/f$m;-><init>(Lcom/xinzhu/overmind/client/f$d;)V

    .line 270
    .line 271
    .line 272
    iput-object v0, v7, Lcom/xinzhu/overmind/client/f$m;->c:Landroid/content/pm/ApplicationInfo;

    .line 273
    .line 274
    iput-object p2, v7, Lcom/xinzhu/overmind/client/f$m;->b:Ljava/lang/String;

    .line 275
    .line 276
    iput-object v4, v7, Lcom/xinzhu/overmind/client/f$m;->e:Ljava/lang/Object;

    .line 277
    .line 278
    iget-object v0, p0, Lcom/xinzhu/overmind/client/f;->mProviders:Ljava/util/List;

    .line 279
    .line 280
    iput-object v0, v7, Lcom/xinzhu/overmind/client/f$m;->d:Ljava/util/List;

    .line 281
    .line 282
    new-instance v0, Lcom/xinzhu/haunted/android/app/g$b;

    .line 283
    .line 284
    invoke-direct {v0, v2}, Lcom/xinzhu/haunted/android/app/g$b;-><init>(Ljava/lang/Object;)V

    .line 285
    .line 286
    .line 287
    new-instance v2, Landroid/content/ComponentName;

    .line 288
    .line 289
    iget-object v4, v7, Lcom/xinzhu/overmind/client/f$m;->c:Landroid/content/pm/ApplicationInfo;

    .line 290
    .line 291
    iget-object v4, v4, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    .line 292
    .line 293
    const-class v9, Landroid/app/Instrumentation;

    .line 294
    .line 295
    invoke-virtual {v9}, Ljava/lang/Class;->getName()Ljava/lang/String;

    .line 296
    .line 297
    .line 298
    move-result-object v9

    .line 299
    invoke-direct {v2, v4, v9}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 300
    .line 301
    .line 302
    invoke-virtual {v0, v2}, Lcom/xinzhu/haunted/android/app/g$b;->m(Landroid/content/ComponentName;)Z

    .line 303
    .line 304
    .line 305
    iget-object v2, v7, Lcom/xinzhu/overmind/client/f$m;->c:Landroid/content/pm/ApplicationInfo;

    .line 306
    .line 307
    invoke-virtual {v0, v2}, Lcom/xinzhu/haunted/android/app/g$b;->k(Landroid/content/pm/ApplicationInfo;)Z

    .line 308
    .line 309
    .line 310
    iget-object v2, v7, Lcom/xinzhu/overmind/client/f$m;->e:Ljava/lang/Object;

    .line 311
    .line 312
    invoke-virtual {v0, v2}, Lcom/xinzhu/haunted/android/app/g$b;->l(Ljava/lang/Object;)Z

    .line 313
    .line 314
    .line 315
    iget-object v2, v7, Lcom/xinzhu/overmind/client/f$m;->b:Ljava/lang/String;

    .line 316
    .line 317
    invoke-virtual {v0, v2}, Lcom/xinzhu/haunted/android/app/g$b;->n(Ljava/lang/String;)Z

    .line 318
    .line 319
    .line 320
    iget-object v2, v7, Lcom/xinzhu/overmind/client/f$m;->d:Ljava/util/List;

    .line 321
    .line 322
    invoke-virtual {v0, v2}, Lcom/xinzhu/haunted/android/app/g$b;->o(Ljava/util/List;)Z

    .line 323
    .line 324
    .line 325
    iput-object v7, p0, Lcom/xinzhu/overmind/client/f;->mBoundApplication:Lcom/xinzhu/overmind/client/f$m;

    .line 326
    .line 327
    const-string v0, "AndroidNSSP"

    .line 328
    .line 329
    invoke-static {v0}, Ljava/security/Security;->removeProvider(Ljava/lang/String;)V

    .line 330
    .line 331
    .line 332
    invoke-static {}, Lcom/xinzhu/overmind/utils/e;->d()Z

    .line 333
    .line 334
    .line 335
    move-result v0

    .line 336
    if-eqz v0, :cond_5

    .line 337
    .line 338
    invoke-static {v8}, Lk9/a;->b(Ljava/lang/Object;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    .line 339
    .line 340
    .line 341
    :cond_5
    :try_start_6
    invoke-direct {p0}, Lcom/xinzhu/overmind/client/f;->uidHooks()V

    .line 342
    .line 343
    .line 344
    invoke-static {}, Lcom/xinzhu/overmind/Overmind;->get()Lcom/xinzhu/overmind/Overmind;

    .line 345
    .line 346
    .line 347
    move-result-object v0

    .line 348
    invoke-virtual {v0}, Lcom/xinzhu/overmind/Overmind;->getAppLifecycleCallback()Lcom/xinzhu/overmind/client/hook/a;

    .line 349
    .line 350
    .line 351
    move-result-object v0

    .line 352
    invoke-virtual {v0, p1, p2, v3}, Lcom/xinzhu/overmind/client/hook/a;->c(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;)V

    .line 353
    .line 354
    .line 355
    invoke-virtual {v5, v6, v8}, Lcom/xinzhu/haunted/android/app/v;->p(ZLandroid/app/Instrumentation;)Landroid/app/Application;

    .line 356
    .line 357
    .line 358
    move-result-object v0

    .line 359
    iput-object v0, p0, Lcom/xinzhu/overmind/client/f;->mInitialApplication:Landroid/app/Application;

    .line 360
    .line 361
    invoke-virtual {v1, v0}, Lcom/xinzhu/haunted/android/app/g;->n0(Landroid/app/Application;)Z

    .line 362
    .line 363
    .line 364
    new-instance v1, Lcom/xinzhu/haunted/android/app/g;

    .line 365
    .line 366
    invoke-static {}, Lcom/xinzhu/overmind/Overmind;->mainThread()Ljava/lang/Object;

    .line 367
    .line 368
    .line 369
    move-result-object v2

    .line 370
    invoke-direct {v1, v2}, Lcom/xinzhu/haunted/android/app/g;-><init>(Ljava/lang/Object;)V

    .line 371
    .line 372
    .line 373
    invoke-virtual {v1}, Lcom/xinzhu/haunted/android/app/g;->R()Ljava/lang/Object;

    .line 374
    .line 375
    .line 376
    move-result-object v1

    .line 377
    check-cast v1, Landroid/content/Context;

    .line 378
    .line 379
    invoke-static {v1}, Lcom/xinzhu/overmind/client/hook/fixer/ContextFixer;->fix(Landroid/content/Context;)V

    .line 380
    .line 381
    .line 382
    iget-object v1, p0, Lcom/xinzhu/overmind/client/f;->mInitialApplication:Landroid/app/Application;

    .line 383
    .line 384
    invoke-static {v1}, Lcom/xinzhu/overmind/client/hook/fixer/ContextFixer;->fix(Landroid/content/Context;)V

    .line 385
    .line 386
    .line 387
    invoke-static {p1, v0}, Loa/a;->a(Ljava/lang/String;Landroid/app/Application;)V

    .line 388
    .line 389
    .line 390
    iget-object v1, p0, Lcom/xinzhu/overmind/client/f;->mInitialApplication:Landroid/app/Application;

    .line 391
    .line 392
    iget-object v2, v7, Lcom/xinzhu/overmind/client/f$m;->b:Ljava/lang/String;

    .line 393
    .line 394
    iget-object v3, v7, Lcom/xinzhu/overmind/client/f$m;->d:Ljava/util/List;

    .line 395
    .line 396
    invoke-direct {p0, v1, v2, v3}, Lcom/xinzhu/overmind/client/f;->installProviders(Landroid/content/Context;Ljava/lang/String;Ljava/util/List;)V

    .line 397
    .line 398
    .line 399
    invoke-static {}, Lcom/xinzhu/overmind/Overmind;->get()Lcom/xinzhu/overmind/Overmind;

    .line 400
    .line 401
    .line 402
    move-result-object v1

    .line 403
    invoke-virtual {v1}, Lcom/xinzhu/overmind/Overmind;->getAppLifecycleCallback()Lcom/xinzhu/overmind/client/hook/a;

    .line 404
    .line 405
    .line 406
    move-result-object v1

    .line 407
    invoke-virtual {v1, p1, p2, v0}, Lcom/xinzhu/overmind/client/hook/a;->b(Ljava/lang/String;Ljava/lang/String;Landroid/app/Application;)V

    .line 408
    .line 409
    .line 410
    invoke-static {}, Lcom/xinzhu/overmind/client/hook/delegate/AppInstrumentationHook;->h()Lcom/xinzhu/overmind/client/hook/delegate/AppInstrumentationHook;

    .line 411
    .line 412
    .line 413
    move-result-object v1

    .line 414
    invoke-virtual {v1}, Lcom/xinzhu/overmind/client/hook/delegate/AppInstrumentationHook;->i()Landroid/app/Instrumentation;

    .line 415
    .line 416
    .line 417
    move-result-object v1

    .line 418
    invoke-virtual {v1, v0}, Landroid/app/Instrumentation;->callApplicationOnCreate(Landroid/app/Application;)V

    .line 419
    .line 420
    .line 421
    iget-object v1, p0, Lcom/xinzhu/overmind/client/f;->mInitialApplication:Landroid/app/Application;

    .line 422
    .line 423
    invoke-static {v1}, Lcom/xinzhu/overmind/client/hook/fixer/ContextFixer;->fix(Landroid/content/Context;)V

    .line 424
    .line 425
    .line 426
    invoke-static {}, Lcom/xinzhu/overmind/client/hook/c;->c()Lcom/xinzhu/overmind/client/hook/c;

    .line 427
    .line 428
    .line 429
    move-result-object v1

    .line 430
    const-class v2, Lcom/xinzhu/overmind/client/hook/proxies/clipboard/a;

    .line 431
    .line 432
    invoke-virtual {v1, v2}, Lcom/xinzhu/overmind/client/hook/c;->b(Ljava/lang/Class;)V

    .line 433
    .line 434
    .line 435
    invoke-static {}, Lcom/xinzhu/overmind/client/hook/c;->c()Lcom/xinzhu/overmind/client/hook/c;

    .line 436
    .line 437
    .line 438
    move-result-object v1

    .line 439
    const-class v2, Lcom/xinzhu/overmind/client/hook/proxies/app/b;

    .line 440
    .line 441
    invoke-virtual {v1, v2}, Lcom/xinzhu/overmind/client/hook/c;->b(Ljava/lang/Class;)V

    .line 442
    .line 443
    .line 444
    invoke-static {}, Lcom/xinzhu/overmind/Overmind;->get()Lcom/xinzhu/overmind/Overmind;

    .line 445
    .line 446
    .line 447
    move-result-object v1

    .line 448
    invoke-virtual {v1}, Lcom/xinzhu/overmind/Overmind;->getAppLifecycleCallback()Lcom/xinzhu/overmind/client/hook/a;

    .line 449
    .line 450
    .line 451
    move-result-object v1

    .line 452
    invoke-virtual {v1, p1, p2, v0}, Lcom/xinzhu/overmind/client/hook/a;->a(Ljava/lang/String;Ljava/lang/String;Landroid/app/Application;)V

    .line 453
    .line 454
    .line 455
    iget-object p2, p0, Lcom/xinzhu/overmind/client/f;->mInitialApplication:Landroid/app/Application;

    .line 456
    .line 457
    invoke-virtual {p0, p2}, Lcom/xinzhu/overmind/client/f;->registerReceivers(Landroid/app/Application;)V

    .line 458
    .line 459
    .line 460
    iget-object p2, p0, Lcom/xinzhu/overmind/client/f;->mApplicationsMap:Ljava/util/Map;

    .line 461
    .line 462
    invoke-interface {p2, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 463
    .line 464
    .line 465
    invoke-direct {p0, p1}, Lcom/xinzhu/overmind/client/f;->gameSpecificHooks(Ljava/lang/String;)V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_0
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    .line 466
    .line 467
    .line 468
    monitor-exit p0

    .line 469
    return-void

    .line 470
    :catch_0
    move-exception p1

    .line 471
    :try_start_7
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 472
    .line 473
    .line 474
    new-instance p2, Ljava/lang/RuntimeException;

    .line 475
    .line 476
    const-string v0, "Failed to makeApplication"

    .line 477
    .line 478
    invoke-direct {p2, v0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 479
    .line 480
    .line 481
    throw p2
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    .line 482
    :catchall_2
    move-exception p1

    .line 483
    monitor-exit p0

    .line 484
    throw p1
.end method

.method public handleNewIntent(Landroid/os/IBinder;Landroid/content/Intent;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/xinzhu/overmind/client/f;->mH:Landroid/os/Handler;

    .line 2
    .line 3
    new-instance v1, Lcom/xinzhu/overmind/client/f$c;

    .line 4
    .line 5
    invoke-direct {v1, p0, p2, p1}, Lcom/xinzhu/overmind/client/f$c;-><init>(Lcom/xinzhu/overmind/client/f;Landroid/content/Intent;Landroid/os/IBinder;)V

    .line 6
    .line 7
    .line 8
    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 9
    .line 10
    .line 11
    return-void
.end method

.method public initProcess(Lcom/xinzhu/overmind/entity/ClientConfig;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/xinzhu/overmind/client/f;->mClientConfig:Lcom/xinzhu/overmind/entity/ClientConfig;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    iput-object p1, p0, Lcom/xinzhu/overmind/client/f;->mClientConfig:Lcom/xinzhu/overmind/entity/ClientConfig;

    .line 6
    .line 7
    return-void

    .line 8
    :cond_0
    new-instance v0, Ljava/lang/RuntimeException;

    .line 9
    .line 10
    new-instance v1, Ljava/lang/StringBuilder;

    .line 11
    .line 12
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 13
    .line 14
    .line 15
    const-string v2, "reject init process: "

    .line 16
    .line 17
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 18
    .line 19
    .line 20
    iget-object p1, p1, Lcom/xinzhu/overmind/entity/ClientConfig;->c:Ljava/lang/String;

    .line 21
    .line 22
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 23
    .line 24
    .line 25
    const-string p1, ", this process is : "

    .line 26
    .line 27
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 28
    .line 29
    .line 30
    iget-object p1, p0, Lcom/xinzhu/overmind/client/f;->mClientConfig:Lcom/xinzhu/overmind/entity/ClientConfig;

    .line 31
    .line 32
    iget-object p1, p1, Lcom/xinzhu/overmind/entity/ClientConfig;->c:Ljava/lang/String;

    .line 33
    .line 34
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 35
    .line 36
    .line 37
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 38
    .line 39
    .line 40
    move-result-object p1

    .line 41
    invoke-direct {v0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .line 42
    .line 43
    .line 44
    throw v0
.end method

.method public isInit()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/xinzhu/overmind/client/f;->mBoundApplication:Lcom/xinzhu/overmind/client/f$m;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    const/4 v0, 0x1

    .line 6
    goto :goto_0

    .line 7
    :cond_0
    const/4 v0, 0x0

    .line 8
    :goto_0
    return v0
.end method

.method public loadXposed(Landroid/content/Context;)V
    .locals 0

    return-void
.end method

.method public peekService(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 1

    .line 1
    invoke-static {}, Lcom/xinzhu/overmind/server/b;->b()Lcom/xinzhu/overmind/server/b;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0, p1}, Lcom/xinzhu/overmind/server/b;->k(Landroid/content/Intent;)Landroid/os/IBinder;

    .line 6
    .line 7
    .line 8
    move-result-object p1

    .line 9
    return-object p1
.end method

.method public registerReceivers(Landroid/app/Application;)V
    .locals 5

    .line 1
    :try_start_0
    new-instance v0, Landroid/content/Intent;

    .line 2
    .line 3
    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    .line 7
    .line 8
    .line 9
    move-result-object p1

    .line 10
    invoke-virtual {v0, p1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 11
    .line 12
    .line 13
    invoke-static {}, Lcom/xinzhu/overmind/Overmind;->getMindPackageManager()Lma/g;

    .line 14
    .line 15
    .line 16
    move-result-object p1

    .line 17
    invoke-static {}, Lcom/xinzhu/overmind/client/f;->getUserId()I

    .line 18
    .line 19
    .line 20
    move-result v1

    .line 21
    const/16 v2, 0x40

    .line 22
    .line 23
    const/4 v3, 0x0

    .line 24
    invoke-virtual {p1, v0, v2, v3, v1}, Lma/g;->w(Landroid/content/Intent;ILjava/lang/String;I)Ljava/util/List;

    .line 25
    .line 26
    .line 27
    move-result-object p1

    .line 28
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 29
    .line 30
    .line 31
    move-result-object p1

    .line 32
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 33
    .line 34
    .line 35
    move-result v0

    .line 36
    if-eqz v0, :cond_1

    .line 37
    .line 38
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 39
    .line 40
    .line 41
    move-result-object v0

    .line 42
    check-cast v0, Landroid/content/pm/ResolveInfo;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 43
    .line 44
    :try_start_1
    iget-object v1, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    .line 45
    .line 46
    iget-object v1, v1, Landroid/content/pm/ActivityInfo;->processName:Ljava/lang/String;

    .line 47
    .line 48
    if-eqz v1, :cond_0

    .line 49
    .line 50
    invoke-static {}, Lcom/xinzhu/overmind/client/f;->getVProcessName()Ljava/lang/String;

    .line 51
    .line 52
    .line 53
    move-result-object v2

    .line 54
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 55
    .line 56
    .line 57
    move-result v1

    .line 58
    if-nez v1, :cond_0

    .line 59
    .line 60
    goto :goto_0

    .line 61
    :cond_0
    iget-object v1, p0, Lcom/xinzhu/overmind/client/f;->mInitialApplication:Landroid/app/Application;

    .line 62
    .line 63
    invoke-virtual {v1}, Landroid/content/Context;->getClassLoader()Ljava/lang/ClassLoader;

    .line 64
    .line 65
    .line 66
    move-result-object v1

    .line 67
    iget-object v2, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    .line 68
    .line 69
    iget-object v2, v2, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    .line 70
    .line 71
    invoke-virtual {v1, v2}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    .line 72
    .line 73
    .line 74
    move-result-object v1

    .line 75
    invoke-virtual {v1}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    .line 76
    .line 77
    .line 78
    move-result-object v1

    .line 79
    check-cast v1, Landroid/content/BroadcastReceiver;

    .line 80
    .line 81
    iget-object v2, p0, Lcom/xinzhu/overmind/client/f;->mInitialApplication:Landroid/app/Application;

    .line 82
    .line 83
    iget-object v3, v0, Landroid/content/pm/ResolveInfo;->filter:Landroid/content/IntentFilter;

    .line 84
    .line 85
    invoke-virtual {v2, v1, v3}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 86
    .line 87
    .line 88
    goto :goto_0

    .line 89
    :catchall_0
    move-exception v1

    .line 90
    :try_start_2
    sget-object v2, Lcom/xinzhu/overmind/client/f;->TAG:Ljava/lang/String;

    .line 91
    .line 92
    new-instance v3, Ljava/lang/StringBuilder;

    .line 93
    .line 94
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 95
    .line 96
    .line 97
    const-string v4, "Unable to registerReceiver "

    .line 98
    .line 99
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 100
    .line 101
    .line 102
    iget-object v0, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    .line 103
    .line 104
    iget-object v0, v0, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    .line 105
    .line 106
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 107
    .line 108
    .line 109
    const-string v0, ": "

    .line 110
    .line 111
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 112
    .line 113
    .line 114
    invoke-virtual {v1}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    .line 115
    .line 116
    .line 117
    move-result-object v0

    .line 118
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 119
    .line 120
    .line 121
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 122
    .line 123
    .line 124
    move-result-object v0

    .line 125
    invoke-static {v2, v0}, Lcom/xinzhu/overmind/utils/y;->a(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 126
    .line 127
    .line 128
    goto :goto_0

    .line 129
    :catchall_1
    move-exception p1

    .line 130
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 131
    .line 132
    .line 133
    :cond_1
    return-void
.end method

.method public restartJobService(Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    return-void
.end method

.method public stopService(Landroid/content/Intent;)V
    .locals 1

    .line 1
    invoke-static {}, Lcom/xinzhu/overmind/server/b;->b()Lcom/xinzhu/overmind/server/b;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0, p1}, Lcom/xinzhu/overmind/server/b;->stopService(Landroid/content/Intent;)V

    .line 6
    .line 7
    .line 8
    return-void
.end method
