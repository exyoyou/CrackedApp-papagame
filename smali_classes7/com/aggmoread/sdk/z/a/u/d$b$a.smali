.class Lcom/aggmoread/sdk/z/a/u/d$b$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/aggmoread/sdk/z/a/u/d$b;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/aggmoread/sdk/z/a/u/d$b;


# direct methods
.method constructor <init>(Lcom/aggmoread/sdk/z/a/u/d$b;)V
    .locals 0

    iput-object p1, p0, Lcom/aggmoread/sdk/z/a/u/d$b$a;->a:Lcom/aggmoread/sdk/z/a/u/d$b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    iget-object p1, p0, Lcom/aggmoread/sdk/z/a/u/d$b$a;->a:Lcom/aggmoread/sdk/z/a/u/d$b;

    iget-object p1, p1, Lcom/aggmoread/sdk/z/a/u/d$b;->c:Lcom/aggmoread/sdk/z/a/u/d;

    iget-object v0, p1, Lcom/aggmoread/sdk/z/a/u/d;->c:Lcom/aggmoread/sdk/z/a/g/d;

    const/4 v1, 0x0

    iput v1, v0, Lcom/aggmoread/sdk/z/a/g/d;->j:I

    invoke-static {p1}, Lcom/aggmoread/sdk/z/a/u/d;->b(Lcom/aggmoread/sdk/z/a/u/d;)V

    return-void
.end method
