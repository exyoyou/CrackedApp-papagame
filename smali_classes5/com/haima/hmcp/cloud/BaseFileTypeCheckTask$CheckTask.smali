.class Lcom/haima/hmcp/cloud/BaseFileTypeCheckTask$CheckTask;
.super Landroid/os/AsyncTask;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/haima/hmcp/cloud/BaseFileTypeCheckTask;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "CheckTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask<",
        "Ljava/util/List<",
        "Lcom/haima/hmcp/cloud/InternalCloudFile;",
        ">;",
        "Ljava/lang/Integer;",
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# instance fields
.field private passFiles:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/haima/hmcp/cloud/InternalCloudFile;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/haima/hmcp/cloud/BaseFileTypeCheckTask;

.field private toUploadFiles:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/haima/hmcp/cloud/InternalCloudFile;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>(Lcom/haima/hmcp/cloud/BaseFileTypeCheckTask;)V
    .locals 0

    .line 2
    iput-object p1, p0, Lcom/haima/hmcp/cloud/BaseFileTypeCheckTask$CheckTask;->this$0:Lcom/haima/hmcp/cloud/BaseFileTypeCheckTask;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 3
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/haima/hmcp/cloud/BaseFileTypeCheckTask$CheckTask;->toUploadFiles:Ljava/util/ArrayList;

    .line 4
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/haima/hmcp/cloud/BaseFileTypeCheckTask$CheckTask;->passFiles:Ljava/util/ArrayList;

    return-void
.end method

.method synthetic constructor <init>(Lcom/haima/hmcp/cloud/BaseFileTypeCheckTask;Lcom/haima/hmcp/cloud/BaseFileTypeCheckTask$1;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/haima/hmcp/cloud/BaseFileTypeCheckTask$CheckTask;-><init>(Lcom/haima/hmcp/cloud/BaseFileTypeCheckTask;)V

    return-void
.end method

.method private bytesToHexString([B)Ljava/lang/String;
    .locals 6

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 4
    .line 5
    .line 6
    if-eqz p1, :cond_3

    .line 7
    .line 8
    array-length v1, p1

    .line 9
    if-gtz v1, :cond_0

    .line 10
    .line 11
    goto :goto_1

    .line 12
    :cond_0
    const/4 v1, 0x0

    .line 13
    const/4 v2, 0x0

    .line 14
    :goto_0
    array-length v3, p1

    .line 15
    if-ge v2, v3, :cond_2

    .line 16
    .line 17
    aget-byte v3, p1, v2

    .line 18
    .line 19
    and-int/lit16 v3, v3, 0xff

    .line 20
    .line 21
    invoke-static {v3}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    .line 22
    .line 23
    .line 24
    move-result-object v3

    .line 25
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    .line 26
    .line 27
    .line 28
    move-result v4

    .line 29
    const/4 v5, 0x2

    .line 30
    if-ge v4, v5, :cond_1

    .line 31
    .line 32
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 33
    .line 34
    .line 35
    :cond_1
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 36
    .line 37
    .line 38
    add-int/lit8 v2, v2, 0x1

    .line 39
    .line 40
    goto :goto_0

    .line 41
    :cond_2
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 42
    .line 43
    .line 44
    move-result-object p1

    .line 45
    return-object p1

    .line 46
    :cond_3
    :goto_1
    const/4 p1, 0x0

    .line 47
    return-object p1
.end method

.method private checkFileExists(Ljava/io/File;)Z
    .locals 0

    .line 1
    if-eqz p1, :cond_0

    .line 2
    .line 3
    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    .line 4
    .line 5
    .line 6
    move-result p1

    .line 7
    if-eqz p1, :cond_0

    .line 8
    .line 9
    const/4 p1, 0x1

    .line 10
    goto :goto_0

    .line 11
    :cond_0
    const/4 p1, 0x0

    .line 12
    :goto_0
    return p1
.end method

.method private checkFileSize(Ljava/io/File;)Z
    .locals 5

    .line 1
    const/4 v0, 0x0

    .line 2
    if-nez p1, :cond_0

    .line 3
    .line 4
    return v0

    .line 5
    :cond_0
    invoke-virtual {p1}, Ljava/io/File;->length()J

    .line 6
    .line 7
    .line 8
    move-result-wide v1

    .line 9
    const-wide/16 v3, 0x400

    .line 10
    .line 11
    cmp-long p1, v1, v3

    .line 12
    .line 13
    if-ltz p1, :cond_1

    .line 14
    .line 15
    const-wide/32 v3, 0xa00000

    .line 16
    .line 17
    .line 18
    cmp-long p1, v1, v3

    .line 19
    .line 20
    if-gtz p1, :cond_1

    .line 21
    .line 22
    const/4 v0, 0x1

    .line 23
    :cond_1
    return v0
.end method

.method private getErrorMessage(I)Ljava/lang/String;
    .locals 1

    .line 1
    const/4 v0, 0x1

    .line 2
    if-eq p1, v0, :cond_4

    .line 3
    .line 4
    const/4 v0, 0x3

    .line 5
    if-eq p1, v0, :cond_3

    .line 6
    .line 7
    const/4 v0, 0x4

    .line 8
    if-eq p1, v0, :cond_2

    .line 9
    .line 10
    const/4 v0, 0x5

    .line 11
    if-eq p1, v0, :cond_1

    .line 12
    .line 13
    const/4 v0, 0x6

    .line 14
    if-eq p1, v0, :cond_0

    .line 15
    .line 16
    const/4 v0, 0x7

    .line 17
    if-eq p1, v0, :cond_0

    .line 18
    .line 19
    sget p1, Lcom/haima/hmcp/R$string;->hmcp_upload_download_unknown_error:I

    .line 20
    .line 21
    invoke-static {p1}, Lcom/haima/hmcp/business/ResourceManager;->getString(I)Ljava/lang/String;

    .line 22
    .line 23
    .line 24
    move-result-object p1

    .line 25
    return-object p1

    .line 26
    :cond_0
    sget p1, Lcom/haima/hmcp/R$string;->hmcp_upload_download_error_system_failure:I

    .line 27
    .line 28
    invoke-static {p1}, Lcom/haima/hmcp/business/ResourceManager;->getString(I)Ljava/lang/String;

    .line 29
    .line 30
    .line 31
    move-result-object p1

    .line 32
    return-object p1

    .line 33
    :cond_1
    sget p1, Lcom/haima/hmcp/R$string;->hmcp_upload_download_error_file_size_exceeds_the_limit:I

    .line 34
    .line 35
    invoke-static {p1}, Lcom/haima/hmcp/business/ResourceManager;->getString(I)Ljava/lang/String;

    .line 36
    .line 37
    .line 38
    move-result-object p1

    .line 39
    return-object p1

    .line 40
    :cond_2
    sget p1, Lcom/haima/hmcp/R$string;->hmcp_upload_download_error_file_type_not_support:I

    .line 41
    .line 42
    invoke-static {p1}, Lcom/haima/hmcp/business/ResourceManager;->getString(I)Ljava/lang/String;

    .line 43
    .line 44
    .line 45
    move-result-object p1

    .line 46
    return-object p1

    .line 47
    :cond_3
    sget p1, Lcom/haima/hmcp/R$string;->hmcp_upload_download_error_file_not_exists:I

    .line 48
    .line 49
    invoke-static {p1}, Lcom/haima/hmcp/business/ResourceManager;->getString(I)Ljava/lang/String;

    .line 50
    .line 51
    .line 52
    move-result-object p1

    .line 53
    return-object p1

    .line 54
    :cond_4
    sget p1, Lcom/haima/hmcp/R$string;->hmcp_upload_download_error_param_null:I

    .line 55
    .line 56
    invoke-static {p1}, Lcom/haima/hmcp/business/ResourceManager;->getString(I)Ljava/lang/String;

    .line 57
    .line 58
    .line 59
    move-result-object p1

    .line 60
    return-object p1
.end method

.method private isEmptyPath(Lcom/haima/hmcp/beans/CloudFile;)Z
    .locals 1

    .line 1
    invoke-virtual {p1}, Lcom/haima/hmcp/beans/CloudFile;->getName()Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    if-nez v0, :cond_1

    .line 10
    .line 11
    invoke-virtual {p1}, Lcom/haima/hmcp/beans/CloudFile;->getPath()Ljava/lang/String;

    .line 12
    .line 13
    .line 14
    move-result-object p1

    .line 15
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 16
    .line 17
    .line 18
    move-result p1

    .line 19
    if-eqz p1, :cond_0

    .line 20
    .line 21
    goto :goto_0

    .line 22
    :cond_0
    const/4 p1, 0x0

    .line 23
    goto :goto_1

    .line 24
    :cond_1
    :goto_0
    const/4 p1, 0x1

    .line 25
    :goto_1
    return p1
.end method

.method private isSupportType(Lcom/haima/hmcp/beans/CloudFile;)Z
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/haima/hmcp/cloud/BaseFileTypeCheckTask$CheckTask;->this$0:Lcom/haima/hmcp/cloud/BaseFileTypeCheckTask;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/haima/hmcp/cloud/BaseFileTypeCheckTask;->getFileSuffixMap()Landroidx/collection/ArrayMap;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    if-eqz v0, :cond_2

    .line 8
    .line 9
    invoke-virtual {v0}, Landroidx/collection/SimpleArrayMap;->size()I

    .line 10
    .line 11
    .line 12
    move-result v1

    .line 13
    if-nez v1, :cond_0

    .line 14
    .line 15
    goto :goto_0

    .line 16
    :cond_0
    invoke-virtual {p1}, Lcom/haima/hmcp/beans/CloudFile;->getName()Ljava/lang/String;

    .line 17
    .line 18
    .line 19
    move-result-object v1

    .line 20
    const-string v2, "."

    .line 21
    .line 22
    invoke-virtual {v1, v2}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    .line 23
    .line 24
    .line 25
    move-result v1

    .line 26
    const/4 v2, -0x1

    .line 27
    const/4 v3, 0x1

    .line 28
    if-ne v1, v2, :cond_1

    .line 29
    .line 30
    return v3

    .line 31
    :cond_1
    invoke-virtual {p1}, Lcom/haima/hmcp/beans/CloudFile;->getName()Ljava/lang/String;

    .line 32
    .line 33
    .line 34
    move-result-object p1

    .line 35
    add-int/2addr v1, v3

    .line 36
    invoke-virtual {p1, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    .line 37
    .line 38
    .line 39
    move-result-object p1

    .line 40
    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    .line 41
    .line 42
    .line 43
    move-result-object p1

    .line 44
    invoke-virtual {v0, p1}, Landroidx/collection/SimpleArrayMap;->containsValue(Ljava/lang/Object;)Z

    .line 45
    .line 46
    .line 47
    move-result p1

    .line 48
    return p1

    .line 49
    :cond_2
    :goto_0
    const/4 p1, 0x0

    .line 50
    return p1
.end method

.method private isSupportTypeFromFileHeader(Ljava/lang/String;)Z
    .locals 2

    .line 1
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    const/4 p1, 0x0

    .line 8
    return p1

    .line 9
    :cond_0
    iget-object v0, p0, Lcom/haima/hmcp/cloud/BaseFileTypeCheckTask$CheckTask;->this$0:Lcom/haima/hmcp/cloud/BaseFileTypeCheckTask;

    .line 10
    .line 11
    invoke-virtual {v0}, Lcom/haima/hmcp/cloud/BaseFileTypeCheckTask;->getFileHeaderTypeMap()Landroidx/collection/ArrayMap;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    if-eqz v0, :cond_2

    .line 16
    .line 17
    invoke-virtual {v0}, Landroidx/collection/SimpleArrayMap;->size()I

    .line 18
    .line 19
    .line 20
    move-result v1

    .line 21
    if-nez v1, :cond_1

    .line 22
    .line 23
    goto :goto_0

    .line 24
    :cond_1
    invoke-virtual {v0, p1}, Landroidx/collection/SimpleArrayMap;->containsValue(Ljava/lang/Object;)Z

    .line 25
    .line 26
    .line 27
    move-result p1

    .line 28
    return p1

    .line 29
    :cond_2
    :goto_0
    const/4 p1, 0x1

    .line 30
    return p1
.end method


# virtual methods
.method protected varargs doInBackground([Ljava/util/List;)Ljava/lang/Boolean;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/util/List<",
            "Lcom/haima/hmcp/cloud/InternalCloudFile;",
            ">;)",
            "Ljava/lang/Boolean;"
        }
    .end annotation

    .line 2
    iget-object v0, p0, Lcom/haima/hmcp/cloud/BaseFileTypeCheckTask$CheckTask;->toUploadFiles:Ljava/util/ArrayList;

    const/4 v1, 0x0

    aget-object p1, p1, v1

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 3
    iget-object p1, p0, Lcom/haima/hmcp/cloud/BaseFileTypeCheckTask$CheckTask;->toUploadFiles:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    const/4 v0, 0x0

    :goto_0
    if-ge v0, p1, :cond_9

    .line 4
    invoke-virtual {p0}, Landroid/os/AsyncTask;->isCancelled()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 5
    invoke-static {}, Lcom/haima/hmcp/cloud/BaseFileTypeCheckTask;->access$100()Ljava/lang/String;

    move-result-object p1

    const-string v0, "cloud-file: check task is stop running because is canceled."

    invoke-static {p1, v0}, Lcom/haima/hmcp/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 6
    sget-object p1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    return-object p1

    .line 7
    :cond_0
    iget-object v2, p0, Lcom/haima/hmcp/cloud/BaseFileTypeCheckTask$CheckTask;->toUploadFiles:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/haima/hmcp/cloud/InternalCloudFile;

    const/4 v3, 0x2

    const/4 v4, 0x1

    if-nez v2, :cond_1

    .line 8
    invoke-static {}, Lcom/haima/hmcp/cloud/BaseFileTypeCheckTask;->access$100()Ljava/lang/String;

    move-result-object v2

    const-string v5, "cloud-file: : file is null"

    invoke-static {v2, v5}, Lcom/haima/hmcp/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    new-array v2, v3, [Ljava/lang/Integer;

    .line 9
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v1

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v4

    invoke-virtual {p0, v2}, Landroid/os/AsyncTask;->publishProgress([Ljava/lang/Object;)V

    goto/16 :goto_2

    .line 10
    :cond_1
    invoke-direct {p0, v2}, Lcom/haima/hmcp/cloud/BaseFileTypeCheckTask$CheckTask;->isEmptyPath(Lcom/haima/hmcp/beans/CloudFile;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 11
    invoke-static {}, Lcom/haima/hmcp/cloud/BaseFileTypeCheckTask;->access$100()Ljava/lang/String;

    move-result-object v2

    const-string v5, "cloud-file: : file name or path is null"

    invoke-static {v2, v5}, Lcom/haima/hmcp/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    new-array v2, v3, [Ljava/lang/Integer;

    .line 12
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v1

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v4

    invoke-virtual {p0, v2}, Landroid/os/AsyncTask;->publishProgress([Ljava/lang/Object;)V

    goto/16 :goto_2

    .line 13
    :cond_2
    invoke-direct {p0, v2}, Lcom/haima/hmcp/cloud/BaseFileTypeCheckTask$CheckTask;->isSupportType(Lcom/haima/hmcp/beans/CloudFile;)Z

    move-result v5

    const/4 v6, 0x4

    if-nez v5, :cond_3

    .line 14
    invoke-static {}, Lcom/haima/hmcp/cloud/BaseFileTypeCheckTask;->access$100()Ljava/lang/String;

    move-result-object v2

    const-string v5, "cloud-file: : file suffix type is not support"

    invoke-static {v2, v5}, Lcom/haima/hmcp/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    new-array v2, v3, [Ljava/lang/Integer;

    .line 15
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v1

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v4

    invoke-virtual {p0, v2}, Landroid/os/AsyncTask;->publishProgress([Ljava/lang/Object;)V

    goto/16 :goto_2

    .line 16
    :cond_3
    new-instance v5, Ljava/io/File;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2}, Lcom/haima/hmcp/beans/CloudFile;->getPath()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Lcom/haima/hmcp/beans/CloudFile;->getName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v5, v7}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 17
    invoke-direct {p0, v5}, Lcom/haima/hmcp/cloud/BaseFileTypeCheckTask$CheckTask;->checkFileExists(Ljava/io/File;)Z

    move-result v7

    if-nez v7, :cond_4

    .line 18
    invoke-static {}, Lcom/haima/hmcp/cloud/BaseFileTypeCheckTask;->access$100()Ljava/lang/String;

    move-result-object v2

    const-string v5, "cloud-file: : file is not exists"

    invoke-static {v2, v5}, Lcom/haima/hmcp/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    new-array v2, v3, [Ljava/lang/Integer;

    .line 19
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v1

    const/4 v3, 0x3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v4

    invoke-virtual {p0, v2}, Landroid/os/AsyncTask;->publishProgress([Ljava/lang/Object;)V

    goto/16 :goto_2

    .line 20
    :cond_4
    invoke-direct {p0, v5}, Lcom/haima/hmcp/cloud/BaseFileTypeCheckTask$CheckTask;->checkFileSize(Ljava/io/File;)Z

    move-result v7

    if-nez v7, :cond_5

    .line 21
    invoke-static {}, Lcom/haima/hmcp/cloud/BaseFileTypeCheckTask;->access$100()Ljava/lang/String;

    move-result-object v2

    const-string v5, "cloud-file: : size check fail"

    invoke-static {v2, v5}, Lcom/haima/hmcp/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    new-array v2, v3, [Ljava/lang/Integer;

    .line 22
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v1

    const/4 v3, 0x5

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v4

    invoke-virtual {p0, v2}, Landroid/os/AsyncTask;->publishProgress([Ljava/lang/Object;)V

    goto/16 :goto_2

    .line 23
    :cond_5
    invoke-virtual {v5}, Ljava/io/File;->length()J

    move-result-wide v7

    iput-wide v7, v2, Lcom/haima/hmcp/cloud/InternalCloudFile;->fileSize:J

    .line 24
    new-instance v7, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v7}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 25
    iput-boolean v4, v7, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 26
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2}, Lcom/haima/hmcp/beans/CloudFile;->getPath()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Lcom/haima/hmcp/beans/CloudFile;->getName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8, v7}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    .line 27
    iget-object v7, v7, Landroid/graphics/BitmapFactory$Options;->outMimeType:Ljava/lang/String;

    .line 28
    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-nez v8, :cond_8

    invoke-virtual {v7}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v8

    invoke-direct {p0, v8}, Lcom/haima/hmcp/cloud/BaseFileTypeCheckTask$CheckTask;->isSupportTypeFromFileHeader(Ljava/lang/String;)Z

    move-result v8

    if-nez v8, :cond_6

    goto :goto_1

    .line 29
    :cond_6
    iput-object v7, v2, Lcom/haima/hmcp/cloud/InternalCloudFile;->type:Ljava/lang/String;

    .line 30
    invoke-static {v5}, Lcom/haima/hmcp/utils/FileUtil;->getFileMd5(Ljava/io/File;)Ljava/lang/String;

    move-result-object v5

    .line 31
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_7

    new-array v2, v3, [Ljava/lang/Integer;

    .line 32
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v1

    const/4 v3, 0x6

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v4

    invoke-virtual {p0, v2}, Landroid/os/AsyncTask;->publishProgress([Ljava/lang/Object;)V

    goto :goto_2

    .line 33
    :cond_7
    iput-object v5, v2, Lcom/haima/hmcp/cloud/InternalCloudFile;->md5:Ljava/lang/String;

    .line 34
    iget-object v3, p0, Lcom/haima/hmcp/cloud/BaseFileTypeCheckTask$CheckTask;->passFiles:Ljava/util/ArrayList;

    invoke-virtual {v2}, Lcom/haima/hmcp/cloud/InternalCloudFile;->copy()Lcom/haima/hmcp/cloud/InternalCloudFile;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 35
    :cond_8
    :goto_1
    invoke-static {}, Lcom/haima/hmcp/cloud/BaseFileTypeCheckTask;->access$100()Ljava/lang/String;

    move-result-object v2

    const-string v5, "cloud-file: : file header type is not support"

    invoke-static {v2, v5}, Lcom/haima/hmcp/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    new-array v2, v3, [Ljava/lang/Integer;

    .line 36
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v1

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v4

    invoke-virtual {p0, v2}, Landroid/os/AsyncTask;->publishProgress([Ljava/lang/Object;)V

    :goto_2
    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_0

    .line 37
    :cond_9
    sget-object p1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    return-object p1
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    check-cast p1, [Ljava/util/List;

    invoke-virtual {p0, p1}, Lcom/haima/hmcp/cloud/BaseFileTypeCheckTask$CheckTask;->doInBackground([Ljava/util/List;)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1
.end method

.method protected onPostExecute(Ljava/lang/Boolean;)V
    .locals 1

    .line 2
    iget-object p1, p0, Lcom/haima/hmcp/cloud/BaseFileTypeCheckTask$CheckTask;->this$0:Lcom/haima/hmcp/cloud/BaseFileTypeCheckTask;

    invoke-static {p1}, Lcom/haima/hmcp/cloud/BaseFileTypeCheckTask;->access$200(Lcom/haima/hmcp/cloud/BaseFileTypeCheckTask;)Lcom/haima/hmcp/cloud/IWorkListener;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 3
    iget-object p1, p0, Lcom/haima/hmcp/cloud/BaseFileTypeCheckTask$CheckTask;->this$0:Lcom/haima/hmcp/cloud/BaseFileTypeCheckTask;

    invoke-static {p1}, Lcom/haima/hmcp/cloud/BaseFileTypeCheckTask;->access$200(Lcom/haima/hmcp/cloud/BaseFileTypeCheckTask;)Lcom/haima/hmcp/cloud/IWorkListener;

    move-result-object p1

    iget-object v0, p0, Lcom/haima/hmcp/cloud/BaseFileTypeCheckTask$CheckTask;->passFiles:Ljava/util/ArrayList;

    invoke-interface {p1, v0}, Lcom/haima/hmcp/cloud/IWorkListener;->onFinish(Ljava/util/ArrayList;)V

    :cond_0
    return-void
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .line 1
    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p0, p1}, Lcom/haima/hmcp/cloud/BaseFileTypeCheckTask$CheckTask;->onPostExecute(Ljava/lang/Boolean;)V

    return-void
.end method

.method protected varargs onProgressUpdate([Ljava/lang/Integer;)V
    .locals 3

    .line 2
    iget-object v0, p0, Lcom/haima/hmcp/cloud/BaseFileTypeCheckTask$CheckTask;->this$0:Lcom/haima/hmcp/cloud/BaseFileTypeCheckTask;

    invoke-static {v0}, Lcom/haima/hmcp/cloud/BaseFileTypeCheckTask;->access$200(Lcom/haima/hmcp/cloud/BaseFileTypeCheckTask;)Lcom/haima/hmcp/cloud/IWorkListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 3
    new-instance v0, Lcom/haima/hmcp/cloud/InternalCloudFile;

    iget-object v1, p0, Lcom/haima/hmcp/cloud/BaseFileTypeCheckTask$CheckTask;->toUploadFiles:Ljava/util/ArrayList;

    const/4 v2, 0x0

    aget-object v2, p1, v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/haima/hmcp/beans/CloudFile;

    invoke-direct {v0, v1}, Lcom/haima/hmcp/cloud/InternalCloudFile;-><init>(Lcom/haima/hmcp/beans/CloudFile;)V

    .line 4
    iget-object v1, p0, Lcom/haima/hmcp/cloud/BaseFileTypeCheckTask$CheckTask;->this$0:Lcom/haima/hmcp/cloud/BaseFileTypeCheckTask;

    invoke-static {v1}, Lcom/haima/hmcp/cloud/BaseFileTypeCheckTask;->access$200(Lcom/haima/hmcp/cloud/BaseFileTypeCheckTask;)Lcom/haima/hmcp/cloud/IWorkListener;

    move-result-object v1

    const/4 v2, 0x1

    aget-object p1, p1, v2

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-direct {p0, p1}, Lcom/haima/hmcp/cloud/BaseFileTypeCheckTask$CheckTask;->getErrorMessage(I)Ljava/lang/String;

    move-result-object p1

    invoke-interface {v1, v0, p1}, Lcom/haima/hmcp/cloud/IWorkListener;->onError(Lcom/haima/hmcp/cloud/InternalCloudFile;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method protected bridge synthetic onProgressUpdate([Ljava/lang/Object;)V
    .locals 0

    .line 1
    check-cast p1, [Ljava/lang/Integer;

    invoke-virtual {p0, p1}, Lcom/haima/hmcp/cloud/BaseFileTypeCheckTask$CheckTask;->onProgressUpdate([Ljava/lang/Integer;)V

    return-void
.end method
