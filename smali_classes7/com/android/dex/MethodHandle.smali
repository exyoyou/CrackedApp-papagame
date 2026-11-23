.class public Lcom/android/dex/MethodHandle;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/dex/MethodHandle$MethodHandleType;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Comparable<",
        "Lcom/android/dex/MethodHandle;",
        ">;"
    }
.end annotation


# instance fields
.field private final dex:Lcom/android/dex/Dex;

.field private final fieldOrMethodId:I

.field private final methodHandleType:Lcom/android/dex/MethodHandle$MethodHandleType;

.field private final unused1:I

.field private final unused2:I


# direct methods
.method public constructor <init>(Lcom/android/dex/Dex;Lcom/android/dex/MethodHandle$MethodHandleType;III)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/android/dex/MethodHandle;->dex:Lcom/android/dex/Dex;

    .line 5
    .line 6
    iput-object p2, p0, Lcom/android/dex/MethodHandle;->methodHandleType:Lcom/android/dex/MethodHandle$MethodHandleType;

    .line 7
    .line 8
    iput p3, p0, Lcom/android/dex/MethodHandle;->unused1:I

    .line 9
    .line 10
    iput p4, p0, Lcom/android/dex/MethodHandle;->fieldOrMethodId:I

    .line 11
    .line 12
    iput p5, p0, Lcom/android/dex/MethodHandle;->unused2:I

    .line 13
    .line 14
    return-void
.end method


# virtual methods
.method public compareTo(Lcom/android/dex/MethodHandle;)I
    .locals 2

    .line 2
    iget-object v0, p0, Lcom/android/dex/MethodHandle;->methodHandleType:Lcom/android/dex/MethodHandle$MethodHandleType;

    iget-object v1, p1, Lcom/android/dex/MethodHandle;->methodHandleType:Lcom/android/dex/MethodHandle$MethodHandleType;

    if-eq v0, v1, :cond_0

    .line 3
    invoke-virtual {v0, v1}, Ljava/lang/Enum;->compareTo(Ljava/lang/Enum;)I

    move-result p1

    return p1

    .line 4
    :cond_0
    iget v0, p0, Lcom/android/dex/MethodHandle;->fieldOrMethodId:I

    iget p1, p1, Lcom/android/dex/MethodHandle;->fieldOrMethodId:I

    invoke-static {v0, p1}, Lcom/android/dex/util/Unsigned;->compare(II)I

    move-result p1

    return p1
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 0

    .line 1
    check-cast p1, Lcom/android/dex/MethodHandle;

    invoke-virtual {p0, p1}, Lcom/android/dex/MethodHandle;->compareTo(Lcom/android/dex/MethodHandle;)I

    move-result p1

    return p1
.end method

.method public getFieldOrMethodId()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/android/dex/MethodHandle;->fieldOrMethodId:I

    .line 2
    .line 3
    return v0
.end method

.method public getMethodHandleType()Lcom/android/dex/MethodHandle$MethodHandleType;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/dex/MethodHandle;->methodHandleType:Lcom/android/dex/MethodHandle$MethodHandleType;

    .line 2
    .line 3
    return-object v0
.end method

.method public getUnused1()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/android/dex/MethodHandle;->unused1:I

    .line 2
    .line 3
    return v0
.end method

.method public getUnused2()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/android/dex/MethodHandle;->unused2:I

    .line 2
    .line 3
    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/android/dex/MethodHandle;->dex:Lcom/android/dex/Dex;

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
    iget-object v2, p0, Lcom/android/dex/MethodHandle;->methodHandleType:Lcom/android/dex/MethodHandle$MethodHandleType;

    .line 13
    .line 14
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 15
    .line 16
    .line 17
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 18
    .line 19
    .line 20
    iget v1, p0, Lcom/android/dex/MethodHandle;->fieldOrMethodId:I

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
    iget-object v2, p0, Lcom/android/dex/MethodHandle;->methodHandleType:Lcom/android/dex/MethodHandle$MethodHandleType;

    .line 36
    .line 37
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 38
    .line 39
    .line 40
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 41
    .line 42
    .line 43
    iget-object v1, p0, Lcom/android/dex/MethodHandle;->methodHandleType:Lcom/android/dex/MethodHandle$MethodHandleType;

    .line 44
    .line 45
    invoke-virtual {v1}, Lcom/android/dex/MethodHandle$MethodHandleType;->isField()Z

    .line 46
    .line 47
    .line 48
    move-result v1

    .line 49
    if-eqz v1, :cond_1

    .line 50
    .line 51
    iget-object v1, p0, Lcom/android/dex/MethodHandle;->dex:Lcom/android/dex/Dex;

    .line 52
    .line 53
    invoke-virtual {v1}, Lcom/android/dex/Dex;->fieldIds()Ljava/util/List;

    .line 54
    .line 55
    .line 56
    move-result-object v1

    .line 57
    iget v2, p0, Lcom/android/dex/MethodHandle;->fieldOrMethodId:I

    .line 58
    .line 59
    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 60
    .line 61
    .line 62
    move-result-object v1

    .line 63
    check-cast v1, Ljava/lang/Comparable;

    .line 64
    .line 65
    goto :goto_0

    .line 66
    :cond_1
    iget-object v1, p0, Lcom/android/dex/MethodHandle;->dex:Lcom/android/dex/Dex;

    .line 67
    .line 68
    invoke-virtual {v1}, Lcom/android/dex/Dex;->methodIds()Ljava/util/List;

    .line 69
    .line 70
    .line 71
    move-result-object v1

    .line 72
    iget v2, p0, Lcom/android/dex/MethodHandle;->fieldOrMethodId:I

    .line 73
    .line 74
    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 75
    .line 76
    .line 77
    move-result-object v1

    .line 78
    check-cast v1, Ljava/lang/Comparable;

    .line 79
    .line 80
    :goto_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 81
    .line 82
    .line 83
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 84
    .line 85
    .line 86
    move-result-object v0

    .line 87
    return-object v0
.end method

.method public writeTo(Lcom/android/dex/Dex$Section;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/dex/MethodHandle;->methodHandleType:Lcom/android/dex/MethodHandle$MethodHandleType;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/android/dex/MethodHandle$MethodHandleType;->access$000(Lcom/android/dex/MethodHandle$MethodHandleType;)I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    invoke-virtual {p1, v0}, Lcom/android/dex/Dex$Section;->writeUnsignedShort(I)V

    .line 8
    .line 9
    .line 10
    iget v0, p0, Lcom/android/dex/MethodHandle;->unused1:I

    .line 11
    .line 12
    invoke-virtual {p1, v0}, Lcom/android/dex/Dex$Section;->writeUnsignedShort(I)V

    .line 13
    .line 14
    .line 15
    iget v0, p0, Lcom/android/dex/MethodHandle;->fieldOrMethodId:I

    .line 16
    .line 17
    invoke-virtual {p1, v0}, Lcom/android/dex/Dex$Section;->writeUnsignedShort(I)V

    .line 18
    .line 19
    .line 20
    iget v0, p0, Lcom/android/dex/MethodHandle;->unused2:I

    .line 21
    .line 22
    invoke-virtual {p1, v0}, Lcom/android/dex/Dex$Section;->writeUnsignedShort(I)V

    .line 23
    .line 24
    .line 25
    return-void
.end method
