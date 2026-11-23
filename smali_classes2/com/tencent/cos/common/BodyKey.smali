.class public final Lcom/tencent/cos/common/BodyKey;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static key:Lcom/tencent/cos/common/BodyKey;


# instance fields
.field public final AUTHORITY:Ljava/lang/String;

.field public final BIZ_ATTR:Ljava/lang/String;

.field public final CONTEXT:Ljava/lang/String;

.field public final CUSTOM_HEADERS:Ljava/lang/String;

.field public final DEST_FIELD:Ljava/lang/String;

.field public final FILE_CONTENT:Ljava/lang/String;

.field public final FILE_SIZE:Ljava/lang/String;

.field public final FLAG:Ljava/lang/String;

.field public final FORBID:Ljava/lang/String;

.field public final INSERT_ONLY:Ljava/lang/String;

.field public final NUM:Ljava/lang/String;

.field public final OFFSET:Ljava/lang/String;

.field public final OP:Ljava/lang/String;

.field public final SESSION:Ljava/lang/String;

.field public final SHA:Ljava/lang/String;

.field public final SLICE_SIZE:Ljava/lang/String;

.field public final TO_OVER_WRITE:Ljava/lang/String;

.field public final UPLOAD_PARTS:Ljava/lang/String;

.field public final uploadParts:Lcom/tencent/cos/common/UploadParts;


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    const-string v0, "op"

    .line 5
    .line 6
    iput-object v0, p0, Lcom/tencent/cos/common/BodyKey;->OP:Ljava/lang/String;

    .line 7
    .line 8
    const-string v0, "biz_attr"

    .line 9
    .line 10
    iput-object v0, p0, Lcom/tencent/cos/common/BodyKey;->BIZ_ATTR:Ljava/lang/String;

    .line 11
    .line 12
    const-string v0, "flag"

    .line 13
    .line 14
    iput-object v0, p0, Lcom/tencent/cos/common/BodyKey;->FLAG:Ljava/lang/String;

    .line 15
    .line 16
    const-string v0, "authority"

    .line 17
    .line 18
    iput-object v0, p0, Lcom/tencent/cos/common/BodyKey;->AUTHORITY:Ljava/lang/String;

    .line 19
    .line 20
    const-string v0, "custom_headers"

    .line 21
    .line 22
    iput-object v0, p0, Lcom/tencent/cos/common/BodyKey;->CUSTOM_HEADERS:Ljava/lang/String;

    .line 23
    .line 24
    const-string v0, "insertOnly"

    .line 25
    .line 26
    iput-object v0, p0, Lcom/tencent/cos/common/BodyKey;->INSERT_ONLY:Ljava/lang/String;

    .line 27
    .line 28
    const-string v0, "forbid"

    .line 29
    .line 30
    iput-object v0, p0, Lcom/tencent/cos/common/BodyKey;->FORBID:Ljava/lang/String;

    .line 31
    .line 32
    const-string v0, "dest_fileid"

    .line 33
    .line 34
    iput-object v0, p0, Lcom/tencent/cos/common/BodyKey;->DEST_FIELD:Ljava/lang/String;

    .line 35
    .line 36
    const-string v0, "to_over_write"

    .line 37
    .line 38
    iput-object v0, p0, Lcom/tencent/cos/common/BodyKey;->TO_OVER_WRITE:Ljava/lang/String;

    .line 39
    .line 40
    const-string v0, "num"

    .line 41
    .line 42
    iput-object v0, p0, Lcom/tencent/cos/common/BodyKey;->NUM:Ljava/lang/String;

    .line 43
    .line 44
    const-string v0, "context"

    .line 45
    .line 46
    iput-object v0, p0, Lcom/tencent/cos/common/BodyKey;->CONTEXT:Ljava/lang/String;

    .line 47
    .line 48
    const-string v0, "sha"

    .line 49
    .line 50
    iput-object v0, p0, Lcom/tencent/cos/common/BodyKey;->SHA:Ljava/lang/String;

    .line 51
    .line 52
    const-string v0, "filecontent"

    .line 53
    .line 54
    iput-object v0, p0, Lcom/tencent/cos/common/BodyKey;->FILE_CONTENT:Ljava/lang/String;

    .line 55
    .line 56
    const-string v0, "filesize"

    .line 57
    .line 58
    iput-object v0, p0, Lcom/tencent/cos/common/BodyKey;->FILE_SIZE:Ljava/lang/String;

    .line 59
    .line 60
    const-string v0, "slice_size"

    .line 61
    .line 62
    iput-object v0, p0, Lcom/tencent/cos/common/BodyKey;->SLICE_SIZE:Ljava/lang/String;

    .line 63
    .line 64
    const-string v0, "session"

    .line 65
    .line 66
    iput-object v0, p0, Lcom/tencent/cos/common/BodyKey;->SESSION:Ljava/lang/String;

    .line 67
    .line 68
    const-string v0, "offset"

    .line 69
    .line 70
    iput-object v0, p0, Lcom/tencent/cos/common/BodyKey;->OFFSET:Ljava/lang/String;

    .line 71
    .line 72
    const-string v0, "uploadparts"

    .line 73
    .line 74
    iput-object v0, p0, Lcom/tencent/cos/common/BodyKey;->UPLOAD_PARTS:Ljava/lang/String;

    .line 75
    .line 76
    invoke-static {}, Lcom/tencent/cos/common/UploadParts;->getInstance()Lcom/tencent/cos/common/UploadParts;

    .line 77
    .line 78
    .line 79
    move-result-object v0

    .line 80
    iput-object v0, p0, Lcom/tencent/cos/common/BodyKey;->uploadParts:Lcom/tencent/cos/common/UploadParts;

    .line 81
    .line 82
    return-void
.end method

.method public static declared-synchronized getInstance()Lcom/tencent/cos/common/BodyKey;
    .locals 2

    .line 1
    const-class v0, Lcom/tencent/cos/common/BodyKey;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    sget-object v1, Lcom/tencent/cos/common/BodyKey;->key:Lcom/tencent/cos/common/BodyKey;

    .line 5
    .line 6
    if-nez v1, :cond_0

    .line 7
    .line 8
    new-instance v1, Lcom/tencent/cos/common/BodyKey;

    .line 9
    .line 10
    invoke-direct {v1}, Lcom/tencent/cos/common/BodyKey;-><init>()V

    .line 11
    .line 12
    .line 13
    sput-object v1, Lcom/tencent/cos/common/BodyKey;->key:Lcom/tencent/cos/common/BodyKey;

    .line 14
    .line 15
    :cond_0
    sget-object v1, Lcom/tencent/cos/common/BodyKey;->key:Lcom/tencent/cos/common/BodyKey;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 16
    .line 17
    monitor-exit v0

    .line 18
    return-object v1

    .line 19
    :catchall_0
    move-exception v1

    .line 20
    monitor-exit v0

    .line 21
    throw v1
.end method
