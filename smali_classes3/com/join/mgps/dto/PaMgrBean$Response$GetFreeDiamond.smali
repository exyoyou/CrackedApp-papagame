.class public Lcom/join/mgps/dto/PaMgrBean$Response$GetFreeDiamond;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/join/mgps/dto/PaMgrBean$Response;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "GetFreeDiamond"
.end annotation


# instance fields
.field private diamond:I

.field private nextSeconds:I


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
.method public getDiamond()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/join/mgps/dto/PaMgrBean$Response$GetFreeDiamond;->diamond:I

    .line 2
    .line 3
    return v0
.end method

.method public getNextSeconds()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/join/mgps/dto/PaMgrBean$Response$GetFreeDiamond;->nextSeconds:I

    .line 2
    .line 3
    return v0
.end method

.method public setDiamond(I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "diamond"
        }
    .end annotation

    .line 1
    iput p1, p0, Lcom/join/mgps/dto/PaMgrBean$Response$GetFreeDiamond;->diamond:I

    .line 2
    .line 3
    return-void
.end method

.method public setNextSeconds(I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "nextSeconds"
        }
    .end annotation

    .line 1
    iput p1, p0, Lcom/join/mgps/dto/PaMgrBean$Response$GetFreeDiamond;->nextSeconds:I

    .line 2
    .line 3
    return-void
.end method
