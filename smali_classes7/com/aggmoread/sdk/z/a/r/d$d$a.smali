.class Lcom/aggmoread/sdk/z/a/r/d$d$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/aggmoread/sdk/z/a/r/d$d;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic b:Landroid/graphics/Bitmap;

.field final synthetic c:Lcom/aggmoread/sdk/z/a/r/d$d;


# direct methods
.method constructor <init>(Lcom/aggmoread/sdk/z/a/r/d$d;Landroid/graphics/Bitmap;)V
    .locals 0

    iput-object p1, p0, Lcom/aggmoread/sdk/z/a/r/d$d$a;->c:Lcom/aggmoread/sdk/z/a/r/d$d;

    iput-object p2, p0, Lcom/aggmoread/sdk/z/a/r/d$d$a;->b:Landroid/graphics/Bitmap;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/aggmoread/sdk/z/a/r/d$d$a;->c:Lcom/aggmoread/sdk/z/a/r/d$d;

    iget-object v0, v0, Lcom/aggmoread/sdk/z/a/r/d$d;->c:Lcom/aggmoread/sdk/z/a/r/d$p;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/aggmoread/sdk/z/a/r/d$d$a;->b:Landroid/graphics/Bitmap;

    invoke-interface {v0, v1}, Lcom/aggmoread/sdk/z/a/r/d$p;->a(Ljava/lang/Object;)V

    :cond_0
    return-void
.end method
