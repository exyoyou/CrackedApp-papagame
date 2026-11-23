.class public Lcom/byazt/wu/tt;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Lcom/byazt/zqa/c;
    c = {
        0x0,
        0x1,
        0x468,
        0xd
    }
.end annotation


# static fields
.field public static c:Lcom/byazt/iy/n;


# direct methods
.method public static c()V
    .locals 4

    .line 6
    :try_start_0
    invoke-static {}, Lcom/byazt/omf/x;->m()Lcom/byazt/omf/x;

    move-result-object v0

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/byazt/omf/x;->a(I)Ljava/util/function/Function;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 7
    invoke-static {}, Lcom/byazt/yxi/uj;->c()Lcom/byazt/yxi/uj;

    move-result-object v1

    const/16 v2, 0x64

    .line 8
    invoke-virtual {v1, v2}, Lcom/byazt/yxi/uj;->c(I)Lcom/byazt/yxi/uj;

    move-result-object v1

    const-class v2, Ljava/lang/Void;

    .line 9
    invoke-virtual {v1, v2}, Lcom/byazt/yxi/uj;->c(Ljava/lang/Class;)Lcom/byazt/yxi/uj;

    move-result-object v1

    const-string v2, "com.byted.live.lite"

    const/4 v3, 0x0

    .line 10
    invoke-virtual {v1, v3, v2}, Lcom/byazt/yxi/uj;->c(ILjava/lang/Object;)Lcom/byazt/yxi/uj;

    move-result-object v1

    .line 11
    invoke-virtual {v1}, Lcom/byazt/yxi/uj;->tt()Landroid/util/SparseArray;

    move-result-object v1

    .line 12
    invoke-static {v0, v1}, Ll0/a;->a(Ljava/util/function/Function;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    return-void

    :catchall_0
    move-exception v0

    .line 13
    invoke-static {v0}, Lcom/byazt/nr/m;->c(Ljava/lang/Throwable;)V

    return-void
.end method

.method public static c(Ljava/lang/String;)V
    .locals 4

    const-string v0, "live_init_"

    .line 1
    invoke-static {}, Lcom/byazt/wu/tt;->tt()V

    .line 2
    :try_start_0
    sget-object v1, Lcom/byazt/wu/tt;->c:Lcom/byazt/iy/n;

    if-eqz v1, :cond_0

    .line 3
    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-interface {v1, v2, v3}, Lcom/byazt/iy/n;->get(Ljava/lang/String;I)I

    move-result v1

    .line 4
    sget-object v2, Lcom/byazt/wu/tt;->c:Lcom/byazt/iy/n;

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    add-int/lit8 v1, v1, 0x1

    invoke-interface {v2, p0, v1}, Lcom/byazt/iy/n;->put(Ljava/lang/String;I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    return-void

    :catchall_0
    move-exception p0

    .line 5
    invoke-static {p0}, Lcom/byazt/nr/m;->c(Ljava/lang/Throwable;)V

    return-void
.end method

.method private static tt()V
    .locals 1

    .line 1
    sget-object v0, Lcom/byazt/wu/tt;->c:Lcom/byazt/iy/n;

    if-nez v0, :cond_0

    const-string v0, "csj_live"

    .line 2
    invoke-static {v0}, Lcom/byazt/aas/eo;->c(Ljava/lang/String;)Lcom/byazt/iy/n;

    move-result-object v0

    sput-object v0, Lcom/byazt/wu/tt;->c:Lcom/byazt/iy/n;

    :cond_0
    return-void
.end method

.method public static tt(Ljava/lang/String;)V
    .locals 2

    .line 3
    invoke-static {}, Lcom/byazt/wu/tt;->tt()V

    .line 4
    :try_start_0
    sget-object v0, Lcom/byazt/wu/tt;->c:Lcom/byazt/iy/n;

    if-eqz v0, :cond_0

    const-string v1, "live_init_"

    .line 5
    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    const/4 v1, 0x0

    invoke-interface {v0, p0, v1}, Lcom/byazt/iy/n;->put(Ljava/lang/String;I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    return-void

    :catchall_0
    move-exception p0

    .line 6
    invoke-static {p0}, Lcom/byazt/nr/m;->c(Ljava/lang/Throwable;)V

    return-void
.end method

.method public static uj(Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-static {}, Lcom/byazt/wu/tt;->c()V

    .line 2
    .line 3
    .line 4
    invoke-static {p0}, Lcom/byazt/wu/tt;->tt(Ljava/lang/String;)V

    .line 5
    .line 6
    .line 7
    return-void
.end method

.method public static ve(Ljava/lang/String;)Z
    .locals 3

    .line 1
    invoke-static {}, Lcom/byazt/wu/tt;->tt()V

    .line 2
    .line 3
    .line 4
    sget-object v0, Lcom/byazt/wu/tt;->c:Lcom/byazt/iy/n;

    .line 5
    .line 6
    const/4 v1, 0x0

    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 10
    .line 11
    .line 12
    move-result-object p0

    .line 13
    const-string v2, "live_init_"

    .line 14
    .line 15
    invoke-virtual {v2, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 16
    .line 17
    .line 18
    move-result-object p0

    .line 19
    invoke-interface {v0, p0, v1}, Lcom/byazt/iy/n;->get(Ljava/lang/String;I)I

    .line 20
    .line 21
    .line 22
    move-result p0

    .line 23
    goto :goto_0

    .line 24
    :cond_0
    const/4 p0, 0x0

    .line 25
    :goto_0
    const/4 v0, 0x5

    .line 26
    if-ge p0, v0, :cond_1

    .line 27
    .line 28
    const/4 p0, 0x1

    .line 29
    return p0

    .line 30
    :cond_1
    return v1
.end method
