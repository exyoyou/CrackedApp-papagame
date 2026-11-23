.class Lcom/aggmoread/sdk/z/a/r/d$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/aggmoread/sdk/z/a/r/d$p;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/aggmoread/sdk/z/a/r/d;->z()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/aggmoread/sdk/z/a/r/d$p<",
        "Landroid/graphics/Bitmap;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/aggmoread/sdk/z/a/r/d;


# direct methods
.method constructor <init>(Lcom/aggmoread/sdk/z/a/r/d;)V
    .locals 0

    iput-object p1, p0, Lcom/aggmoread/sdk/z/a/r/d$b;->a:Lcom/aggmoread/sdk/z/a/r/d;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/graphics/Bitmap;)V
    .locals 3

    .line 1
    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/aggmoread/sdk/z/a/r/d$b;->a:Lcom/aggmoread/sdk/z/a/r/d;

    invoke-static {v0}, Lcom/aggmoread/sdk/z/a/r/d;->r(Lcom/aggmoread/sdk/z/a/r/d;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/aggmoread/sdk/z/a/r/d$b;->a:Lcom/aggmoread/sdk/z/a/r/d;

    invoke-static {v0}, Lcom/aggmoread/sdk/z/a/r/d;->r(Lcom/aggmoread/sdk/z/a/r/d;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/aggmoread/sdk/z/a/r/d$b;->a:Lcom/aggmoread/sdk/z/a/r/d;

    invoke-static {v0}, Lcom/aggmoread/sdk/z/a/r/d;->s(Lcom/aggmoread/sdk/z/a/r/d;)Landroid/widget/ImageView;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    :cond_0
    return-void
.end method

.method public bridge synthetic a(Ljava/lang/Object;)V
    .locals 0

    .line 2
    check-cast p1, Landroid/graphics/Bitmap;

    invoke-virtual {p0, p1}, Lcom/aggmoread/sdk/z/a/r/d$b;->a(Landroid/graphics/Bitmap;)V

    return-void
.end method
