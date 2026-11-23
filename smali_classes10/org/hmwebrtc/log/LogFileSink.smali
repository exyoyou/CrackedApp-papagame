.class Lorg/hmwebrtc/log/LogFileSink;
.super Lorg/hmwebrtc/log/LogApi$LogSink;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/hmwebrtc/log/LogFileSink$FileComparator;,
        Lorg/hmwebrtc/log/LogFileSink$FileInfo;,
        Lorg/hmwebrtc/log/LogFileSink$FileLogObserve;
    }
.end annotation


# static fields
.field public static final MAX_FILE_SZIE:J = 0xa00000L


# instance fields
.field private mFileLogObserve:Lorg/hmwebrtc/log/LogFileSink$FileLogObserve;

.field private mFileSize:J

.field private mFileStream:Ljava/io/FileOutputStream;

.field private mFilepathSuffix:Ljava/lang/String;

.field private mLogBaseTimeMs:J

.field private mLogBaseTimeMsString:Ljava/lang/String;

.field private mMaxFileSize:J

.field private mRawFilepath:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;JLorg/hmwebrtc/log/LogFileSink$FileLogObserve;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Lorg/hmwebrtc/log/LogApi$LogSink;-><init>()V

    .line 2
    iput-object p1, p0, Lorg/hmwebrtc/log/LogFileSink;->mRawFilepath:Ljava/lang/String;

    .line 3
    invoke-direct {p0}, Lorg/hmwebrtc/log/LogFileSink;->getLatelyLogFilePath()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lorg/hmwebrtc/log/LogFileSink;->createLogFile(Ljava/lang/String;)Ljava/io/FileOutputStream;

    move-result-object p1

    iput-object p1, p0, Lorg/hmwebrtc/log/LogFileSink;->mFileStream:Ljava/io/FileOutputStream;

    const-wide/32 v0, 0xa00000

    .line 4
    invoke-static {p2, p3, v0, v1}, Ljava/lang/Math;->max(JJ)J

    move-result-wide p1

    iput-wide p1, p0, Lorg/hmwebrtc/log/LogFileSink;->mMaxFileSize:J

    .line 5
    iput-object p4, p0, Lorg/hmwebrtc/log/LogFileSink;->mFileLogObserve:Lorg/hmwebrtc/log/LogFileSink$FileLogObserve;

    const-wide/16 p1, 0x0

    .line 6
    iput-wide p1, p0, Lorg/hmwebrtc/log/LogFileSink;->mFileSize:J

    const-string p3, ""

    .line 7
    iput-object p3, p0, Lorg/hmwebrtc/log/LogFileSink;->mFilepathSuffix:Ljava/lang/String;

    .line 8
    iput-object p3, p0, Lorg/hmwebrtc/log/LogFileSink;->mLogBaseTimeMsString:Ljava/lang/String;

    .line 9
    iput-wide p1, p0, Lorg/hmwebrtc/log/LogFileSink;->mLogBaseTimeMs:J

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lorg/hmwebrtc/log/LogFileSink$FileLogObserve;)V
    .locals 2

    .line 10
    invoke-direct {p0}, Lorg/hmwebrtc/log/LogApi$LogSink;-><init>()V

    .line 11
    invoke-direct {p0, p1}, Lorg/hmwebrtc/log/LogFileSink;->createLogFile(Ljava/lang/String;)Ljava/io/FileOutputStream;

    move-result-object p1

    iput-object p1, p0, Lorg/hmwebrtc/log/LogFileSink;->mFileStream:Ljava/io/FileOutputStream;

    const-wide/32 v0, 0xa00000

    .line 12
    iput-wide v0, p0, Lorg/hmwebrtc/log/LogFileSink;->mMaxFileSize:J

    .line 13
    iput-object p2, p0, Lorg/hmwebrtc/log/LogFileSink;->mFileLogObserve:Lorg/hmwebrtc/log/LogFileSink$FileLogObserve;

    const-wide/16 p1, 0x0

    .line 14
    iput-wide p1, p0, Lorg/hmwebrtc/log/LogFileSink;->mFileSize:J

    const-string v0, ""

    .line 15
    iput-object v0, p0, Lorg/hmwebrtc/log/LogFileSink;->mFilepathSuffix:Ljava/lang/String;

    .line 16
    iput-object v0, p0, Lorg/hmwebrtc/log/LogFileSink;->mLogBaseTimeMsString:Ljava/lang/String;

    .line 17
    iput-wide p1, p0, Lorg/hmwebrtc/log/LogFileSink;->mLogBaseTimeMs:J

    return-void
.end method

.method private checkLogFile()V
    .locals 5

    .line 1
    iget-wide v0, p0, Lorg/hmwebrtc/log/LogFileSink;->mMaxFileSize:J

    .line 2
    .line 3
    const-wide/16 v2, 0x0

    .line 4
    .line 5
    cmp-long v4, v0, v2

    .line 6
    .line 7
    if-lez v4, :cond_1

    .line 8
    .line 9
    iget-wide v2, p0, Lorg/hmwebrtc/log/LogFileSink;->mFileSize:J

    .line 10
    .line 11
    cmp-long v4, v2, v0

    .line 12
    .line 13
    if-ltz v4, :cond_1

    .line 14
    .line 15
    iget-object v0, p0, Lorg/hmwebrtc/log/LogFileSink;->mFileLogObserve:Lorg/hmwebrtc/log/LogFileSink$FileLogObserve;

    .line 16
    .line 17
    if-eqz v0, :cond_0

    .line 18
    .line 19
    new-instance v1, Ljava/lang/StringBuilder;

    .line 20
    .line 21
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 22
    .line 23
    .line 24
    iget-object v2, p0, Lorg/hmwebrtc/log/LogFileSink;->mRawFilepath:Ljava/lang/String;

    .line 25
    .line 26
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 27
    .line 28
    .line 29
    iget-object v2, p0, Lorg/hmwebrtc/log/LogFileSink;->mFilepathSuffix:Ljava/lang/String;

    .line 30
    .line 31
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 32
    .line 33
    .line 34
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 35
    .line 36
    .line 37
    move-result-object v1

    .line 38
    iget-wide v2, p0, Lorg/hmwebrtc/log/LogFileSink;->mFileSize:J

    .line 39
    .line 40
    invoke-interface {v0, v1, v2, v3}, Lorg/hmwebrtc/log/LogFileSink$FileLogObserve;->onFileSizeChange(Ljava/lang/String;J)V

    .line 41
    .line 42
    .line 43
    goto :goto_0

    .line 44
    :cond_0
    iget-object v0, p0, Lorg/hmwebrtc/log/LogFileSink;->mFileStream:Ljava/io/FileOutputStream;

    .line 45
    .line 46
    if-eqz v0, :cond_1

    .line 47
    .line 48
    invoke-direct {p0}, Lorg/hmwebrtc/log/LogFileSink;->deleteExpriedLogFile()V

    .line 49
    .line 50
    .line 51
    invoke-direct {p0}, Lorg/hmwebrtc/log/LogFileSink;->closeLogFile()V

    .line 52
    .line 53
    .line 54
    new-instance v0, Ljava/lang/StringBuilder;

    .line 55
    .line 56
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 57
    .line 58
    .line 59
    iget-object v1, p0, Lorg/hmwebrtc/log/LogFileSink;->mRawFilepath:Ljava/lang/String;

    .line 60
    .line 61
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 62
    .line 63
    .line 64
    invoke-direct {p0}, Lorg/hmwebrtc/log/LogFileSink;->getFilepathSuffix()Ljava/lang/String;

    .line 65
    .line 66
    .line 67
    move-result-object v1

    .line 68
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 69
    .line 70
    .line 71
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 72
    .line 73
    .line 74
    move-result-object v0

    .line 75
    invoke-direct {p0, v0}, Lorg/hmwebrtc/log/LogFileSink;->createLogFile(Ljava/lang/String;)Ljava/io/FileOutputStream;

    .line 76
    .line 77
    .line 78
    move-result-object v0

    .line 79
    iput-object v0, p0, Lorg/hmwebrtc/log/LogFileSink;->mFileStream:Ljava/io/FileOutputStream;

    .line 80
    .line 81
    :cond_1
    :goto_0
    return-void
.end method

.method private closeLogFile()V
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/hmwebrtc/log/LogFileSink;->mFileStream:Ljava/io/FileOutputStream;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    :try_start_0
    invoke-virtual {v0}, Ljava/io/FileOutputStream;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 7
    .line 8
    .line 9
    goto :goto_0

    .line 10
    :catch_0
    move-exception v0

    .line 11
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 12
    .line 13
    .line 14
    :goto_0
    const/4 v0, 0x0

    .line 15
    iput-object v0, p0, Lorg/hmwebrtc/log/LogFileSink;->mFileStream:Ljava/io/FileOutputStream;

    .line 16
    .line 17
    return-void
.end method

.method private createLogFile(Ljava/lang/String;)Ljava/io/FileOutputStream;
    .locals 3

    .line 1
    new-instance v0, Ljava/io/File;

    .line 2
    .line 3
    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const/4 p1, 0x0

    .line 7
    :try_start_0
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    .line 8
    .line 9
    .line 10
    move-result v1

    .line 11
    if-nez v1, :cond_0

    .line 12
    .line 13
    invoke-virtual {v0}, Ljava/io/File;->createNewFile()Z

    .line 14
    .line 15
    .line 16
    goto :goto_0

    .line 17
    :cond_0
    invoke-virtual {v0}, Ljava/io/File;->isDirectory()Z

    .line 18
    .line 19
    .line 20
    move-result v1

    .line 21
    if-eqz v1, :cond_1

    .line 22
    .line 23
    return-object p1

    .line 24
    :cond_1
    :goto_0
    invoke-virtual {v0}, Ljava/io/File;->length()J

    .line 25
    .line 26
    .line 27
    move-result-wide v1

    .line 28
    iput-wide v1, p0, Lorg/hmwebrtc/log/LogFileSink;->mFileSize:J

    .line 29
    .line 30
    new-instance v1, Ljava/io/FileOutputStream;

    .line 31
    .line 32
    const/4 v2, 0x1

    .line 33
    invoke-direct {v1, v0, v2}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 34
    .line 35
    .line 36
    return-object v1

    .line 37
    :catch_0
    move-exception v0

    .line 38
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 39
    .line 40
    .line 41
    return-object p1
.end method

.method private deleteExpriedLogFile()V
    .locals 3

    .line 1
    invoke-direct {p0}, Lorg/hmwebrtc/log/LogFileSink;->enumLogFiles()Ljava/util/LinkedList;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    if-nez v0, :cond_0

    .line 6
    .line 7
    return-void

    .line 8
    :cond_0
    :goto_0
    :try_start_0
    invoke-virtual {v0}, Ljava/util/LinkedList;->size()I

    .line 9
    .line 10
    .line 11
    move-result v1

    .line 12
    const/16 v2, 0xa

    .line 13
    .line 14
    if-le v1, v2, :cond_1

    .line 15
    .line 16
    const/4 v1, 0x0

    .line 17
    invoke-virtual {v0, v1}, Ljava/util/LinkedList;->remove(I)Ljava/lang/Object;

    .line 18
    .line 19
    .line 20
    move-result-object v1

    .line 21
    check-cast v1, Lorg/hmwebrtc/log/LogFileSink$FileInfo;

    .line 22
    .line 23
    iget-object v1, v1, Lorg/hmwebrtc/log/LogFileSink$FileInfo;->file:Ljava/io/File;

    .line 24
    .line 25
    invoke-virtual {v1}, Ljava/io/File;->delete()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 26
    .line 27
    .line 28
    goto :goto_0

    .line 29
    :catch_0
    move-exception v0

    .line 30
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 31
    .line 32
    .line 33
    :cond_1
    return-void
.end method

.method private enumLogFiles()Ljava/util/LinkedList;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/LinkedList<",
            "Lorg/hmwebrtc/log/LogFileSink$FileInfo;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lorg/hmwebrtc/log/LogFileSink;->mRawFilepath:Ljava/lang/String;

    .line 2
    .line 3
    const-string v1, "/"

    .line 4
    .line 5
    invoke-virtual {v0, v1}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    iget-object v1, p0, Lorg/hmwebrtc/log/LogFileSink;->mRawFilepath:Ljava/lang/String;

    .line 10
    .line 11
    add-int/lit8 v2, v0, 0x1

    .line 12
    .line 13
    invoke-virtual {v1, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    .line 14
    .line 15
    .line 16
    move-result-object v1

    .line 17
    iget-object v2, p0, Lorg/hmwebrtc/log/LogFileSink;->mRawFilepath:Ljava/lang/String;

    .line 18
    .line 19
    const/4 v3, 0x0

    .line 20
    invoke-virtual {v2, v3, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 21
    .line 22
    .line 23
    move-result-object v0

    .line 24
    const/4 v2, 0x0

    .line 25
    :try_start_0
    new-instance v4, Ljava/io/File;

    .line 26
    .line 27
    invoke-direct {v4, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 28
    .line 29
    .line 30
    invoke-virtual {v4}, Ljava/io/File;->listFiles()[Ljava/io/File;

    .line 31
    .line 32
    .line 33
    move-result-object v0

    .line 34
    new-instance v4, Ljava/util/LinkedList;

    .line 35
    .line 36
    invoke-direct {v4}, Ljava/util/LinkedList;-><init>()V

    .line 37
    .line 38
    .line 39
    array-length v5, v0

    .line 40
    :goto_0
    if-ge v3, v5, :cond_2

    .line 41
    .line 42
    aget-object v6, v0, v3

    .line 43
    .line 44
    invoke-virtual {v6}, Ljava/io/File;->isDirectory()Z

    .line 45
    .line 46
    .line 47
    move-result v7

    .line 48
    if-eqz v7, :cond_0

    .line 49
    .line 50
    goto :goto_1

    .line 51
    :cond_0
    invoke-virtual {v6}, Ljava/io/File;->getName()Ljava/lang/String;

    .line 52
    .line 53
    .line 54
    move-result-object v7

    .line 55
    invoke-virtual {v7, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 56
    .line 57
    .line 58
    move-result v7

    .line 59
    if-eqz v7, :cond_1

    .line 60
    .line 61
    new-instance v7, Lorg/hmwebrtc/log/LogFileSink$FileInfo;

    .line 62
    .line 63
    invoke-direct {v7, v2}, Lorg/hmwebrtc/log/LogFileSink$FileInfo;-><init>(Lorg/hmwebrtc/log/LogFileSink$1;)V

    .line 64
    .line 65
    .line 66
    invoke-virtual {v6}, Ljava/io/File;->lastModified()J

    .line 67
    .line 68
    .line 69
    move-result-wide v8

    .line 70
    iput-wide v8, v7, Lorg/hmwebrtc/log/LogFileSink$FileInfo;->lastModified:J

    .line 71
    .line 72
    iput-object v6, v7, Lorg/hmwebrtc/log/LogFileSink$FileInfo;->file:Ljava/io/File;

    .line 73
    .line 74
    invoke-virtual {v4, v7}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 75
    .line 76
    .line 77
    :cond_1
    :goto_1
    add-int/lit8 v3, v3, 0x1

    .line 78
    .line 79
    goto :goto_0

    .line 80
    :cond_2
    new-instance v0, Lorg/hmwebrtc/log/LogFileSink$FileComparator;

    .line 81
    .line 82
    invoke-direct {v0, p0}, Lorg/hmwebrtc/log/LogFileSink$FileComparator;-><init>(Lorg/hmwebrtc/log/LogFileSink;)V

    .line 83
    .line 84
    .line 85
    invoke-static {v4, v0}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 86
    .line 87
    .line 88
    return-object v4

    .line 89
    :catch_0
    move-exception v0

    .line 90
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 91
    .line 92
    .line 93
    return-object v2
.end method

.method private getFilepathSuffix()Ljava/lang/String;
    .locals 5

    .line 1
    const-string v0, "_"

    .line 2
    .line 3
    :try_start_0
    new-instance v1, Ljava/util/Date;

    .line 4
    .line 5
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 6
    .line 7
    .line 8
    move-result-wide v2

    .line 9
    invoke-direct {v1, v2, v3}, Ljava/util/Date;-><init>(J)V

    .line 10
    .line 11
    .line 12
    new-instance v2, Ljava/text/SimpleDateFormat;

    .line 13
    .line 14
    const-string v3, "MMddHHmmss"

    .line 15
    .line 16
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    .line 17
    .line 18
    .line 19
    move-result-object v4

    .line 20
    invoke-direct {v2, v3, v4}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    .line 21
    .line 22
    .line 23
    new-instance v3, Ljava/lang/StringBuilder;

    .line 24
    .line 25
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 26
    .line 27
    .line 28
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 29
    .line 30
    .line 31
    invoke-virtual {v2, v1}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    .line 32
    .line 33
    .line 34
    move-result-object v1

    .line 35
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 36
    .line 37
    .line 38
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 39
    .line 40
    .line 41
    move-result-object v1

    .line 42
    iput-object v1, p0, Lorg/hmwebrtc/log/LogFileSink;->mFilepathSuffix:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 43
    .line 44
    goto :goto_0

    .line 45
    :catch_0
    new-instance v1, Ljava/lang/StringBuilder;

    .line 46
    .line 47
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 48
    .line 49
    .line 50
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 51
    .line 52
    .line 53
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 54
    .line 55
    .line 56
    move-result-wide v2

    .line 57
    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 58
    .line 59
    .line 60
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 61
    .line 62
    .line 63
    move-result-object v0

    .line 64
    iput-object v0, p0, Lorg/hmwebrtc/log/LogFileSink;->mFilepathSuffix:Ljava/lang/String;

    .line 65
    .line 66
    :goto_0
    iget-object v0, p0, Lorg/hmwebrtc/log/LogFileSink;->mFilepathSuffix:Ljava/lang/String;

    .line 67
    .line 68
    return-object v0
.end method

.method private getFormatTime(J)Ljava/lang/String;
    .locals 10

    .line 1
    iget-wide v0, p0, Lorg/hmwebrtc/log/LogFileSink;->mLogBaseTimeMs:J

    .line 2
    .line 3
    sub-long v2, p1, v0

    .line 4
    .line 5
    const-wide/16 v4, 0x0

    .line 6
    .line 7
    const-wide/32 v6, 0xea60

    .line 8
    .line 9
    .line 10
    cmp-long v8, v0, v4

    .line 11
    .line 12
    if-eqz v8, :cond_4

    .line 13
    .line 14
    cmp-long v0, v2, v6

    .line 15
    .line 16
    if-gez v0, :cond_4

    .line 17
    .line 18
    iget-object v0, p0, Lorg/hmwebrtc/log/LogFileSink;->mLogBaseTimeMsString:Ljava/lang/String;

    .line 19
    .line 20
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    .line 21
    .line 22
    .line 23
    move-result v0

    .line 24
    const/4 v1, 0x5

    .line 25
    if-ge v0, v1, :cond_0

    .line 26
    .line 27
    goto/16 :goto_2

    .line 28
    .line 29
    :cond_0
    iget-object p1, p0, Lorg/hmwebrtc/log/LogFileSink;->mLogBaseTimeMsString:Ljava/lang/String;

    .line 30
    .line 31
    new-instance p2, Ljava/lang/StringBuilder;

    .line 32
    .line 33
    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    .line 34
    .line 35
    .line 36
    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 37
    .line 38
    .line 39
    const-string p1, ":"

    .line 40
    .line 41
    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 42
    .line 43
    .line 44
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 45
    .line 46
    .line 47
    move-result-object p2

    .line 48
    const-wide/16 v0, 0x3e8

    .line 49
    .line 50
    div-long v4, v2, v0

    .line 51
    .line 52
    const-string v6, "0"

    .line 53
    .line 54
    const-wide/16 v7, 0xa

    .line 55
    .line 56
    cmp-long v9, v4, v7

    .line 57
    .line 58
    if-ltz v9, :cond_1

    .line 59
    .line 60
    new-instance v9, Ljava/lang/StringBuilder;

    .line 61
    .line 62
    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    .line 63
    .line 64
    .line 65
    invoke-virtual {v9, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 66
    .line 67
    .line 68
    invoke-virtual {v9, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 69
    .line 70
    .line 71
    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 72
    .line 73
    .line 74
    move-result-object p2

    .line 75
    goto :goto_0

    .line 76
    :cond_1
    new-instance v9, Ljava/lang/StringBuilder;

    .line 77
    .line 78
    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    .line 79
    .line 80
    .line 81
    invoke-virtual {v9, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 82
    .line 83
    .line 84
    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 85
    .line 86
    .line 87
    invoke-virtual {v9, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 88
    .line 89
    .line 90
    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 91
    .line 92
    .line 93
    move-result-object p2

    .line 94
    :goto_0
    rem-long/2addr v2, v0

    .line 95
    new-instance v0, Ljava/lang/StringBuilder;

    .line 96
    .line 97
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 98
    .line 99
    .line 100
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 101
    .line 102
    .line 103
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 104
    .line 105
    .line 106
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 107
    .line 108
    .line 109
    move-result-object p1

    .line 110
    const-wide/16 v0, 0x64

    .line 111
    .line 112
    cmp-long p2, v2, v0

    .line 113
    .line 114
    if-ltz p2, :cond_2

    .line 115
    .line 116
    new-instance p2, Ljava/lang/StringBuilder;

    .line 117
    .line 118
    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    .line 119
    .line 120
    .line 121
    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 122
    .line 123
    .line 124
    invoke-virtual {p2, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 125
    .line 126
    .line 127
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 128
    .line 129
    .line 130
    move-result-object p1

    .line 131
    goto :goto_1

    .line 132
    :cond_2
    cmp-long p2, v2, v7

    .line 133
    .line 134
    if-ltz p2, :cond_3

    .line 135
    .line 136
    new-instance p2, Ljava/lang/StringBuilder;

    .line 137
    .line 138
    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    .line 139
    .line 140
    .line 141
    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 142
    .line 143
    .line 144
    invoke-virtual {p2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 145
    .line 146
    .line 147
    invoke-virtual {p2, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 148
    .line 149
    .line 150
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 151
    .line 152
    .line 153
    move-result-object p1

    .line 154
    goto :goto_1

    .line 155
    :cond_3
    new-instance p2, Ljava/lang/StringBuilder;

    .line 156
    .line 157
    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    .line 158
    .line 159
    .line 160
    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 161
    .line 162
    .line 163
    const-string p1, "00"

    .line 164
    .line 165
    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 166
    .line 167
    .line 168
    invoke-virtual {p2, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 169
    .line 170
    .line 171
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 172
    .line 173
    .line 174
    move-result-object p1

    .line 175
    :goto_1
    return-object p1

    .line 176
    :cond_4
    :goto_2
    new-instance v0, Ljava/util/Date;

    .line 177
    .line 178
    invoke-direct {v0, p1, p2}, Ljava/util/Date;-><init>(J)V

    .line 179
    .line 180
    .line 181
    new-instance v1, Ljava/text/SimpleDateFormat;

    .line 182
    .line 183
    const-string v2, "MM-dd HH:mm:ss:SSS"

    .line 184
    .line 185
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    .line 186
    .line 187
    .line 188
    move-result-object v3

    .line 189
    invoke-direct {v1, v2, v3}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    .line 190
    .line 191
    .line 192
    invoke-virtual {v1, v0}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    .line 193
    .line 194
    .line 195
    move-result-object v0

    .line 196
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    .line 197
    .line 198
    .line 199
    move-result v1

    .line 200
    add-int/lit8 v1, v1, -0x7

    .line 201
    .line 202
    const/4 v2, 0x0

    .line 203
    invoke-virtual {v0, v2, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 204
    .line 205
    .line 206
    move-result-object v1

    .line 207
    iput-object v1, p0, Lorg/hmwebrtc/log/LogFileSink;->mLogBaseTimeMsString:Ljava/lang/String;

    .line 208
    .line 209
    div-long/2addr p1, v6

    .line 210
    mul-long p1, p1, v6

    .line 211
    .line 212
    iput-wide p1, p0, Lorg/hmwebrtc/log/LogFileSink;->mLogBaseTimeMs:J

    .line 213
    .line 214
    return-object v0
.end method

.method private getLatelyLogFilePath()Ljava/lang/String;
    .locals 2

    .line 1
    invoke-direct {p0}, Lorg/hmwebrtc/log/LogFileSink;->enumLogFiles()Ljava/util/LinkedList;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    if-eqz v0, :cond_1

    .line 6
    .line 7
    invoke-virtual {v0}, Ljava/util/LinkedList;->size()I

    .line 8
    .line 9
    .line 10
    move-result v1

    .line 11
    if-nez v1, :cond_0

    .line 12
    .line 13
    goto :goto_0

    .line 14
    :cond_0
    invoke-virtual {v0}, Ljava/util/LinkedList;->size()I

    .line 15
    .line 16
    .line 17
    move-result v1

    .line 18
    add-int/lit8 v1, v1, -0x1

    .line 19
    .line 20
    invoke-virtual {v0, v1}, Ljava/util/LinkedList;->get(I)Ljava/lang/Object;

    .line 21
    .line 22
    .line 23
    move-result-object v0

    .line 24
    check-cast v0, Lorg/hmwebrtc/log/LogFileSink$FileInfo;

    .line 25
    .line 26
    iget-object v0, v0, Lorg/hmwebrtc/log/LogFileSink$FileInfo;->file:Ljava/io/File;

    .line 27
    .line 28
    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    .line 29
    .line 30
    .line 31
    move-result-object v0

    .line 32
    return-object v0

    .line 33
    :cond_1
    :goto_0
    new-instance v0, Ljava/lang/StringBuilder;

    .line 34
    .line 35
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 36
    .line 37
    .line 38
    iget-object v1, p0, Lorg/hmwebrtc/log/LogFileSink;->mRawFilepath:Ljava/lang/String;

    .line 39
    .line 40
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 41
    .line 42
    .line 43
    invoke-direct {p0}, Lorg/hmwebrtc/log/LogFileSink;->getFilepathSuffix()Ljava/lang/String;

    .line 44
    .line 45
    .line 46
    move-result-object v1

    .line 47
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 48
    .line 49
    .line 50
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 51
    .line 52
    .line 53
    move-result-object v0

    .line 54
    return-object v0
.end method

.method private declared-synchronized writeData([BII)V
    .locals 2

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    iget-object v0, p0, Lorg/hmwebrtc/log/LogFileSink;->mFileStream:Ljava/io/FileOutputStream;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3
    .line 4
    if-nez v0, :cond_0

    .line 5
    .line 6
    monitor-exit p0

    .line 7
    return-void

    .line 8
    :cond_0
    :try_start_1
    invoke-virtual {v0, p1, p2, p3}, Ljava/io/FileOutputStream;->write([BII)V

    .line 9
    .line 10
    .line 11
    iget-wide p1, p0, Lorg/hmwebrtc/log/LogFileSink;->mFileSize:J

    .line 12
    .line 13
    int-to-long v0, p3

    .line 14
    add-long/2addr p1, v0

    .line 15
    iput-wide p1, p0, Lorg/hmwebrtc/log/LogFileSink;->mFileSize:J

    .line 16
    .line 17
    invoke-direct {p0}, Lorg/hmwebrtc/log/LogFileSink;->checkLogFile()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 18
    .line 19
    .line 20
    :catch_0
    monitor-exit p0

    .line 21
    return-void

    .line 22
    :catchall_0
    move-exception p1

    .line 23
    monitor-exit p0

    .line 24
    throw p1
.end method


# virtual methods
.method public isOpend()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/hmwebrtc/log/LogFileSink;->mFileStream:Ljava/io/FileOutputStream;

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

.method public onLog(ILorg/hmwebrtc/log/LogApi$LogMessage;)V
    .locals 4

    .line 1
    invoke-static {p1}, Lorg/hmwebrtc/log/LogApi;->getLevelString(I)Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    new-instance v0, Ljava/lang/StringBuilder;

    .line 6
    .line 7
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 8
    .line 9
    .line 10
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 11
    .line 12
    .line 13
    const-string p1, " "

    .line 14
    .line 15
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 16
    .line 17
    .line 18
    iget-wide v1, p2, Lorg/hmwebrtc/log/LogApi$LogMessage;->time:J

    .line 19
    .line 20
    invoke-direct {p0, v1, v2}, Lorg/hmwebrtc/log/LogFileSink;->getFormatTime(J)Ljava/lang/String;

    .line 21
    .line 22
    .line 23
    move-result-object p1

    .line 24
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 25
    .line 26
    .line 27
    const-string p1, "  "

    .line 28
    .line 29
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 30
    .line 31
    .line 32
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 33
    .line 34
    .line 35
    move-result-object v0

    .line 36
    new-instance v1, Ljava/lang/StringBuilder;

    .line 37
    .line 38
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 39
    .line 40
    .line 41
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 42
    .line 43
    .line 44
    const-string v0, " ["

    .line 45
    .line 46
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 47
    .line 48
    .line 49
    iget-wide v2, p2, Lorg/hmwebrtc/log/LogApi$LogMessage;->pid:J

    .line 50
    .line 51
    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 52
    .line 53
    .line 54
    const-string v0, ":"

    .line 55
    .line 56
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 57
    .line 58
    .line 59
    iget-wide v2, p2, Lorg/hmwebrtc/log/LogApi$LogMessage;->tid:J

    .line 60
    .line 61
    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 62
    .line 63
    .line 64
    const-string v0, "]"

    .line 65
    .line 66
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 67
    .line 68
    .line 69
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 70
    .line 71
    .line 72
    move-result-object v0

    .line 73
    new-instance v1, Ljava/lang/StringBuilder;

    .line 74
    .line 75
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 76
    .line 77
    .line 78
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 79
    .line 80
    .line 81
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 82
    .line 83
    .line 84
    iget-object v0, p2, Lorg/hmwebrtc/log/LogApi$LogMessage;->tag:Ljava/lang/String;

    .line 85
    .line 86
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 87
    .line 88
    .line 89
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 90
    .line 91
    .line 92
    move-result-object v0

    .line 93
    new-instance v1, Ljava/lang/StringBuilder;

    .line 94
    .line 95
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 96
    .line 97
    .line 98
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 99
    .line 100
    .line 101
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 102
    .line 103
    .line 104
    iget-object p1, p2, Lorg/hmwebrtc/log/LogApi$LogMessage;->msg:Ljava/lang/String;

    .line 105
    .line 106
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 107
    .line 108
    .line 109
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 110
    .line 111
    .line 112
    move-result-object p1

    .line 113
    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    .line 114
    .line 115
    .line 116
    move-result-object p2

    .line 117
    const/4 v0, 0x0

    .line 118
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    .line 119
    .line 120
    .line 121
    move-result p1

    .line 122
    invoke-direct {p0, p2, v0, p1}, Lorg/hmwebrtc/log/LogFileSink;->writeData([BII)V

    .line 123
    .line 124
    .line 125
    return-void
.end method
