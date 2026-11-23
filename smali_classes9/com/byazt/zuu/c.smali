.class public Lcom/byazt/zuu/c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/byazt/fn/c;


# annotations
.annotation runtime Lcom/byazt/zqa/c;
    c = {
        0x0,
        0x1,
        0x1d2,
        0x14
    }
.end annotation


# instance fields
.field public final c:F

.field public final tt:F

.field public final ve:J


# direct methods
.method public constructor <init>(FFJ)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput p1, p0, Lcom/byazt/zuu/c;->c:F

    .line 5
    .line 6
    iput p2, p0, Lcom/byazt/zuu/c;->tt:F

    .line 7
    .line 8
    iput-wide p3, p0, Lcom/byazt/zuu/c;->ve:J

    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method public getLastTime()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/byazt/zuu/c;->ve:J

    .line 2
    .line 3
    return-wide v0
.end method

.method public getLatitude()F
    .locals 1

    .line 1
    iget v0, p0, Lcom/byazt/zuu/c;->c:F

    .line 2
    .line 3
    return v0
.end method

.method public getLongitude()F
    .locals 1

    .line 1
    iget v0, p0, Lcom/byazt/zuu/c;->tt:F

    .line 2
    .line 3
    return v0
.end method
