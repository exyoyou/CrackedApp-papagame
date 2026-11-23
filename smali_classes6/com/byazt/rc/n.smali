.class public Lcom/byazt/rc/n;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/byazt/yj/x;


# annotations
.annotation runtime Lcom/byazt/zqa/c;
    c = {
        0x0,
        0x1,
        0x26c,
        0x2e
    }
.end annotation


# instance fields
.field public c:J

.field public tt:J

.field public ve:J


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method


# virtual methods
.method public c(J)V
    .locals 0

    .line 1
    iput-wide p1, p0, Lcom/byazt/rc/n;->c:J

    .line 2
    .line 3
    return-void
.end method

.method public getEndRequestTime()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/byazt/rc/n;->ve:J

    .line 2
    .line 3
    return-wide v0
.end method

.method public getFirstFrameTime()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/byazt/rc/n;->tt:J

    .line 2
    .line 3
    return-wide v0
.end method

.method public getStartRequestTime()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/byazt/rc/n;->c:J

    .line 2
    .line 3
    return-wide v0
.end method

.method public tt(J)V
    .locals 0

    .line 1
    iput-wide p1, p0, Lcom/byazt/rc/n;->tt:J

    .line 2
    .line 3
    return-void
.end method

.method public ve(J)V
    .locals 0

    .line 1
    iput-wide p1, p0, Lcom/byazt/rc/n;->ve:J

    .line 2
    .line 3
    return-void
.end method
