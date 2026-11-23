.class public final Lcom/android/dex/Annotation;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Comparable<",
        "Lcom/android/dex/Annotation;",
        ">;"
    }
.end annotation


# instance fields
.field private final dex:Lcom/android/dex/Dex;

.field private final encodedAnnotation:Lcom/android/dex/EncodedValue;

.field private final visibility:B


# direct methods
.method public constructor <init>(Lcom/android/dex/Dex;BLcom/android/dex/EncodedValue;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/android/dex/Annotation;->dex:Lcom/android/dex/Dex;

    .line 5
    .line 6
    iput-byte p2, p0, Lcom/android/dex/Annotation;->visibility:B

    .line 7
    .line 8
    iput-object p3, p0, Lcom/android/dex/Annotation;->encodedAnnotation:Lcom/android/dex/EncodedValue;

    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method public compareTo(Lcom/android/dex/Annotation;)I
    .locals 1

    .line 2
    iget-object v0, p0, Lcom/android/dex/Annotation;->encodedAnnotation:Lcom/android/dex/EncodedValue;

    iget-object p1, p1, Lcom/android/dex/Annotation;->encodedAnnotation:Lcom/android/dex/EncodedValue;

    invoke-virtual {v0, p1}, Lcom/android/dex/EncodedValue;->compareTo(Lcom/android/dex/EncodedValue;)I

    move-result p1

    return p1
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 0

    .line 1
    check-cast p1, Lcom/android/dex/Annotation;

    invoke-virtual {p0, p1}, Lcom/android/dex/Annotation;->compareTo(Lcom/android/dex/Annotation;)I

    move-result p1

    return p1
.end method

.method public getReader()Lcom/android/dex/EncodedValueReader;
    .locals 3

    .line 1
    new-instance v0, Lcom/android/dex/EncodedValueReader;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/android/dex/Annotation;->encodedAnnotation:Lcom/android/dex/EncodedValue;

    .line 4
    .line 5
    const/16 v2, 0x1d

    .line 6
    .line 7
    invoke-direct {v0, v1, v2}, Lcom/android/dex/EncodedValueReader;-><init>(Lcom/android/dex/EncodedValue;I)V

    .line 8
    .line 9
    .line 10
    return-object v0
.end method

.method public getTypeIndex()I
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/android/dex/Annotation;->getReader()Lcom/android/dex/EncodedValueReader;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0}, Lcom/android/dex/EncodedValueReader;->readAnnotation()I

    .line 6
    .line 7
    .line 8
    invoke-virtual {v0}, Lcom/android/dex/EncodedValueReader;->getAnnotationType()I

    .line 9
    .line 10
    .line 11
    move-result v0

    .line 12
    return v0
.end method

.method public getVisibility()B
    .locals 1

    .line 1
    iget-byte v0, p0, Lcom/android/dex/Annotation;->visibility:B

    .line 2
    .line 3
    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/android/dex/Annotation;->dex:Lcom/android/dex/Dex;

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
    iget-byte v2, p0, Lcom/android/dex/Annotation;->visibility:B

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
    invoke-virtual {p0}, Lcom/android/dex/Annotation;->getTypeIndex()I

    .line 21
    .line 22
    .line 23
    move-result v1

    .line 24
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 25
    .line 26
    .line 27
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 28
    .line 29
    .line 30
    move-result-object v0

    .line 31
    goto :goto_0

    .line 32
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    .line 33
    .line 34
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 35
    .line 36
    .line 37
    iget-byte v2, p0, Lcom/android/dex/Annotation;->visibility:B

    .line 38
    .line 39
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 40
    .line 41
    .line 42
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 43
    .line 44
    .line 45
    iget-object v1, p0, Lcom/android/dex/Annotation;->dex:Lcom/android/dex/Dex;

    .line 46
    .line 47
    invoke-virtual {v1}, Lcom/android/dex/Dex;->typeNames()Ljava/util/List;

    .line 48
    .line 49
    .line 50
    move-result-object v1

    .line 51
    invoke-virtual {p0}, Lcom/android/dex/Annotation;->getTypeIndex()I

    .line 52
    .line 53
    .line 54
    move-result v2

    .line 55
    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 56
    .line 57
    .line 58
    move-result-object v1

    .line 59
    check-cast v1, Ljava/lang/String;

    .line 60
    .line 61
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 62
    .line 63
    .line 64
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 65
    .line 66
    .line 67
    move-result-object v0

    .line 68
    :goto_0
    return-object v0
.end method

.method public writeTo(Lcom/android/dex/Dex$Section;)V
    .locals 1

    .line 1
    iget-byte v0, p0, Lcom/android/dex/Annotation;->visibility:B

    .line 2
    .line 3
    invoke-virtual {p1, v0}, Lcom/android/dex/Dex$Section;->writeByte(I)V

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lcom/android/dex/Annotation;->encodedAnnotation:Lcom/android/dex/EncodedValue;

    .line 7
    .line 8
    invoke-virtual {v0, p1}, Lcom/android/dex/EncodedValue;->writeTo(Lcom/android/dex/Dex$Section;)V

    .line 9
    .line 10
    .line 11
    return-void
.end method
