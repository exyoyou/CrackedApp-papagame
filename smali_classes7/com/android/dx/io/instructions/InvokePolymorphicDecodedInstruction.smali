.class public Lcom/android/dx/io/instructions/InvokePolymorphicDecodedInstruction;
.super Lcom/android/dx/io/instructions/DecodedInstruction;
.source "SourceFile"


# instance fields
.field private final protoIndex:I

.field private final registers:[I


# direct methods
.method public constructor <init>(Lcom/android/dx/io/instructions/InstructionCodec;IILcom/android/dx/io/IndexType;I[I)V
    .locals 8

    .line 1
    const/4 v5, 0x0

    .line 2
    const-wide/16 v6, 0x0

    .line 3
    .line 4
    move-object v0, p0

    .line 5
    move-object v1, p1

    .line 6
    move v2, p2

    .line 7
    move v3, p3

    .line 8
    move-object v4, p4

    .line 9
    invoke-direct/range {v0 .. v7}, Lcom/android/dx/io/instructions/DecodedInstruction;-><init>(Lcom/android/dx/io/instructions/InstructionCodec;IILcom/android/dx/io/IndexType;IJ)V

    .line 10
    .line 11
    .line 12
    int-to-short p1, p5

    .line 13
    if-ne p5, p1, :cond_0

    .line 14
    .line 15
    iput p5, p0, Lcom/android/dx/io/instructions/InvokePolymorphicDecodedInstruction;->protoIndex:I

    .line 16
    .line 17
    iput-object p6, p0, Lcom/android/dx/io/instructions/InvokePolymorphicDecodedInstruction;->registers:[I

    .line 18
    .line 19
    return-void

    .line 20
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 21
    .line 22
    new-instance p2, Ljava/lang/StringBuilder;

    .line 23
    .line 24
    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    .line 25
    .line 26
    .line 27
    const-string p3, "protoIndex doesn\'t fit in a short: "

    .line 28
    .line 29
    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 30
    .line 31
    .line 32
    invoke-virtual {p2, p5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 33
    .line 34
    .line 35
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 36
    .line 37
    .line 38
    move-result-object p2

    .line 39
    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 40
    .line 41
    .line 42
    throw p1
.end method


# virtual methods
.method public getC()I
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/android/dx/io/instructions/InvokePolymorphicDecodedInstruction;->registers:[I

    .line 2
    .line 3
    array-length v1, v0

    .line 4
    const/4 v2, 0x0

    .line 5
    if-lez v1, :cond_0

    .line 6
    .line 7
    aget v2, v0, v2

    .line 8
    .line 9
    :cond_0
    return v2
.end method

.method public getD()I
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/android/dx/io/instructions/InvokePolymorphicDecodedInstruction;->registers:[I

    .line 2
    .line 3
    array-length v1, v0

    .line 4
    const/4 v2, 0x1

    .line 5
    if-le v1, v2, :cond_0

    .line 6
    .line 7
    aget v0, v0, v2

    .line 8
    .line 9
    goto :goto_0

    .line 10
    :cond_0
    const/4 v0, 0x0

    .line 11
    :goto_0
    return v0
.end method

.method public getE()I
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/android/dx/io/instructions/InvokePolymorphicDecodedInstruction;->registers:[I

    .line 2
    .line 3
    array-length v1, v0

    .line 4
    const/4 v2, 0x2

    .line 5
    if-le v1, v2, :cond_0

    .line 6
    .line 7
    aget v0, v0, v2

    .line 8
    .line 9
    goto :goto_0

    .line 10
    :cond_0
    const/4 v0, 0x0

    .line 11
    :goto_0
    return v0
.end method

.method public getF()I
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/android/dx/io/instructions/InvokePolymorphicDecodedInstruction;->registers:[I

    .line 2
    .line 3
    array-length v1, v0

    .line 4
    const/4 v2, 0x3

    .line 5
    if-le v1, v2, :cond_0

    .line 6
    .line 7
    aget v0, v0, v2

    .line 8
    .line 9
    goto :goto_0

    .line 10
    :cond_0
    const/4 v0, 0x0

    .line 11
    :goto_0
    return v0
.end method

.method public getG()I
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/android/dx/io/instructions/InvokePolymorphicDecodedInstruction;->registers:[I

    .line 2
    .line 3
    array-length v1, v0

    .line 4
    const/4 v2, 0x4

    .line 5
    if-le v1, v2, :cond_0

    .line 6
    .line 7
    aget v0, v0, v2

    .line 8
    .line 9
    goto :goto_0

    .line 10
    :cond_0
    const/4 v0, 0x0

    .line 11
    :goto_0
    return v0
.end method

.method public getProtoIndex()S
    .locals 1

    .line 1
    iget v0, p0, Lcom/android/dx/io/instructions/InvokePolymorphicDecodedInstruction;->protoIndex:I

    .line 2
    .line 3
    int-to-short v0, v0

    .line 4
    return v0
.end method

.method public getRegisterCount()I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/dx/io/instructions/InvokePolymorphicDecodedInstruction;->registers:[I

    .line 2
    .line 3
    array-length v0, v0

    .line 4
    return v0
.end method

.method public withIndex(I)Lcom/android/dx/io/instructions/DecodedInstruction;
    .locals 1

    .line 1
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    .line 2
    .line 3
    const-string v0, "use withProtoIndex to update both the method and proto indices for invoke-polymorphic"

    .line 4
    .line 5
    invoke-direct {p1, v0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    throw p1
.end method

.method public withProtoIndex(II)Lcom/android/dx/io/instructions/DecodedInstruction;
    .locals 8

    .line 1
    new-instance v7, Lcom/android/dx/io/instructions/InvokePolymorphicDecodedInstruction;

    .line 2
    .line 3
    invoke-virtual {p0}, Lcom/android/dx/io/instructions/DecodedInstruction;->getFormat()Lcom/android/dx/io/instructions/InstructionCodec;

    .line 4
    .line 5
    .line 6
    move-result-object v1

    .line 7
    invoke-virtual {p0}, Lcom/android/dx/io/instructions/DecodedInstruction;->getOpcode()I

    .line 8
    .line 9
    .line 10
    move-result v2

    .line 11
    invoke-virtual {p0}, Lcom/android/dx/io/instructions/DecodedInstruction;->getIndexType()Lcom/android/dx/io/IndexType;

    .line 12
    .line 13
    .line 14
    move-result-object v4

    .line 15
    iget-object v6, p0, Lcom/android/dx/io/instructions/InvokePolymorphicDecodedInstruction;->registers:[I

    .line 16
    .line 17
    move-object v0, v7

    .line 18
    move v3, p1

    .line 19
    move v5, p2

    .line 20
    invoke-direct/range {v0 .. v6}, Lcom/android/dx/io/instructions/InvokePolymorphicDecodedInstruction;-><init>(Lcom/android/dx/io/instructions/InstructionCodec;IILcom/android/dx/io/IndexType;I[I)V

    .line 21
    .line 22
    .line 23
    return-object v7
.end method
