.class Lcom/join/mgps/mod/utils/f$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/join/mgps/mod/utils/f;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "a"
.end annotation


# instance fields
.field private b:Ljava/lang/String;

.field private c:Ljava/util/zip/ZipFile;

.field private d:Ljava/util/zip/ZipEntry;

.field private e:Landroid/content/Context;

.field private f:J

.field private g:Ljava/lang/String;

.field final synthetic h:Lcom/join/mgps/mod/utils/f;


# direct methods
.method constructor <init>(Lcom/join/mgps/mod/utils/f;Landroid/content/Context;Ljava/lang/String;Ljava/util/zip/ZipFile;Ljava/util/zip/ZipEntry;J)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "this$0",
            "context",
            "libDir",
            "zipFile",
            "zipEntry",
            "lastModify"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/join/mgps/mod/utils/f$a;->h:Lcom/join/mgps/mod/utils/f;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    iput-object p3, p0, Lcom/join/mgps/mod/utils/f$a;->g:Ljava/lang/String;

    .line 7
    .line 8
    new-instance p1, Ljava/io/File;

    .line 9
    .line 10
    invoke-direct {p1, p3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 11
    .line 12
    .line 13
    :try_start_0
    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    .line 14
    .line 15
    .line 16
    move-result p3

    .line 17
    if-nez p3, :cond_0

    .line 18
    .line 19
    invoke-virtual {p1}, Ljava/io/File;->mkdirs()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 20
    .line 21
    .line 22
    goto :goto_0

    .line 23
    :catch_0
    move-exception p1

    .line 24
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 25
    .line 26
    .line 27
    :cond_0
    :goto_0
    iput-object p4, p0, Lcom/join/mgps/mod/utils/f$a;->c:Ljava/util/zip/ZipFile;

    .line 28
    .line 29
    iput-object p2, p0, Lcom/join/mgps/mod/utils/f$a;->e:Landroid/content/Context;

    .line 30
    .line 31
    iput-object p5, p0, Lcom/join/mgps/mod/utils/f$a;->d:Ljava/util/zip/ZipEntry;

    .line 32
    .line 33
    invoke-virtual {p5}, Ljava/util/zip/ZipEntry;->getName()Ljava/lang/String;

    .line 34
    .line 35
    .line 36
    move-result-object p1

    .line 37
    invoke-direct {p0, p1}, Lcom/join/mgps/mod/utils/f$a;->c(Ljava/lang/String;)Ljava/lang/String;

    .line 38
    .line 39
    .line 40
    move-result-object p1

    .line 41
    iput-object p1, p0, Lcom/join/mgps/mod/utils/f$a;->b:Ljava/lang/String;

    .line 42
    .line 43
    iput-wide p6, p0, Lcom/join/mgps/mod/utils/f$a;->f:J

    .line 44
    .line 45
    :try_start_1
    new-instance p1, Ljava/util/zip/ZipFile;

    .line 46
    .line 47
    invoke-virtual {p4}, Ljava/util/zip/ZipFile;->getName()Ljava/lang/String;

    .line 48
    .line 49
    .line 50
    move-result-object p2

    .line 51
    invoke-direct {p1, p2}, Ljava/util/zip/ZipFile;-><init>(Ljava/lang/String;)V

    .line 52
    .line 53
    .line 54
    iput-object p1, p0, Lcom/join/mgps/mod/utils/f$a;->c:Ljava/util/zip/ZipFile;
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    .line 55
    .line 56
    goto :goto_1

    .line 57
    :catch_1
    move-exception p1

    .line 58
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 59
    .line 60
    .line 61
    :goto_1
    return-void
.end method

.method private b(Ljava/io/InputStream;)I
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "is"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    if-nez p1, :cond_0

    .line 2
    .line 3
    const/4 p1, 0x0

    .line 4
    return p1

    .line 5
    :cond_0
    invoke-virtual {p1}, Ljava/io/InputStream;->available()I

    .line 6
    .line 7
    .line 8
    move-result p1

    .line 9
    if-gtz p1, :cond_1

    .line 10
    .line 11
    const/16 p1, 0x400

    .line 12
    .line 13
    :cond_1
    return p1
.end method

.method private final c(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "zipEntryName"
        }
    .end annotation

    .line 1
    const-string v0, "/"

    .line 2
    .line 3
    invoke-virtual {p1, v0}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    add-int/lit8 v0, v0, 0x1

    .line 8
    .line 9
    invoke-virtual {p1, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    .line 10
    .line 11
    .line 12
    move-result-object p1

    .line 13
    return-object p1
.end method

.method private d()V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/mod/utils/f$a;->c:Ljava/util/zip/ZipFile;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/join/mgps/mod/utils/f$a;->d:Ljava/util/zip/ZipEntry;

    .line 4
    .line 5
    invoke-virtual {v0, v1}, Ljava/util/zip/ZipFile;->getInputStream(Ljava/util/zip/ZipEntry;)Ljava/io/InputStream;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    new-instance v1, Ljava/io/FileOutputStream;

    .line 10
    .line 11
    new-instance v2, Ljava/io/File;

    .line 12
    .line 13
    iget-object v3, p0, Lcom/join/mgps/mod/utils/f$a;->g:Ljava/lang/String;

    .line 14
    .line 15
    iget-object v4, p0, Lcom/join/mgps/mod/utils/f$a;->b:Ljava/lang/String;

    .line 16
    .line 17
    invoke-direct {v2, v3, v4}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 18
    .line 19
    .line 20
    invoke-direct {v1, v2}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    .line 21
    .line 22
    .line 23
    invoke-virtual {p0, v0, v1}, Lcom/join/mgps/mod/utils/f$a;->a(Ljava/io/InputStream;Ljava/io/OutputStream;)V

    .line 24
    .line 25
    .line 26
    iget-object v0, p0, Lcom/join/mgps/mod/utils/f$a;->c:Ljava/util/zip/ZipFile;

    .line 27
    .line 28
    invoke-virtual {v0}, Ljava/util/zip/ZipFile;->close()V

    .line 29
    .line 30
    .line 31
    return-void
.end method


# virtual methods
.method public a(Ljava/io/InputStream;Ljava/io/OutputStream;)V
    .locals 5
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "is",
            "os"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    if-eqz p1, :cond_2

    .line 2
    .line 3
    if-nez p2, :cond_0

    .line 4
    .line 5
    goto :goto_1

    .line 6
    :cond_0
    new-instance v0, Ljava/io/BufferedInputStream;

    .line 7
    .line 8
    invoke-direct {v0, p1}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V

    .line 9
    .line 10
    .line 11
    new-instance p1, Ljava/io/BufferedOutputStream;

    .line 12
    .line 13
    invoke-direct {p1, p2}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 14
    .line 15
    .line 16
    invoke-direct {p0, v0}, Lcom/join/mgps/mod/utils/f$a;->b(Ljava/io/InputStream;)I

    .line 17
    .line 18
    .line 19
    move-result p2

    .line 20
    new-array v1, p2, [B

    .line 21
    .line 22
    :goto_0
    const/4 v2, 0x0

    .line 23
    invoke-virtual {v0, v1, v2, p2}, Ljava/io/BufferedInputStream;->read([BII)I

    .line 24
    .line 25
    .line 26
    move-result v3

    .line 27
    const/4 v4, -0x1

    .line 28
    if-eq v3, v4, :cond_1

    .line 29
    .line 30
    invoke-virtual {p1, v1, v2, v3}, Ljava/io/BufferedOutputStream;->write([BII)V

    .line 31
    .line 32
    .line 33
    goto :goto_0

    .line 34
    :cond_1
    invoke-virtual {p1}, Ljava/io/BufferedOutputStream;->flush()V

    .line 35
    .line 36
    .line 37
    invoke-virtual {p1}, Ljava/io/OutputStream;->close()V

    .line 38
    .line 39
    .line 40
    invoke-virtual {v0}, Ljava/io/BufferedInputStream;->close()V

    .line 41
    .line 42
    .line 43
    :cond_2
    :goto_1
    return-void
.end method

.method public run()V
    .locals 6

    .line 1
    const-string v0, "com.join.android.app.mgsim.wufun.soCopyFinish"

    .line 2
    .line 3
    const-string v1, "soName"

    .line 4
    .line 5
    :try_start_0
    new-instance v2, Landroid/content/Intent;

    .line 6
    .line 7
    const-string v3, "com.join.android.app.mgsim.wufun.soCopyStart"

    .line 8
    .line 9
    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 10
    .line 11
    .line 12
    iget-object v3, p0, Lcom/join/mgps/mod/utils/f$a;->b:Ljava/lang/String;

    .line 13
    .line 14
    invoke-virtual {v2, v1, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 15
    .line 16
    .line 17
    invoke-static {}, Lcom/xinzhu/overmind/Overmind;->getContext()Landroid/content/Context;

    .line 18
    .line 19
    .line 20
    move-result-object v3

    .line 21
    invoke-virtual {v3, v2}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 22
    .line 23
    .line 24
    invoke-direct {p0}, Lcom/join/mgps/mod/utils/f$a;->d()V

    .line 25
    .line 26
    .line 27
    iget-object v2, p0, Lcom/join/mgps/mod/utils/f$a;->e:Landroid/content/Context;

    .line 28
    .line 29
    if-eqz v2, :cond_0

    .line 30
    .line 31
    iget-object v3, p0, Lcom/join/mgps/mod/utils/f$a;->d:Ljava/util/zip/ZipEntry;

    .line 32
    .line 33
    invoke-virtual {v3}, Ljava/util/zip/ZipEntry;->getName()Ljava/lang/String;

    .line 34
    .line 35
    .line 36
    move-result-object v3

    .line 37
    iget-wide v4, p0, Lcom/join/mgps/mod/utils/f$a;->f:J

    .line 38
    .line 39
    invoke-static {v2, v3, v4, v5}, Lcom/join/mgps/mod/utils/PluginConfig;->setSoLastModifiedTime(Landroid/content/Context;Ljava/lang/String;J)V

    .line 40
    .line 41
    .line 42
    :cond_0
    invoke-static {}, Lcom/join/mgps/mod/utils/f;->a()Ljava/lang/String;

    .line 43
    .line 44
    .line 45
    new-instance v2, Ljava/lang/StringBuilder;

    .line 46
    .line 47
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 48
    .line 49
    .line 50
    const-string v3, "copy so lib success: "

    .line 51
    .line 52
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 53
    .line 54
    .line 55
    iget-object v3, p0, Lcom/join/mgps/mod/utils/f$a;->d:Ljava/util/zip/ZipEntry;

    .line 56
    .line 57
    invoke-virtual {v3}, Ljava/util/zip/ZipEntry;->getName()Ljava/lang/String;

    .line 58
    .line 59
    .line 60
    move-result-object v3

    .line 61
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 62
    .line 63
    .line 64
    new-instance v2, Landroid/content/Intent;

    .line 65
    .line 66
    invoke-direct {v2, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 67
    .line 68
    .line 69
    goto :goto_0

    .line 70
    :catchall_0
    move-exception v2

    .line 71
    goto :goto_1

    .line 72
    :catch_0
    move-exception v2

    .line 73
    :try_start_1
    invoke-static {}, Lcom/join/mgps/mod/utils/f;->a()Ljava/lang/String;

    .line 74
    .line 75
    .line 76
    new-instance v3, Ljava/lang/StringBuilder;

    .line 77
    .line 78
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 79
    .line 80
    .line 81
    const-string v4, "copy so lib failed: "

    .line 82
    .line 83
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 84
    .line 85
    .line 86
    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 87
    .line 88
    .line 89
    move-result-object v4

    .line 90
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 91
    .line 92
    .line 93
    invoke-virtual {v2}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 94
    .line 95
    .line 96
    new-instance v2, Landroid/content/Intent;

    .line 97
    .line 98
    invoke-direct {v2, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 99
    .line 100
    .line 101
    :goto_0
    iget-object v0, p0, Lcom/join/mgps/mod/utils/f$a;->b:Ljava/lang/String;

    .line 102
    .line 103
    invoke-virtual {v2, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 104
    .line 105
    .line 106
    invoke-static {}, Lcom/xinzhu/overmind/Overmind;->getContext()Landroid/content/Context;

    .line 107
    .line 108
    .line 109
    move-result-object v0

    .line 110
    invoke-virtual {v0, v2}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 111
    .line 112
    .line 113
    return-void

    .line 114
    :goto_1
    new-instance v3, Landroid/content/Intent;

    .line 115
    .line 116
    invoke-direct {v3, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 117
    .line 118
    .line 119
    iget-object v0, p0, Lcom/join/mgps/mod/utils/f$a;->b:Ljava/lang/String;

    .line 120
    .line 121
    invoke-virtual {v3, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 122
    .line 123
    .line 124
    invoke-static {}, Lcom/xinzhu/overmind/Overmind;->getContext()Landroid/content/Context;

    .line 125
    .line 126
    .line 127
    move-result-object v0

    .line 128
    invoke-virtual {v0, v3}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 129
    .line 130
    .line 131
    throw v2
.end method
