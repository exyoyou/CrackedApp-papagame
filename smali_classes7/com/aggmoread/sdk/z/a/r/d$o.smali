.class Lcom/aggmoread/sdk/z/a/r/d$o;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/aggmoread/sdk/z/a/r/d;->B()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/aggmoread/sdk/z/a/r/d;


# direct methods
.method constructor <init>(Lcom/aggmoread/sdk/z/a/r/d;)V
    .locals 0

    iput-object p1, p0, Lcom/aggmoread/sdk/z/a/r/d$o;->a:Lcom/aggmoread/sdk/z/a/r/d;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    iget-object p1, p0, Lcom/aggmoread/sdk/z/a/r/d$o;->a:Lcom/aggmoread/sdk/z/a/r/d;

    invoke-static {p1}, Lcom/aggmoread/sdk/z/a/r/d;->p(Lcom/aggmoread/sdk/z/a/r/d;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    invoke-static {p1, v0}, Lcom/aggmoread/sdk/z/a/r/d;->a(Lcom/aggmoread/sdk/z/a/r/d;Z)Z

    iget-object p1, p0, Lcom/aggmoread/sdk/z/a/r/d$o;->a:Lcom/aggmoread/sdk/z/a/r/d;

    invoke-static {p1}, Lcom/aggmoread/sdk/z/a/r/d;->q(Lcom/aggmoread/sdk/z/a/r/d;)V

    return-void
.end method
