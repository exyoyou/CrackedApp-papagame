.class public Lcom/android/dx/cf/code/ByteCatchList$Item;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/dx/cf/code/ByteCatchList;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Item"
.end annotation


# instance fields
.field private final endPc:I

.field private final exceptionClass:Lcom/android/dx/rop/cst/CstType;

.field private final handlerPc:I

.field private final startPc:I


# direct methods
.method public constructor <init>(IIILcom/android/dx/rop/cst/CstType;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    if-ltz p1, :cond_2

    .line 5
    .line 6
    if-lt p2, p1, :cond_1

    .line 7
    .line 8
    if-ltz p3, :cond_0

    .line 9
    .line 10
    iput p1, p0, Lcom/android/dx/cf/code/ByteCatchList$Item;->startPc:I

    .line 11
    .line 12
    iput p2, p0, Lcom/android/dx/cf/code/ByteCatchList$Item;->endPc:I

    .line 13
    .line 14
    iput p3, p0, Lcom/android/dx/cf/code/ByteCatchList$Item;->handlerPc:I

    .line 15
    .line 16
    iput-object p4, p0, Lcom/android/dx/cf/code/ByteCatchList$Item;->exceptionClass:Lcom/android/dx/rop/cst/CstType;

    .line 17
    .line 18
    return-void

    .line 19
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 20
    .line 21
    const-string p2, "handlerPc < 0"

    .line 22
    .line 23
    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 24
    .line 25
    .line 26
    throw p1

    .line 27
    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 28
    .line 29
    const-string p2, "endPc < startPc"

    .line 30
    .line 31
    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 32
    .line 33
    .line 34
    throw p1

    .line 35
    :cond_2
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 36
    .line 37
    const-string p2, "startPc < 0"

    .line 38
    .line 39
    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 40
    .line 41
    .line 42
    throw p1
.end method


# virtual methods
.method public covers(I)Z
    .locals 1

    .line 1
    iget v0, p0, Lcom/android/dx/cf/code/ByteCatchList$Item;->startPc:I

    .line 2
    .line 3
    if-lt p1, v0, :cond_0

    .line 4
    .line 5
    iget v0, p0, Lcom/android/dx/cf/code/ByteCatchList$Item;->endPc:I

    .line 6
    .line 7
    if-ge p1, v0, :cond_0

    .line 8
    .line 9
    const/4 p1, 0x1

    .line 10
    goto :goto_0

    .line 11
    :cond_0
    const/4 p1, 0x0

    .line 12
    :goto_0
    return p1
.end method

.method public getEndPc()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/android/dx/cf/code/ByteCatchList$Item;->endPc:I

    .line 2
    .line 3
    return v0
.end method

.method public getExceptionClass()Lcom/android/dx/rop/cst/CstType;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/dx/cf/code/ByteCatchList$Item;->exceptionClass:Lcom/android/dx/rop/cst/CstType;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    goto :goto_0

    .line 6
    :cond_0
    sget-object v0, Lcom/android/dx/rop/cst/CstType;->OBJECT:Lcom/android/dx/rop/cst/CstType;

    .line 7
    .line 8
    :goto_0
    return-object v0
.end method

.method public getHandlerPc()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/android/dx/cf/code/ByteCatchList$Item;->handlerPc:I

    .line 2
    .line 3
    return v0
.end method

.method public getStartPc()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/android/dx/cf/code/ByteCatchList$Item;->startPc:I

    .line 2
    .line 3
    return v0
.end method
