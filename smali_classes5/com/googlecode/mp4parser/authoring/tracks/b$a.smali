.class Lcom/googlecode/mp4parser/authoring/tracks/b$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/googlecode/mp4parser/authoring/f;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/googlecode/mp4parser/authoring/tracks/b;->d()Ljava/util/List;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "a"
.end annotation


# instance fields
.field private final a:J

.field private final b:J

.field private final c:Lcom/googlecode/mp4parser/e;

.field final synthetic d:Lcom/googlecode/mp4parser/authoring/tracks/b;


# direct methods
.method public constructor <init>(Lcom/googlecode/mp4parser/authoring/tracks/b;JJLcom/googlecode/mp4parser/e;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/googlecode/mp4parser/authoring/tracks/b$a;->d:Lcom/googlecode/mp4parser/authoring/tracks/b;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    iput-wide p2, p0, Lcom/googlecode/mp4parser/authoring/tracks/b$a;->a:J

    .line 7
    .line 8
    iput-wide p4, p0, Lcom/googlecode/mp4parser/authoring/tracks/b$a;->b:J

    .line 9
    .line 10
    iput-object p6, p0, Lcom/googlecode/mp4parser/authoring/tracks/b$a;->c:Lcom/googlecode/mp4parser/e;

    .line 11
    .line 12
    return-void
.end method


# virtual methods
.method public a()Ljava/nio/ByteBuffer;
    .locals 5

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/googlecode/mp4parser/authoring/tracks/b$a;->c:Lcom/googlecode/mp4parser/e;

    .line 2
    .line 3
    iget-wide v1, p0, Lcom/googlecode/mp4parser/authoring/tracks/b$a;->a:J

    .line 4
    .line 5
    iget-wide v3, p0, Lcom/googlecode/mp4parser/authoring/tracks/b$a;->b:J

    .line 6
    .line 7
    invoke-interface {v0, v1, v2, v3, v4}, Lcom/googlecode/mp4parser/e;->r(JJ)Ljava/nio/ByteBuffer;

    .line 8
    .line 9
    .line 10
    move-result-object v0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 11
    return-object v0

    .line 12
    :catch_0
    move-exception v0

    .line 13
    new-instance v1, Ljava/lang/RuntimeException;

    .line 14
    .line 15
    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    .line 16
    .line 17
    .line 18
    throw v1
.end method

.method public b(Ljava/nio/channels/WritableByteChannel;)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/googlecode/mp4parser/authoring/tracks/b$a;->c:Lcom/googlecode/mp4parser/e;

    .line 2
    .line 3
    iget-wide v1, p0, Lcom/googlecode/mp4parser/authoring/tracks/b$a;->a:J

    .line 4
    .line 5
    iget-wide v3, p0, Lcom/googlecode/mp4parser/authoring/tracks/b$a;->b:J

    .line 6
    .line 7
    move-object v5, p1

    .line 8
    invoke-interface/range {v0 .. v5}, Lcom/googlecode/mp4parser/e;->w(JJLjava/nio/channels/WritableByteChannel;)J

    .line 9
    .line 10
    .line 11
    return-void
.end method

.method public getSize()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/googlecode/mp4parser/authoring/tracks/b$a;->b:J

    .line 2
    .line 3
    return-wide v0
.end method
