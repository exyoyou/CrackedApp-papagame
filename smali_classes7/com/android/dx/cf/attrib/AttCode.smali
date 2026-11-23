.class public final Lcom/android/dx/cf/attrib/AttCode;
.super Lcom/android/dx/cf/attrib/BaseAttribute;
.source "SourceFile"


# static fields
.field public static final ATTRIBUTE_NAME:Ljava/lang/String; = "Code"


# instance fields
.field private final attributes:Lcom/android/dx/cf/iface/AttributeList;

.field private final catches:Lcom/android/dx/cf/code/ByteCatchList;

.field private final code:Lcom/android/dx/cf/code/BytecodeArray;

.field private final maxLocals:I

.field private final maxStack:I


# direct methods
.method public constructor <init>(IILcom/android/dx/cf/code/BytecodeArray;Lcom/android/dx/cf/code/ByteCatchList;Lcom/android/dx/cf/iface/AttributeList;)V
    .locals 1

    .line 1
    const-string v0, "Code"

    .line 2
    .line 3
    invoke-direct {p0, v0}, Lcom/android/dx/cf/attrib/BaseAttribute;-><init>(Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    if-ltz p1, :cond_4

    .line 7
    .line 8
    if-ltz p2, :cond_3

    .line 9
    .line 10
    if-eqz p3, :cond_2

    .line 11
    .line 12
    :try_start_0
    invoke-virtual {p4}, Lcom/android/dx/util/MutabilityControl;->isMutable()Z

    .line 13
    .line 14
    .line 15
    move-result v0
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1

    .line 16
    if-nez v0, :cond_1

    .line 17
    .line 18
    :try_start_1
    invoke-interface {p5}, Lcom/android/dx/cf/iface/AttributeList;->isMutable()Z

    .line 19
    .line 20
    .line 21
    move-result v0
    :try_end_1
    .catch Ljava/lang/NullPointerException; {:try_start_1 .. :try_end_1} :catch_0

    .line 22
    if-nez v0, :cond_0

    .line 23
    .line 24
    iput p1, p0, Lcom/android/dx/cf/attrib/AttCode;->maxStack:I

    .line 25
    .line 26
    iput p2, p0, Lcom/android/dx/cf/attrib/AttCode;->maxLocals:I

    .line 27
    .line 28
    iput-object p3, p0, Lcom/android/dx/cf/attrib/AttCode;->code:Lcom/android/dx/cf/code/BytecodeArray;

    .line 29
    .line 30
    iput-object p4, p0, Lcom/android/dx/cf/attrib/AttCode;->catches:Lcom/android/dx/cf/code/ByteCatchList;

    .line 31
    .line 32
    iput-object p5, p0, Lcom/android/dx/cf/attrib/AttCode;->attributes:Lcom/android/dx/cf/iface/AttributeList;

    .line 33
    .line 34
    return-void

    .line 35
    :cond_0
    :try_start_2
    new-instance p1, Lcom/android/dx/util/MutabilityException;

    .line 36
    .line 37
    const-string p2, "attributes.isMutable()"

    .line 38
    .line 39
    invoke-direct {p1, p2}, Lcom/android/dx/util/MutabilityException;-><init>(Ljava/lang/String;)V

    .line 40
    .line 41
    .line 42
    throw p1
    :try_end_2
    .catch Ljava/lang/NullPointerException; {:try_start_2 .. :try_end_2} :catch_0

    .line 43
    :catch_0
    new-instance p1, Ljava/lang/NullPointerException;

    .line 44
    .line 45
    const-string p2, "attributes == null"

    .line 46
    .line 47
    invoke-direct {p1, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    .line 48
    .line 49
    .line 50
    throw p1

    .line 51
    :cond_1
    :try_start_3
    new-instance p1, Lcom/android/dx/util/MutabilityException;

    .line 52
    .line 53
    const-string p2, "catches.isMutable()"

    .line 54
    .line 55
    invoke-direct {p1, p2}, Lcom/android/dx/util/MutabilityException;-><init>(Ljava/lang/String;)V

    .line 56
    .line 57
    .line 58
    throw p1
    :try_end_3
    .catch Ljava/lang/NullPointerException; {:try_start_3 .. :try_end_3} :catch_1

    .line 59
    :catch_1
    new-instance p1, Ljava/lang/NullPointerException;

    .line 60
    .line 61
    const-string p2, "catches == null"

    .line 62
    .line 63
    invoke-direct {p1, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    .line 64
    .line 65
    .line 66
    throw p1

    .line 67
    :cond_2
    new-instance p1, Ljava/lang/NullPointerException;

    .line 68
    .line 69
    const-string p2, "code == null"

    .line 70
    .line 71
    invoke-direct {p1, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    .line 72
    .line 73
    .line 74
    throw p1

    .line 75
    :cond_3
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 76
    .line 77
    const-string p2, "maxLocals < 0"

    .line 78
    .line 79
    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 80
    .line 81
    .line 82
    throw p1

    .line 83
    :cond_4
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 84
    .line 85
    const-string p2, "maxStack < 0"

    .line 86
    .line 87
    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 88
    .line 89
    .line 90
    throw p1
.end method


# virtual methods
.method public byteLength()I
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/dx/cf/attrib/AttCode;->code:Lcom/android/dx/cf/code/BytecodeArray;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/android/dx/cf/code/BytecodeArray;->byteLength()I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    add-int/lit8 v0, v0, 0xa

    .line 8
    .line 9
    iget-object v1, p0, Lcom/android/dx/cf/attrib/AttCode;->catches:Lcom/android/dx/cf/code/ByteCatchList;

    .line 10
    .line 11
    invoke-virtual {v1}, Lcom/android/dx/cf/code/ByteCatchList;->byteLength()I

    .line 12
    .line 13
    .line 14
    move-result v1

    .line 15
    add-int/2addr v0, v1

    .line 16
    iget-object v1, p0, Lcom/android/dx/cf/attrib/AttCode;->attributes:Lcom/android/dx/cf/iface/AttributeList;

    .line 17
    .line 18
    invoke-interface {v1}, Lcom/android/dx/cf/iface/AttributeList;->byteLength()I

    .line 19
    .line 20
    .line 21
    move-result v1

    .line 22
    add-int/2addr v0, v1

    .line 23
    return v0
.end method

.method public getAttributes()Lcom/android/dx/cf/iface/AttributeList;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/dx/cf/attrib/AttCode;->attributes:Lcom/android/dx/cf/iface/AttributeList;

    .line 2
    .line 3
    return-object v0
.end method

.method public getCatches()Lcom/android/dx/cf/code/ByteCatchList;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/dx/cf/attrib/AttCode;->catches:Lcom/android/dx/cf/code/ByteCatchList;

    .line 2
    .line 3
    return-object v0
.end method

.method public getCode()Lcom/android/dx/cf/code/BytecodeArray;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/dx/cf/attrib/AttCode;->code:Lcom/android/dx/cf/code/BytecodeArray;

    .line 2
    .line 3
    return-object v0
.end method

.method public getMaxLocals()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/android/dx/cf/attrib/AttCode;->maxLocals:I

    .line 2
    .line 3
    return v0
.end method

.method public getMaxStack()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/android/dx/cf/attrib/AttCode;->maxStack:I

    .line 2
    .line 3
    return v0
.end method
