.class public Lcom/haima/hmcp/cloud/AckOrderBean;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final FILE_BID_ERROR:I = 0x2717

.field private static final FILE_CID_ERROR:I = 0x2718

.field private static final FILE_COUNT_LIMIT:I = 0x2711

.field private static final FILE_DOWNLOAD_CANCEL:I = 0x2

.field private static final FILE_DOWNLOAD_FINISH:I = 0x1

.field private static final FILE_DOWNLOAD_OFF:I = -0x1

.field private static final FILE_DOWNLOAD_READY:I = 0x0

.field private static final FILE_MD5_ERROR:I = 0x2714

.field private static final FILE_SIZE_ERROR:I = 0x2715

.field private static final FILE_SIZE_LIMIT:I = 0x2712

.field private static final FILE_TYPE_ERROR:I = 0x2716

.field private static final FILE_TYPE_NO_SUPPORT:I = 0x2713

.field private static final FILE_UPLOAD_OFF:I = -0x1

.field private static final FILE_UPLOAD_READY:I = 0x0

.field private static final FILE_UPLOAD_SUCCESS:I = 0x1

.field public static final TYPE_NAME_DOWNLOAD:Ljava/lang/String; = "download_image"

.field public static final TYPE_NAME_IGNORE:Ljava/lang/String; = "ignore"

.field public static final TYPE_NAME_UPLOAD:Ljava/lang/String; = "upload_image"


# instance fields
.field public code:Ljava/lang/String;

.field public fileName:Ljava/lang/String;

.field public fileSize:I

.field public md5sum:Ljava/lang/String;

.field public message:Ljava/lang/String;

.field public mimeType:Ljava/lang/String;

.field public type:Ljava/lang/String;

.field public version:I


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

.method private getCode()I
    .locals 1

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/haima/hmcp/cloud/AckOrderBean;->code:Ljava/lang/String;

    .line 2
    .line 3
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 4
    .line 5
    .line 6
    move-result v0
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 7
    goto :goto_0

    .line 8
    :catch_0
    move-exception v0

    .line 9
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 10
    .line 11
    .line 12
    const/4 v0, -0x1

    .line 13
    :goto_0
    return v0
.end method


# virtual methods
.method isDownloadCancel()Z
    .locals 2

    .line 1
    invoke-direct {p0}, Lcom/haima/hmcp/cloud/AckOrderBean;->getCode()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    const/4 v1, 0x2

    .line 6
    if-ne v0, v1, :cond_0

    .line 7
    .line 8
    const/4 v0, 0x1

    .line 9
    goto :goto_0

    .line 10
    :cond_0
    const/4 v0, 0x0

    .line 11
    :goto_0
    return v0
.end method

.method isDownloadError()Z
    .locals 3

    .line 1
    invoke-direct {p0}, Lcom/haima/hmcp/cloud/AckOrderBean;->getCode()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    const/4 v1, 0x1

    .line 8
    if-eq v0, v1, :cond_0

    .line 9
    .line 10
    const/4 v2, 0x2

    .line 11
    if-eq v0, v2, :cond_0

    .line 12
    .line 13
    const/4 v2, -0x1

    .line 14
    if-eq v0, v2, :cond_0

    .line 15
    .line 16
    goto :goto_0

    .line 17
    :cond_0
    const/4 v1, 0x0

    .line 18
    :goto_0
    return v1
.end method

.method isDownloadFinish()Z
    .locals 2

    .line 1
    invoke-direct {p0}, Lcom/haima/hmcp/cloud/AckOrderBean;->getCode()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    const/4 v1, 0x1

    .line 6
    if-ne v0, v1, :cond_0

    .line 7
    .line 8
    goto :goto_0

    .line 9
    :cond_0
    const/4 v1, 0x0

    .line 10
    :goto_0
    return v1
.end method

.method isDownloadReady()Z
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/haima/hmcp/cloud/AckOrderBean;->getCode()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-nez v0, :cond_0

    .line 6
    .line 7
    const/4 v0, 0x1

    .line 8
    goto :goto_0

    .line 9
    :cond_0
    const/4 v0, 0x0

    .line 10
    :goto_0
    return v0
.end method

.method isUnable()Z
    .locals 2

    .line 1
    invoke-direct {p0}, Lcom/haima/hmcp/cloud/AckOrderBean;->getCode()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    const/16 v1, 0x2717

    .line 6
    .line 7
    if-eq v0, v1, :cond_1

    .line 8
    .line 9
    const/16 v1, 0x2718

    .line 10
    .line 11
    if-eq v0, v1, :cond_1

    .line 12
    .line 13
    const/4 v1, -0x1

    .line 14
    if-ne v0, v1, :cond_0

    .line 15
    .line 16
    goto :goto_0

    .line 17
    :cond_0
    const/4 v0, 0x0

    .line 18
    goto :goto_1

    .line 19
    :cond_1
    :goto_0
    const/4 v0, 0x1

    .line 20
    :goto_1
    return v0
.end method

.method isUploadError()Z
    .locals 3

    .line 1
    invoke-direct {p0}, Lcom/haima/hmcp/cloud/AckOrderBean;->getCode()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    const/4 v1, 0x1

    .line 8
    if-eq v0, v1, :cond_0

    .line 9
    .line 10
    const/4 v2, -0x1

    .line 11
    if-eq v0, v2, :cond_0

    .line 12
    .line 13
    goto :goto_0

    .line 14
    :cond_0
    const/4 v1, 0x0

    .line 15
    :goto_0
    return v1
.end method

.method isUploadReady()Z
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/haima/hmcp/cloud/AckOrderBean;->getCode()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-nez v0, :cond_0

    .line 6
    .line 7
    const/4 v0, 0x1

    .line 8
    goto :goto_0

    .line 9
    :cond_0
    const/4 v0, 0x0

    .line 10
    :goto_0
    return v0
.end method

.method isUploadSuccess()Z
    .locals 2

    .line 1
    invoke-direct {p0}, Lcom/haima/hmcp/cloud/AckOrderBean;->getCode()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    const/4 v1, 0x1

    .line 6
    if-ne v0, v1, :cond_0

    .line 7
    .line 8
    goto :goto_0

    .line 9
    :cond_0
    const/4 v1, 0x0

    .line 10
    :goto_0
    return v1
.end method
