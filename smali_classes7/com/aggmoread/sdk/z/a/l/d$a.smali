.class Lcom/aggmoread/sdk/z/a/l/d$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/aggmoread/sdk/z/a/t/a$g;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/aggmoread/sdk/z/a/l/d;->a(Lcom/aggmoread/sdk/z/a/u/m;Lcom/aggmoread/sdk/z/a/t/e;Lcom/aggmoread/sdk/z/a/l/e$a;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/aggmoread/sdk/z/a/t/e;

.field final synthetic b:Lcom/aggmoread/sdk/z/a/l/d;


# direct methods
.method constructor <init>(Lcom/aggmoread/sdk/z/a/l/d;Lcom/aggmoread/sdk/z/a/t/e;)V
    .locals 0

    iput-object p1, p0, Lcom/aggmoread/sdk/z/a/l/d$a;->b:Lcom/aggmoread/sdk/z/a/l/d;

    iput-object p2, p0, Lcom/aggmoread/sdk/z/a/l/d$a;->a:Lcom/aggmoread/sdk/z/a/t/e;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(I)V
    .locals 0

    iget-object p1, p0, Lcom/aggmoread/sdk/z/a/l/d$a;->a:Lcom/aggmoread/sdk/z/a/t/e;

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/aggmoread/sdk/z/a/t/e;->c()Z

    move-result p1

    if-nez p1, :cond_0

    iget-object p1, p0, Lcom/aggmoread/sdk/z/a/l/d$a;->b:Lcom/aggmoread/sdk/z/a/l/d;

    invoke-static {p1}, Lcom/aggmoread/sdk/z/a/l/d;->a(Lcom/aggmoread/sdk/z/a/l/d;)Lcom/aggmoread/sdk/z/a/u/d;

    move-result-object p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/aggmoread/sdk/z/a/l/d$a;->b:Lcom/aggmoread/sdk/z/a/l/d;

    invoke-static {p1}, Lcom/aggmoread/sdk/z/a/l/d;->a(Lcom/aggmoread/sdk/z/a/l/d;)Lcom/aggmoread/sdk/z/a/u/d;

    move-result-object p1

    invoke-virtual {p1}, Lcom/aggmoread/sdk/z/a/u/d;->c()V

    :cond_0
    return-void
.end method
