.class Lcom/googlecode/mp4parser/authoring/samples/b$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/googlecode/mp4parser/authoring/f;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/googlecode/mp4parser/authoring/samples/b;->a(I)Lcom/googlecode/mp4parser/authoring/f;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/googlecode/mp4parser/authoring/samples/b;

.field private final synthetic b:J

.field private final synthetic c:Ljava/nio/ByteBuffer;

.field private final synthetic d:I


# direct methods
.method constructor <init>(Lcom/googlecode/mp4parser/authoring/samples/b;JLjava/nio/ByteBuffer;I)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/googlecode/mp4parser/authoring/samples/b$a;->a:Lcom/googlecode/mp4parser/authoring/samples/b;

    .line 2
    .line 3
    iput-wide p2, p0, Lcom/googlecode/mp4parser/authoring/samples/b$a;->b:J

    .line 4
    .line 5
    iput-object p4, p0, Lcom/googlecode/mp4parser/authoring/samples/b$a;->c:Ljava/nio/ByteBuffer;

    .line 6
    .line 7
    iput p5, p0, Lcom/googlecode/mp4parser/authoring/samples/b$a;->d:I

    .line 8
    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 10
    .line 11
    .line 12
    return-void
.end method


# virtual methods
.method public a()Ljava/nio/ByteBuffer;
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/googlecode/mp4parser/authoring/samples/b$a;->c:Ljava/nio/ByteBuffer;

    .line 2
    .line 3
    iget v1, p0, Lcom/googlecode/mp4parser/authoring/samples/b$a;->d:I

    .line 4
    .line 5
    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    check-cast v0, Ljava/nio/ByteBuffer;

    .line 10
    .line 11
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->slice()Ljava/nio/ByteBuffer;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    iget-wide v1, p0, Lcom/googlecode/mp4parser/authoring/samples/b$a;->b:J

    .line 16
    .line 17
    invoke-static {v1, v2}, Lcom/googlecode/mp4parser/util/c;->a(J)I

    .line 18
    .line 19
    .line 20
    move-result v1

    .line 21
    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    .line 22
    .line 23
    .line 24
    move-result-object v0

    .line 25
    check-cast v0, Ljava/nio/ByteBuffer;

    .line 26
    .line 27
    return-object v0
.end method

.method public b(Ljava/nio/channels/WritableByteChannel;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lcom/googlecode/mp4parser/authoring/samples/b$a;->a()Ljava/nio/ByteBuffer;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-interface {p1, v0}, Ljava/nio/channels/WritableByteChannel;->write(Ljava/nio/ByteBuffer;)I

    .line 6
    .line 7
    .line 8
    return-void
.end method

.method public getSize()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/googlecode/mp4parser/authoring/samples/b$a;->b:J

    .line 2
    .line 3
    return-wide v0
.end method
