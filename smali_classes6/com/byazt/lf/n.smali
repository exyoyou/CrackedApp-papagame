.class public Lcom/byazt/lf/n;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Lcom/byazt/zqa/c;
    c = {
        0x0,
        0x1,
        0x20e,
        0x2e
    }
.end annotation


# static fields
.field public static c:Z = false

.field public static tt:I = 0x4


# direct methods
.method public static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public static c(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 2
    sget-boolean v0, Lcom/byazt/lf/n;->c:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    if-nez p1, :cond_1

    return-void

    .line 3
    :cond_1
    sget v0, Lcom/byazt/lf/n;->tt:I

    const/4 v1, 0x4

    if-gt v0, v1, :cond_2

    .line 4
    invoke-static {p0}, Lcom/byazt/nr/m;->uj(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0, p1}, Lcom/byazt/nr/m;->c(Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    return-void
.end method

.method public static c()Z
    .locals 1

    .line 1
    sget-boolean v0, Lcom/byazt/lf/n;->c:Z

    return v0
.end method
