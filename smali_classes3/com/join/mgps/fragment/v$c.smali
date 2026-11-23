.class Lcom/join/mgps/fragment/v$c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnKeyListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/join/mgps/fragment/v;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic b:Lcom/join/mgps/fragment/v;


# direct methods
.method constructor <init>(Lcom/join/mgps/fragment/v;)V
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
    iput-object p1, p0, Lcom/join/mgps/fragment/v$c;->b:Lcom/join/mgps/fragment/v;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public onKey(Landroid/view/View;ILandroid/view/KeyEvent;)Z
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "v",
            "keyCode",
            "event"
        }
    .end annotation

    .line 1
    iget-object p1, p0, Lcom/join/mgps/fragment/v$c;->b:Lcom/join/mgps/fragment/v;

    .line 2
    .line 3
    iget-object p1, p1, Lcom/join/mgps/fragment/v;->c:Ljava/lang/String;

    .line 4
    .line 5
    const-string v0, "onKeyDown() called."

    .line 6
    .line 7
    invoke-static {p1, v0}, Lcom/join/mgps/Util/g1;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 8
    .line 9
    .line 10
    const/4 p1, 0x4

    .line 11
    const/4 v0, 0x0

    .line 12
    if-ne p2, p1, :cond_2

    .line 13
    .line 14
    invoke-virtual {p3}, Landroid/view/KeyEvent;->getRepeatCount()I

    .line 15
    .line 16
    .line 17
    move-result p1

    .line 18
    if-nez p1, :cond_2

    .line 19
    .line 20
    iget-object p1, p0, Lcom/join/mgps/fragment/v$c;->b:Lcom/join/mgps/fragment/v;

    .line 21
    .line 22
    invoke-virtual {p1}, Lcom/join/mgps/fragment/v;->inCustomView()Z

    .line 23
    .line 24
    .line 25
    move-result p1

    .line 26
    const/4 p2, 0x1

    .line 27
    if-eqz p1, :cond_0

    .line 28
    .line 29
    iget-object p1, p0, Lcom/join/mgps/fragment/v$c;->b:Lcom/join/mgps/fragment/v;

    .line 30
    .line 31
    invoke-static {p1}, Lcom/join/mgps/fragment/v;->M(Lcom/join/mgps/fragment/v;)Landroid/webkit/WebChromeClient;

    .line 32
    .line 33
    .line 34
    move-result-object p1

    .line 35
    invoke-virtual {p1}, Landroid/webkit/WebChromeClient;->onHideCustomView()V

    .line 36
    .line 37
    .line 38
    return p2

    .line 39
    :cond_0
    iget-object p1, p0, Lcom/join/mgps/fragment/v$c;->b:Lcom/join/mgps/fragment/v;

    .line 40
    .line 41
    iget-object p1, p1, Lcom/join/mgps/fragment/v;->o:Ljava/lang/String;

    .line 42
    .line 43
    const-string p3, "?"

    .line 44
    .line 45
    invoke-virtual {p1, p3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 46
    .line 47
    .line 48
    move-result p1

    .line 49
    if-eqz p1, :cond_1

    .line 50
    .line 51
    iget-object p1, p0, Lcom/join/mgps/fragment/v$c;->b:Lcom/join/mgps/fragment/v;

    .line 52
    .line 53
    iget-object v1, p1, Lcom/join/mgps/fragment/v;->o:Ljava/lang/String;

    .line 54
    .line 55
    invoke-virtual {v1, p3}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    .line 56
    .line 57
    .line 58
    move-result p3

    .line 59
    invoke-virtual {v1, v0, p3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 60
    .line 61
    .line 62
    move-result-object p3

    .line 63
    iput-object p3, p1, Lcom/join/mgps/fragment/v;->o:Ljava/lang/String;

    .line 64
    .line 65
    :cond_1
    iget-object p1, p0, Lcom/join/mgps/fragment/v$c;->b:Lcom/join/mgps/fragment/v;

    .line 66
    .line 67
    iget-object p1, p1, Lcom/join/mgps/fragment/v;->k:Lcom/join/mgps/customview/LJNestScrollWebView;

    .line 68
    .line 69
    invoke-virtual {p1}, Lcom/join/mgps/customview/LJNestScrollWebView;->getWebView()Landroid/webkit/WebView;

    .line 70
    .line 71
    .line 72
    move-result-object p1

    .line 73
    if-eqz p1, :cond_2

    .line 74
    .line 75
    iget-object p3, p0, Lcom/join/mgps/fragment/v$c;->b:Lcom/join/mgps/fragment/v;

    .line 76
    .line 77
    invoke-virtual {p3}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    .line 78
    .line 79
    .line 80
    move-result-object p3

    .line 81
    invoke-static {p3}, Lcom/join/android/app/common/utils/m;->j(Landroid/content/Context;)Z

    .line 82
    .line 83
    .line 84
    move-result p3

    .line 85
    if-eqz p3, :cond_2

    .line 86
    .line 87
    const-string p3, "javascript:papaBackPageUp()"

    .line 88
    .line 89
    invoke-virtual {p1, p3}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    .line 90
    .line 91
    .line 92
    return p2

    .line 93
    :cond_2
    return v0
.end method
