.class final Lcn/fly/tools/utils/SharePrefrenceHelper$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/fly/tools/utils/SharePrefrenceHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "a"
.end annotation


# static fields
.field private static c:Ljava/io/File;


# instance fields
.field private a:Ljava/io/File;

.field private b:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

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
    iput-object v0, p0, Lcn/fly/tools/utils/SharePrefrenceHelper$a;->b:Ljava/util/HashMap;

    .line 10
    .line 11
    if-eqz p1, :cond_1

    .line 12
    .line 13
    :try_start_0
    invoke-static {p1}, Lcn/fly/tools/utils/SharePrefrenceHelper$a;->a(Landroid/content/Context;)Ljava/io/File;

    .line 14
    .line 15
    .line 16
    move-result-object p1

    .line 17
    new-instance v0, Ljava/io/File;

    .line 18
    .line 19
    invoke-direct {v0, p1, p2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 20
    .line 21
    .line 22
    iput-object v0, p0, Lcn/fly/tools/utils/SharePrefrenceHelper$a;->a:Ljava/io/File;

    .line 23
    .line 24
    invoke-virtual {v0}, Ljava/io/File;->getParentFile()Ljava/io/File;

    .line 25
    .line 26
    .line 27
    move-result-object p1

    .line 28
    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    .line 29
    .line 30
    .line 31
    move-result p1

    .line 32
    if-nez p1, :cond_0

    .line 33
    .line 34
    iget-object p1, p0, Lcn/fly/tools/utils/SharePrefrenceHelper$a;->a:Ljava/io/File;

    .line 35
    .line 36
    invoke-virtual {p1}, Ljava/io/File;->getParentFile()Ljava/io/File;

    .line 37
    .line 38
    .line 39
    move-result-object p1

    .line 40
    invoke-virtual {p1}, Ljava/io/File;->mkdirs()Z

    .line 41
    .line 42
    .line 43
    :cond_0
    iget-object p1, p0, Lcn/fly/tools/utils/SharePrefrenceHelper$a;->a:Ljava/io/File;

    .line 44
    .line 45
    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    .line 46
    .line 47
    .line 48
    move-result p1

    .line 49
    if-nez p1, :cond_1

    .line 50
    .line 51
    iget-object p1, p0, Lcn/fly/tools/utils/SharePrefrenceHelper$a;->a:Ljava/io/File;

    .line 52
    .line 53
    invoke-virtual {p1}, Ljava/io/File;->createNewFile()Z

    .line 54
    .line 55
    .line 56
    :cond_1
    invoke-direct {p0}, Lcn/fly/tools/utils/SharePrefrenceHelper$a;->b()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 57
    .line 58
    .line 59
    goto :goto_0

    .line 60
    :catchall_0
    move-exception p1

    .line 61
    invoke-static {}, Lcn/fly/tools/FlyLog;->getInstance()Lcn/fly/tools/log/NLog;

    .line 62
    .line 63
    .line 64
    move-result-object p2

    .line 65
    invoke-virtual {p2, p1}, Lcn/fly/tools/log/NLog;->d(Ljava/lang/Throwable;)I

    .line 66
    .line 67
    .line 68
    :goto_0
    return-void
.end method

.method private static declared-synchronized a(Landroid/content/Context;)Ljava/io/File;
    .locals 3

    const-class v0, Lcn/fly/tools/utils/SharePrefrenceHelper$a;

    monitor-enter v0

    .line 1
    :try_start_0
    sget-object v1, Lcn/fly/tools/utils/SharePrefrenceHelper$a;->c:Ljava/io/File;

    if-nez v1, :cond_0

    .line 2
    new-instance v1, Ljava/io/File;

    invoke-virtual {p0}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object p0

    sget-object v2, Lcn/fly/tools/utils/SharePrefrenceHelper;->SP_CACHE_FOLDER:Ljava/lang/String;

    invoke-direct {v1, p0, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    sput-object v1, Lcn/fly/tools/utils/SharePrefrenceHelper$a;->c:Ljava/io/File;

    .line 3
    :cond_0
    sget-object p0, Lcn/fly/tools/utils/SharePrefrenceHelper$a;->c:Ljava/io/File;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object p0

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method public static declared-synchronized a(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 2

    const-class v0, Lcn/fly/tools/utils/SharePrefrenceHelper$a;

    monitor-enter v0

    .line 4
    :try_start_0
    new-instance v1, Ljava/io/File;

    invoke-static {p0}, Lcn/fly/tools/utils/SharePrefrenceHelper$a;->a(Landroid/content/Context;)Ljava/io/File;

    move-result-object p0

    invoke-direct {v1, p0, p1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 5
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz p0, :cond_0

    .line 6
    monitor-exit v0

    const/4 p0, 0x1

    return p0

    .line 7
    :cond_0
    monitor-exit v0

    const/4 p0, 0x0

    return p0

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method private b()V
    .locals 12

    .line 1
    iget-object v0, p0, Lcn/fly/tools/utils/SharePrefrenceHelper$a;->b:Ljava/util/HashMap;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    iget-object v1, p0, Lcn/fly/tools/utils/SharePrefrenceHelper$a;->a:Ljava/io/File;

    .line 5
    .line 6
    if-eqz v1, :cond_2

    .line 7
    .line 8
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    .line 9
    .line 10
    .line 11
    move-result v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_5

    .line 12
    if-eqz v1, :cond_2

    .line 13
    .line 14
    const/4 v1, 0x2

    .line 15
    const/4 v2, 0x1

    .line 16
    const/4 v3, 0x0

    .line 17
    const/4 v4, 0x3

    .line 18
    const/4 v5, 0x0

    .line 19
    :try_start_1
    new-instance v6, Ljava/io/FileInputStream;

    .line 20
    .line 21
    iget-object v7, p0, Lcn/fly/tools/utils/SharePrefrenceHelper$a;->a:Ljava/io/File;

    .line 22
    .line 23
    invoke-direct {v6, v7}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_3

    .line 24
    .line 25
    .line 26
    :try_start_2
    new-instance v7, Ljava/io/InputStreamReader;

    .line 27
    .line 28
    const-string v8, "utf-8"

    .line 29
    .line 30
    invoke-direct {v7, v6, v8}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 31
    .line 32
    .line 33
    :try_start_3
    new-instance v8, Ljava/io/BufferedReader;

    .line 34
    .line 35
    invoke-direct {v8, v7}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 36
    .line 37
    .line 38
    :try_start_4
    new-instance v5, Ljava/lang/StringBuilder;

    .line 39
    .line 40
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 41
    .line 42
    .line 43
    invoke-virtual {v8}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    .line 44
    .line 45
    .line 46
    move-result-object v9

    .line 47
    :goto_0
    if-eqz v9, :cond_1

    .line 48
    .line 49
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->length()I

    .line 50
    .line 51
    .line 52
    move-result v10

    .line 53
    if-lez v10, :cond_0

    .line 54
    .line 55
    const-string v10, "\n"

    .line 56
    .line 57
    invoke-virtual {v5, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 58
    .line 59
    .line 60
    :cond_0
    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 61
    .line 62
    .line 63
    invoke-virtual {v8}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    .line 64
    .line 65
    .line 66
    move-result-object v9

    .line 67
    goto :goto_0

    .line 68
    :cond_1
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 69
    .line 70
    .line 71
    move-result-object v5

    .line 72
    invoke-static {v5}, Lcn/fly/tools/utils/HashonHelper;->fromJson(Ljava/lang/String;)Ljava/util/HashMap;

    .line 73
    .line 74
    .line 75
    move-result-object v5

    .line 76
    iput-object v5, p0, Lcn/fly/tools/utils/SharePrefrenceHelper$a;->b:Ljava/util/HashMap;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 77
    .line 78
    :try_start_5
    new-array v4, v4, [Ljava/io/Closeable;

    .line 79
    .line 80
    aput-object v8, v4, v3

    .line 81
    .line 82
    aput-object v7, v4, v2

    .line 83
    .line 84
    aput-object v6, v4, v1

    .line 85
    .line 86
    invoke-static {v4}, Lcn/fly/commons/r;->a([Ljava/io/Closeable;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_5

    .line 87
    .line 88
    .line 89
    goto :goto_2

    .line 90
    :catchall_0
    move-exception v5

    .line 91
    goto :goto_1

    .line 92
    :catchall_1
    move-exception v8

    .line 93
    move-object v11, v8

    .line 94
    move-object v8, v5

    .line 95
    move-object v5, v11

    .line 96
    goto :goto_1

    .line 97
    :catchall_2
    move-exception v7

    .line 98
    move-object v8, v5

    .line 99
    move-object v5, v7

    .line 100
    move-object v7, v8

    .line 101
    goto :goto_1

    .line 102
    :catchall_3
    move-exception v6

    .line 103
    move-object v7, v5

    .line 104
    move-object v8, v7

    .line 105
    move-object v5, v6

    .line 106
    move-object v6, v8

    .line 107
    :goto_1
    :try_start_6
    invoke-static {}, Lcn/fly/tools/FlyLog;->getInstance()Lcn/fly/tools/log/NLog;

    .line 108
    .line 109
    .line 110
    move-result-object v9

    .line 111
    invoke-virtual {v9, v5}, Lcn/fly/tools/log/NLog;->w(Ljava/lang/Throwable;)I
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_4

    .line 112
    .line 113
    .line 114
    :try_start_7
    new-array v4, v4, [Ljava/io/Closeable;

    .line 115
    .line 116
    aput-object v8, v4, v3

    .line 117
    .line 118
    aput-object v7, v4, v2

    .line 119
    .line 120
    aput-object v6, v4, v1

    .line 121
    .line 122
    invoke-static {v4}, Lcn/fly/commons/r;->a([Ljava/io/Closeable;)V

    .line 123
    .line 124
    .line 125
    goto :goto_2

    .line 126
    :catchall_4
    move-exception v5

    .line 127
    new-array v4, v4, [Ljava/io/Closeable;

    .line 128
    .line 129
    aput-object v8, v4, v3

    .line 130
    .line 131
    aput-object v7, v4, v2

    .line 132
    .line 133
    aput-object v6, v4, v1

    .line 134
    .line 135
    invoke-static {v4}, Lcn/fly/commons/r;->a([Ljava/io/Closeable;)V

    .line 136
    .line 137
    .line 138
    throw v5

    .line 139
    :cond_2
    :goto_2
    monitor-exit v0

    .line 140
    return-void

    .line 141
    :catchall_5
    move-exception v1

    .line 142
    monitor-exit v0
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_5

    .line 143
    throw v1
.end method


# virtual methods
.method public a()Ljava/util/HashMap;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 8
    iget-object v0, p0, Lcn/fly/tools/utils/SharePrefrenceHelper$a;->b:Ljava/util/HashMap;

    monitor-enter v0

    .line 9
    :try_start_0
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 10
    iget-object v2, p0, Lcn/fly/tools/utils/SharePrefrenceHelper$a;->b:Ljava/util/HashMap;

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->putAll(Ljava/util/Map;)V

    .line 11
    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    .line 12
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method
