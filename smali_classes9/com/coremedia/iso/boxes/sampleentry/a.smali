.class public abstract Lcom/coremedia/iso/boxes/sampleentry/a;
.super Lcom/googlecode/mp4parser/b;
.source "SourceFile"

# interfaces
.implements Lcom/coremedia/iso/boxes/sampleentry/f;


# instance fields
.field protected o:I


# direct methods
.method protected constructor <init>(Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/googlecode/mp4parser/b;-><init>(Ljava/lang/String;)V

    .line 2
    .line 3
    .line 4
    const/4 p1, 0x1

    .line 5
    iput p1, p0, Lcom/coremedia/iso/boxes/sampleentry/a;->o:I

    .line 6
    .line 7
    return-void
.end method


# virtual methods
.method public abstract a(Ljava/nio/channels/WritableByteChannel;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public d()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/coremedia/iso/boxes/sampleentry/a;->o:I

    .line 2
    .line 3
    return v0
.end method

.method public abstract i(Lcom/googlecode/mp4parser/e;Ljava/nio/ByteBuffer;JLcom/coremedia/iso/c;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public j(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/coremedia/iso/boxes/sampleentry/a;->o:I

    .line 2
    .line 3
    return-void
.end method
