.class public abstract Lcom/byazt/ol/c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/byazt/sr/c;
.implements Lcom/byazt/xv/c;
.implements Lcom/byazt/xl/sl;
.implements Lcom/byazt/xl/uj;


# annotations
.annotation runtime Lcom/byazt/zqa/c;
    c = {
        0x0,
        0x1,
        0x29,
        0x14
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/byazt/sr/c;",
        "Lcom/byazt/xv/c;",
        "Lcom/byazt/xl/sl;",
        "Lcom/byazt/xl/uj<",
        "Lcom/byazt/el/SSWebView;",
        ">;"
    }
.end annotation


# instance fields
.field public a:Landroid/content/Context;

.field public c:Lorg/json/JSONObject;

.field public da:Z

.field public volatile i:Lcom/byazt/xl/sp;

.field public n:Ljava/util/concurrent/atomic/AtomicBoolean;

.field public sl:Lcom/byazt/xl/x;

.field public sp:Ljava/lang/String;

.field public t:Lcom/byazt/xl/u;

.field public tt:Z

.field public u:Z

.field public uj:I

.field public ve:Lcom/byazt/el/SSWebView;

.field public x:Ljava/lang/String;

.field public yp:I

.field public z:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/byazt/xl/u;Lcom/byazt/xv/ThemeStatusBroadcastReceiver;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x0

    .line 5
    iput-boolean v0, p0, Lcom/byazt/ol/c;->da:Z

    .line 6
    .line 7
    const/16 v1, 0x8

    .line 8
    .line 9
    iput v1, p0, Lcom/byazt/ol/c;->uj:I

    .line 10
    .line 11
    new-instance v1, Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 12
    .line 13
    invoke-direct {v1, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    .line 14
    .line 15
    .line 16
    iput-object v1, p0, Lcom/byazt/ol/c;->n:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 17
    .line 18
    iput-boolean v0, p0, Lcom/byazt/ol/c;->z:Z

    .line 19
    .line 20
    iput-object p1, p0, Lcom/byazt/ol/c;->a:Landroid/content/Context;

    .line 21
    .line 22
    iput-object p2, p0, Lcom/byazt/ol/c;->t:Lcom/byazt/xl/u;

    .line 23
    .line 24
    invoke-virtual {p2}, Lcom/byazt/xl/u;->a()Ljava/lang/String;

    .line 25
    .line 26
    .line 27
    move-result-object p1

    .line 28
    iput-object p1, p0, Lcom/byazt/ol/c;->sp:Ljava/lang/String;

    .line 29
    .line 30
    invoke-virtual {p3, p0}, Lcom/byazt/xv/ThemeStatusBroadcastReceiver;->c(Lcom/byazt/xv/c;)V

    .line 31
    .line 32
    .line 33
    invoke-static {}, Lcom/byazt/sr/uj;->c()Z

    .line 34
    .line 35
    .line 36
    move-result p1

    .line 37
    if-eqz p1, :cond_0

    .line 38
    .line 39
    invoke-direct {p0}, Lcom/byazt/ol/c;->t()V

    .line 40
    .line 41
    .line 42
    return-void

    .line 43
    :cond_0
    invoke-direct {p0}, Lcom/byazt/ol/c;->u()Lcom/byazt/el/SSWebView;

    .line 44
    .line 45
    .line 46
    move-result-object p1

    .line 47
    iput-object p1, p0, Lcom/byazt/ol/c;->ve:Lcom/byazt/el/SSWebView;

    .line 48
    .line 49
    if-nez p1, :cond_1

    .line 50
    .line 51
    invoke-static {}, Lcom/byazt/sr/uj;->getContext()Landroid/content/Context;

    .line 52
    .line 53
    .line 54
    move-result-object p1

    .line 55
    if-eqz p1, :cond_2

    .line 56
    .line 57
    new-instance p1, Lcom/byazt/el/SSWebView;

    .line 58
    .line 59
    invoke-static {}, Lcom/byazt/sr/uj;->getContext()Landroid/content/Context;

    .line 60
    .line 61
    .line 62
    move-result-object p2

    .line 63
    invoke-direct {p1, p2}, Lcom/byazt/el/SSWebView;-><init>(Landroid/content/Context;)V

    .line 64
    .line 65
    .line 66
    iput-object p1, p0, Lcom/byazt/ol/c;->ve:Lcom/byazt/el/SSWebView;

    .line 67
    .line 68
    return-void

    .line 69
    :cond_1
    const/4 p1, 0x1

    .line 70
    iput-boolean p1, p0, Lcom/byazt/ol/c;->da:Z

    .line 71
    .line 72
    :cond_2
    return-void
.end method

.method private c(ILjava/lang/String;)V
    .locals 1

    .line 66
    iget-object v0, p0, Lcom/byazt/ol/c;->i:Lcom/byazt/xl/sp;

    if-eqz v0, :cond_0

    .line 67
    iget-object v0, p0, Lcom/byazt/ol/c;->i:Lcom/byazt/xl/sp;

    invoke-interface {v0, p1, p2}, Lcom/byazt/xl/sp;->c(ILjava/lang/String;)V

    :cond_0
    return-void
.end method

.method private t()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/byazt/ol/c;->a:Landroid/content/Context;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    invoke-static {}, Lcom/byazt/sr/uj;->getContext()Landroid/content/Context;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    if-eqz v0, :cond_0

    .line 10
    .line 11
    invoke-static {}, Lcom/byazt/sr/uj;->getContext()Landroid/content/Context;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    iput-object v0, p0, Lcom/byazt/ol/c;->a:Landroid/content/Context;

    .line 16
    .line 17
    :cond_0
    iget-object v0, p0, Lcom/byazt/ol/c;->a:Landroid/content/Context;

    .line 18
    .line 19
    if-eqz v0, :cond_2

    .line 20
    .line 21
    invoke-direct {p0}, Lcom/byazt/ol/c;->u()Lcom/byazt/el/SSWebView;

    .line 22
    .line 23
    .line 24
    move-result-object v0

    .line 25
    iput-object v0, p0, Lcom/byazt/ol/c;->ve:Lcom/byazt/el/SSWebView;

    .line 26
    .line 27
    if-nez v0, :cond_1

    .line 28
    .line 29
    new-instance v0, Lcom/byazt/el/SSWebView;

    .line 30
    .line 31
    new-instance v1, Landroid/content/MutableContextWrapper;

    .line 32
    .line 33
    iget-object v2, p0, Lcom/byazt/ol/c;->a:Landroid/content/Context;

    .line 34
    .line 35
    invoke-virtual {v2}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    .line 36
    .line 37
    .line 38
    move-result-object v2

    .line 39
    invoke-direct {v1, v2}, Landroid/content/MutableContextWrapper;-><init>(Landroid/content/Context;)V

    .line 40
    .line 41
    .line 42
    invoke-direct {v0, v1}, Lcom/byazt/el/SSWebView;-><init>(Landroid/content/Context;)V

    .line 43
    .line 44
    .line 45
    iput-object v0, p0, Lcom/byazt/ol/c;->ve:Lcom/byazt/el/SSWebView;

    .line 46
    .line 47
    return-void

    .line 48
    :cond_1
    const/4 v0, 0x1

    .line 49
    iput-boolean v0, p0, Lcom/byazt/ol/c;->da:Z

    .line 50
    .line 51
    :cond_2
    return-void
.end method

.method private tt(Landroid/app/Activity;)I
    .locals 0

    .line 4
    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result p1

    return p1
.end method

.method private u()Lcom/byazt/el/SSWebView;
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/byazt/ol/c;->t:Lcom/byazt/xl/u;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/byazt/xl/u;->zm()Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    invoke-static {}, Lcom/byazt/ol/n;->c()Lcom/byazt/ol/n;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    iget-object v1, p0, Lcom/byazt/ol/c;->a:Landroid/content/Context;

    .line 14
    .line 15
    iget-object v2, p0, Lcom/byazt/ol/c;->sp:Ljava/lang/String;

    .line 16
    .line 17
    invoke-virtual {v0, v1, v2}, Lcom/byazt/ol/n;->c(Landroid/content/Context;Ljava/lang/String;)Lcom/byazt/el/SSWebView;

    .line 18
    .line 19
    .line 20
    move-result-object v0

    .line 21
    return-object v0

    .line 22
    :cond_0
    invoke-static {}, Lcom/byazt/ol/n;->c()Lcom/byazt/ol/n;

    .line 23
    .line 24
    .line 25
    move-result-object v0

    .line 26
    iget-object v1, p0, Lcom/byazt/ol/c;->a:Landroid/content/Context;

    .line 27
    .line 28
    iget-object v2, p0, Lcom/byazt/ol/c;->sp:Ljava/lang/String;

    .line 29
    .line 30
    invoke-virtual {v0, v1, v2}, Lcom/byazt/ol/n;->tt(Landroid/content/Context;Ljava/lang/String;)Lcom/byazt/el/SSWebView;

    .line 31
    .line 32
    .line 33
    move-result-object v0

    .line 34
    return-object v0
.end method

.method private yp()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/byazt/ol/c;->t:Lcom/byazt/xl/u;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/byazt/xl/u;->zm()Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    invoke-static {}, Lcom/byazt/ol/n;->c()Lcom/byazt/ol/n;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    iget-object v1, p0, Lcom/byazt/ol/c;->ve:Lcom/byazt/el/SSWebView;

    .line 14
    .line 15
    invoke-virtual {v0, v1}, Lcom/byazt/ol/n;->tt(Lcom/byazt/el/SSWebView;)V

    .line 16
    .line 17
    .line 18
    return-void

    .line 19
    :cond_0
    invoke-static {}, Lcom/byazt/ol/n;->c()Lcom/byazt/ol/n;

    .line 20
    .line 21
    .line 22
    move-result-object v0

    .line 23
    iget-object v1, p0, Lcom/byazt/ol/c;->ve:Lcom/byazt/el/SSWebView;

    .line 24
    .line 25
    invoke-virtual {v0, v1}, Lcom/byazt/ol/n;->ve(Lcom/byazt/el/SSWebView;)V

    .line 26
    .line 27
    .line 28
    return-void
.end method


# virtual methods
.method public abstract a()V
.end method

.method public c()Lcom/byazt/el/SSWebView;
    .locals 1

    .line 3
    iget-object v0, p0, Lcom/byazt/ol/c;->ve:Lcom/byazt/el/SSWebView;

    return-object v0
.end method

.method public c(FF)V
    .locals 2
    .annotation build Lcom/bytedance/component/sdk/annotation/UiThread;
    .end annotation

    .line 52
    iget-object v0, p0, Lcom/byazt/ol/c;->t:Lcom/byazt/xl/u;

    invoke-virtual {v0}, Lcom/byazt/xl/u;->sp()Lcom/byazt/xl/i;

    move-result-object v0

    invoke-interface {v0}, Lcom/byazt/xl/i;->x()V

    .line 53
    invoke-static {}, Lcom/byazt/sr/uj;->c()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/byazt/ol/c;->ve()I

    move-result v0

    const/16 v1, 0x9

    if-ne v0, v1, :cond_1

    .line 54
    invoke-virtual {p0}, Lcom/byazt/ol/c;->c()Lcom/byazt/el/SSWebView;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    check-cast p1, Landroid/widget/FrameLayout$LayoutParams;

    const/4 p2, -0x1

    if-nez p1, :cond_0

    .line 55
    new-instance p1, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {p1, p2, p2}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 56
    :cond_0
    iput p2, p1, Landroid/widget/FrameLayout$LayoutParams;->width:I

    .line 57
    iput p2, p1, Landroid/widget/FrameLayout$LayoutParams;->height:I

    .line 58
    invoke-virtual {p0}, Lcom/byazt/ol/c;->c()Lcom/byazt/el/SSWebView;

    move-result-object p2

    invoke-virtual {p2, p1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-void

    .line 59
    :cond_1
    iget-object v0, p0, Lcom/byazt/ol/c;->a:Landroid/content/Context;

    invoke-static {v0, p1}, Lcom/byazt/or/x;->c(Landroid/content/Context;F)F

    move-result p1

    float-to-int p1, p1

    .line 60
    iget-object v0, p0, Lcom/byazt/ol/c;->a:Landroid/content/Context;

    invoke-static {v0, p2}, Lcom/byazt/or/x;->c(Landroid/content/Context;F)F

    move-result p2

    float-to-int p2, p2

    .line 61
    invoke-virtual {p0}, Lcom/byazt/ol/c;->c()Lcom/byazt/el/SSWebView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout$LayoutParams;

    if-nez v0, :cond_2

    .line 62
    new-instance v0, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v0, p1, p2}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 63
    :cond_2
    iput p1, v0, Landroid/widget/FrameLayout$LayoutParams;->width:I

    .line 64
    iput p2, v0, Landroid/widget/FrameLayout$LayoutParams;->height:I

    .line 65
    invoke-virtual {p0}, Lcom/byazt/ol/c;->c()Lcom/byazt/el/SSWebView;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method public c(Landroid/app/Activity;)V
    .locals 1

    .line 68
    iget v0, p0, Lcom/byazt/ol/c;->yp:I

    if-eqz v0, :cond_1

    if-nez p1, :cond_0

    goto :goto_0

    .line 69
    :cond_0
    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result p1

    iget v0, p0, Lcom/byazt/ol/c;->yp:I

    if-ne p1, v0, :cond_1

    .line 70
    invoke-virtual {p0}, Lcom/byazt/ol/c;->uj()V

    .line 71
    invoke-virtual {p0}, Lcom/byazt/ol/c;->da()V

    :cond_1
    :goto_0
    return-void
.end method

.method public c(Landroid/view/View;ILcom/byazt/sr/ve;I)V
    .locals 1

    .line 50
    iget-object v0, p0, Lcom/byazt/ol/c;->sl:Lcom/byazt/xl/x;

    if-eqz v0, :cond_0

    .line 51
    invoke-interface {v0, p1, p2, p3, p4}, Lcom/byazt/xl/x;->c(Landroid/view/View;ILcom/byazt/sr/ve;I)V

    :cond_0
    return-void
.end method

.method public c(Lcom/byazt/xl/sp;)V
    .locals 6

    .line 5
    iput-object p1, p0, Lcom/byazt/ol/c;->i:Lcom/byazt/xl/sp;

    .line 6
    invoke-virtual {p0}, Lcom/byazt/ol/c;->c()Lcom/byazt/el/SSWebView;

    move-result-object p1

    const/16 v0, 0x66

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz p1, :cond_9

    invoke-virtual {p0}, Lcom/byazt/ol/c;->c()Lcom/byazt/el/SSWebView;

    move-result-object p1

    invoke-virtual {p1}, Lcom/byazt/qg/BizWebView;->getWebView()Landroid/webkit/WebView;

    move-result-object p1

    if-nez p1, :cond_0

    goto/16 :goto_3

    .line 7
    :cond_0
    iget-object p1, p0, Lcom/byazt/ol/c;->x:Ljava/lang/String;

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 8
    iget-object p1, p0, Lcom/byazt/ol/c;->i:Lcom/byazt/xl/sp;

    const-string v1, "url is empty"

    invoke-interface {p1, v0, v1}, Lcom/byazt/xl/sp;->c(ILjava/lang/String;)V

    return-void

    .line 9
    :cond_1
    iget-object p1, p0, Lcom/byazt/ol/c;->t:Lcom/byazt/xl/u;

    invoke-virtual {p1}, Lcom/byazt/xl/u;->zm()Z

    move-result p1

    const-string v3, "data null is "

    const/16 v4, 0x67

    if-nez p1, :cond_5

    .line 10
    iget-boolean p1, p0, Lcom/byazt/ol/c;->z:Z

    if-nez p1, :cond_3

    iget-object p1, p0, Lcom/byazt/ol/c;->c:Lorg/json/JSONObject;

    invoke-static {p1}, Lcom/byazt/six/tt;->c(Lorg/json/JSONObject;)Z

    move-result p1

    if-nez p1, :cond_3

    .line 11
    iget-object p1, p0, Lcom/byazt/ol/c;->i:Lcom/byazt/xl/sp;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/byazt/ol/c;->c:Lorg/json/JSONObject;

    if-nez v3, :cond_2

    goto :goto_0

    :cond_2
    const/4 v1, 0x0

    :goto_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v4, v0}, Lcom/byazt/xl/sp;->c(ILjava/lang/String;)V

    return-void

    .line 12
    :cond_3
    iget-boolean p1, p0, Lcom/byazt/ol/c;->z:Z

    if-eqz p1, :cond_7

    iget-object p1, p0, Lcom/byazt/ol/c;->c:Lorg/json/JSONObject;

    invoke-static {p1}, Lcom/byazt/six/tt;->ve(Lorg/json/JSONObject;)Z

    move-result p1

    if-nez p1, :cond_7

    .line 13
    iget-object p1, p0, Lcom/byazt/ol/c;->i:Lcom/byazt/xl/sp;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v3, "choice ad data null is "

    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/byazt/ol/c;->c:Lorg/json/JSONObject;

    if-nez v3, :cond_4

    goto :goto_1

    :cond_4
    const/4 v1, 0x0

    :goto_1
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v4, v0}, Lcom/byazt/xl/sp;->c(ILjava/lang/String;)V

    return-void

    .line 14
    :cond_5
    invoke-virtual {p0}, Lcom/byazt/ol/c;->ve()I

    move-result p1

    const/16 v5, 0x9

    if-ne p1, v5, :cond_7

    .line 15
    iget-object p1, p0, Lcom/byazt/ol/c;->c:Lorg/json/JSONObject;

    invoke-static {p1}, Lcom/byazt/six/tt;->tt(Lorg/json/JSONObject;)Z

    move-result p1

    if-nez p1, :cond_7

    .line 16
    iget-object p1, p0, Lcom/byazt/ol/c;->i:Lcom/byazt/xl/sp;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/byazt/ol/c;->c:Lorg/json/JSONObject;

    if-nez v3, :cond_6

    goto :goto_2

    :cond_6
    const/4 v1, 0x0

    :goto_2
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v4, v0}, Lcom/byazt/xl/sp;->c(ILjava/lang/String;)V

    return-void

    .line 17
    :cond_7
    iget-object p1, p0, Lcom/byazt/ol/c;->t:Lcom/byazt/xl/u;

    invoke-virtual {p1}, Lcom/byazt/xl/u;->sp()Lcom/byazt/xl/i;

    move-result-object p1

    iget-boolean v1, p0, Lcom/byazt/ol/c;->da:Z

    invoke-interface {p1, v1}, Lcom/byazt/xl/i;->tt(Z)V

    .line 18
    iget-boolean p1, p0, Lcom/byazt/ol/c;->da:Z

    if-eqz p1, :cond_8

    :try_start_0
    const-string p1, "javascript:window.SDK_RESET_RENDER();window.SDK_TRIGGER_RENDER();"

    .line 19
    iget-object v1, p0, Lcom/byazt/ol/c;->ve:Lcom/byazt/el/SSWebView;

    invoke-virtual {v1}, Lcom/byazt/qg/BizWebView;->clearView()V

    .line 20
    iget-object v1, p0, Lcom/byazt/ol/c;->t:Lcom/byazt/xl/u;

    invoke-virtual {v1}, Lcom/byazt/xl/u;->sp()Lcom/byazt/xl/i;

    move-result-object v1

    invoke-interface {v1}, Lcom/byazt/xl/i;->sp()V

    .line 21
    iget-object v1, p0, Lcom/byazt/ol/c;->ve:Lcom/byazt/el/SSWebView;

    invoke-virtual {v1}, Lcom/byazt/qg/BizWebView;->getWebView()Landroid/webkit/WebView;

    move-result-object v1

    invoke-static {v1, p1}, Lcom/byazt/nr/yp;->c(Landroid/webkit/WebView;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 22
    invoke-static {}, Lcom/byazt/ol/n;->c()Lcom/byazt/ol/n;

    move-result-object v1

    iget-object v2, p0, Lcom/byazt/ol/c;->ve:Lcom/byazt/el/SSWebView;

    invoke-virtual {v1, v2}, Lcom/byazt/ol/n;->n(Lcom/byazt/el/SSWebView;)Z

    .line 23
    iget-object v1, p0, Lcom/byazt/ol/c;->i:Lcom/byazt/xl/sp;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "load exception is "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-interface {v1, v0, p1}, Lcom/byazt/xl/sp;->c(ILjava/lang/String;)V

    return-void

    .line 24
    :cond_8
    invoke-virtual {p0}, Lcom/byazt/ol/c;->c()Lcom/byazt/el/SSWebView;

    move-result-object p1

    .line 25
    invoke-virtual {p1}, Lcom/byazt/qg/BizWebView;->clearView()V

    .line 26
    iget-object v0, p0, Lcom/byazt/ol/c;->t:Lcom/byazt/xl/u;

    invoke-virtual {v0}, Lcom/byazt/xl/u;->sp()Lcom/byazt/xl/i;

    move-result-object v0

    invoke-interface {v0}, Lcom/byazt/xl/i;->sp()V

    .line 27
    iget-object v0, p0, Lcom/byazt/ol/c;->x:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lcom/byazt/qg/BizWebView;->loadUrl(Ljava/lang/String;)V

    return-void

    .line 28
    :cond_9
    :goto_3
    iget-object p1, p0, Lcom/byazt/ol/c;->i:Lcom/byazt/xl/sp;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "SSWebview null is "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/byazt/ol/c;->c()Lcom/byazt/el/SSWebView;

    move-result-object v4

    if-nez v4, :cond_a

    goto :goto_4

    :cond_a
    const/4 v1, 0x0

    :goto_4
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, " or Webview is null"

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v0, v1}, Lcom/byazt/xl/sp;->c(ILjava/lang/String;)V

    return-void
.end method

.method public c(Lcom/byazt/xl/x;)V
    .locals 0

    .line 4
    iput-object p1, p0, Lcom/byazt/ol/c;->sl:Lcom/byazt/xl/x;

    return-void
.end method

.method public c(Lcom/byazt/xl/yp;)V
    .locals 6

    const/16 v0, 0x69

    if-nez p1, :cond_1

    .line 30
    iget-object p1, p0, Lcom/byazt/ol/c;->i:Lcom/byazt/xl/sp;

    if-eqz p1, :cond_0

    .line 31
    iget-object p1, p0, Lcom/byazt/ol/c;->i:Lcom/byazt/xl/sp;

    const-string v1, "renderResult is null"

    invoke-interface {p1, v0, v1}, Lcom/byazt/xl/sp;->c(ILjava/lang/String;)V

    :cond_0
    return-void

    .line 32
    :cond_1
    invoke-virtual {p1}, Lcom/byazt/xl/yp;->ve()Z

    move-result v1

    .line 33
    invoke-virtual {p1}, Lcom/byazt/xl/yp;->uj()D

    move-result-wide v2

    double-to-float v2, v2

    .line 34
    invoke-virtual {p1}, Lcom/byazt/xl/yp;->n()D

    move-result-wide v3

    double-to-float v3, v3

    .line 35
    invoke-virtual {p0}, Lcom/byazt/ol/c;->ve()I

    move-result v4

    if-nez v4, :cond_4

    const/4 v4, 0x0

    cmpg-float v5, v2, v4

    if-lez v5, :cond_2

    cmpg-float v4, v3, v4

    if-gtz v4, :cond_4

    .line 36
    :cond_2
    iget-object p1, p0, Lcom/byazt/ol/c;->i:Lcom/byazt/xl/sp;

    if-eqz p1, :cond_3

    .line 37
    iget-object p1, p0, Lcom/byazt/ol/c;->i:Lcom/byazt/xl/sp;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v4, "width is "

    invoke-direct {v1, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v2, "height is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v0, v1}, Lcom/byazt/xl/sp;->c(ILjava/lang/String;)V

    :cond_3
    return-void

    .line 38
    :cond_4
    iput-boolean v1, p0, Lcom/byazt/ol/c;->tt:Z

    .line 39
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    if-ne v0, v1, :cond_5

    .line 40
    invoke-virtual {p0, p1, v2, v3}, Lcom/byazt/ol/c;->c(Lcom/byazt/xl/yp;FF)V

    return-void

    .line 41
    :cond_5
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance v1, Lcom/byazt/ol/c$1;

    invoke-direct {v1, p0, p1, v2, v3}, Lcom/byazt/ol/c$1;-><init>(Lcom/byazt/ol/c;Lcom/byazt/xl/yp;FF)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public c(Lcom/byazt/xl/yp;FF)V
    .locals 2

    .line 42
    iget-boolean v0, p0, Lcom/byazt/ol/c;->tt:Z

    invoke-virtual {p1}, Lcom/byazt/xl/yp;->sl()I

    move-result v1

    invoke-virtual {p0, v0, v1}, Lcom/byazt/ol/c;->c(ZI)V

    .line 43
    iget-boolean v0, p0, Lcom/byazt/ol/c;->tt:Z

    if-eqz v0, :cond_0

    iget-boolean v1, p0, Lcom/byazt/ol/c;->u:Z

    if-nez v1, :cond_0

    .line 44
    invoke-virtual {p0, p2, p3}, Lcom/byazt/ol/c;->c(FF)V

    .line 45
    iget p2, p0, Lcom/byazt/ol/c;->uj:I

    invoke-virtual {p0, p2}, Lcom/byazt/ol/c;->tt(I)V

    .line 46
    iget-object p2, p0, Lcom/byazt/ol/c;->i:Lcom/byazt/xl/sp;

    if-eqz p2, :cond_2

    .line 47
    iget-object p2, p0, Lcom/byazt/ol/c;->i:Lcom/byazt/xl/sp;

    invoke-virtual {p0}, Lcom/byazt/ol/c;->c()Lcom/byazt/el/SSWebView;

    move-result-object p3

    invoke-interface {p2, p3, p1}, Lcom/byazt/xl/sp;->c(Landroid/view/View;Lcom/byazt/xl/yp;)V

    return-void

    :cond_0
    if-nez v0, :cond_1

    .line 48
    invoke-static {}, Lcom/byazt/ol/n;->c()Lcom/byazt/ol/n;

    move-result-object p2

    iget-object p3, p0, Lcom/byazt/ol/c;->ve:Lcom/byazt/el/SSWebView;

    invoke-virtual {p2, p3}, Lcom/byazt/ol/n;->n(Lcom/byazt/el/SSWebView;)Z

    .line 49
    :cond_1
    invoke-virtual {p1}, Lcom/byazt/xl/yp;->sl()I

    move-result p2

    invoke-virtual {p1}, Lcom/byazt/xl/yp;->da()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p2, p1}, Lcom/byazt/ol/c;->c(ILjava/lang/String;)V

    :cond_2
    return-void
.end method

.method public c(Ljava/lang/String;)V
    .locals 0

    .line 2
    iput-object p1, p0, Lcom/byazt/ol/c;->x:Ljava/lang/String;

    return-void
.end method

.method public c(Z)V
    .locals 0

    .line 29
    iput-boolean p1, p0, Lcom/byazt/ol/c;->u:Z

    return-void
.end method

.method public c(ZI)V
    .locals 0

    .line 1
    return-void
.end method

.method public da()V
    .locals 0

    return-void
.end method

.method public i()V
    .locals 0

    return-void
.end method

.method public n()V
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/byazt/ol/c;->c()Lcom/byazt/el/SSWebView;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    if-nez v0, :cond_0

    .line 6
    .line 7
    return-void

    .line 8
    :cond_0
    :try_start_0
    invoke-virtual {p0}, Lcom/byazt/ol/c;->c()Lcom/byazt/el/SSWebView;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    invoke-virtual {v0}, Lcom/byazt/qg/BizWebView;->getWebView()Landroid/webkit/WebView;

    .line 13
    .line 14
    .line 15
    move-result-object v0

    .line 16
    invoke-virtual {v0}, Landroid/webkit/WebView;->resumeTimers()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 17
    .line 18
    .line 19
    :catch_0
    return-void
.end method

.method public sl()Lcom/byazt/xl/u;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/byazt/ol/c;->t:Lcom/byazt/xl/u;

    .line 2
    .line 3
    return-object v0
.end method

.method public synthetic sp()Landroid/view/View;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/byazt/ol/c;->tt()Lcom/byazt/el/SSWebView;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    return-object v0
.end method

.method public tt()Lcom/byazt/el/SSWebView;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/byazt/ol/c;->c()Lcom/byazt/el/SSWebView;

    move-result-object v0

    return-object v0
.end method

.method public abstract tt(I)V
.end method

.method public tt(Landroid/view/View;ILcom/byazt/sr/ve;I)V
    .locals 1

    .line 2
    iget-object v0, p0, Lcom/byazt/ol/c;->sl:Lcom/byazt/xl/x;

    if-eqz v0, :cond_0

    .line 3
    invoke-interface {v0, p1, p2, p3, p4}, Lcom/byazt/xl/x;->tt(Landroid/view/View;ILcom/byazt/sr/ve;I)V

    :cond_0
    return-void
.end method

.method public uj()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/byazt/ol/c;->n:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    return-void

    .line 10
    :cond_0
    iget-object v0, p0, Lcom/byazt/ol/c;->n:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 11
    .line 12
    const/4 v1, 0x1

    .line 13
    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 14
    .line 15
    .line 16
    invoke-virtual {p0}, Lcom/byazt/ol/c;->a()V

    .line 17
    .line 18
    .line 19
    iget-object v0, p0, Lcom/byazt/ol/c;->ve:Lcom/byazt/el/SSWebView;

    .line 20
    .line 21
    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    .line 22
    .line 23
    .line 24
    move-result-object v0

    .line 25
    if-eqz v0, :cond_1

    .line 26
    .line 27
    iget-object v0, p0, Lcom/byazt/ol/c;->ve:Lcom/byazt/el/SSWebView;

    .line 28
    .line 29
    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    .line 30
    .line 31
    .line 32
    move-result-object v0

    .line 33
    check-cast v0, Landroid/view/ViewGroup;

    .line 34
    .line 35
    iget-object v1, p0, Lcom/byazt/ol/c;->ve:Lcom/byazt/el/SSWebView;

    .line 36
    .line 37
    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 38
    .line 39
    .line 40
    :cond_1
    iget-boolean v0, p0, Lcom/byazt/ol/c;->tt:Z

    .line 41
    .line 42
    if-eqz v0, :cond_2

    .line 43
    .line 44
    invoke-direct {p0}, Lcom/byazt/ol/c;->yp()V

    .line 45
    .line 46
    .line 47
    return-void

    .line 48
    :cond_2
    invoke-static {}, Lcom/byazt/ol/n;->c()Lcom/byazt/ol/n;

    .line 49
    .line 50
    .line 51
    move-result-object v0

    .line 52
    iget-object v1, p0, Lcom/byazt/ol/c;->ve:Lcom/byazt/el/SSWebView;

    .line 53
    .line 54
    invoke-virtual {v0, v1}, Lcom/byazt/ol/n;->n(Lcom/byazt/el/SSWebView;)Z

    .line 55
    .line 56
    .line 57
    return-void
.end method

.method public ve()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public x()V
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/byazt/ol/c;->i()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lcom/byazt/ol/c;->ve:Lcom/byazt/el/SSWebView;

    .line 5
    .line 6
    invoke-static {v0}, Lcom/byazt/nr/tt;->c(Landroid/view/View;)Landroid/app/Activity;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    if-eqz v0, :cond_0

    .line 11
    .line 12
    invoke-direct {p0, v0}, Lcom/byazt/ol/c;->tt(Landroid/app/Activity;)I

    .line 13
    .line 14
    .line 15
    move-result v0

    .line 16
    iput v0, p0, Lcom/byazt/ol/c;->yp:I

    .line 17
    .line 18
    :cond_0
    return-void
.end method
