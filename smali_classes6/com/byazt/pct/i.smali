.class public final Lcom/byazt/pct/i;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Lcom/byazt/zqa/c;
    c = {
        0x0,
        0x1,
        0x7c,
        0x2a
    }
.end annotation


# static fields
.field public static c:Z


# direct methods
.method public static c(Ljava/lang/RuntimeException;)V
    .locals 1

    .line 7
    sget-boolean v0, Lcom/byazt/pct/i;->c:Z

    if-nez v0, :cond_0

    return-void

    .line 8
    :cond_0
    throw p0
.end method

.method public static c(Ljava/lang/String;)V
    .locals 1

    .line 2
    sget-boolean v0, Lcom/byazt/pct/i;->c:Z

    if-eqz v0, :cond_0

    const-string v0, "JsBridge2"

    .line 3
    invoke-static {v0, p0}, Lcom/byazt/nr/m;->c(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public static c(Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 2

    .line 4
    sget-boolean v0, Lcom/byazt/pct/i;->c:Z

    if-eqz v0, :cond_0

    const-string v0, "JsBridge2"

    .line 5
    invoke-static {v0, p0, p1}, Lcom/byazt/nr/m;->tt(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 6
    new-instance p0, Ljava/lang/StringBuilder;

    const-string v1, "Stacktrace: "

    invoke-direct {p0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p1}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/byazt/nr/m;->tt(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public static c(Z)V
    .locals 0

    .line 1
    sput-boolean p0, Lcom/byazt/pct/i;->c:Z

    return-void
.end method

.method public static tt(Ljava/lang/String;)V
    .locals 1

    .line 1
    sget-boolean v0, Lcom/byazt/pct/i;->c:Z

    if-eqz v0, :cond_0

    const-string v0, "JsBridge2"

    .line 2
    invoke-static {v0, p0}, Lcom/byazt/nr/m;->tt(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public static tt(Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 2

    .line 3
    sget-boolean v0, Lcom/byazt/pct/i;->c:Z

    if-eqz v0, :cond_0

    const-string v0, "JsBridge2"

    .line 4
    invoke-static {v0, p0, p1}, Lcom/byazt/nr/m;->ve(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 5
    new-instance p0, Ljava/lang/StringBuilder;

    const-string v1, "Stacktrace: "

    invoke-direct {p0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p1}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/byazt/nr/m;->uj(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method
