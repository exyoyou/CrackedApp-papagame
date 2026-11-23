.class Lcom/aggmoread/sdk/z/a/t/a$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/aggmoread/sdk/z/a/t/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/aggmoread/sdk/z/a/t/a;


# direct methods
.method constructor <init>(Lcom/aggmoread/sdk/z/a/t/a;)V
    .locals 0

    iput-object p1, p0, Lcom/aggmoread/sdk/z/a/t/a$b;->a:Lcom/aggmoread/sdk/z/a/t/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    iget-object p1, p0, Lcom/aggmoread/sdk/z/a/t/a$b;->a:Lcom/aggmoread/sdk/z/a/t/a;

    iget-object v0, p1, Lcom/aggmoread/sdk/z/a/t/a;->a:Lcom/aggmoread/sdk/z/a/t/a$f;

    if-eqz v0, :cond_0

    invoke-static {p1}, Lcom/aggmoread/sdk/z/a/t/a;->f(Lcom/aggmoread/sdk/z/a/t/a;)V

    iget-object p1, p0, Lcom/aggmoread/sdk/z/a/t/a$b;->a:Lcom/aggmoread/sdk/z/a/t/a;

    const/16 v0, 0xbb8

    invoke-virtual {p1, v0}, Lcom/aggmoread/sdk/z/a/t/a;->b(I)V

    :cond_0
    return-void
.end method
