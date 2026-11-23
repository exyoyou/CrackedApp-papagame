.class public Lcom/haima/hmcp/business/DownloadRequest;
.super Lcom/haima/hmcp/volley/Request;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/haima/hmcp/volley/Request<",
        "[B>;"
    }
.end annotation


# static fields
.field public static final CONTENT_LIST_DEFAULT:[Ljava/lang/String;

.field public static final CONTENT_TYPE_JPEG:Ljava/lang/String; = "image/jpeg"

.field public static final CONTENT_TYPE_STREAM:Ljava/lang/String; = "application/octet-stream"

.field public static final FILTER_TAG:Ljava/lang/String; = "download-file: "

.field private static final HEADER_CONTENT_LENGTH:Ljava/lang/String; = "Content-Length"

.field private static final HEADER_CONTENT_RANGE:Ljava/lang/String; = "Content-Range"

.field private static final HEADER_CONTENT_TYPE:Ljava/lang/String; = "Content-Type"

.field public static final READ_BUFFER:I = 0x1800

.field private static final STREAM_TYPE:Ljava/lang/String; = "application/octet-stream"

.field private static final TAG:Ljava/lang/String; = "DownloadRequest"


# instance fields
.field public mContentTypeList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mDownloadedSize:J

.field private mFilePath:Ljava/lang/String;

.field private mFileSize:J

.field private mInterval:J

.field private mListener:Lcom/haima/hmcp/business/DownloadResponseListener;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    const-string v0, "application/octet-stream"

    .line 2
    .line 3
    const-string v1, "image/jpeg"

    .line 4
    .line 5
    filled-new-array {v0, v1}, [Ljava/lang/String;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    sput-object v0, Lcom/haima/hmcp/business/DownloadRequest;->CONTENT_LIST_DEFAULT:[Ljava/lang/String;

    .line 10
    .line 11
    return-void
.end method

.method public constructor <init>(Lcom/haima/hmcp/business/DownloadFileInfo;Ljava/lang/String;Lcom/haima/hmcp/volley/Response$ErrorListener;)V
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    invoke-direct {p0, v0, p2, p3}, Lcom/haima/hmcp/volley/Request;-><init>(ILjava/lang/String;Lcom/haima/hmcp/volley/Response$ErrorListener;)V

    .line 3
    .line 4
    .line 5
    if-eqz p1, :cond_0

    .line 6
    .line 7
    invoke-virtual {p1}, Lcom/haima/hmcp/business/DownloadFileInfo;->getDownloadedSize()J

    .line 8
    .line 9
    .line 10
    move-result-wide p2

    .line 11
    iput-wide p2, p0, Lcom/haima/hmcp/business/DownloadRequest;->mDownloadedSize:J

    .line 12
    .line 13
    invoke-virtual {p1}, Lcom/haima/hmcp/business/DownloadFileInfo;->getFileSize()J

    .line 14
    .line 15
    .line 16
    move-result-wide p2

    .line 17
    iput-wide p2, p0, Lcom/haima/hmcp/business/DownloadRequest;->mFileSize:J

    .line 18
    .line 19
    invoke-virtual {p1}, Lcom/haima/hmcp/business/DownloadFileInfo;->getFilePath()Ljava/lang/String;

    .line 20
    .line 21
    .line 22
    move-result-object p2

    .line 23
    iput-object p2, p0, Lcom/haima/hmcp/business/DownloadRequest;->mFilePath:Ljava/lang/String;

    .line 24
    .line 25
    invoke-virtual {p1}, Lcom/haima/hmcp/business/DownloadFileInfo;->getInterval()J

    .line 26
    .line 27
    .line 28
    move-result-wide p1

    .line 29
    iput-wide p1, p0, Lcom/haima/hmcp/business/DownloadRequest;->mInterval:J

    .line 30
    .line 31
    :cond_0
    return-void
.end method

.method private getFileSize(Ljava/util/HashMap;)J
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)J"
        }
    .end annotation

    .line 1
    const-string v0, "Content-Range"

    .line 2
    .line 3
    invoke-virtual {p1, v0}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    .line 4
    .line 5
    .line 6
    move-result v1

    .line 7
    const-wide/16 v2, 0x0

    .line 8
    .line 9
    if-eqz v1, :cond_1

    .line 10
    .line 11
    invoke-virtual {p1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 12
    .line 13
    .line 14
    move-result-object p1

    .line 15
    check-cast p1, Ljava/lang/String;

    .line 16
    .line 17
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 18
    .line 19
    .line 20
    move-result v0

    .line 21
    if-nez v0, :cond_1

    .line 22
    .line 23
    const-string v0, "bytes"

    .line 24
    .line 25
    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 26
    .line 27
    .line 28
    move-result v1

    .line 29
    if-eqz v1, :cond_1

    .line 30
    .line 31
    const-string v1, ""

    .line 32
    .line 33
    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    .line 34
    .line 35
    .line 36
    move-result-object p1

    .line 37
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    .line 38
    .line 39
    .line 40
    move-result-object p1

    .line 41
    const-string v0, "/"

    .line 42
    .line 43
    invoke-virtual {p1, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    .line 44
    .line 45
    .line 46
    move-result-object v1

    .line 47
    const/4 v4, 0x1

    .line 48
    if-eqz v1, :cond_0

    .line 49
    .line 50
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    .line 51
    .line 52
    .line 53
    move-result v5

    .line 54
    const/4 v6, 0x2

    .line 55
    if-ne v5, v6, :cond_0

    .line 56
    .line 57
    const/4 v5, 0x0

    .line 58
    aget-object v1, v1, v5

    .line 59
    .line 60
    const-string v7, "-"

    .line 61
    .line 62
    invoke-virtual {v1, v7}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    .line 63
    .line 64
    .line 65
    move-result-object v1

    .line 66
    if-eqz v1, :cond_0

    .line 67
    .line 68
    array-length v7, v1

    .line 69
    if-ne v7, v6, :cond_0

    .line 70
    .line 71
    aget-object v2, v1, v4

    .line 72
    .line 73
    invoke-static {v2}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    .line 74
    .line 75
    .line 76
    move-result-wide v2

    .line 77
    aget-object v1, v1, v5

    .line 78
    .line 79
    invoke-static {v1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    .line 80
    .line 81
    .line 82
    move-result-wide v5

    .line 83
    new-instance v1, Ljava/lang/StringBuilder;

    .line 84
    .line 85
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 86
    .line 87
    .line 88
    const-string v7, "file break-point="

    .line 89
    .line 90
    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 91
    .line 92
    .line 93
    iget-wide v7, p0, Lcom/haima/hmcp/business/DownloadRequest;->mDownloadedSize:J

    .line 94
    .line 95
    invoke-virtual {v1, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 96
    .line 97
    .line 98
    const-string v7, "; response break-point="

    .line 99
    .line 100
    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 101
    .line 102
    .line 103
    invoke-virtual {v1, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 104
    .line 105
    .line 106
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 107
    .line 108
    .line 109
    move-result-object v1

    .line 110
    sget-object v5, Lcom/haima/hmcp/business/DownloadRequest;->TAG:Ljava/lang/String;

    .line 111
    .line 112
    new-instance v6, Ljava/lang/StringBuilder;

    .line 113
    .line 114
    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    .line 115
    .line 116
    .line 117
    const-string v7, "download-file: "

    .line 118
    .line 119
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 120
    .line 121
    .line 122
    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 123
    .line 124
    .line 125
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 126
    .line 127
    .line 128
    move-result-object v1

    .line 129
    invoke-static {v5, v1}, Lcom/haima/hmcp/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 130
    .line 131
    .line 132
    :cond_0
    invoke-virtual {p1, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    .line 133
    .line 134
    .line 135
    move-result v0

    .line 136
    if-lez v0, :cond_1

    .line 137
    .line 138
    add-int/2addr v0, v4

    .line 139
    :try_start_0
    invoke-virtual {p1, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    .line 140
    .line 141
    .line 142
    move-result-object p1

    .line 143
    invoke-static {p1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    .line 144
    .line 145
    .line 146
    move-result-wide v2
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 147
    :catch_0
    :cond_1
    return-wide v2
.end method

.method private isSupport(Ljava/lang/String;)Z
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/haima/hmcp/business/DownloadRequest;->mContentTypeList:Ljava/util/List;

    .line 2
    .line 3
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    const/4 v1, 0x1

    .line 8
    if-ne v0, v1, :cond_0

    .line 9
    .line 10
    iget-object v0, p0, Lcom/haima/hmcp/business/DownloadRequest;->mContentTypeList:Ljava/util/List;

    .line 11
    .line 12
    const/4 v2, 0x0

    .line 13
    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    const-string v2, "all"

    .line 18
    .line 19
    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 20
    .line 21
    .line 22
    move-result v0

    .line 23
    if-eqz v0, :cond_0

    .line 24
    .line 25
    return v1

    .line 26
    :cond_0
    iget-object v0, p0, Lcom/haima/hmcp/business/DownloadRequest;->mContentTypeList:Ljava/util/List;

    .line 27
    .line 28
    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    .line 29
    .line 30
    .line 31
    move-result p1

    .line 32
    return p1
.end method

.method private parseHeaders(Lcom/haima/hmcp/volley/toolbox/HttpResponse;)Ljava/util/HashMap;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/haima/hmcp/volley/toolbox/HttpResponse;",
            ")",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1
    new-instance v0, Ljava/util/HashMap;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p1}, Lcom/haima/hmcp/volley/toolbox/HttpResponse;->getHeaders()Ljava/util/List;

    .line 7
    .line 8
    .line 9
    move-result-object p1

    .line 10
    new-instance v1, Ljava/lang/StringBuffer;

    .line 11
    .line 12
    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    .line 13
    .line 14
    .line 15
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 16
    .line 17
    .line 18
    move-result-object p1

    .line 19
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 20
    .line 21
    .line 22
    move-result v2

    .line 23
    if-eqz v2, :cond_0

    .line 24
    .line 25
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 26
    .line 27
    .line 28
    move-result-object v2

    .line 29
    check-cast v2, Lcom/haima/hmcp/volley/Header;

    .line 30
    .line 31
    invoke-virtual {v2}, Lcom/haima/hmcp/volley/Header;->getName()Ljava/lang/String;

    .line 32
    .line 33
    .line 34
    move-result-object v3

    .line 35
    invoke-virtual {v2}, Lcom/haima/hmcp/volley/Header;->getValue()Ljava/lang/String;

    .line 36
    .line 37
    .line 38
    move-result-object v2

    .line 39
    invoke-virtual {v0, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 40
    .line 41
    .line 42
    new-instance v4, Ljava/lang/StringBuilder;

    .line 43
    .line 44
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 45
    .line 46
    .line 47
    const-string v5, "header: "

    .line 48
    .line 49
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 50
    .line 51
    .line 52
    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 53
    .line 54
    .line 55
    const-string v3, "; value: "

    .line 56
    .line 57
    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 58
    .line 59
    .line 60
    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 61
    .line 62
    .line 63
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 64
    .line 65
    .line 66
    move-result-object v2

    .line 67
    const-string v3, "["

    .line 68
    .line 69
    invoke-virtual {v1, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 70
    .line 71
    .line 72
    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 73
    .line 74
    .line 75
    const-string v3, "]"

    .line 76
    .line 77
    invoke-virtual {v1, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 78
    .line 79
    .line 80
    sget-object v3, Lcom/haima/hmcp/business/DownloadRequest;->TAG:Ljava/lang/String;

    .line 81
    .line 82
    new-instance v4, Ljava/lang/StringBuilder;

    .line 83
    .line 84
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 85
    .line 86
    .line 87
    const-string v5, "download-file: "

    .line 88
    .line 89
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 90
    .line 91
    .line 92
    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 93
    .line 94
    .line 95
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 96
    .line 97
    .line 98
    move-result-object v2

    .line 99
    invoke-static {v3, v2}, Lcom/haima/hmcp/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 100
    .line 101
    .line 102
    goto :goto_0

    .line 103
    :cond_0
    iget-object p1, p0, Lcom/haima/hmcp/business/DownloadRequest;->mListener:Lcom/haima/hmcp/business/DownloadResponseListener;

    .line 104
    .line 105
    if-eqz p1, :cond_1

    .line 106
    .line 107
    sget-object p1, Lcom/haima/hmcp/business/DownloadRequest;->TAG:Ljava/lang/String;

    .line 108
    .line 109
    new-instance v2, Ljava/lang/StringBuilder;

    .line 110
    .line 111
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 112
    .line 113
    .line 114
    const-string v3, "download-file: download response headers: "

    .line 115
    .line 116
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 117
    .line 118
    .line 119
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 120
    .line 121
    .line 122
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 123
    .line 124
    .line 125
    move-result-object v1

    .line 126
    invoke-static {p1, v1}, Lcom/haima/hmcp/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 127
    .line 128
    .line 129
    iget-object p1, p0, Lcom/haima/hmcp/business/DownloadRequest;->mListener:Lcom/haima/hmcp/business/DownloadResponseListener;

    .line 130
    .line 131
    invoke-interface {p1, v0}, Lcom/haima/hmcp/business/DownloadResponseListener;->onHeaders(Ljava/util/HashMap;)V

    .line 132
    .line 133
    .line 134
    :cond_1
    return-object v0
.end method


# virtual methods
.method protected bridge synthetic deliverResponse(Ljava/lang/Object;)V
    .locals 0

    .line 2
    check-cast p1, [B

    invoke-virtual {p0, p1}, Lcom/haima/hmcp/business/DownloadRequest;->deliverResponse([B)V

    return-void
.end method

.method protected deliverResponse([B)V
    .locals 0

    .line 1
    return-void
.end method

.method public getHeaders()Ljava/util/Map;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/haima/hmcp/volley/AuthFailureError;
        }
    .end annotation

    .line 1
    new-instance v0, Ljava/util/HashMap;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 4
    .line 5
    .line 6
    new-instance v1, Ljava/lang/StringBuilder;

    .line 7
    .line 8
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 9
    .line 10
    .line 11
    const-string v2, "bytes="

    .line 12
    .line 13
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 14
    .line 15
    .line 16
    iget-wide v2, p0, Lcom/haima/hmcp/business/DownloadRequest;->mDownloadedSize:J

    .line 17
    .line 18
    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 19
    .line 20
    .line 21
    const-string v2, "-"

    .line 22
    .line 23
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 24
    .line 25
    .line 26
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 27
    .line 28
    .line 29
    move-result-object v1

    .line 30
    const-string v3, "Range"

    .line 31
    .line 32
    invoke-virtual {v0, v3, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 33
    .line 34
    .line 35
    sget-object v1, Lcom/haima/hmcp/business/DownloadRequest;->TAG:Ljava/lang/String;

    .line 36
    .line 37
    new-instance v3, Ljava/lang/StringBuilder;

    .line 38
    .line 39
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 40
    .line 41
    .line 42
    const-string v4, "download-file: request Range bytes="

    .line 43
    .line 44
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 45
    .line 46
    .line 47
    iget-wide v4, p0, Lcom/haima/hmcp/business/DownloadRequest;->mDownloadedSize:J

    .line 48
    .line 49
    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 50
    .line 51
    .line 52
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 53
    .line 54
    .line 55
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 56
    .line 57
    .line 58
    move-result-object v2

    .line 59
    invoke-static {v1, v2}, Lcom/haima/hmcp/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 60
    .line 61
    .line 62
    return-object v0
.end method

.method public handleResponse(Lcom/haima/hmcp/volley/toolbox/HttpResponse;Lcom/haima/hmcp/volley/toolbox/ByteArrayPool;)[B
    .locals 25

    .line 1
    move-object/from16 v1, p0

    .line 2
    .line 3
    const-string v2, "An incomplete file"

    .line 4
    .line 5
    const-string v3, ", fileSize="

    .line 6
    .line 7
    const-string v4, "complete download size is not match with source file size, downloadSize="

    .line 8
    .line 9
    const-string v5, "; download size="

    .line 10
    .line 11
    const-string v6, "s, file size="

    .line 12
    .line 13
    const-string v7, "download-file: download cost: "

    .line 14
    .line 15
    const-string v8, "download-file: Error occured when calling InputStream.close"

    .line 16
    .line 17
    const-string v9, "IO error"

    .line 18
    .line 19
    sget-object v0, Lcom/haima/hmcp/business/DownloadRequest;->TAG:Ljava/lang/String;

    .line 20
    .line 21
    new-instance v10, Ljava/lang/StringBuilder;

    .line 22
    .line 23
    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    .line 24
    .line 25
    .line 26
    const-string v11, "download-file: content-type list: "

    .line 27
    .line 28
    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 29
    .line 30
    .line 31
    iget-object v11, v1, Lcom/haima/hmcp/business/DownloadRequest;->mContentTypeList:Ljava/util/List;

    .line 32
    .line 33
    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 34
    .line 35
    .line 36
    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 37
    .line 38
    .line 39
    move-result-object v10

    .line 40
    invoke-static {v0, v10}, Lcom/haima/hmcp/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 41
    .line 42
    .line 43
    invoke-direct/range {p0 .. p1}, Lcom/haima/hmcp/business/DownloadRequest;->parseHeaders(Lcom/haima/hmcp/volley/toolbox/HttpResponse;)Ljava/util/HashMap;

    .line 44
    .line 45
    .line 46
    move-result-object v10

    .line 47
    invoke-virtual/range {p1 .. p1}, Lcom/haima/hmcp/volley/toolbox/HttpResponse;->getStatusCode()I

    .line 48
    .line 49
    .line 50
    move-result v11

    .line 51
    const/16 v12, 0xce

    .line 52
    .line 53
    if-ne v11, v12, :cond_0

    .line 54
    .line 55
    const/4 v12, 0x1

    .line 56
    goto :goto_0

    .line 57
    :cond_0
    const/4 v12, 0x0

    .line 58
    :goto_0
    const-string v15, "Bad response"

    .line 59
    .line 60
    const/16 v13, 0x3ee

    .line 61
    .line 62
    const-string v14, "download-file: "

    .line 63
    .line 64
    if-nez v12, :cond_2

    .line 65
    .line 66
    new-instance v2, Ljava/lang/StringBuilder;

    .line 67
    .line 68
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 69
    .line 70
    .line 71
    const-string v3, "error response status code: "

    .line 72
    .line 73
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 74
    .line 75
    .line 76
    invoke-virtual {v2, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 77
    .line 78
    .line 79
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 80
    .line 81
    .line 82
    move-result-object v2

    .line 83
    new-instance v3, Ljava/lang/StringBuilder;

    .line 84
    .line 85
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 86
    .line 87
    .line 88
    invoke-virtual {v3, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 89
    .line 90
    .line 91
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 92
    .line 93
    .line 94
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 95
    .line 96
    .line 97
    move-result-object v3

    .line 98
    invoke-static {v0, v3}, Lcom/haima/hmcp/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 99
    .line 100
    .line 101
    iget-object v0, v1, Lcom/haima/hmcp/business/DownloadRequest;->mListener:Lcom/haima/hmcp/business/DownloadResponseListener;

    .line 102
    .line 103
    if-eqz v0, :cond_1

    .line 104
    .line 105
    invoke-interface {v0, v13, v15, v2}, Lcom/haima/hmcp/business/DownloadResponseListener;->onError(ILjava/lang/String;Ljava/lang/String;)V

    .line 106
    .line 107
    .line 108
    :cond_1
    invoke-virtual/range {p0 .. p0}, Lcom/haima/hmcp/volley/Request;->cancel()V

    .line 109
    .line 110
    .line 111
    const/4 v2, 0x0

    .line 112
    new-array v2, v2, [B

    .line 113
    .line 114
    :try_start_0
    invoke-static/range {p1 .. p2}, Lcom/haima/hmcp/volley/toolbox/NetworkUtility;->responseToBytes(Lcom/haima/hmcp/volley/toolbox/HttpResponse;Lcom/haima/hmcp/volley/toolbox/ByteArrayPool;)[B

    .line 115
    .line 116
    .line 117
    move-result-object v0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lcom/haima/hmcp/volley/ServerError; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 118
    return-object v0

    .line 119
    :catch_0
    move-exception v0

    .line 120
    move-object v3, v0

    .line 121
    :try_start_1
    invoke-virtual {v3}, Ljava/lang/Throwable;->printStackTrace()V

    .line 122
    .line 123
    .line 124
    return-object v2

    .line 125
    :catch_1
    move-exception v0

    .line 126
    move-object v3, v0

    .line 127
    invoke-virtual {v3}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 128
    .line 129
    .line 130
    :catchall_0
    return-object v2

    .line 131
    :cond_2
    const-string v11, "Content-Type"

    .line 132
    .line 133
    invoke-virtual {v10, v11}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 134
    .line 135
    .line 136
    move-result-object v12

    .line 137
    check-cast v12, Ljava/lang/String;

    .line 138
    .line 139
    invoke-direct {v1, v12}, Lcom/haima/hmcp/business/DownloadRequest;->isSupport(Ljava/lang/String;)Z

    .line 140
    .line 141
    .line 142
    move-result v12

    .line 143
    if-nez v12, :cond_4

    .line 144
    .line 145
    new-instance v2, Ljava/lang/StringBuilder;

    .line 146
    .line 147
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 148
    .line 149
    .line 150
    const-string v3, "not support file type: "

    .line 151
    .line 152
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 153
    .line 154
    .line 155
    invoke-virtual {v10, v11}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 156
    .line 157
    .line 158
    move-result-object v3

    .line 159
    check-cast v3, Ljava/lang/String;

    .line 160
    .line 161
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 162
    .line 163
    .line 164
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 165
    .line 166
    .line 167
    move-result-object v2

    .line 168
    new-instance v3, Ljava/lang/StringBuilder;

    .line 169
    .line 170
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 171
    .line 172
    .line 173
    invoke-virtual {v3, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 174
    .line 175
    .line 176
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 177
    .line 178
    .line 179
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 180
    .line 181
    .line 182
    move-result-object v3

    .line 183
    invoke-static {v0, v3}, Lcom/haima/hmcp/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 184
    .line 185
    .line 186
    iget-object v0, v1, Lcom/haima/hmcp/business/DownloadRequest;->mListener:Lcom/haima/hmcp/business/DownloadResponseListener;

    .line 187
    .line 188
    if-eqz v0, :cond_3

    .line 189
    .line 190
    invoke-interface {v0, v13, v15, v2}, Lcom/haima/hmcp/business/DownloadResponseListener;->onError(ILjava/lang/String;Ljava/lang/String;)V

    .line 191
    .line 192
    .line 193
    :cond_3
    invoke-virtual/range {p0 .. p0}, Lcom/haima/hmcp/volley/Request;->cancel()V

    .line 194
    .line 195
    .line 196
    const/4 v2, 0x0

    .line 197
    new-array v2, v2, [B

    .line 198
    .line 199
    :try_start_2
    invoke-static/range {p1 .. p2}, Lcom/haima/hmcp/volley/toolbox/NetworkUtility;->responseToBytes(Lcom/haima/hmcp/volley/toolbox/HttpResponse;Lcom/haima/hmcp/volley/toolbox/ByteArrayPool;)[B

    .line 200
    .line 201
    .line 202
    move-result-object v0
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_3
    .catch Lcom/haima/hmcp/volley/ServerError; {:try_start_2 .. :try_end_2} :catch_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 203
    return-object v0

    .line 204
    :catch_2
    move-exception v0

    .line 205
    move-object v3, v0

    .line 206
    :try_start_3
    invoke-virtual {v3}, Ljava/lang/Throwable;->printStackTrace()V

    .line 207
    .line 208
    .line 209
    return-object v2

    .line 210
    :catch_3
    move-exception v0

    .line 211
    move-object v3, v0

    .line 212
    invoke-virtual {v3}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 213
    .line 214
    .line 215
    :catchall_1
    return-object v2

    .line 216
    :cond_4
    new-instance v12, Ljava/lang/StringBuilder;

    .line 217
    .line 218
    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    .line 219
    .line 220
    .line 221
    invoke-virtual {v12, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 222
    .line 223
    .line 224
    invoke-virtual {v10, v11}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 225
    .line 226
    .line 227
    move-result-object v11

    .line 228
    check-cast v11, Ljava/lang/String;

    .line 229
    .line 230
    invoke-virtual {v12, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 231
    .line 232
    .line 233
    const-string v11, " is support"

    .line 234
    .line 235
    invoke-virtual {v12, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 236
    .line 237
    .line 238
    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 239
    .line 240
    .line 241
    move-result-object v11

    .line 242
    invoke-static {v0, v11}, Lcom/haima/hmcp/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 243
    .line 244
    .line 245
    invoke-direct {v1, v10}, Lcom/haima/hmcp/business/DownloadRequest;->getFileSize(Ljava/util/HashMap;)J

    .line 246
    .line 247
    .line 248
    move-result-wide v10

    .line 249
    move-object v12, v14

    .line 250
    iget-wide v13, v1, Lcom/haima/hmcp/business/DownloadRequest;->mFileSize:J

    .line 251
    .line 252
    cmp-long v17, v13, v10

    .line 253
    .line 254
    if-eqz v17, :cond_6

    .line 255
    .line 256
    new-instance v2, Ljava/lang/StringBuilder;

    .line 257
    .line 258
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 259
    .line 260
    .line 261
    invoke-virtual {v2, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 262
    .line 263
    .line 264
    const-string v3, "file size is not match when download response"

    .line 265
    .line 266
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 267
    .line 268
    .line 269
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 270
    .line 271
    .line 272
    move-result-object v2

    .line 273
    invoke-static {v0, v2}, Lcom/haima/hmcp/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 274
    .line 275
    .line 276
    iget-object v0, v1, Lcom/haima/hmcp/business/DownloadRequest;->mListener:Lcom/haima/hmcp/business/DownloadResponseListener;

    .line 277
    .line 278
    if-eqz v0, :cond_5

    .line 279
    .line 280
    const-string v2, "Data error"

    .line 281
    .line 282
    const/16 v4, 0x3ee

    .line 283
    .line 284
    invoke-interface {v0, v4, v2, v3}, Lcom/haima/hmcp/business/DownloadResponseListener;->onError(ILjava/lang/String;Ljava/lang/String;)V

    .line 285
    .line 286
    .line 287
    :cond_5
    invoke-virtual/range {p0 .. p0}, Lcom/haima/hmcp/volley/Request;->cancel()V

    .line 288
    .line 289
    .line 290
    const/4 v2, 0x0

    .line 291
    new-array v0, v2, [B

    .line 292
    .line 293
    return-object v0

    .line 294
    :cond_6
    iget-object v10, v1, Lcom/haima/hmcp/business/DownloadRequest;->mFilePath:Ljava/lang/String;

    .line 295
    .line 296
    invoke-static {v10}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 297
    .line 298
    .line 299
    move-result v11

    .line 300
    const/16 v13, 0x3eb

    .line 301
    .line 302
    if-eqz v11, :cond_8

    .line 303
    .line 304
    new-instance v2, Ljava/lang/StringBuilder;

    .line 305
    .line 306
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 307
    .line 308
    .line 309
    invoke-virtual {v2, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 310
    .line 311
    .line 312
    const-string v3, "download temp file name is null when download response"

    .line 313
    .line 314
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 315
    .line 316
    .line 317
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 318
    .line 319
    .line 320
    move-result-object v2

    .line 321
    invoke-static {v0, v2}, Lcom/haima/hmcp/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 322
    .line 323
    .line 324
    iget-object v0, v1, Lcom/haima/hmcp/business/DownloadRequest;->mListener:Lcom/haima/hmcp/business/DownloadResponseListener;

    .line 325
    .line 326
    if-eqz v0, :cond_7

    .line 327
    .line 328
    const-string v2, "I/O error"

    .line 329
    .line 330
    invoke-interface {v0, v13, v2, v3}, Lcom/haima/hmcp/business/DownloadResponseListener;->onError(ILjava/lang/String;Ljava/lang/String;)V

    .line 331
    .line 332
    .line 333
    :cond_7
    invoke-virtual/range {p0 .. p0}, Lcom/haima/hmcp/volley/Request;->cancel()V

    .line 334
    .line 335
    .line 336
    const/4 v2, 0x0

    .line 337
    new-array v0, v2, [B

    .line 338
    .line 339
    return-object v0

    .line 340
    :cond_8
    new-instance v11, Ljava/io/File;

    .line 341
    .line 342
    invoke-direct {v11, v10}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 343
    .line 344
    .line 345
    const/4 v14, 0x1

    .line 346
    invoke-virtual {v11, v14}, Ljava/io/File;->setWritable(Z)Z

    .line 347
    .line 348
    .line 349
    :try_start_4
    invoke-virtual {v11}, Ljava/io/File;->exists()Z

    .line 350
    .line 351
    .line 352
    move-result v14

    .line 353
    if-nez v14, :cond_a

    .line 354
    .line 355
    invoke-virtual {v11}, Ljava/io/File;->canWrite()Z

    .line 356
    .line 357
    .line 358
    move-result v14

    .line 359
    if-eqz v14, :cond_9

    .line 360
    .line 361
    invoke-virtual {v11}, Ljava/io/File;->createNewFile()Z

    .line 362
    .line 363
    .line 364
    new-instance v11, Ljava/lang/StringBuilder;

    .line 365
    .line 366
    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    .line 367
    .line 368
    .line 369
    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 370
    .line 371
    .line 372
    invoke-virtual {v11, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 373
    .line 374
    .line 375
    const-string v14, " not exists and create file"

    .line 376
    .line 377
    invoke-virtual {v11, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 378
    .line 379
    .line 380
    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 381
    .line 382
    .line 383
    move-result-object v11

    .line 384
    invoke-static {v0, v11}, Lcom/haima/hmcp/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 385
    .line 386
    .line 387
    goto :goto_1

    .line 388
    :cond_9
    new-instance v11, Ljava/lang/StringBuilder;

    .line 389
    .line 390
    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    .line 391
    .line 392
    .line 393
    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 394
    .line 395
    .line 396
    invoke-virtual {v11, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 397
    .line 398
    .line 399
    const-string v14, " not exists and can not write"

    .line 400
    .line 401
    invoke-virtual {v11, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 402
    .line 403
    .line 404
    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 405
    .line 406
    .line 407
    move-result-object v11

    .line 408
    invoke-static {v0, v11}, Lcom/haima/hmcp/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 409
    .line 410
    .line 411
    goto :goto_1

    .line 412
    :cond_a
    new-instance v11, Ljava/lang/StringBuilder;

    .line 413
    .line 414
    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    .line 415
    .line 416
    .line 417
    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 418
    .line 419
    .line 420
    invoke-virtual {v11, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 421
    .line 422
    .line 423
    const-string v14, " exists"

    .line 424
    .line 425
    invoke-virtual {v11, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 426
    .line 427
    .line 428
    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 429
    .line 430
    .line 431
    move-result-object v11

    .line 432
    invoke-static {v0, v11}, Lcom/haima/hmcp/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_a

    .line 433
    .line 434
    .line 435
    :goto_1
    :try_start_5
    new-instance v11, Ljava/io/RandomAccessFile;

    .line 436
    .line 437
    const-string v0, "rw"

    .line 438
    .line 439
    invoke-direct {v11, v10, v0}, Ljava/io/RandomAccessFile;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 440
    .line 441
    .line 442
    iget-wide v14, v1, Lcom/haima/hmcp/business/DownloadRequest;->mDownloadedSize:J
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_9

    .line 443
    .line 444
    move-object/from16 v16, v9

    .line 445
    .line 446
    const-wide/16 v9, 0x0

    .line 447
    .line 448
    cmp-long v0, v14, v9

    .line 449
    .line 450
    if-lez v0, :cond_b

    .line 451
    .line 452
    :try_start_6
    invoke-virtual {v11, v14, v15}, Ljava/io/RandomAccessFile;->seek(J)V

    .line 453
    .line 454
    .line 455
    goto :goto_2

    .line 456
    :cond_b
    invoke-virtual {v11, v9, v10}, Ljava/io/RandomAccessFile;->setLength(J)V

    .line 457
    .line 458
    .line 459
    move-wide v14, v9

    .line 460
    :goto_2
    iget-object v0, v1, Lcom/haima/hmcp/business/DownloadRequest;->mListener:Lcom/haima/hmcp/business/DownloadResponseListener;

    .line 461
    .line 462
    if-eqz v0, :cond_c

    .line 463
    .line 464
    invoke-interface {v0}, Lcom/haima/hmcp/business/DownloadResponseListener;->onSuccess()V

    .line 465
    .line 466
    .line 467
    :cond_c
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 468
    .line 469
    .line 470
    move-result-wide v9

    .line 471
    invoke-virtual/range {p1 .. p1}, Lcom/haima/hmcp/volley/toolbox/HttpResponse;->getContent()Ljava/io/InputStream;

    .line 472
    .line 473
    .line 474
    move-result-object v13
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_8

    .line 475
    const/16 v0, 0x1800

    .line 476
    .line 477
    const-wide/16 v17, -0x1

    .line 478
    .line 479
    const-wide/16 v19, 0x3e8

    .line 480
    .line 481
    :try_start_7
    new-array v0, v0, [B
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_6

    .line 482
    .line 483
    move-object/from16 v21, v2

    .line 484
    .line 485
    :goto_3
    :try_start_8
    invoke-virtual {v13, v0}, Ljava/io/InputStream;->read([B)I

    .line 486
    .line 487
    .line 488
    move-result v2
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_5

    .line 489
    move-object/from16 v22, v12

    .line 490
    .line 491
    const/4 v12, -0x1

    .line 492
    if-eq v2, v12, :cond_f

    .line 493
    .line 494
    const/4 v12, 0x0

    .line 495
    :try_start_9
    invoke-virtual {v11, v0, v12, v2}, Ljava/io/RandomAccessFile;->write([BII)V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_4

    .line 496
    .line 497
    .line 498
    move-object v12, v3

    .line 499
    int-to-long v2, v2

    .line 500
    add-long/2addr v14, v2

    .line 501
    :try_start_a
    iget-object v2, v1, Lcom/haima/hmcp/business/DownloadRequest;->mListener:Lcom/haima/hmcp/business/DownloadResponseListener;
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_3

    .line 502
    .line 503
    move-object/from16 v23, v4

    .line 504
    .line 505
    if-eqz v2, :cond_d

    .line 506
    .line 507
    :try_start_b
    iget-wide v3, v1, Lcom/haima/hmcp/business/DownloadRequest;->mFileSize:J

    .line 508
    .line 509
    invoke-interface {v2, v3, v4, v14, v15}, Lcom/haima/hmcp/business/DownloadResponseListener;->onProgress(JJ)V

    .line 510
    .line 511
    .line 512
    :cond_d
    invoke-virtual/range {p0 .. p0}, Lcom/haima/hmcp/volley/Request;->isCanceled()Z

    .line 513
    .line 514
    .line 515
    move-result v2
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_2

    .line 516
    if-eqz v2, :cond_e

    .line 517
    .line 518
    goto :goto_6

    .line 519
    :cond_e
    move-object v3, v12

    .line 520
    move-object/from16 v12, v22

    .line 521
    .line 522
    move-object/from16 v4, v23

    .line 523
    .line 524
    goto :goto_3

    .line 525
    :catchall_2
    move-exception v0

    .line 526
    goto :goto_5

    .line 527
    :catchall_3
    move-exception v0

    .line 528
    goto :goto_4

    .line 529
    :catchall_4
    move-exception v0

    .line 530
    move-object v12, v3

    .line 531
    :goto_4
    move-object/from16 v23, v4

    .line 532
    .line 533
    :goto_5
    move-object/from16 v2, v21

    .line 534
    .line 535
    move-object/from16 v4, v22

    .line 536
    .line 537
    move-object/from16 v3, v23

    .line 538
    .line 539
    goto/16 :goto_9

    .line 540
    .line 541
    :cond_f
    move-object v12, v3

    .line 542
    move-object/from16 v23, v4

    .line 543
    .line 544
    :goto_6
    :try_start_c
    invoke-virtual {v13}, Ljava/io/InputStream;->close()V
    :try_end_c
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_c} :catch_4

    .line 545
    .line 546
    .line 547
    goto :goto_7

    .line 548
    :catch_4
    :try_start_d
    sget-object v0, Lcom/haima/hmcp/business/DownloadRequest;->TAG:Ljava/lang/String;

    .line 549
    .line 550
    invoke-static {v0, v8}, Lcom/haima/hmcp/utils/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 551
    .line 552
    .line 553
    :goto_7
    invoke-virtual {v11}, Ljava/io/RandomAccessFile;->close()V

    .line 554
    .line 555
    .line 556
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 557
    .line 558
    .line 559
    move-result-wide v2

    .line 560
    sub-long/2addr v2, v9

    .line 561
    div-long v2, v2, v19

    .line 562
    .line 563
    sget-object v0, Lcom/haima/hmcp/business/DownloadRequest;->TAG:Ljava/lang/String;

    .line 564
    .line 565
    new-instance v4, Ljava/lang/StringBuilder;

    .line 566
    .line 567
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 568
    .line 569
    .line 570
    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 571
    .line 572
    .line 573
    invoke-virtual {v4, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 574
    .line 575
    .line 576
    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 577
    .line 578
    .line 579
    iget-wide v2, v1, Lcom/haima/hmcp/business/DownloadRequest;->mFileSize:J

    .line 580
    .line 581
    invoke-virtual {v4, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 582
    .line 583
    .line 584
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 585
    .line 586
    .line 587
    invoke-virtual {v4, v14, v15}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 588
    .line 589
    .line 590
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 591
    .line 592
    .line 593
    move-result-object v2

    .line 594
    invoke-static {v0, v2}, Lcom/haima/hmcp/utils/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 595
    .line 596
    .line 597
    iget-wide v2, v1, Lcom/haima/hmcp/business/DownloadRequest;->mFileSize:J

    .line 598
    .line 599
    cmp-long v4, v2, v14

    .line 600
    .line 601
    if-eqz v4, :cond_12

    .line 602
    .line 603
    invoke-virtual/range {p0 .. p0}, Lcom/haima/hmcp/volley/Request;->isCanceled()Z

    .line 604
    .line 605
    .line 606
    move-result v2

    .line 607
    if-nez v2, :cond_12

    .line 608
    .line 609
    iget-wide v2, v1, Lcom/haima/hmcp/business/DownloadRequest;->mInterval:J

    .line 610
    .line 611
    cmp-long v4, v2, v17

    .line 612
    .line 613
    if-eqz v4, :cond_11

    .line 614
    .line 615
    iget-object v0, v1, Lcom/haima/hmcp/business/DownloadRequest;->mListener:Lcom/haima/hmcp/business/DownloadResponseListener;

    .line 616
    .line 617
    if-eqz v0, :cond_10

    .line 618
    .line 619
    invoke-interface {v0, v2, v3}, Lcom/haima/hmcp/business/DownloadResponseListener;->onRetry(J)V

    .line 620
    .line 621
    .line 622
    :cond_10
    const/4 v2, 0x0

    .line 623
    new-array v0, v2, [B

    .line 624
    .line 625
    return-object v0

    .line 626
    :cond_11
    new-instance v2, Ljava/lang/StringBuilder;

    .line 627
    .line 628
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 629
    .line 630
    .line 631
    move-object/from16 v3, v23

    .line 632
    .line 633
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 634
    .line 635
    .line 636
    invoke-virtual {v2, v14, v15}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 637
    .line 638
    .line 639
    invoke-virtual {v2, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 640
    .line 641
    .line 642
    iget-wide v3, v1, Lcom/haima/hmcp/business/DownloadRequest;->mFileSize:J

    .line 643
    .line 644
    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 645
    .line 646
    .line 647
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 648
    .line 649
    .line 650
    move-result-object v2

    .line 651
    new-instance v3, Ljava/lang/StringBuilder;

    .line 652
    .line 653
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V
    :try_end_d
    .catch Ljava/io/IOException; {:try_start_d .. :try_end_d} :catch_5

    .line 654
    .line 655
    .line 656
    move-object/from16 v4, v22

    .line 657
    .line 658
    :try_start_e
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 659
    .line 660
    .line 661
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 662
    .line 663
    .line 664
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 665
    .line 666
    .line 667
    move-result-object v3

    .line 668
    invoke-static {v0, v3}, Lcom/haima/hmcp/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 669
    .line 670
    .line 671
    iget-object v0, v1, Lcom/haima/hmcp/business/DownloadRequest;->mListener:Lcom/haima/hmcp/business/DownloadResponseListener;

    .line 672
    .line 673
    if-eqz v0, :cond_18

    .line 674
    .line 675
    move-object/from16 v3, v21

    .line 676
    .line 677
    const/16 v5, 0x3eb

    .line 678
    .line 679
    invoke-interface {v0, v5, v3, v2}, Lcom/haima/hmcp/business/DownloadResponseListener;->onError(ILjava/lang/String;Ljava/lang/String;)V

    .line 680
    .line 681
    .line 682
    goto/16 :goto_e

    .line 683
    .line 684
    :cond_12
    move-object/from16 v4, v22

    .line 685
    .line 686
    iget-object v0, v1, Lcom/haima/hmcp/business/DownloadRequest;->mListener:Lcom/haima/hmcp/business/DownloadResponseListener;

    .line 687
    .line 688
    if-eqz v0, :cond_18

    .line 689
    .line 690
    invoke-interface {v0}, Lcom/haima/hmcp/business/DownloadResponseListener;->onFinish()V
    :try_end_e
    .catch Ljava/io/IOException; {:try_start_e .. :try_end_e} :catch_7

    .line 691
    .line 692
    .line 693
    goto/16 :goto_e

    .line 694
    .line 695
    :catch_5
    move-exception v0

    .line 696
    move-object/from16 v4, v22

    .line 697
    .line 698
    goto/16 :goto_d

    .line 699
    .line 700
    :catchall_5
    move-exception v0

    .line 701
    move-object/from16 v2, v21

    .line 702
    .line 703
    goto :goto_8

    .line 704
    :catchall_6
    move-exception v0

    .line 705
    :goto_8
    move-object/from16 v24, v12

    .line 706
    .line 707
    move-object v12, v3

    .line 708
    move-object v3, v4

    .line 709
    move-object/from16 v4, v24

    .line 710
    .line 711
    :goto_9
    if-eqz v13, :cond_13

    .line 712
    .line 713
    :try_start_f
    invoke-virtual {v13}, Ljava/io/InputStream;->close()V
    :try_end_f
    .catch Ljava/lang/Exception; {:try_start_f .. :try_end_f} :catch_6

    .line 714
    .line 715
    .line 716
    goto :goto_a

    .line 717
    :catch_6
    :try_start_10
    sget-object v13, Lcom/haima/hmcp/business/DownloadRequest;->TAG:Ljava/lang/String;

    .line 718
    .line 719
    invoke-static {v13, v8}, Lcom/haima/hmcp/utils/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 720
    .line 721
    .line 722
    :cond_13
    :goto_a
    invoke-virtual {v11}, Ljava/io/RandomAccessFile;->close()V

    .line 723
    .line 724
    .line 725
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 726
    .line 727
    .line 728
    move-result-wide v21

    .line 729
    sub-long v21, v21, v9

    .line 730
    .line 731
    div-long v8, v21, v19

    .line 732
    .line 733
    sget-object v10, Lcom/haima/hmcp/business/DownloadRequest;->TAG:Ljava/lang/String;

    .line 734
    .line 735
    new-instance v11, Ljava/lang/StringBuilder;

    .line 736
    .line 737
    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    .line 738
    .line 739
    .line 740
    invoke-virtual {v11, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 741
    .line 742
    .line 743
    invoke-virtual {v11, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 744
    .line 745
    .line 746
    invoke-virtual {v11, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 747
    .line 748
    .line 749
    iget-wide v6, v1, Lcom/haima/hmcp/business/DownloadRequest;->mFileSize:J

    .line 750
    .line 751
    invoke-virtual {v11, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 752
    .line 753
    .line 754
    invoke-virtual {v11, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 755
    .line 756
    .line 757
    invoke-virtual {v11, v14, v15}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 758
    .line 759
    .line 760
    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 761
    .line 762
    .line 763
    move-result-object v5

    .line 764
    invoke-static {v10, v5}, Lcom/haima/hmcp/utils/LogUtil;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 765
    .line 766
    .line 767
    iget-wide v5, v1, Lcom/haima/hmcp/business/DownloadRequest;->mFileSize:J

    .line 768
    .line 769
    cmp-long v7, v5, v14

    .line 770
    .line 771
    if-eqz v7, :cond_16

    .line 772
    .line 773
    invoke-virtual/range {p0 .. p0}, Lcom/haima/hmcp/volley/Request;->isCanceled()Z

    .line 774
    .line 775
    .line 776
    move-result v5

    .line 777
    if-nez v5, :cond_16

    .line 778
    .line 779
    iget-wide v5, v1, Lcom/haima/hmcp/business/DownloadRequest;->mInterval:J

    .line 780
    .line 781
    cmp-long v7, v5, v17

    .line 782
    .line 783
    if-eqz v7, :cond_15

    .line 784
    .line 785
    iget-object v0, v1, Lcom/haima/hmcp/business/DownloadRequest;->mListener:Lcom/haima/hmcp/business/DownloadResponseListener;

    .line 786
    .line 787
    if-eqz v0, :cond_14

    .line 788
    .line 789
    invoke-interface {v0, v5, v6}, Lcom/haima/hmcp/business/DownloadResponseListener;->onRetry(J)V

    .line 790
    .line 791
    .line 792
    :cond_14
    const/4 v2, 0x0

    .line 793
    new-array v0, v2, [B

    .line 794
    .line 795
    return-object v0

    .line 796
    :cond_15
    new-instance v5, Ljava/lang/StringBuilder;

    .line 797
    .line 798
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 799
    .line 800
    .line 801
    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 802
    .line 803
    .line 804
    invoke-virtual {v5, v14, v15}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 805
    .line 806
    .line 807
    invoke-virtual {v5, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 808
    .line 809
    .line 810
    iget-wide v6, v1, Lcom/haima/hmcp/business/DownloadRequest;->mFileSize:J

    .line 811
    .line 812
    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 813
    .line 814
    .line 815
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 816
    .line 817
    .line 818
    move-result-object v3

    .line 819
    new-instance v5, Ljava/lang/StringBuilder;

    .line 820
    .line 821
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 822
    .line 823
    .line 824
    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 825
    .line 826
    .line 827
    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 828
    .line 829
    .line 830
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 831
    .line 832
    .line 833
    move-result-object v5

    .line 834
    invoke-static {v10, v5}, Lcom/haima/hmcp/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 835
    .line 836
    .line 837
    iget-object v5, v1, Lcom/haima/hmcp/business/DownloadRequest;->mListener:Lcom/haima/hmcp/business/DownloadResponseListener;

    .line 838
    .line 839
    if-eqz v5, :cond_17

    .line 840
    .line 841
    const/16 v6, 0x3eb

    .line 842
    .line 843
    invoke-interface {v5, v6, v2, v3}, Lcom/haima/hmcp/business/DownloadResponseListener;->onError(ILjava/lang/String;Ljava/lang/String;)V

    .line 844
    .line 845
    .line 846
    goto :goto_b

    .line 847
    :cond_16
    iget-object v2, v1, Lcom/haima/hmcp/business/DownloadRequest;->mListener:Lcom/haima/hmcp/business/DownloadResponseListener;

    .line 848
    .line 849
    if-eqz v2, :cond_17

    .line 850
    .line 851
    invoke-interface {v2}, Lcom/haima/hmcp/business/DownloadResponseListener;->onFinish()V

    .line 852
    .line 853
    .line 854
    :cond_17
    :goto_b
    throw v0
    :try_end_10
    .catch Ljava/io/IOException; {:try_start_10 .. :try_end_10} :catch_7

    .line 855
    :catch_7
    move-exception v0

    .line 856
    goto :goto_d

    .line 857
    :catch_8
    move-exception v0

    .line 858
    goto :goto_c

    .line 859
    :catch_9
    move-exception v0

    .line 860
    move-object/from16 v16, v9

    .line 861
    .line 862
    :goto_c
    move-object v4, v12

    .line 863
    :goto_d
    new-instance v2, Ljava/lang/StringBuilder;

    .line 864
    .line 865
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 866
    .line 867
    .line 868
    const-string v3, "download response io exception: "

    .line 869
    .line 870
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 871
    .line 872
    .line 873
    invoke-static {v0}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    .line 874
    .line 875
    .line 876
    move-result-object v0

    .line 877
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 878
    .line 879
    .line 880
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 881
    .line 882
    .line 883
    move-result-object v0

    .line 884
    sget-object v2, Lcom/haima/hmcp/business/DownloadRequest;->TAG:Ljava/lang/String;

    .line 885
    .line 886
    new-instance v3, Ljava/lang/StringBuilder;

    .line 887
    .line 888
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 889
    .line 890
    .line 891
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 892
    .line 893
    .line 894
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 895
    .line 896
    .line 897
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 898
    .line 899
    .line 900
    move-result-object v3

    .line 901
    invoke-static {v2, v3}, Lcom/haima/hmcp/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 902
    .line 903
    .line 904
    iget-object v2, v1, Lcom/haima/hmcp/business/DownloadRequest;->mListener:Lcom/haima/hmcp/business/DownloadResponseListener;

    .line 905
    .line 906
    if-eqz v2, :cond_18

    .line 907
    .line 908
    move-object/from16 v3, v16

    .line 909
    .line 910
    const/16 v4, 0x3eb

    .line 911
    .line 912
    invoke-interface {v2, v4, v3, v0}, Lcom/haima/hmcp/business/DownloadResponseListener;->onError(ILjava/lang/String;Ljava/lang/String;)V

    .line 913
    .line 914
    .line 915
    :cond_18
    :goto_e
    const/4 v2, 0x0

    .line 916
    new-array v0, v2, [B

    .line 917
    .line 918
    return-object v0

    .line 919
    :catch_a
    move-exception v0

    .line 920
    move-object v3, v9

    .line 921
    move-object v4, v12

    .line 922
    new-instance v2, Ljava/lang/StringBuilder;

    .line 923
    .line 924
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 925
    .line 926
    .line 927
    const-string v5, "create tmp file exception: "

    .line 928
    .line 929
    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 930
    .line 931
    .line 932
    invoke-static {v0}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    .line 933
    .line 934
    .line 935
    move-result-object v0

    .line 936
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 937
    .line 938
    .line 939
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 940
    .line 941
    .line 942
    move-result-object v0

    .line 943
    sget-object v2, Lcom/haima/hmcp/business/DownloadRequest;->TAG:Ljava/lang/String;

    .line 944
    .line 945
    new-instance v5, Ljava/lang/StringBuilder;

    .line 946
    .line 947
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 948
    .line 949
    .line 950
    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 951
    .line 952
    .line 953
    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 954
    .line 955
    .line 956
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 957
    .line 958
    .line 959
    move-result-object v4

    .line 960
    invoke-static {v2, v4}, Lcom/haima/hmcp/utils/LogUtil;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 961
    .line 962
    .line 963
    iget-object v2, v1, Lcom/haima/hmcp/business/DownloadRequest;->mListener:Lcom/haima/hmcp/business/DownloadResponseListener;

    .line 964
    .line 965
    if-eqz v2, :cond_19

    .line 966
    .line 967
    const/16 v4, 0x3eb

    .line 968
    .line 969
    invoke-interface {v2, v4, v3, v0}, Lcom/haima/hmcp/business/DownloadResponseListener;->onError(ILjava/lang/String;Ljava/lang/String;)V

    .line 970
    .line 971
    .line 972
    :cond_19
    const/4 v2, 0x0

    .line 973
    new-array v0, v2, [B

    .line 974
    .line 975
    return-object v0
.end method

.method public isDownloadRequest()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method protected parseNetworkResponse(Lcom/haima/hmcp/volley/NetworkResponse;)Lcom/haima/hmcp/volley/Response;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/haima/hmcp/volley/NetworkResponse;",
            ")",
            "Lcom/haima/hmcp/volley/Response<",
            "[B>;"
        }
    .end annotation

    .line 1
    :try_start_0
    iget-object v0, p1, Lcom/haima/hmcp/volley/NetworkResponse;->data:[B

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    new-instance v0, Lcom/haima/hmcp/volley/ParseError;

    .line 6
    .line 7
    invoke-direct {v0, p1}, Lcom/haima/hmcp/volley/ParseError;-><init>(Lcom/haima/hmcp/volley/NetworkResponse;)V

    .line 8
    .line 9
    .line 10
    invoke-static {v0}, Lcom/haima/hmcp/volley/Response;->error(Lcom/haima/hmcp/volley/VolleyError;)Lcom/haima/hmcp/volley/Response;

    .line 11
    .line 12
    .line 13
    move-result-object p1

    .line 14
    return-object p1

    .line 15
    :cond_0
    invoke-static {p1}, Lcom/haima/hmcp/volley/toolbox/HttpHeaderParser;->parseCacheHeaders(Lcom/haima/hmcp/volley/NetworkResponse;)Lcom/haima/hmcp/volley/Cache$Entry;

    .line 16
    .line 17
    .line 18
    move-result-object p1

    .line 19
    invoke-static {v0, p1}, Lcom/haima/hmcp/volley/Response;->success(Ljava/lang/Object;Lcom/haima/hmcp/volley/Cache$Entry;)Lcom/haima/hmcp/volley/Response;

    .line 20
    .line 21
    .line 22
    move-result-object p1
    :try_end_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_0

    .line 23
    return-object p1

    .line 24
    :catch_0
    move-exception p1

    .line 25
    new-instance v0, Lcom/haima/hmcp/volley/ParseError;

    .line 26
    .line 27
    invoke-direct {v0, p1}, Lcom/haima/hmcp/volley/ParseError;-><init>(Ljava/lang/Throwable;)V

    .line 28
    .line 29
    .line 30
    invoke-static {v0}, Lcom/haima/hmcp/volley/Response;->error(Lcom/haima/hmcp/volley/VolleyError;)Lcom/haima/hmcp/volley/Response;

    .line 31
    .line 32
    .line 33
    move-result-object p1

    .line 34
    return-object p1
.end method

.method public setConfig(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 1
    if-eqz p1, :cond_0

    .line 2
    .line 3
    iput-object p1, p0, Lcom/haima/hmcp/business/DownloadRequest;->mContentTypeList:Ljava/util/List;

    .line 4
    .line 5
    goto :goto_0

    .line 6
    :cond_0
    new-instance p1, Ljava/util/ArrayList;

    .line 7
    .line 8
    sget-object v0, Lcom/haima/hmcp/business/DownloadRequest;->CONTENT_LIST_DEFAULT:[Ljava/lang/String;

    .line 9
    .line 10
    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    .line 11
    .line 12
    .line 13
    move-result-object v0

    .line 14
    invoke-direct {p1, v0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 15
    .line 16
    .line 17
    iput-object p1, p0, Lcom/haima/hmcp/business/DownloadRequest;->mContentTypeList:Ljava/util/List;

    .line 18
    .line 19
    :goto_0
    return-void
.end method

.method public setListener(Lcom/haima/hmcp/business/DownloadResponseListener;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/haima/hmcp/business/DownloadRequest;->mListener:Lcom/haima/hmcp/business/DownloadResponseListener;

    .line 2
    .line 3
    return-void
.end method
