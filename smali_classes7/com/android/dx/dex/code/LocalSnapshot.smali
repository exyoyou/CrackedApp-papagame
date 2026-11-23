.class public final Lcom/android/dx/dex/code/LocalSnapshot;
.super Lcom/android/dx/dex/code/ZeroSizeInsn;
.source "SourceFile"


# instance fields
.field private final locals:Lcom/android/dx/rop/code/RegisterSpecSet;


# direct methods
.method public constructor <init>(Lcom/android/dx/rop/code/SourcePosition;Lcom/android/dx/rop/code/RegisterSpecSet;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/android/dx/dex/code/ZeroSizeInsn;-><init>(Lcom/android/dx/rop/code/SourcePosition;)V

    .line 2
    .line 3
    .line 4
    if-eqz p2, :cond_0

    .line 5
    .line 6
    iput-object p2, p0, Lcom/android/dx/dex/code/LocalSnapshot;->locals:Lcom/android/dx/rop/code/RegisterSpecSet;

    .line 7
    .line 8
    return-void

    .line 9
    :cond_0
    new-instance p1, Ljava/lang/NullPointerException;

    .line 10
    .line 11
    const-string p2, "locals == null"

    .line 12
    .line 13
    invoke-direct {p1, p2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    .line 14
    .line 15
    .line 16
    throw p1
.end method


# virtual methods
.method protected argString()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/dx/dex/code/LocalSnapshot;->locals:Lcom/android/dx/rop/code/RegisterSpecSet;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/android/dx/rop/code/RegisterSpecSet;->toString()Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    return-object v0
.end method

.method public getLocals()Lcom/android/dx/rop/code/RegisterSpecSet;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/dx/dex/code/LocalSnapshot;->locals:Lcom/android/dx/rop/code/RegisterSpecSet;

    .line 2
    .line 3
    return-object v0
.end method

.method protected listingString0(Z)Ljava/lang/String;
    .locals 4

    .line 1
    iget-object p1, p0, Lcom/android/dx/dex/code/LocalSnapshot;->locals:Lcom/android/dx/rop/code/RegisterSpecSet;

    .line 2
    .line 3
    invoke-virtual {p1}, Lcom/android/dx/rop/code/RegisterSpecSet;->size()I

    .line 4
    .line 5
    .line 6
    move-result p1

    .line 7
    iget-object v0, p0, Lcom/android/dx/dex/code/LocalSnapshot;->locals:Lcom/android/dx/rop/code/RegisterSpecSet;

    .line 8
    .line 9
    invoke-virtual {v0}, Lcom/android/dx/rop/code/RegisterSpecSet;->getMaxSize()I

    .line 10
    .line 11
    .line 12
    move-result v0

    .line 13
    new-instance v1, Ljava/lang/StringBuilder;

    .line 14
    .line 15
    mul-int/lit8 p1, p1, 0x28

    .line 16
    .line 17
    add-int/lit8 p1, p1, 0x64

    .line 18
    .line 19
    invoke-direct {v1, p1}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 20
    .line 21
    .line 22
    const-string p1, "local-snapshot"

    .line 23
    .line 24
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 25
    .line 26
    .line 27
    const/4 p1, 0x0

    .line 28
    :goto_0
    if-ge p1, v0, :cond_1

    .line 29
    .line 30
    iget-object v2, p0, Lcom/android/dx/dex/code/LocalSnapshot;->locals:Lcom/android/dx/rop/code/RegisterSpecSet;

    .line 31
    .line 32
    invoke-virtual {v2, p1}, Lcom/android/dx/rop/code/RegisterSpecSet;->get(I)Lcom/android/dx/rop/code/RegisterSpec;

    .line 33
    .line 34
    .line 35
    move-result-object v2

    .line 36
    if-eqz v2, :cond_0

    .line 37
    .line 38
    const-string v3, "\n  "

    .line 39
    .line 40
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 41
    .line 42
    .line 43
    invoke-static {v2}, Lcom/android/dx/dex/code/LocalStart;->localString(Lcom/android/dx/rop/code/RegisterSpec;)Ljava/lang/String;

    .line 44
    .line 45
    .line 46
    move-result-object v2

    .line 47
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 48
    .line 49
    .line 50
    :cond_0
    add-int/lit8 p1, p1, 0x1

    .line 51
    .line 52
    goto :goto_0

    .line 53
    :cond_1
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 54
    .line 55
    .line 56
    move-result-object p1

    .line 57
    return-object p1
.end method

.method public withMapper(Lcom/android/dx/ssa/RegisterMapper;)Lcom/android/dx/dex/code/DalvInsn;
    .locals 3

    .line 1
    new-instance v0, Lcom/android/dx/dex/code/LocalSnapshot;

    .line 2
    .line 3
    invoke-virtual {p0}, Lcom/android/dx/dex/code/DalvInsn;->getPosition()Lcom/android/dx/rop/code/SourcePosition;

    .line 4
    .line 5
    .line 6
    move-result-object v1

    .line 7
    iget-object v2, p0, Lcom/android/dx/dex/code/LocalSnapshot;->locals:Lcom/android/dx/rop/code/RegisterSpecSet;

    .line 8
    .line 9
    invoke-virtual {p1, v2}, Lcom/android/dx/ssa/RegisterMapper;->map(Lcom/android/dx/rop/code/RegisterSpecSet;)Lcom/android/dx/rop/code/RegisterSpecSet;

    .line 10
    .line 11
    .line 12
    move-result-object p1

    .line 13
    invoke-direct {v0, v1, p1}, Lcom/android/dx/dex/code/LocalSnapshot;-><init>(Lcom/android/dx/rop/code/SourcePosition;Lcom/android/dx/rop/code/RegisterSpecSet;)V

    .line 14
    .line 15
    .line 16
    return-object v0
.end method

.method public withRegisterOffset(I)Lcom/android/dx/dex/code/DalvInsn;
    .locals 3

    .line 1
    new-instance v0, Lcom/android/dx/dex/code/LocalSnapshot;

    .line 2
    .line 3
    invoke-virtual {p0}, Lcom/android/dx/dex/code/DalvInsn;->getPosition()Lcom/android/dx/rop/code/SourcePosition;

    .line 4
    .line 5
    .line 6
    move-result-object v1

    .line 7
    iget-object v2, p0, Lcom/android/dx/dex/code/LocalSnapshot;->locals:Lcom/android/dx/rop/code/RegisterSpecSet;

    .line 8
    .line 9
    invoke-virtual {v2, p1}, Lcom/android/dx/rop/code/RegisterSpecSet;->withOffset(I)Lcom/android/dx/rop/code/RegisterSpecSet;

    .line 10
    .line 11
    .line 12
    move-result-object p1

    .line 13
    invoke-direct {v0, v1, p1}, Lcom/android/dx/dex/code/LocalSnapshot;-><init>(Lcom/android/dx/rop/code/SourcePosition;Lcom/android/dx/rop/code/RegisterSpecSet;)V

    .line 14
    .line 15
    .line 16
    return-object v0
.end method

.method public withRegisters(Lcom/android/dx/rop/code/RegisterSpecList;)Lcom/android/dx/dex/code/DalvInsn;
    .locals 2

    .line 1
    new-instance p1, Lcom/android/dx/dex/code/LocalSnapshot;

    .line 2
    .line 3
    invoke-virtual {p0}, Lcom/android/dx/dex/code/DalvInsn;->getPosition()Lcom/android/dx/rop/code/SourcePosition;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    iget-object v1, p0, Lcom/android/dx/dex/code/LocalSnapshot;->locals:Lcom/android/dx/rop/code/RegisterSpecSet;

    .line 8
    .line 9
    invoke-direct {p1, v0, v1}, Lcom/android/dx/dex/code/LocalSnapshot;-><init>(Lcom/android/dx/rop/code/SourcePosition;Lcom/android/dx/rop/code/RegisterSpecSet;)V

    .line 10
    .line 11
    .line 12
    return-object p1
.end method
