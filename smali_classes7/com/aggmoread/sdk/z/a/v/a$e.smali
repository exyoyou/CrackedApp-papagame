.class Lcom/aggmoread/sdk/z/a/v/a$e;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnSystemUiVisibilityChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/aggmoread/sdk/z/a/v/a;->a(Landroid/content/Context;Landroid/view/View;)V
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

    iput-object p1, p0, Lcom/aggmoread/sdk/z/a/v/a$e;->a:Lcom/aggmoread/sdk/z/a/v/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onSystemUiVisibilityChange(I)V
    .locals 1

    iget-object p1, p0, Lcom/aggmoread/sdk/z/a/v/a$e;->a:Lcom/aggmoread/sdk/z/a/v/a;

    invoke-static {p1}, Lcom/aggmoread/sdk/z/a/v/a;->b(Lcom/aggmoread/sdk/z/a/v/a;)Landroid/widget/PopupWindow;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/PopupWindow;->getContentView()Landroid/view/View;

    move-result-object p1

    const/16 v0, 0x1706

    invoke-virtual {p1, v0}, Landroid/view/View;->setSystemUiVisibility(I)V

    return-void
.end method
