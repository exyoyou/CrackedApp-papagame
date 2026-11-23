.class Lcom/aggmoread/sdk/z/a/u/d$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/aggmoread/sdk/z/a/u/d;->a(Ljava/util/List;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic b:Ljava/util/List;

.field final synthetic c:Lcom/aggmoread/sdk/z/a/u/d;


# direct methods
.method constructor <init>(Lcom/aggmoread/sdk/z/a/u/d;Ljava/util/List;)V
    .locals 0

    iput-object p1, p0, Lcom/aggmoread/sdk/z/a/u/d$b;->c:Lcom/aggmoread/sdk/z/a/u/d;

    iput-object p2, p0, Lcom/aggmoread/sdk/z/a/u/d$b;->b:Ljava/util/List;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    const-string v0, "ApiViewStatusLayout"

    :try_start_0
    new-instance v1, Lcom/aggmoread/sdk/z/a/u/d$b$a;

    invoke-direct {v1, p0}, Lcom/aggmoread/sdk/z/a/u/d$b$a;-><init>(Lcom/aggmoread/sdk/z/a/u/d$b;)V

    iget-object v2, p0, Lcom/aggmoread/sdk/z/a/u/d$b;->b:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/View;

    instance-of v4, v3, Lcom/aggmoread/sdk/z/a/u/d;

    if-eqz v4, :cond_0

    invoke-virtual {v3, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    new-instance v4, Lcom/aggmoread/sdk/z/a/u/d$d;

    iget-object v5, p0, Lcom/aggmoread/sdk/z/a/u/d$b;->c:Lcom/aggmoread/sdk/z/a/u/d;

    invoke-static {v5}, Lcom/aggmoread/sdk/z/a/u/d;->c(Lcom/aggmoread/sdk/z/a/u/d;)I

    move-result v5

    invoke-direct {v4, v5}, Lcom/aggmoread/sdk/z/a/u/d$d;-><init>(I)V

    goto :goto_2

    :cond_0
    iget-object v4, p0, Lcom/aggmoread/sdk/z/a/u/d$b;->c:Lcom/aggmoread/sdk/z/a/u/d;

    invoke-virtual {v4, v3}, Landroid/view/ViewGroup;->indexOfChild(Landroid/view/View;)I

    move-result v4

    if-gtz v4, :cond_2

    iget-object v4, p0, Lcom/aggmoread/sdk/z/a/u/d$b;->c:Lcom/aggmoread/sdk/z/a/u/d;

    const/4 v5, 0x0

    invoke-static {v4, v3, v4, v5}, Lcom/aggmoread/sdk/z/a/u/d;->a(Lcom/aggmoread/sdk/z/a/u/d;Landroid/view/View;Landroid/view/ViewGroup;I)Z

    move-result v4

    if-eqz v4, :cond_1

    goto :goto_1

    :cond_1
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "not in container , "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Lcom/aggmoread/sdk/z/a/d;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    :goto_1
    invoke-virtual {v3, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    new-instance v4, Lcom/aggmoread/sdk/z/a/u/d$d;

    iget-object v5, p0, Lcom/aggmoread/sdk/z/a/u/d$b;->c:Lcom/aggmoread/sdk/z/a/u/d;

    invoke-static {v5}, Lcom/aggmoread/sdk/z/a/u/d;->c(Lcom/aggmoread/sdk/z/a/u/d;)I

    move-result v5

    invoke-direct {v4, v5}, Lcom/aggmoread/sdk/z/a/u/d$d;-><init>(I)V

    :goto_2
    invoke-virtual {v3, v4}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "err  , "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/aggmoread/sdk/z/a/d;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_3
    return-void
.end method
