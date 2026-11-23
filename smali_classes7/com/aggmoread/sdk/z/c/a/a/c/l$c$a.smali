.class Lcom/aggmoread/sdk/z/c/a/a/c/l$c$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/aggmoread/sdk/z/c/a/a/c/l$d;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/aggmoread/sdk/z/c/a/a/c/l$c;->a(Lcom/aggmoread/sdk/z/c/a/a/e/b;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/aggmoread/sdk/z/c/a/a/e/b;


# direct methods
.method constructor <init>(Lcom/aggmoread/sdk/z/c/a/a/c/l$c;Lcom/aggmoread/sdk/z/c/a/a/e/b;)V
    .locals 0

    iput-object p2, p0, Lcom/aggmoread/sdk/z/c/a/a/c/l$c$a;->a:Lcom/aggmoread/sdk/z/c/a/a/e/b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/aggmoread/sdk/z/c/a/a/d/b/f;[BLcom/aggmoread/sdk/z/c/a/a/d/b/j;)V
    .locals 0

    if-eqz p2, :cond_0

    iget-object p1, p0, Lcom/aggmoread/sdk/z/c/a/a/c/l$c$a;->a:Lcom/aggmoread/sdk/z/c/a/a/e/b;

    invoke-virtual {p1, p2}, Lcom/aggmoread/sdk/z/c/a/a/e/b;->a([B)V

    :cond_0
    return-void
.end method
