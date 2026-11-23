.class public Lorg/hmwebrtc/utils/HtmlLineChartWriter;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/hmwebrtc/utils/HtmlLineChartWriter$Category;,
        Lorg/hmwebrtc/utils/HtmlLineChartWriter$ExternalInfo;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "HtmlLineChart"


# instance fields
.field private mBufferedWriter:Ljava/io/BufferedWriter;

.field private mCategoryNames:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mCategoryValues:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lorg/hmwebrtc/utils/HtmlLineChartWriter$Category;",
            ">;"
        }
    .end annotation
.end field

.field private mFilePath:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
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
    iput-object v0, p0, Lorg/hmwebrtc/utils/HtmlLineChartWriter;->mCategoryValues:Ljava/util/Map;

    .line 10
    .line 11
    new-instance v0, Ljava/util/ArrayList;

    .line 12
    .line 13
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 14
    .line 15
    .line 16
    iput-object v0, p0, Lorg/hmwebrtc/utils/HtmlLineChartWriter;->mCategoryNames:Ljava/util/List;

    .line 17
    .line 18
    iput-object p1, p0, Lorg/hmwebrtc/utils/HtmlLineChartWriter;->mFilePath:Ljava/lang/String;

    .line 19
    .line 20
    return-void
.end method

.method private closeFile()V
    .locals 4

    .line 1
    const-string v0, "HtmlLineChart"

    .line 2
    .line 3
    :try_start_0
    iget-object v1, p0, Lorg/hmwebrtc/utils/HtmlLineChartWriter;->mBufferedWriter:Ljava/io/BufferedWriter;

    .line 4
    .line 5
    if-eqz v1, :cond_0

    .line 6
    .line 7
    invoke-virtual {v1}, Ljava/io/BufferedWriter;->flush()V

    .line 8
    .line 9
    .line 10
    const/4 v1, 0x0

    .line 11
    iput-object v1, p0, Lorg/hmwebrtc/utils/HtmlLineChartWriter;->mBufferedWriter:Ljava/io/BufferedWriter;

    .line 12
    .line 13
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    .line 14
    .line 15
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 16
    .line 17
    .line 18
    const-string v2, "close  file: "

    .line 19
    .line 20
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 21
    .line 22
    .line 23
    iget-object v2, p0, Lorg/hmwebrtc/utils/HtmlLineChartWriter;->mFilePath:Ljava/lang/String;

    .line 24
    .line 25
    if-eqz v2, :cond_1

    .line 26
    .line 27
    goto :goto_0

    .line 28
    :cond_1
    const-string v2, "null"

    .line 29
    .line 30
    :goto_0
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 31
    .line 32
    .line 33
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 34
    .line 35
    .line 36
    move-result-object v1

    .line 37
    invoke-static {v0, v1}, Lorg/hmwebrtc/Logging;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 38
    .line 39
    .line 40
    goto :goto_1

    .line 41
    :catch_0
    move-exception v1

    .line 42
    new-instance v2, Ljava/lang/StringBuilder;

    .line 43
    .line 44
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 45
    .line 46
    .line 47
    const-string v3, "close : "

    .line 48
    .line 49
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 50
    .line 51
    .line 52
    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 53
    .line 54
    .line 55
    move-result-object v1

    .line 56
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 57
    .line 58
    .line 59
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 60
    .line 61
    .line 62
    move-result-object v1

    .line 63
    invoke-static {v0, v1}, Lorg/hmwebrtc/Logging;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 64
    .line 65
    .line 66
    :goto_1
    return-void
.end method

.method private createFile(Ljava/lang/String;)Z
    .locals 3

    .line 1
    const-string v0, "HtmlLineChart"

    .line 2
    .line 3
    :try_start_0
    new-instance v1, Ljava/io/File;

    .line 4
    .line 5
    invoke-direct {v1, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    invoke-virtual {v1}, Ljava/io/File;->createNewFile()Z

    .line 9
    .line 10
    .line 11
    new-instance v1, Ljava/lang/StringBuilder;

    .line 12
    .line 13
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 14
    .line 15
    .line 16
    const-string v2, "create new html file: "

    .line 17
    .line 18
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 19
    .line 20
    .line 21
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 22
    .line 23
    .line 24
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 25
    .line 26
    .line 27
    move-result-object v1

    .line 28
    invoke-static {v0, v1}, Lorg/hmwebrtc/Logging;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 29
    .line 30
    .line 31
    new-instance v1, Ljava/io/FileWriter;

    .line 32
    .line 33
    invoke-direct {v1, p1}, Ljava/io/FileWriter;-><init>(Ljava/lang/String;)V

    .line 34
    .line 35
    .line 36
    new-instance p1, Ljava/io/BufferedWriter;

    .line 37
    .line 38
    invoke-direct {p1, v1}, Ljava/io/BufferedWriter;-><init>(Ljava/io/Writer;)V

    .line 39
    .line 40
    .line 41
    iput-object p1, p0, Lorg/hmwebrtc/utils/HtmlLineChartWriter;->mBufferedWriter:Ljava/io/BufferedWriter;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 42
    .line 43
    const/4 p1, 0x1

    .line 44
    return p1

    .line 45
    :catch_0
    move-exception p1

    .line 46
    new-instance v1, Ljava/lang/StringBuilder;

    .line 47
    .line 48
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 49
    .line 50
    .line 51
    const-string v2, "create new html file failed: "

    .line 52
    .line 53
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 54
    .line 55
    .line 56
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 57
    .line 58
    .line 59
    move-result-object p1

    .line 60
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 61
    .line 62
    .line 63
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 64
    .line 65
    .line 66
    move-result-object p1

    .line 67
    invoke-static {v0, p1}, Lorg/hmwebrtc/Logging;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 68
    .line 69
    .line 70
    const/4 p1, 0x0

    .line 71
    return p1
.end method

.method private write(Ljava/lang/String;)V
    .locals 2

    .line 1
    :try_start_0
    iget-object v0, p0, Lorg/hmwebrtc/utils/HtmlLineChartWriter;->mBufferedWriter:Ljava/io/BufferedWriter;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0, p1}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    iget-object p1, p0, Lorg/hmwebrtc/utils/HtmlLineChartWriter;->mBufferedWriter:Ljava/io/BufferedWriter;

    .line 9
    .line 10
    invoke-virtual {p1}, Ljava/io/BufferedWriter;->flush()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 11
    .line 12
    .line 13
    goto :goto_0

    .line 14
    :catch_0
    move-exception p1

    .line 15
    new-instance v0, Ljava/lang/StringBuilder;

    .line 16
    .line 17
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 18
    .line 19
    .line 20
    const-string v1, "write file failed : "

    .line 21
    .line 22
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 23
    .line 24
    .line 25
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 26
    .line 27
    .line 28
    move-result-object p1

    .line 29
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 30
    .line 31
    .line 32
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 33
    .line 34
    .line 35
    move-result-object p1

    .line 36
    const-string v0, "HtmlLineChart"

    .line 37
    .line 38
    invoke-static {v0, p1}, Lorg/hmwebrtc/Logging;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 39
    .line 40
    .line 41
    :cond_0
    :goto_0
    return-void
.end method


# virtual methods
.method public addCategory(Ljava/lang/String;ZLorg/hmwebrtc/utils/HtmlLineChartWriter$ExternalInfo;)Z
    .locals 2

    .line 1
    iget-object v0, p0, Lorg/hmwebrtc/utils/HtmlLineChartWriter;->mCategoryValues:Ljava/util/Map;

    .line 2
    .line 3
    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-nez v0, :cond_0

    .line 8
    .line 9
    iget-object v0, p0, Lorg/hmwebrtc/utils/HtmlLineChartWriter;->mCategoryNames:Ljava/util/List;

    .line 10
    .line 11
    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 12
    .line 13
    .line 14
    :cond_0
    iget-object v0, p0, Lorg/hmwebrtc/utils/HtmlLineChartWriter;->mCategoryValues:Ljava/util/Map;

    .line 15
    .line 16
    new-instance v1, Lorg/hmwebrtc/utils/HtmlLineChartWriter$Category;

    .line 17
    .line 18
    invoke-direct {v1, p2, p3}, Lorg/hmwebrtc/utils/HtmlLineChartWriter$Category;-><init>(ZLorg/hmwebrtc/utils/HtmlLineChartWriter$ExternalInfo;)V

    .line 19
    .line 20
    .line 21
    invoke-interface {v0, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 22
    .line 23
    .line 24
    const/4 p1, 0x1

    .line 25
    return p1
.end method

.method public addSample(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 4

    .line 1
    iget-object v0, p0, Lorg/hmwebrtc/utils/HtmlLineChartWriter;->mCategoryValues:Ljava/util/Map;

    .line 2
    .line 3
    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    check-cast p1, Lorg/hmwebrtc/utils/HtmlLineChartWriter$Category;

    .line 8
    .line 9
    if-nez p1, :cond_0

    .line 10
    .line 11
    const/4 p1, 0x0

    .line 12
    return p1

    .line 13
    :cond_0
    iget-wide v0, p1, Lorg/hmwebrtc/utils/HtmlLineChartWriter$Category;->sampleCount:J

    .line 14
    .line 15
    const-wide/16 v2, 0x1

    .line 16
    .line 17
    add-long/2addr v0, v2

    .line 18
    iput-wide v0, p1, Lorg/hmwebrtc/utils/HtmlLineChartWriter$Category;->sampleCount:J

    .line 19
    .line 20
    iget-object v0, p1, Lorg/hmwebrtc/utils/HtmlLineChartWriter$Category;->list:Ljava/lang/String;

    .line 21
    .line 22
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    .line 23
    .line 24
    .line 25
    move-result v0

    .line 26
    if-nez v0, :cond_1

    .line 27
    .line 28
    iput-object p2, p1, Lorg/hmwebrtc/utils/HtmlLineChartWriter$Category;->list:Ljava/lang/String;

    .line 29
    .line 30
    goto :goto_0

    .line 31
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 32
    .line 33
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 34
    .line 35
    .line 36
    iget-object v1, p1, Lorg/hmwebrtc/utils/HtmlLineChartWriter$Category;->list:Ljava/lang/String;

    .line 37
    .line 38
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 39
    .line 40
    .line 41
    const-string v1, ","

    .line 42
    .line 43
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 44
    .line 45
    .line 46
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 47
    .line 48
    .line 49
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 50
    .line 51
    .line 52
    move-result-object p2

    .line 53
    iput-object p2, p1, Lorg/hmwebrtc/utils/HtmlLineChartWriter$Category;->list:Ljava/lang/String;

    .line 54
    .line 55
    :goto_0
    iget-object p2, p1, Lorg/hmwebrtc/utils/HtmlLineChartWriter$Category;->list:Ljava/lang/String;

    .line 56
    .line 57
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    .line 58
    .line 59
    .line 60
    move-result p2

    .line 61
    const/16 v0, 0x400

    .line 62
    .line 63
    if-le p2, v0, :cond_2

    .line 64
    .line 65
    new-instance p2, Ljava/lang/StringBuilder;

    .line 66
    .line 67
    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    .line 68
    .line 69
    .line 70
    const-string v0, "\n{\nvar temp = [ "

    .line 71
    .line 72
    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 73
    .line 74
    .line 75
    iget-object v0, p1, Lorg/hmwebrtc/utils/HtmlLineChartWriter$Category;->list:Ljava/lang/String;

    .line 76
    .line 77
    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 78
    .line 79
    .line 80
    const-string v0, "];\n"

    .line 81
    .line 82
    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 83
    .line 84
    .line 85
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 86
    .line 87
    .line 88
    move-result-object p2

    .line 89
    invoke-direct {p0, p2}, Lorg/hmwebrtc/utils/HtmlLineChartWriter;->write(Ljava/lang/String;)V

    .line 90
    .line 91
    .line 92
    const-string p2, "for (let i = 0; i < temp.length; i++) {\n"

    .line 93
    .line 94
    invoke-direct {p0, p2}, Lorg/hmwebrtc/utils/HtmlLineChartWriter;->write(Ljava/lang/String;)V

    .line 95
    .line 96
    .line 97
    new-instance p2, Ljava/lang/StringBuilder;

    .line 98
    .line 99
    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    .line 100
    .line 101
    .line 102
    const-string v0, "   option.series["

    .line 103
    .line 104
    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 105
    .line 106
    .line 107
    iget v0, p1, Lorg/hmwebrtc/utils/HtmlLineChartWriter$Category;->jsonIndex:I

    .line 108
    .line 109
    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 110
    .line 111
    .line 112
    const-string v0, "].data.push(temp[i]);}}\n"

    .line 113
    .line 114
    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 115
    .line 116
    .line 117
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 118
    .line 119
    .line 120
    move-result-object p2

    .line 121
    invoke-direct {p0, p2}, Lorg/hmwebrtc/utils/HtmlLineChartWriter;->write(Ljava/lang/String;)V

    .line 122
    .line 123
    .line 124
    const-string p2, ""

    .line 125
    .line 126
    iput-object p2, p1, Lorg/hmwebrtc/utils/HtmlLineChartWriter$Category;->list:Ljava/lang/String;

    .line 127
    .line 128
    :cond_2
    const/4 p1, 0x1

    .line 129
    return p1
.end method

.method public addSummary(Ljava/lang/String;)Z
    .locals 2

    .line 1
    if-eqz p1, :cond_1

    .line 2
    .line 3
    iget-object v0, p0, Lorg/hmwebrtc/utils/HtmlLineChartWriter;->mBufferedWriter:Ljava/io/BufferedWriter;

    .line 4
    .line 5
    if-nez v0, :cond_0

    .line 6
    .line 7
    goto :goto_0

    .line 8
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    .line 9
    .line 10
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 11
    .line 12
    .line 13
    const-string v1, "lineSummary =lineSummary+\""

    .line 14
    .line 15
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 16
    .line 17
    .line 18
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 19
    .line 20
    .line 21
    const-string p1, "\\n\";\n"

    .line 22
    .line 23
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 24
    .line 25
    .line 26
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 27
    .line 28
    .line 29
    move-result-object p1

    .line 30
    invoke-direct {p0, p1}, Lorg/hmwebrtc/utils/HtmlLineChartWriter;->write(Ljava/lang/String;)V

    .line 31
    .line 32
    .line 33
    const/4 p1, 0x1

    .line 34
    return p1

    .line 35
    :cond_1
    :goto_0
    const/4 p1, 0x0

    .line 36
    return p1
.end method

.method public getCategoryExtenalInfo(Ljava/lang/String;)Lorg/hmwebrtc/utils/HtmlLineChartWriter$ExternalInfo;
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/hmwebrtc/utils/HtmlLineChartWriter;->mCategoryValues:Ljava/util/Map;

    .line 2
    .line 3
    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    check-cast p1, Lorg/hmwebrtc/utils/HtmlLineChartWriter$Category;

    .line 8
    .line 9
    if-nez p1, :cond_0

    .line 10
    .line 11
    const/4 p1, 0x0

    .line 12
    return-object p1

    .line 13
    :cond_0
    iget-object p1, p1, Lorg/hmwebrtc/utils/HtmlLineChartWriter$Category;->externalInfo:Lorg/hmwebrtc/utils/HtmlLineChartWriter$ExternalInfo;

    .line 14
    .line 15
    return-object p1
.end method

.method public writeHtmlHeader()Z
    .locals 5

    .line 1
    iget-object v0, p0, Lorg/hmwebrtc/utils/HtmlLineChartWriter;->mFilePath:Ljava/lang/String;

    .line 2
    .line 3
    invoke-direct {p0, v0}, Lorg/hmwebrtc/utils/HtmlLineChartWriter;->createFile(Ljava/lang/String;)Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    const/4 v1, 0x0

    .line 8
    if-nez v0, :cond_0

    .line 9
    .line 10
    return v1

    .line 11
    :cond_0
    const-string v0, "<html lang=\"en\">\n"

    .line 12
    .line 13
    invoke-direct {p0, v0}, Lorg/hmwebrtc/utils/HtmlLineChartWriter;->write(Ljava/lang/String;)V

    .line 14
    .line 15
    .line 16
    const-string v0, "<head>\n"

    .line 17
    .line 18
    invoke-direct {p0, v0}, Lorg/hmwebrtc/utils/HtmlLineChartWriter;->write(Ljava/lang/String;)V

    .line 19
    .line 20
    .line 21
    const-string v0, "<script src=\"https://cdn.jsdelivr.net/npm/echarts@5.3.0/dist/echarts.min.js\"></script>\n"

    .line 22
    .line 23
    invoke-direct {p0, v0}, Lorg/hmwebrtc/utils/HtmlLineChartWriter;->write(Ljava/lang/String;)V

    .line 24
    .line 25
    .line 26
    const-string v0, "</head>\n"

    .line 27
    .line 28
    invoke-direct {p0, v0}, Lorg/hmwebrtc/utils/HtmlLineChartWriter;->write(Ljava/lang/String;)V

    .line 29
    .line 30
    .line 31
    const-string v0, "<body>\n"

    .line 32
    .line 33
    invoke-direct {p0, v0}, Lorg/hmwebrtc/utils/HtmlLineChartWriter;->write(Ljava/lang/String;)V

    .line 34
    .line 35
    .line 36
    const-string v0, "<div>hmrtc line chart\\n</div>\n"

    .line 37
    .line 38
    invoke-direct {p0, v0}, Lorg/hmwebrtc/utils/HtmlLineChartWriter;->write(Ljava/lang/String;)V

    .line 39
    .line 40
    .line 41
    const-string v0, "<input type=\"button\" value=\"\u70b9\u6211\u8bd5\u8bd5\" onclick=javascrtpt:showSummary() />\n"

    .line 42
    .line 43
    invoke-direct {p0, v0}, Lorg/hmwebrtc/utils/HtmlLineChartWriter;->write(Ljava/lang/String;)V

    .line 44
    .line 45
    .line 46
    const-string v0, "<div  id=\"main\" style=\"width: 100%; height: 90%; border: #ccc solid 1px\"></div>\n"

    .line 47
    .line 48
    invoke-direct {p0, v0}, Lorg/hmwebrtc/utils/HtmlLineChartWriter;->write(Ljava/lang/String;)V

    .line 49
    .line 50
    .line 51
    const-string v0, "<script >\n"

    .line 52
    .line 53
    invoke-direct {p0, v0}, Lorg/hmwebrtc/utils/HtmlLineChartWriter;->write(Ljava/lang/String;)V

    .line 54
    .line 55
    .line 56
    const-string v0, "var lineSummary=\"haima_rtc\";\n"

    .line 57
    .line 58
    invoke-direct {p0, v0}, Lorg/hmwebrtc/utils/HtmlLineChartWriter;->write(Ljava/lang/String;)V

    .line 59
    .line 60
    .line 61
    const-string v0, "function showSummary(){alert(lineSummary);}\n"

    .line 62
    .line 63
    invoke-direct {p0, v0}, Lorg/hmwebrtc/utils/HtmlLineChartWriter;->write(Ljava/lang/String;)V

    .line 64
    .line 65
    .line 66
    const-string v0, "var chartDom = document.getElementById(\'main\');\n"

    .line 67
    .line 68
    invoke-direct {p0, v0}, Lorg/hmwebrtc/utils/HtmlLineChartWriter;->write(Ljava/lang/String;)V

    .line 69
    .line 70
    .line 71
    const-string v0, "var myChart = echarts.init(chartDom);\n"

    .line 72
    .line 73
    invoke-direct {p0, v0}, Lorg/hmwebrtc/utils/HtmlLineChartWriter;->write(Ljava/lang/String;)V

    .line 74
    .line 75
    .line 76
    const-string v0, "var option;\n"

    .line 77
    .line 78
    invoke-direct {p0, v0}, Lorg/hmwebrtc/utils/HtmlLineChartWriter;->write(Ljava/lang/String;)V

    .line 79
    .line 80
    .line 81
    const-string v0, "option = {\n"

    .line 82
    .line 83
    invoke-direct {p0, v0}, Lorg/hmwebrtc/utils/HtmlLineChartWriter;->write(Ljava/lang/String;)V

    .line 84
    .line 85
    .line 86
    const-string v0, "tooltip: {trigger: \'axis\'},\n"

    .line 87
    .line 88
    invoke-direct {p0, v0}, Lorg/hmwebrtc/utils/HtmlLineChartWriter;->write(Ljava/lang/String;)V

    .line 89
    .line 90
    .line 91
    const-string v0, "grid: {left: \'3%\',right: \'15%\',bottom: \'3%\',containLabel: true},\n"

    .line 92
    .line 93
    invoke-direct {p0, v0}, Lorg/hmwebrtc/utils/HtmlLineChartWriter;->write(Ljava/lang/String;)V

    .line 94
    .line 95
    .line 96
    const-string v0, "toolbox: {feature: {saveAsImage: {}}},\n"

    .line 97
    .line 98
    invoke-direct {p0, v0}, Lorg/hmwebrtc/utils/HtmlLineChartWriter;->write(Ljava/lang/String;)V

    .line 99
    .line 100
    .line 101
    const-string v0, "xAxis: {type: \'time\', boundaryGap: false,},\n"

    .line 102
    .line 103
    invoke-direct {p0, v0}, Lorg/hmwebrtc/utils/HtmlLineChartWriter;->write(Ljava/lang/String;)V

    .line 104
    .line 105
    .line 106
    const-string v0, "yAxis: {type: \'value\'},\n"

    .line 107
    .line 108
    invoke-direct {p0, v0}, Lorg/hmwebrtc/utils/HtmlLineChartWriter;->write(Ljava/lang/String;)V

    .line 109
    .line 110
    .line 111
    const-string v0, "dataZoom:{show: true,realtime: true},\n"

    .line 112
    .line 113
    invoke-direct {p0, v0}, Lorg/hmwebrtc/utils/HtmlLineChartWriter;->write(Ljava/lang/String;)V

    .line 114
    .line 115
    .line 116
    const-string v0, "legend: {type:\'scroll\',right:\'auto\',orient:\'vertical\',data: [\n"

    .line 117
    .line 118
    invoke-direct {p0, v0}, Lorg/hmwebrtc/utils/HtmlLineChartWriter;->write(Ljava/lang/String;)V

    .line 119
    .line 120
    .line 121
    iget-object v0, p0, Lorg/hmwebrtc/utils/HtmlLineChartWriter;->mCategoryNames:Ljava/util/List;

    .line 122
    .line 123
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 124
    .line 125
    .line 126
    move-result-object v0

    .line 127
    :cond_1
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 128
    .line 129
    .line 130
    move-result v2

    .line 131
    const-string v3, "\'"

    .line 132
    .line 133
    if-eqz v2, :cond_2

    .line 134
    .line 135
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 136
    .line 137
    .line 138
    move-result-object v2

    .line 139
    check-cast v2, Ljava/lang/String;

    .line 140
    .line 141
    if-eqz v2, :cond_1

    .line 142
    .line 143
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    .line 144
    .line 145
    .line 146
    move-result v4

    .line 147
    if-lez v4, :cond_1

    .line 148
    .line 149
    new-instance v4, Ljava/lang/StringBuilder;

    .line 150
    .line 151
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 152
    .line 153
    .line 154
    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 155
    .line 156
    .line 157
    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 158
    .line 159
    .line 160
    const-string v2, "\',"

    .line 161
    .line 162
    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 163
    .line 164
    .line 165
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 166
    .line 167
    .line 168
    move-result-object v2

    .line 169
    invoke-direct {p0, v2}, Lorg/hmwebrtc/utils/HtmlLineChartWriter;->write(Ljava/lang/String;)V

    .line 170
    .line 171
    .line 172
    goto :goto_0

    .line 173
    :cond_2
    const-string v0, "],\n"

    .line 174
    .line 175
    invoke-direct {p0, v0}, Lorg/hmwebrtc/utils/HtmlLineChartWriter;->write(Ljava/lang/String;)V

    .line 176
    .line 177
    .line 178
    const-string v0, "selected:{"

    .line 179
    .line 180
    invoke-direct {p0, v0}, Lorg/hmwebrtc/utils/HtmlLineChartWriter;->write(Ljava/lang/String;)V

    .line 181
    .line 182
    .line 183
    iget-object v0, p0, Lorg/hmwebrtc/utils/HtmlLineChartWriter;->mCategoryValues:Ljava/util/Map;

    .line 184
    .line 185
    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    .line 186
    .line 187
    .line 188
    move-result-object v0

    .line 189
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 190
    .line 191
    .line 192
    move-result-object v0

    .line 193
    :cond_3
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 194
    .line 195
    .line 196
    move-result v2

    .line 197
    if-eqz v2, :cond_4

    .line 198
    .line 199
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 200
    .line 201
    .line 202
    move-result-object v2

    .line 203
    check-cast v2, Ljava/util/Map$Entry;

    .line 204
    .line 205
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    .line 206
    .line 207
    .line 208
    move-result-object v4

    .line 209
    check-cast v4, Lorg/hmwebrtc/utils/HtmlLineChartWriter$Category;

    .line 210
    .line 211
    iget-boolean v4, v4, Lorg/hmwebrtc/utils/HtmlLineChartWriter$Category;->selected:Z

    .line 212
    .line 213
    if-nez v4, :cond_3

    .line 214
    .line 215
    new-instance v4, Ljava/lang/StringBuilder;

    .line 216
    .line 217
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 218
    .line 219
    .line 220
    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 221
    .line 222
    .line 223
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    .line 224
    .line 225
    .line 226
    move-result-object v2

    .line 227
    check-cast v2, Ljava/lang/String;

    .line 228
    .line 229
    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 230
    .line 231
    .line 232
    const-string v2, "\':false,"

    .line 233
    .line 234
    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 235
    .line 236
    .line 237
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 238
    .line 239
    .line 240
    move-result-object v2

    .line 241
    invoke-direct {p0, v2}, Lorg/hmwebrtc/utils/HtmlLineChartWriter;->write(Ljava/lang/String;)V

    .line 242
    .line 243
    .line 244
    goto :goto_1

    .line 245
    :cond_4
    const-string v0, "},\n"

    .line 246
    .line 247
    invoke-direct {p0, v0}, Lorg/hmwebrtc/utils/HtmlLineChartWriter;->write(Ljava/lang/String;)V

    .line 248
    .line 249
    .line 250
    const-string v0, "x:\'right\',\n"

    .line 251
    .line 252
    invoke-direct {p0, v0}, Lorg/hmwebrtc/utils/HtmlLineChartWriter;->write(Ljava/lang/String;)V

    .line 253
    .line 254
    .line 255
    const-string v0, "y:\'center\',\n"

    .line 256
    .line 257
    invoke-direct {p0, v0}, Lorg/hmwebrtc/utils/HtmlLineChartWriter;->write(Ljava/lang/String;)V

    .line 258
    .line 259
    .line 260
    const-string v0, "padding:[0,50,0,0]},\n"

    .line 261
    .line 262
    invoke-direct {p0, v0}, Lorg/hmwebrtc/utils/HtmlLineChartWriter;->write(Ljava/lang/String;)V

    .line 263
    .line 264
    .line 265
    const-string v0, "series: [\n"

    .line 266
    .line 267
    invoke-direct {p0, v0}, Lorg/hmwebrtc/utils/HtmlLineChartWriter;->write(Ljava/lang/String;)V

    .line 268
    .line 269
    .line 270
    iget-object v0, p0, Lorg/hmwebrtc/utils/HtmlLineChartWriter;->mCategoryValues:Ljava/util/Map;

    .line 271
    .line 272
    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    .line 273
    .line 274
    .line 275
    move-result-object v0

    .line 276
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 277
    .line 278
    .line 279
    move-result-object v0

    .line 280
    :cond_5
    :goto_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 281
    .line 282
    .line 283
    move-result v2

    .line 284
    if-eqz v2, :cond_7

    .line 285
    .line 286
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 287
    .line 288
    .line 289
    move-result-object v2

    .line 290
    check-cast v2, Ljava/util/Map$Entry;

    .line 291
    .line 292
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    .line 293
    .line 294
    .line 295
    move-result-object v3

    .line 296
    check-cast v3, Ljava/lang/String;

    .line 297
    .line 298
    if-eqz v3, :cond_5

    .line 299
    .line 300
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    .line 301
    .line 302
    .line 303
    move-result v4

    .line 304
    if-nez v4, :cond_6

    .line 305
    .line 306
    goto :goto_2

    .line 307
    :cond_6
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    .line 308
    .line 309
    .line 310
    move-result-object v2

    .line 311
    check-cast v2, Lorg/hmwebrtc/utils/HtmlLineChartWriter$Category;

    .line 312
    .line 313
    add-int/lit8 v4, v1, 0x1

    .line 314
    .line 315
    iput v1, v2, Lorg/hmwebrtc/utils/HtmlLineChartWriter$Category;->jsonIndex:I

    .line 316
    .line 317
    new-instance v1, Ljava/lang/StringBuilder;

    .line 318
    .line 319
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 320
    .line 321
    .line 322
    const-string v2, "{name:\'"

    .line 323
    .line 324
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 325
    .line 326
    .line 327
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 328
    .line 329
    .line 330
    const-string v2, "\'\n,type:\'line\'\n,data:[]\n},"

    .line 331
    .line 332
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 333
    .line 334
    .line 335
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 336
    .line 337
    .line 338
    move-result-object v1

    .line 339
    invoke-direct {p0, v1}, Lorg/hmwebrtc/utils/HtmlLineChartWriter;->write(Ljava/lang/String;)V

    .line 340
    .line 341
    .line 342
    move v1, v4

    .line 343
    goto :goto_2

    .line 344
    :cond_7
    const-string v0, "]};\n"

    .line 345
    .line 346
    invoke-direct {p0, v0}, Lorg/hmwebrtc/utils/HtmlLineChartWriter;->write(Ljava/lang/String;)V

    .line 347
    .line 348
    .line 349
    const/4 v0, 0x1

    .line 350
    return v0
.end method

.method public writeHtmlTail()V
    .locals 5

    .line 1
    iget-object v0, p0, Lorg/hmwebrtc/utils/HtmlLineChartWriter;->mCategoryValues:Ljava/util/Map;

    .line 2
    .line 3
    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 12
    .line 13
    .line 14
    move-result v1

    .line 15
    if-eqz v1, :cond_2

    .line 16
    .line 17
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 18
    .line 19
    .line 20
    move-result-object v1

    .line 21
    check-cast v1, Ljava/util/Map$Entry;

    .line 22
    .line 23
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    .line 24
    .line 25
    .line 26
    move-result-object v2

    .line 27
    check-cast v2, Ljava/lang/String;

    .line 28
    .line 29
    if-eqz v2, :cond_0

    .line 30
    .line 31
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    .line 32
    .line 33
    .line 34
    move-result v2

    .line 35
    if-nez v2, :cond_1

    .line 36
    .line 37
    goto :goto_0

    .line 38
    :cond_1
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    .line 39
    .line 40
    .line 41
    move-result-object v2

    .line 42
    check-cast v2, Lorg/hmwebrtc/utils/HtmlLineChartWriter$Category;

    .line 43
    .line 44
    iget-object v3, v2, Lorg/hmwebrtc/utils/HtmlLineChartWriter$Category;->list:Ljava/lang/String;

    .line 45
    .line 46
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    .line 47
    .line 48
    .line 49
    move-result v3

    .line 50
    if-lez v3, :cond_0

    .line 51
    .line 52
    new-instance v3, Ljava/lang/StringBuilder;

    .line 53
    .line 54
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 55
    .line 56
    .line 57
    const-string v4, "\n{\nvar temp = [ "

    .line 58
    .line 59
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 60
    .line 61
    .line 62
    iget-object v4, v2, Lorg/hmwebrtc/utils/HtmlLineChartWriter$Category;->list:Ljava/lang/String;

    .line 63
    .line 64
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 65
    .line 66
    .line 67
    const-string v4, "];\n"

    .line 68
    .line 69
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 70
    .line 71
    .line 72
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 73
    .line 74
    .line 75
    move-result-object v3

    .line 76
    invoke-direct {p0, v3}, Lorg/hmwebrtc/utils/HtmlLineChartWriter;->write(Ljava/lang/String;)V

    .line 77
    .line 78
    .line 79
    const-string v3, "for (let i = 0; i < temp.length; i++) {\n"

    .line 80
    .line 81
    invoke-direct {p0, v3}, Lorg/hmwebrtc/utils/HtmlLineChartWriter;->write(Ljava/lang/String;)V

    .line 82
    .line 83
    .line 84
    new-instance v3, Ljava/lang/StringBuilder;

    .line 85
    .line 86
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 87
    .line 88
    .line 89
    const-string v4, "   option.series["

    .line 90
    .line 91
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 92
    .line 93
    .line 94
    iget v2, v2, Lorg/hmwebrtc/utils/HtmlLineChartWriter$Category;->jsonIndex:I

    .line 95
    .line 96
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 97
    .line 98
    .line 99
    const-string v2, "].data.push(temp[i]);}}\n"

    .line 100
    .line 101
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 102
    .line 103
    .line 104
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 105
    .line 106
    .line 107
    move-result-object v2

    .line 108
    invoke-direct {p0, v2}, Lorg/hmwebrtc/utils/HtmlLineChartWriter;->write(Ljava/lang/String;)V

    .line 109
    .line 110
    .line 111
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    .line 112
    .line 113
    .line 114
    move-result-object v1

    .line 115
    check-cast v1, Lorg/hmwebrtc/utils/HtmlLineChartWriter$Category;

    .line 116
    .line 117
    const-string v2, ""

    .line 118
    .line 119
    iput-object v2, v1, Lorg/hmwebrtc/utils/HtmlLineChartWriter$Category;->list:Ljava/lang/String;

    .line 120
    .line 121
    goto :goto_0

    .line 122
    :cond_2
    const-string v0, "myChart.setOption(option);\n"

    .line 123
    .line 124
    invoke-direct {p0, v0}, Lorg/hmwebrtc/utils/HtmlLineChartWriter;->write(Ljava/lang/String;)V

    .line 125
    .line 126
    .line 127
    const-string v0, "</script></body></html>\n"

    .line 128
    .line 129
    invoke-direct {p0, v0}, Lorg/hmwebrtc/utils/HtmlLineChartWriter;->write(Ljava/lang/String;)V

    .line 130
    .line 131
    .line 132
    invoke-direct {p0}, Lorg/hmwebrtc/utils/HtmlLineChartWriter;->closeFile()V

    .line 133
    .line 134
    .line 135
    return-void
.end method
