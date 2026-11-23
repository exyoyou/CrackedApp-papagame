.class public Lcom/haima/hmcp/beans/RecordParameter;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private channel:I

.field private encoding:I

.field private mFormat:Lcom/haima/hmcp/enums/Format;

.field private sampleRate:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    const/16 v0, 0x10

    .line 5
    .line 6
    iput v0, p0, Lcom/haima/hmcp/beans/RecordParameter;->channel:I

    .line 7
    .line 8
    const/4 v0, 0x2

    .line 9
    iput v0, p0, Lcom/haima/hmcp/beans/RecordParameter;->encoding:I

    .line 10
    .line 11
    const/16 v0, 0x3e80

    .line 12
    .line 13
    iput v0, p0, Lcom/haima/hmcp/beans/RecordParameter;->sampleRate:I

    .line 14
    .line 15
    sget-object v0, Lcom/haima/hmcp/enums/Format;->PCM:Lcom/haima/hmcp/enums/Format;

    .line 16
    .line 17
    iput-object v0, p0, Lcom/haima/hmcp/beans/RecordParameter;->mFormat:Lcom/haima/hmcp/enums/Format;

    .line 18
    .line 19
    return-void
.end method


# virtual methods
.method public getChannel()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/haima/hmcp/beans/RecordParameter;->channel:I

    .line 2
    .line 3
    return v0
.end method

.method public getEncoding()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/haima/hmcp/beans/RecordParameter;->encoding:I

    .line 2
    .line 3
    return v0
.end method

.method public getFormat()Lcom/haima/hmcp/enums/Format;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/haima/hmcp/beans/RecordParameter;->mFormat:Lcom/haima/hmcp/enums/Format;

    .line 2
    .line 3
    return-object v0
.end method

.method public getSampleRate()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/haima/hmcp/beans/RecordParameter;->sampleRate:I

    .line 2
    .line 3
    return v0
.end method

.method public setChannel(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/haima/hmcp/beans/RecordParameter;->channel:I

    .line 2
    .line 3
    return-void
.end method

.method public setEncoding(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/haima/hmcp/beans/RecordParameter;->encoding:I

    .line 2
    .line 3
    return-void
.end method

.method public setSampleRate(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/haima/hmcp/beans/RecordParameter;->sampleRate:I

    .line 2
    .line 3
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .line 1
    invoke-super {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    return-object v0
.end method
