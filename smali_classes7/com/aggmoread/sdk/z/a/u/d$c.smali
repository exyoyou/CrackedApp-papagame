.class Lcom/aggmoread/sdk/z/a/u/d$c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/aggmoread/sdk/z/a/u/q$b;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/aggmoread/sdk/z/a/u/d;->a(Lcom/aggmoread/sdk/z/a/u/q;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/aggmoread/sdk/z/a/u/d;


# direct methods
.method constructor <init>(Lcom/aggmoread/sdk/z/a/u/d;)V
    .locals 0

    iput-object p1, p0, Lcom/aggmoread/sdk/z/a/u/d$c;->a:Lcom/aggmoread/sdk/z/a/u/d;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a([F)V
    .locals 2

    iget-object v0, p0, Lcom/aggmoread/sdk/z/a/u/d$c;->a:Lcom/aggmoread/sdk/z/a/u/d;

    iget-object v0, v0, Lcom/aggmoread/sdk/z/a/u/d;->c:Lcom/aggmoread/sdk/z/a/g/d;

    const/4 v1, 0x2

    iput v1, v0, Lcom/aggmoread/sdk/z/a/g/d;->j:I

    invoke-virtual {v0, p1}, Lcom/aggmoread/sdk/z/a/g/d;->a([F)V

    iget-object p1, p0, Lcom/aggmoread/sdk/z/a/u/d$c;->a:Lcom/aggmoread/sdk/z/a/u/d;

    invoke-static {p1}, Lcom/aggmoread/sdk/z/a/u/d;->b(Lcom/aggmoread/sdk/z/a/u/d;)V

    return-void
.end method
