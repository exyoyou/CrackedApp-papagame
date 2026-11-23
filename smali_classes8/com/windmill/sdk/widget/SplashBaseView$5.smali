.class Lcom/windmill/sdk/widget/SplashBaseView$5;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/windmill/sdk/widget/SplashBaseView;->c()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/windmill/sdk/widget/SplashBaseView;


# direct methods
.method constructor <init>(Lcom/windmill/sdk/widget/SplashBaseView;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            "this$0"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/windmill/sdk/widget/SplashBaseView$5;->a:Lcom/windmill/sdk/widget/SplashBaseView;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "v"
        }
    .end annotation

    .line 1
    iget-object p1, p0, Lcom/windmill/sdk/widget/SplashBaseView$5;->a:Lcom/windmill/sdk/widget/SplashBaseView;

    .line 2
    .line 3
    iget-object v0, p1, Lcom/windmill/sdk/widget/SplashBaseView;->baseControl:Lcom/windmill/sdk/widget/a;

    .line 4
    .line 5
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 6
    .line 7
    .line 8
    move-result-object v1

    .line 9
    new-instance v2, Lcom/windmill/sdk/widget/SplashBaseView$5$1;

    .line 10
    .line 11
    invoke-direct {v2, p0}, Lcom/windmill/sdk/widget/SplashBaseView$5$1;-><init>(Lcom/windmill/sdk/widget/SplashBaseView$5;)V

    .line 12
    .line 13
    .line 14
    invoke-virtual {v0, v1, v2}, Lcom/windmill/sdk/widget/a;->getAdView(Landroid/content/Context;Lcom/windmill/sdk/widget/a$b;)Lcom/windmill/sdk/widget/CircleWebView;

    .line 15
    .line 16
    .line 17
    move-result-object v0

    .line 18
    invoke-static {p1, v0}, Lcom/windmill/sdk/widget/SplashBaseView;->a(Lcom/windmill/sdk/widget/SplashBaseView;Lcom/windmill/sdk/widget/CircleWebView;)Lcom/windmill/sdk/widget/CircleWebView;

    .line 19
    .line 20
    .line 21
    iget-object p1, p0, Lcom/windmill/sdk/widget/SplashBaseView$5;->a:Lcom/windmill/sdk/widget/SplashBaseView;

    .line 22
    .line 23
    invoke-static {p1}, Lcom/windmill/sdk/widget/SplashBaseView;->d(Lcom/windmill/sdk/widget/SplashBaseView;)Lcom/windmill/sdk/widget/CircleWebView;

    .line 24
    .line 25
    .line 26
    move-result-object p1

    .line 27
    if-eqz p1, :cond_2

    .line 28
    .line 29
    iget-object p1, p0, Lcom/windmill/sdk/widget/SplashBaseView$5;->a:Lcom/windmill/sdk/widget/SplashBaseView;

    .line 30
    .line 31
    invoke-static {p1}, Lcom/windmill/sdk/widget/SplashBaseView;->c(Lcom/windmill/sdk/widget/SplashBaseView;)Lcom/windmill/sdk/widget/c;

    .line 32
    .line 33
    .line 34
    move-result-object p1

    .line 35
    if-nez p1, :cond_1

    .line 36
    .line 37
    iget-object p1, p0, Lcom/windmill/sdk/widget/SplashBaseView$5;->a:Lcom/windmill/sdk/widget/SplashBaseView;

    .line 38
    .line 39
    iget-object p1, p1, Lcom/windmill/sdk/widget/SplashBaseView;->adView:Landroid/view/View;

    .line 40
    .line 41
    invoke-static {p1}, Lcom/czhj/sdk/common/utils/ViewUtil;->getActivityFromView(Landroid/view/View;)Landroid/app/Activity;

    .line 42
    .line 43
    .line 44
    move-result-object p1

    .line 45
    if-nez p1, :cond_0

    .line 46
    .line 47
    iget-object v0, p0, Lcom/windmill/sdk/widget/SplashBaseView$5;->a:Lcom/windmill/sdk/widget/SplashBaseView;

    .line 48
    .line 49
    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 50
    .line 51
    .line 52
    move-result-object v0

    .line 53
    instance-of v1, v0, Landroid/app/Activity;

    .line 54
    .line 55
    if-eqz v1, :cond_0

    .line 56
    .line 57
    move-object p1, v0

    .line 58
    check-cast p1, Landroid/app/Activity;

    .line 59
    .line 60
    :cond_0
    iget-object v0, p0, Lcom/windmill/sdk/widget/SplashBaseView$5;->a:Lcom/windmill/sdk/widget/SplashBaseView;

    .line 61
    .line 62
    new-instance v1, Lcom/windmill/sdk/widget/c;

    .line 63
    .line 64
    iget-object v2, p0, Lcom/windmill/sdk/widget/SplashBaseView$5;->a:Lcom/windmill/sdk/widget/SplashBaseView;

    .line 65
    .line 66
    invoke-static {v2}, Lcom/windmill/sdk/widget/SplashBaseView;->d(Lcom/windmill/sdk/widget/SplashBaseView;)Lcom/windmill/sdk/widget/CircleWebView;

    .line 67
    .line 68
    .line 69
    move-result-object v2

    .line 70
    invoke-direct {v1, p1, v2}, Lcom/windmill/sdk/widget/c;-><init>(Landroid/content/Context;Lcom/windmill/sdk/widget/CircleWebView;)V

    .line 71
    .line 72
    .line 73
    invoke-static {v0, v1}, Lcom/windmill/sdk/widget/SplashBaseView;->a(Lcom/windmill/sdk/widget/SplashBaseView;Lcom/windmill/sdk/widget/c;)Lcom/windmill/sdk/widget/c;

    .line 74
    .line 75
    .line 76
    iget-object p1, p0, Lcom/windmill/sdk/widget/SplashBaseView$5;->a:Lcom/windmill/sdk/widget/SplashBaseView;

    .line 77
    .line 78
    invoke-static {p1}, Lcom/windmill/sdk/widget/SplashBaseView;->c(Lcom/windmill/sdk/widget/SplashBaseView;)Lcom/windmill/sdk/widget/c;

    .line 79
    .line 80
    .line 81
    move-result-object p1

    .line 82
    new-instance v0, Lcom/windmill/sdk/widget/SplashBaseView$5$2;

    .line 83
    .line 84
    invoke-direct {v0, p0}, Lcom/windmill/sdk/widget/SplashBaseView$5$2;-><init>(Lcom/windmill/sdk/widget/SplashBaseView$5;)V

    .line 85
    .line 86
    .line 87
    invoke-virtual {p1, v0}, Lcom/windmill/sdk/widget/c;->a(Lcom/windmill/sdk/widget/c$a;)V

    .line 88
    .line 89
    .line 90
    :cond_1
    iget-object p1, p0, Lcom/windmill/sdk/widget/SplashBaseView$5;->a:Lcom/windmill/sdk/widget/SplashBaseView;

    .line 91
    .line 92
    invoke-static {p1}, Lcom/windmill/sdk/widget/SplashBaseView;->c(Lcom/windmill/sdk/widget/SplashBaseView;)Lcom/windmill/sdk/widget/c;

    .line 93
    .line 94
    .line 95
    move-result-object p1

    .line 96
    invoke-virtual {p1}, Landroid/app/Dialog;->show()V

    .line 97
    .line 98
    .line 99
    :cond_2
    return-void
.end method
