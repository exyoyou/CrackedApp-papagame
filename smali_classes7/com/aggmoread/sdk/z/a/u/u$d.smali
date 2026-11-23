.class Lcom/aggmoread/sdk/z/a/u/u$d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/aggmoread/sdk/z/a/u/r$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/aggmoread/sdk/z/a/u/u;->a(Landroid/content/Context;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/aggmoread/sdk/z/a/u/u;


# direct methods
.method constructor <init>(Lcom/aggmoread/sdk/z/a/u/u;)V
    .locals 0

    iput-object p1, p0, Lcom/aggmoread/sdk/z/a/u/u$d;->a:Lcom/aggmoread/sdk/z/a/u/u;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/aggmoread/sdk/z/a/u/u$d;->a:Lcom/aggmoread/sdk/z/a/u/u;

    invoke-static {v0}, Lcom/aggmoread/sdk/z/a/u/u;->d(Lcom/aggmoread/sdk/z/a/u/u;)V

    return-void
.end method

.method public a(J)V
    .locals 3

    .line 2
    iget-object v0, p0, Lcom/aggmoread/sdk/z/a/u/u$d;->a:Lcom/aggmoread/sdk/z/a/u/u;

    invoke-static {v0}, Lcom/aggmoread/sdk/z/a/u/u;->e(Lcom/aggmoread/sdk/z/a/u/u;)Landroid/widget/TextView;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/aggmoread/sdk/z/a/u/u$d;->a:Lcom/aggmoread/sdk/z/a/u/u;

    invoke-static {v0}, Lcom/aggmoread/sdk/z/a/u/u;->e(Lcom/aggmoread/sdk/z/a/u/u;)Landroid/widget/TextView;

    move-result-object v0

    const/high16 v1, 0x41900000    # 18.0f

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextSize(F)V

    iget-object v0, p0, Lcom/aggmoread/sdk/z/a/u/u$d;->a:Lcom/aggmoread/sdk/z/a/u/u;

    invoke-static {v0}, Lcom/aggmoread/sdk/z/a/u/u;->e(Lcom/aggmoread/sdk/z/a/u/u;)Landroid/widget/TextView;

    move-result-object v0

    const-string v1, "\u5173\u95ed"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_0
    const-wide/16 v0, 0x258

    cmp-long v2, p1, v0

    if-gtz v2, :cond_1

    iget-object p1, p0, Lcom/aggmoread/sdk/z/a/u/u$d;->a:Lcom/aggmoread/sdk/z/a/u/u;

    invoke-static {p1}, Lcom/aggmoread/sdk/z/a/u/u;->d(Lcom/aggmoread/sdk/z/a/u/u;)V

    :cond_1
    return-void
.end method
