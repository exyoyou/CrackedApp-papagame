.class final Lcom/aggmoread/sdk/z/c/a/a/e/v/g$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/aggmoread/sdk/z/c/a/a/e/v/g$c;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/aggmoread/sdk/z/c/a/a/e/v/g;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(I)Lcom/aggmoread/sdk/z/c/a/a/e/v/g;
    .locals 1

    const/4 v0, -0x1

    if-ne p1, v0, :cond_0

    sget-object p1, Lcom/aggmoread/sdk/z/c/a/a/e/v/g;->b:Lcom/aggmoread/sdk/z/c/a/a/e/v/g;

    return-object p1

    :cond_0
    const/4 v0, 0x1

    if-ne v0, p1, :cond_1

    new-instance p1, Lcom/aggmoread/sdk/z/c/a/a/e/v/b;

    invoke-direct {p1}, Lcom/aggmoread/sdk/z/c/a/a/e/v/b;-><init>()V

    return-object p1

    :cond_1
    const/16 v0, 0x64

    if-ne v0, p1, :cond_2

    new-instance p1, Lcom/aggmoread/sdk/z/c/a/a/e/v/d;

    invoke-direct {p1}, Lcom/aggmoread/sdk/z/c/a/a/e/v/d;-><init>()V

    return-object p1

    :cond_2
    const/16 v0, 0x6b

    if-ne v0, p1, :cond_3

    new-instance p1, Lcom/aggmoread/sdk/z/c/a/a/e/v/h;

    invoke-direct {p1}, Lcom/aggmoread/sdk/z/c/a/a/e/v/h;-><init>()V

    return-object p1

    :cond_3
    sget-object p1, Lcom/aggmoread/sdk/z/c/a/a/e/v/g;->b:Lcom/aggmoread/sdk/z/c/a/a/e/v/g;

    return-object p1
.end method
