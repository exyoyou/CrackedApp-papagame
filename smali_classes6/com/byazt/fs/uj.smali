.class public Lcom/byazt/fs/uj;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Lcom/byazt/zqa/c;
    c = {
        0x0,
        0x1,
        0x2d0,
        0xf
    }
.end annotation


# direct methods
.method public static a(Landroid/util/JsonReader;Lcom/byazt/ga/a;)Lcom/byazt/kd/da;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    new-instance v0, Lcom/byazt/kd/da;

    .line 2
    .line 3
    invoke-static {}, Lcom/byazt/kk/da;->c()F

    .line 4
    .line 5
    .line 6
    move-result v1

    .line 7
    sget-object v2, Lcom/byazt/fs/i;->c:Lcom/byazt/fs/i;

    .line 8
    .line 9
    invoke-static {p0, v1, p1, v2}, Lcom/byazt/fs/uj;->c(Landroid/util/JsonReader;FLcom/byazt/ga/a;Lcom/byazt/fs/aw;)Ljava/util/List;

    .line 10
    .line 11
    .line 12
    move-result-object p0

    .line 13
    invoke-direct {v0, p0}, Lcom/byazt/kd/da;-><init>(Ljava/util/List;)V

    .line 14
    .line 15
    .line 16
    return-object v0
.end method

.method public static c(Landroid/util/JsonReader;Lcom/byazt/ga/a;)Lcom/byazt/kd/tt;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x1

    .line 1
    invoke-static {p0, p1, v0}, Lcom/byazt/fs/uj;->c(Landroid/util/JsonReader;Lcom/byazt/ga/a;Z)Lcom/byazt/kd/tt;

    move-result-object p0

    return-object p0
.end method

.method public static c(Landroid/util/JsonReader;Lcom/byazt/ga/a;Z)Lcom/byazt/kd/tt;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 2
    new-instance v0, Lcom/byazt/kd/tt;

    if-eqz p2, :cond_0

    .line 3
    invoke-static {}, Lcom/byazt/kk/da;->c()F

    move-result p2

    goto :goto_0

    :cond_0
    const/high16 p2, 0x3f800000    # 1.0f

    :goto_0
    sget-object v1, Lcom/byazt/fs/t;->c:Lcom/byazt/fs/t;

    invoke-static {p0, p2, p1, v1}, Lcom/byazt/fs/uj;->c(Landroid/util/JsonReader;FLcom/byazt/ga/a;Lcom/byazt/fs/aw;)Ljava/util/List;

    move-result-object p0

    invoke-direct {v0, p0}, Lcom/byazt/kd/tt;-><init>(Ljava/util/List;)V

    return-object v0
.end method

.method public static c(Landroid/util/JsonReader;Lcom/byazt/ga/a;I)Lcom/byazt/kd/ve;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 4
    new-instance v0, Lcom/byazt/kd/ve;

    new-instance v1, Lcom/byazt/fs/z;

    invoke-direct {v1, p2}, Lcom/byazt/fs/z;-><init>(I)V

    .line 5
    invoke-static {p0, p1, v1}, Lcom/byazt/fs/uj;->c(Landroid/util/JsonReader;Lcom/byazt/ga/a;Lcom/byazt/fs/aw;)Ljava/util/List;

    move-result-object p0

    invoke-direct {v0, p0}, Lcom/byazt/kd/ve;-><init>(Ljava/util/List;)V

    return-object v0
.end method

.method private static c(Landroid/util/JsonReader;FLcom/byazt/ga/a;Lcom/byazt/fs/aw;)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Landroid/util/JsonReader;",
            "F",
            "Lcom/byazt/ga/a;",
            "Lcom/byazt/fs/aw<",
            "TT;>;)",
            "Ljava/util/List<",
            "Lcom/byazt/vc/c<",
            "TT;>;>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 7
    invoke-static {p0, p2, p1, p3, v0}, Lcom/byazt/fs/rl;->c(Landroid/util/JsonReader;Lcom/byazt/ga/a;FLcom/byazt/fs/aw;Z)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method private static c(Landroid/util/JsonReader;Lcom/byazt/ga/a;Lcom/byazt/fs/aw;)Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Landroid/util/JsonReader;",
            "Lcom/byazt/ga/a;",
            "Lcom/byazt/fs/aw<",
            "TT;>;)",
            "Ljava/util/List<",
            "Lcom/byazt/vc/c<",
            "TT;>;>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/high16 v0, 0x3f800000    # 1.0f

    const/4 v1, 0x0

    .line 6
    invoke-static {p0, p1, v0, p2, v1}, Lcom/byazt/fs/rl;->c(Landroid/util/JsonReader;Lcom/byazt/ga/a;FLcom/byazt/fs/aw;Z)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public static n(Landroid/util/JsonReader;Lcom/byazt/ga/a;)Lcom/byazt/kd/x;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    new-instance v0, Lcom/byazt/kd/x;

    .line 2
    .line 3
    invoke-static {}, Lcom/byazt/kk/da;->c()F

    .line 4
    .line 5
    .line 6
    move-result v1

    .line 7
    sget-object v2, Lcom/byazt/fs/cu;->c:Lcom/byazt/fs/cu;

    .line 8
    .line 9
    invoke-static {p0, v1, p1, v2}, Lcom/byazt/fs/uj;->c(Landroid/util/JsonReader;FLcom/byazt/ga/a;Lcom/byazt/fs/aw;)Ljava/util/List;

    .line 10
    .line 11
    .line 12
    move-result-object p0

    .line 13
    invoke-direct {v0, p0}, Lcom/byazt/kd/x;-><init>(Ljava/util/List;)V

    .line 14
    .line 15
    .line 16
    return-object v0
.end method

.method public static sp(Landroid/util/JsonReader;Lcom/byazt/ga/a;)Lcom/byazt/kd/c;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    new-instance v0, Lcom/byazt/kd/c;

    .line 2
    .line 3
    sget-object v1, Lcom/byazt/fs/sp;->c:Lcom/byazt/fs/sp;

    .line 4
    .line 5
    invoke-static {p0, p1, v1}, Lcom/byazt/fs/uj;->c(Landroid/util/JsonReader;Lcom/byazt/ga/a;Lcom/byazt/fs/aw;)Ljava/util/List;

    .line 6
    .line 7
    .line 8
    move-result-object p0

    .line 9
    invoke-direct {v0, p0}, Lcom/byazt/kd/c;-><init>(Ljava/util/List;)V

    .line 10
    .line 11
    .line 12
    return-object v0
.end method

.method public static tt(Landroid/util/JsonReader;Lcom/byazt/ga/a;)Lcom/byazt/kd/uj;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    new-instance v0, Lcom/byazt/kd/uj;

    .line 2
    .line 3
    sget-object v1, Lcom/byazt/fs/rh;->c:Lcom/byazt/fs/rh;

    .line 4
    .line 5
    invoke-static {p0, p1, v1}, Lcom/byazt/fs/uj;->c(Landroid/util/JsonReader;Lcom/byazt/ga/a;Lcom/byazt/fs/aw;)Ljava/util/List;

    .line 6
    .line 7
    .line 8
    move-result-object p0

    .line 9
    invoke-direct {v0, p0}, Lcom/byazt/kd/uj;-><init>(Ljava/util/List;)V

    .line 10
    .line 11
    .line 12
    return-object v0
.end method

.method public static uj(Landroid/util/JsonReader;Lcom/byazt/ga/a;)Lcom/byazt/kd/sp;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    new-instance v0, Lcom/byazt/kd/sp;

    .line 2
    .line 3
    sget-object v1, Lcom/byazt/fs/or;->c:Lcom/byazt/fs/or;

    .line 4
    .line 5
    invoke-static {p0, p1, v1}, Lcom/byazt/fs/uj;->c(Landroid/util/JsonReader;Lcom/byazt/ga/a;Lcom/byazt/fs/aw;)Ljava/util/List;

    .line 6
    .line 7
    .line 8
    move-result-object p0

    .line 9
    invoke-direct {v0, p0}, Lcom/byazt/kd/sp;-><init>(Ljava/util/List;)V

    .line 10
    .line 11
    .line 12
    return-object v0
.end method

.method public static ve(Landroid/util/JsonReader;Lcom/byazt/ga/a;)Lcom/byazt/kd/a;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    new-instance v0, Lcom/byazt/kd/a;

    .line 2
    .line 3
    invoke-static {}, Lcom/byazt/kk/da;->c()F

    .line 4
    .line 5
    .line 6
    move-result v1

    .line 7
    sget-object v2, Lcom/byazt/fs/md;->c:Lcom/byazt/fs/md;

    .line 8
    .line 9
    const/4 v3, 0x1

    .line 10
    invoke-static {p0, p1, v1, v2, v3}, Lcom/byazt/fs/rl;->c(Landroid/util/JsonReader;Lcom/byazt/ga/a;FLcom/byazt/fs/aw;Z)Ljava/util/List;

    .line 11
    .line 12
    .line 13
    move-result-object p0

    .line 14
    invoke-direct {v0, p0}, Lcom/byazt/kd/a;-><init>(Ljava/util/List;)V

    .line 15
    .line 16
    .line 17
    return-object v0
.end method
