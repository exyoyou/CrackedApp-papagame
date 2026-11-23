.class Lcom/windmill/sdk/widget/InterstitialBaseView$9;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/windmill/sdk/widget/InterstitialBaseView;->p()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/windmill/sdk/widget/InterstitialBaseView;


# direct methods
.method constructor <init>(Lcom/windmill/sdk/widget/InterstitialBaseView;)V
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
    iput-object p1, p0, Lcom/windmill/sdk/widget/InterstitialBaseView$9;->a:Lcom/windmill/sdk/widget/InterstitialBaseView;

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
    iget-object p1, p0, Lcom/windmill/sdk/widget/InterstitialBaseView$9;->a:Lcom/windmill/sdk/widget/InterstitialBaseView;

    .line 2
    .line 3
    iget-object v0, p1, Lcom/windmill/sdk/widget/InterstitialBaseView;->w:Lcom/windmill/sdk/widget/a;

    .line 4
    .line 5
    invoke-virtual {p1}, Lcom/windmill/sdk/widget/InterstitialBaseView;->a()Landroid/content/Context;

    .line 6
    .line 7
    .line 8
    move-result-object v1

    .line 9
    new-instance v2, Lcom/windmill/sdk/widget/InterstitialBaseView$9$1;

    .line 10
    .line 11
    invoke-direct {v2, p0}, Lcom/windmill/sdk/widget/InterstitialBaseView$9$1;-><init>(Lcom/windmill/sdk/widget/InterstitialBaseView$9;)V

    .line 12
    .line 13
    .line 14
    invoke-virtual {v0, v1, v2}, Lcom/windmill/sdk/widget/a;->getAdView(Landroid/content/Context;Lcom/windmill/sdk/widget/a$b;)Lcom/windmill/sdk/widget/CircleWebView;

    .line 15
    .line 16
    .line 17
    move-result-object v0

    .line 18
    invoke-static {p1, v0}, Lcom/windmill/sdk/widget/InterstitialBaseView;->a(Lcom/windmill/sdk/widget/InterstitialBaseView;Lcom/windmill/sdk/widget/CircleWebView;)Lcom/windmill/sdk/widget/CircleWebView;

    .line 19
    .line 20
    .line 21
    new-instance p1, Ljava/lang/StringBuilder;

    .line 22
    .line 23
    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    .line 24
    .line 25
    .line 26
    const-string v0, "--------showPrivacy--adPrivacyLayout----"

    .line 27
    .line 28
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 29
    .line 30
    .line 31
    iget-object v0, p0, Lcom/windmill/sdk/widget/InterstitialBaseView$9;->a:Lcom/windmill/sdk/widget/InterstitialBaseView;

    .line 32
    .line 33
    invoke-static {v0}, Lcom/windmill/sdk/widget/InterstitialBaseView;->d(Lcom/windmill/sdk/widget/InterstitialBaseView;)Lcom/windmill/sdk/widget/CircleWebView;

    .line 34
    .line 35
    .line 36
    move-result-object v0

    .line 37
    if-eqz v0, :cond_0

    .line 38
    .line 39
    const/4 v0, 0x1

    .line 40
    goto :goto_0

    .line 41
    :cond_0
    const/4 v0, 0x0

    .line 42
    :goto_0
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 43
    .line 44
    .line 45
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 46
    .line 47
    .line 48
    move-result-object p1

    .line 49
    invoke-static {p1}, Lcom/windmill/sdk/base/WMLogUtil;->d(Ljava/lang/String;)V

    .line 50
    .line 51
    .line 52
    iget-object p1, p0, Lcom/windmill/sdk/widget/InterstitialBaseView$9;->a:Lcom/windmill/sdk/widget/InterstitialBaseView;

    .line 53
    .line 54
    invoke-static {p1}, Lcom/windmill/sdk/widget/InterstitialBaseView;->d(Lcom/windmill/sdk/widget/InterstitialBaseView;)Lcom/windmill/sdk/widget/CircleWebView;

    .line 55
    .line 56
    .line 57
    move-result-object p1

    .line 58
    if-eqz p1, :cond_2

    .line 59
    .line 60
    iget-object p1, p0, Lcom/windmill/sdk/widget/InterstitialBaseView$9;->a:Lcom/windmill/sdk/widget/InterstitialBaseView;

    .line 61
    .line 62
    invoke-static {p1}, Lcom/windmill/sdk/widget/InterstitialBaseView;->c(Lcom/windmill/sdk/widget/InterstitialBaseView;)Lcom/windmill/sdk/widget/c;

    .line 63
    .line 64
    .line 65
    move-result-object p1

    .line 66
    if-nez p1, :cond_1

    .line 67
    .line 68
    iget-object p1, p0, Lcom/windmill/sdk/widget/InterstitialBaseView$9;->a:Lcom/windmill/sdk/widget/InterstitialBaseView;

    .line 69
    .line 70
    new-instance v0, Lcom/windmill/sdk/widget/c;

    .line 71
    .line 72
    iget-object v1, p0, Lcom/windmill/sdk/widget/InterstitialBaseView$9;->a:Lcom/windmill/sdk/widget/InterstitialBaseView;

    .line 73
    .line 74
    invoke-virtual {v1}, Lcom/windmill/sdk/widget/InterstitialBaseView;->a()Landroid/content/Context;

    .line 75
    .line 76
    .line 77
    move-result-object v1

    .line 78
    iget-object v2, p0, Lcom/windmill/sdk/widget/InterstitialBaseView$9;->a:Lcom/windmill/sdk/widget/InterstitialBaseView;

    .line 79
    .line 80
    invoke-static {v2}, Lcom/windmill/sdk/widget/InterstitialBaseView;->d(Lcom/windmill/sdk/widget/InterstitialBaseView;)Lcom/windmill/sdk/widget/CircleWebView;

    .line 81
    .line 82
    .line 83
    move-result-object v2

    .line 84
    invoke-direct {v0, v1, v2}, Lcom/windmill/sdk/widget/c;-><init>(Landroid/content/Context;Lcom/windmill/sdk/widget/CircleWebView;)V

    .line 85
    .line 86
    .line 87
    invoke-static {p1, v0}, Lcom/windmill/sdk/widget/InterstitialBaseView;->a(Lcom/windmill/sdk/widget/InterstitialBaseView;Lcom/windmill/sdk/widget/c;)Lcom/windmill/sdk/widget/c;

    .line 88
    .line 89
    .line 90
    iget-object p1, p0, Lcom/windmill/sdk/widget/InterstitialBaseView$9;->a:Lcom/windmill/sdk/widget/InterstitialBaseView;

    .line 91
    .line 92
    invoke-static {p1}, Lcom/windmill/sdk/widget/InterstitialBaseView;->c(Lcom/windmill/sdk/widget/InterstitialBaseView;)Lcom/windmill/sdk/widget/c;

    .line 93
    .line 94
    .line 95
    move-result-object p1

    .line 96
    new-instance v0, Lcom/windmill/sdk/widget/InterstitialBaseView$9$2;

    .line 97
    .line 98
    invoke-direct {v0, p0}, Lcom/windmill/sdk/widget/InterstitialBaseView$9$2;-><init>(Lcom/windmill/sdk/widget/InterstitialBaseView$9;)V

    .line 99
    .line 100
    .line 101
    invoke-virtual {p1, v0}, Lcom/windmill/sdk/widget/c;->a(Lcom/windmill/sdk/widget/c$a;)V

    .line 102
    .line 103
    .line 104
    :cond_1
    iget-object p1, p0, Lcom/windmill/sdk/widget/InterstitialBaseView$9;->a:Lcom/windmill/sdk/widget/InterstitialBaseView;

    .line 105
    .line 106
    invoke-static {p1}, Lcom/windmill/sdk/widget/InterstitialBaseView;->c(Lcom/windmill/sdk/widget/InterstitialBaseView;)Lcom/windmill/sdk/widget/c;

    .line 107
    .line 108
    .line 109
    move-result-object p1

    .line 110
    invoke-virtual {p1}, Landroid/app/Dialog;->show()V

    .line 111
    .line 112
    .line 113
    :cond_2
    return-void
.end method
