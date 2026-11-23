.class Lcom/aggmoread/sdk/z/a/k/c$d$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/aggmoread/sdk/z/a/k/c$d;->a(I[BLcom/aggmoread/sdk/z/a/g/f;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic b:Landroid/graphics/Bitmap;

.field final synthetic c:Lcom/aggmoread/sdk/z/a/k/c$d;


# direct methods
.method constructor <init>(Lcom/aggmoread/sdk/z/a/k/c$d;Landroid/graphics/Bitmap;)V
    .locals 0

    iput-object p1, p0, Lcom/aggmoread/sdk/z/a/k/c$d$a;->c:Lcom/aggmoread/sdk/z/a/k/c$d;

    iput-object p2, p0, Lcom/aggmoread/sdk/z/a/k/c$d$a;->b:Landroid/graphics/Bitmap;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/aggmoread/sdk/z/a/k/c$d$a;->c:Lcom/aggmoread/sdk/z/a/k/c$d;

    iget-object v0, v0, Lcom/aggmoread/sdk/z/a/k/c$d;->a:Lcom/aggmoread/sdk/z/a/k/c;

    invoke-static {v0}, Lcom/aggmoread/sdk/z/a/k/c;->b(Lcom/aggmoread/sdk/z/a/k/c;)Lcom/aggmoread/sdk/z/a/u/g;

    move-result-object v0

    invoke-virtual {v0}, Lcom/aggmoread/sdk/z/a/u/g;->a()Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/aggmoread/sdk/z/a/k/c$d$a;->b:Landroid/graphics/Bitmap;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    iget-object v0, p0, Lcom/aggmoread/sdk/z/a/k/c$d$a;->c:Lcom/aggmoread/sdk/z/a/k/c$d;

    iget-object v0, v0, Lcom/aggmoread/sdk/z/a/k/c$d;->a:Lcom/aggmoread/sdk/z/a/k/c;

    invoke-static {v0}, Lcom/aggmoread/sdk/z/a/k/c;->c(Lcom/aggmoread/sdk/z/a/k/c;)V

    return-void
.end method
