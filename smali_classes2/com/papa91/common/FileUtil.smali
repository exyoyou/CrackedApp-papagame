.class public Lcom/papa91/common/FileUtil;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field static final synthetic $assertionsDisabled:Z

.field static chinaCollator:Ljava/text/Collator;

.field static context:Landroid/content/Context;

.field static mode:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    sget-object v0, Ljava/util/Locale;->CHINA:Ljava/util/Locale;

    .line 2
    .line 3
    invoke-static {v0}, Ljava/text/Collator;->getInstance(Ljava/util/Locale;)Ljava/text/Collator;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    sput-object v0, Lcom/papa91/common/FileUtil;->chinaCollator:Ljava/text/Collator;

    .line 8
    .line 9
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public static Unzip(Landroid/content/res/Resources;Ljava/lang/String;Ljava/lang/String;)V
    .locals 5

    .line 1
    :try_start_0
    invoke-virtual {p0}, Landroid/content/res/Resources;->getAssets()Landroid/content/res/AssetManager;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    invoke-virtual {p0, p1}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    .line 6
    .line 7
    .line 8
    move-result-object p0

    .line 9
    new-instance p1, Ljava/util/zip/ZipInputStream;

    .line 10
    .line 11
    new-instance v0, Ljava/io/BufferedInputStream;

    .line 12
    .line 13
    invoke-direct {v0, p0}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V

    .line 14
    .line 15
    .line 16
    invoke-direct {p1, v0}, Ljava/util/zip/ZipInputStream;-><init>(Ljava/io/InputStream;)V

    .line 17
    .line 18
    .line 19
    const/16 p0, 0x1000

    .line 20
    .line 21
    new-array v0, p0, [B

    .line 22
    .line 23
    :goto_0
    invoke-virtual {p1}, Ljava/util/zip/ZipInputStream;->getNextEntry()Ljava/util/zip/ZipEntry;

    .line 24
    .line 25
    .line 26
    move-result-object v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 27
    if-eqz v1, :cond_2

    .line 28
    .line 29
    :try_start_1
    invoke-virtual {v1}, Ljava/util/zip/ZipEntry;->getName()Ljava/lang/String;

    .line 30
    .line 31
    .line 32
    move-result-object v1

    .line 33
    new-instance v2, Ljava/io/File;

    .line 34
    .line 35
    new-instance v3, Ljava/lang/StringBuilder;

    .line 36
    .line 37
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 38
    .line 39
    .line 40
    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 41
    .line 42
    .line 43
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 44
    .line 45
    .line 46
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 47
    .line 48
    .line 49
    move-result-object v1

    .line 50
    invoke-direct {v2, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 51
    .line 52
    .line 53
    new-instance v1, Ljava/io/File;

    .line 54
    .line 55
    invoke-virtual {v2}, Ljava/io/File;->getParent()Ljava/lang/String;

    .line 56
    .line 57
    .line 58
    move-result-object v3

    .line 59
    invoke-direct {v1, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 60
    .line 61
    .line 62
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    .line 63
    .line 64
    .line 65
    move-result v3

    .line 66
    if-nez v3, :cond_0

    .line 67
    .line 68
    invoke-virtual {v1}, Ljava/io/File;->mkdirs()Z

    .line 69
    .line 70
    .line 71
    :cond_0
    new-instance v1, Ljava/io/FileOutputStream;

    .line 72
    .line 73
    invoke-direct {v1, v2}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    .line 74
    .line 75
    .line 76
    new-instance v2, Ljava/io/BufferedOutputStream;

    .line 77
    .line 78
    invoke-direct {v2, v1, p0}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;I)V

    .line 79
    .line 80
    .line 81
    :goto_1
    const/4 v1, 0x0

    .line 82
    invoke-virtual {p1, v0, v1, p0}, Ljava/util/zip/ZipInputStream;->read([BII)I

    .line 83
    .line 84
    .line 85
    move-result v3

    .line 86
    const/4 v4, -0x1

    .line 87
    if-eq v3, v4, :cond_1

    .line 88
    .line 89
    invoke-virtual {v2, v0, v1, v3}, Ljava/io/BufferedOutputStream;->write([BII)V

    .line 90
    .line 91
    .line 92
    goto :goto_1

    .line 93
    :cond_1
    invoke-virtual {v2}, Ljava/io/BufferedOutputStream;->flush()V

    .line 94
    .line 95
    .line 96
    invoke-virtual {v2}, Ljava/io/OutputStream;->close()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 97
    .line 98
    .line 99
    goto :goto_0

    .line 100
    :catch_0
    move-exception v1

    .line 101
    :try_start_2
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 102
    .line 103
    .line 104
    goto :goto_0

    .line 105
    :cond_2
    invoke-virtual {p1}, Ljava/util/zip/ZipInputStream;->close()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    .line 106
    .line 107
    .line 108
    goto :goto_2

    .line 109
    :catch_1
    move-exception p0

    .line 110
    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 111
    .line 112
    .line 113
    :goto_2
    return-void
.end method

.method public static getIndexFile(Ljava/lang/String;I)[B
    .locals 8

    .line 1
    const/4 v0, 0x0

    .line 2
    :try_start_0
    new-instance v1, Ljava/io/FileInputStream;

    .line 3
    .line 4
    new-instance v2, Ljava/io/File;

    .line 5
    .line 6
    invoke-direct {v2, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 7
    .line 8
    .line 9
    invoke-direct {v1, v2}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 10
    .line 11
    .line 12
    const/4 p0, 0x0

    .line 13
    const/4 v2, 0x0

    .line 14
    :goto_0
    const/4 v3, 0x3

    .line 15
    const/4 v4, 0x2

    .line 16
    const/4 v5, 0x4

    .line 17
    const/4 v6, 0x1

    .line 18
    if-ge v2, p1, :cond_0

    .line 19
    .line 20
    :try_start_1
    new-array v5, v5, [B

    .line 21
    .line 22
    invoke-virtual {v1, v5}, Ljava/io/InputStream;->read([B)I

    .line 23
    .line 24
    .line 25
    aget-byte v7, v5, p0

    .line 26
    .line 27
    aget-byte v6, v5, v6

    .line 28
    .line 29
    aget-byte v4, v5, v4

    .line 30
    .line 31
    aget-byte v3, v5, v3

    .line 32
    .line 33
    and-int/lit16 v5, v7, 0xff

    .line 34
    .line 35
    and-int/lit16 v6, v6, 0xff

    .line 36
    .line 37
    shl-int/lit8 v6, v6, 0x8

    .line 38
    .line 39
    and-int/lit16 v4, v4, 0xff

    .line 40
    .line 41
    shl-int/lit8 v4, v4, 0x10

    .line 42
    .line 43
    and-int/lit16 v3, v3, 0xff

    .line 44
    .line 45
    shl-int/lit8 v3, v3, 0x18

    .line 46
    .line 47
    or-int/2addr v5, v6

    .line 48
    or-int/2addr v4, v5

    .line 49
    or-int/2addr v3, v4

    .line 50
    int-to-long v3, v3

    .line 51
    invoke-virtual {v1, v3, v4}, Ljava/io/InputStream;->skip(J)J

    .line 52
    .line 53
    .line 54
    add-int/lit8 v2, v2, 0x1

    .line 55
    .line 56
    goto :goto_0

    .line 57
    :cond_0
    new-array p1, v5, [B

    .line 58
    .line 59
    invoke-virtual {v1, p1}, Ljava/io/InputStream;->read([B)I

    .line 60
    .line 61
    .line 62
    aget-byte v2, p1, p0

    .line 63
    .line 64
    aget-byte v5, p1, v6

    .line 65
    .line 66
    aget-byte v4, p1, v4

    .line 67
    .line 68
    aget-byte p1, p1, v3

    .line 69
    .line 70
    and-int/lit16 v2, v2, 0xff

    .line 71
    .line 72
    and-int/lit16 v3, v5, 0xff

    .line 73
    .line 74
    shl-int/lit8 v3, v3, 0x8

    .line 75
    .line 76
    and-int/lit16 v4, v4, 0xff

    .line 77
    .line 78
    shl-int/lit8 v4, v4, 0x10

    .line 79
    .line 80
    and-int/lit16 p1, p1, 0xff

    .line 81
    .line 82
    shl-int/lit8 p1, p1, 0x18

    .line 83
    .line 84
    or-int/2addr v2, v3

    .line 85
    or-int/2addr v2, v4

    .line 86
    or-int/2addr p1, v2

    .line 87
    new-array v2, p1, [B

    .line 88
    .line 89
    invoke-virtual {v1, v2, p0, p1}, Ljava/io/InputStream;->read([BII)I

    .line 90
    .line 91
    .line 92
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 93
    .line 94
    .line 95
    return-object v2

    .line 96
    :catch_0
    nop

    .line 97
    goto :goto_1

    .line 98
    :catch_1
    nop

    .line 99
    move-object v1, v0

    .line 100
    :goto_1
    if-eqz v1, :cond_1

    .line 101
    .line 102
    :try_start_2
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    .line 103
    .line 104
    .line 105
    :catch_2
    :cond_1
    return-object v0
.end method

.method public static listSortedEnFiles(Ljava/io/File;)[Lcom/papa91/common/FileWrapper;
    .locals 4

    .line 1
    invoke-virtual {p0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    if-nez p0, :cond_0

    .line 6
    .line 7
    const/4 p0, 0x0

    .line 8
    return-object p0

    .line 9
    :cond_0
    array-length v0, p0

    .line 10
    new-array v0, v0, [Lcom/papa91/common/FileWrapper;

    .line 11
    .line 12
    const/4 v1, 0x0

    .line 13
    :goto_0
    array-length v2, p0

    .line 14
    if-ge v1, v2, :cond_1

    .line 15
    .line 16
    new-instance v2, Lcom/papa91/common/FileWrapper;

    .line 17
    .line 18
    aget-object v3, p0, v1

    .line 19
    .line 20
    invoke-direct {v2, v3}, Lcom/papa91/common/FileWrapper;-><init>(Ljava/io/File;)V

    .line 21
    .line 22
    .line 23
    aput-object v2, v0, v1

    .line 24
    .line 25
    add-int/lit8 v1, v1, 0x1

    .line 26
    .line 27
    goto :goto_0

    .line 28
    :cond_1
    invoke-static {v0}, Ljava/util/Arrays;->sort([Ljava/lang/Object;)V

    .line 29
    .line 30
    .line 31
    return-object v0
.end method

.method public static listSortedFiles(Ljava/io/File;)[Lcom/papa91/common/FileWrapper;
    .locals 0

    .line 1
    invoke-static {p0}, Lcom/papa91/common/FileUtil;->listSortedEnFiles(Ljava/io/File;)[Lcom/papa91/common/FileWrapper;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method public static setMode(Landroid/content/Context;ILjava/util/HashMap;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "I",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 1
    sput p1, Lcom/papa91/common/FileUtil;->mode:I

    .line 2
    .line 3
    return-void
.end method
