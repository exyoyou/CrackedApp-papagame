.class public Lcom/byazt/on/n;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/byazt/on/a;


# annotations
.annotation runtime Lcom/byazt/zqa/c;
    c = {
        0x0,
        0x1,
        0x370,
        0x2e
    }
.end annotation


# instance fields
.field public c:Lcom/byazt/on/a;


# direct methods
.method public constructor <init>(Lcom/byazt/on/a;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/byazt/on/n;->c:Lcom/byazt/on/a;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public c([BII)I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 2
    iget-object v0, p0, Lcom/byazt/on/n;->c:Lcom/byazt/on/a;

    invoke-interface {v0, p1, p2, p3}, Lcom/byazt/on/a;->c([BII)I

    move-result p1

    return p1
.end method

.method public c(J)J
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/byazt/on/n;->c:Lcom/byazt/on/a;

    invoke-interface {v0, p1, p2}, Lcom/byazt/on/a;->c(J)J

    move-result-wide p1

    return-wide p1
.end method

.method public c_()B
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/byazt/on/n;->c:Lcom/byazt/on/a;

    .line 2
    .line 3
    invoke-interface {v0}, Lcom/byazt/on/a;->c_()B

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    return v0
.end method

.method public d_()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/byazt/on/n;->c:Lcom/byazt/on/a;

    .line 2
    .line 3
    invoke-interface {v0}, Lcom/byazt/on/a;->d_()V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public n()Ljava/io/InputStream;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lcom/byazt/on/n;->d_()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lcom/byazt/on/n;->c:Lcom/byazt/on/a;

    .line 5
    .line 6
    invoke-interface {v0}, Lcom/byazt/on/a;->n()Ljava/io/InputStream;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    return-object v0
.end method

.method public uj()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/byazt/on/n;->c:Lcom/byazt/on/a;

    .line 2
    .line 3
    invoke-interface {v0}, Lcom/byazt/on/a;->uj()I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    return v0
.end method

.method public ve()I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/byazt/on/n;->c:Lcom/byazt/on/a;

    .line 2
    .line 3
    invoke-interface {v0}, Lcom/byazt/on/a;->ve()I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    return v0
.end method
