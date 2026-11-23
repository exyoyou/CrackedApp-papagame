.class public final Lcom/kwad/sdk/utils/ay;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static volatile bpT:Lcom/kwad/sdk/utils/ay;


# instance fields
.field private volatile bpU:Z

.field private volatile bpV:J

.field private volatile bpW:Landroid/os/PowerManager;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lcom/kwad/sdk/utils/ay;

    .line 2
    .line 3
    invoke-direct {v0}, Lcom/kwad/sdk/utils/ay;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Lcom/kwad/sdk/utils/ay;->bpT:Lcom/kwad/sdk/utils/ay;

    .line 7
    .line 8
    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    const-wide/16 v0, 0x0

    .line 5
    .line 6
    iput-wide v0, p0, Lcom/kwad/sdk/utils/ay;->bpV:J

    .line 7
    .line 8
    return-void
.end method

.method public static VX()Lcom/kwad/sdk/utils/ay;
    .locals 1

    .line 1
    sget-object v0, Lcom/kwad/sdk/utils/ay;->bpT:Lcom/kwad/sdk/utils/ay;

    .line 2
    .line 3
    return-object v0
.end method


# virtual methods
.method public final dL(Landroid/content/Context;)Z
    .locals 5

    .line 1
    iget-wide v0, p0, Lcom/kwad/sdk/utils/ay;->bpV:J

    .line 2
    .line 3
    const-wide/16 v2, 0x0

    .line 4
    .line 5
    cmp-long v4, v0, v2

    .line 6
    .line 7
    if-lez v4, :cond_0

    .line 8
    .line 9
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    .line 10
    .line 11
    .line 12
    move-result-wide v0

    .line 13
    iget-wide v2, p0, Lcom/kwad/sdk/utils/ay;->bpV:J

    .line 14
    .line 15
    sub-long/2addr v0, v2

    .line 16
    const-wide/16 v2, 0x258

    .line 17
    .line 18
    cmp-long v4, v0, v2

    .line 19
    .line 20
    if-gez v4, :cond_0

    .line 21
    .line 22
    iget-boolean p1, p0, Lcom/kwad/sdk/utils/ay;->bpU:Z

    .line 23
    .line 24
    return p1

    .line 25
    :cond_0
    iget-object v0, p0, Lcom/kwad/sdk/utils/ay;->bpW:Landroid/os/PowerManager;

    .line 26
    .line 27
    if-nez v0, :cond_2

    .line 28
    .line 29
    if-eqz p1, :cond_2

    .line 30
    .line 31
    monitor-enter p0

    .line 32
    :try_start_0
    iget-object v0, p0, Lcom/kwad/sdk/utils/ay;->bpW:Landroid/os/PowerManager;

    .line 33
    .line 34
    if-nez v0, :cond_1

    .line 35
    .line 36
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    .line 37
    .line 38
    .line 39
    move-result-object p1

    .line 40
    const-string v0, "power"

    .line 41
    .line 42
    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 43
    .line 44
    .line 45
    move-result-object p1

    .line 46
    check-cast p1, Landroid/os/PowerManager;

    .line 47
    .line 48
    iput-object p1, p0, Lcom/kwad/sdk/utils/ay;->bpW:Landroid/os/PowerManager;

    .line 49
    .line 50
    :cond_1
    monitor-exit p0

    .line 51
    goto :goto_0

    .line 52
    :catchall_0
    move-exception p1

    .line 53
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 54
    throw p1

    .line 55
    :cond_2
    :goto_0
    iget-object p1, p0, Lcom/kwad/sdk/utils/ay;->bpW:Landroid/os/PowerManager;

    .line 56
    .line 57
    if-eqz p1, :cond_3

    .line 58
    .line 59
    iget-object p1, p0, Lcom/kwad/sdk/utils/ay;->bpW:Landroid/os/PowerManager;

    .line 60
    .line 61
    invoke-virtual {p1}, Landroid/os/PowerManager;->isInteractive()Z

    .line 62
    .line 63
    .line 64
    move-result p1

    .line 65
    goto :goto_1

    .line 66
    :cond_3
    const/4 p1, 0x0

    .line 67
    :goto_1
    iput-boolean p1, p0, Lcom/kwad/sdk/utils/ay;->bpU:Z

    .line 68
    .line 69
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    .line 70
    .line 71
    .line 72
    move-result-wide v0

    .line 73
    iput-wide v0, p0, Lcom/kwad/sdk/utils/ay;->bpV:J

    .line 74
    .line 75
    iget-boolean p1, p0, Lcom/kwad/sdk/utils/ay;->bpU:Z

    .line 76
    .line 77
    return p1
.end method
