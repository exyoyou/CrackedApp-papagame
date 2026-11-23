.class public Lcom/byazt/tf/c;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Lcom/byazt/zqa/c;
    c = {
        0x0,
        0x1,
        0x412,
        0x14
    }
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/byazt/tf/c$c;,
        Lcom/byazt/tf/c$tt;
    }
.end annotation


# static fields
.field public static c:I = 0x6

.field public static tt:Lcom/byazt/tf/c$tt;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    invoke-static {}, Lcom/byazt/tf/c$c;->c()Lcom/byazt/tf/c$c;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    sput-object v0, Lcom/byazt/tf/c;->tt:Lcom/byazt/tf/c$tt;

    .line 6
    .line 7
    return-void
.end method

.method public static c()I
    .locals 1

    .line 1
    sget v0, Lcom/byazt/tf/c;->c:I

    return v0
.end method

.method public static c(Ljava/lang/String;)V
    .locals 1

    const-string v0, "Logger"

    .line 2
    invoke-static {v0, p0}, Lcom/byazt/tf/c;->c(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static c(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    if-nez p1, :cond_0

    return-void

    .line 3
    :cond_0
    sget-object p0, Lcom/byazt/tf/c;->tt:Lcom/byazt/tf/c$tt;

    const/4 p1, 0x3

    invoke-virtual {p0, p1}, Lcom/byazt/tf/c$tt;->c(I)Z

    return-void
.end method

.method public static c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 2

    if-nez p1, :cond_0

    if-nez p2, :cond_0

    return-void

    .line 4
    :cond_0
    sget-object v0, Lcom/byazt/tf/c;->tt:Lcom/byazt/tf/c$tt;

    const/4 v1, 0x6

    invoke-virtual {v0, v1}, Lcom/byazt/tf/c$tt;->c(I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 5
    sget-object v0, Lcom/byazt/tf/c;->tt:Lcom/byazt/tf/c$tt;

    invoke-virtual {v0, p0, p1, p2}, Lcom/byazt/tf/c$tt;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_1
    return-void
.end method

.method public static tt(Ljava/lang/String;)V
    .locals 1

    const-string v0, "Logger"

    .line 4
    invoke-static {v0, p0}, Lcom/byazt/tf/c;->uj(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static tt(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    if-nez p1, :cond_0

    return-void

    .line 2
    :cond_0
    sget-object v0, Lcom/byazt/tf/c;->tt:Lcom/byazt/tf/c$tt;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/byazt/tf/c$tt;->c(I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 3
    sget-object v0, Lcom/byazt/tf/c;->tt:Lcom/byazt/tf/c$tt;

    invoke-virtual {v0, p0, p1}, Lcom/byazt/tf/c$tt;->c(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    return-void
.end method

.method public static tt()Z
    .locals 2

    .line 1
    sget v0, Lcom/byazt/tf/c;->c:I

    const/4 v1, 0x3

    if-gt v0, v1, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public static uj(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 1
    if-nez p1, :cond_0

    .line 2
    .line 3
    return-void

    .line 4
    :cond_0
    sget-object v0, Lcom/byazt/tf/c;->tt:Lcom/byazt/tf/c$tt;

    .line 5
    .line 6
    const/4 v1, 0x6

    .line 7
    invoke-virtual {v0, v1}, Lcom/byazt/tf/c$tt;->c(I)Z

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    if-eqz v0, :cond_1

    .line 12
    .line 13
    sget-object v0, Lcom/byazt/tf/c;->tt:Lcom/byazt/tf/c$tt;

    .line 14
    .line 15
    invoke-virtual {v0, p0, p1}, Lcom/byazt/tf/c$tt;->tt(Ljava/lang/String;Ljava/lang/String;)V

    .line 16
    .line 17
    .line 18
    :cond_1
    return-void
.end method

.method public static ve(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 1
    if-nez p1, :cond_0

    .line 2
    .line 3
    return-void

    .line 4
    :cond_0
    sget-object v0, Lcom/byazt/tf/c;->tt:Lcom/byazt/tf/c$tt;

    .line 5
    .line 6
    const/4 v1, 0x5

    .line 7
    invoke-virtual {v0, v1}, Lcom/byazt/tf/c$tt;->c(I)Z

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    if-eqz v0, :cond_1

    .line 12
    .line 13
    sget-object v0, Lcom/byazt/tf/c;->tt:Lcom/byazt/tf/c$tt;

    .line 14
    .line 15
    invoke-virtual {v0, p0, p1}, Lcom/byazt/tf/c$tt;->ve(Ljava/lang/String;Ljava/lang/String;)V

    .line 16
    .line 17
    .line 18
    :cond_1
    return-void
.end method
