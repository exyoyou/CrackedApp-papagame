.class public Lcom/byazt/th/n;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Lcom/byazt/zqa/c;
    c = {
        0x0,
        0x1,
        0x4e,
        0x2e
    }
.end annotation


# static fields
.field public static c:Lcom/byazt/uk/a;


# direct methods
.method public static c(Lcom/byazt/uk/a;)V
    .locals 0

    .line 1
    sput-object p0, Lcom/byazt/th/n;->c:Lcom/byazt/uk/a;

    return-void
.end method

.method public static c(Ljava/lang/Runnable;)V
    .locals 1

    .line 4
    sget-object v0, Lcom/byazt/th/n;->c:Lcom/byazt/uk/a;

    invoke-interface {v0, p0}, Lcom/byazt/uk/a;->c(Ljava/lang/Runnable;)V

    return-void
.end method

.method public static c(Ljava/lang/Runnable;Z)V
    .locals 0

    if-eqz p1, :cond_0

    .line 2
    invoke-static {p0}, Lcom/byazt/th/n;->c(Ljava/lang/Runnable;)V

    return-void

    .line 3
    :cond_0
    invoke-static {p0}, Lcom/byazt/th/n;->tt(Ljava/lang/Runnable;)V

    return-void
.end method

.method public static tt(Ljava/lang/Runnable;)V
    .locals 1

    .line 1
    sget-object v0, Lcom/byazt/th/n;->c:Lcom/byazt/uk/a;

    .line 2
    .line 3
    invoke-interface {v0, p0}, Lcom/byazt/uk/a;->tt(Ljava/lang/Runnable;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public static ve(Ljava/lang/Runnable;)V
    .locals 1

    .line 1
    sget-object v0, Lcom/byazt/th/n;->c:Lcom/byazt/uk/a;

    .line 2
    .line 3
    invoke-interface {v0, p0}, Lcom/byazt/uk/a;->ve(Ljava/lang/Runnable;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method
