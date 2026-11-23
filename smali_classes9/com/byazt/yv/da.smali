.class public Lcom/byazt/yv/da;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Lcom/byazt/zqa/c;
    c = {
        0x0,
        0x1,
        0x1f3,
        0x48
    }
.end annotation


# static fields
.field public static c:Z

.field public static tt:Z


# direct methods
.method public static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public static c(Ljava/lang/String;)V
    .locals 0

    .line 1
    return-void
.end method

.method public static c(Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 0

    .line 2
    return-void
.end method

.method public static c(Ljava/lang/Throwable;)V
    .locals 2

    const-string v0, "TeaLog"

    const-string v1, ""

    .line 3
    invoke-static {v0, v1, p0}, Lcom/byazt/nr/m;->ve(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method public static tt(Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-static {p0, v0}, Lcom/byazt/yv/da;->tt(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method public static tt(Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 1

    const-string v0, "TeaLog"

    .line 2
    invoke-static {v0, p0, p1}, Lcom/byazt/nr/m;->tt(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method public static tt(Ljava/lang/Throwable;)V
    .locals 1

    if-eqz p0, :cond_0

    const-string v0, "TeaLog"

    .line 3
    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/byazt/nr/m;->c(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public static uj(Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 1

    .line 1
    const-string v0, "TeaLog"

    .line 2
    .line 3
    invoke-static {v0, p0, p1}, Lcom/byazt/nr/m;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public static ve(Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 1

    .line 1
    const-string v0, "TeaLog"

    .line 2
    .line 3
    invoke-static {v0, p0, p1}, Lcom/byazt/nr/m;->ve(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method
