.class public Lcom/byazt/dm/tt;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Lcom/byazt/zqa/c;
    c = {
        0x0,
        0x1,
        0xcc,
        0xd
    }
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/byazt/dm/tt$c;
    }
.end annotation


# direct methods
.method public static c(Lcom/byazt/dm/tt$c;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/byazt/dm/tt$c<",
            "TT;>;)TT;"
        }
    .end annotation

    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 7
    invoke-static {v0, v1, p0}, Lcom/byazt/dm/tt;->c(ZLjava/lang/String;Lcom/byazt/dm/tt$c;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static c(ZLjava/lang/String;Lcom/byazt/dm/tt$c;)Ljava/lang/Object;
    .locals 1
    .param p2    # Lcom/byazt/dm/tt$c;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(Z",
            "Ljava/lang/String;",
            "Lcom/byazt/dm/tt$c<",
            "TT;>;)TT;"
        }
    .end annotation

    .line 1
    :try_start_0
    invoke-interface {p2}, Lcom/byazt/dm/tt$c;->tt()Ljava/lang/Object;

    move-result-object p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object p0

    :catchall_0
    move-exception p2

    .line 2
    instance-of v0, p2, Lcom/byazt/dm/c;

    if-nez v0, :cond_1

    .line 3
    invoke-static {}, Lcom/byazt/dm/ve;->c()Lcom/byazt/dm/ve;

    move-result-object v0

    invoke-virtual {v0, p0, p2, p1}, Lcom/byazt/dm/ve;->c(ZLjava/lang/Throwable;Ljava/lang/String;)V

    .line 4
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p0

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 5
    :cond_0
    throw p2

    .line 6
    :cond_1
    throw p2
.end method

.method public static c(Ljava/lang/Runnable;)V
    .locals 1

    .line 8
    new-instance v0, Lcom/byazt/dm/tt$1;

    invoke-direct {v0, p0}, Lcom/byazt/dm/tt$1;-><init>(Ljava/lang/Runnable;)V

    invoke-static {v0}, Lcom/byazt/dm/tt;->c(Lcom/byazt/dm/tt$c;)Ljava/lang/Object;

    return-void
.end method
