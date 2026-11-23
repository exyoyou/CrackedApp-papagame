.class public final Lcom/tencent/cos/common/UploadParts;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static key:Lcom/tencent/cos/common/UploadParts;


# instance fields
.field public final DATA_LEN:Ljava/lang/String;

.field public final DATA_SHA:Ljava/lang/String;

.field public final OFFSET:Ljava/lang/String;


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    const-string v0, "offset"

    .line 5
    .line 6
    iput-object v0, p0, Lcom/tencent/cos/common/UploadParts;->OFFSET:Ljava/lang/String;

    .line 7
    .line 8
    const-string v0, "datalen"

    .line 9
    .line 10
    iput-object v0, p0, Lcom/tencent/cos/common/UploadParts;->DATA_LEN:Ljava/lang/String;

    .line 11
    .line 12
    const-string v0, "datasha"

    .line 13
    .line 14
    iput-object v0, p0, Lcom/tencent/cos/common/UploadParts;->DATA_SHA:Ljava/lang/String;

    .line 15
    .line 16
    return-void
.end method

.method public static declared-synchronized getInstance()Lcom/tencent/cos/common/UploadParts;
    .locals 2

    .line 1
    const-class v0, Lcom/tencent/cos/common/UploadParts;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    sget-object v1, Lcom/tencent/cos/common/UploadParts;->key:Lcom/tencent/cos/common/UploadParts;

    .line 5
    .line 6
    if-nez v1, :cond_0

    .line 7
    .line 8
    new-instance v1, Lcom/tencent/cos/common/UploadParts;

    .line 9
    .line 10
    invoke-direct {v1}, Lcom/tencent/cos/common/UploadParts;-><init>()V

    .line 11
    .line 12
    .line 13
    sput-object v1, Lcom/tencent/cos/common/UploadParts;->key:Lcom/tencent/cos/common/UploadParts;

    .line 14
    .line 15
    :cond_0
    sget-object v1, Lcom/tencent/cos/common/UploadParts;->key:Lcom/tencent/cos/common/UploadParts;
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
