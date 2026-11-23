.class public abstract Lcom/byazt/ydv/c;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Lcom/byazt/zqa/c;
    c = {
        0x0,
        0x1,
        0x34a,
        0x14
    }
.end annotation


# instance fields
.field public c:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/byazt/utw/a$tt;",
            ">;"
        }
    .end annotation
.end field

.field public tt:Lcom/byazt/ydv/n;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method


# virtual methods
.method public abstract c()I
.end method

.method public c(Ljava/lang/String;)Lcom/byazt/utw/a$tt;
    .locals 4

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return-object v0

    .line 1
    :cond_0
    iget-object v1, p0, Lcom/byazt/ydv/c;->c:Ljava/util/List;

    if-eqz v1, :cond_2

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_2

    .line 2
    iget-object v1, p0, Lcom/byazt/ydv/c;->c:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/byazt/utw/a$tt;

    .line 3
    iget-object v3, v2, Lcom/byazt/utw/a$tt;->c:Ljava/lang/String;

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    return-object v2

    :cond_2
    return-object v0
.end method

.method public abstract c(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
.end method

.method public n()Lcom/byazt/ydv/n;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/byazt/ydv/c;->tt:Lcom/byazt/ydv/n;

    .line 2
    .line 3
    return-object v0
.end method

.method public abstract tt()Z
.end method

.method public abstract uj()Ljava/io/InputStream;
.end method

.method public abstract ve()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/byazt/utw/a$tt;",
            ">;"
        }
    .end annotation
.end method
