.class public Lorg/webrtc/haima/HmStatsCollector;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/webrtc/haima/HmStatsCollector$FieldInfo;,
        Lorg/webrtc/haima/HmStatsCollector$FieldType;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "stats_collector"


# instance fields
.field final mFileldInfo:[Lorg/webrtc/haima/HmStatsCollector$FieldInfo;

.field private mReportArray:[Lorg/hmwebrtc/StatsReport$Value;


# direct methods
.method public constructor <init>([Lorg/webrtc/haima/HmStatsCollector$FieldInfo;)V
    .locals 8

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    if-eqz p1, :cond_1

    .line 5
    .line 6
    array-length v0, p1

    .line 7
    if-eqz v0, :cond_1

    .line 8
    .line 9
    array-length v0, p1

    .line 10
    new-array v0, v0, [Lorg/webrtc/haima/HmStatsCollector$FieldInfo;

    .line 11
    .line 12
    iput-object v0, p0, Lorg/webrtc/haima/HmStatsCollector;->mFileldInfo:[Lorg/webrtc/haima/HmStatsCollector$FieldInfo;

    .line 13
    .line 14
    array-length v0, p1

    .line 15
    new-array v0, v0, [Lorg/hmwebrtc/StatsReport$Value;

    .line 16
    .line 17
    iput-object v0, p0, Lorg/webrtc/haima/HmStatsCollector;->mReportArray:[Lorg/hmwebrtc/StatsReport$Value;

    .line 18
    .line 19
    array-length v0, p1

    .line 20
    const/4 v1, 0x0

    .line 21
    const/4 v2, 0x0

    .line 22
    :goto_0
    if-ge v1, v0, :cond_0

    .line 23
    .line 24
    aget-object v3, p1, v1

    .line 25
    .line 26
    iget-object v4, p0, Lorg/webrtc/haima/HmStatsCollector;->mFileldInfo:[Lorg/webrtc/haima/HmStatsCollector$FieldInfo;

    .line 27
    .line 28
    aput-object v3, v4, v2

    .line 29
    .line 30
    iget-object v4, p0, Lorg/webrtc/haima/HmStatsCollector;->mReportArray:[Lorg/hmwebrtc/StatsReport$Value;

    .line 31
    .line 32
    add-int/lit8 v5, v2, 0x1

    .line 33
    .line 34
    new-instance v6, Lorg/hmwebrtc/StatsReport$Value;

    .line 35
    .line 36
    iget-object v7, v3, Lorg/webrtc/haima/HmStatsCollector$FieldInfo;->name:Ljava/lang/String;

    .line 37
    .line 38
    iget-object v3, v3, Lorg/webrtc/haima/HmStatsCollector$FieldInfo;->defValue:Ljava/lang/String;

    .line 39
    .line 40
    invoke-direct {v6, v7, v3}, Lorg/hmwebrtc/StatsReport$Value;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 41
    .line 42
    .line 43
    aput-object v6, v4, v2

    .line 44
    .line 45
    add-int/lit8 v1, v1, 0x1

    .line 46
    .line 47
    move v2, v5

    .line 48
    goto :goto_0

    .line 49
    :cond_0
    return-void

    .line 50
    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 51
    .line 52
    const-string v0, "Invalid fields size!"

    .line 53
    .line 54
    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 55
    .line 56
    .line 57
    throw p1
.end method


# virtual methods
.method public getStats()[Lorg/hmwebrtc/StatsReport$Value;
    .locals 2

    .line 1
    iget-object v0, p0, Lorg/webrtc/haima/HmStatsCollector;->mReportArray:[Lorg/hmwebrtc/StatsReport$Value;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    iget-object v1, p0, Lorg/webrtc/haima/HmStatsCollector;->mReportArray:[Lorg/hmwebrtc/StatsReport$Value;

    .line 5
    .line 6
    invoke-virtual {v1}, [Lorg/hmwebrtc/StatsReport$Value;->clone()Ljava/lang/Object;

    .line 7
    .line 8
    .line 9
    move-result-object v1

    .line 10
    check-cast v1, [Lorg/hmwebrtc/StatsReport$Value;

    .line 11
    .line 12
    monitor-exit v0

    .line 13
    return-object v1

    .line 14
    :catchall_0
    move-exception v1

    .line 15
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 16
    throw v1
.end method

.method public setValues(I[Ljava/lang/String;)Z
    .locals 6

    .line 1
    array-length v0, p2

    .line 2
    sub-int/2addr v0, p1

    .line 3
    iget-object v1, p0, Lorg/webrtc/haima/HmStatsCollector;->mReportArray:[Lorg/hmwebrtc/StatsReport$Value;

    .line 4
    .line 5
    array-length v2, v1

    .line 6
    const/4 v3, 0x0

    .line 7
    if-ge v0, v2, :cond_0

    .line 8
    .line 9
    const-string p2, "stats_collector"

    .line 10
    .line 11
    new-instance v0, Ljava/lang/StringBuilder;

    .line 12
    .line 13
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 14
    .line 15
    .line 16
    const-string v1, "setValues: failed "

    .line 17
    .line 18
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 19
    .line 20
    .line 21
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 22
    .line 23
    .line 24
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 25
    .line 26
    .line 27
    move-result-object p1

    .line 28
    invoke-static {p2, p1}, Lorg/hmwebrtc/Logging;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 29
    .line 30
    .line 31
    return v3

    .line 32
    :cond_0
    monitor-enter v1

    .line 33
    :goto_0
    :try_start_0
    array-length v0, p2

    .line 34
    if-ge p1, v0, :cond_2

    .line 35
    .line 36
    iget-object v0, p0, Lorg/webrtc/haima/HmStatsCollector;->mReportArray:[Lorg/hmwebrtc/StatsReport$Value;

    .line 37
    .line 38
    new-instance v2, Lorg/hmwebrtc/StatsReport$Value;

    .line 39
    .line 40
    iget-object v4, p0, Lorg/webrtc/haima/HmStatsCollector;->mFileldInfo:[Lorg/webrtc/haima/HmStatsCollector$FieldInfo;

    .line 41
    .line 42
    aget-object v4, v4, v3

    .line 43
    .line 44
    iget-object v4, v4, Lorg/webrtc/haima/HmStatsCollector$FieldInfo;->name:Ljava/lang/String;

    .line 45
    .line 46
    aget-object v5, p2, p1

    .line 47
    .line 48
    invoke-direct {v2, v4, v5}, Lorg/hmwebrtc/StatsReport$Value;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 49
    .line 50
    .line 51
    aput-object v2, v0, v3

    .line 52
    .line 53
    add-int/lit8 v3, v3, 0x1

    .line 54
    .line 55
    iget-object v0, p0, Lorg/webrtc/haima/HmStatsCollector;->mReportArray:[Lorg/hmwebrtc/StatsReport$Value;

    .line 56
    .line 57
    array-length v0, v0

    .line 58
    if-lt v3, v0, :cond_1

    .line 59
    .line 60
    goto :goto_1

    .line 61
    :cond_1
    add-int/lit8 p1, p1, 0x1

    .line 62
    .line 63
    goto :goto_0

    .line 64
    :cond_2
    :goto_1
    monitor-exit v1

    .line 65
    const/4 p1, 0x1

    .line 66
    return p1

    .line 67
    :catchall_0
    move-exception p1

    .line 68
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 69
    throw p1
.end method
