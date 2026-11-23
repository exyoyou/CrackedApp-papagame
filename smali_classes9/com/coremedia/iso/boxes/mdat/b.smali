.class public Lcom/coremedia/iso/boxes/mdat/b;
.super Ljava/util/AbstractList;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/AbstractList<",
        "Lcom/googlecode/mp4parser/authoring/f;",
        ">;"
    }
.end annotation


# instance fields
.field b:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/googlecode/mp4parser/authoring/f;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public varargs constructor <init>(Lcom/coremedia/iso/boxes/f1;[Lcom/coremedia/iso/f;)V
    .locals 4

    .line 1
    invoke-direct {p0}, Ljava/util/AbstractList;-><init>()V

    .line 2
    .line 3
    .line 4
    invoke-virtual {p1}, Lcom/googlecode/mp4parser/b;->getParent()Lcom/coremedia/iso/boxes/j;

    .line 5
    .line 6
    .line 7
    move-result-object v0

    .line 8
    check-cast v0, Lcom/coremedia/iso/boxes/d;

    .line 9
    .line 10
    invoke-interface {v0}, Lcom/coremedia/iso/boxes/d;->getParent()Lcom/coremedia/iso/boxes/j;

    .line 11
    .line 12
    .line 13
    move-result-object v0

    .line 14
    invoke-virtual {p1}, Lcom/googlecode/mp4parser/b;->getParent()Lcom/coremedia/iso/boxes/j;

    .line 15
    .line 16
    .line 17
    move-result-object v1

    .line 18
    const-class v2, Lcom/coremedia/iso/boxes/fragment/a;

    .line 19
    .line 20
    invoke-interface {v1, v2}, Lcom/coremedia/iso/boxes/j;->c(Ljava/lang/Class;)Ljava/util/List;

    .line 21
    .line 22
    .line 23
    move-result-object v1

    .line 24
    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    .line 25
    .line 26
    .line 27
    move-result v1

    .line 28
    if-eqz v1, :cond_1

    .line 29
    .line 30
    array-length p2, p2

    .line 31
    if-gtz p2, :cond_0

    .line 32
    .line 33
    new-instance p2, Lcom/googlecode/mp4parser/authoring/samples/a;

    .line 34
    .line 35
    invoke-virtual {p1}, Lcom/coremedia/iso/boxes/f1;->z()Lcom/coremedia/iso/boxes/g1;

    .line 36
    .line 37
    .line 38
    move-result-object p1

    .line 39
    invoke-virtual {p1}, Lcom/coremedia/iso/boxes/g1;->C()J

    .line 40
    .line 41
    .line 42
    move-result-wide v1

    .line 43
    invoke-direct {p2, v1, v2, v0}, Lcom/googlecode/mp4parser/authoring/samples/a;-><init>(JLcom/coremedia/iso/boxes/j;)V

    .line 44
    .line 45
    .line 46
    iput-object p2, p0, Lcom/coremedia/iso/boxes/mdat/b;->b:Ljava/util/List;

    .line 47
    .line 48
    goto :goto_0

    .line 49
    :cond_0
    new-instance p1, Ljava/lang/RuntimeException;

    .line 50
    .line 51
    const-string p2, "The TrackBox comes from a standard MP4 file. Only use the additionalFragments param if you are dealing with ( fragmented MP4 files AND additional fragments in standalone files )"

    .line 52
    .line 53
    invoke-direct {p1, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .line 54
    .line 55
    .line 56
    throw p1

    .line 57
    :cond_1
    new-instance v1, Lcom/googlecode/mp4parser/authoring/samples/b;

    .line 58
    .line 59
    invoke-virtual {p1}, Lcom/coremedia/iso/boxes/f1;->z()Lcom/coremedia/iso/boxes/g1;

    .line 60
    .line 61
    .line 62
    move-result-object p1

    .line 63
    invoke-virtual {p1}, Lcom/coremedia/iso/boxes/g1;->C()J

    .line 64
    .line 65
    .line 66
    move-result-wide v2

    .line 67
    invoke-direct {v1, v2, v3, v0, p2}, Lcom/googlecode/mp4parser/authoring/samples/b;-><init>(JLcom/coremedia/iso/boxes/j;[Lcom/coremedia/iso/f;)V

    .line 68
    .line 69
    .line 70
    iput-object v1, p0, Lcom/coremedia/iso/boxes/mdat/b;->b:Ljava/util/List;

    .line 71
    .line 72
    :goto_0
    return-void
.end method


# virtual methods
.method public a(I)Lcom/googlecode/mp4parser/authoring/f;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/coremedia/iso/boxes/mdat/b;->b:Ljava/util/List;

    .line 2
    .line 3
    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    check-cast p1, Lcom/googlecode/mp4parser/authoring/f;

    .line 8
    .line 9
    return-object p1
.end method

.method public bridge synthetic get(I)Ljava/lang/Object;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcom/coremedia/iso/boxes/mdat/b;->a(I)Lcom/googlecode/mp4parser/authoring/f;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    return-object p1
.end method

.method public size()I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/coremedia/iso/boxes/mdat/b;->b:Ljava/util/List;

    .line 2
    .line 3
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    return v0
.end method
