.class public final Lcom/android/dex/ProtoId;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Comparable<",
        "Lcom/android/dex/ProtoId;",
        ">;"
    }
.end annotation


# instance fields
.field private final dex:Lcom/android/dex/Dex;

.field private final parametersOffset:I

.field private final returnTypeIndex:I

.field private final shortyIndex:I


# direct methods
.method public constructor <init>(Lcom/android/dex/Dex;III)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/android/dex/ProtoId;->dex:Lcom/android/dex/Dex;

    .line 5
    .line 6
    iput p2, p0, Lcom/android/dex/ProtoId;->shortyIndex:I

    .line 7
    .line 8
    iput p3, p0, Lcom/android/dex/ProtoId;->returnTypeIndex:I

    .line 9
    .line 10
    iput p4, p0, Lcom/android/dex/ProtoId;->parametersOffset:I

    .line 11
    .line 12
    return-void
.end method


# virtual methods
.method public compareTo(Lcom/android/dex/ProtoId;)I
    .locals 2

    .line 2
    iget v0, p0, Lcom/android/dex/ProtoId;->returnTypeIndex:I

    iget v1, p1, Lcom/android/dex/ProtoId;->returnTypeIndex:I

    if-eq v0, v1, :cond_0

    .line 3
    invoke-static {v0, v1}, Lcom/android/dex/util/Unsigned;->compare(II)I

    move-result p1

    return p1

    .line 4
    :cond_0
    iget v0, p0, Lcom/android/dex/ProtoId;->parametersOffset:I

    iget p1, p1, Lcom/android/dex/ProtoId;->parametersOffset:I

    invoke-static {v0, p1}, Lcom/android/dex/util/Unsigned;->compare(II)I

    move-result p1

    return p1
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 0

    .line 1
    check-cast p1, Lcom/android/dex/ProtoId;

    invoke-virtual {p0, p1}, Lcom/android/dex/ProtoId;->compareTo(Lcom/android/dex/ProtoId;)I

    move-result p1

    return p1
.end method

.method public getParametersOffset()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/android/dex/ProtoId;->parametersOffset:I

    .line 2
    .line 3
    return v0
.end method

.method public getReturnTypeIndex()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/android/dex/ProtoId;->returnTypeIndex:I

    .line 2
    .line 3
    return v0
.end method

.method public getShortyIndex()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/android/dex/ProtoId;->shortyIndex:I

    .line 2
    .line 3
    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/android/dex/ProtoId;->dex:Lcom/android/dex/Dex;

    .line 2
    .line 3
    const-string v1, " "

    .line 4
    .line 5
    if-nez v0, :cond_0

    .line 6
    .line 7
    new-instance v0, Ljava/lang/StringBuilder;

    .line 8
    .line 9
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 10
    .line 11
    .line 12
    iget v2, p0, Lcom/android/dex/ProtoId;->shortyIndex:I

    .line 13
    .line 14
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 15
    .line 16
    .line 17
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 18
    .line 19
    .line 20
    iget v2, p0, Lcom/android/dex/ProtoId;->returnTypeIndex:I

    .line 21
    .line 22
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 23
    .line 24
    .line 25
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 26
    .line 27
    .line 28
    iget v1, p0, Lcom/android/dex/ProtoId;->parametersOffset:I

    .line 29
    .line 30
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 31
    .line 32
    .line 33
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 34
    .line 35
    .line 36
    move-result-object v0

    .line 37
    return-object v0

    .line 38
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    .line 39
    .line 40
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 41
    .line 42
    .line 43
    iget-object v2, p0, Lcom/android/dex/ProtoId;->dex:Lcom/android/dex/Dex;

    .line 44
    .line 45
    invoke-virtual {v2}, Lcom/android/dex/Dex;->strings()Ljava/util/List;

    .line 46
    .line 47
    .line 48
    move-result-object v2

    .line 49
    iget v3, p0, Lcom/android/dex/ProtoId;->shortyIndex:I

    .line 50
    .line 51
    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 52
    .line 53
    .line 54
    move-result-object v2

    .line 55
    check-cast v2, Ljava/lang/String;

    .line 56
    .line 57
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 58
    .line 59
    .line 60
    const-string v2, ": "

    .line 61
    .line 62
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 63
    .line 64
    .line 65
    iget-object v2, p0, Lcom/android/dex/ProtoId;->dex:Lcom/android/dex/Dex;

    .line 66
    .line 67
    invoke-virtual {v2}, Lcom/android/dex/Dex;->typeNames()Ljava/util/List;

    .line 68
    .line 69
    .line 70
    move-result-object v2

    .line 71
    iget v3, p0, Lcom/android/dex/ProtoId;->returnTypeIndex:I

    .line 72
    .line 73
    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 74
    .line 75
    .line 76
    move-result-object v2

    .line 77
    check-cast v2, Ljava/lang/String;

    .line 78
    .line 79
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 80
    .line 81
    .line 82
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 83
    .line 84
    .line 85
    iget-object v1, p0, Lcom/android/dex/ProtoId;->dex:Lcom/android/dex/Dex;

    .line 86
    .line 87
    iget v2, p0, Lcom/android/dex/ProtoId;->parametersOffset:I

    .line 88
    .line 89
    invoke-virtual {v1, v2}, Lcom/android/dex/Dex;->readTypeList(I)Lcom/android/dex/TypeList;

    .line 90
    .line 91
    .line 92
    move-result-object v1

    .line 93
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 94
    .line 95
    .line 96
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 97
    .line 98
    .line 99
    move-result-object v0

    .line 100
    return-object v0
.end method

.method public writeTo(Lcom/android/dex/Dex$Section;)V
    .locals 1

    .line 1
    iget v0, p0, Lcom/android/dex/ProtoId;->shortyIndex:I

    .line 2
    .line 3
    invoke-virtual {p1, v0}, Lcom/android/dex/Dex$Section;->writeInt(I)V

    .line 4
    .line 5
    .line 6
    iget v0, p0, Lcom/android/dex/ProtoId;->returnTypeIndex:I

    .line 7
    .line 8
    invoke-virtual {p1, v0}, Lcom/android/dex/Dex$Section;->writeInt(I)V

    .line 9
    .line 10
    .line 11
    iget v0, p0, Lcom/android/dex/ProtoId;->parametersOffset:I

    .line 12
    .line 13
    invoke-virtual {p1, v0}, Lcom/android/dex/Dex$Section;->writeInt(I)V

    .line 14
    .line 15
    .line 16
    return-void
.end method
