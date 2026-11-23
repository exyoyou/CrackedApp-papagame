.class Lorg/hmwebrtc/AndroidVideoDecodeSwapBuffer$DecodeFrameBuffer;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/hmwebrtc/AndroidVideoDecodeSwapBuffer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "DecodeFrameBuffer"
.end annotation


# instance fields
.field private mCapacity:I

.field private mFrameBuffer:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lorg/hmwebrtc/AndroidVideoDecodeSwapBuffer$DecodeFrameInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mReadIndex:I

.field private mSize:I

.field private mWriteIndex:I


# direct methods
.method public constructor <init>(I)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Ljava/util/ArrayList;

    .line 5
    .line 6
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 7
    .line 8
    .line 9
    iput-object v0, p0, Lorg/hmwebrtc/AndroidVideoDecodeSwapBuffer$DecodeFrameBuffer;->mFrameBuffer:Ljava/util/ArrayList;

    .line 10
    .line 11
    const/4 v0, 0x3

    .line 12
    if-le p1, v0, :cond_0

    .line 13
    .line 14
    const/4 p1, 0x3

    .line 15
    :cond_0
    iput p1, p0, Lorg/hmwebrtc/AndroidVideoDecodeSwapBuffer$DecodeFrameBuffer;->mCapacity:I

    .line 16
    .line 17
    const/4 v0, 0x0

    .line 18
    if-gez p1, :cond_1

    .line 19
    .line 20
    const/4 p1, 0x0

    .line 21
    :cond_1
    iput p1, p0, Lorg/hmwebrtc/AndroidVideoDecodeSwapBuffer$DecodeFrameBuffer;->mCapacity:I

    .line 22
    .line 23
    iput v0, p0, Lorg/hmwebrtc/AndroidVideoDecodeSwapBuffer$DecodeFrameBuffer;->mSize:I

    .line 24
    .line 25
    iput v0, p0, Lorg/hmwebrtc/AndroidVideoDecodeSwapBuffer$DecodeFrameBuffer;->mWriteIndex:I

    .line 26
    .line 27
    iput v0, p0, Lorg/hmwebrtc/AndroidVideoDecodeSwapBuffer$DecodeFrameBuffer;->mReadIndex:I

    .line 28
    .line 29
    new-instance p1, Ljava/lang/StringBuilder;

    .line 30
    .line 31
    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    .line 32
    .line 33
    .line 34
    const-string v0, "DecodeFrameInfo capacity:"

    .line 35
    .line 36
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 37
    .line 38
    .line 39
    iget v0, p0, Lorg/hmwebrtc/AndroidVideoDecodeSwapBuffer$DecodeFrameBuffer;->mCapacity:I

    .line 40
    .line 41
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 42
    .line 43
    .line 44
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 45
    .line 46
    .line 47
    move-result-object p1

    .line 48
    const-string v0, "VideoDecodeSwapBuffer"

    .line 49
    .line 50
    invoke-static {v0, p1}, Lorg/hmwebrtc/Logging;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 51
    .line 52
    .line 53
    :goto_0
    iget-object p1, p0, Lorg/hmwebrtc/AndroidVideoDecodeSwapBuffer$DecodeFrameBuffer;->mFrameBuffer:Ljava/util/ArrayList;

    .line 54
    .line 55
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    .line 56
    .line 57
    .line 58
    move-result p1

    .line 59
    iget v0, p0, Lorg/hmwebrtc/AndroidVideoDecodeSwapBuffer$DecodeFrameBuffer;->mCapacity:I

    .line 60
    .line 61
    if-ge p1, v0, :cond_2

    .line 62
    .line 63
    iget-object p1, p0, Lorg/hmwebrtc/AndroidVideoDecodeSwapBuffer$DecodeFrameBuffer;->mFrameBuffer:Ljava/util/ArrayList;

    .line 64
    .line 65
    new-instance v0, Lorg/hmwebrtc/AndroidVideoDecodeSwapBuffer$DecodeFrameInfo;

    .line 66
    .line 67
    const/4 v1, 0x0

    .line 68
    invoke-direct {v0, v1}, Lorg/hmwebrtc/AndroidVideoDecodeSwapBuffer$DecodeFrameInfo;-><init>(Lorg/hmwebrtc/AndroidVideoDecodeSwapBuffer$1;)V

    .line 69
    .line 70
    .line 71
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 72
    .line 73
    .line 74
    goto :goto_0

    .line 75
    :cond_2
    return-void
.end method


# virtual methods
.method public capacity()I
    .locals 1

    .line 1
    iget v0, p0, Lorg/hmwebrtc/AndroidVideoDecodeSwapBuffer$DecodeFrameBuffer;->mCapacity:I

    .line 2
    .line 3
    return v0
.end method

.method public getReadedFrame(Lorg/hmwebrtc/AndroidVideoDecodeSwapBuffer$DecodeFrameInfo;)Lorg/hmwebrtc/AndroidVideoDecodeSwapBuffer$DecodeFrameInfo;
    .locals 4

    .line 1
    iget v0, p0, Lorg/hmwebrtc/AndroidVideoDecodeSwapBuffer$DecodeFrameBuffer;->mSize:I

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    if-nez v0, :cond_0

    .line 5
    .line 6
    if-nez p1, :cond_0

    .line 7
    .line 8
    return-object v1

    .line 9
    :cond_0
    iget-object v0, p0, Lorg/hmwebrtc/AndroidVideoDecodeSwapBuffer$DecodeFrameBuffer;->mFrameBuffer:Ljava/util/ArrayList;

    .line 10
    .line 11
    iget v2, p0, Lorg/hmwebrtc/AndroidVideoDecodeSwapBuffer$DecodeFrameBuffer;->mReadIndex:I

    .line 12
    .line 13
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    check-cast v0, Lorg/hmwebrtc/AndroidVideoDecodeSwapBuffer$DecodeFrameInfo;

    .line 18
    .line 19
    iget v2, p0, Lorg/hmwebrtc/AndroidVideoDecodeSwapBuffer$DecodeFrameBuffer;->mReadIndex:I

    .line 20
    .line 21
    add-int/lit8 v2, v2, 0x1

    .line 22
    .line 23
    iget v3, p0, Lorg/hmwebrtc/AndroidVideoDecodeSwapBuffer$DecodeFrameBuffer;->mCapacity:I

    .line 24
    .line 25
    rem-int/2addr v2, v3

    .line 26
    iput v2, p0, Lorg/hmwebrtc/AndroidVideoDecodeSwapBuffer$DecodeFrameBuffer;->mReadIndex:I

    .line 27
    .line 28
    iget v2, p0, Lorg/hmwebrtc/AndroidVideoDecodeSwapBuffer$DecodeFrameBuffer;->mSize:I

    .line 29
    .line 30
    add-int/lit8 v2, v2, -0x1

    .line 31
    .line 32
    iput v2, p0, Lorg/hmwebrtc/AndroidVideoDecodeSwapBuffer$DecodeFrameBuffer;->mSize:I

    .line 33
    .line 34
    if-nez p1, :cond_1

    .line 35
    .line 36
    new-instance p1, Lorg/hmwebrtc/AndroidVideoDecodeSwapBuffer$DecodeFrameInfo;

    .line 37
    .line 38
    invoke-direct {p1, v1}, Lorg/hmwebrtc/AndroidVideoDecodeSwapBuffer$DecodeFrameInfo;-><init>(Lorg/hmwebrtc/AndroidVideoDecodeSwapBuffer$1;)V

    .line 39
    .line 40
    .line 41
    :cond_1
    iget v1, v0, Lorg/hmwebrtc/AndroidVideoDecodeSwapBuffer$DecodeFrameInfo;->outputIndex:I

    .line 42
    .line 43
    iput v1, p1, Lorg/hmwebrtc/AndroidVideoDecodeSwapBuffer$DecodeFrameInfo;->outputIndex:I

    .line 44
    .line 45
    iget v1, v0, Lorg/hmwebrtc/AndroidVideoDecodeSwapBuffer$DecodeFrameInfo;->widht:I

    .line 46
    .line 47
    iput v1, p1, Lorg/hmwebrtc/AndroidVideoDecodeSwapBuffer$DecodeFrameInfo;->widht:I

    .line 48
    .line 49
    iget v1, v0, Lorg/hmwebrtc/AndroidVideoDecodeSwapBuffer$DecodeFrameInfo;->height:I

    .line 50
    .line 51
    iput v1, p1, Lorg/hmwebrtc/AndroidVideoDecodeSwapBuffer$DecodeFrameInfo;->height:I

    .line 52
    .line 53
    iget v1, v0, Lorg/hmwebrtc/AndroidVideoDecodeSwapBuffer$DecodeFrameInfo;->rotation:I

    .line 54
    .line 55
    iput v1, p1, Lorg/hmwebrtc/AndroidVideoDecodeSwapBuffer$DecodeFrameInfo;->rotation:I

    .line 56
    .line 57
    iget-wide v1, v0, Lorg/hmwebrtc/AndroidVideoDecodeSwapBuffer$DecodeFrameInfo;->createTimeMs:J

    .line 58
    .line 59
    iput-wide v1, p1, Lorg/hmwebrtc/AndroidVideoDecodeSwapBuffer$DecodeFrameInfo;->createTimeMs:J

    .line 60
    .line 61
    iget-wide v1, v0, Lorg/hmwebrtc/AndroidVideoDecodeSwapBuffer$DecodeFrameInfo;->presentationTimeUs:J

    .line 62
    .line 63
    iput-wide v1, p1, Lorg/hmwebrtc/AndroidVideoDecodeSwapBuffer$DecodeFrameInfo;->presentationTimeUs:J

    .line 64
    .line 65
    iget-object v0, v0, Lorg/hmwebrtc/AndroidVideoDecodeSwapBuffer$DecodeFrameInfo;->decodeTimeMs:Ljava/lang/Integer;

    .line 66
    .line 67
    iput-object v0, p1, Lorg/hmwebrtc/AndroidVideoDecodeSwapBuffer$DecodeFrameInfo;->decodeTimeMs:Ljava/lang/Integer;

    .line 68
    .line 69
    return-object p1
.end method

.method public getWritedFrame()Lorg/hmwebrtc/AndroidVideoDecodeSwapBuffer$DecodeFrameInfo;
    .locals 3

    .line 1
    iget v0, p0, Lorg/hmwebrtc/AndroidVideoDecodeSwapBuffer$DecodeFrameBuffer;->mSize:I

    .line 2
    .line 3
    iget v1, p0, Lorg/hmwebrtc/AndroidVideoDecodeSwapBuffer$DecodeFrameBuffer;->mCapacity:I

    .line 4
    .line 5
    if-lt v0, v1, :cond_0

    .line 6
    .line 7
    const/4 v0, 0x0

    .line 8
    return-object v0

    .line 9
    :cond_0
    iget-object v0, p0, Lorg/hmwebrtc/AndroidVideoDecodeSwapBuffer$DecodeFrameBuffer;->mFrameBuffer:Ljava/util/ArrayList;

    .line 10
    .line 11
    iget v1, p0, Lorg/hmwebrtc/AndroidVideoDecodeSwapBuffer$DecodeFrameBuffer;->mWriteIndex:I

    .line 12
    .line 13
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    check-cast v0, Lorg/hmwebrtc/AndroidVideoDecodeSwapBuffer$DecodeFrameInfo;

    .line 18
    .line 19
    iget v1, p0, Lorg/hmwebrtc/AndroidVideoDecodeSwapBuffer$DecodeFrameBuffer;->mWriteIndex:I

    .line 20
    .line 21
    add-int/lit8 v1, v1, 0x1

    .line 22
    .line 23
    iget v2, p0, Lorg/hmwebrtc/AndroidVideoDecodeSwapBuffer$DecodeFrameBuffer;->mCapacity:I

    .line 24
    .line 25
    rem-int/2addr v1, v2

    .line 26
    iput v1, p0, Lorg/hmwebrtc/AndroidVideoDecodeSwapBuffer$DecodeFrameBuffer;->mWriteIndex:I

    .line 27
    .line 28
    iget v1, p0, Lorg/hmwebrtc/AndroidVideoDecodeSwapBuffer$DecodeFrameBuffer;->mSize:I

    .line 29
    .line 30
    add-int/lit8 v1, v1, 0x1

    .line 31
    .line 32
    iput v1, p0, Lorg/hmwebrtc/AndroidVideoDecodeSwapBuffer$DecodeFrameBuffer;->mSize:I

    .line 33
    .line 34
    if-le v1, v2, :cond_1

    .line 35
    .line 36
    iput v2, p0, Lorg/hmwebrtc/AndroidVideoDecodeSwapBuffer$DecodeFrameBuffer;->mSize:I

    .line 37
    .line 38
    :cond_1
    return-object v0
.end method

.method public isFull()Z
    .locals 2

    .line 1
    iget v0, p0, Lorg/hmwebrtc/AndroidVideoDecodeSwapBuffer$DecodeFrameBuffer;->mSize:I

    .line 2
    .line 3
    iget v1, p0, Lorg/hmwebrtc/AndroidVideoDecodeSwapBuffer$DecodeFrameBuffer;->mCapacity:I

    .line 4
    .line 5
    if-lt v0, v1, :cond_0

    .line 6
    .line 7
    const/4 v0, 0x1

    .line 8
    goto :goto_0

    .line 9
    :cond_0
    const/4 v0, 0x0

    .line 10
    :goto_0
    return v0
.end method

.method public size()I
    .locals 1

    .line 1
    iget v0, p0, Lorg/hmwebrtc/AndroidVideoDecodeSwapBuffer$DecodeFrameBuffer;->mSize:I

    .line 2
    .line 3
    return v0
.end method
