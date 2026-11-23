.class public Lcom/byazt/dk/z$uj;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/byazt/ou/i;


# annotations
.annotation runtime Lcom/byazt/zqa/c;
    c = {
        0x0,
        0x1,
        0x163,
        0x756
    }
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/byazt/dk/z;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "uj"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method


# virtual methods
.method public c(Landroid/app/Activity;I[Ljava/lang/String;[I)V
    .locals 0

    .line 1
    return-void
.end method

.method public c(Landroid/app/Activity;[Ljava/lang/String;Lcom/byazt/ou/rl;)V
    .locals 2

    .line 2
    invoke-static {}, Lcom/byazt/dk/z;->n()Lcom/byazt/dk/uj;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 3
    invoke-static {}, Lcom/byazt/dk/z;->n()Lcom/byazt/dk/uj;

    move-result-object v0

    new-instance v1, Lcom/byazt/dk/z$uj$1;

    invoke-direct {v1, p0, p3}, Lcom/byazt/dk/z$uj$1;-><init>(Lcom/byazt/dk/z$uj;Lcom/byazt/ou/rl;)V

    invoke-interface {v0, p1, p2, v1}, Lcom/byazt/dk/uj;->c(Landroid/app/Activity;[Ljava/lang/String;Lcom/byazt/dk/a;)V

    :cond_0
    return-void
.end method

.method public c(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 1

    .line 4
    invoke-static {}, Lcom/byazt/dk/z;->n()Lcom/byazt/dk/uj;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 5
    invoke-static {}, Lcom/byazt/dk/z;->n()Lcom/byazt/dk/uj;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lcom/byazt/dk/uj;->c(Landroid/content/Context;Ljava/lang/String;)Z

    move-result p1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method
