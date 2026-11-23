.class Lcom/aggmoread/sdk/z/a/u/j$e$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/aggmoread/sdk/z/a/u/j$e;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic b:Ljava/io/ByteArrayOutputStream;

.field final synthetic c:Lcom/aggmoread/sdk/z/a/u/j$e;


# direct methods
.method constructor <init>(Lcom/aggmoread/sdk/z/a/u/j$e;Ljava/io/ByteArrayOutputStream;)V
    .locals 0

    iput-object p1, p0, Lcom/aggmoread/sdk/z/a/u/j$e$a;->c:Lcom/aggmoread/sdk/z/a/u/j$e;

    iput-object p2, p0, Lcom/aggmoread/sdk/z/a/u/j$e$a;->b:Ljava/io/ByteArrayOutputStream;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/aggmoread/sdk/z/a/u/j$e$a;->c:Lcom/aggmoread/sdk/z/a/u/j$e;

    iget-object v0, v0, Lcom/aggmoread/sdk/z/a/u/j$e;->c:Lcom/aggmoread/sdk/z/a/u/j;

    iget-object v1, p0, Lcom/aggmoread/sdk/z/a/u/j$e$a;->b:Ljava/io/ByteArrayOutputStream;

    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/aggmoread/sdk/z/a/u/j;->a([B)V

    iget-object v0, p0, Lcom/aggmoread/sdk/z/a/u/j$e$a;->c:Lcom/aggmoread/sdk/z/a/u/j$e;

    iget-object v0, v0, Lcom/aggmoread/sdk/z/a/u/j$e;->c:Lcom/aggmoread/sdk/z/a/u/j;

    invoke-virtual {v0}, Landroid/view/View;->postInvalidate()V

    return-void
.end method
