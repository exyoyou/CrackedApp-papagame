.class public final Lcom/android/dx/dex/code/Dop;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final family:I

.field private final format:Lcom/android/dx/dex/code/InsnFormat;

.field private final hasResult:Z

.field private final nextOpcode:I

.field private final opcode:I


# direct methods
.method public constructor <init>(IIILcom/android/dx/dex/code/InsnFormat;Z)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    invoke-static {p1}, Lcom/android/dx/io/Opcodes;->isValidShape(I)Z

    .line 5
    .line 6
    .line 7
    move-result v0

    .line 8
    if-eqz v0, :cond_3

    .line 9
    .line 10
    invoke-static {p2}, Lcom/android/dx/io/Opcodes;->isValidShape(I)Z

    .line 11
    .line 12
    .line 13
    move-result v0

    .line 14
    if-eqz v0, :cond_2

    .line 15
    .line 16
    invoke-static {p3}, Lcom/android/dx/io/Opcodes;->isValidShape(I)Z

    .line 17
    .line 18
    .line 19
    move-result v0

    .line 20
    if-eqz v0, :cond_1

    .line 21
    .line 22
    if-eqz p4, :cond_0

    .line 23
    .line 24
    iput p1, p0, Lcom/android/dx/dex/code/Dop;->opcode:I

    .line 25
    .line 26
    iput p2, p0, Lcom/android/dx/dex/code/Dop;->family:I

    .line 27
    .line 28
    iput p3, p0, Lcom/android/dx/dex/code/Dop;->nextOpcode:I

    .line 29
    .line 30
    iput-object p4, p0, Lcom/android/dx/dex/code/Dop;->format:Lcom/android/dx/dex/code/InsnFormat;

    .line 31
    .line 32
    iput-boolean p5, p0, Lcom/android/dx/dex/code/Dop;->hasResult:Z

    .line 33
    .line 34
    return-void

    .line 35
    :cond_0
    new-instance p1, Ljava/lang/NullPointerException;

    .line 36
    .line 37
    const-string p2, "format == null"

    .line 38
    .line 39
    invoke-direct {p1, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    .line 40
    .line 41
    .line 42
    throw p1

    .line 43
    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 44
    .line 45
    const-string p2, "bogus nextOpcode"

    .line 46
    .line 47
    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 48
    .line 49
    .line 50
    throw p1

    .line 51
    :cond_2
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 52
    .line 53
    const-string p2, "bogus family"

    .line 54
    .line 55
    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 56
    .line 57
    .line 58
    throw p1

    .line 59
    :cond_3
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 60
    .line 61
    const-string p2, "bogus opcode"

    .line 62
    .line 63
    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 64
    .line 65
    .line 66
    throw p1
.end method


# virtual methods
.method public getFamily()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/android/dx/dex/code/Dop;->family:I

    .line 2
    .line 3
    return v0
.end method

.method public getFormat()Lcom/android/dx/dex/code/InsnFormat;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/dx/dex/code/Dop;->format:Lcom/android/dx/dex/code/InsnFormat;

    .line 2
    .line 3
    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .line 1
    iget v0, p0, Lcom/android/dx/dex/code/Dop;->opcode:I

    .line 2
    .line 3
    invoke-static {v0}, Lcom/android/dx/io/OpcodeInfo;->getName(I)Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    return-object v0
.end method

.method public getNextOpcode()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/android/dx/dex/code/Dop;->nextOpcode:I

    .line 2
    .line 3
    return v0
.end method

.method public getOpcode()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/android/dx/dex/code/Dop;->opcode:I

    .line 2
    .line 3
    return v0
.end method

.method public getOppositeTest()Lcom/android/dx/dex/code/Dop;
    .locals 3

    .line 1
    iget v0, p0, Lcom/android/dx/dex/code/Dop;->opcode:I

    .line 2
    .line 3
    packed-switch v0, :pswitch_data_0

    .line 4
    .line 5
    .line 6
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 7
    .line 8
    new-instance v1, Ljava/lang/StringBuilder;

    .line 9
    .line 10
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 11
    .line 12
    .line 13
    const-string v2, "bogus opcode: "

    .line 14
    .line 15
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 16
    .line 17
    .line 18
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 19
    .line 20
    .line 21
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 22
    .line 23
    .line 24
    move-result-object v1

    .line 25
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 26
    .line 27
    .line 28
    throw v0

    .line 29
    :pswitch_0
    sget-object v0, Lcom/android/dx/dex/code/Dops;->IF_GTZ:Lcom/android/dx/dex/code/Dop;

    .line 30
    .line 31
    return-object v0

    .line 32
    :pswitch_1
    sget-object v0, Lcom/android/dx/dex/code/Dops;->IF_LEZ:Lcom/android/dx/dex/code/Dop;

    .line 33
    .line 34
    return-object v0

    .line 35
    :pswitch_2
    sget-object v0, Lcom/android/dx/dex/code/Dops;->IF_LTZ:Lcom/android/dx/dex/code/Dop;

    .line 36
    .line 37
    return-object v0

    .line 38
    :pswitch_3
    sget-object v0, Lcom/android/dx/dex/code/Dops;->IF_GEZ:Lcom/android/dx/dex/code/Dop;

    .line 39
    .line 40
    return-object v0

    .line 41
    :pswitch_4
    sget-object v0, Lcom/android/dx/dex/code/Dops;->IF_EQZ:Lcom/android/dx/dex/code/Dop;

    .line 42
    .line 43
    return-object v0

    .line 44
    :pswitch_5
    sget-object v0, Lcom/android/dx/dex/code/Dops;->IF_NEZ:Lcom/android/dx/dex/code/Dop;

    .line 45
    .line 46
    return-object v0

    .line 47
    :pswitch_6
    sget-object v0, Lcom/android/dx/dex/code/Dops;->IF_GT:Lcom/android/dx/dex/code/Dop;

    .line 48
    .line 49
    return-object v0

    .line 50
    :pswitch_7
    sget-object v0, Lcom/android/dx/dex/code/Dops;->IF_LE:Lcom/android/dx/dex/code/Dop;

    .line 51
    .line 52
    return-object v0

    .line 53
    :pswitch_8
    sget-object v0, Lcom/android/dx/dex/code/Dops;->IF_LT:Lcom/android/dx/dex/code/Dop;

    .line 54
    .line 55
    return-object v0

    .line 56
    :pswitch_9
    sget-object v0, Lcom/android/dx/dex/code/Dops;->IF_GE:Lcom/android/dx/dex/code/Dop;

    .line 57
    .line 58
    return-object v0

    .line 59
    :pswitch_a
    sget-object v0, Lcom/android/dx/dex/code/Dops;->IF_EQ:Lcom/android/dx/dex/code/Dop;

    .line 60
    .line 61
    return-object v0

    .line 62
    :pswitch_b
    sget-object v0, Lcom/android/dx/dex/code/Dops;->IF_NE:Lcom/android/dx/dex/code/Dop;

    .line 63
    .line 64
    return-object v0

    .line 65
    :pswitch_data_0
    .packed-switch 0x32
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public hasResult()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/android/dx/dex/code/Dop;->hasResult:Z

    .line 2
    .line 3
    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/android/dx/dex/code/Dop;->getName()Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    return-object v0
.end method
