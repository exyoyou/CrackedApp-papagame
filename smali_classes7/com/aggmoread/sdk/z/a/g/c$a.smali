.class public Lcom/aggmoread/sdk/z/a/g/c$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/aggmoread/sdk/z/a/g/c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/aggmoread/sdk/z/a/g/c$a$a;,
        Lcom/aggmoread/sdk/z/a/g/c$a$c;,
        Lcom/aggmoread/sdk/z/a/g/c$a$b;
    }
.end annotation


# instance fields
.field private a:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/aggmoread/sdk/z/a/g/c$a$b;",
            ">;"
        }
    .end annotation
.end field

.field private b:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/aggmoread/sdk/z/a/g/c$a$c;",
            ">;"
        }
    .end annotation
.end field

.field private c:Lcom/aggmoread/sdk/z/a/g/c$a$a;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()Lcom/aggmoread/sdk/z/a/g/c$a$a;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/aggmoread/sdk/z/a/g/c$a;->c:Lcom/aggmoread/sdk/z/a/g/c$a$a;

    return-object v0
.end method

.method public a(D)Ljava/util/List;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(D)",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 2
    iget-object v0, p0, Lcom/aggmoread/sdk/z/a/g/c$a;->b:Ljava/util/List;

    if-eqz v0, :cond_2

    const/4 v0, 0x0

    const/4 v1, 0x0

    :goto_0
    iget-object v2, p0, Lcom/aggmoread/sdk/z/a/g/c$a;->b:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_2

    iget-object v2, p0, Lcom/aggmoread/sdk/z/a/g/c$a;->b:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/aggmoread/sdk/z/a/g/c$a$c;

    iget v3, v2, Lcom/aggmoread/sdk/z/a/g/c$a$c;->a:I

    const v4, 0x18a98

    if-ne v4, v3, :cond_1

    invoke-virtual {v2}, Lcom/aggmoread/sdk/z/a/g/c$a$c;->a()Ljava/util/List;

    move-result-object v2

    if-eqz v2, :cond_1

    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_1

    const/4 v3, 0x0

    :goto_1
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v4

    if-ge v3, v4, :cond_1

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/aggmoread/sdk/z/a/g/c$a$c$a;

    iget-wide v5, v4, Lcom/aggmoread/sdk/z/a/g/c$a$c$a;->a:D

    cmpl-double v7, v5, p1

    if-nez v7, :cond_0

    iget-object p1, v4, Lcom/aggmoread/sdk/z/a/g/c$a$c$a;->b:Ljava/util/List;

    return-object p1

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    const/4 p1, 0x0

    return-object p1
.end method

.method public a(I)Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 3
    iget-object v0, p0, Lcom/aggmoread/sdk/z/a/g/c$a;->b:Ljava/util/List;

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lcom/aggmoread/sdk/z/a/g/c$a;->b:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    iget-object v1, p0, Lcom/aggmoread/sdk/z/a/g/c$a;->b:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/aggmoread/sdk/z/a/g/c$a$c;

    iget v2, v1, Lcom/aggmoread/sdk/z/a/g/c$a$c;->a:I

    if-ne p1, v2, :cond_0

    iget-object p1, v1, Lcom/aggmoread/sdk/z/a/g/c$a$c;->b:Ljava/util/List;

    return-object p1

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    return-object p1
.end method

.method public a(Ljava/lang/String;)V
    .locals 0

    .line 4
    return-void
.end method

.method public a(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/aggmoread/sdk/z/a/g/c$a$b;",
            ">;)V"
        }
    .end annotation

    .line 5
    iput-object p1, p0, Lcom/aggmoread/sdk/z/a/g/c$a;->a:Ljava/util/List;

    return-void
.end method

.method public b()Lcom/aggmoread/sdk/z/a/g/c$a$b;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/aggmoread/sdk/z/a/g/c$a;->a:Ljava/util/List;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_0

    iget-object v0, p0, Lcom/aggmoread/sdk/z/a/g/c$a;->a:Ljava/util/List;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/aggmoread/sdk/z/a/g/c$a$b;

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public b(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/aggmoread/sdk/z/a/g/c$a$c;",
            ">;)V"
        }
    .end annotation

    .line 2
    iput-object p1, p0, Lcom/aggmoread/sdk/z/a/g/c$a;->b:Ljava/util/List;

    return-void
.end method
