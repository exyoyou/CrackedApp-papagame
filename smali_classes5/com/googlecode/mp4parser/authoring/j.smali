.class public Lcom/googlecode/mp4parser/authoring/j;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/googlecode/mp4parser/authoring/h;


# instance fields
.field b:Lcom/googlecode/mp4parser/authoring/h;


# direct methods
.method public constructor <init>(Lcom/googlecode/mp4parser/authoring/h;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/googlecode/mp4parser/authoring/j;->b:Lcom/googlecode/mp4parser/authoring/h;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public E()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/coremedia/iso/boxes/i$a;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/googlecode/mp4parser/authoring/j;->b:Lcom/googlecode/mp4parser/authoring/h;

    .line 2
    .line 3
    invoke-interface {v0}, Lcom/googlecode/mp4parser/authoring/h;->E()Ljava/util/List;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    return-object v0
.end method

.method public F()Lcom/coremedia/iso/boxes/s0;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/googlecode/mp4parser/authoring/j;->b:Lcom/googlecode/mp4parser/authoring/h;

    .line 2
    .line 3
    invoke-interface {v0}, Lcom/googlecode/mp4parser/authoring/h;->F()Lcom/coremedia/iso/boxes/s0;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    return-object v0
.end method

.method public G()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Lcom/googlecode/mp4parser/boxes/mp4/samplegrouping/b;",
            "[J>;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/googlecode/mp4parser/authoring/j;->b:Lcom/googlecode/mp4parser/authoring/h;

    .line 2
    .line 3
    invoke-interface {v0}, Lcom/googlecode/mp4parser/authoring/h;->G()Ljava/util/Map;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    return-object v0
.end method

.method public H()Lcom/googlecode/mp4parser/authoring/i;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/googlecode/mp4parser/authoring/j;->b:Lcom/googlecode/mp4parser/authoring/h;

    .line 2
    .line 3
    invoke-interface {v0}, Lcom/googlecode/mp4parser/authoring/h;->H()Lcom/googlecode/mp4parser/authoring/i;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    return-object v0
.end method

.method public N()[J
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/googlecode/mp4parser/authoring/j;->b:Lcom/googlecode/mp4parser/authoring/h;

    .line 2
    .line 3
    invoke-interface {v0}, Lcom/googlecode/mp4parser/authoring/h;->N()[J

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    return-object v0
.end method

.method public S()Lcom/coremedia/iso/boxes/a1;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/googlecode/mp4parser/authoring/j;->b:Lcom/googlecode/mp4parser/authoring/h;

    .line 2
    .line 3
    invoke-interface {v0}, Lcom/googlecode/mp4parser/authoring/h;->S()Lcom/coremedia/iso/boxes/a1;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    return-object v0
.end method

.method public U()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/googlecode/mp4parser/authoring/f;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/googlecode/mp4parser/authoring/j;->b:Lcom/googlecode/mp4parser/authoring/h;

    .line 2
    .line 3
    invoke-interface {v0}, Lcom/googlecode/mp4parser/authoring/h;->U()Ljava/util/List;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    return-object v0
.end method

.method public X()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/googlecode/mp4parser/authoring/c;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/googlecode/mp4parser/authoring/j;->b:Lcom/googlecode/mp4parser/authoring/h;

    .line 2
    .line 3
    invoke-interface {v0}, Lcom/googlecode/mp4parser/authoring/h;->X()Ljava/util/List;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    return-object v0
.end method

.method public Z()[J
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/googlecode/mp4parser/authoring/j;->b:Lcom/googlecode/mp4parser/authoring/h;

    .line 2
    .line 3
    invoke-interface {v0}, Lcom/googlecode/mp4parser/authoring/h;->Z()[J

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    return-object v0
.end method

.method public close()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/googlecode/mp4parser/authoring/j;->b:Lcom/googlecode/mp4parser/authoring/h;

    .line 2
    .line 3
    invoke-interface {v0}, Ljava/io/Closeable;->close()V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public getDuration()J
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/googlecode/mp4parser/authoring/j;->b:Lcom/googlecode/mp4parser/authoring/h;

    .line 2
    .line 3
    invoke-interface {v0}, Lcom/googlecode/mp4parser/authoring/h;->getDuration()J

    .line 4
    .line 5
    .line 6
    move-result-wide v0

    .line 7
    return-wide v0
.end method

.method public getHandler()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/googlecode/mp4parser/authoring/j;->b:Lcom/googlecode/mp4parser/authoring/h;

    .line 2
    .line 3
    invoke-interface {v0}, Lcom/googlecode/mp4parser/authoring/h;->getHandler()Ljava/lang/String;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/googlecode/mp4parser/authoring/j;->b:Lcom/googlecode/mp4parser/authoring/h;

    .line 4
    .line 5
    invoke-interface {v1}, Lcom/googlecode/mp4parser/authoring/h;->getName()Ljava/lang/String;

    .line 6
    .line 7
    .line 8
    move-result-object v1

    .line 9
    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 10
    .line 11
    .line 12
    move-result-object v1

    .line 13
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 14
    .line 15
    .line 16
    const-string v1, "\'"

    .line 17
    .line 18
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 19
    .line 20
    .line 21
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 22
    .line 23
    .line 24
    move-result-object v0

    .line 25
    return-object v0
.end method

.method public h0()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/coremedia/iso/boxes/r0$a;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/googlecode/mp4parser/authoring/j;->b:Lcom/googlecode/mp4parser/authoring/h;

    .line 2
    .line 3
    invoke-interface {v0}, Lcom/googlecode/mp4parser/authoring/h;->h0()Ljava/util/List;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    return-object v0
.end method
