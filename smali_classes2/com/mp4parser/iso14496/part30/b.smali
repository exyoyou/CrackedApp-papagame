.class public Lcom/mp4parser/iso14496/part30/b;
.super Lcom/coremedia/iso/boxes/sampleentry/a;
.source "SourceFile"


# static fields
.field public static final p:Ljava/lang/String; = "wvtt"


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    const-string v0, "wvtt"

    .line 2
    .line 3
    invoke-direct {p0, v0}, Lcom/coremedia/iso/boxes/sampleentry/a;-><init>(Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public a(Ljava/nio/channels/WritableByteChannel;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lcom/googlecode/mp4parser/b;->s()Ljava/nio/ByteBuffer;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-interface {p1, v0}, Ljava/nio/channels/WritableByteChannel;->write(Ljava/nio/ByteBuffer;)I

    .line 6
    .line 7
    .line 8
    invoke-virtual {p0, p1}, Lcom/googlecode/mp4parser/d;->h(Ljava/nio/channels/WritableByteChannel;)V

    .line 9
    .line 10
    .line 11
    return-void
.end method

.method public i(Lcom/googlecode/mp4parser/e;Ljava/nio/ByteBuffer;JLcom/coremedia/iso/c;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    invoke-virtual {p0, p1, p3, p4, p5}, Lcom/googlecode/mp4parser/b;->p(Lcom/googlecode/mp4parser/e;JLcom/coremedia/iso/c;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public v()Lcom/mp4parser/iso14496/part30/a;
    .locals 1

    .line 1
    const-string v0, "vttC"

    .line 2
    .line 3
    invoke-static {p0, v0}, Lcom/googlecode/mp4parser/util/m;->e(Lcom/googlecode/mp4parser/b;Ljava/lang/String;)Lcom/coremedia/iso/boxes/d;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Lcom/mp4parser/iso14496/part30/a;

    .line 8
    .line 9
    return-object v0
.end method

.method public y()Lcom/mp4parser/iso14496/part30/c;
    .locals 1

    .line 1
    const-string v0, "vlab"

    .line 2
    .line 3
    invoke-static {p0, v0}, Lcom/googlecode/mp4parser/util/m;->e(Lcom/googlecode/mp4parser/b;Ljava/lang/String;)Lcom/coremedia/iso/boxes/d;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Lcom/mp4parser/iso14496/part30/c;

    .line 8
    .line 9
    return-object v0
.end method
