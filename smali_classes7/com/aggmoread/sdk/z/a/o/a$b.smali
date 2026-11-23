.class Lcom/aggmoread/sdk/z/a/o/a$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/aggmoread/sdk/z/a/o/a;->d()Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/aggmoread/sdk/z/a/t/f;

.field final synthetic b:Lcom/aggmoread/sdk/z/a/o/a;


# direct methods
.method constructor <init>(Lcom/aggmoread/sdk/z/a/o/a;Lcom/aggmoread/sdk/z/a/t/f;)V
    .locals 0

    iput-object p1, p0, Lcom/aggmoread/sdk/z/a/o/a$b;->b:Lcom/aggmoread/sdk/z/a/o/a;

    iput-object p2, p0, Lcom/aggmoread/sdk/z/a/o/a$b;->a:Lcom/aggmoread/sdk/z/a/t/f;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    iget-object p1, p0, Lcom/aggmoread/sdk/z/a/o/a$b;->b:Lcom/aggmoread/sdk/z/a/o/a;

    invoke-static {p1}, Lcom/aggmoread/sdk/z/a/o/a;->a(Lcom/aggmoread/sdk/z/a/o/a;)Lcom/aggmoread/sdk/z/a/g/h;

    move-result-object p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/aggmoread/sdk/z/a/o/a$b;->b:Lcom/aggmoread/sdk/z/a/o/a;

    iget-object v0, p0, Lcom/aggmoread/sdk/z/a/o/a$b;->a:Lcom/aggmoread/sdk/z/a/t/f;

    invoke-static {p1, v0}, Lcom/aggmoread/sdk/z/a/o/a;->a(Lcom/aggmoread/sdk/z/a/o/a;Lcom/aggmoread/sdk/z/a/t/f;)Lcom/aggmoread/sdk/z/a/t/f;

    move-result-object v0

    iget-object v1, p0, Lcom/aggmoread/sdk/z/a/o/a$b;->b:Lcom/aggmoread/sdk/z/a/o/a;

    invoke-static {v1}, Lcom/aggmoread/sdk/z/a/o/a;->a(Lcom/aggmoread/sdk/z/a/o/a;)Lcom/aggmoread/sdk/z/a/g/h;

    move-result-object v1

    iget-object v1, v1, Lcom/aggmoread/sdk/z/a/g/h;->b:Ljava/lang/String;

    invoke-static {p1, v0, v1}, Lcom/aggmoread/sdk/z/a/o/a;->a(Lcom/aggmoread/sdk/z/a/o/a;Lcom/aggmoread/sdk/z/a/t/f;Ljava/lang/String;)V

    :cond_0
    return-void
.end method
