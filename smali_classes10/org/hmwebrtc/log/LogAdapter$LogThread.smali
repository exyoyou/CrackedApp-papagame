.class Lorg/hmwebrtc/log/LogAdapter$LogThread;
.super Lorg/hmwebrtc/log/LogAdapter$WorkThread;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/hmwebrtc/log/LogAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "LogThread"
.end annotation


# instance fields
.field private mIndex:I

.field private mMessages:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lorg/hmwebrtc/log/LogApi$LogMessage;",
            ">;"
        }
    .end annotation
.end field

.field private mSinks:Lorg/hmwebrtc/log/LogAdapter$SinkAdapter;

.field private sumLogSizeInBytes:I


# direct methods
.method public constructor <init>(Lorg/hmwebrtc/log/LogAdapter$SinkAdapter;)V
    .locals 2

    .line 1
    invoke-static {}, Lorg/hmwebrtc/log/LogAdapter;->access$500()J

    .line 2
    .line 3
    .line 4
    move-result-wide v0

    .line 5
    invoke-direct {p0, v0, v1}, Lorg/hmwebrtc/log/LogAdapter$WorkThread;-><init>(J)V

    .line 6
    .line 7
    .line 8
    iput-object p1, p0, Lorg/hmwebrtc/log/LogAdapter$LogThread;->mSinks:Lorg/hmwebrtc/log/LogAdapter$SinkAdapter;

    .line 9
    .line 10
    new-instance p1, Ljava/util/ArrayList;

    .line 11
    .line 12
    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 13
    .line 14
    .line 15
    iput-object p1, p0, Lorg/hmwebrtc/log/LogAdapter$LogThread;->mMessages:Ljava/util/List;

    .line 16
    .line 17
    return-void
.end method

.method static synthetic access$600(Lorg/hmwebrtc/log/LogAdapter$LogThread;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lorg/hmwebrtc/log/LogAdapter$LogThread;->writeLogs()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method private writeLogs()V
    .locals 3

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 4
    .line 5
    .line 6
    iget-object v1, p0, Lorg/hmwebrtc/log/LogAdapter$LogThread;->mMessages:Ljava/util/List;

    .line 7
    .line 8
    monitor-enter v1

    .line 9
    :try_start_0
    iget-object v2, p0, Lorg/hmwebrtc/log/LogAdapter$LogThread;->mMessages:Ljava/util/List;

    .line 10
    .line 11
    invoke-interface {v0, v2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 12
    .line 13
    .line 14
    iget-object v2, p0, Lorg/hmwebrtc/log/LogAdapter$LogThread;->mMessages:Ljava/util/List;

    .line 15
    .line 16
    invoke-interface {v2}, Ljava/util/List;->clear()V

    .line 17
    .line 18
    .line 19
    const/4 v2, 0x0

    .line 20
    iput v2, p0, Lorg/hmwebrtc/log/LogAdapter$LogThread;->sumLogSizeInBytes:I

    .line 21
    .line 22
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 23
    iget-object v1, p0, Lorg/hmwebrtc/log/LogAdapter$LogThread;->mSinks:Lorg/hmwebrtc/log/LogAdapter$SinkAdapter;

    .line 24
    .line 25
    invoke-virtual {v1, v0}, Lorg/hmwebrtc/log/LogAdapter$SinkAdapter;->onLog(Ljava/util/List;)V

    .line 26
    .line 27
    .line 28
    return-void

    .line 29
    :catchall_0
    move-exception v0

    .line 30
    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 31
    throw v0
.end method


# virtual methods
.method public onLog(ILorg/hmwebrtc/log/LogApi$LogMessage;)V
    .locals 3

    .line 1
    iget-object p1, p0, Lorg/hmwebrtc/log/LogAdapter$LogThread;->mMessages:Ljava/util/List;

    .line 2
    .line 3
    monitor-enter p1

    .line 4
    :try_start_0
    iget-object v0, p0, Lorg/hmwebrtc/log/LogAdapter$LogThread;->mMessages:Ljava/util/List;

    .line 5
    .line 6
    invoke-interface {v0, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 7
    .line 8
    .line 9
    iget v0, p0, Lorg/hmwebrtc/log/LogAdapter$LogThread;->sumLogSizeInBytes:I

    .line 10
    .line 11
    iget-object p2, p2, Lorg/hmwebrtc/log/LogApi$LogMessage;->msg:Ljava/lang/String;

    .line 12
    .line 13
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    .line 14
    .line 15
    .line 16
    move-result p2

    .line 17
    add-int/2addr v0, p2

    .line 18
    iput v0, p0, Lorg/hmwebrtc/log/LogAdapter$LogThread;->sumLogSizeInBytes:I

    .line 19
    .line 20
    iget-object p2, p0, Lorg/hmwebrtc/log/LogAdapter$LogThread;->mMessages:Ljava/util/List;

    .line 21
    .line 22
    invoke-interface {p2}, Ljava/util/List;->size()I

    .line 23
    .line 24
    .line 25
    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 26
    iget p1, p0, Lorg/hmwebrtc/log/LogAdapter$LogThread;->sumLogSizeInBytes:I

    .line 27
    .line 28
    int-to-long p1, p1

    .line 29
    invoke-static {}, Lorg/hmwebrtc/log/LogAdapter;->access$700()J

    .line 30
    .line 31
    .line 32
    move-result-wide v0

    .line 33
    cmp-long v2, p1, v0

    .line 34
    .line 35
    if-ltz v2, :cond_0

    .line 36
    .line 37
    invoke-virtual {p0}, Lorg/hmwebrtc/log/LogAdapter$WorkThread;->setEvent()V

    .line 38
    .line 39
    .line 40
    :cond_0
    return-void

    .line 41
    :catchall_0
    move-exception p2

    .line 42
    :try_start_1
    monitor-exit p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 43
    throw p2
.end method

.method public start()V
    .locals 1

    .line 1
    new-instance v0, Lorg/hmwebrtc/log/LogAdapter$LogThread$1;

    .line 2
    .line 3
    invoke-direct {v0, p0}, Lorg/hmwebrtc/log/LogAdapter$LogThread$1;-><init>(Lorg/hmwebrtc/log/LogAdapter$LogThread;)V

    .line 4
    .line 5
    .line 6
    invoke-super {p0, v0}, Lorg/hmwebrtc/log/LogAdapter$WorkThread;->start(Lorg/hmwebrtc/log/LogAdapter$Work;)V

    .line 7
    .line 8
    .line 9
    return-void
.end method
