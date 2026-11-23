.class public final Lcom/kwad/framework/filedownloader/b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/kwad/framework/filedownloader/s$a;
.implements Lcom/kwad/framework/filedownloader/s$b;


# instance fields
.field private ayR:J

.field private ayS:J

.field private ayT:J

.field private ayU:I

.field private ayV:I

.field private mStartTime:J


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    const/16 v0, 0x3e8

    .line 5
    .line 6
    iput v0, p0, Lcom/kwad/framework/filedownloader/b;->ayV:I

    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final aa(J)V
    .locals 9

    .line 1
    iget v0, p0, Lcom/kwad/framework/filedownloader/b;->ayV:I

    .line 2
    .line 3
    if-gtz v0, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    iget-wide v0, p0, Lcom/kwad/framework/filedownloader/b;->ayR:J

    .line 7
    .line 8
    const/4 v2, 0x1

    .line 9
    const-wide/16 v3, 0x0

    .line 10
    .line 11
    cmp-long v5, v0, v3

    .line 12
    .line 13
    if-nez v5, :cond_1

    .line 14
    .line 15
    goto :goto_1

    .line 16
    :cond_1
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    .line 17
    .line 18
    .line 19
    move-result-wide v0

    .line 20
    iget-wide v5, p0, Lcom/kwad/framework/filedownloader/b;->ayR:J

    .line 21
    .line 22
    sub-long/2addr v0, v5

    .line 23
    iget v5, p0, Lcom/kwad/framework/filedownloader/b;->ayV:I

    .line 24
    .line 25
    int-to-long v5, v5

    .line 26
    const/4 v7, 0x0

    .line 27
    cmp-long v8, v0, v5

    .line 28
    .line 29
    if-gez v8, :cond_3

    .line 30
    .line 31
    iget v5, p0, Lcom/kwad/framework/filedownloader/b;->ayU:I

    .line 32
    .line 33
    if-nez v5, :cond_2

    .line 34
    .line 35
    cmp-long v5, v0, v3

    .line 36
    .line 37
    if-lez v5, :cond_2

    .line 38
    .line 39
    goto :goto_0

    .line 40
    :cond_2
    const/4 v2, 0x0

    .line 41
    goto :goto_1

    .line 42
    :cond_3
    :goto_0
    iget-wide v3, p0, Lcom/kwad/framework/filedownloader/b;->ayS:J

    .line 43
    .line 44
    sub-long v3, p1, v3

    .line 45
    .line 46
    div-long/2addr v3, v0

    .line 47
    long-to-int v0, v3

    .line 48
    iput v0, p0, Lcom/kwad/framework/filedownloader/b;->ayU:I

    .line 49
    .line 50
    invoke-static {v7, v0}, Ljava/lang/Math;->max(II)I

    .line 51
    .line 52
    .line 53
    move-result v0

    .line 54
    iput v0, p0, Lcom/kwad/framework/filedownloader/b;->ayU:I

    .line 55
    .line 56
    :goto_1
    if-eqz v2, :cond_4

    .line 57
    .line 58
    iput-wide p1, p0, Lcom/kwad/framework/filedownloader/b;->ayS:J

    .line 59
    .line 60
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    .line 61
    .line 62
    .line 63
    move-result-wide p1

    .line 64
    iput-wide p1, p0, Lcom/kwad/framework/filedownloader/b;->ayR:J

    .line 65
    .line 66
    :cond_4
    return-void
.end method

.method public final end(J)V
    .locals 6

    .line 1
    iget-wide v0, p0, Lcom/kwad/framework/filedownloader/b;->mStartTime:J

    .line 2
    .line 3
    const-wide/16 v2, 0x0

    .line 4
    .line 5
    cmp-long v4, v0, v2

    .line 6
    .line 7
    if-gtz v4, :cond_0

    .line 8
    .line 9
    return-void

    .line 10
    :cond_0
    iget-wide v0, p0, Lcom/kwad/framework/filedownloader/b;->ayT:J

    .line 11
    .line 12
    sub-long/2addr p1, v0

    .line 13
    iput-wide v2, p0, Lcom/kwad/framework/filedownloader/b;->ayR:J

    .line 14
    .line 15
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    .line 16
    .line 17
    .line 18
    move-result-wide v0

    .line 19
    iget-wide v4, p0, Lcom/kwad/framework/filedownloader/b;->mStartTime:J

    .line 20
    .line 21
    sub-long/2addr v0, v4

    .line 22
    cmp-long v4, v0, v2

    .line 23
    .line 24
    if-gtz v4, :cond_1

    .line 25
    .line 26
    long-to-int p2, p1

    .line 27
    iput p2, p0, Lcom/kwad/framework/filedownloader/b;->ayU:I

    .line 28
    .line 29
    return-void

    .line 30
    :cond_1
    div-long/2addr p1, v0

    .line 31
    long-to-int p2, p1

    .line 32
    iput p2, p0, Lcom/kwad/framework/filedownloader/b;->ayU:I

    .line 33
    .line 34
    return-void
.end method

.method public final getSpeed()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/kwad/framework/filedownloader/b;->ayU:I

    .line 2
    .line 3
    return v0
.end method

.method public final reset()V
    .locals 2

    .line 1
    const/4 v0, 0x0

    .line 2
    iput v0, p0, Lcom/kwad/framework/filedownloader/b;->ayU:I

    .line 3
    .line 4
    const-wide/16 v0, 0x0

    .line 5
    .line 6
    iput-wide v0, p0, Lcom/kwad/framework/filedownloader/b;->ayR:J

    .line 7
    .line 8
    return-void
.end method

.method public final start(J)V
    .locals 2

    .line 1
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    .line 2
    .line 3
    .line 4
    move-result-wide v0

    .line 5
    iput-wide v0, p0, Lcom/kwad/framework/filedownloader/b;->mStartTime:J

    .line 6
    .line 7
    iput-wide p1, p0, Lcom/kwad/framework/filedownloader/b;->ayT:J

    .line 8
    .line 9
    return-void
.end method
