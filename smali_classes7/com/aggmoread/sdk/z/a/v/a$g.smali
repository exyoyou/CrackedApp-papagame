.class Lcom/aggmoread/sdk/z/a/v/a$g;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/aggmoread/sdk/z/a/v/a;->a(Landroid/widget/LinearLayout;Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/aggmoread/sdk/z/a/u/o;


# direct methods
.method constructor <init>(Lcom/aggmoread/sdk/z/a/v/a;Lcom/aggmoread/sdk/z/a/u/o;)V
    .locals 0

    iput-object p2, p0, Lcom/aggmoread/sdk/z/a/v/a$g;->a:Lcom/aggmoread/sdk/z/a/u/o;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    iget-object p1, p0, Lcom/aggmoread/sdk/z/a/v/a$g;->a:Lcom/aggmoread/sdk/z/a/u/o;

    invoke-virtual {p1}, Landroid/view/View;->getVisibility()I

    move-result p1

    const/16 v0, 0x8

    if-ne p1, v0, :cond_0

    iget-object p1, p0, Lcom/aggmoread/sdk/z/a/v/a$g;->a:Lcom/aggmoread/sdk/z/a/u/o;

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/aggmoread/sdk/z/a/v/a$g;->a:Lcom/aggmoread/sdk/z/a/u/o;

    :goto_0
    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method
