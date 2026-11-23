.class Lorg/webrtc/haima/HmDCDevice$DataToROM;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/webrtc/haima/HmDCDevice;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "DataToROM"
.end annotation


# instance fields
.field addHeader:Z

.field byteBuffer:[B

.field isBinary:Z

.field length:I


# direct methods
.method public constructor <init>([BIZ)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lorg/webrtc/haima/HmDCDevice$DataToROM;->byteBuffer:[B

    .line 3
    iput p2, p0, Lorg/webrtc/haima/HmDCDevice$DataToROM;->length:I

    .line 4
    iput-boolean p3, p0, Lorg/webrtc/haima/HmDCDevice$DataToROM;->isBinary:Z

    const/4 p1, 0x1

    .line 5
    iput-boolean p1, p0, Lorg/webrtc/haima/HmDCDevice$DataToROM;->addHeader:Z

    return-void
.end method

.method public constructor <init>([BIZZ)V
    .locals 0

    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 7
    iput-object p1, p0, Lorg/webrtc/haima/HmDCDevice$DataToROM;->byteBuffer:[B

    .line 8
    iput p2, p0, Lorg/webrtc/haima/HmDCDevice$DataToROM;->length:I

    .line 9
    iput-boolean p3, p0, Lorg/webrtc/haima/HmDCDevice$DataToROM;->isBinary:Z

    .line 10
    iput-boolean p4, p0, Lorg/webrtc/haima/HmDCDevice$DataToROM;->addHeader:Z

    return-void
.end method
