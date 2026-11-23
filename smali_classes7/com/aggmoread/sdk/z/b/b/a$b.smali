.class public Lcom/aggmoread/sdk/z/b/b/a$b;
.super Lcom/aggmoread/sdk/z/a/i/e$a;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/aggmoread/sdk/z/b/b/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "b"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/aggmoread/sdk/z/a/i/e$a<",
        "Lcom/aggmoread/sdk/z/b/b/a$b;",
        "Lcom/aggmoread/sdk/z/b/b/a;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/aggmoread/sdk/z/a/i/e$a;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method protected bridge synthetic f()Lcom/aggmoread/sdk/z/a/i/e;
    .locals 1

    invoke-virtual {p0}, Lcom/aggmoread/sdk/z/b/b/a$b;->g()Lcom/aggmoread/sdk/z/b/b/a;

    move-result-object v0

    return-object v0
.end method

.method protected g()Lcom/aggmoread/sdk/z/b/b/a;
    .locals 2

    new-instance v0, Lcom/aggmoread/sdk/z/b/b/a;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/aggmoread/sdk/z/b/b/a;-><init>(Lcom/aggmoread/sdk/z/b/b/a$a;)V

    return-object v0
.end method
