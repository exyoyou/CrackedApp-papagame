.class public Lcom/byazt/is/tt;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Lcom/byazt/zqa/c;
    c = {
        0x0,
        0x1,
        0x3d8,
        0xd
    }
.end annotation


# instance fields
.field public c:I

.field public tt:J


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
.method public c()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/byazt/is/tt;->c:I

    return v0
.end method

.method public c(I)V
    .locals 0

    .line 2
    iput p1, p0, Lcom/byazt/is/tt;->c:I

    return-void
.end method

.method public c(J)V
    .locals 0

    .line 3
    iput-wide p1, p0, Lcom/byazt/is/tt;->tt:J

    return-void
.end method

.method public tt()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/byazt/is/tt;->tt:J

    .line 2
    .line 3
    return-wide v0
.end method
