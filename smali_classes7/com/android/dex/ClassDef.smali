.class public final Lcom/android/dex/ClassDef;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final NO_INDEX:I = -0x1


# instance fields
.field private final accessFlags:I

.field private final annotationsOffset:I

.field private final buffer:Lcom/android/dex/Dex;

.field private final classDataOffset:I

.field private final interfacesOffset:I

.field private final offset:I

.field private final sourceFileIndex:I

.field private final staticValuesOffset:I

.field private final supertypeIndex:I

.field private final typeIndex:I


# direct methods
.method public constructor <init>(Lcom/android/dex/Dex;IIIIIIIII)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/android/dex/ClassDef;->buffer:Lcom/android/dex/Dex;

    .line 5
    .line 6
    iput p2, p0, Lcom/android/dex/ClassDef;->offset:I

    .line 7
    .line 8
    iput p3, p0, Lcom/android/dex/ClassDef;->typeIndex:I

    .line 9
    .line 10
    iput p4, p0, Lcom/android/dex/ClassDef;->accessFlags:I

    .line 11
    .line 12
    iput p5, p0, Lcom/android/dex/ClassDef;->supertypeIndex:I

    .line 13
    .line 14
    iput p6, p0, Lcom/android/dex/ClassDef;->interfacesOffset:I

    .line 15
    .line 16
    iput p7, p0, Lcom/android/dex/ClassDef;->sourceFileIndex:I

    .line 17
    .line 18
    iput p8, p0, Lcom/android/dex/ClassDef;->annotationsOffset:I

    .line 19
    .line 20
    iput p9, p0, Lcom/android/dex/ClassDef;->classDataOffset:I

    .line 21
    .line 22
    iput p10, p0, Lcom/android/dex/ClassDef;->staticValuesOffset:I

    .line 23
    .line 24
    return-void
.end method


# virtual methods
.method public getAccessFlags()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/android/dex/ClassDef;->accessFlags:I

    .line 2
    .line 3
    return v0
.end method

.method public getAnnotationsOffset()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/android/dex/ClassDef;->annotationsOffset:I

    .line 2
    .line 3
    return v0
.end method

.method public getClassDataOffset()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/android/dex/ClassDef;->classDataOffset:I

    .line 2
    .line 3
    return v0
.end method

.method public getInterfaces()[S
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/dex/ClassDef;->buffer:Lcom/android/dex/Dex;

    .line 2
    .line 3
    iget v1, p0, Lcom/android/dex/ClassDef;->interfacesOffset:I

    .line 4
    .line 5
    invoke-virtual {v0, v1}, Lcom/android/dex/Dex;->readTypeList(I)Lcom/android/dex/TypeList;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    invoke-virtual {v0}, Lcom/android/dex/TypeList;->getTypes()[S

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    return-object v0
.end method

.method public getInterfacesOffset()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/android/dex/ClassDef;->interfacesOffset:I

    .line 2
    .line 3
    return v0
.end method

.method public getOffset()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/android/dex/ClassDef;->offset:I

    .line 2
    .line 3
    return v0
.end method

.method public getSourceFileIndex()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/android/dex/ClassDef;->sourceFileIndex:I

    .line 2
    .line 3
    return v0
.end method

.method public getStaticValuesOffset()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/android/dex/ClassDef;->staticValuesOffset:I

    .line 2
    .line 3
    return v0
.end method

.method public getSupertypeIndex()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/android/dex/ClassDef;->supertypeIndex:I

    .line 2
    .line 3
    return v0
.end method

.method public getTypeIndex()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/android/dex/ClassDef;->typeIndex:I

    .line 2
    .line 3
    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/android/dex/ClassDef;->buffer:Lcom/android/dex/Dex;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    new-instance v0, Ljava/lang/StringBuilder;

    .line 6
    .line 7
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 8
    .line 9
    .line 10
    iget v1, p0, Lcom/android/dex/ClassDef;->typeIndex:I

    .line 11
    .line 12
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 13
    .line 14
    .line 15
    const-string v1, " "

    .line 16
    .line 17
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 18
    .line 19
    .line 20
    iget v1, p0, Lcom/android/dex/ClassDef;->supertypeIndex:I

    .line 21
    .line 22
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 23
    .line 24
    .line 25
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 26
    .line 27
    .line 28
    move-result-object v0

    .line 29
    return-object v0

    .line 30
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    .line 31
    .line 32
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 33
    .line 34
    .line 35
    iget-object v1, p0, Lcom/android/dex/ClassDef;->buffer:Lcom/android/dex/Dex;

    .line 36
    .line 37
    invoke-virtual {v1}, Lcom/android/dex/Dex;->typeNames()Ljava/util/List;

    .line 38
    .line 39
    .line 40
    move-result-object v1

    .line 41
    iget v2, p0, Lcom/android/dex/ClassDef;->typeIndex:I

    .line 42
    .line 43
    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 44
    .line 45
    .line 46
    move-result-object v1

    .line 47
    check-cast v1, Ljava/lang/String;

    .line 48
    .line 49
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 50
    .line 51
    .line 52
    iget v1, p0, Lcom/android/dex/ClassDef;->supertypeIndex:I

    .line 53
    .line 54
    const/4 v2, -0x1

    .line 55
    if-eq v1, v2, :cond_1

    .line 56
    .line 57
    const-string v1, " extends "

    .line 58
    .line 59
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 60
    .line 61
    .line 62
    iget-object v1, p0, Lcom/android/dex/ClassDef;->buffer:Lcom/android/dex/Dex;

    .line 63
    .line 64
    invoke-virtual {v1}, Lcom/android/dex/Dex;->typeNames()Ljava/util/List;

    .line 65
    .line 66
    .line 67
    move-result-object v1

    .line 68
    iget v2, p0, Lcom/android/dex/ClassDef;->supertypeIndex:I

    .line 69
    .line 70
    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 71
    .line 72
    .line 73
    move-result-object v1

    .line 74
    check-cast v1, Ljava/lang/String;

    .line 75
    .line 76
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 77
    .line 78
    .line 79
    :cond_1
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 80
    .line 81
    .line 82
    move-result-object v0

    .line 83
    return-object v0
.end method
