.class public final Lcom/byazt/umr/uj$ve;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/io/Closeable;


# annotations
.annotation runtime Lcom/byazt/zqa/c;
    c = {
        0x0,
        0x1,
        0x416,
        0x69e
    }
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/byazt/umr/uj;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "ve"
.end annotation


# instance fields
.field public final synthetic c:Lcom/byazt/umr/uj;

.field public final tt:Ljava/lang/String;

.field public final uj:[Lcom/byazt/mk/my;

.field public final ve:J


# virtual methods
.method public c()Lcom/byazt/umr/uj$c;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/byazt/umr/uj$ve;->c:Lcom/byazt/umr/uj;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/byazt/umr/uj$ve;->tt:Ljava/lang/String;

    .line 4
    .line 5
    iget-wide v2, p0, Lcom/byazt/umr/uj$ve;->ve:J

    .line 6
    .line 7
    invoke-virtual {v0, v1, v2, v3}, Lcom/byazt/umr/uj;->c(Ljava/lang/String;J)Lcom/byazt/umr/uj$c;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    return-object v0
.end method

.method public close()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/byazt/umr/uj$ve;->uj:[Lcom/byazt/mk/my;

    .line 2
    .line 3
    array-length v1, v0

    .line 4
    const/4 v2, 0x0

    .line 5
    :goto_0
    if-ge v2, v1, :cond_0

    .line 6
    .line 7
    aget-object v3, v0, v2

    .line 8
    .line 9
    invoke-static {v3}, Lcom/byazt/kh/ve;->c(Ljava/io/Closeable;)V

    .line 10
    .line 11
    .line 12
    add-int/lit8 v2, v2, 0x1

    .line 13
    .line 14
    goto :goto_0

    .line 15
    :cond_0
    return-void
.end method
