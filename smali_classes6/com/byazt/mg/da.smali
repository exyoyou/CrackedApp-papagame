.class public final Lcom/byazt/mg/da;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Lcom/byazt/zqa/c;
    c = {
        0x0,
        0x1,
        0xaa,
        0x48
    }
.end annotation


# direct methods
.method public static c(Ljava/lang/String;)V
    .locals 1

    .line 1
    invoke-static {}, Lcom/byazt/uy/x;->n()Lcom/byazt/rx/tt;

    move-result-object v0

    invoke-virtual {v0}, Lcom/byazt/rx/tt;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "npth"

    .line 2
    invoke-static {v0, p0}, Lcom/byazt/nr/m;->c(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public static c(Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 1

    .line 5
    invoke-static {}, Lcom/byazt/uy/x;->n()Lcom/byazt/rx/tt;

    move-result-object v0

    invoke-virtual {v0}, Lcom/byazt/rx/tt;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "NPTH Catch Error"

    .line 6
    invoke-static {p0, v0, p1}, Lcom/byazt/nr/m;->ve(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_0
    return-void
.end method

.method public static c(Ljava/lang/Throwable;)V
    .locals 2

    .line 3
    invoke-static {}, Lcom/byazt/uy/x;->n()Lcom/byazt/rx/tt;

    move-result-object v0

    invoke-virtual {v0}, Lcom/byazt/rx/tt;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "npth"

    const-string v1, "NPTH Catch Error"

    .line 4
    invoke-static {v0, v1, p0}, Lcom/byazt/nr/m;->ve(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_0
    return-void
.end method

.method public static tt(Ljava/lang/Throwable;)V
    .locals 2

    .line 1
    invoke-static {}, Lcom/byazt/uy/x;->n()Lcom/byazt/rx/tt;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-virtual {v0}, Lcom/byazt/rx/tt;->a()Z

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    if-eqz v0, :cond_0

    .line 10
    .line 11
    const-string v0, "npth"

    .line 12
    .line 13
    const-string v1, "NPTH Catch Error"

    .line 14
    .line 15
    invoke-static {v0, v1, p0}, Lcom/byazt/nr/m;->tt(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 16
    .line 17
    .line 18
    :cond_0
    return-void
.end method
