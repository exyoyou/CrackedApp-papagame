.class public Lcom/byazt/wr/c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/byazt/yy/c;
.implements Lcom/byazt/yy/tt;


# annotations
.annotation runtime Lcom/byazt/zqa/c;
    c = {
        0x0,
        0x1,
        0x551,
        0x14
    }
.end annotation


# instance fields
.field public final c:Lcom/byazt/iy/ve;

.field public final tt:Z


# direct methods
.method public constructor <init>(Lcom/byazt/iy/ve;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/byazt/wr/c;->c:Lcom/byazt/iy/ve;

    .line 5
    .line 6
    const/4 p1, 0x0

    .line 7
    iput-boolean p1, p0, Lcom/byazt/wr/c;->tt:Z

    .line 8
    .line 9
    return-void
.end method


# virtual methods
.method public c(Ljava/io/File;)Ljava/util/Map;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/File;",
            ")",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 1
    invoke-virtual {p1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v0

    const-string v1, ".prop"

    invoke-virtual {v0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    new-instance v0, Lcom/byazt/wr/tt;

    iget-object v1, p0, Lcom/byazt/wr/c;->c:Lcom/byazt/iy/ve;

    iget-boolean v2, p0, Lcom/byazt/wr/c;->tt:Z

    invoke-direct {v0, v1, v2}, Lcom/byazt/wr/tt;-><init>(Lcom/byazt/iy/ve;Z)V

    invoke-virtual {v0, p1}, Lcom/byazt/wr/tt;->c(Ljava/io/File;)Ljava/util/Map;

    move-result-object p1

    return-object p1

    .line 3
    :cond_0
    new-instance v0, Ljava/io/File;

    invoke-virtual {p1}, Ljava/io/File;->getParent()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v2, v1}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 4
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {v0}, Ljava/io/File;->length()J

    move-result-wide v1

    const-wide/16 v3, 0x0

    cmp-long v5, v1, v3

    if-lez v5, :cond_1

    .line 5
    new-instance p1, Lcom/byazt/wr/tt;

    iget-object v1, p0, Lcom/byazt/wr/c;->c:Lcom/byazt/iy/ve;

    iget-boolean v2, p0, Lcom/byazt/wr/c;->tt:Z

    invoke-direct {p1, v1, v2}, Lcom/byazt/wr/tt;-><init>(Lcom/byazt/iy/ve;Z)V

    invoke-virtual {p1, v0}, Lcom/byazt/wr/tt;->c(Ljava/io/File;)Ljava/util/Map;

    move-result-object p1

    return-object p1

    .line 6
    :cond_1
    invoke-virtual {p1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "xml"

    invoke-virtual {v0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 7
    invoke-static {}, Lcom/byazt/wr/n;->c()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 8
    new-instance v0, Lcom/byazt/wr/n;

    iget-object v1, p0, Lcom/byazt/wr/c;->c:Lcom/byazt/iy/ve;

    iget-boolean v2, p0, Lcom/byazt/wr/c;->tt:Z

    invoke-direct {v0, v1, v2}, Lcom/byazt/wr/n;-><init>(Lcom/byazt/iy/ve;Z)V

    invoke-virtual {v0, p1}, Lcom/byazt/wr/n;->c(Ljava/io/File;)Ljava/util/Map;

    move-result-object p1

    return-object p1

    .line 9
    :cond_2
    new-instance v0, Lcom/byazt/wr/a;

    iget-object v1, p0, Lcom/byazt/wr/c;->c:Lcom/byazt/iy/ve;

    iget-boolean v2, p0, Lcom/byazt/wr/c;->tt:Z

    invoke-direct {v0, v1, v2}, Lcom/byazt/wr/a;-><init>(Lcom/byazt/iy/ve;Z)V

    invoke-virtual {v0, p1}, Lcom/byazt/wr/a;->c(Ljava/io/File;)Ljava/util/Map;

    move-result-object p1

    return-object p1

    .line 10
    :cond_3
    new-instance p1, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {p1}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    return-object p1
.end method

.method public c(Ljava/util/Map;Ljava/io/File;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;",
            "Ljava/io/File;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 11
    invoke-virtual {p2}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v0

    const-string v1, ".prop"

    invoke-virtual {v0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 12
    new-instance v0, Ljava/io/File;

    invoke-virtual {p2}, Ljava/io/File;->getParent()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {v0, v2, p2}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    move-object p2, v0

    :cond_0
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 13
    invoke-virtual {p2, v0, v1}, Ljava/io/File;->setReadable(ZZ)Z

    .line 14
    new-instance v0, Lcom/byazt/wr/tt;

    iget-object v1, p0, Lcom/byazt/wr/c;->c:Lcom/byazt/iy/ve;

    iget-boolean v2, p0, Lcom/byazt/wr/c;->tt:Z

    invoke-direct {v0, v1, v2}, Lcom/byazt/wr/tt;-><init>(Lcom/byazt/iy/ve;Z)V

    invoke-virtual {v0, p1, p2}, Lcom/byazt/wr/tt;->c(Ljava/util/Map;Ljava/io/File;)V

    return-void
.end method
