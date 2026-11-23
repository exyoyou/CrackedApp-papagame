.class Lcom/aggmoread/sdk/z/a/u/j$e;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/aggmoread/sdk/z/a/u/j;->a(Ljava/io/File;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic b:Ljava/io/File;

.field final synthetic c:Lcom/aggmoread/sdk/z/a/u/j;


# direct methods
.method constructor <init>(Lcom/aggmoread/sdk/z/a/u/j;Ljava/io/File;)V
    .locals 0

    iput-object p1, p0, Lcom/aggmoread/sdk/z/a/u/j$e;->c:Lcom/aggmoread/sdk/z/a/u/j;

    iput-object p2, p0, Lcom/aggmoread/sdk/z/a/u/j$e;->b:Ljava/io/File;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    const/16 v0, 0x400

    :try_start_0
    new-array v0, v0, [B

    new-instance v1, Ljava/io/FileInputStream;

    iget-object v2, p0, Lcom/aggmoread/sdk/z/a/u/j$e;->b:Ljava/io/File;

    invoke-direct {v1, v2}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    new-instance v2, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v2}, Ljava/io/ByteArrayOutputStream;-><init>()V

    :goto_0
    invoke-virtual {v1, v0}, Ljava/io/FileInputStream;->read([B)I

    move-result v3

    const/4 v4, -0x1

    if-eq v3, v4, :cond_0

    const/4 v4, 0x0

    invoke-virtual {v2, v0, v4, v3}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    goto :goto_0

    :cond_0
    invoke-virtual {v2}, Ljava/io/OutputStream;->flush()V

    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->close()V

    invoke-virtual {v1}, Ljava/io/FileInputStream;->close()V

    iget-object v0, p0, Lcom/aggmoread/sdk/z/a/u/j$e;->c:Lcom/aggmoread/sdk/z/a/u/j;

    new-instance v1, Lcom/aggmoread/sdk/z/a/u/j$e$a;

    invoke-direct {v1, p0, v2}, Lcom/aggmoread/sdk/z/a/u/j$e$a;-><init>(Lcom/aggmoread/sdk/z/a/u/j$e;Ljava/io/ByteArrayOutputStream;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    :goto_1
    return-void
.end method
