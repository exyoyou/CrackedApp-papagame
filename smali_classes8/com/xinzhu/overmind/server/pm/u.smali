.class Lcom/xinzhu/overmind/server/pm/u;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final d:Ljava/lang/String; = "Settings"


# instance fields
.field final a:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap<",
            "Ljava/lang/String;",
            "Lcom/xinzhu/overmind/server/pm/MindPackageSettings;",
            ">;"
        }
    .end annotation
.end field

.field private final b:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private c:I


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Landroid/util/ArrayMap;

    .line 5
    .line 6
    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    .line 7
    .line 8
    .line 9
    iput-object v0, p0, Lcom/xinzhu/overmind/server/pm/u;->a:Landroid/util/ArrayMap;

    .line 10
    .line 11
    new-instance v1, Ljava/util/HashMap;

    .line 12
    .line 13
    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 14
    .line 15
    .line 16
    iput-object v1, p0, Lcom/xinzhu/overmind/server/pm/u;->b:Ljava/util/Map;

    .line 17
    .line 18
    const/4 v1, 0x0

    .line 19
    iput v1, p0, Lcom/xinzhu/overmind/server/pm/u;->c:I

    .line 20
    .line 21
    monitor-enter v0

    .line 22
    :try_start_0
    invoke-direct {p0}, Lcom/xinzhu/overmind/server/pm/u;->f()V

    .line 23
    .line 24
    .line 25
    monitor-exit v0

    .line 26
    return-void

    .line 27
    :catchall_0
    move-exception v1

    .line 28
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 29
    throw v1
.end method

.method private a(Lcom/xinzhu/overmind/server/pm/MindPackageSettings;)I
    .locals 2

    .line 1
    iget-object p1, p1, Lcom/xinzhu/overmind/server/pm/MindPackageSettings;->b:Lcom/xinzhu/overmind/server/pm/MindPackage;

    .line 2
    .line 3
    iget-object v0, p1, Lcom/xinzhu/overmind/server/pm/MindPackage;->o:Ljava/lang/String;

    .line 4
    .line 5
    if-nez v0, :cond_0

    .line 6
    .line 7
    iget-object v0, p1, Lcom/xinzhu/overmind/server/pm/MindPackage;->m:Ljava/lang/String;

    .line 8
    .line 9
    :cond_0
    iget-object p1, p0, Lcom/xinzhu/overmind/server/pm/u;->b:Ljava/util/Map;

    .line 10
    .line 11
    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 12
    .line 13
    .line 14
    move-result-object p1

    .line 15
    check-cast p1, Ljava/lang/Integer;

    .line 16
    .line 17
    if-eqz p1, :cond_1

    .line 18
    .line 19
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    .line 20
    .line 21
    .line 22
    move-result p1

    .line 23
    :goto_0
    add-int/lit16 p1, p1, 0x2710

    .line 24
    .line 25
    return p1

    .line 26
    :cond_1
    iget p1, p0, Lcom/xinzhu/overmind/server/pm/u;->c:I

    .line 27
    .line 28
    const/16 v1, 0x4e1f

    .line 29
    .line 30
    if-lt p1, v1, :cond_2

    .line 31
    .line 32
    const/4 p1, -0x1

    .line 33
    return p1

    .line 34
    :cond_2
    add-int/lit8 p1, p1, 0x1

    .line 35
    .line 36
    iput p1, p0, Lcom/xinzhu/overmind/server/pm/u;->c:I

    .line 37
    .line 38
    iget-object v1, p0, Lcom/xinzhu/overmind/server/pm/u;->b:Ljava/util/Map;

    .line 39
    .line 40
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 41
    .line 42
    .line 43
    move-result-object p1

    .line 44
    invoke-interface {v1, v0, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 45
    .line 46
    .line 47
    iget p1, p0, Lcom/xinzhu/overmind/server/pm/u;->c:I

    .line 48
    .line 49
    goto :goto_0
.end method

.method private b(Lcom/xinzhu/overmind/server/pm/MindPackageSettings;I)I
    .locals 2

    .line 1
    iget-object p1, p1, Lcom/xinzhu/overmind/server/pm/MindPackageSettings;->b:Lcom/xinzhu/overmind/server/pm/MindPackage;

    .line 2
    .line 3
    iget-object v0, p1, Lcom/xinzhu/overmind/server/pm/MindPackage;->o:Ljava/lang/String;

    .line 4
    .line 5
    if-nez v0, :cond_0

    .line 6
    .line 7
    iget-object v0, p1, Lcom/xinzhu/overmind/server/pm/MindPackage;->m:Ljava/lang/String;

    .line 8
    .line 9
    :cond_0
    iget-object p1, p0, Lcom/xinzhu/overmind/server/pm/u;->b:Ljava/util/Map;

    .line 10
    .line 11
    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 12
    .line 13
    .line 14
    move-result-object p1

    .line 15
    check-cast p1, Ljava/lang/Integer;

    .line 16
    .line 17
    if-eqz p1, :cond_1

    .line 18
    .line 19
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    .line 20
    .line 21
    .line 22
    move-result p1

    .line 23
    add-int/lit16 p1, p1, 0x2710

    .line 24
    .line 25
    return p1

    .line 26
    :cond_1
    const/16 p1, 0x4e1f

    .line 27
    .line 28
    if-lt p2, p1, :cond_2

    .line 29
    .line 30
    const/4 p1, -0x1

    .line 31
    return p1

    .line 32
    :cond_2
    iget p1, p0, Lcom/xinzhu/overmind/server/pm/u;->c:I

    .line 33
    .line 34
    invoke-static {p1, p2}, Ljava/lang/Math;->max(II)I

    .line 35
    .line 36
    .line 37
    move-result p1

    .line 38
    iput p1, p0, Lcom/xinzhu/overmind/server/pm/u;->c:I

    .line 39
    .line 40
    iget-object p1, p0, Lcom/xinzhu/overmind/server/pm/u;->b:Ljava/util/Map;

    .line 41
    .line 42
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 43
    .line 44
    .line 45
    move-result-object v1

    .line 46
    invoke-interface {p1, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 47
    .line 48
    .line 49
    add-int/lit16 p2, p2, 0x2710

    .line 50
    .line 51
    return p2
.end method

.method private f()V
    .locals 4

    .line 1
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    :try_start_0
    invoke-static {}, Lcom/xinzhu/overmind/a;->W()Ljava/io/File;

    .line 6
    .line 7
    .line 8
    move-result-object v1

    .line 9
    invoke-static {v1}, Lcom/xinzhu/overmind/utils/l;->v(Ljava/io/File;)[B

    .line 10
    .line 11
    .line 12
    move-result-object v1

    .line 13
    array-length v2, v1

    .line 14
    const/4 v3, 0x0

    .line 15
    invoke-virtual {v0, v1, v3, v2}, Landroid/os/Parcel;->unmarshall([BII)V

    .line 16
    .line 17
    .line 18
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 19
    .line 20
    .line 21
    invoke-virtual {v0}, Landroid/os/Parcel;->readInt()I

    .line 22
    .line 23
    .line 24
    move-result v1

    .line 25
    iput v1, p0, Lcom/xinzhu/overmind/server/pm/u;->c:I

    .line 26
    .line 27
    const-class v1, Ljava/util/HashMap;

    .line 28
    .line 29
    invoke-virtual {v1}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    .line 30
    .line 31
    .line 32
    move-result-object v1

    .line 33
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->readHashMap(Ljava/lang/ClassLoader;)Ljava/util/HashMap;

    .line 34
    .line 35
    .line 36
    move-result-object v1

    .line 37
    iget-object v2, p0, Lcom/xinzhu/overmind/server/pm/u;->b:Ljava/util/Map;

    .line 38
    .line 39
    monitor-enter v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 40
    :try_start_1
    iget-object v3, p0, Lcom/xinzhu/overmind/server/pm/u;->b:Ljava/util/Map;

    .line 41
    .line 42
    invoke-interface {v3}, Ljava/util/Map;->clear()V

    .line 43
    .line 44
    .line 45
    iget-object v3, p0, Lcom/xinzhu/overmind/server/pm/u;->b:Ljava/util/Map;

    .line 46
    .line 47
    invoke-interface {v3, v1}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 48
    .line 49
    .line 50
    monitor-exit v2

    .line 51
    goto :goto_0

    .line 52
    :catchall_0
    move-exception v1

    .line 53
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 54
    :try_start_2
    throw v1
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 55
    :catchall_1
    move-exception v1

    .line 56
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 57
    .line 58
    .line 59
    throw v1

    .line 60
    :catch_0
    :goto_0
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 61
    .line 62
    .line 63
    return-void
.end method

.method private i()V
    .locals 4

    .line 1
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    new-instance v1, Landroid/util/AtomicFile;

    .line 6
    .line 7
    invoke-static {}, Lcom/xinzhu/overmind/a;->W()Ljava/io/File;

    .line 8
    .line 9
    .line 10
    move-result-object v2

    .line 11
    invoke-direct {v1, v2}, Landroid/util/AtomicFile;-><init>(Ljava/io/File;)V

    .line 12
    .line 13
    .line 14
    const/4 v2, 0x0

    .line 15
    :try_start_0
    iget v3, p0, Lcom/xinzhu/overmind/server/pm/u;->c:I

    .line 16
    .line 17
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 18
    .line 19
    .line 20
    iget-object v3, p0, Lcom/xinzhu/overmind/server/pm/u;->b:Ljava/util/Map;

    .line 21
    .line 22
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeMap(Ljava/util/Map;)V

    .line 23
    .line 24
    .line 25
    invoke-virtual {v1}, Landroid/util/AtomicFile;->startWrite()Ljava/io/FileOutputStream;

    .line 26
    .line 27
    .line 28
    move-result-object v2

    .line 29
    invoke-static {v0, v2}, Lcom/xinzhu/overmind/utils/l;->z(Landroid/os/Parcel;Ljava/io/FileOutputStream;)V

    .line 30
    .line 31
    .line 32
    invoke-virtual {v1, v2}, Landroid/util/AtomicFile;->finishWrite(Ljava/io/FileOutputStream;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 33
    .line 34
    .line 35
    goto :goto_0

    .line 36
    :catchall_0
    move-exception v1

    .line 37
    goto :goto_1

    .line 38
    :catch_0
    move-exception v3

    .line 39
    :try_start_1
    invoke-virtual {v3}, Ljava/lang/Throwable;->printStackTrace()V

    .line 40
    .line 41
    .line 42
    invoke-virtual {v1, v2}, Landroid/util/AtomicFile;->failWrite(Ljava/io/FileOutputStream;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 43
    .line 44
    .line 45
    :goto_0
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 46
    .line 47
    .line 48
    return-void

    .line 49
    :goto_1
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 50
    .line 51
    .line 52
    throw v1
.end method

.method private k(Ljava/io/File;)V
    .locals 14

    .line 1
    const-string v0, " path: "

    .line 2
    .line 3
    const-string v1, "try to fix corrupted settings by transfer, userId: "

    .line 4
    .line 5
    const-string v2, "Settings"

    .line 6
    .line 7
    invoke-virtual {p1}, Ljava/io/File;->getName()Ljava/lang/String;

    .line 8
    .line 9
    .line 10
    move-result-object p1

    .line 11
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    .line 12
    .line 13
    .line 14
    move-result-object v3

    .line 15
    invoke-static {p1}, Lcom/xinzhu/overmind/a;->Q(Ljava/lang/String;)Ljava/io/File;

    .line 16
    .line 17
    .line 18
    move-result-object v4

    .line 19
    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    .line 20
    .line 21
    .line 22
    move-result v5

    .line 23
    if-nez v5, :cond_0

    .line 24
    .line 25
    return-void

    .line 26
    :cond_0
    const/4 v5, -0x1

    .line 27
    const/4 v6, 0x1

    .line 28
    const/4 v7, 0x0

    .line 29
    :try_start_0
    invoke-static {p1}, Lcom/xinzhu/overmind/a;->R(Ljava/lang/String;)Ljava/io/File;

    .line 30
    .line 31
    .line 32
    move-result-object v8

    .line 33
    invoke-virtual {v8}, Ljava/io/File;->exists()Z

    .line 34
    .line 35
    .line 36
    move-result v8

    .line 37
    const/16 v9, 0x80

    .line 38
    .line 39
    if-eqz v8, :cond_5

    .line 40
    .line 41
    invoke-static {p1}, Lcom/xinzhu/overmind/a;->c0(Ljava/lang/String;)Ljava/io/File;

    .line 42
    .line 43
    .line 44
    move-result-object v8

    .line 45
    invoke-virtual {v8}, Ljava/io/File;->exists()Z

    .line 46
    .line 47
    .line 48
    move-result v8

    .line 49
    if-eqz v8, :cond_5

    .line 50
    .line 51
    const-string v4, "package settings run into new routine"

    .line 52
    .line 53
    invoke-static {v2, v4}, Lcom/xinzhu/overmind/b;->c(Ljava/lang/String;Ljava/lang/String;)I

    .line 54
    .line 55
    .line 56
    invoke-static {p1}, Lcom/xinzhu/overmind/server/pm/MindReliablePackageSettings;->c(Ljava/lang/String;)Lcom/xinzhu/overmind/server/pm/MindReliablePackageSettings;

    .line 57
    .line 58
    .line 59
    move-result-object v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 60
    :try_start_1
    invoke-static {p1}, Lcom/xinzhu/overmind/server/pm/MindVolatilePackageSettings;->a(Ljava/lang/String;)Lcom/xinzhu/overmind/server/pm/MindVolatilePackageSettings;

    .line 61
    .line 62
    .line 63
    move-result-object v8

    .line 64
    if-eqz v8, :cond_2

    .line 65
    .line 66
    if-eqz v4, :cond_2

    .line 67
    .line 68
    new-instance v10, Lcom/xinzhu/overmind/server/pm/MindPackageSettings;

    .line 69
    .line 70
    invoke-direct {v10, v4, v8}, Lcom/xinzhu/overmind/server/pm/MindPackageSettings;-><init>(Lcom/xinzhu/overmind/server/pm/MindReliablePackageSettings;Lcom/xinzhu/overmind/server/pm/MindVolatilePackageSettings;)V

    .line 71
    .line 72
    .line 73
    iget-object v11, v4, Lcom/xinzhu/overmind/server/pm/MindReliablePackageSettings;->d:Lcom/xinzhu/overmind/entity/pm/InstallOption;

    .line 74
    .line 75
    invoke-virtual {v11, v6}, Lcom/xinzhu/overmind/entity/pm/InstallOption;->f(I)Z

    .line 76
    .line 77
    .line 78
    move-result v11

    .line 79
    if-eqz v11, :cond_1

    .line 80
    .line 81
    invoke-static {}, Lcom/xinzhu/overmind/Overmind;->getContext()Landroid/content/Context;

    .line 82
    .line 83
    .line 84
    move-result-object v11

    .line 85
    invoke-virtual {v11}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    .line 86
    .line 87
    .line 88
    move-result-object v11

    .line 89
    invoke-virtual {v11, p1, v9}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    .line 90
    .line 91
    .line 92
    move-result-object v9

    .line 93
    iget-object v9, v9, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    .line 94
    .line 95
    iget-object v9, v9, Landroid/content/pm/ApplicationInfo;->sourceDir:Ljava/lang/String;

    .line 96
    .line 97
    iget-object v11, v8, Lcom/xinzhu/overmind/server/pm/MindVolatilePackageSettings;->c:Lcom/xinzhu/overmind/server/pm/MindPackage;

    .line 98
    .line 99
    iget-object v11, v11, Lcom/xinzhu/overmind/server/pm/MindPackage;->v:Ljava/lang/String;

    .line 100
    .line 101
    invoke-virtual {v9, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 102
    .line 103
    .line 104
    move-result v11

    .line 105
    if-nez v11, :cond_1

    .line 106
    .line 107
    invoke-static {}, Lcom/xinzhu/overmind/server/h;->d()Lcom/xinzhu/overmind/server/h;

    .line 108
    .line 109
    .line 110
    move-result-object v11

    .line 111
    iget-object v12, v8, Lcom/xinzhu/overmind/server/pm/MindVolatilePackageSettings;->c:Lcom/xinzhu/overmind/server/pm/MindPackage;

    .line 112
    .line 113
    iget-object v12, v12, Lcom/xinzhu/overmind/server/pm/MindPackage;->m:Ljava/lang/String;

    .line 114
    .line 115
    invoke-virtual {v11, v12}, Lcom/xinzhu/overmind/server/h;->k(Ljava/lang/String;)V

    .line 116
    .line 117
    .line 118
    iget-object v11, v8, Lcom/xinzhu/overmind/server/pm/MindVolatilePackageSettings;->c:Lcom/xinzhu/overmind/server/pm/MindPackage;

    .line 119
    .line 120
    iput-object v9, v11, Lcom/xinzhu/overmind/server/pm/MindPackage;->v:Ljava/lang/String;

    .line 121
    .line 122
    invoke-static {}, Lcom/xinzhu/overmind/server/pm/i;->get()Lcom/xinzhu/overmind/server/pm/i;

    .line 123
    .line 124
    .line 125
    move-result-object v9

    .line 126
    invoke-virtual {v9, v10}, Lcom/xinzhu/overmind/server/pm/i;->updatePackage(Lcom/xinzhu/overmind/server/pm/MindPackageSettings;)I

    .line 127
    .line 128
    .line 129
    :cond_1
    iget-object v9, p0, Lcom/xinzhu/overmind/server/pm/u;->a:Landroid/util/ArrayMap;

    .line 130
    .line 131
    iget-object v11, v10, Lcom/xinzhu/overmind/server/pm/MindPackageSettings;->b:Lcom/xinzhu/overmind/server/pm/MindPackage;

    .line 132
    .line 133
    iget-object v11, v11, Lcom/xinzhu/overmind/server/pm/MindPackage;->m:Ljava/lang/String;

    .line 134
    .line 135
    invoke-virtual {v9, v11, v10}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 136
    .line 137
    .line 138
    iget-object v8, v8, Lcom/xinzhu/overmind/server/pm/MindVolatilePackageSettings;->c:Lcom/xinzhu/overmind/server/pm/MindPackage;

    .line 139
    .line 140
    invoke-static {}, Lcom/xinzhu/overmind/server/pm/MindPackageUserState;->b()Lcom/xinzhu/overmind/server/pm/MindPackageUserState;

    .line 141
    .line 142
    .line 143
    move-result-object v9

    .line 144
    invoke-static {v8, v7, v9, v7}, Lcom/xinzhu/overmind/server/pm/q;->f(Lcom/xinzhu/overmind/server/pm/MindPackage;ILcom/xinzhu/overmind/server/pm/MindPackageUserState;I)Landroid/content/pm/ApplicationInfo;

    .line 145
    .line 146
    .line 147
    move-result-object v9

    .line 148
    iput-object v9, v8, Lcom/xinzhu/overmind/server/pm/MindPackage;->s:Landroid/content/pm/ApplicationInfo;

    .line 149
    .line 150
    invoke-virtual {v10}, Lcom/xinzhu/overmind/server/pm/MindPackageSettings;->F()Z

    .line 151
    .line 152
    .line 153
    goto :goto_0

    .line 154
    :cond_2
    const-string v8, "fatal error when fetch package settings, check it!!!!!!!!!"

    .line 155
    .line 156
    invoke-static {v2, v8}, Lcom/xinzhu/overmind/utils/y;->c(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 157
    .line 158
    .line 159
    :goto_0
    invoke-virtual {v3}, Landroid/os/Parcel;->recycle()V

    .line 160
    .line 161
    .line 162
    return-void

    .line 163
    :catchall_0
    move-exception v8

    .line 164
    :try_start_2
    invoke-virtual {v8}, Ljava/lang/Throwable;->printStackTrace()V

    .line 165
    .line 166
    .line 167
    const-string v8, "package settings run into new ambulance routine"

    .line 168
    .line 169
    invoke-static {v2, v8}, Lcom/xinzhu/overmind/b;->c(Ljava/lang/String;Ljava/lang/String;)I

    .line 170
    .line 171
    .line 172
    if-eqz v4, :cond_4

    .line 173
    .line 174
    iget-object v8, v4, Lcom/xinzhu/overmind/server/pm/MindReliablePackageSettings;->d:Lcom/xinzhu/overmind/entity/pm/InstallOption;

    .line 175
    .line 176
    iget v8, v8, Lcom/xinzhu/overmind/entity/pm/InstallOption;->b:I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 177
    .line 178
    if-ne v8, v6, :cond_3

    .line 179
    .line 180
    :try_start_3
    invoke-static {}, Lcom/xinzhu/overmind/Overmind;->getContext()Landroid/content/Context;

    .line 181
    .line 182
    .line 183
    move-result-object v4

    .line 184
    invoke-virtual {v4}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    .line 185
    .line 186
    .line 187
    move-result-object v4

    .line 188
    invoke-virtual {v4, p1, v7}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    .line 189
    .line 190
    .line 191
    move-result-object v4

    .line 192
    invoke-static {}, Lcom/xinzhu/overmind/server/pm/MindPackageManagerService;->get()Lcom/xinzhu/overmind/server/pm/MindPackageManagerService;

    .line 193
    .line 194
    .line 195
    move-result-object v8

    .line 196
    iget-object v4, v4, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    .line 197
    .line 198
    iget-object v4, v4, Landroid/content/pm/ApplicationInfo;->publicSourceDir:Ljava/lang/String;

    .line 199
    .line 200
    invoke-static {}, Lcom/xinzhu/overmind/entity/pm/InstallOption;->d()Lcom/xinzhu/overmind/entity/pm/InstallOption;

    .line 201
    .line 202
    .line 203
    move-result-object v9

    .line 204
    invoke-virtual {v8, v4, v9, v5}, Lcom/xinzhu/overmind/server/pm/MindPackageManagerService;->installPackageAsUser(Ljava/lang/String;Lcom/xinzhu/overmind/entity/pm/InstallOption;I)Lcom/xinzhu/overmind/entity/pm/InstallResult;
    :try_end_3
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 205
    .line 206
    .line 207
    goto :goto_2

    .line 208
    :cond_3
    :try_start_4
    invoke-static {p1}, Lcom/xinzhu/overmind/a;->d(Ljava/lang/String;)Ljava/io/File;

    .line 209
    .line 210
    .line 211
    move-result-object v8

    .line 212
    iget-object v9, v4, Lcom/xinzhu/overmind/server/pm/MindReliablePackageSettings;->h:Ljava/util/Map;

    .line 213
    .line 214
    invoke-interface {v9}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    .line 215
    .line 216
    .line 217
    move-result-object v9

    .line 218
    invoke-interface {v9}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 219
    .line 220
    .line 221
    move-result-object v9

    .line 222
    :goto_1
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    .line 223
    .line 224
    .line 225
    move-result v10

    .line 226
    if-eqz v10, :cond_4

    .line 227
    .line 228
    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 229
    .line 230
    .line 231
    move-result-object v10

    .line 232
    check-cast v10, Ljava/util/Map$Entry;

    .line 233
    .line 234
    invoke-interface {v10}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    .line 235
    .line 236
    .line 237
    move-result-object v11

    .line 238
    check-cast v11, Ljava/lang/Integer;

    .line 239
    .line 240
    invoke-virtual {v11}, Ljava/lang/Integer;->intValue()I

    .line 241
    .line 242
    .line 243
    move-result v11

    .line 244
    invoke-interface {v10}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    .line 245
    .line 246
    .line 247
    move-result-object v10

    .line 248
    check-cast v10, Lcom/xinzhu/overmind/server/pm/MindPackageUserState;

    .line 249
    .line 250
    new-instance v10, Ljava/lang/StringBuilder;

    .line 251
    .line 252
    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    .line 253
    .line 254
    .line 255
    invoke-virtual {v10, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 256
    .line 257
    .line 258
    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 259
    .line 260
    .line 261
    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 262
    .line 263
    .line 264
    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 265
    .line 266
    .line 267
    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 268
    .line 269
    .line 270
    move-result-object v10

    .line 271
    invoke-static {v2, v10}, Lcom/xinzhu/overmind/b;->c(Ljava/lang/String;Ljava/lang/String;)I

    .line 272
    .line 273
    .line 274
    invoke-static {}, Lcom/xinzhu/overmind/server/pm/MindPackageManagerService;->get()Lcom/xinzhu/overmind/server/pm/MindPackageManagerService;

    .line 275
    .line 276
    .line 277
    move-result-object v10

    .line 278
    invoke-virtual {v8}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    .line 279
    .line 280
    .line 281
    move-result-object v12

    .line 282
    iget v13, v4, Lcom/xinzhu/overmind/server/pm/MindReliablePackageSettings;->c:I

    .line 283
    .line 284
    invoke-virtual {v10, v12, v11, v13}, Lcom/xinzhu/overmind/server/pm/MindPackageManagerService;->installPackageAsTransfer(Ljava/lang/String;II)Lcom/xinzhu/overmind/entity/pm/InstallResult;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 285
    .line 286
    .line 287
    goto :goto_1

    .line 288
    :catch_0
    :cond_4
    :goto_2
    invoke-virtual {v3}, Landroid/os/Parcel;->recycle()V

    .line 289
    .line 290
    .line 291
    return-void

    .line 292
    :cond_5
    :try_start_5
    const-string v8, "package settings run into old normal routine"

    .line 293
    .line 294
    invoke-static {v2, v8}, Lcom/xinzhu/overmind/b;->c(Ljava/lang/String;Ljava/lang/String;)I

    .line 295
    .line 296
    .line 297
    invoke-static {v4}, Lcom/xinzhu/overmind/utils/l;->v(Ljava/io/File;)[B

    .line 298
    .line 299
    .line 300
    move-result-object v4

    .line 301
    array-length v8, v4

    .line 302
    invoke-virtual {v3, v4, v7, v8}, Landroid/os/Parcel;->unmarshall([BII)V

    .line 303
    .line 304
    .line 305
    invoke-virtual {v3, v7}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 306
    .line 307
    .line 308
    new-instance v4, Lcom/xinzhu/overmind/server/pm/MindPackageSettings;

    .line 309
    .line 310
    invoke-direct {v4, v3}, Lcom/xinzhu/overmind/server/pm/MindPackageSettings;-><init>(Landroid/os/Parcel;)V

    .line 311
    .line 312
    .line 313
    iget-object v8, v4, Lcom/xinzhu/overmind/server/pm/MindPackageSettings;->d:Lcom/xinzhu/overmind/entity/pm/InstallOption;

    .line 314
    .line 315
    invoke-virtual {v8, v6}, Lcom/xinzhu/overmind/entity/pm/InstallOption;->f(I)Z

    .line 316
    .line 317
    .line 318
    move-result v8

    .line 319
    if-eqz v8, :cond_6

    .line 320
    .line 321
    invoke-static {}, Lcom/xinzhu/overmind/Overmind;->getContext()Landroid/content/Context;

    .line 322
    .line 323
    .line 324
    move-result-object v8

    .line 325
    invoke-virtual {v8}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    .line 326
    .line 327
    .line 328
    move-result-object v8

    .line 329
    invoke-virtual {v8, p1, v9}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    .line 330
    .line 331
    .line 332
    move-result-object v8

    .line 333
    iget-object v8, v8, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    .line 334
    .line 335
    iget-object v8, v8, Landroid/content/pm/ApplicationInfo;->sourceDir:Ljava/lang/String;

    .line 336
    .line 337
    iget-object v9, v4, Lcom/xinzhu/overmind/server/pm/MindPackageSettings;->b:Lcom/xinzhu/overmind/server/pm/MindPackage;

    .line 338
    .line 339
    iget-object v9, v9, Lcom/xinzhu/overmind/server/pm/MindPackage;->v:Ljava/lang/String;

    .line 340
    .line 341
    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 342
    .line 343
    .line 344
    move-result v9

    .line 345
    if-nez v9, :cond_6

    .line 346
    .line 347
    invoke-static {}, Lcom/xinzhu/overmind/server/h;->d()Lcom/xinzhu/overmind/server/h;

    .line 348
    .line 349
    .line 350
    move-result-object v9

    .line 351
    iget-object v10, v4, Lcom/xinzhu/overmind/server/pm/MindPackageSettings;->b:Lcom/xinzhu/overmind/server/pm/MindPackage;

    .line 352
    .line 353
    iget-object v10, v10, Lcom/xinzhu/overmind/server/pm/MindPackage;->m:Ljava/lang/String;

    .line 354
    .line 355
    invoke-virtual {v9, v10}, Lcom/xinzhu/overmind/server/h;->k(Ljava/lang/String;)V

    .line 356
    .line 357
    .line 358
    iget-object v9, v4, Lcom/xinzhu/overmind/server/pm/MindPackageSettings;->b:Lcom/xinzhu/overmind/server/pm/MindPackage;

    .line 359
    .line 360
    iput-object v8, v9, Lcom/xinzhu/overmind/server/pm/MindPackage;->v:Ljava/lang/String;

    .line 361
    .line 362
    invoke-static {}, Lcom/xinzhu/overmind/server/pm/i;->get()Lcom/xinzhu/overmind/server/pm/i;

    .line 363
    .line 364
    .line 365
    move-result-object v8

    .line 366
    invoke-virtual {v8, v4}, Lcom/xinzhu/overmind/server/pm/i;->updatePackage(Lcom/xinzhu/overmind/server/pm/MindPackageSettings;)I

    .line 367
    .line 368
    .line 369
    :cond_6
    iget-object v8, p0, Lcom/xinzhu/overmind/server/pm/u;->a:Landroid/util/ArrayMap;

    .line 370
    .line 371
    iget-object v9, v4, Lcom/xinzhu/overmind/server/pm/MindPackageSettings;->b:Lcom/xinzhu/overmind/server/pm/MindPackage;

    .line 372
    .line 373
    iget-object v9, v9, Lcom/xinzhu/overmind/server/pm/MindPackage;->m:Ljava/lang/String;

    .line 374
    .line 375
    invoke-virtual {v8, v9, v4}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 376
    .line 377
    .line 378
    iget-object v8, v4, Lcom/xinzhu/overmind/server/pm/MindPackageSettings;->b:Lcom/xinzhu/overmind/server/pm/MindPackage;

    .line 379
    .line 380
    invoke-static {}, Lcom/xinzhu/overmind/server/pm/MindPackageUserState;->b()Lcom/xinzhu/overmind/server/pm/MindPackageUserState;

    .line 381
    .line 382
    .line 383
    move-result-object v9

    .line 384
    invoke-static {v8, v7, v9, v7}, Lcom/xinzhu/overmind/server/pm/q;->f(Lcom/xinzhu/overmind/server/pm/MindPackage;ILcom/xinzhu/overmind/server/pm/MindPackageUserState;I)Landroid/content/pm/ApplicationInfo;

    .line 385
    .line 386
    .line 387
    move-result-object v9

    .line 388
    iput-object v9, v8, Lcom/xinzhu/overmind/server/pm/MindPackage;->s:Landroid/content/pm/ApplicationInfo;

    .line 389
    .line 390
    invoke-virtual {v4}, Lcom/xinzhu/overmind/server/pm/MindPackageSettings;->F()Z

    .line 391
    .line 392
    .line 393
    const-string v4, "new mps save success"

    .line 394
    .line 395
    invoke-static {v2, v4}, Lcom/xinzhu/overmind/b;->c(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 396
    .line 397
    .line 398
    :catch_1
    :cond_7
    :goto_3
    invoke-virtual {v3}, Landroid/os/Parcel;->recycle()V

    .line 399
    .line 400
    .line 401
    goto/16 :goto_5

    .line 402
    .line 403
    :catchall_1
    move-exception v4

    .line 404
    :try_start_6
    invoke-virtual {v4}, Ljava/lang/Throwable;->printStackTrace()V

    .line 405
    .line 406
    .line 407
    invoke-virtual {v3, v7}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 408
    .line 409
    .line 410
    const-string v4, "package settings run into old ambulance routine"

    .line 411
    .line 412
    invoke-static {v2, v4}, Lcom/xinzhu/overmind/b;->c(Ljava/lang/String;Ljava/lang/String;)I

    .line 413
    .line 414
    .line 415
    new-instance v4, Lcom/xinzhu/overmind/server/pm/MindPackageSettingsAmbulance;

    .line 416
    .line 417
    invoke-direct {v4, v3}, Lcom/xinzhu/overmind/server/pm/MindPackageSettingsAmbulance;-><init>(Landroid/os/Parcel;)V

    .line 418
    .line 419
    .line 420
    new-instance v8, Lcom/xinzhu/overmind/server/pm/MindPackageSettings;

    .line 421
    .line 422
    invoke-direct {v8}, Lcom/xinzhu/overmind/server/pm/MindPackageSettings;-><init>()V

    .line 423
    .line 424
    .line 425
    iget v9, v4, Lcom/xinzhu/overmind/server/pm/MindPackageSettingsAmbulance;->c:I

    .line 426
    .line 427
    iput v9, v8, Lcom/xinzhu/overmind/server/pm/MindPackageSettings;->c:I

    .line 428
    .line 429
    iget-object v9, v4, Lcom/xinzhu/overmind/server/pm/MindPackageSettingsAmbulance;->d:Lcom/xinzhu/overmind/entity/pm/InstallOption;

    .line 430
    .line 431
    iput-object v9, v8, Lcom/xinzhu/overmind/server/pm/MindPackageSettings;->d:Lcom/xinzhu/overmind/entity/pm/InstallOption;

    .line 432
    .line 433
    iget-object v10, v4, Lcom/xinzhu/overmind/server/pm/MindPackageSettingsAmbulance;->h:Ljava/util/Map;

    .line 434
    .line 435
    iput-object v10, v8, Lcom/xinzhu/overmind/server/pm/MindPackageSettings;->h:Ljava/util/Map;

    .line 436
    .line 437
    iget-object v10, v4, Lcom/xinzhu/overmind/server/pm/MindPackageSettingsAmbulance;->e:Ljava/util/HashSet;

    .line 438
    .line 439
    iput-object v10, v8, Lcom/xinzhu/overmind/server/pm/MindPackageSettings;->e:Ljava/util/HashSet;

    .line 440
    .line 441
    iget-boolean v10, v4, Lcom/xinzhu/overmind/server/pm/MindPackageSettingsAmbulance;->f:Z

    .line 442
    .line 443
    iput-boolean v10, v8, Lcom/xinzhu/overmind/server/pm/MindPackageSettings;->f:Z

    .line 444
    .line 445
    iget-boolean v4, v4, Lcom/xinzhu/overmind/server/pm/MindPackageSettingsAmbulance;->g:Z

    .line 446
    .line 447
    iput-boolean v4, v8, Lcom/xinzhu/overmind/server/pm/MindPackageSettings;->g:Z

    .line 448
    .line 449
    iget v4, v9, Lcom/xinzhu/overmind/entity/pm/InstallOption;->b:I
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    .line 450
    .line 451
    if-ne v4, v6, :cond_8

    .line 452
    .line 453
    :try_start_7
    invoke-static {}, Lcom/xinzhu/overmind/Overmind;->getContext()Landroid/content/Context;

    .line 454
    .line 455
    .line 456
    move-result-object v0

    .line 457
    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    .line 458
    .line 459
    .line 460
    move-result-object v0

    .line 461
    invoke-virtual {v0, p1, v7}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    .line 462
    .line 463
    .line 464
    move-result-object p1

    .line 465
    invoke-static {}, Lcom/xinzhu/overmind/server/pm/MindPackageManagerService;->get()Lcom/xinzhu/overmind/server/pm/MindPackageManagerService;

    .line 466
    .line 467
    .line 468
    move-result-object v0

    .line 469
    iget-object p1, p1, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    .line 470
    .line 471
    iget-object p1, p1, Landroid/content/pm/ApplicationInfo;->publicSourceDir:Ljava/lang/String;

    .line 472
    .line 473
    invoke-static {}, Lcom/xinzhu/overmind/entity/pm/InstallOption;->d()Lcom/xinzhu/overmind/entity/pm/InstallOption;

    .line 474
    .line 475
    .line 476
    move-result-object v1

    .line 477
    invoke-virtual {v0, p1, v1, v5}, Lcom/xinzhu/overmind/server/pm/MindPackageManagerService;->installPackageAsUser(Ljava/lang/String;Lcom/xinzhu/overmind/entity/pm/InstallOption;I)Lcom/xinzhu/overmind/entity/pm/InstallResult;
    :try_end_7
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_7 .. :try_end_7} :catch_1
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    .line 478
    .line 479
    .line 480
    goto :goto_3

    .line 481
    :cond_8
    :try_start_8
    invoke-static {p1}, Lcom/xinzhu/overmind/a;->d(Ljava/lang/String;)Ljava/io/File;

    .line 482
    .line 483
    .line 484
    move-result-object p1

    .line 485
    iget-object v4, v8, Lcom/xinzhu/overmind/server/pm/MindPackageSettings;->h:Ljava/util/Map;

    .line 486
    .line 487
    invoke-interface {v4}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    .line 488
    .line 489
    .line 490
    move-result-object v4

    .line 491
    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 492
    .line 493
    .line 494
    move-result-object v4

    .line 495
    :goto_4
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    .line 496
    .line 497
    .line 498
    move-result v5

    .line 499
    if-eqz v5, :cond_7

    .line 500
    .line 501
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 502
    .line 503
    .line 504
    move-result-object v5

    .line 505
    check-cast v5, Ljava/util/Map$Entry;

    .line 506
    .line 507
    invoke-interface {v5}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    .line 508
    .line 509
    .line 510
    move-result-object v6

    .line 511
    check-cast v6, Ljava/lang/Integer;

    .line 512
    .line 513
    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    .line 514
    .line 515
    .line 516
    move-result v6

    .line 517
    invoke-interface {v5}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    .line 518
    .line 519
    .line 520
    move-result-object v5

    .line 521
    check-cast v5, Lcom/xinzhu/overmind/server/pm/MindPackageUserState;

    .line 522
    .line 523
    new-instance v5, Ljava/lang/StringBuilder;

    .line 524
    .line 525
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 526
    .line 527
    .line 528
    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 529
    .line 530
    .line 531
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 532
    .line 533
    .line 534
    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 535
    .line 536
    .line 537
    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 538
    .line 539
    .line 540
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 541
    .line 542
    .line 543
    move-result-object v5

    .line 544
    invoke-static {v2, v5}, Lcom/xinzhu/overmind/b;->c(Ljava/lang/String;Ljava/lang/String;)I

    .line 545
    .line 546
    .line 547
    invoke-static {}, Lcom/xinzhu/overmind/server/pm/MindPackageManagerService;->get()Lcom/xinzhu/overmind/server/pm/MindPackageManagerService;

    .line 548
    .line 549
    .line 550
    move-result-object v5

    .line 551
    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    .line 552
    .line 553
    .line 554
    move-result-object v7

    .line 555
    iget v9, v8, Lcom/xinzhu/overmind/server/pm/MindPackageSettings;->c:I

    .line 556
    .line 557
    invoke-virtual {v5, v7, v6, v9}, Lcom/xinzhu/overmind/server/pm/MindPackageManagerService;->installPackageAsTransfer(Ljava/lang/String;II)Lcom/xinzhu/overmind/entity/pm/InstallResult;
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_2

    .line 558
    .line 559
    .line 560
    goto :goto_4

    .line 561
    :goto_5
    return-void

    .line 562
    :catchall_2
    move-exception p1

    .line 563
    invoke-virtual {v3}, Landroid/os/Parcel;->recycle()V

    .line 564
    .line 565
    .line 566
    throw p1
.end method


# virtual methods
.method c(Ljava/lang/String;Landroid/content/pm/PackageParser$Package;Lcom/xinzhu/overmind/entity/pm/InstallOption;)Lcom/xinzhu/overmind/server/pm/MindPackageSettings;
    .locals 2

    .line 1
    new-instance v0, Lcom/xinzhu/overmind/server/pm/MindPackageSettings;

    .line 2
    .line 3
    invoke-direct {v0}, Lcom/xinzhu/overmind/server/pm/MindPackageSettings;-><init>()V

    .line 4
    .line 5
    .line 6
    iput-object p3, v0, Lcom/xinzhu/overmind/server/pm/MindPackageSettings;->d:Lcom/xinzhu/overmind/entity/pm/InstallOption;

    .line 7
    .line 8
    new-instance p3, Lcom/xinzhu/overmind/server/pm/MindPackage;

    .line 9
    .line 10
    invoke-direct {p3, p2}, Lcom/xinzhu/overmind/server/pm/MindPackage;-><init>(Landroid/content/pm/PackageParser$Package;)V

    .line 11
    .line 12
    .line 13
    iput-object p3, v0, Lcom/xinzhu/overmind/server/pm/MindPackageSettings;->b:Lcom/xinzhu/overmind/server/pm/MindPackage;

    .line 14
    .line 15
    iget-object p2, p0, Lcom/xinzhu/overmind/server/pm/u;->a:Landroid/util/ArrayMap;

    .line 16
    .line 17
    monitor-enter p2

    .line 18
    :try_start_0
    iget-object p3, p0, Lcom/xinzhu/overmind/server/pm/u;->a:Landroid/util/ArrayMap;

    .line 19
    .line 20
    invoke-virtual {p3, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 21
    .line 22
    .line 23
    move-result-object p3

    .line 24
    check-cast p3, Lcom/xinzhu/overmind/server/pm/MindPackageSettings;

    .line 25
    .line 26
    if-eqz p3, :cond_0

    .line 27
    .line 28
    iget v1, p3, Lcom/xinzhu/overmind/server/pm/MindPackageSettings;->c:I

    .line 29
    .line 30
    iput v1, v0, Lcom/xinzhu/overmind/server/pm/MindPackageSettings;->c:I

    .line 31
    .line 32
    iget-object v1, p3, Lcom/xinzhu/overmind/server/pm/MindPackageSettings;->h:Ljava/util/Map;

    .line 33
    .line 34
    iput-object v1, v0, Lcom/xinzhu/overmind/server/pm/MindPackageSettings;->h:Ljava/util/Map;

    .line 35
    .line 36
    iget-boolean v1, p3, Lcom/xinzhu/overmind/server/pm/MindPackageSettings;->f:Z

    .line 37
    .line 38
    iput-boolean v1, v0, Lcom/xinzhu/overmind/server/pm/MindPackageSettings;->f:Z

    .line 39
    .line 40
    iget-boolean p3, p3, Lcom/xinzhu/overmind/server/pm/MindPackageSettings;->g:Z

    .line 41
    .line 42
    iput-boolean p3, v0, Lcom/xinzhu/overmind/server/pm/MindPackageSettings;->g:Z

    .line 43
    .line 44
    goto :goto_0

    .line 45
    :cond_0
    invoke-virtual {p0, v0}, Lcom/xinzhu/overmind/server/pm/u;->g(Lcom/xinzhu/overmind/server/pm/MindPackageSettings;)Z

    .line 46
    .line 47
    .line 48
    move-result p3

    .line 49
    if-eqz p3, :cond_2

    .line 50
    .line 51
    :goto_0
    monitor-exit p2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 52
    iget-object p2, p0, Lcom/xinzhu/overmind/server/pm/u;->a:Landroid/util/ArrayMap;

    .line 53
    .line 54
    iget-object p3, v0, Lcom/xinzhu/overmind/server/pm/MindPackageSettings;->b:Lcom/xinzhu/overmind/server/pm/MindPackage;

    .line 55
    .line 56
    iget-object p3, p3, Lcom/xinzhu/overmind/server/pm/MindPackage;->m:Ljava/lang/String;

    .line 57
    .line 58
    invoke-virtual {p2, p3, v0}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 59
    .line 60
    .line 61
    iget-object p2, v0, Lcom/xinzhu/overmind/server/pm/MindPackageSettings;->b:Lcom/xinzhu/overmind/server/pm/MindPackage;

    .line 62
    .line 63
    invoke-static {}, Lcom/xinzhu/overmind/server/pm/MindPackageUserState;->b()Lcom/xinzhu/overmind/server/pm/MindPackageUserState;

    .line 64
    .line 65
    .line 66
    move-result-object p3

    .line 67
    const/4 v1, 0x0

    .line 68
    invoke-static {p2, v1, p3, v1}, Lcom/xinzhu/overmind/server/pm/q;->f(Lcom/xinzhu/overmind/server/pm/MindPackage;ILcom/xinzhu/overmind/server/pm/MindPackageUserState;I)Landroid/content/pm/ApplicationInfo;

    .line 69
    .line 70
    .line 71
    move-result-object p3

    .line 72
    iput-object p3, p2, Lcom/xinzhu/overmind/server/pm/MindPackage;->s:Landroid/content/pm/ApplicationInfo;

    .line 73
    .line 74
    invoke-static {p1}, Lna/d;->f(Ljava/lang/String;)Z

    .line 75
    .line 76
    .line 77
    move-result p1

    .line 78
    if-eqz p1, :cond_1

    .line 79
    .line 80
    invoke-static {}, Lcom/xinzhu/overmind/Overmind;->get()Lcom/xinzhu/overmind/Overmind;

    .line 81
    .line 82
    .line 83
    move-result-object p1

    .line 84
    invoke-virtual {p1}, Lcom/xinzhu/overmind/Overmind;->use32BitMainPackage()Z

    .line 85
    .line 86
    .line 87
    move-result p1

    .line 88
    if-eqz p1, :cond_1

    .line 89
    .line 90
    invoke-virtual {v0}, Lcom/xinzhu/overmind/server/pm/MindPackageSettings;->L()Z

    .line 91
    .line 92
    .line 93
    move-result p1

    .line 94
    if-eqz p1, :cond_1

    .line 95
    .line 96
    const/4 p1, 0x1

    .line 97
    invoke-virtual {v0, p1}, Lcom/xinzhu/overmind/server/pm/MindPackageSettings;->I(Z)V

    .line 98
    .line 99
    .line 100
    :cond_1
    return-object v0

    .line 101
    :cond_2
    :try_start_1
    new-instance p1, Ljava/lang/RuntimeException;

    .line 102
    .line 103
    const-string p3, "registerAppIdLPw err."

    .line 104
    .line 105
    invoke-direct {p1, p3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .line 106
    .line 107
    .line 108
    throw p1

    .line 109
    :catchall_0
    move-exception p1

    .line 110
    monitor-exit p2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 111
    throw p1
.end method

.method d(Ljava/lang/String;Landroid/content/pm/PackageParser$Package;I)Lcom/xinzhu/overmind/server/pm/MindPackageSettings;
    .locals 2

    .line 1
    new-instance v0, Lcom/xinzhu/overmind/server/pm/MindPackageSettings;

    .line 2
    .line 3
    invoke-direct {v0}, Lcom/xinzhu/overmind/server/pm/MindPackageSettings;-><init>()V

    .line 4
    .line 5
    .line 6
    new-instance v1, Lcom/xinzhu/overmind/server/pm/MindPackage;

    .line 7
    .line 8
    invoke-direct {v1, p2}, Lcom/xinzhu/overmind/server/pm/MindPackage;-><init>(Landroid/content/pm/PackageParser$Package;)V

    .line 9
    .line 10
    .line 11
    iput-object v1, v0, Lcom/xinzhu/overmind/server/pm/MindPackageSettings;->b:Lcom/xinzhu/overmind/server/pm/MindPackage;

    .line 12
    .line 13
    iget-object p2, p0, Lcom/xinzhu/overmind/server/pm/u;->a:Landroid/util/ArrayMap;

    .line 14
    .line 15
    monitor-enter p2

    .line 16
    :try_start_0
    iget-object v1, p0, Lcom/xinzhu/overmind/server/pm/u;->a:Landroid/util/ArrayMap;

    .line 17
    .line 18
    invoke-virtual {v1, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 19
    .line 20
    .line 21
    move-result-object p1

    .line 22
    check-cast p1, Lcom/xinzhu/overmind/server/pm/MindPackageSettings;

    .line 23
    .line 24
    if-eqz p1, :cond_0

    .line 25
    .line 26
    iget p3, p1, Lcom/xinzhu/overmind/server/pm/MindPackageSettings;->c:I

    .line 27
    .line 28
    iput p3, v0, Lcom/xinzhu/overmind/server/pm/MindPackageSettings;->c:I

    .line 29
    .line 30
    iget-object p1, p1, Lcom/xinzhu/overmind/server/pm/MindPackageSettings;->h:Ljava/util/Map;

    .line 31
    .line 32
    iput-object p1, v0, Lcom/xinzhu/overmind/server/pm/MindPackageSettings;->h:Ljava/util/Map;

    .line 33
    .line 34
    goto :goto_0

    .line 35
    :cond_0
    invoke-virtual {p0, v0, p3}, Lcom/xinzhu/overmind/server/pm/u;->h(Lcom/xinzhu/overmind/server/pm/MindPackageSettings;I)Z

    .line 36
    .line 37
    .line 38
    move-result p1

    .line 39
    if-eqz p1, :cond_1

    .line 40
    .line 41
    :goto_0
    monitor-exit p2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 42
    iget-object p1, p0, Lcom/xinzhu/overmind/server/pm/u;->a:Landroid/util/ArrayMap;

    .line 43
    .line 44
    iget-object p2, v0, Lcom/xinzhu/overmind/server/pm/MindPackageSettings;->b:Lcom/xinzhu/overmind/server/pm/MindPackage;

    .line 45
    .line 46
    iget-object p2, p2, Lcom/xinzhu/overmind/server/pm/MindPackage;->m:Ljava/lang/String;

    .line 47
    .line 48
    invoke-virtual {p1, p2, v0}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 49
    .line 50
    .line 51
    iget-object p1, v0, Lcom/xinzhu/overmind/server/pm/MindPackageSettings;->b:Lcom/xinzhu/overmind/server/pm/MindPackage;

    .line 52
    .line 53
    invoke-static {}, Lcom/xinzhu/overmind/server/pm/MindPackageUserState;->b()Lcom/xinzhu/overmind/server/pm/MindPackageUserState;

    .line 54
    .line 55
    .line 56
    move-result-object p2

    .line 57
    const/4 p3, 0x0

    .line 58
    invoke-static {p1, p3, p2, p3}, Lcom/xinzhu/overmind/server/pm/q;->f(Lcom/xinzhu/overmind/server/pm/MindPackage;ILcom/xinzhu/overmind/server/pm/MindPackageUserState;I)Landroid/content/pm/ApplicationInfo;

    .line 59
    .line 60
    .line 61
    move-result-object p2

    .line 62
    iput-object p2, p1, Lcom/xinzhu/overmind/server/pm/MindPackage;->s:Landroid/content/pm/ApplicationInfo;

    .line 63
    .line 64
    return-object v0

    .line 65
    :cond_1
    :try_start_1
    new-instance p1, Ljava/lang/RuntimeException;

    .line 66
    .line 67
    const-string p3, "registerAppIdLPw err."

    .line 68
    .line 69
    invoke-direct {p1, p3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .line 70
    .line 71
    .line 72
    throw p1

    .line 73
    :catchall_0
    move-exception p1

    .line 74
    monitor-exit p2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 75
    throw p1
.end method

.method public e(I)Lcom/xinzhu/overmind/server/pm/MindPackageSettings;
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/xinzhu/overmind/server/pm/u;->a:Landroid/util/ArrayMap;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    iget-object v1, p0, Lcom/xinzhu/overmind/server/pm/u;->a:Landroid/util/ArrayMap;

    .line 5
    .line 6
    invoke-virtual {v1}, Landroid/util/ArrayMap;->values()Ljava/util/Collection;

    .line 7
    .line 8
    .line 9
    move-result-object v1

    .line 10
    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    .line 11
    .line 12
    .line 13
    move-result-object v1

    .line 14
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 15
    .line 16
    .line 17
    move-result v2

    .line 18
    if-eqz v2, :cond_1

    .line 19
    .line 20
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 21
    .line 22
    .line 23
    move-result-object v2

    .line 24
    check-cast v2, Lcom/xinzhu/overmind/server/pm/MindPackageSettings;

    .line 25
    .line 26
    iget v3, v2, Lcom/xinzhu/overmind/server/pm/MindPackageSettings;->c:I

    .line 27
    .line 28
    if-ne v3, p1, :cond_0

    .line 29
    .line 30
    monitor-exit v0

    .line 31
    return-object v2

    .line 32
    :cond_1
    monitor-exit v0

    .line 33
    const/4 p1, 0x0

    .line 34
    return-object p1

    .line 35
    :catchall_0
    move-exception p1

    .line 36
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 37
    throw p1
.end method

.method g(Lcom/xinzhu/overmind/server/pm/MindPackageSettings;)Z
    .locals 2

    .line 1
    iget v0, p1, Lcom/xinzhu/overmind/server/pm/MindPackageSettings;->c:I

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    if-nez v0, :cond_0

    .line 5
    .line 6
    invoke-direct {p0, p1}, Lcom/xinzhu/overmind/server/pm/u;->a(Lcom/xinzhu/overmind/server/pm/MindPackageSettings;)I

    .line 7
    .line 8
    .line 9
    move-result v0

    .line 10
    iput v0, p1, Lcom/xinzhu/overmind/server/pm/MindPackageSettings;->c:I

    .line 11
    .line 12
    const/4 v0, 0x1

    .line 13
    goto :goto_0

    .line 14
    :cond_0
    const/4 v0, 0x0

    .line 15
    :goto_0
    iget p1, p1, Lcom/xinzhu/overmind/server/pm/MindPackageSettings;->c:I

    .line 16
    .line 17
    if-gez p1, :cond_1

    .line 18
    .line 19
    goto :goto_1

    .line 20
    :cond_1
    move v1, v0

    .line 21
    :goto_1
    invoke-direct {p0}, Lcom/xinzhu/overmind/server/pm/u;->i()V

    .line 22
    .line 23
    .line 24
    return v1
.end method

.method h(Lcom/xinzhu/overmind/server/pm/MindPackageSettings;I)Z
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 4
    .line 5
    .line 6
    const-string v1, "registerAppIdTransfer "

    .line 7
    .line 8
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 9
    .line 10
    .line 11
    iget-object v1, p1, Lcom/xinzhu/overmind/server/pm/MindPackageSettings;->b:Lcom/xinzhu/overmind/server/pm/MindPackage;

    .line 12
    .line 13
    iget-object v1, v1, Lcom/xinzhu/overmind/server/pm/MindPackage;->m:Ljava/lang/String;

    .line 14
    .line 15
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 16
    .line 17
    .line 18
    const-string v1, " "

    .line 19
    .line 20
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 21
    .line 22
    .line 23
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 24
    .line 25
    .line 26
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 27
    .line 28
    .line 29
    move-result-object v0

    .line 30
    const-string v1, "Settings"

    .line 31
    .line 32
    invoke-static {v1, v0}, Lcom/xinzhu/overmind/b;->a(Ljava/lang/String;Ljava/lang/String;)I

    .line 33
    .line 34
    .line 35
    iget v0, p1, Lcom/xinzhu/overmind/server/pm/MindPackageSettings;->c:I

    .line 36
    .line 37
    const/4 v1, 0x0

    .line 38
    if-nez v0, :cond_0

    .line 39
    .line 40
    invoke-direct {p0, p1, p2}, Lcom/xinzhu/overmind/server/pm/u;->b(Lcom/xinzhu/overmind/server/pm/MindPackageSettings;I)I

    .line 41
    .line 42
    .line 43
    move-result p2

    .line 44
    iput p2, p1, Lcom/xinzhu/overmind/server/pm/MindPackageSettings;->c:I

    .line 45
    .line 46
    const/4 p2, 0x1

    .line 47
    goto :goto_0

    .line 48
    :cond_0
    const/4 p2, 0x0

    .line 49
    :goto_0
    iget p1, p1, Lcom/xinzhu/overmind/server/pm/MindPackageSettings;->c:I

    .line 50
    .line 51
    if-gez p1, :cond_1

    .line 52
    .line 53
    goto :goto_1

    .line 54
    :cond_1
    move v1, p2

    .line 55
    :goto_1
    invoke-direct {p0}, Lcom/xinzhu/overmind/server/pm/u;->i()V

    .line 56
    .line 57
    .line 58
    return v1
.end method

.method public j()V
    .locals 7

    .line 1
    iget-object v0, p0, Lcom/xinzhu/overmind/server/pm/u;->a:Landroid/util/ArrayMap;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    invoke-static {}, Lcom/xinzhu/overmind/a;->h()Ljava/io/File;

    .line 5
    .line 6
    .line 7
    move-result-object v1

    .line 8
    invoke-static {v1}, Lcom/xinzhu/overmind/utils/l;->p(Ljava/io/File;)Z

    .line 9
    .line 10
    .line 11
    invoke-virtual {v1}, Ljava/io/File;->listFiles()[Ljava/io/File;

    .line 12
    .line 13
    .line 14
    move-result-object v1

    .line 15
    invoke-static {v1}, Lcom/xinzhu/overmind/utils/d;->o([Ljava/lang/Object;)Z

    .line 16
    .line 17
    .line 18
    move-result v2

    .line 19
    if-nez v2, :cond_2

    .line 20
    .line 21
    array-length v2, v1

    .line 22
    const/4 v3, 0x0

    .line 23
    :goto_0
    if-ge v3, v2, :cond_2

    .line 24
    .line 25
    aget-object v4, v1, v3

    .line 26
    .line 27
    invoke-virtual {v4}, Ljava/io/File;->isDirectory()Z

    .line 28
    .line 29
    .line 30
    move-result v5

    .line 31
    if-eqz v5, :cond_1

    .line 32
    .line 33
    invoke-virtual {v4}, Ljava/io/File;->getName()Ljava/lang/String;

    .line 34
    .line 35
    .line 36
    move-result-object v5

    .line 37
    const-string v6, "system"

    .line 38
    .line 39
    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 40
    .line 41
    .line 42
    move-result v5

    .line 43
    if-eqz v5, :cond_0

    .line 44
    .line 45
    goto :goto_1

    .line 46
    :cond_0
    invoke-direct {p0, v4}, Lcom/xinzhu/overmind/server/pm/u;->k(Ljava/io/File;)V

    .line 47
    .line 48
    .line 49
    :cond_1
    :goto_1
    add-int/lit8 v3, v3, 0x1

    .line 50
    .line 51
    goto :goto_0

    .line 52
    :cond_2
    monitor-exit v0

    .line 53
    return-void

    .line 54
    :catchall_0
    move-exception v1

    .line 55
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 56
    throw v1
.end method
