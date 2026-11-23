.class public final Lcom/byazt/tlc/c;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Lcom/byazt/zqa/c;
    c = {
        0x0,
        0x1,
        0x680,
        0x14
    }
.end annotation


# direct methods
.method public static c(IZ)V
    .locals 1

    .line 5
    invoke-static {}, Lcom/byazt/rs/a;->c()Lcom/byazt/rs/a;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/byazt/rs/a;->c(I)V

    .line 6
    invoke-static {}, Lcom/byazt/rs/a;->c()Lcom/byazt/rs/a;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/byazt/rs/a;->c(Z)V

    return-void
.end method

.method public static c(Landroid/content/Context;Ljava/lang/String;Lcom/byazt/ogz/sl;)V
    .locals 1

    .line 1
    invoke-static {}, Lcom/byazt/rs/a;->c()Lcom/byazt/rs/a;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/byazt/rs/a;->c(Landroid/content/Context;)V

    .line 2
    invoke-static {}, Lcom/byazt/rs/a;->c()Lcom/byazt/rs/a;

    move-result-object p0

    new-instance v0, Lcom/byazt/tlc/c$1;

    invoke-direct {v0, p1}, Lcom/byazt/tlc/c$1;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/byazt/rs/a;->c(Lcom/byazt/rs/tt;)V

    .line 3
    invoke-static {}, Lcom/byazt/rs/a;->c()Lcom/byazt/rs/a;

    move-result-object p0

    new-instance p1, Lcom/byazt/tlc/c$2;

    invoke-direct {p1}, Lcom/byazt/tlc/c$2;-><init>()V

    invoke-virtual {p0, p1}, Lcom/byazt/rs/a;->c(Lcom/byazt/rs/ve;)V

    .line 4
    invoke-virtual {p2}, Lcom/byazt/ogz/sl;->t()I

    move-result p0

    invoke-virtual {p2}, Lcom/byazt/ogz/sl;->u()Z

    move-result p1

    invoke-static {p0, p1}, Lcom/byazt/tlc/c;->c(IZ)V

    return-void
.end method
