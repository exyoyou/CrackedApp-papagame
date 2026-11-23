.class Lcom/windmill/sdk/widget/SplashBaseView$5$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/windmill/sdk/widget/a$b;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/windmill/sdk/widget/SplashBaseView$5;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/windmill/sdk/widget/SplashBaseView$5;


# direct methods
.method constructor <init>(Lcom/windmill/sdk/widget/SplashBaseView$5;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            "this$1"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/windmill/sdk/widget/SplashBaseView$5$1;->a:Lcom/windmill/sdk/widget/SplashBaseView$5;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public a()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/windmill/sdk/widget/SplashBaseView$5$1;->a:Lcom/windmill/sdk/widget/SplashBaseView$5;

    .line 2
    .line 3
    iget-object v0, v0, Lcom/windmill/sdk/widget/SplashBaseView$5;->a:Lcom/windmill/sdk/widget/SplashBaseView;

    .line 4
    .line 5
    invoke-static {v0}, Lcom/windmill/sdk/widget/SplashBaseView;->c(Lcom/windmill/sdk/widget/SplashBaseView;)Lcom/windmill/sdk/widget/c;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    if-eqz v0, :cond_0

    .line 10
    .line 11
    iget-object v0, p0, Lcom/windmill/sdk/widget/SplashBaseView$5$1;->a:Lcom/windmill/sdk/widget/SplashBaseView$5;

    .line 12
    .line 13
    iget-object v0, v0, Lcom/windmill/sdk/widget/SplashBaseView$5;->a:Lcom/windmill/sdk/widget/SplashBaseView;

    .line 14
    .line 15
    invoke-static {v0}, Lcom/windmill/sdk/widget/SplashBaseView;->c(Lcom/windmill/sdk/widget/SplashBaseView;)Lcom/windmill/sdk/widget/c;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    .line 20
    .line 21
    .line 22
    :cond_0
    return-void
.end method

.method public b()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/windmill/sdk/widget/SplashBaseView$5$1;->a:Lcom/windmill/sdk/widget/SplashBaseView$5;

    .line 2
    .line 3
    iget-object v0, v0, Lcom/windmill/sdk/widget/SplashBaseView$5;->a:Lcom/windmill/sdk/widget/SplashBaseView;

    .line 4
    .line 5
    invoke-static {v0}, Lcom/windmill/sdk/widget/SplashBaseView;->d(Lcom/windmill/sdk/widget/SplashBaseView;)Lcom/windmill/sdk/widget/CircleWebView;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    if-eqz v0, :cond_0

    .line 10
    .line 11
    iget-object v0, p0, Lcom/windmill/sdk/widget/SplashBaseView$5$1;->a:Lcom/windmill/sdk/widget/SplashBaseView$5;

    .line 12
    .line 13
    iget-object v0, v0, Lcom/windmill/sdk/widget/SplashBaseView$5;->a:Lcom/windmill/sdk/widget/SplashBaseView;

    .line 14
    .line 15
    invoke-static {v0}, Lcom/windmill/sdk/widget/SplashBaseView;->d(Lcom/windmill/sdk/widget/SplashBaseView;)Lcom/windmill/sdk/widget/CircleWebView;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    new-instance v1, Lcom/windmill/sdk/widget/SplashBaseView$5$1$1;

    .line 20
    .line 21
    invoke-direct {v1, p0}, Lcom/windmill/sdk/widget/SplashBaseView$5$1$1;-><init>(Lcom/windmill/sdk/widget/SplashBaseView$5$1;)V

    .line 22
    .line 23
    .line 24
    invoke-virtual {v0, v1}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    .line 25
    .line 26
    .line 27
    :cond_0
    return-void
.end method
