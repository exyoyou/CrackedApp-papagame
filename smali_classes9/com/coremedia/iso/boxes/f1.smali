.class public Lcom/coremedia/iso/boxes/f1;
.super Lcom/googlecode/mp4parser/b;
.source "SourceFile"


# static fields
.field public static final p:Ljava/lang/String; = "trak"


# instance fields
.field private o:Lcom/coremedia/iso/boxes/u0;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    const-string v0, "trak"

    .line 2
    .line 3
    invoke-direct {p0, v0}, Lcom/googlecode/mp4parser/b;-><init>(Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public b(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/coremedia/iso/boxes/d;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-super {p0, p1}, Lcom/googlecode/mp4parser/d;->b(Ljava/util/List;)V

    .line 2
    .line 3
    .line 4
    const/4 p1, 0x0

    .line 5
    iput-object p1, p0, Lcom/coremedia/iso/boxes/f1;->o:Lcom/coremedia/iso/boxes/u0;

    .line 6
    .line 7
    return-void
.end method

.method public v()Lcom/coremedia/iso/boxes/d0;
    .locals 3

    .line 1
    invoke-virtual {p0}, Lcom/googlecode/mp4parser/d;->l()Ljava/util/List;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 10
    .line 11
    .line 12
    move-result v1

    .line 13
    if-nez v1, :cond_1

    .line 14
    .line 15
    const/4 v0, 0x0

    .line 16
    return-object v0

    .line 17
    :cond_1
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 18
    .line 19
    .line 20
    move-result-object v1

    .line 21
    check-cast v1, Lcom/coremedia/iso/boxes/d;

    .line 22
    .line 23
    instance-of v2, v1, Lcom/coremedia/iso/boxes/d0;

    .line 24
    .line 25
    if-eqz v2, :cond_0

    .line 26
    .line 27
    check-cast v1, Lcom/coremedia/iso/boxes/d0;

    .line 28
    .line 29
    return-object v1
.end method

.method public y()Lcom/coremedia/iso/boxes/u0;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/coremedia/iso/boxes/f1;->o:Lcom/coremedia/iso/boxes/u0;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    return-object v0

    .line 6
    :cond_0
    invoke-virtual {p0}, Lcom/coremedia/iso/boxes/f1;->v()Lcom/coremedia/iso/boxes/d0;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    if-eqz v0, :cond_1

    .line 11
    .line 12
    invoke-virtual {v0}, Lcom/coremedia/iso/boxes/d0;->z()Lcom/coremedia/iso/boxes/f0;

    .line 13
    .line 14
    .line 15
    move-result-object v0

    .line 16
    if-eqz v0, :cond_1

    .line 17
    .line 18
    invoke-virtual {v0}, Lcom/coremedia/iso/boxes/f0;->y()Lcom/coremedia/iso/boxes/u0;

    .line 19
    .line 20
    .line 21
    move-result-object v0

    .line 22
    iput-object v0, p0, Lcom/coremedia/iso/boxes/f1;->o:Lcom/coremedia/iso/boxes/u0;

    .line 23
    .line 24
    return-object v0

    .line 25
    :cond_1
    const/4 v0, 0x0

    .line 26
    return-object v0
.end method

.method public z()Lcom/coremedia/iso/boxes/g1;
    .locals 3

    .line 1
    invoke-virtual {p0}, Lcom/googlecode/mp4parser/d;->l()Ljava/util/List;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 10
    .line 11
    .line 12
    move-result v1

    .line 13
    if-nez v1, :cond_1

    .line 14
    .line 15
    const/4 v0, 0x0

    .line 16
    return-object v0

    .line 17
    :cond_1
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 18
    .line 19
    .line 20
    move-result-object v1

    .line 21
    check-cast v1, Lcom/coremedia/iso/boxes/d;

    .line 22
    .line 23
    instance-of v2, v1, Lcom/coremedia/iso/boxes/g1;

    .line 24
    .line 25
    if-eqz v2, :cond_0

    .line 26
    .line 27
    check-cast v1, Lcom/coremedia/iso/boxes/g1;

    .line 28
    .line 29
    return-object v1
.end method
