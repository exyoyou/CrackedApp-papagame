.class public Lcom/haima/hmcp/virtual/bean/HmVirtualViewBean$PositionDTO;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/haima/hmcp/virtual/bean/HmVirtualViewBean;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "PositionDTO"
.end annotation


# instance fields
.field private h:I

.field private w:I

.field private x:D

.field private y:D


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
.method public getH()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/haima/hmcp/virtual/bean/HmVirtualViewBean$PositionDTO;->h:I

    .line 2
    .line 3
    return v0
.end method

.method public getW()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/haima/hmcp/virtual/bean/HmVirtualViewBean$PositionDTO;->w:I

    .line 2
    .line 3
    return v0
.end method

.method public getX()D
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/haima/hmcp/virtual/bean/HmVirtualViewBean$PositionDTO;->x:D

    .line 2
    .line 3
    return-wide v0
.end method

.method public getY()D
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/haima/hmcp/virtual/bean/HmVirtualViewBean$PositionDTO;->y:D

    .line 2
    .line 3
    return-wide v0
.end method

.method public setH(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/haima/hmcp/virtual/bean/HmVirtualViewBean$PositionDTO;->h:I

    .line 2
    .line 3
    return-void
.end method

.method public setW(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/haima/hmcp/virtual/bean/HmVirtualViewBean$PositionDTO;->w:I

    .line 2
    .line 3
    return-void
.end method

.method public setX(D)V
    .locals 0

    .line 1
    iput-wide p1, p0, Lcom/haima/hmcp/virtual/bean/HmVirtualViewBean$PositionDTO;->x:D

    .line 2
    .line 3
    return-void
.end method

.method public setY(D)V
    .locals 0

    .line 1
    iput-wide p1, p0, Lcom/haima/hmcp/virtual/bean/HmVirtualViewBean$PositionDTO;->y:D

    .line 2
    .line 3
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 4
    .line 5
    .line 6
    const-string v1, "PositionDTO{x="

    .line 7
    .line 8
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 9
    .line 10
    .line 11
    iget-wide v1, p0, Lcom/haima/hmcp/virtual/bean/HmVirtualViewBean$PositionDTO;->x:D

    .line 12
    .line 13
    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    .line 14
    .line 15
    .line 16
    const-string v1, ", y="

    .line 17
    .line 18
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 19
    .line 20
    .line 21
    iget-wide v1, p0, Lcom/haima/hmcp/virtual/bean/HmVirtualViewBean$PositionDTO;->y:D

    .line 22
    .line 23
    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    .line 24
    .line 25
    .line 26
    const-string v1, ", w="

    .line 27
    .line 28
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 29
    .line 30
    .line 31
    iget v1, p0, Lcom/haima/hmcp/virtual/bean/HmVirtualViewBean$PositionDTO;->w:I

    .line 32
    .line 33
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 34
    .line 35
    .line 36
    const-string v1, ", h="

    .line 37
    .line 38
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 39
    .line 40
    .line 41
    iget v1, p0, Lcom/haima/hmcp/virtual/bean/HmVirtualViewBean$PositionDTO;->h:I

    .line 42
    .line 43
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 44
    .line 45
    .line 46
    const/16 v1, 0x7d

    .line 47
    .line 48
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 49
    .line 50
    .line 51
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 52
    .line 53
    .line 54
    move-result-object v0

    .line 55
    return-object v0
.end method
