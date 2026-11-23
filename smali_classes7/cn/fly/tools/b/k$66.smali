.class Lcn/fly/tools/b/k$66;
.super Lcn/fly/tools/b/k$a;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/fly/tools/b/k;->a(IIZZ)Ljava/util/List;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcn/fly/tools/b/k$a<",
        "Ljava/util/List<",
        "Ljava/util/HashMap<",
        "Ljava/lang/String;",
        "Ljava/lang/Object;",
        ">;>;>;"
    }
.end annotation


# instance fields
.field final synthetic a:I

.field final synthetic b:I

.field final synthetic c:Z

.field final synthetic d:Z

.field final synthetic e:Lcn/fly/tools/b/k;


# direct methods
.method constructor <init>(Lcn/fly/tools/b/k;Ljava/util/List;IIZZ)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcn/fly/tools/b/k$66;->e:Lcn/fly/tools/b/k;

    .line 2
    .line 3
    iput p3, p0, Lcn/fly/tools/b/k$66;->a:I

    .line 4
    .line 5
    iput p4, p0, Lcn/fly/tools/b/k$66;->b:I

    .line 6
    .line 7
    iput-boolean p5, p0, Lcn/fly/tools/b/k$66;->c:Z

    .line 8
    .line 9
    iput-boolean p6, p0, Lcn/fly/tools/b/k$66;->d:Z

    .line 10
    .line 11
    invoke-direct {p0, p2}, Lcn/fly/tools/b/k$a;-><init>(Ljava/lang/Object;)V

    .line 12
    .line 13
    .line 14
    return-void
.end method


# virtual methods
.method protected bridge synthetic a(Ljava/lang/Object;)J
    .locals 2

    .line 2
    check-cast p1, Ljava/util/List;

    invoke-virtual {p0, p1}, Lcn/fly/tools/b/k$66;->a(Ljava/util/List;)J

    move-result-wide v0

    return-wide v0
.end method

.method protected a(Ljava/util/List;)J
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;>;)J"
        }
    .end annotation

    .line 1
    const-wide/32 v0, 0x2bf20

    return-wide v0
.end method

.method protected a()Ljava/util/List;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    const/4 v0, 0x0

    .line 3
    :try_start_0
    iget-object v1, p0, Lcn/fly/tools/b/k$66;->e:Lcn/fly/tools/b/k;

    iget v2, p0, Lcn/fly/tools/b/k$66;->a:I

    iget v3, p0, Lcn/fly/tools/b/k$66;->b:I

    iget-boolean v4, p0, Lcn/fly/tools/b/k$66;->c:Z

    iget-boolean v5, p0, Lcn/fly/tools/b/k$66;->d:Z

    invoke-static {v1, v2, v3, v4, v5}, Lcn/fly/tools/b/k;->a(Lcn/fly/tools/b/k;IIZZ)Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 4
    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_1

    const/4 v2, 0x0

    .line 5
    :goto_0
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v3

    if-ge v2, v3, :cond_1

    .line 6
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 7
    :try_start_1
    new-instance v0, Lcn/fly/tools/b/i$a;

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    invoke-direct {v0, v4}, Lcn/fly/tools/b/i$a;-><init>(Ljava/lang/Object;)V

    .line 8
    invoke-virtual {v0}, Lcn/fly/tools/b/i$a;->l()Ljava/util/HashMap;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 9
    invoke-interface {v3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_0
    add-int/lit8 v2, v2, 0x1

    move-object v0, v3

    goto :goto_0

    :catchall_0
    move-object v0, v3

    :catchall_1
    :cond_1
    return-object v0
.end method

.method protected synthetic b()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lcn/fly/tools/b/k$66;->a()Ljava/util/List;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    return-object v0
.end method
