.class public Lcom/googlecode/mp4parser/authoring/tracks/Amf0Track;
.super Lcom/googlecode/mp4parser/authoring/a;
.source "SourceFile"


# instance fields
.field e:Ljava/util/SortedMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/SortedMap<",
            "Ljava/lang/Long;",
            "[B>;"
        }
    .end annotation
.end field

.field private f:Lcom/googlecode/mp4parser/authoring/i;


# direct methods
.method public constructor <init>(Ljava/util/Map;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/Long;",
            "[B>;)V"
        }
    .end annotation

    .line 1
    const-string v0, "amf0"

    .line 2
    .line 3
    invoke-direct {p0, v0}, Lcom/googlecode/mp4parser/authoring/a;-><init>(Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    new-instance v0, Lcom/googlecode/mp4parser/authoring/tracks/Amf0Track$1;

    .line 7
    .line 8
    invoke-direct {v0, p0}, Lcom/googlecode/mp4parser/authoring/tracks/Amf0Track$1;-><init>(Lcom/googlecode/mp4parser/authoring/tracks/Amf0Track;)V

    .line 9
    .line 10
    .line 11
    iput-object v0, p0, Lcom/googlecode/mp4parser/authoring/tracks/Amf0Track;->e:Ljava/util/SortedMap;

    .line 12
    .line 13
    new-instance v0, Lcom/googlecode/mp4parser/authoring/i;

    .line 14
    .line 15
    invoke-direct {v0}, Lcom/googlecode/mp4parser/authoring/i;-><init>()V

    .line 16
    .line 17
    .line 18
    iput-object v0, p0, Lcom/googlecode/mp4parser/authoring/tracks/Amf0Track;->f:Lcom/googlecode/mp4parser/authoring/i;

    .line 19
    .line 20
    new-instance v0, Ljava/util/TreeMap;

    .line 21
    .line 22
    invoke-direct {v0, p1}, Ljava/util/TreeMap;-><init>(Ljava/util/Map;)V

    .line 23
    .line 24
    .line 25
    iput-object v0, p0, Lcom/googlecode/mp4parser/authoring/tracks/Amf0Track;->e:Ljava/util/SortedMap;

    .line 26
    .line 27
    iget-object p1, p0, Lcom/googlecode/mp4parser/authoring/tracks/Amf0Track;->f:Lcom/googlecode/mp4parser/authoring/i;

    .line 28
    .line 29
    new-instance v0, Ljava/util/Date;

    .line 30
    .line 31
    invoke-direct {v0}, Ljava/util/Date;-><init>()V

    .line 32
    .line 33
    .line 34
    invoke-virtual {p1, v0}, Lcom/googlecode/mp4parser/authoring/i;->m(Ljava/util/Date;)V

    .line 35
    .line 36
    .line 37
    iget-object p1, p0, Lcom/googlecode/mp4parser/authoring/tracks/Amf0Track;->f:Lcom/googlecode/mp4parser/authoring/i;

    .line 38
    .line 39
    new-instance v0, Ljava/util/Date;

    .line 40
    .line 41
    invoke-direct {v0}, Ljava/util/Date;-><init>()V

    .line 42
    .line 43
    .line 44
    invoke-virtual {p1, v0}, Lcom/googlecode/mp4parser/authoring/i;->s(Ljava/util/Date;)V

    .line 45
    .line 46
    .line 47
    iget-object p1, p0, Lcom/googlecode/mp4parser/authoring/tracks/Amf0Track;->f:Lcom/googlecode/mp4parser/authoring/i;

    .line 48
    .line 49
    const-wide/16 v0, 0x3e8

    .line 50
    .line 51
    invoke-virtual {p1, v0, v1}, Lcom/googlecode/mp4parser/authoring/i;->t(J)V

    .line 52
    .line 53
    .line 54
    iget-object p1, p0, Lcom/googlecode/mp4parser/authoring/tracks/Amf0Track;->f:Lcom/googlecode/mp4parser/authoring/i;

    .line 55
    .line 56
    const-string v0, "eng"

    .line 57
    .line 58
    invoke-virtual {p1, v0}, Lcom/googlecode/mp4parser/authoring/i;->p(Ljava/lang/String;)V

    .line 59
    .line 60
    .line 61
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
    const/4 v0, 0x0

    return-object v0
.end method

.method public F()Lcom/coremedia/iso/boxes/s0;
    .locals 3

    .line 1
    new-instance v0, Lcom/coremedia/iso/boxes/s0;

    .line 2
    .line 3
    invoke-direct {v0}, Lcom/coremedia/iso/boxes/s0;-><init>()V

    .line 4
    .line 5
    .line 6
    new-instance v1, Ld5/a;

    .line 7
    .line 8
    invoke-direct {v1}, Ld5/a;-><init>()V

    .line 9
    .line 10
    .line 11
    const/4 v2, 0x1

    .line 12
    invoke-virtual {v1, v2}, Lcom/coremedia/iso/boxes/sampleentry/a;->j(I)V

    .line 13
    .line 14
    .line 15
    invoke-virtual {v0, v1}, Lcom/googlecode/mp4parser/d;->m(Lcom/coremedia/iso/boxes/d;)V

    .line 16
    .line 17
    .line 18
    return-object v0
.end method

.method public H()Lcom/googlecode/mp4parser/authoring/i;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/googlecode/mp4parser/authoring/tracks/Amf0Track;->f:Lcom/googlecode/mp4parser/authoring/i;

    .line 2
    .line 3
    return-object v0
.end method

.method public N()[J
    .locals 1

    .line 1
    const/4 v0, 0x0

    return-object v0
.end method

.method public S()Lcom/coremedia/iso/boxes/a1;
    .locals 1

    .line 1
    const/4 v0, 0x0

    return-object v0
.end method

.method public U()Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/googlecode/mp4parser/authoring/f;",
            ">;"
        }
    .end annotation

    .line 1
    new-instance v0, Ljava/util/LinkedList;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    .line 4
    .line 5
    .line 6
    iget-object v1, p0, Lcom/googlecode/mp4parser/authoring/tracks/Amf0Track;->e:Ljava/util/SortedMap;

    .line 7
    .line 8
    invoke-interface {v1}, Ljava/util/SortedMap;->values()Ljava/util/Collection;

    .line 9
    .line 10
    .line 11
    move-result-object v1

    .line 12
    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    .line 13
    .line 14
    .line 15
    move-result-object v1

    .line 16
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 17
    .line 18
    .line 19
    move-result v2

    .line 20
    if-nez v2, :cond_0

    .line 21
    .line 22
    return-object v0

    .line 23
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 24
    .line 25
    .line 26
    move-result-object v2

    .line 27
    check-cast v2, [B

    .line 28
    .line 29
    new-instance v3, Lcom/googlecode/mp4parser/authoring/g;

    .line 30
    .line 31
    invoke-static {v2}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    .line 32
    .line 33
    .line 34
    move-result-object v2

    .line 35
    invoke-direct {v3, v2}, Lcom/googlecode/mp4parser/authoring/g;-><init>(Ljava/nio/ByteBuffer;)V

    .line 36
    .line 37
    .line 38
    invoke-virtual {v0, v3}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 39
    .line 40
    .line 41
    goto :goto_0
.end method

.method public Z()[J
    .locals 7

    .line 1
    new-instance v0, Ljava/util/LinkedList;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/googlecode/mp4parser/authoring/tracks/Amf0Track;->e:Ljava/util/SortedMap;

    .line 4
    .line 5
    invoke-interface {v1}, Ljava/util/SortedMap;->keySet()Ljava/util/Set;

    .line 6
    .line 7
    .line 8
    move-result-object v1

    .line 9
    invoke-direct {v0, v1}, Ljava/util/LinkedList;-><init>(Ljava/util/Collection;)V

    .line 10
    .line 11
    .line 12
    invoke-static {v0}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    .line 13
    .line 14
    .line 15
    invoke-virtual {v0}, Ljava/util/LinkedList;->size()I

    .line 16
    .line 17
    .line 18
    move-result v1

    .line 19
    new-array v1, v1, [J

    .line 20
    .line 21
    const/4 v2, 0x0

    .line 22
    :goto_0
    invoke-virtual {v0}, Ljava/util/LinkedList;->size()I

    .line 23
    .line 24
    .line 25
    move-result v3

    .line 26
    if-lt v2, v3, :cond_0

    .line 27
    .line 28
    return-object v1

    .line 29
    :cond_0
    invoke-virtual {v0, v2}, Ljava/util/LinkedList;->get(I)Ljava/lang/Object;

    .line 30
    .line 31
    .line 32
    move-result-object v3

    .line 33
    check-cast v3, Ljava/lang/Long;

    .line 34
    .line 35
    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    .line 36
    .line 37
    .line 38
    move-result-wide v3

    .line 39
    const-wide/16 v5, 0x0

    .line 40
    .line 41
    sub-long/2addr v3, v5

    .line 42
    aput-wide v3, v1, v2

    .line 43
    .line 44
    add-int/lit8 v2, v2, 0x1

    .line 45
    .line 46
    goto :goto_0
.end method

.method public close()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    return-void
.end method

.method public getHandler()Ljava/lang/String;
    .locals 1

    const-string v0, "data"

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
    const/4 v0, 0x0

    return-object v0
.end method
