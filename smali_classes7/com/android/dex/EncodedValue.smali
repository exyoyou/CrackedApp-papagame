.class public final Lcom/android/dex/EncodedValue;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Comparable<",
        "Lcom/android/dex/EncodedValue;",
        ">;"
    }
.end annotation


# instance fields
.field private final data:[B


# direct methods
.method public constructor <init>([B)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/android/dex/EncodedValue;->data:[B

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public asByteInput()Lcom/android/dex/util/ByteInput;
    .locals 2

    .line 1
    new-instance v0, Lcom/android/dex/util/ByteArrayByteInput;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/android/dex/EncodedValue;->data:[B

    .line 4
    .line 5
    invoke-direct {v0, v1}, Lcom/android/dex/util/ByteArrayByteInput;-><init>([B)V

    .line 6
    .line 7
    .line 8
    return-object v0
.end method

.method public compareTo(Lcom/android/dex/EncodedValue;)I
    .locals 4

    .line 2
    iget-object v0, p0, Lcom/android/dex/EncodedValue;->data:[B

    array-length v0, v0

    iget-object v1, p1, Lcom/android/dex/EncodedValue;->data:[B

    array-length v1, v1

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    .line 3
    iget-object v2, p0, Lcom/android/dex/EncodedValue;->data:[B

    aget-byte v2, v2, v1

    iget-object v3, p1, Lcom/android/dex/EncodedValue;->data:[B

    aget-byte v3, v3, v1

    if-eq v2, v3, :cond_0

    and-int/lit16 p1, v2, 0xff

    and-int/lit16 v0, v3, 0xff

    sub-int/2addr p1, v0

    return p1

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 4
    :cond_1
    iget-object v0, p0, Lcom/android/dex/EncodedValue;->data:[B

    array-length v0, v0

    iget-object p1, p1, Lcom/android/dex/EncodedValue;->data:[B

    array-length p1, p1

    sub-int/2addr v0, p1

    return v0
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 0

    .line 1
    check-cast p1, Lcom/android/dex/EncodedValue;

    invoke-virtual {p0, p1}, Lcom/android/dex/EncodedValue;->compareTo(Lcom/android/dex/EncodedValue;)I

    move-result p1

    return p1
.end method

.method public getBytes()[B
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/dex/EncodedValue;->data:[B

    .line 2
    .line 3
    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 4
    .line 5
    .line 6
    iget-object v1, p0, Lcom/android/dex/EncodedValue;->data:[B

    .line 7
    .line 8
    const/4 v2, 0x0

    .line 9
    aget-byte v1, v1, v2

    .line 10
    .line 11
    and-int/lit16 v1, v1, 0xff

    .line 12
    .line 13
    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    .line 14
    .line 15
    .line 16
    move-result-object v1

    .line 17
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 18
    .line 19
    .line 20
    const-string v1, "...("

    .line 21
    .line 22
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 23
    .line 24
    .line 25
    iget-object v1, p0, Lcom/android/dex/EncodedValue;->data:[B

    .line 26
    .line 27
    array-length v1, v1

    .line 28
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 29
    .line 30
    .line 31
    const-string v1, ")"

    .line 32
    .line 33
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 34
    .line 35
    .line 36
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 37
    .line 38
    .line 39
    move-result-object v0

    .line 40
    return-object v0
.end method

.method public writeTo(Lcom/android/dex/Dex$Section;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/dex/EncodedValue;->data:[B

    .line 2
    .line 3
    invoke-virtual {p1, v0}, Lcom/android/dex/Dex$Section;->write([B)V

    .line 4
    .line 5
    .line 6
    return-void
.end method
