.class public Lorg/hmwebrtc/log/LogAdapter$SinkAdapter;
.super Lorg/hmwebrtc/log/LogApi$LogSink;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/hmwebrtc/log/LogAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "SinkAdapter"
.end annotation


# instance fields
.field mSinks:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lorg/hmwebrtc/log/LogApi$LogSink;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lorg/hmwebrtc/log/LogAdapter;


# direct methods
.method public constructor <init>(Lorg/hmwebrtc/log/LogAdapter;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lorg/hmwebrtc/log/LogAdapter$SinkAdapter;->this$0:Lorg/hmwebrtc/log/LogAdapter;

    .line 2
    .line 3
    invoke-direct {p0}, Lorg/hmwebrtc/log/LogApi$LogSink;-><init>()V

    .line 4
    .line 5
    .line 6
    new-instance p1, Ljava/util/ArrayList;

    .line 7
    .line 8
    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 9
    .line 10
    .line 11
    iput-object p1, p0, Lorg/hmwebrtc/log/LogAdapter$SinkAdapter;->mSinks:Ljava/util/List;

    .line 12
    .line 13
    return-void
.end method

.method static synthetic access$800(Lorg/hmwebrtc/log/LogAdapter$SinkAdapter;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lorg/hmwebrtc/log/LogAdapter$SinkAdapter;->removeAll()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method static synthetic access$900(Lorg/hmwebrtc/log/LogAdapter$SinkAdapter;Lorg/hmwebrtc/log/LogApi$LogSink;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lorg/hmwebrtc/log/LogAdapter$SinkAdapter;->addSink(Lorg/hmwebrtc/log/LogApi$LogSink;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method private addSink(Lorg/hmwebrtc/log/LogApi$LogSink;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lorg/hmwebrtc/log/LogAdapter$SinkAdapter;->mSinks:Ljava/util/List;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    if-nez p1, :cond_0

    .line 5
    .line 6
    :try_start_0
    monitor-exit v0

    .line 7
    return-void

    .line 8
    :cond_0
    iget-object v1, p0, Lorg/hmwebrtc/log/LogAdapter$SinkAdapter;->mSinks:Ljava/util/List;

    .line 9
    .line 10
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 11
    .line 12
    .line 13
    move-result-object v1

    .line 14
    :cond_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 15
    .line 16
    .line 17
    move-result v2

    .line 18
    if-eqz v2, :cond_2

    .line 19
    .line 20
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 21
    .line 22
    .line 23
    move-result-object v2

    .line 24
    check-cast v2, Lorg/hmwebrtc/log/LogApi$LogSink;

    .line 25
    .line 26
    if-ne v2, p1, :cond_1

    .line 27
    .line 28
    monitor-exit v0

    .line 29
    return-void

    .line 30
    :cond_2
    iget-object v1, p0, Lorg/hmwebrtc/log/LogAdapter$SinkAdapter;->mSinks:Ljava/util/List;

    .line 31
    .line 32
    invoke-interface {v1, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 33
    .line 34
    .line 35
    monitor-exit v0

    .line 36
    return-void

    .line 37
    :catchall_0
    move-exception p1

    .line 38
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 39
    throw p1
.end method

.method private getValidSinks()Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lorg/hmwebrtc/log/LogApi$LogSink;",
            ">;"
        }
    .end annotation

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 4
    .line 5
    .line 6
    iget-object v1, p0, Lorg/hmwebrtc/log/LogAdapter$SinkAdapter;->mSinks:Ljava/util/List;

    .line 7
    .line 8
    monitor-enter v1

    .line 9
    :try_start_0
    iget-object v2, p0, Lorg/hmwebrtc/log/LogAdapter$SinkAdapter;->mSinks:Ljava/util/List;

    .line 10
    .line 11
    invoke-interface {v0, v2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 12
    .line 13
    .line 14
    monitor-exit v1

    .line 15
    return-object v0

    .line 16
    :catchall_0
    move-exception v0

    .line 17
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 18
    throw v0
.end method

.method private removeAll()V
    .locals 2

    .line 1
    iget-object v0, p0, Lorg/hmwebrtc/log/LogAdapter$SinkAdapter;->mSinks:Ljava/util/List;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    iget-object v1, p0, Lorg/hmwebrtc/log/LogAdapter$SinkAdapter;->mSinks:Ljava/util/List;

    .line 5
    .line 6
    invoke-interface {v1}, Ljava/util/List;->clear()V

    .line 7
    .line 8
    .line 9
    monitor-exit v0

    .line 10
    return-void

    .line 11
    :catchall_0
    move-exception v1

    .line 12
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 13
    throw v1
.end method


# virtual methods
.method public onLog(ILorg/hmwebrtc/log/LogApi$LogMessage;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Lorg/hmwebrtc/log/LogAdapter$SinkAdapter;->getValidSinks()Ljava/util/List;

    move-result-object v0

    .line 2
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/hmwebrtc/log/LogApi$LogSink;

    .line 3
    invoke-virtual {v1, p1, p2}, Lorg/hmwebrtc/log/LogApi$LogSink;->onLog(ILorg/hmwebrtc/log/LogApi$LogMessage;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public onLog(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lorg/hmwebrtc/log/LogApi$LogMessage;",
            ">;)V"
        }
    .end annotation

    .line 4
    invoke-direct {p0}, Lorg/hmwebrtc/log/LogAdapter$SinkAdapter;->getValidSinks()Ljava/util/List;

    move-result-object v0

    .line 5
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/hmwebrtc/log/LogApi$LogSink;

    .line 6
    invoke-virtual {v1, p1}, Lorg/hmwebrtc/log/LogApi$LogSink;->onLog(Ljava/util/List;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public removeSink(Lorg/hmwebrtc/log/LogApi$LogSink;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lorg/hmwebrtc/log/LogAdapter$SinkAdapter;->mSinks:Ljava/util/List;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    if-eqz p1, :cond_0

    .line 5
    .line 6
    :try_start_0
    iget-object v1, p0, Lorg/hmwebrtc/log/LogAdapter$SinkAdapter;->mSinks:Ljava/util/List;

    .line 7
    .line 8
    invoke-interface {v1, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 9
    .line 10
    .line 11
    :cond_0
    monitor-exit v0

    .line 12
    return-void

    .line 13
    :catchall_0
    move-exception p1

    .line 14
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 15
    throw p1
.end method
