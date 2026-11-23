.class public Lcom/github/snowdream/android/app/downloader/DownloadException;
.super Ljava/lang/Exception;
.source "SourceFile"


# static fields
.field public static final CONTEXT_NOT_VALID:J = 0x2L

.field public static final DOWNLOAD_TASK_FAILED:J = 0xbL

.field public static final DOWNLOAD_TASK_NOT_VALID:J = 0x1L

.field public static final OPERATION_NOT_VALID:J = 0xaL

.field public static final UNKNOWN:J = 0x0L

.field private static final serialVersionUID:J = -0x34cd24aca0d13a53L


# instance fields
.field private code:J


# direct methods
.method public constructor <init>()V
    .locals 3

    const-wide/16 v0, 0x0

    .line 1
    invoke-static {v0, v1}, Lcom/github/snowdream/android/app/downloader/DownloadException;->generateMessageFromCode(J)Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    .line 2
    iput-wide v0, p0, Lcom/github/snowdream/android/app/downloader/DownloadException;->code:J

    return-void
.end method

.method public constructor <init>(J)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "code"
        }
    .end annotation

    .line 3
    invoke-static {p1, p2}, Lcom/github/snowdream/android/app/downloader/DownloadException;->generateMessageFromCode(J)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    .line 4
    iput-wide p1, p0, Lcom/github/snowdream/android/app/downloader/DownloadException;->code:J

    return-void
.end method

.method public constructor <init>(JLjava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "code",
            "message"
        }
    .end annotation

    .line 7
    invoke-direct {p0, p3}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    .line 8
    iput-wide p1, p0, Lcom/github/snowdream/android/app/downloader/DownloadException;->code:J

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "message"
        }
    .end annotation

    .line 5
    invoke-direct {p0, p1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    const-wide/16 v0, 0x0

    .line 6
    iput-wide v0, p0, Lcom/github/snowdream/android/app/downloader/DownloadException;->code:J

    return-void
.end method

.method private static generateMessageFromCode(J)Ljava/lang/String;
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "code"
        }
    .end annotation

    const-wide/16 v0, 0x1

    cmp-long v2, p0, v0

    if-nez v2, :cond_0

    const-string p0, "The DownloadTask is null or not valid!"

    goto :goto_0

    :cond_0
    if-nez v2, :cond_1

    const-string p0, "The Context is null or not valid!"

    goto :goto_0

    :cond_1
    if-nez v2, :cond_2

    const-string p0, "The operation is not allowed!"

    goto :goto_0

    :cond_2
    if-nez v2, :cond_3

    const-string p0, "The Download Task is failed!"

    goto :goto_0

    :cond_3
    if-nez v2, :cond_4

    const-string p0, "Unknown Error!"

    goto :goto_0

    :cond_4
    const-string p0, ""

    :goto_0
    return-object p0
.end method


# virtual methods
.method public getCode()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/github/snowdream/android/app/downloader/DownloadException;->code:J

    .line 2
    .line 3
    return-wide v0
.end method

.method public setCode(J)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "code"
        }
    .end annotation

    .line 1
    iput-wide p1, p0, Lcom/github/snowdream/android/app/downloader/DownloadException;->code:J

    .line 2
    .line 3
    return-void
.end method
