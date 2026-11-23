.class public Lorg/webrtc/haima/PeerConnectionClient$WeaklyNetInfo;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/webrtc/haima/PeerConnectionClient;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "WeaklyNetInfo"
.end annotation


# static fields
.field private static mReportListLock:Ljava/lang/Object; = null

.field public static final mType:Ljava/lang/String; = "wn"


# instance fields
.field private mReportList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lorg/hmwebrtc/StatsReport$Value;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Ljava/lang/Object;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Lorg/webrtc/haima/PeerConnectionClient$WeaklyNetInfo;->mReportListLock:Ljava/lang/Object;

    .line 7
    .line 8
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Ljava/util/ArrayList;

    .line 5
    .line 6
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 7
    .line 8
    .line 9
    iput-object v0, p0, Lorg/webrtc/haima/PeerConnectionClient$WeaklyNetInfo;->mReportList:Ljava/util/ArrayList;

    .line 10
    .line 11
    return-void
.end method


# virtual methods
.method public getStats()[Lorg/hmwebrtc/StatsReport$Value;
    .locals 5

    .line 1
    iget-object v0, p0, Lorg/webrtc/haima/PeerConnectionClient$WeaklyNetInfo;->mReportList:Ljava/util/ArrayList;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    sget-object v1, Lorg/webrtc/haima/PeerConnectionClient$WeaklyNetInfo;->mReportListLock:Ljava/lang/Object;

    .line 8
    .line 9
    monitor-enter v1

    .line 10
    if-nez v0, :cond_0

    .line 11
    .line 12
    :try_start_0
    monitor-exit v1

    .line 13
    const/4 v0, 0x0

    .line 14
    return-object v0

    .line 15
    :cond_0
    new-array v2, v0, [Lorg/hmwebrtc/StatsReport$Value;

    .line 16
    .line 17
    const/4 v3, 0x0

    .line 18
    :goto_0
    if-ge v3, v0, :cond_1

    .line 19
    .line 20
    iget-object v4, p0, Lorg/webrtc/haima/PeerConnectionClient$WeaklyNetInfo;->mReportList:Ljava/util/ArrayList;

    .line 21
    .line 22
    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 23
    .line 24
    .line 25
    move-result-object v4

    .line 26
    check-cast v4, Lorg/hmwebrtc/StatsReport$Value;

    .line 27
    .line 28
    aput-object v4, v2, v3

    .line 29
    .line 30
    add-int/lit8 v3, v3, 0x1

    .line 31
    .line 32
    goto :goto_0

    .line 33
    :cond_1
    iget-object v0, p0, Lorg/webrtc/haima/PeerConnectionClient$WeaklyNetInfo;->mReportList:Ljava/util/ArrayList;

    .line 34
    .line 35
    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 36
    .line 37
    .line 38
    monitor-exit v1

    .line 39
    return-object v2

    .line 40
    :catchall_0
    move-exception v0

    .line 41
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 42
    throw v0
.end method

.method public parseStreamerWeaklyNetInfo([Ljava/lang/String;)Z
    .locals 5

    .line 1
    const/4 v0, 0x0

    .line 2
    if-eqz p1, :cond_1

    .line 3
    .line 4
    array-length v1, p1

    .line 5
    const/4 v2, 0x3

    .line 6
    if-ne v1, v2, :cond_1

    .line 7
    .line 8
    aget-object v1, p1, v0

    .line 9
    .line 10
    const-string v2, "wn"

    .line 11
    .line 12
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 13
    .line 14
    .line 15
    move-result v1

    .line 16
    if-nez v1, :cond_0

    .line 17
    .line 18
    goto :goto_0

    .line 19
    :cond_0
    sget-object v1, Lorg/webrtc/haima/PeerConnectionClient$WeaklyNetInfo;->mReportListLock:Ljava/lang/Object;

    .line 20
    .line 21
    monitor-enter v1

    .line 22
    :try_start_0
    iget-object v0, p0, Lorg/webrtc/haima/PeerConnectionClient$WeaklyNetInfo;->mReportList:Ljava/util/ArrayList;

    .line 23
    .line 24
    new-instance v2, Lorg/hmwebrtc/StatsReport$Value;

    .line 25
    .line 26
    const-string v3, "streamerWeaklyNet"

    .line 27
    .line 28
    const/4 v4, 0x2

    .line 29
    aget-object p1, p1, v4

    .line 30
    .line 31
    invoke-direct {v2, v3, p1}, Lorg/hmwebrtc/StatsReport$Value;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 32
    .line 33
    .line 34
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 35
    .line 36
    .line 37
    monitor-exit v1

    .line 38
    const/4 p1, 0x1

    .line 39
    return p1

    .line 40
    :catchall_0
    move-exception p1

    .line 41
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 42
    throw p1

    .line 43
    :cond_1
    :goto_0
    const-string p1, "wn"

    .line 44
    .line 45
    const-string v1, "parseStreamerAudioInfo value is null,empty,or type is not right"

    .line 46
    .line 47
    invoke-static {p1, v1}, Lorg/hmwebrtc/Logging;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 48
    .line 49
    .line 50
    return v0
.end method
