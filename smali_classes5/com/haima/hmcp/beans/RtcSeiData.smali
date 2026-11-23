.class public Lcom/haima/hmcp/beans/RtcSeiData;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private cid:Ljava/lang/String;

.field private decodedTimestamp:J

.field private encodedTimestamp:J

.field private frameId:I

.field private preDecoderTimestamp:J

.field private preEncoderTimestamp:J

.field private uid:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lorg/hmwebrtc/SeiData;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    const-string v0, ""

    .line 5
    .line 6
    iput-object v0, p0, Lcom/haima/hmcp/beans/RtcSeiData;->cid:Ljava/lang/String;

    .line 7
    .line 8
    iput-object v0, p0, Lcom/haima/hmcp/beans/RtcSeiData;->uid:Ljava/lang/String;

    .line 9
    .line 10
    iget v0, p1, Lorg/hmwebrtc/SeiData;->frameId:I

    .line 11
    .line 12
    iput v0, p0, Lcom/haima/hmcp/beans/RtcSeiData;->frameId:I

    .line 13
    .line 14
    iget-wide v0, p1, Lorg/hmwebrtc/SeiData;->preEncoderTimestamp:J

    .line 15
    .line 16
    iput-wide v0, p0, Lcom/haima/hmcp/beans/RtcSeiData;->preEncoderTimestamp:J

    .line 17
    .line 18
    iget-wide v0, p1, Lorg/hmwebrtc/SeiData;->encodedTimestamp:J

    .line 19
    .line 20
    iput-wide v0, p0, Lcom/haima/hmcp/beans/RtcSeiData;->encodedTimestamp:J

    .line 21
    .line 22
    iget-wide v0, p1, Lorg/hmwebrtc/SeiData;->preDecoderTimestamp:J

    .line 23
    .line 24
    iput-wide v0, p0, Lcom/haima/hmcp/beans/RtcSeiData;->preDecoderTimestamp:J

    .line 25
    .line 26
    iget-wide v0, p1, Lorg/hmwebrtc/SeiData;->decodedTimestamp:J

    .line 27
    .line 28
    iput-wide v0, p0, Lcom/haima/hmcp/beans/RtcSeiData;->decodedTimestamp:J

    .line 29
    .line 30
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 31
    .line 32
    .line 33
    move-result p1

    .line 34
    if-nez p1, :cond_0

    .line 35
    .line 36
    iput-object p2, p0, Lcom/haima/hmcp/beans/RtcSeiData;->cid:Ljava/lang/String;

    .line 37
    .line 38
    :cond_0
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 39
    .line 40
    .line 41
    move-result p1

    .line 42
    if-nez p1, :cond_1

    .line 43
    .line 44
    iput-object p3, p0, Lcom/haima/hmcp/beans/RtcSeiData;->uid:Ljava/lang/String;

    .line 45
    .line 46
    :cond_1
    return-void
.end method


# virtual methods
.method public getCid()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/haima/hmcp/beans/RtcSeiData;->cid:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public getDecodedTimestamp()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/haima/hmcp/beans/RtcSeiData;->decodedTimestamp:J

    .line 2
    .line 3
    return-wide v0
.end method

.method public getEncodedTimestamp()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/haima/hmcp/beans/RtcSeiData;->encodedTimestamp:J

    .line 2
    .line 3
    return-wide v0
.end method

.method public getFrameId()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/haima/hmcp/beans/RtcSeiData;->frameId:I

    .line 2
    .line 3
    return v0
.end method

.method public getPreDecoderTimestamp()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/haima/hmcp/beans/RtcSeiData;->preDecoderTimestamp:J

    .line 2
    .line 3
    return-wide v0
.end method

.method public getPreEncoderTimestamp()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/haima/hmcp/beans/RtcSeiData;->preEncoderTimestamp:J

    .line 2
    .line 3
    return-wide v0
.end method

.method public getUid()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/haima/hmcp/beans/RtcSeiData;->uid:Ljava/lang/String;

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
    const-string v1, "cid="

    .line 7
    .line 8
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 9
    .line 10
    .line 11
    iget-object v1, p0, Lcom/haima/hmcp/beans/RtcSeiData;->cid:Ljava/lang/String;

    .line 12
    .line 13
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 14
    .line 15
    .line 16
    const-string v1, ";uid="

    .line 17
    .line 18
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 19
    .line 20
    .line 21
    iget-object v1, p0, Lcom/haima/hmcp/beans/RtcSeiData;->uid:Ljava/lang/String;

    .line 22
    .line 23
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 24
    .line 25
    .line 26
    const-string v1, ";frameId="

    .line 27
    .line 28
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 29
    .line 30
    .line 31
    iget v1, p0, Lcom/haima/hmcp/beans/RtcSeiData;->frameId:I

    .line 32
    .line 33
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 34
    .line 35
    .line 36
    const-string v1, ";preEncoderTimestamp="

    .line 37
    .line 38
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 39
    .line 40
    .line 41
    iget-wide v1, p0, Lcom/haima/hmcp/beans/RtcSeiData;->preEncoderTimestamp:J

    .line 42
    .line 43
    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 44
    .line 45
    .line 46
    const-string v1, ";encodedTimestamp="

    .line 47
    .line 48
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 49
    .line 50
    .line 51
    iget-wide v1, p0, Lcom/haima/hmcp/beans/RtcSeiData;->encodedTimestamp:J

    .line 52
    .line 53
    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 54
    .line 55
    .line 56
    const-string v1, ";preDecoderTimestamp="

    .line 57
    .line 58
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 59
    .line 60
    .line 61
    iget-wide v1, p0, Lcom/haima/hmcp/beans/RtcSeiData;->preDecoderTimestamp:J

    .line 62
    .line 63
    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 64
    .line 65
    .line 66
    const-string v1, ";decodedTimestamp="

    .line 67
    .line 68
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 69
    .line 70
    .line 71
    iget-wide v1, p0, Lcom/haima/hmcp/beans/RtcSeiData;->decodedTimestamp:J

    .line 72
    .line 73
    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 74
    .line 75
    .line 76
    const-string v1, ";"

    .line 77
    .line 78
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 79
    .line 80
    .line 81
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 82
    .line 83
    .line 84
    move-result-object v0

    .line 85
    return-object v0
.end method
