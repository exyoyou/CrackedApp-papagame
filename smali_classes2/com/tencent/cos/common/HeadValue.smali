.class public final Lcom/tencent/cos/common/HeadValue;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static value:Lcom/tencent/cos/common/HeadValue;


# instance fields
.field public final ACCPET_ALL:Ljava/lang/String;

.field public final FORM_DATA:Ljava/lang/String;

.field public final JSON:Ljava/lang/String;

.field public final KEEP_ALIVE:Ljava/lang/String;


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    const-string v0, "application/json"

    .line 5
    .line 6
    iput-object v0, p0, Lcom/tencent/cos/common/HeadValue;->JSON:Ljava/lang/String;

    .line 7
    .line 8
    const-string v0, "multipart/form-data"

    .line 9
    .line 10
    iput-object v0, p0, Lcom/tencent/cos/common/HeadValue;->FORM_DATA:Ljava/lang/String;

    .line 11
    .line 12
    const-string v0, "*/*"

    .line 13
    .line 14
    iput-object v0, p0, Lcom/tencent/cos/common/HeadValue;->ACCPET_ALL:Ljava/lang/String;

    .line 15
    .line 16
    const-string v0, "Keep-Alive"

    .line 17
    .line 18
    iput-object v0, p0, Lcom/tencent/cos/common/HeadValue;->KEEP_ALIVE:Ljava/lang/String;

    .line 19
    .line 20
    return-void
.end method

.method public static declared-synchronized getInstance()Lcom/tencent/cos/common/HeadValue;
    .locals 2

    .line 1
    const-class v0, Lcom/tencent/cos/common/HeadValue;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    sget-object v1, Lcom/tencent/cos/common/HeadValue;->value:Lcom/tencent/cos/common/HeadValue;

    .line 5
    .line 6
    if-nez v1, :cond_0

    .line 7
    .line 8
    new-instance v1, Lcom/tencent/cos/common/HeadValue;

    .line 9
    .line 10
    invoke-direct {v1}, Lcom/tencent/cos/common/HeadValue;-><init>()V

    .line 11
    .line 12
    .line 13
    sput-object v1, Lcom/tencent/cos/common/HeadValue;->value:Lcom/tencent/cos/common/HeadValue;

    .line 14
    .line 15
    :cond_0
    sget-object v1, Lcom/tencent/cos/common/HeadValue;->value:Lcom/tencent/cos/common/HeadValue;
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
