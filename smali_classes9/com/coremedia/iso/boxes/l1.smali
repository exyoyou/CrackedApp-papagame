.class public Lcom/coremedia/iso/boxes/l1;
.super Lcom/googlecode/mp4parser/b;
.source "SourceFile"


# static fields
.field public static final o:Ljava/lang/String; = "udta"


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    const-string v0, "udta"

    .line 2
    .line 3
    invoke-direct {p0, v0}, Lcom/googlecode/mp4parser/b;-><init>(Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public a(Ljava/nio/channels/WritableByteChannel;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    invoke-super {p0, p1}, Lcom/googlecode/mp4parser/b;->a(Ljava/nio/channels/WritableByteChannel;)V

    .line 2
    .line 3
    .line 4
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
    invoke-super/range {p0 .. p5}, Lcom/googlecode/mp4parser/b;->i(Lcom/googlecode/mp4parser/e;Ljava/nio/ByteBuffer;JLcom/coremedia/iso/c;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method
