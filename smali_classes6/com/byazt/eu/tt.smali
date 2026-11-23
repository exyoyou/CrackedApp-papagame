.class public Lcom/byazt/eu/tt;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Lcom/byazt/zqa/c;
    c = {
        0x0,
        0x1,
        0x226,
        0xd
    }
.end annotation


# static fields
.field public static c:Z = true

.field public static tt:Z = false

.field public static ve:I = 0x4


# direct methods
.method public static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public static c()V
    .locals 1

    const/4 v0, 0x1

    .line 2
    sput-boolean v0, Lcom/byazt/eu/tt;->tt:Z

    const/4 v0, 0x3

    .line 3
    invoke-static {v0}, Lcom/byazt/eu/tt;->c(I)V

    return-void
.end method

.method public static c(I)V
    .locals 0

    .line 1
    sput p0, Lcom/byazt/eu/tt;->ve:I

    return-void
.end method

.method public static c(Ljava/lang/String;)V
    .locals 1

    .line 4
    invoke-static {}, Lcom/byazt/eu/tt;->tt()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    const-string v0, "Logger"

    .line 5
    invoke-static {v0, p0}, Lcom/byazt/eu/tt;->c(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static c(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 6
    invoke-static {}, Lcom/byazt/eu/tt;->tt()Z

    return-void
.end method

.method public static c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 0

    .line 7
    invoke-static {}, Lcom/byazt/eu/tt;->tt()Z

    return-void
.end method

.method public static tt(Ljava/lang/String;)V
    .locals 1

    .line 2
    invoke-static {}, Lcom/byazt/eu/tt;->tt()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    const-string v0, "Logger"

    .line 3
    invoke-static {v0, p0}, Lcom/byazt/eu/tt;->tt(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static tt(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 4
    invoke-static {}, Lcom/byazt/eu/tt;->tt()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    if-nez p1, :cond_1

    return-void

    .line 5
    :cond_1
    sget v0, Lcom/byazt/eu/tt;->ve:I

    const/4 v1, 0x4

    if-gt v0, v1, :cond_2

    .line 6
    invoke-static {p0, p1}, Lcom/byazt/nr/m;->c(Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    return-void
.end method

.method public static tt(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 2

    .line 7
    invoke-static {}, Lcom/byazt/eu/tt;->tt()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    if-nez p1, :cond_1

    if-nez p2, :cond_1

    return-void

    .line 8
    :cond_1
    sget v0, Lcom/byazt/eu/tt;->ve:I

    const/4 v1, 0x6

    if-gt v0, v1, :cond_2

    .line 9
    invoke-static {p0, p1, p2}, Lcom/byazt/nr/m;->ve(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_2
    return-void
.end method

.method public static tt()Z
    .locals 1

    .line 1
    sget-boolean v0, Lcom/byazt/vx/da;->c:Z

    if-nez v0, :cond_1

    sget-boolean v0, Lcom/byazt/eu/tt;->tt:Z

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    return v0

    :cond_1
    :goto_0
    const/4 v0, 0x1

    return v0
.end method

.method public static uj(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 1
    invoke-static {}, Lcom/byazt/eu/tt;->tt()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-nez v0, :cond_0

    .line 6
    .line 7
    return-void

    .line 8
    :cond_0
    if-nez p1, :cond_1

    .line 9
    .line 10
    return-void

    .line 11
    :cond_1
    sget v0, Lcom/byazt/eu/tt;->ve:I

    .line 12
    .line 13
    const/4 v1, 0x6

    .line 14
    if-gt v0, v1, :cond_2

    .line 15
    .line 16
    invoke-static {p0, p1}, Lcom/byazt/nr/m;->uj(Ljava/lang/String;Ljava/lang/String;)V

    .line 17
    .line 18
    .line 19
    :cond_2
    return-void
.end method

.method public static ve(Ljava/lang/String;)V
    .locals 1

    .line 4
    invoke-static {}, Lcom/byazt/eu/tt;->tt()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    const-string v0, "Logger"

    .line 5
    invoke-static {v0, p0}, Lcom/byazt/eu/tt;->uj(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static ve(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 1
    invoke-static {}, Lcom/byazt/eu/tt;->tt()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    if-nez p1, :cond_1

    return-void

    .line 2
    :cond_1
    sget v0, Lcom/byazt/eu/tt;->ve:I

    const/4 v1, 0x5

    if-gt v0, v1, :cond_2

    .line 3
    invoke-static {p0, p1}, Lcom/byazt/nr/m;->tt(Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    return-void
.end method
