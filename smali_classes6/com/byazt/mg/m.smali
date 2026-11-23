.class public final Lcom/byazt/mg/m;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Lcom/byazt/zqa/c;
    c = {
        0x0,
        0x1,
        0xaa,
        0x82
    }
.end annotation


# direct methods
.method public static c(Ljava/lang/Runnable;)Ljava/lang/Thread;
    .locals 1

    const/4 v0, 0x0

    .line 4
    invoke-static {p0, v0}, Lcom/byazt/mg/m;->c(Ljava/lang/Runnable;Ljava/lang/String;)Ljava/lang/Thread;

    move-result-object p0

    return-object p0
.end method

.method public static c(Ljava/lang/Runnable;Ljava/lang/String;)Ljava/lang/Thread;
    .locals 1

    if-eqz p0, :cond_1

    if-nez p1, :cond_0

    .line 1
    new-instance p1, Lcom/byazt/jtc/ve;

    const-string v0, "hreadExecutor"

    invoke-direct {p1, p0, v0}, Lcom/byazt/jtc/ve;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    goto :goto_0

    .line 2
    :cond_0
    new-instance v0, Lcom/byazt/jtc/ve;

    invoke-direct {v0, p0, p1}, Lcom/byazt/jtc/ve;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    move-object p1, v0

    .line 3
    :goto_0
    invoke-virtual {p1}, Ljava/lang/Thread;->start()V

    return-object p1

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method
