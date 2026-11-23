.class public final Lcom/coremedia/iso/boxes/mdat/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/coremedia/iso/boxes/d;


# static fields
.field private static g:Ljava/util/logging/Logger; = null

.field public static final h:Ljava/lang/String; = "mdat"


# instance fields
.field b:Lcom/coremedia/iso/boxes/j;

.field c:Z

.field private d:Lcom/googlecode/mp4parser/e;

.field private e:J

.field private f:J


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    const-class v0, Lcom/coremedia/iso/boxes/mdat/a;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    sput-object v0, Lcom/coremedia/iso/boxes/mdat/a;->g:Ljava/util/logging/Logger;

    .line 12
    .line 13
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x0

    .line 5
    iput-boolean v0, p0, Lcom/coremedia/iso/boxes/mdat/a;->c:Z

    .line 6
    .line 7
    return-void
.end method

.method private static b(Lcom/googlecode/mp4parser/e;JJLjava/nio/channels/WritableByteChannel;)V
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    const-wide/16 v0, 0x0

    .line 2
    .line 3
    :goto_0
    cmp-long v2, v0, p3

    .line 4
    .line 5
    if-ltz v2, :cond_0

    .line 6
    .line 7
    return-void

    .line 8
    :cond_0
    add-long v4, p1, v0

    .line 9
    .line 10
    sub-long v2, p3, v0

    .line 11
    .line 12
    const-wide/32 v6, 0x3ff8000    # 3.31399947E-316

    .line 13
    .line 14
    .line 15
    invoke-static {v6, v7, v2, v3}, Ljava/lang/Math;->min(JJ)J

    .line 16
    .line 17
    .line 18
    move-result-wide v6

    .line 19
    move-object v3, p0

    .line 20
    move-object v8, p5

    .line 21
    invoke-interface/range {v3 .. v8}, Lcom/googlecode/mp4parser/e;->w(JJLjava/nio/channels/WritableByteChannel;)J

    .line 22
    .line 23
    .line 24
    move-result-wide v2

    .line 25
    add-long/2addr v0, v2

    .line 26
    goto :goto_0
.end method


# virtual methods
.method public a(Ljava/nio/channels/WritableByteChannel;)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/coremedia/iso/boxes/mdat/a;->d:Lcom/googlecode/mp4parser/e;

    .line 2
    .line 3
    iget-wide v1, p0, Lcom/coremedia/iso/boxes/mdat/a;->e:J

    .line 4
    .line 5
    iget-wide v3, p0, Lcom/coremedia/iso/boxes/mdat/a;->f:J

    .line 6
    .line 7
    move-object v5, p1

    .line 8
    invoke-static/range {v0 .. v5}, Lcom/coremedia/iso/boxes/mdat/a;->b(Lcom/googlecode/mp4parser/e;JJLjava/nio/channels/WritableByteChannel;)V

    .line 9
    .line 10
    .line 11
    return-void
.end method

.method public e()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/coremedia/iso/boxes/mdat/a;->e:J

    .line 2
    .line 3
    return-wide v0
.end method

.method public f(Lcom/coremedia/iso/boxes/j;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/coremedia/iso/boxes/mdat/a;->b:Lcom/coremedia/iso/boxes/j;

    .line 2
    .line 3
    return-void
.end method

.method public getParent()Lcom/coremedia/iso/boxes/j;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/coremedia/iso/boxes/mdat/a;->b:Lcom/coremedia/iso/boxes/j;

    .line 2
    .line 3
    return-object v0
.end method

.method public getSize()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/coremedia/iso/boxes/mdat/a;->f:J

    .line 2
    .line 3
    return-wide v0
.end method

.method public getType()Ljava/lang/String;
    .locals 1

    const-string v0, "mdat"

    return-object v0
.end method

.method public i(Lcom/googlecode/mp4parser/e;Ljava/nio/ByteBuffer;JLcom/coremedia/iso/c;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    invoke-interface {p1}, Lcom/googlecode/mp4parser/e;->position()J

    .line 2
    .line 3
    .line 4
    move-result-wide v0

    .line 5
    invoke-virtual {p2}, Ljava/nio/Buffer;->remaining()I

    .line 6
    .line 7
    .line 8
    move-result p5

    .line 9
    int-to-long v2, p5

    .line 10
    sub-long/2addr v0, v2

    .line 11
    iput-wide v0, p0, Lcom/coremedia/iso/boxes/mdat/a;->e:J

    .line 12
    .line 13
    iput-object p1, p0, Lcom/coremedia/iso/boxes/mdat/a;->d:Lcom/googlecode/mp4parser/e;

    .line 14
    .line 15
    invoke-virtual {p2}, Ljava/nio/Buffer;->remaining()I

    .line 16
    .line 17
    .line 18
    move-result p2

    .line 19
    int-to-long v0, p2

    .line 20
    add-long/2addr v0, p3

    .line 21
    iput-wide v0, p0, Lcom/coremedia/iso/boxes/mdat/a;->f:J

    .line 22
    .line 23
    invoke-interface {p1}, Lcom/googlecode/mp4parser/e;->position()J

    .line 24
    .line 25
    .line 26
    move-result-wide v0

    .line 27
    add-long/2addr v0, p3

    .line 28
    invoke-interface {p1, v0, v1}, Lcom/googlecode/mp4parser/e;->W(J)V

    .line 29
    .line 30
    .line 31
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    const-string v1, "MediaDataBox{size="

    .line 4
    .line 5
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    iget-wide v1, p0, Lcom/coremedia/iso/boxes/mdat/a;->f:J

    .line 9
    .line 10
    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 11
    .line 12
    .line 13
    const/16 v1, 0x7d

    .line 14
    .line 15
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 16
    .line 17
    .line 18
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 19
    .line 20
    .line 21
    move-result-object v0

    .line 22
    return-object v0
.end method
