.class public final Lcom/tencent/cos/common/BodyValue;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static value:Lcom/tencent/cos/common/BodyValue;


# instance fields
.field public final CREATE:Ljava/lang/String;

.field public final DELETE:Ljava/lang/String;

.field public final LIST:Ljava/lang/String;

.field public final MOVE:Ljava/lang/String;

.field public final STAT:Ljava/lang/String;

.field public final UPDATE:Ljava/lang/String;

.field public final UPLOAD:Ljava/lang/String;

.field public final UPLOAD_SLICE:Ljava/lang/String;

.field public final UPLOAD_SLICE_DATA:Ljava/lang/String;

.field public final UPLOAD_SLICE_FINISH:Ljava/lang/String;

.field public final UPLOAD_SLICE_INIT:Ljava/lang/String;

.field public final UPLOAD_SLICE__LIST:Ljava/lang/String;


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    const-string v0, "create"

    .line 5
    .line 6
    iput-object v0, p0, Lcom/tencent/cos/common/BodyValue;->CREATE:Ljava/lang/String;

    .line 7
    .line 8
    const-string v0, "list"

    .line 9
    .line 10
    iput-object v0, p0, Lcom/tencent/cos/common/BodyValue;->LIST:Ljava/lang/String;

    .line 11
    .line 12
    const-string v0, "update"

    .line 13
    .line 14
    iput-object v0, p0, Lcom/tencent/cos/common/BodyValue;->UPDATE:Ljava/lang/String;

    .line 15
    .line 16
    const-string v0, "stat"

    .line 17
    .line 18
    iput-object v0, p0, Lcom/tencent/cos/common/BodyValue;->STAT:Ljava/lang/String;

    .line 19
    .line 20
    const-string v0, "move"

    .line 21
    .line 22
    iput-object v0, p0, Lcom/tencent/cos/common/BodyValue;->MOVE:Ljava/lang/String;

    .line 23
    .line 24
    const-string v0, "delete"

    .line 25
    .line 26
    iput-object v0, p0, Lcom/tencent/cos/common/BodyValue;->DELETE:Ljava/lang/String;

    .line 27
    .line 28
    const-string v0, "upload"

    .line 29
    .line 30
    iput-object v0, p0, Lcom/tencent/cos/common/BodyValue;->UPLOAD:Ljava/lang/String;

    .line 31
    .line 32
    const-string v0, "upload_slice"

    .line 33
    .line 34
    iput-object v0, p0, Lcom/tencent/cos/common/BodyValue;->UPLOAD_SLICE:Ljava/lang/String;

    .line 35
    .line 36
    const-string v0, "upload_slice_init"

    .line 37
    .line 38
    iput-object v0, p0, Lcom/tencent/cos/common/BodyValue;->UPLOAD_SLICE_INIT:Ljava/lang/String;

    .line 39
    .line 40
    const-string v0, "upload_slice_data"

    .line 41
    .line 42
    iput-object v0, p0, Lcom/tencent/cos/common/BodyValue;->UPLOAD_SLICE_DATA:Ljava/lang/String;

    .line 43
    .line 44
    const-string v0, "upload_slice_finish"

    .line 45
    .line 46
    iput-object v0, p0, Lcom/tencent/cos/common/BodyValue;->UPLOAD_SLICE_FINISH:Ljava/lang/String;

    .line 47
    .line 48
    const-string v0, "upload_slice_list"

    .line 49
    .line 50
    iput-object v0, p0, Lcom/tencent/cos/common/BodyValue;->UPLOAD_SLICE__LIST:Ljava/lang/String;

    .line 51
    .line 52
    return-void
.end method

.method public static declared-synchronized getInstance()Lcom/tencent/cos/common/BodyValue;
    .locals 2

    .line 1
    const-class v0, Lcom/tencent/cos/common/BodyValue;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    sget-object v1, Lcom/tencent/cos/common/BodyValue;->value:Lcom/tencent/cos/common/BodyValue;

    .line 5
    .line 6
    if-nez v1, :cond_0

    .line 7
    .line 8
    new-instance v1, Lcom/tencent/cos/common/BodyValue;

    .line 9
    .line 10
    invoke-direct {v1}, Lcom/tencent/cos/common/BodyValue;-><init>()V

    .line 11
    .line 12
    .line 13
    sput-object v1, Lcom/tencent/cos/common/BodyValue;->value:Lcom/tencent/cos/common/BodyValue;

    .line 14
    .line 15
    :cond_0
    sget-object v1, Lcom/tencent/cos/common/BodyValue;->value:Lcom/tencent/cos/common/BodyValue;
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
