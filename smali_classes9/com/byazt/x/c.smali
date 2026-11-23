.class public Lcom/byazt/x/c;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Lcom/byazt/zqa/c;
    c = {
        0x0,
        0x1,
        0x47,
        0x14
    }
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/byazt/x/c$c;
    }
.end annotation


# static fields
.field public static c:I = 0x4

.field public static tt:Lcom/byazt/x/c$c;


# direct methods
.method public static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public static c(I)V
    .locals 0

    .line 1
    sput p0, Lcom/byazt/x/c;->c:I

    return-void
.end method

.method public static c(Ljava/lang/String;)V
    .locals 1

    const-string v0, "DownloaderLogger"

    .line 5
    invoke-static {v0, p0}, Lcom/byazt/x/c;->tt(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static c(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    if-nez p1, :cond_0

    return-void

    .line 3
    :cond_0
    sget-object p1, Lcom/byazt/x/c;->tt:Lcom/byazt/x/c$c;

    if-eqz p1, :cond_1

    .line 4
    invoke-static {p0}, Lcom/byazt/x/c;->tt(Ljava/lang/String;)Ljava/lang/String;

    :cond_1
    return-void
.end method

.method public static c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 0

    if-nez p1, :cond_0

    if-nez p2, :cond_0

    return-void

    .line 6
    :cond_0
    sget p1, Lcom/byazt/x/c;->c:I

    const/4 p2, 0x3

    if-gt p1, p2, :cond_1

    .line 7
    invoke-static {p0}, Lcom/byazt/x/c;->tt(Ljava/lang/String;)Ljava/lang/String;

    .line 8
    :cond_1
    sget-object p1, Lcom/byazt/x/c;->tt:Lcom/byazt/x/c$c;

    if-eqz p1, :cond_2

    .line 9
    invoke-static {p0}, Lcom/byazt/x/c;->tt(Ljava/lang/String;)Ljava/lang/String;

    :cond_2
    return-void
.end method

.method public static c()Z
    .locals 2

    .line 2
    sget v0, Lcom/byazt/x/c;->c:I

    const/4 v1, 0x3

    if-gt v0, v1, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public static n(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 1
    if-nez p1, :cond_0

    .line 2
    .line 3
    return-void

    .line 4
    :cond_0
    sget v0, Lcom/byazt/x/c;->c:I

    .line 5
    .line 6
    const/4 v1, 0x6

    .line 7
    if-gt v0, v1, :cond_1

    .line 8
    .line 9
    invoke-static {p0}, Lcom/byazt/x/c;->tt(Ljava/lang/String;)Ljava/lang/String;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    invoke-static {v0, p1}, Lcom/byazt/nr/m;->uj(Ljava/lang/String;Ljava/lang/String;)V

    .line 14
    .line 15
    .line 16
    :cond_1
    sget-object p1, Lcom/byazt/x/c;->tt:Lcom/byazt/x/c$c;

    .line 17
    .line 18
    if-eqz p1, :cond_2

    .line 19
    .line 20
    invoke-static {p0}, Lcom/byazt/x/c;->tt(Ljava/lang/String;)Ljava/lang/String;

    .line 21
    .line 22
    .line 23
    :cond_2
    return-void
.end method

.method public static tt(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .line 1
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 2
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Downloader-"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_0
    const-string p0, "DownloaderLogger"

    return-object p0
.end method

.method public static tt(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    if-nez p1, :cond_0

    return-void

    .line 3
    :cond_0
    sget p1, Lcom/byazt/x/c;->c:I

    const/4 v0, 0x3

    if-gt p1, v0, :cond_1

    .line 4
    invoke-static {p0}, Lcom/byazt/x/c;->tt(Ljava/lang/String;)Ljava/lang/String;

    .line 5
    :cond_1
    sget-object p1, Lcom/byazt/x/c;->tt:Lcom/byazt/x/c$c;

    if-eqz p1, :cond_2

    .line 6
    invoke-static {p0}, Lcom/byazt/x/c;->tt(Ljava/lang/String;)Ljava/lang/String;

    :cond_2
    return-void
.end method

.method public static tt(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 2

    if-nez p1, :cond_0

    if-nez p2, :cond_0

    return-void

    .line 7
    :cond_0
    sget v0, Lcom/byazt/x/c;->c:I

    const/4 v1, 0x6

    if-gt v0, v1, :cond_1

    .line 8
    invoke-static {p0}, Lcom/byazt/x/c;->tt(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p1, p2}, Lcom/byazt/nr/m;->ve(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 9
    :cond_1
    sget-object p1, Lcom/byazt/x/c;->tt:Lcom/byazt/x/c$c;

    if-eqz p1, :cond_2

    .line 10
    invoke-static {p0}, Lcom/byazt/x/c;->tt(Ljava/lang/String;)Ljava/lang/String;

    :cond_2
    return-void
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
    sget v0, Lcom/byazt/x/c;->c:I

    .line 5
    .line 6
    const/4 v1, 0x5

    .line 7
    if-gt v0, v1, :cond_1

    .line 8
    .line 9
    invoke-static {p0}, Lcom/byazt/x/c;->tt(Ljava/lang/String;)Ljava/lang/String;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    invoke-static {v0, p1}, Lcom/byazt/nr/m;->tt(Ljava/lang/String;Ljava/lang/String;)V

    .line 14
    .line 15
    .line 16
    :cond_1
    sget-object p1, Lcom/byazt/x/c;->tt:Lcom/byazt/x/c$c;

    .line 17
    .line 18
    if-eqz p1, :cond_2

    .line 19
    .line 20
    invoke-static {p0}, Lcom/byazt/x/c;->tt(Ljava/lang/String;)Ljava/lang/String;

    .line 21
    .line 22
    .line 23
    :cond_2
    return-void
.end method

.method public static ve(Ljava/lang/String;)V
    .locals 1

    const-string v0, "DownloaderLogger"

    .line 5
    invoke-static {v0, p0}, Lcom/byazt/x/c;->uj(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static ve(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    if-nez p1, :cond_0

    return-void

    .line 1
    :cond_0
    sget v0, Lcom/byazt/x/c;->c:I

    const/4 v1, 0x4

    if-gt v0, v1, :cond_1

    .line 2
    invoke-static {p0}, Lcom/byazt/x/c;->tt(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/byazt/nr/m;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 3
    :cond_1
    sget-object p1, Lcom/byazt/x/c;->tt:Lcom/byazt/x/c$c;

    if-eqz p1, :cond_2

    .line 4
    invoke-static {p0}, Lcom/byazt/x/c;->tt(Ljava/lang/String;)Ljava/lang/String;

    :cond_2
    return-void
.end method
