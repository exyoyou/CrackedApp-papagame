.class Lcom/googlecode/mp4parser/authoring/tracks/p$b;
.super Ljava/util/AbstractList;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/googlecode/mp4parser/authoring/tracks/p;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "b"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/AbstractList<",
        "Lcom/googlecode/mp4parser/authoring/f;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic b:Lcom/googlecode/mp4parser/authoring/tracks/p;


# direct methods
.method private constructor <init>(Lcom/googlecode/mp4parser/authoring/tracks/p;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/googlecode/mp4parser/authoring/tracks/p$b;->b:Lcom/googlecode/mp4parser/authoring/tracks/p;

    invoke-direct {p0}, Ljava/util/AbstractList;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/googlecode/mp4parser/authoring/tracks/p;Lcom/googlecode/mp4parser/authoring/tracks/p$b;)V
    .locals 0

    .line 2
    invoke-direct {p0, p1}, Lcom/googlecode/mp4parser/authoring/tracks/p$b;-><init>(Lcom/googlecode/mp4parser/authoring/tracks/p;)V

    return-void
.end method


# virtual methods
.method public a(I)Lcom/googlecode/mp4parser/authoring/f;
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/googlecode/mp4parser/authoring/tracks/p$b;->b:Lcom/googlecode/mp4parser/authoring/tracks/p;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/googlecode/mp4parser/authoring/tracks/p;->a(Lcom/googlecode/mp4parser/authoring/tracks/p;)J

    .line 4
    .line 5
    .line 6
    move-result-wide v0

    .line 7
    int-to-long v2, p1

    .line 8
    cmp-long v4, v0, v2

    .line 9
    .line 10
    if-nez v4, :cond_0

    .line 11
    .line 12
    iget-object p1, p0, Lcom/googlecode/mp4parser/authoring/tracks/p$b;->b:Lcom/googlecode/mp4parser/authoring/tracks/p;

    .line 13
    .line 14
    invoke-static {p1}, Lcom/googlecode/mp4parser/authoring/tracks/p;->b(Lcom/googlecode/mp4parser/authoring/tracks/p;)Lcom/googlecode/mp4parser/authoring/f;

    .line 15
    .line 16
    .line 17
    move-result-object p1

    .line 18
    return-object p1

    .line 19
    :cond_0
    iget-object v0, p0, Lcom/googlecode/mp4parser/authoring/tracks/p$b;->b:Lcom/googlecode/mp4parser/authoring/tracks/p;

    .line 20
    .line 21
    iget-object v0, v0, Lcom/googlecode/mp4parser/authoring/tracks/p;->e:Lcom/googlecode/mp4parser/authoring/h;

    .line 22
    .line 23
    invoke-interface {v0}, Lcom/googlecode/mp4parser/authoring/h;->U()Ljava/util/List;

    .line 24
    .line 25
    .line 26
    move-result-object v0

    .line 27
    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 28
    .line 29
    .line 30
    move-result-object p1

    .line 31
    check-cast p1, Lcom/googlecode/mp4parser/authoring/f;

    .line 32
    .line 33
    return-object p1
.end method

.method public bridge synthetic get(I)Ljava/lang/Object;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcom/googlecode/mp4parser/authoring/tracks/p$b;->a(I)Lcom/googlecode/mp4parser/authoring/f;

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
    iget-object v0, p0, Lcom/googlecode/mp4parser/authoring/tracks/p$b;->b:Lcom/googlecode/mp4parser/authoring/tracks/p;

    .line 2
    .line 3
    iget-object v0, v0, Lcom/googlecode/mp4parser/authoring/tracks/p;->e:Lcom/googlecode/mp4parser/authoring/h;

    .line 4
    .line 5
    invoke-interface {v0}, Lcom/googlecode/mp4parser/authoring/h;->U()Ljava/util/List;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 10
    .line 11
    .line 12
    move-result v0

    .line 13
    return v0
.end method
