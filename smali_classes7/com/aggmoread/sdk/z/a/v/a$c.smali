.class Lcom/aggmoread/sdk/z/a/v/a$c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/aggmoread/sdk/z/a/v/a;->a(Landroid/content/Context;Ljava/lang/String;Lcom/aggmoread/sdk/z/a/g/a;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/aggmoread/sdk/z/a/v/a;


# direct methods
.method constructor <init>(Lcom/aggmoread/sdk/z/a/v/a;)V
    .locals 0

    iput-object p1, p0, Lcom/aggmoread/sdk/z/a/v/a$c;->a:Lcom/aggmoread/sdk/z/a/v/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    const-string p1, "AIWTAG"

    const-string v0, "d c"

    invoke-static {p1, v0}, Lcom/aggmoread/sdk/z/a/d;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/aggmoread/sdk/z/a/v/a$c;->a:Lcom/aggmoread/sdk/z/a/v/a;

    invoke-static {p1}, Lcom/aggmoread/sdk/z/a/v/a;->a(Lcom/aggmoread/sdk/z/a/v/a;)Lcom/aggmoread/sdk/z/a/v/a$h;

    move-result-object p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/aggmoread/sdk/z/a/v/a$c;->a:Lcom/aggmoread/sdk/z/a/v/a;

    invoke-static {p1}, Lcom/aggmoread/sdk/z/a/v/a;->a(Lcom/aggmoread/sdk/z/a/v/a;)Lcom/aggmoread/sdk/z/a/v/a$h;

    move-result-object p1

    invoke-interface {p1}, Lcom/aggmoread/sdk/z/a/v/a$h;->a()V

    :cond_0
    iget-object p1, p0, Lcom/aggmoread/sdk/z/a/v/a$c;->a:Lcom/aggmoread/sdk/z/a/v/a;

    invoke-static {p1}, Lcom/aggmoread/sdk/z/a/v/a;->b(Lcom/aggmoread/sdk/z/a/v/a;)Landroid/widget/PopupWindow;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/PopupWindow;->dismiss()V

    return-void
.end method
