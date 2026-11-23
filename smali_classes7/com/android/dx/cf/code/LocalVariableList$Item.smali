.class public Lcom/android/dx/cf/code/LocalVariableList$Item;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/dx/cf/code/LocalVariableList;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Item"
.end annotation


# instance fields
.field private final descriptor:Lcom/android/dx/rop/cst/CstString;

.field private final index:I

.field private final length:I

.field private final name:Lcom/android/dx/rop/cst/CstString;

.field private final signature:Lcom/android/dx/rop/cst/CstString;

.field private final startPc:I


# direct methods
.method public constructor <init>(IILcom/android/dx/rop/cst/CstString;Lcom/android/dx/rop/cst/CstString;Lcom/android/dx/rop/cst/CstString;I)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    if-ltz p1, :cond_5

    .line 5
    .line 6
    if-ltz p2, :cond_4

    .line 7
    .line 8
    if-eqz p3, :cond_3

    .line 9
    .line 10
    if-nez p4, :cond_1

    .line 11
    .line 12
    if-eqz p5, :cond_0

    .line 13
    .line 14
    goto :goto_0

    .line 15
    :cond_0
    new-instance p1, Ljava/lang/NullPointerException;

    .line 16
    .line 17
    const-string p2, "(descriptor == null) && (signature == null)"

    .line 18
    .line 19
    invoke-direct {p1, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    .line 20
    .line 21
    .line 22
    throw p1

    .line 23
    :cond_1
    :goto_0
    if-ltz p6, :cond_2

    .line 24
    .line 25
    iput p1, p0, Lcom/android/dx/cf/code/LocalVariableList$Item;->startPc:I

    .line 26
    .line 27
    iput p2, p0, Lcom/android/dx/cf/code/LocalVariableList$Item;->length:I

    .line 28
    .line 29
    iput-object p3, p0, Lcom/android/dx/cf/code/LocalVariableList$Item;->name:Lcom/android/dx/rop/cst/CstString;

    .line 30
    .line 31
    iput-object p4, p0, Lcom/android/dx/cf/code/LocalVariableList$Item;->descriptor:Lcom/android/dx/rop/cst/CstString;

    .line 32
    .line 33
    iput-object p5, p0, Lcom/android/dx/cf/code/LocalVariableList$Item;->signature:Lcom/android/dx/rop/cst/CstString;

    .line 34
    .line 35
    iput p6, p0, Lcom/android/dx/cf/code/LocalVariableList$Item;->index:I

    .line 36
    .line 37
    return-void

    .line 38
    :cond_2
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 39
    .line 40
    const-string p2, "index < 0"

    .line 41
    .line 42
    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 43
    .line 44
    .line 45
    throw p1

    .line 46
    :cond_3
    new-instance p1, Ljava/lang/NullPointerException;

    .line 47
    .line 48
    const-string p2, "name == null"

    .line 49
    .line 50
    invoke-direct {p1, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    .line 51
    .line 52
    .line 53
    throw p1

    .line 54
    :cond_4
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 55
    .line 56
    const-string p2, "length < 0"

    .line 57
    .line 58
    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 59
    .line 60
    .line 61
    throw p1

    .line 62
    :cond_5
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 63
    .line 64
    const-string p2, "startPc < 0"

    .line 65
    .line 66
    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 67
    .line 68
    .line 69
    throw p1
.end method

.method static synthetic access$000(Lcom/android/dx/cf/code/LocalVariableList$Item;)Lcom/android/dx/rop/cst/CstString;
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/android/dx/cf/code/LocalVariableList$Item;->getSignature()Lcom/android/dx/rop/cst/CstString;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    return-object p0
.end method

.method private getSignature()Lcom/android/dx/rop/cst/CstString;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/dx/cf/code/LocalVariableList$Item;->signature:Lcom/android/dx/rop/cst/CstString;

    .line 2
    .line 3
    return-object v0
.end method


# virtual methods
.method public getDescriptor()Lcom/android/dx/rop/cst/CstString;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/dx/cf/code/LocalVariableList$Item;->descriptor:Lcom/android/dx/rop/cst/CstString;

    .line 2
    .line 3
    return-object v0
.end method

.method public getIndex()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/android/dx/cf/code/LocalVariableList$Item;->index:I

    .line 2
    .line 3
    return v0
.end method

.method public getLength()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/android/dx/cf/code/LocalVariableList$Item;->length:I

    .line 2
    .line 3
    return v0
.end method

.method public getLocalItem()Lcom/android/dx/rop/code/LocalItem;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/dx/cf/code/LocalVariableList$Item;->name:Lcom/android/dx/rop/cst/CstString;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/android/dx/cf/code/LocalVariableList$Item;->signature:Lcom/android/dx/rop/cst/CstString;

    .line 4
    .line 5
    invoke-static {v0, v1}, Lcom/android/dx/rop/code/LocalItem;->make(Lcom/android/dx/rop/cst/CstString;Lcom/android/dx/rop/cst/CstString;)Lcom/android/dx/rop/code/LocalItem;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    return-object v0
.end method

.method public getStartPc()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/android/dx/cf/code/LocalVariableList$Item;->startPc:I

    .line 2
    .line 3
    return v0
.end method

.method public getType()Lcom/android/dx/rop/type/Type;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/dx/cf/code/LocalVariableList$Item;->descriptor:Lcom/android/dx/rop/cst/CstString;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/android/dx/rop/cst/CstString;->getString()Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-static {v0}, Lcom/android/dx/rop/type/Type;->intern(Ljava/lang/String;)Lcom/android/dx/rop/type/Type;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    return-object v0
.end method

.method public matchesAllButType(Lcom/android/dx/cf/code/LocalVariableList$Item;)Z
    .locals 2

    .line 1
    iget v0, p0, Lcom/android/dx/cf/code/LocalVariableList$Item;->startPc:I

    .line 2
    .line 3
    iget v1, p1, Lcom/android/dx/cf/code/LocalVariableList$Item;->startPc:I

    .line 4
    .line 5
    if-ne v0, v1, :cond_0

    .line 6
    .line 7
    iget v0, p0, Lcom/android/dx/cf/code/LocalVariableList$Item;->length:I

    .line 8
    .line 9
    iget v1, p1, Lcom/android/dx/cf/code/LocalVariableList$Item;->length:I

    .line 10
    .line 11
    if-ne v0, v1, :cond_0

    .line 12
    .line 13
    iget v0, p0, Lcom/android/dx/cf/code/LocalVariableList$Item;->index:I

    .line 14
    .line 15
    iget v1, p1, Lcom/android/dx/cf/code/LocalVariableList$Item;->index:I

    .line 16
    .line 17
    if-ne v0, v1, :cond_0

    .line 18
    .line 19
    iget-object v0, p0, Lcom/android/dx/cf/code/LocalVariableList$Item;->name:Lcom/android/dx/rop/cst/CstString;

    .line 20
    .line 21
    iget-object p1, p1, Lcom/android/dx/cf/code/LocalVariableList$Item;->name:Lcom/android/dx/rop/cst/CstString;

    .line 22
    .line 23
    invoke-virtual {v0, p1}, Lcom/android/dx/rop/cst/CstString;->equals(Ljava/lang/Object;)Z

    .line 24
    .line 25
    .line 26
    move-result p1

    .line 27
    if-eqz p1, :cond_0

    .line 28
    .line 29
    const/4 p1, 0x1

    .line 30
    goto :goto_0

    .line 31
    :cond_0
    const/4 p1, 0x0

    .line 32
    :goto_0
    return p1
.end method

.method public matchesPcAndIndex(II)Z
    .locals 1

    .line 1
    iget v0, p0, Lcom/android/dx/cf/code/LocalVariableList$Item;->index:I

    .line 2
    .line 3
    if-ne p2, v0, :cond_0

    .line 4
    .line 5
    iget p2, p0, Lcom/android/dx/cf/code/LocalVariableList$Item;->startPc:I

    .line 6
    .line 7
    if-lt p1, p2, :cond_0

    .line 8
    .line 9
    iget v0, p0, Lcom/android/dx/cf/code/LocalVariableList$Item;->length:I

    .line 10
    .line 11
    add-int/2addr p2, v0

    .line 12
    if-ge p1, p2, :cond_0

    .line 13
    .line 14
    const/4 p1, 0x1

    .line 15
    goto :goto_0

    .line 16
    :cond_0
    const/4 p1, 0x0

    .line 17
    :goto_0
    return p1
.end method

.method public withSignature(Lcom/android/dx/rop/cst/CstString;)Lcom/android/dx/cf/code/LocalVariableList$Item;
    .locals 8

    .line 1
    new-instance v7, Lcom/android/dx/cf/code/LocalVariableList$Item;

    .line 2
    .line 3
    iget v1, p0, Lcom/android/dx/cf/code/LocalVariableList$Item;->startPc:I

    .line 4
    .line 5
    iget v2, p0, Lcom/android/dx/cf/code/LocalVariableList$Item;->length:I

    .line 6
    .line 7
    iget-object v3, p0, Lcom/android/dx/cf/code/LocalVariableList$Item;->name:Lcom/android/dx/rop/cst/CstString;

    .line 8
    .line 9
    iget-object v4, p0, Lcom/android/dx/cf/code/LocalVariableList$Item;->descriptor:Lcom/android/dx/rop/cst/CstString;

    .line 10
    .line 11
    iget v6, p0, Lcom/android/dx/cf/code/LocalVariableList$Item;->index:I

    .line 12
    .line 13
    move-object v0, v7

    .line 14
    move-object v5, p1

    .line 15
    invoke-direct/range {v0 .. v6}, Lcom/android/dx/cf/code/LocalVariableList$Item;-><init>(IILcom/android/dx/rop/cst/CstString;Lcom/android/dx/rop/cst/CstString;Lcom/android/dx/rop/cst/CstString;I)V

    .line 16
    .line 17
    .line 18
    return-object v7
.end method
