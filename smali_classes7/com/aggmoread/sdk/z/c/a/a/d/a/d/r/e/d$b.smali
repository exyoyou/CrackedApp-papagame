.class Lcom/aggmoread/sdk/z/c/a/a/d/a/d/r/e/d$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/baidu/mobads/sdk/api/XNativeView$INativeViewClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/aggmoread/sdk/z/c/a/a/d/a/d/r/e/d;->b(Landroid/view/ViewGroup;Lcom/aggmoread/sdk/z/c/a/a/c/u/a;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/aggmoread/sdk/z/c/a/a/c/u/a;


# direct methods
.method constructor <init>(Lcom/aggmoread/sdk/z/c/a/a/d/a/d/r/e/d;Lcom/aggmoread/sdk/z/c/a/a/c/u/a;)V
    .locals 0

    iput-object p2, p0, Lcom/aggmoread/sdk/z/c/a/a/d/a/d/r/e/d$b;->a:Lcom/aggmoread/sdk/z/c/a/a/c/u/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onNativeViewClick(Lcom/baidu/mobads/sdk/api/XNativeView;)V
    .locals 0

    iget-object p1, p0, Lcom/aggmoread/sdk/z/c/a/a/d/a/d/r/e/d$b;->a:Lcom/aggmoread/sdk/z/c/a/a/c/u/a;

    invoke-interface {p1}, Lcom/aggmoread/sdk/z/c/a/a/c/u/a;->onVideoClicked()V

    return-void
.end method
