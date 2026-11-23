.class public final Lde/robv/android/xposed/XSharedPreferences;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/SharedPreferences;


# static fields
.field private static final TAG:Ljava/lang/String; = "XSharedPreferences"


# instance fields
.field private final mFile:Ljava/io/File;

.field private mFileSize:J

.field private final mFilename:Ljava/lang/String;

.field private mLastModified:J

.field private mLoaded:Z

.field private mMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/io/File;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, Lde/robv/android/xposed/XSharedPreferences;->mLoaded:Z

    .line 3
    iput-object p1, p0, Lde/robv/android/xposed/XSharedPreferences;->mFile:Ljava/io/File;

    .line 4
    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lde/robv/android/xposed/XSharedPreferences;->mFilename:Ljava/lang/String;

    .line 5
    invoke-direct {p0}, Lde/robv/android/xposed/XSharedPreferences;->startLoadFromDisk()V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 2

    .line 6
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "_preferences"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lde/robv/android/xposed/XSharedPreferences;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 4

    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 8
    iput-boolean v0, p0, Lde/robv/android/xposed/XSharedPreferences;->mLoaded:Z

    .line 9
    new-instance v0, Ljava/io/File;

    invoke-static {}, Landroid/os/Environment;->getDataDirectory()Ljava/io/File;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "data/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "/shared_prefs/"

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ".xml"

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, v1, p1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iput-object v0, p0, Lde/robv/android/xposed/XSharedPreferences;->mFile:Ljava/io/File;

    .line 10
    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lde/robv/android/xposed/XSharedPreferences;->mFilename:Ljava/lang/String;

    .line 11
    invoke-direct {p0}, Lde/robv/android/xposed/XSharedPreferences;->startLoadFromDisk()V

    return-void
.end method

.method static synthetic access$000(Lde/robv/android/xposed/XSharedPreferences;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lde/robv/android/xposed/XSharedPreferences;->loadFromDiskLocked()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method private awaitLoadedLocked()V
    .locals 1

    .line 1
    :goto_0
    iget-boolean v0, p0, Lde/robv/android/xposed/XSharedPreferences;->mLoaded:Z

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    :try_start_0
    invoke-virtual {p0}, Ljava/lang/Object;->wait()V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 6
    .line 7
    .line 8
    goto :goto_0

    .line 9
    :catch_0
    nop

    .line 10
    goto :goto_0

    .line 11
    :cond_0
    return-void
.end method

.method private loadFromDiskLocked()V
    .locals 8

    .line 1
    iget-boolean v0, p0, Lde/robv/android/xposed/XSharedPreferences;->mLoaded:Z

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    const/4 v0, 0x0

    .line 7
    :try_start_0
    invoke-static {}, Lde/robv/android/xposed/SELinuxHelper;->getAppDataFileService()Lde/robv/android/xposed/services/BaseService;

    .line 8
    .line 9
    .line 10
    move-result-object v1

    .line 11
    iget-object v2, p0, Lde/robv/android/xposed/XSharedPreferences;->mFilename:Ljava/lang/String;

    .line 12
    .line 13
    iget-wide v3, p0, Lde/robv/android/xposed/XSharedPreferences;->mFileSize:J

    .line 14
    .line 15
    iget-wide v5, p0, Lde/robv/android/xposed/XSharedPreferences;->mLastModified:J

    .line 16
    .line 17
    invoke-virtual/range {v1 .. v6}, Lde/robv/android/xposed/services/BaseService;->getFileInputStream(Ljava/lang/String;JJ)Lde/robv/android/xposed/services/FileResult;

    .line 18
    .line 19
    .line 20
    move-result-object v1
    :try_end_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_0 .. :try_end_0} :catch_c
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_9
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_7
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 21
    :try_start_1
    iget-object v2, v1, Lde/robv/android/xposed/services/FileResult;->stream:Ljava/io/InputStream;

    .line 22
    .line 23
    if-eqz v2, :cond_1

    .line 24
    .line 25
    invoke-static {v2}, Lcom/android/internal/util/XmlUtils;->readMapXml(Ljava/io/InputStream;)Ljava/util/HashMap;

    .line 26
    .line 27
    .line 28
    move-result-object v0

    .line 29
    iget-object v2, v1, Lde/robv/android/xposed/services/FileResult;->stream:Ljava/io/InputStream;

    .line 30
    .line 31
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V

    .line 32
    .line 33
    .line 34
    goto :goto_0

    .line 35
    :cond_1
    iget-object v0, p0, Lde/robv/android/xposed/XSharedPreferences;->mMap:Ljava/util/Map;
    :try_end_1
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_1 .. :try_end_1} :catch_4
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_3
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_2
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 36
    .line 37
    :goto_0
    iget-object v2, v1, Lde/robv/android/xposed/services/FileResult;->stream:Ljava/io/InputStream;

    .line 38
    .line 39
    if-eqz v2, :cond_4

    .line 40
    .line 41
    :try_start_2
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_2
    .catch Ljava/lang/RuntimeException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .line 42
    .line 43
    .line 44
    goto/16 :goto_7

    .line 45
    .line 46
    :catch_0
    nop

    .line 47
    goto/16 :goto_7

    .line 48
    .line 49
    :catch_1
    move-exception v0

    .line 50
    throw v0

    .line 51
    :catchall_0
    move-exception v0

    .line 52
    goto :goto_1

    .line 53
    :catch_2
    move-object v7, v1

    .line 54
    move-object v1, v0

    .line 55
    move-object v0, v7

    .line 56
    goto :goto_3

    .line 57
    :catch_3
    nop

    .line 58
    move-object v7, v1

    .line 59
    move-object v1, v0

    .line 60
    move-object v0, v7

    .line 61
    goto :goto_4

    .line 62
    :catch_4
    move-object v7, v1

    .line 63
    move-object v1, v0

    .line 64
    move-object v0, v7

    .line 65
    goto :goto_6

    .line 66
    :catchall_1
    move-exception v1

    .line 67
    move-object v7, v1

    .line 68
    move-object v1, v0

    .line 69
    move-object v0, v7

    .line 70
    :goto_1
    if-eqz v1, :cond_2

    .line 71
    .line 72
    iget-object v1, v1, Lde/robv/android/xposed/services/FileResult;->stream:Ljava/io/InputStream;

    .line 73
    .line 74
    if-eqz v1, :cond_2

    .line 75
    .line 76
    :try_start_3
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_3
    .catch Ljava/lang/RuntimeException; {:try_start_3 .. :try_end_3} :catch_5
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_6

    .line 77
    .line 78
    .line 79
    goto :goto_2

    .line 80
    :catch_5
    move-exception v0

    .line 81
    throw v0

    .line 82
    :catch_6
    :cond_2
    :goto_2
    throw v0

    .line 83
    :catch_7
    move-object v1, v0

    .line 84
    :goto_3
    if-eqz v0, :cond_3

    .line 85
    .line 86
    iget-object v2, v0, Lde/robv/android/xposed/services/FileResult;->stream:Ljava/io/InputStream;

    .line 87
    .line 88
    if-eqz v2, :cond_3

    .line 89
    .line 90
    :try_start_4
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_4
    .catch Ljava/lang/RuntimeException; {:try_start_4 .. :try_end_4} :catch_8
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_a

    .line 91
    .line 92
    .line 93
    goto :goto_5

    .line 94
    :catch_8
    move-exception v0

    .line 95
    throw v0

    .line 96
    :catch_9
    nop

    .line 97
    move-object v1, v0

    .line 98
    :goto_4
    if-eqz v0, :cond_3

    .line 99
    .line 100
    iget-object v2, v0, Lde/robv/android/xposed/services/FileResult;->stream:Ljava/io/InputStream;

    .line 101
    .line 102
    if-eqz v2, :cond_3

    .line 103
    .line 104
    :try_start_5
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_5
    .catch Ljava/lang/RuntimeException; {:try_start_5 .. :try_end_5} :catch_b
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_a

    .line 105
    .line 106
    .line 107
    goto :goto_5

    .line 108
    :catch_a
    nop

    .line 109
    goto :goto_5

    .line 110
    :catch_b
    move-exception v0

    .line 111
    throw v0

    .line 112
    :cond_3
    :goto_5
    move-object v7, v1

    .line 113
    move-object v1, v0

    .line 114
    move-object v0, v7

    .line 115
    goto :goto_7

    .line 116
    :catch_c
    move-object v1, v0

    .line 117
    :goto_6
    if-eqz v0, :cond_3

    .line 118
    .line 119
    iget-object v2, v0, Lde/robv/android/xposed/services/FileResult;->stream:Ljava/io/InputStream;

    .line 120
    .line 121
    if-eqz v2, :cond_3

    .line 122
    .line 123
    :try_start_6
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_6
    .catch Ljava/lang/RuntimeException; {:try_start_6 .. :try_end_6} :catch_d
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_a

    .line 124
    .line 125
    .line 126
    goto :goto_5

    .line 127
    :catch_d
    move-exception v0

    .line 128
    throw v0

    .line 129
    :cond_4
    :goto_7
    const/4 v2, 0x1

    .line 130
    iput-boolean v2, p0, Lde/robv/android/xposed/XSharedPreferences;->mLoaded:Z

    .line 131
    .line 132
    if-eqz v0, :cond_5

    .line 133
    .line 134
    iput-object v0, p0, Lde/robv/android/xposed/XSharedPreferences;->mMap:Ljava/util/Map;

    .line 135
    .line 136
    iget-wide v2, v1, Lde/robv/android/xposed/services/FileResult;->mtime:J

    .line 137
    .line 138
    iput-wide v2, p0, Lde/robv/android/xposed/XSharedPreferences;->mLastModified:J

    .line 139
    .line 140
    iget-wide v0, v1, Lde/robv/android/xposed/services/FileResult;->size:J

    .line 141
    .line 142
    iput-wide v0, p0, Lde/robv/android/xposed/XSharedPreferences;->mFileSize:J

    .line 143
    .line 144
    goto :goto_8

    .line 145
    :cond_5
    new-instance v0, Ljava/util/HashMap;

    .line 146
    .line 147
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 148
    .line 149
    .line 150
    iput-object v0, p0, Lde/robv/android/xposed/XSharedPreferences;->mMap:Ljava/util/Map;

    .line 151
    .line 152
    :goto_8
    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V

    .line 153
    .line 154
    .line 155
    return-void
.end method

.method private startLoadFromDisk()V
    .locals 2

    .line 1
    monitor-enter p0

    .line 2
    const/4 v0, 0x0

    .line 3
    :try_start_0
    iput-boolean v0, p0, Lde/robv/android/xposed/XSharedPreferences;->mLoaded:Z

    .line 4
    .line 5
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 6
    new-instance v0, Lde/robv/android/xposed/XSharedPreferences$1;

    .line 7
    .line 8
    const-string v1, "XSharedPreferences-load"

    .line 9
    .line 10
    invoke-direct {v0, p0, v1}, Lde/robv/android/xposed/XSharedPreferences$1;-><init>(Lde/robv/android/xposed/XSharedPreferences;Ljava/lang/String;)V

    .line 11
    .line 12
    .line 13
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 14
    .line 15
    .line 16
    return-void

    .line 17
    :catchall_0
    move-exception v0

    .line 18
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 19
    throw v0
.end method


# virtual methods
.method public contains(Ljava/lang/String;)Z
    .locals 1

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    invoke-direct {p0}, Lde/robv/android/xposed/XSharedPreferences;->awaitLoadedLocked()V

    .line 3
    .line 4
    .line 5
    iget-object v0, p0, Lde/robv/android/xposed/XSharedPreferences;->mMap:Ljava/util/Map;

    .line 6
    .line 7
    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    .line 8
    .line 9
    .line 10
    move-result p1

    .line 11
    monitor-exit p0

    .line 12
    return p1

    .line 13
    :catchall_0
    move-exception p1

    .line 14
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 15
    throw p1
.end method

.method public edit()Landroid/content/SharedPreferences$Editor;
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    .line 2
    .line 3
    const-string v1, "read-only implementation"

    .line 4
    .line 5
    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    throw v0
.end method

.method public getAll()Ljava/util/Map;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "*>;"
        }
    .end annotation

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    invoke-direct {p0}, Lde/robv/android/xposed/XSharedPreferences;->awaitLoadedLocked()V

    .line 3
    .line 4
    .line 5
    new-instance v0, Ljava/util/HashMap;

    .line 6
    .line 7
    iget-object v1, p0, Lde/robv/android/xposed/XSharedPreferences;->mMap:Ljava/util/Map;

    .line 8
    .line 9
    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(Ljava/util/Map;)V

    .line 10
    .line 11
    .line 12
    monitor-exit p0

    .line 13
    return-object v0

    .line 14
    :catchall_0
    move-exception v0

    .line 15
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 16
    throw v0
.end method

.method public getBoolean(Ljava/lang/String;Z)Z
    .locals 1

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    invoke-direct {p0}, Lde/robv/android/xposed/XSharedPreferences;->awaitLoadedLocked()V

    .line 3
    .line 4
    .line 5
    iget-object v0, p0, Lde/robv/android/xposed/XSharedPreferences;->mMap:Ljava/util/Map;

    .line 6
    .line 7
    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 8
    .line 9
    .line 10
    move-result-object p1

    .line 11
    check-cast p1, Ljava/lang/Boolean;

    .line 12
    .line 13
    if-eqz p1, :cond_0

    .line 14
    .line 15
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    .line 16
    .line 17
    .line 18
    move-result p2

    .line 19
    :cond_0
    monitor-exit p0

    .line 20
    return p2

    .line 21
    :catchall_0
    move-exception p1

    .line 22
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 23
    throw p1
.end method

.method public getFile()Ljava/io/File;
    .locals 1

    .line 1
    iget-object v0, p0, Lde/robv/android/xposed/XSharedPreferences;->mFile:Ljava/io/File;

    .line 2
    .line 3
    return-object v0
.end method

.method public getFloat(Ljava/lang/String;F)F
    .locals 1

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    invoke-direct {p0}, Lde/robv/android/xposed/XSharedPreferences;->awaitLoadedLocked()V

    .line 3
    .line 4
    .line 5
    iget-object v0, p0, Lde/robv/android/xposed/XSharedPreferences;->mMap:Ljava/util/Map;

    .line 6
    .line 7
    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 8
    .line 9
    .line 10
    move-result-object p1

    .line 11
    check-cast p1, Ljava/lang/Float;

    .line 12
    .line 13
    if-eqz p1, :cond_0

    .line 14
    .line 15
    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    .line 16
    .line 17
    .line 18
    move-result p2

    .line 19
    :cond_0
    monitor-exit p0

    .line 20
    return p2

    .line 21
    :catchall_0
    move-exception p1

    .line 22
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 23
    throw p1
.end method

.method public getInt(Ljava/lang/String;I)I
    .locals 1

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    invoke-direct {p0}, Lde/robv/android/xposed/XSharedPreferences;->awaitLoadedLocked()V

    .line 3
    .line 4
    .line 5
    iget-object v0, p0, Lde/robv/android/xposed/XSharedPreferences;->mMap:Ljava/util/Map;

    .line 6
    .line 7
    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 8
    .line 9
    .line 10
    move-result-object p1

    .line 11
    check-cast p1, Ljava/lang/Integer;

    .line 12
    .line 13
    if-eqz p1, :cond_0

    .line 14
    .line 15
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    .line 16
    .line 17
    .line 18
    move-result p2

    .line 19
    :cond_0
    monitor-exit p0

    .line 20
    return p2

    .line 21
    :catchall_0
    move-exception p1

    .line 22
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 23
    throw p1
.end method

.method public getLong(Ljava/lang/String;J)J
    .locals 1

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    invoke-direct {p0}, Lde/robv/android/xposed/XSharedPreferences;->awaitLoadedLocked()V

    .line 3
    .line 4
    .line 5
    iget-object v0, p0, Lde/robv/android/xposed/XSharedPreferences;->mMap:Ljava/util/Map;

    .line 6
    .line 7
    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 8
    .line 9
    .line 10
    move-result-object p1

    .line 11
    check-cast p1, Ljava/lang/Long;

    .line 12
    .line 13
    if-eqz p1, :cond_0

    .line 14
    .line 15
    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    .line 16
    .line 17
    .line 18
    move-result-wide p2

    .line 19
    :cond_0
    monitor-exit p0

    .line 20
    return-wide p2

    .line 21
    :catchall_0
    move-exception p1

    .line 22
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 23
    throw p1
.end method

.method public getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    invoke-direct {p0}, Lde/robv/android/xposed/XSharedPreferences;->awaitLoadedLocked()V

    .line 3
    .line 4
    .line 5
    iget-object v0, p0, Lde/robv/android/xposed/XSharedPreferences;->mMap:Ljava/util/Map;

    .line 6
    .line 7
    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 8
    .line 9
    .line 10
    move-result-object p1

    .line 11
    check-cast p1, Ljava/lang/String;

    .line 12
    .line 13
    if-eqz p1, :cond_0

    .line 14
    .line 15
    move-object p2, p1

    .line 16
    :cond_0
    monitor-exit p0

    .line 17
    return-object p2

    .line 18
    :catchall_0
    move-exception p1

    .line 19
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 20
    throw p1
.end method

.method public getStringSet(Ljava/lang/String;Ljava/util/Set;)Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    invoke-direct {p0}, Lde/robv/android/xposed/XSharedPreferences;->awaitLoadedLocked()V

    .line 3
    .line 4
    .line 5
    iget-object v0, p0, Lde/robv/android/xposed/XSharedPreferences;->mMap:Ljava/util/Map;

    .line 6
    .line 7
    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 8
    .line 9
    .line 10
    move-result-object p1

    .line 11
    check-cast p1, Ljava/util/Set;

    .line 12
    .line 13
    if-eqz p1, :cond_0

    .line 14
    .line 15
    move-object p2, p1

    .line 16
    :cond_0
    monitor-exit p0

    .line 17
    return-object p2

    .line 18
    :catchall_0
    move-exception p1

    .line 19
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 20
    throw p1
.end method

.method public declared-synchronized hasFileChanged()Z
    .locals 7

    .line 1
    monitor-enter p0

    .line 2
    const/4 v0, 0x1

    .line 3
    :try_start_0
    invoke-static {}, Lde/robv/android/xposed/SELinuxHelper;->getAppDataFileService()Lde/robv/android/xposed/services/BaseService;

    .line 4
    .line 5
    .line 6
    move-result-object v1

    .line 7
    iget-object v2, p0, Lde/robv/android/xposed/XSharedPreferences;->mFilename:Ljava/lang/String;

    .line 8
    .line 9
    invoke-virtual {v1, v2}, Lde/robv/android/xposed/services/BaseService;->statFile(Ljava/lang/String;)Lde/robv/android/xposed/services/FileResult;

    .line 10
    .line 11
    .line 12
    move-result-object v1

    .line 13
    iget-wide v2, p0, Lde/robv/android/xposed/XSharedPreferences;->mLastModified:J

    .line 14
    .line 15
    iget-wide v4, v1, Lde/robv/android/xposed/services/FileResult;->mtime:J

    .line 16
    .line 17
    cmp-long v6, v2, v4

    .line 18
    .line 19
    if-nez v6, :cond_1

    .line 20
    .line 21
    iget-wide v2, p0, Lde/robv/android/xposed/XSharedPreferences;->mFileSize:J

    .line 22
    .line 23
    iget-wide v4, v1, Lde/robv/android/xposed/services/FileResult;->size:J
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 24
    .line 25
    cmp-long v1, v2, v4

    .line 26
    .line 27
    if-eqz v1, :cond_0

    .line 28
    .line 29
    goto :goto_0

    .line 30
    :cond_0
    const/4 v0, 0x0

    .line 31
    :cond_1
    :goto_0
    monitor-exit p0

    .line 32
    return v0

    .line 33
    :catchall_0
    move-exception v0

    .line 34
    monitor-exit p0

    .line 35
    throw v0

    .line 36
    :catch_0
    monitor-exit p0

    .line 37
    return v0

    .line 38
    :catch_1
    monitor-exit p0

    .line 39
    return v0
.end method

.method public makeWorldReadable()Z
    .locals 3
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "SetWorldReadable"
        }
    .end annotation

    .line 1
    invoke-static {}, Lde/robv/android/xposed/SELinuxHelper;->getAppDataFileService()Lde/robv/android/xposed/services/BaseService;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0}, Lde/robv/android/xposed/services/BaseService;->hasDirectFileAccess()Z

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    const/4 v1, 0x0

    .line 10
    if-nez v0, :cond_0

    .line 11
    .line 12
    return v1

    .line 13
    :cond_0
    iget-object v0, p0, Lde/robv/android/xposed/XSharedPreferences;->mFile:Ljava/io/File;

    .line 14
    .line 15
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    .line 16
    .line 17
    .line 18
    move-result v0

    .line 19
    if-nez v0, :cond_1

    .line 20
    .line 21
    return v1

    .line 22
    :cond_1
    iget-object v0, p0, Lde/robv/android/xposed/XSharedPreferences;->mFile:Ljava/io/File;

    .line 23
    .line 24
    const/4 v2, 0x1

    .line 25
    invoke-virtual {v0, v2, v1}, Ljava/io/File;->setReadable(ZZ)Z

    .line 26
    .line 27
    .line 28
    move-result v0

    .line 29
    return v0
.end method

.method public registerOnSharedPreferenceChangeListener(Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;)V
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    .line 2
    .line 3
    const-string v0, "listeners are not supported in this implementation"

    .line 4
    .line 5
    invoke-direct {p1, v0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    throw p1
.end method

.method public declared-synchronized reload()V
    .locals 1

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    invoke-virtual {p0}, Lde/robv/android/xposed/XSharedPreferences;->hasFileChanged()Z

    .line 3
    .line 4
    .line 5
    move-result v0

    .line 6
    if-eqz v0, :cond_0

    .line 7
    .line 8
    invoke-direct {p0}, Lde/robv/android/xposed/XSharedPreferences;->startLoadFromDisk()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 9
    .line 10
    .line 11
    :cond_0
    monitor-exit p0

    .line 12
    return-void

    .line 13
    :catchall_0
    move-exception v0

    .line 14
    monitor-exit p0

    .line 15
    throw v0
.end method

.method public unregisterOnSharedPreferenceChangeListener(Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;)V
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    .line 2
    .line 3
    const-string v0, "listeners are not supported in this implementation"

    .line 4
    .line 5
    invoke-direct {p1, v0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    throw p1
.end method
