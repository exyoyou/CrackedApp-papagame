.class public Lcom/join/mgps/activity/ArenaWebViewActivity;
.super Lcom/BaseActivity;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/join/mgps/activity/ArenaWebViewActivity$b;
    }
.end annotation

.annotation build Lorg/androidannotations/annotations/EActivity;
    value = 0x7f0d00d6
.end annotation


# instance fields
.field url:Ljava/lang/String;
    .annotation build Lorg/androidannotations/annotations/Extra;
    .end annotation
.end field

.field web:Lcom/join/mgps/customview/LJWebView;
    .annotation build Lorg/androidannotations/annotations/ViewById;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/BaseActivity;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method


# virtual methods
.method afterViews()V
    .locals 1
    .annotation build Lorg/androidannotations/annotations/AfterViews;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/ArenaWebViewActivity;->url:Ljava/lang/String;

    .line 2
    .line 3
    invoke-virtual {p0, v0}, Lcom/join/mgps/activity/ArenaWebViewActivity;->showWeb(Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method showWeb(Ljava/lang/String;)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "url"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/ArenaWebViewActivity;->web:Lcom/join/mgps/customview/LJWebView;

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    invoke-virtual {v0, v1}, Lcom/join/mgps/customview/LJWebView;->setClickable(Z)V

    .line 5
    .line 6
    .line 7
    iget-object v0, p0, Lcom/join/mgps/activity/ArenaWebViewActivity;->web:Lcom/join/mgps/customview/LJWebView;

    .line 8
    .line 9
    invoke-virtual {v0, v1}, Lcom/join/mgps/customview/LJWebView;->setUseWideViewPort(Z)V

    .line 10
    .line 11
    .line 12
    iget-object v0, p0, Lcom/join/mgps/activity/ArenaWebViewActivity;->web:Lcom/join/mgps/customview/LJWebView;

    .line 13
    .line 14
    const/4 v2, 0x0

    .line 15
    invoke-virtual {v0, v2}, Lcom/join/mgps/customview/LJWebView;->setSupportZoom(Z)V

    .line 16
    .line 17
    .line 18
    iget-object v0, p0, Lcom/join/mgps/activity/ArenaWebViewActivity;->web:Lcom/join/mgps/customview/LJWebView;

    .line 19
    .line 20
    invoke-virtual {v0, v2}, Lcom/join/mgps/customview/LJWebView;->setBuiltInZoomControls(Z)V

    .line 21
    .line 22
    .line 23
    iget-object v0, p0, Lcom/join/mgps/activity/ArenaWebViewActivity;->web:Lcom/join/mgps/customview/LJWebView;

    .line 24
    .line 25
    invoke-virtual {v0, v1}, Lcom/join/mgps/customview/LJWebView;->setJavaScriptEnabled(Z)V

    .line 26
    .line 27
    .line 28
    iget-object v0, p0, Lcom/join/mgps/activity/ArenaWebViewActivity;->web:Lcom/join/mgps/customview/LJWebView;

    .line 29
    .line 30
    const/4 v1, 0x2

    .line 31
    invoke-virtual {v0, v1}, Lcom/join/mgps/customview/LJWebView;->setCacheMode(I)V

    .line 32
    .line 33
    .line 34
    iget-object v0, p0, Lcom/join/mgps/activity/ArenaWebViewActivity;->web:Lcom/join/mgps/customview/LJWebView;

    .line 35
    .line 36
    invoke-virtual {v0, p1}, Lcom/join/mgps/customview/LJWebView;->w(Ljava/lang/String;)V

    .line 37
    .line 38
    .line 39
    iget-object p1, p0, Lcom/join/mgps/activity/ArenaWebViewActivity;->web:Lcom/join/mgps/customview/LJWebView;

    .line 40
    .line 41
    invoke-virtual {p1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 42
    .line 43
    .line 44
    iget-object p1, p0, Lcom/join/mgps/activity/ArenaWebViewActivity;->web:Lcom/join/mgps/customview/LJWebView;

    .line 45
    .line 46
    new-instance v0, Lcom/join/mgps/activity/ArenaWebViewActivity$b;

    .line 47
    .line 48
    const/4 v1, 0x0

    .line 49
    invoke-direct {v0, p0, v1}, Lcom/join/mgps/activity/ArenaWebViewActivity$b;-><init>(Lcom/join/mgps/activity/ArenaWebViewActivity;Lcom/join/mgps/activity/ArenaWebViewActivity$a;)V

    .line 50
    .line 51
    .line 52
    invoke-virtual {p1, v0}, Lcom/join/mgps/customview/LJWebView;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    .line 53
    .line 54
    .line 55
    return-void
.end method
