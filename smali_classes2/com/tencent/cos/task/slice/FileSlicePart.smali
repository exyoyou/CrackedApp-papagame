.class public Lcom/tencent/cos/task/slice/FileSlicePart;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static final serialVersionUID:J = -0x77b2d11c900da168L


# instance fields
.field public appid:Ljava/lang/String;

.field public biz_attr:Ljava/lang/String;

.field public bucket:Ljava/lang/String;

.field public cosPath:Ljava/lang/String;

.field public insertOnly:Ljava/lang/String;

.field public requestId:I

.field public session:Ljava/lang/String;

.field public sha:Ljava/lang/String;

.field public sign:Ljava/lang/String;

.field public sliceParts:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/tencent/cos/task/slice/SlicePart;",
            ">;"
        }
    .end annotation
.end field

.field public sliceSize:I

.field public slice_init_flag:Z

.field public srcPath:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method


# virtual methods
.method public declared-synchronized deleteFile(Ljava/lang/String;)V
    .locals 1

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    new-instance v0, Ljava/io/File;

    .line 3
    .line 4
    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 5
    .line 6
    .line 7
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    .line 8
    .line 9
    .line 10
    move-result p1

    .line 11
    if-eqz p1, :cond_0

    .line 12
    .line 13
    invoke-virtual {v0}, Ljava/io/File;->isFile()Z

    .line 14
    .line 15
    .line 16
    move-result p1

    .line 17
    if-eqz p1, :cond_0

    .line 18
    .line 19
    invoke-virtual {v0}, Ljava/io/File;->delete()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 20
    .line 21
    .line 22
    :cond_0
    monitor-exit p0

    .line 23
    return-void

    .line 24
    :catchall_0
    move-exception p1

    .line 25
    monitor-exit p0

    .line 26
    throw p1
.end method

.method public getDirPath()Ljava/lang/String;
    .locals 3

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 4
    .line 5
    .line 6
    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    .line 7
    .line 8
    .line 9
    move-result-object v1

    .line 10
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 11
    .line 12
    .line 13
    sget-object v1, Ljava/io/File;->separator:Ljava/lang/String;

    .line 14
    .line 15
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 16
    .line 17
    .line 18
    const-string v2, "android"

    .line 19
    .line 20
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 21
    .line 22
    .line 23
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 24
    .line 25
    .line 26
    const-string v2, "data"

    .line 27
    .line 28
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 29
    .line 30
    .line 31
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 32
    .line 33
    .line 34
    invoke-static {}, Lcom/tencent/cos/COSClient;->getContext()Landroid/content/Context;

    .line 35
    .line 36
    .line 37
    move-result-object v2

    .line 38
    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    .line 39
    .line 40
    .line 41
    move-result-object v2

    .line 42
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 43
    .line 44
    .line 45
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 46
    .line 47
    .line 48
    const-string v1, "caches"

    .line 49
    .line 50
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 51
    .line 52
    .line 53
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 54
    .line 55
    .line 56
    move-result-object v0

    .line 57
    new-instance v1, Ljava/io/File;

    .line 58
    .line 59
    invoke-direct {v1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 60
    .line 61
    .line 62
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    .line 63
    .line 64
    .line 65
    move-result v2

    .line 66
    if-nez v2, :cond_0

    .line 67
    .line 68
    invoke-virtual {v1}, Ljava/io/File;->mkdirs()Z

    .line 69
    .line 70
    .line 71
    :cond_0
    return-object v0
.end method

.method protected declared-synchronized init(Lcom/tencent/cos/task/slice/FileSlicePart;)V
    .locals 1

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    iget-object v0, p1, Lcom/tencent/cos/task/slice/FileSlicePart;->appid:Ljava/lang/String;

    .line 3
    .line 4
    iput-object v0, p0, Lcom/tencent/cos/task/slice/FileSlicePart;->appid:Ljava/lang/String;

    .line 5
    .line 6
    iget-object v0, p1, Lcom/tencent/cos/task/slice/FileSlicePart;->bucket:Ljava/lang/String;

    .line 7
    .line 8
    iput-object v0, p0, Lcom/tencent/cos/task/slice/FileSlicePart;->bucket:Ljava/lang/String;

    .line 9
    .line 10
    iget-object v0, p1, Lcom/tencent/cos/task/slice/FileSlicePart;->cosPath:Ljava/lang/String;

    .line 11
    .line 12
    iput-object v0, p0, Lcom/tencent/cos/task/slice/FileSlicePart;->cosPath:Ljava/lang/String;

    .line 13
    .line 14
    iget-object v0, p1, Lcom/tencent/cos/task/slice/FileSlicePart;->srcPath:Ljava/lang/String;

    .line 15
    .line 16
    iput-object v0, p0, Lcom/tencent/cos/task/slice/FileSlicePart;->srcPath:Ljava/lang/String;

    .line 17
    .line 18
    iget-object v0, p1, Lcom/tencent/cos/task/slice/FileSlicePart;->biz_attr:Ljava/lang/String;

    .line 19
    .line 20
    iput-object v0, p0, Lcom/tencent/cos/task/slice/FileSlicePart;->biz_attr:Ljava/lang/String;

    .line 21
    .line 22
    iget-object v0, p1, Lcom/tencent/cos/task/slice/FileSlicePart;->insertOnly:Ljava/lang/String;

    .line 23
    .line 24
    iput-object v0, p0, Lcom/tencent/cos/task/slice/FileSlicePart;->insertOnly:Ljava/lang/String;

    .line 25
    .line 26
    iget v0, p1, Lcom/tencent/cos/task/slice/FileSlicePart;->sliceSize:I

    .line 27
    .line 28
    iput v0, p0, Lcom/tencent/cos/task/slice/FileSlicePart;->sliceSize:I

    .line 29
    .line 30
    iget-object v0, p1, Lcom/tencent/cos/task/slice/FileSlicePart;->sha:Ljava/lang/String;

    .line 31
    .line 32
    iput-object v0, p0, Lcom/tencent/cos/task/slice/FileSlicePart;->sha:Ljava/lang/String;

    .line 33
    .line 34
    iget-object v0, p1, Lcom/tencent/cos/task/slice/FileSlicePart;->sliceParts:Ljava/util/ArrayList;

    .line 35
    .line 36
    iput-object v0, p0, Lcom/tencent/cos/task/slice/FileSlicePart;->sliceParts:Ljava/util/ArrayList;

    .line 37
    .line 38
    iget-object v0, p1, Lcom/tencent/cos/task/slice/FileSlicePart;->sign:Ljava/lang/String;

    .line 39
    .line 40
    iput-object v0, p0, Lcom/tencent/cos/task/slice/FileSlicePart;->sign:Ljava/lang/String;

    .line 41
    .line 42
    iget-object v0, p1, Lcom/tencent/cos/task/slice/FileSlicePart;->session:Ljava/lang/String;

    .line 43
    .line 44
    iput-object v0, p0, Lcom/tencent/cos/task/slice/FileSlicePart;->session:Ljava/lang/String;

    .line 45
    .line 46
    iget-boolean v0, p1, Lcom/tencent/cos/task/slice/FileSlicePart;->slice_init_flag:Z

    .line 47
    .line 48
    iput-boolean v0, p0, Lcom/tencent/cos/task/slice/FileSlicePart;->slice_init_flag:Z

    .line 49
    .line 50
    iget p1, p1, Lcom/tencent/cos/task/slice/FileSlicePart;->requestId:I

    .line 51
    .line 52
    iput p1, p0, Lcom/tencent/cos/task/slice/FileSlicePart;->requestId:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 53
    .line 54
    monitor-exit p0

    .line 55
    return-void

    .line 56
    :catchall_0
    move-exception p1

    .line 57
    monitor-exit p0

    .line 58
    throw p1
.end method

.method public declared-synchronized isValid(Ljava/lang/String;)Z
    .locals 7

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 3
    .line 4
    .line 5
    move-result v0

    .line 6
    const/4 v1, 0x0

    .line 7
    if-eqz v0, :cond_4

    .line 8
    .line 9
    iget-object v0, p0, Lcom/tencent/cos/task/slice/FileSlicePart;->srcPath:Ljava/lang/String;

    .line 10
    .line 11
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 12
    .line 13
    .line 14
    move-result v0

    .line 15
    if-nez v0, :cond_0

    .line 16
    .line 17
    goto :goto_1

    .line 18
    :cond_0
    new-instance v0, Ljava/io/File;

    .line 19
    .line 20
    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 21
    .line 22
    .line 23
    new-instance p1, Ljava/io/File;

    .line 24
    .line 25
    iget-object v2, p0, Lcom/tencent/cos/task/slice/FileSlicePart;->srcPath:Ljava/lang/String;

    .line 26
    .line 27
    invoke-direct {p1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 28
    .line 29
    .line 30
    invoke-virtual {v0}, Ljava/io/File;->canRead()Z

    .line 31
    .line 32
    .line 33
    move-result v2

    .line 34
    if-eqz v2, :cond_3

    .line 35
    .line 36
    invoke-virtual {v0}, Ljava/io/File;->length()J

    .line 37
    .line 38
    .line 39
    move-result-wide v2

    .line 40
    invoke-virtual {p1}, Ljava/io/File;->length()J

    .line 41
    .line 42
    .line 43
    move-result-wide v4

    .line 44
    cmp-long v6, v2, v4

    .line 45
    .line 46
    if-eqz v6, :cond_1

    .line 47
    .line 48
    goto :goto_0

    .line 49
    :cond_1
    invoke-virtual {v0}, Ljava/io/File;->lastModified()J

    .line 50
    .line 51
    .line 52
    move-result-wide v2

    .line 53
    invoke-virtual {p1}, Ljava/io/File;->lastModified()J

    .line 54
    .line 55
    .line 56
    move-result-wide v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 57
    cmp-long p1, v2, v4

    .line 58
    .line 59
    if-eqz p1, :cond_2

    .line 60
    .line 61
    monitor-exit p0

    .line 62
    return v1

    .line 63
    :cond_2
    monitor-exit p0

    .line 64
    const/4 p1, 0x1

    .line 65
    return p1

    .line 66
    :cond_3
    :goto_0
    monitor-exit p0

    .line 67
    return v1

    .line 68
    :cond_4
    :goto_1
    monitor-exit p0

    .line 69
    return v1

    .line 70
    :catchall_0
    move-exception p1

    .line 71
    monitor-exit p0

    .line 72
    throw p1
.end method

.method public declared-synchronized loadFileSlicePart(Ljava/lang/String;)V
    .locals 3

    .line 1
    monitor-enter p0

    .line 2
    const/4 v0, 0x0

    .line 3
    :try_start_0
    new-instance v1, Ljava/io/FileInputStream;

    .line 4
    .line 5
    invoke-direct {v1, p1}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_13
    .catch Ljava/io/StreamCorruptedException; {:try_start_0 .. :try_end_0} :catch_10
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_d
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_a
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 6
    .line 7
    .line 8
    :try_start_1
    new-instance p1, Ljava/io/ObjectInputStream;

    .line 9
    .line 10
    invoke-direct {p1, v1}, Ljava/io/ObjectInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_9
    .catch Ljava/io/StreamCorruptedException; {:try_start_1 .. :try_end_1} :catch_8
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_7
    .catch Ljava/lang/ClassNotFoundException; {:try_start_1 .. :try_end_1} :catch_6
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 11
    .line 12
    .line 13
    :try_start_2
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    check-cast v0, Lcom/tencent/cos/task/slice/FileSlicePart;

    .line 18
    .line 19
    invoke-virtual {p0, v0}, Lcom/tencent/cos/task/slice/FileSlicePart;->init(Lcom/tencent/cos/task/slice/FileSlicePart;)V
    :try_end_2
    .catch Ljava/io/FileNotFoundException; {:try_start_2 .. :try_end_2} :catch_5
    .catch Ljava/io/StreamCorruptedException; {:try_start_2 .. :try_end_2} :catch_4
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_3
    .catch Ljava/lang/ClassNotFoundException; {:try_start_2 .. :try_end_2} :catch_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 20
    .line 21
    .line 22
    :try_start_3
    invoke-virtual {v1}, Ljava/io/FileInputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_3

    .line 23
    .line 24
    .line 25
    goto :goto_0

    .line 26
    :catch_0
    move-exception v0

    .line 27
    :try_start_4
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_3

    .line 28
    .line 29
    .line 30
    :goto_0
    :try_start_5
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_1
    .catchall {:try_start_5 .. :try_end_5} :catchall_3

    .line 31
    .line 32
    .line 33
    goto/16 :goto_a

    .line 34
    .line 35
    :catch_1
    move-exception p1

    .line 36
    :goto_1
    :try_start_6
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_3

    .line 37
    .line 38
    .line 39
    goto/16 :goto_a

    .line 40
    .line 41
    :catch_2
    move-exception v0

    .line 42
    goto :goto_2

    .line 43
    :catch_3
    move-exception v0

    .line 44
    goto/16 :goto_4

    .line 45
    .line 46
    :catch_4
    move-exception v0

    .line 47
    goto/16 :goto_6

    .line 48
    .line 49
    :catch_5
    move-exception v0

    .line 50
    goto/16 :goto_8

    .line 51
    .line 52
    :catchall_0
    move-exception p1

    .line 53
    move-object v2, v0

    .line 54
    move-object v0, p1

    .line 55
    move-object p1, v2

    .line 56
    goto/16 :goto_b

    .line 57
    .line 58
    :catch_6
    move-exception p1

    .line 59
    move-object v2, v0

    .line 60
    move-object v0, p1

    .line 61
    move-object p1, v2

    .line 62
    goto :goto_2

    .line 63
    :catch_7
    move-exception p1

    .line 64
    move-object v2, v0

    .line 65
    move-object v0, p1

    .line 66
    move-object p1, v2

    .line 67
    goto :goto_4

    .line 68
    :catch_8
    move-exception p1

    .line 69
    move-object v2, v0

    .line 70
    move-object v0, p1

    .line 71
    move-object p1, v2

    .line 72
    goto :goto_6

    .line 73
    :catch_9
    move-exception p1

    .line 74
    move-object v2, v0

    .line 75
    move-object v0, p1

    .line 76
    move-object p1, v2

    .line 77
    goto/16 :goto_8

    .line 78
    .line 79
    :catchall_1
    move-exception p1

    .line 80
    move-object v1, v0

    .line 81
    move-object v0, p1

    .line 82
    move-object p1, v1

    .line 83
    goto/16 :goto_b

    .line 84
    .line 85
    :catch_a
    move-exception p1

    .line 86
    move-object v1, v0

    .line 87
    move-object v0, p1

    .line 88
    move-object p1, v1

    .line 89
    :goto_2
    :try_start_7
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    .line 90
    .line 91
    .line 92
    if-eqz v1, :cond_0

    .line 93
    .line 94
    :try_start_8
    invoke-virtual {v1}, Ljava/io/FileInputStream;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_b
    .catchall {:try_start_8 .. :try_end_8} :catchall_3

    .line 95
    .line 96
    .line 97
    goto :goto_3

    .line 98
    :catch_b
    move-exception v0

    .line 99
    :try_start_9
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_3

    .line 100
    .line 101
    .line 102
    :cond_0
    :goto_3
    if-eqz p1, :cond_4

    .line 103
    .line 104
    :try_start_a
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->close()V
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_c
    .catchall {:try_start_a .. :try_end_a} :catchall_3

    .line 105
    .line 106
    .line 107
    goto :goto_a

    .line 108
    :catch_c
    move-exception p1

    .line 109
    goto :goto_1

    .line 110
    :catch_d
    move-exception p1

    .line 111
    move-object v1, v0

    .line 112
    move-object v0, p1

    .line 113
    move-object p1, v1

    .line 114
    :goto_4
    :try_start_b
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_2

    .line 115
    .line 116
    .line 117
    if-eqz v1, :cond_1

    .line 118
    .line 119
    :try_start_c
    invoke-virtual {v1}, Ljava/io/FileInputStream;->close()V
    :try_end_c
    .catch Ljava/io/IOException; {:try_start_c .. :try_end_c} :catch_e
    .catchall {:try_start_c .. :try_end_c} :catchall_3

    .line 120
    .line 121
    .line 122
    goto :goto_5

    .line 123
    :catch_e
    move-exception v0

    .line 124
    :try_start_d
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_3

    .line 125
    .line 126
    .line 127
    :cond_1
    :goto_5
    if-eqz p1, :cond_4

    .line 128
    .line 129
    :try_start_e
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->close()V
    :try_end_e
    .catch Ljava/io/IOException; {:try_start_e .. :try_end_e} :catch_f
    .catchall {:try_start_e .. :try_end_e} :catchall_3

    .line 130
    .line 131
    .line 132
    goto :goto_a

    .line 133
    :catch_f
    move-exception p1

    .line 134
    goto :goto_1

    .line 135
    :catch_10
    move-exception p1

    .line 136
    move-object v1, v0

    .line 137
    move-object v0, p1

    .line 138
    move-object p1, v1

    .line 139
    :goto_6
    :try_start_f
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_2

    .line 140
    .line 141
    .line 142
    if-eqz v1, :cond_2

    .line 143
    .line 144
    :try_start_10
    invoke-virtual {v1}, Ljava/io/FileInputStream;->close()V
    :try_end_10
    .catch Ljava/io/IOException; {:try_start_10 .. :try_end_10} :catch_11
    .catchall {:try_start_10 .. :try_end_10} :catchall_3

    .line 145
    .line 146
    .line 147
    goto :goto_7

    .line 148
    :catch_11
    move-exception v0

    .line 149
    :try_start_11
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_11
    .catchall {:try_start_11 .. :try_end_11} :catchall_3

    .line 150
    .line 151
    .line 152
    :cond_2
    :goto_7
    if-eqz p1, :cond_4

    .line 153
    .line 154
    :try_start_12
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->close()V
    :try_end_12
    .catch Ljava/io/IOException; {:try_start_12 .. :try_end_12} :catch_12
    .catchall {:try_start_12 .. :try_end_12} :catchall_3

    .line 155
    .line 156
    .line 157
    goto :goto_a

    .line 158
    :catch_12
    move-exception p1

    .line 159
    goto :goto_1

    .line 160
    :catch_13
    move-exception p1

    .line 161
    move-object v1, v0

    .line 162
    move-object v0, p1

    .line 163
    move-object p1, v1

    .line 164
    :goto_8
    :try_start_13
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_13
    .catchall {:try_start_13 .. :try_end_13} :catchall_2

    .line 165
    .line 166
    .line 167
    if-eqz v1, :cond_3

    .line 168
    .line 169
    :try_start_14
    invoke-virtual {v1}, Ljava/io/FileInputStream;->close()V
    :try_end_14
    .catch Ljava/io/IOException; {:try_start_14 .. :try_end_14} :catch_14
    .catchall {:try_start_14 .. :try_end_14} :catchall_3

    .line 170
    .line 171
    .line 172
    goto :goto_9

    .line 173
    :catch_14
    move-exception v0

    .line 174
    :try_start_15
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_15
    .catchall {:try_start_15 .. :try_end_15} :catchall_3

    .line 175
    .line 176
    .line 177
    :cond_3
    :goto_9
    if-eqz p1, :cond_4

    .line 178
    .line 179
    :try_start_16
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->close()V
    :try_end_16
    .catch Ljava/io/IOException; {:try_start_16 .. :try_end_16} :catch_15
    .catchall {:try_start_16 .. :try_end_16} :catchall_3

    .line 180
    .line 181
    .line 182
    goto :goto_a

    .line 183
    :catch_15
    move-exception p1

    .line 184
    goto/16 :goto_1

    .line 185
    .line 186
    :cond_4
    :goto_a
    monitor-exit p0

    .line 187
    return-void

    .line 188
    :catchall_2
    move-exception v0

    .line 189
    :goto_b
    if-eqz v1, :cond_5

    .line 190
    .line 191
    :try_start_17
    invoke-virtual {v1}, Ljava/io/FileInputStream;->close()V
    :try_end_17
    .catch Ljava/io/IOException; {:try_start_17 .. :try_end_17} :catch_16
    .catchall {:try_start_17 .. :try_end_17} :catchall_3

    .line 192
    .line 193
    .line 194
    goto :goto_c

    .line 195
    :catchall_3
    move-exception p1

    .line 196
    goto :goto_e

    .line 197
    :catch_16
    move-exception v1

    .line 198
    :try_start_18
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_18
    .catchall {:try_start_18 .. :try_end_18} :catchall_3

    .line 199
    .line 200
    .line 201
    :cond_5
    :goto_c
    if-eqz p1, :cond_6

    .line 202
    .line 203
    :try_start_19
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->close()V
    :try_end_19
    .catch Ljava/io/IOException; {:try_start_19 .. :try_end_19} :catch_17
    .catchall {:try_start_19 .. :try_end_19} :catchall_3

    .line 204
    .line 205
    .line 206
    goto :goto_d

    .line 207
    :catch_17
    move-exception p1

    .line 208
    :try_start_1a
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 209
    .line 210
    .line 211
    :cond_6
    :goto_d
    throw v0
    :try_end_1a
    .catchall {:try_start_1a .. :try_end_1a} :catchall_3

    .line 212
    :goto_e
    monitor-exit p0

    .line 213
    throw p1
.end method

.method public declared-synchronized saveFileSlicePart(Ljava/lang/String;)V
    .locals 3

    .line 1
    monitor-enter p0

    .line 2
    const/4 v0, 0x0

    .line 3
    :try_start_0
    new-instance v1, Ljava/io/FileOutputStream;

    .line 4
    .line 5
    invoke-direct {v1, p1}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_9
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_6
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 6
    .line 7
    .line 8
    :try_start_1
    new-instance p1, Ljava/io/ObjectOutputStream;

    .line 9
    .line 10
    invoke-direct {p1, v1}, Ljava/io/ObjectOutputStream;-><init>(Ljava/io/OutputStream;)V
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_5
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_4
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 11
    .line 12
    .line 13
    :try_start_2
    invoke-virtual {p1, p0}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V

    .line 14
    .line 15
    .line 16
    invoke-virtual {p1}, Ljava/io/ObjectOutputStream;->flush()V
    :try_end_2
    .catch Ljava/io/FileNotFoundException; {:try_start_2 .. :try_end_2} :catch_3
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 17
    .line 18
    .line 19
    :try_start_3
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_3

    .line 20
    .line 21
    .line 22
    goto :goto_0

    .line 23
    :catch_0
    move-exception v0

    .line 24
    :try_start_4
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_3

    .line 25
    .line 26
    .line 27
    :goto_0
    :try_start_5
    invoke-virtual {p1}, Ljava/io/ObjectOutputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_1
    .catchall {:try_start_5 .. :try_end_5} :catchall_3

    .line 28
    .line 29
    .line 30
    goto/16 :goto_6

    .line 31
    .line 32
    :catch_1
    move-exception p1

    .line 33
    :goto_1
    :try_start_6
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_3

    .line 34
    .line 35
    .line 36
    goto/16 :goto_6

    .line 37
    .line 38
    :catch_2
    move-exception v0

    .line 39
    goto :goto_2

    .line 40
    :catch_3
    move-exception v0

    .line 41
    goto :goto_4

    .line 42
    :catchall_0
    move-exception p1

    .line 43
    move-object v2, v0

    .line 44
    move-object v0, p1

    .line 45
    move-object p1, v2

    .line 46
    goto :goto_7

    .line 47
    :catch_4
    move-exception p1

    .line 48
    move-object v2, v0

    .line 49
    move-object v0, p1

    .line 50
    move-object p1, v2

    .line 51
    goto :goto_2

    .line 52
    :catch_5
    move-exception p1

    .line 53
    move-object v2, v0

    .line 54
    move-object v0, p1

    .line 55
    move-object p1, v2

    .line 56
    goto :goto_4

    .line 57
    :catchall_1
    move-exception p1

    .line 58
    move-object v1, v0

    .line 59
    move-object v0, p1

    .line 60
    move-object p1, v1

    .line 61
    goto :goto_7

    .line 62
    :catch_6
    move-exception p1

    .line 63
    move-object v1, v0

    .line 64
    move-object v0, p1

    .line 65
    move-object p1, v1

    .line 66
    :goto_2
    :try_start_7
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    .line 67
    .line 68
    .line 69
    if-eqz v1, :cond_0

    .line 70
    .line 71
    :try_start_8
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_7
    .catchall {:try_start_8 .. :try_end_8} :catchall_3

    .line 72
    .line 73
    .line 74
    goto :goto_3

    .line 75
    :catch_7
    move-exception v0

    .line 76
    :try_start_9
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_3

    .line 77
    .line 78
    .line 79
    :cond_0
    :goto_3
    if-eqz p1, :cond_2

    .line 80
    .line 81
    :try_start_a
    invoke-virtual {p1}, Ljava/io/ObjectOutputStream;->close()V
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_8
    .catchall {:try_start_a .. :try_end_a} :catchall_3

    .line 82
    .line 83
    .line 84
    goto :goto_6

    .line 85
    :catch_8
    move-exception p1

    .line 86
    goto :goto_1

    .line 87
    :catch_9
    move-exception p1

    .line 88
    move-object v1, v0

    .line 89
    move-object v0, p1

    .line 90
    move-object p1, v1

    .line 91
    :goto_4
    :try_start_b
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_2

    .line 92
    .line 93
    .line 94
    if-eqz v1, :cond_1

    .line 95
    .line 96
    :try_start_c
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V
    :try_end_c
    .catch Ljava/io/IOException; {:try_start_c .. :try_end_c} :catch_a
    .catchall {:try_start_c .. :try_end_c} :catchall_3

    .line 97
    .line 98
    .line 99
    goto :goto_5

    .line 100
    :catch_a
    move-exception v0

    .line 101
    :try_start_d
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_3

    .line 102
    .line 103
    .line 104
    :cond_1
    :goto_5
    if-eqz p1, :cond_2

    .line 105
    .line 106
    :try_start_e
    invoke-virtual {p1}, Ljava/io/ObjectOutputStream;->close()V
    :try_end_e
    .catch Ljava/io/IOException; {:try_start_e .. :try_end_e} :catch_b
    .catchall {:try_start_e .. :try_end_e} :catchall_3

    .line 107
    .line 108
    .line 109
    goto :goto_6

    .line 110
    :catch_b
    move-exception p1

    .line 111
    goto :goto_1

    .line 112
    :cond_2
    :goto_6
    monitor-exit p0

    .line 113
    return-void

    .line 114
    :catchall_2
    move-exception v0

    .line 115
    :goto_7
    if-eqz v1, :cond_3

    .line 116
    .line 117
    :try_start_f
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V
    :try_end_f
    .catch Ljava/io/IOException; {:try_start_f .. :try_end_f} :catch_c
    .catchall {:try_start_f .. :try_end_f} :catchall_3

    .line 118
    .line 119
    .line 120
    goto :goto_8

    .line 121
    :catchall_3
    move-exception p1

    .line 122
    goto :goto_a

    .line 123
    :catch_c
    move-exception v1

    .line 124
    :try_start_10
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_10
    .catchall {:try_start_10 .. :try_end_10} :catchall_3

    .line 125
    .line 126
    .line 127
    :cond_3
    :goto_8
    if-eqz p1, :cond_4

    .line 128
    .line 129
    :try_start_11
    invoke-virtual {p1}, Ljava/io/ObjectOutputStream;->close()V
    :try_end_11
    .catch Ljava/io/IOException; {:try_start_11 .. :try_end_11} :catch_d
    .catchall {:try_start_11 .. :try_end_11} :catchall_3

    .line 130
    .line 131
    .line 132
    goto :goto_9

    .line 133
    :catch_d
    move-exception p1

    .line 134
    :try_start_12
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 135
    .line 136
    .line 137
    :cond_4
    :goto_9
    throw v0
    :try_end_12
    .catchall {:try_start_12 .. :try_end_12} :catchall_3

    .line 138
    :goto_a
    monitor-exit p0

    .line 139
    throw p1
.end method

.method public declared-synchronized updateAfterSliceInit(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 3
    .line 4
    .line 5
    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 6
    if-eqz v0, :cond_0

    .line 7
    .line 8
    monitor-exit p0

    .line 9
    return-void

    .line 10
    :cond_0
    :try_start_1
    iput-object p1, p0, Lcom/tencent/cos/task/slice/FileSlicePart;->session:Ljava/lang/String;

    .line 11
    .line 12
    iput p2, p0, Lcom/tencent/cos/task/slice/FileSlicePart;->sliceSize:I

    .line 13
    .line 14
    iput-object p3, p0, Lcom/tencent/cos/task/slice/FileSlicePart;->sha:Ljava/lang/String;

    .line 15
    .line 16
    const/4 p1, 0x1

    .line 17
    iput-boolean p1, p0, Lcom/tencent/cos/task/slice/FileSlicePart;->slice_init_flag:Z

    .line 18
    .line 19
    invoke-virtual {p0, p4}, Lcom/tencent/cos/task/slice/FileSlicePart;->saveFileSlicePart(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 20
    .line 21
    .line 22
    monitor-exit p0

    .line 23
    return-void

    .line 24
    :catchall_0
    move-exception p1

    .line 25
    monitor-exit p0

    .line 26
    throw p1
.end method

.method public declared-synchronized updateSlicePart(IZ)V
    .locals 1

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    iget-object v0, p0, Lcom/tencent/cos/task/slice/FileSlicePart;->sliceParts:Ljava/util/ArrayList;

    .line 3
    .line 4
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 5
    .line 6
    .line 7
    move-result-object p1

    .line 8
    check-cast p1, Lcom/tencent/cos/task/slice/SlicePart;

    .line 9
    .line 10
    invoke-virtual {p1, p2}, Lcom/tencent/cos/task/slice/SlicePart;->setOverFlag(Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 11
    .line 12
    .line 13
    monitor-exit p0

    .line 14
    return-void

    .line 15
    :catchall_0
    move-exception p1

    .line 16
    monitor-exit p0

    .line 17
    throw p1
.end method
