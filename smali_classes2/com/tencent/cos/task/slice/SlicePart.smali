.class public Lcom/tencent/cos/task/slice/SlicePart;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static final serialVersionUID:J = -0x7ac9630386dc697aL


# instance fields
.field private offset:J

.field private overFlag:Z

.field private sliceSize:I


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
.method public getOffset()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/tencent/cos/task/slice/SlicePart;->offset:J

    .line 2
    .line 3
    return-wide v0
.end method

.method public getOverFlag()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/tencent/cos/task/slice/SlicePart;->overFlag:Z

    .line 2
    .line 3
    return v0
.end method

.method public getSliceSize()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/tencent/cos/task/slice/SlicePart;->sliceSize:I

    .line 2
    .line 3
    return v0
.end method

.method public setOffset(J)V
    .locals 0

    .line 1
    iput-wide p1, p0, Lcom/tencent/cos/task/slice/SlicePart;->offset:J

    .line 2
    .line 3
    return-void
.end method

.method public setOverFlag(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/tencent/cos/task/slice/SlicePart;->overFlag:Z

    .line 2
    .line 3
    return-void
.end method

.method public setSliceSize(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/tencent/cos/task/slice/SlicePart;->sliceSize:I

    .line 2
    .line 3
    return-void
.end method
