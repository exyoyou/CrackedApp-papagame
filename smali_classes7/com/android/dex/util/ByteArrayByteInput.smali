.class public final Lcom/android/dex/util/ByteArrayByteInput;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/android/dex/util/ByteInput;


# instance fields
.field private final bytes:[B

.field private position:I


# direct methods
.method public varargs constructor <init>([B)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/android/dex/util/ByteArrayByteInput;->bytes:[B

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public readByte()B
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/android/dex/util/ByteArrayByteInput;->bytes:[B

    .line 2
    .line 3
    iget v1, p0, Lcom/android/dex/util/ByteArrayByteInput;->position:I

    .line 4
    .line 5
    add-int/lit8 v2, v1, 0x1

    .line 6
    .line 7
    iput v2, p0, Lcom/android/dex/util/ByteArrayByteInput;->position:I

    .line 8
    .line 9
    aget-byte v0, v0, v1

    .line 10
    .line 11
    return v0
.end method
