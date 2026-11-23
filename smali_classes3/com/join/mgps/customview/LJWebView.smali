.class public Lcom/join/mgps/customview/LJWebView;
.super Landroid/widget/RelativeLayout;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/join/mgps/customview/LJWebView$b;,
        Lcom/join/mgps/customview/LJWebView$c;
    }
.end annotation


# static fields
.field public static r:I = 0x1

.field public static s:I = 0x2

.field public static final t:I = 0xa8e2


# instance fields
.field private b:Landroid/content/Context;

.field private c:Landroid/webkit/WebView;

.field private d:Landroid/widget/ProgressBar;

.field private e:Z

.field private f:Landroid/widget/RelativeLayout;

.field private g:I

.field private h:Z

.field private i:I

.field private j:Ljava/lang/String;

.field private k:Landroid/view/View;

.field private l:Landroid/view/View;

.field private m:Lcom/join/mgps/customview/LJWebView$b;

.field n:Landroid/app/Activity;

.field o:Landroid/webkit/ValueCallback;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/webkit/ValueCallback<",
            "Landroid/net/Uri;",
            ">;"
        }
    .end annotation
.end field

.field p:Landroid/webkit/ValueCallback;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/webkit/ValueCallback<",
            "[",
            "Landroid/net/Uri;",
            ">;"
        }
    .end annotation
.end field

.field private q:Lcom/join/mgps/customview/LJWebView$c;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "context"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    const/4 v0, 0x0

    .line 2
    iput-object v0, p0, Lcom/join/mgps/customview/LJWebView;->c:Landroid/webkit/WebView;

    .line 3
    iput-object v0, p0, Lcom/join/mgps/customview/LJWebView;->d:Landroid/widget/ProgressBar;

    const/4 v1, 0x1

    .line 4
    iput-boolean v1, p0, Lcom/join/mgps/customview/LJWebView;->e:Z

    .line 5
    iput-object v0, p0, Lcom/join/mgps/customview/LJWebView;->f:Landroid/widget/RelativeLayout;

    const/4 v1, 0x4

    .line 6
    iput v1, p0, Lcom/join/mgps/customview/LJWebView;->g:I

    const/4 v1, 0x0

    .line 7
    iput-boolean v1, p0, Lcom/join/mgps/customview/LJWebView;->h:Z

    .line 8
    sget v1, Lcom/join/mgps/customview/LJWebView;->s:I

    iput v1, p0, Lcom/join/mgps/customview/LJWebView;->i:I

    .line 9
    iput-object v0, p0, Lcom/join/mgps/customview/LJWebView;->l:Landroid/view/View;

    .line 10
    iput-object p1, p0, Lcom/join/mgps/customview/LJWebView;->b:Landroid/content/Context;

    .line 11
    invoke-direct {p0}, Lcom/join/mgps/customview/LJWebView;->t()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "context",
            "attrs"
        }
    .end annotation

    .line 12
    invoke-direct {p0, p1, p2}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 p2, 0x0

    .line 13
    iput-object p2, p0, Lcom/join/mgps/customview/LJWebView;->c:Landroid/webkit/WebView;

    .line 14
    iput-object p2, p0, Lcom/join/mgps/customview/LJWebView;->d:Landroid/widget/ProgressBar;

    const/4 v0, 0x1

    .line 15
    iput-boolean v0, p0, Lcom/join/mgps/customview/LJWebView;->e:Z

    .line 16
    iput-object p2, p0, Lcom/join/mgps/customview/LJWebView;->f:Landroid/widget/RelativeLayout;

    const/4 v0, 0x4

    .line 17
    iput v0, p0, Lcom/join/mgps/customview/LJWebView;->g:I

    const/4 v0, 0x0

    .line 18
    iput-boolean v0, p0, Lcom/join/mgps/customview/LJWebView;->h:Z

    .line 19
    sget v0, Lcom/join/mgps/customview/LJWebView;->s:I

    iput v0, p0, Lcom/join/mgps/customview/LJWebView;->i:I

    .line 20
    iput-object p2, p0, Lcom/join/mgps/customview/LJWebView;->l:Landroid/view/View;

    .line 21
    iput-object p1, p0, Lcom/join/mgps/customview/LJWebView;->b:Landroid/content/Context;

    .line 22
    invoke-direct {p0}, Lcom/join/mgps/customview/LJWebView;->t()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "context",
            "attrs",
            "defStyle"
        }
    .end annotation

    .line 23
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 p2, 0x0

    .line 24
    iput-object p2, p0, Lcom/join/mgps/customview/LJWebView;->c:Landroid/webkit/WebView;

    .line 25
    iput-object p2, p0, Lcom/join/mgps/customview/LJWebView;->d:Landroid/widget/ProgressBar;

    const/4 p3, 0x1

    .line 26
    iput-boolean p3, p0, Lcom/join/mgps/customview/LJWebView;->e:Z

    .line 27
    iput-object p2, p0, Lcom/join/mgps/customview/LJWebView;->f:Landroid/widget/RelativeLayout;

    const/4 p3, 0x4

    .line 28
    iput p3, p0, Lcom/join/mgps/customview/LJWebView;->g:I

    const/4 p3, 0x0

    .line 29
    iput-boolean p3, p0, Lcom/join/mgps/customview/LJWebView;->h:Z

    .line 30
    sget p3, Lcom/join/mgps/customview/LJWebView;->s:I

    iput p3, p0, Lcom/join/mgps/customview/LJWebView;->i:I

    .line 31
    iput-object p2, p0, Lcom/join/mgps/customview/LJWebView;->l:Landroid/view/View;

    .line 32
    iput-object p1, p0, Lcom/join/mgps/customview/LJWebView;->b:Landroid/content/Context;

    .line 33
    invoke-direct {p0}, Lcom/join/mgps/customview/LJWebView;->t()V

    return-void
.end method

.method static synthetic a(Lcom/join/mgps/customview/LJWebView;)Lcom/join/mgps/customview/LJWebView$b;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/join/mgps/customview/LJWebView;->m:Lcom/join/mgps/customview/LJWebView$b;

    .line 2
    .line 3
    return-object p0
.end method

.method static synthetic b(Lcom/join/mgps/customview/LJWebView;)I
    .locals 0

    .line 1
    iget p0, p0, Lcom/join/mgps/customview/LJWebView;->i:I

    .line 2
    .line 3
    return p0
.end method

.method static synthetic c(Lcom/join/mgps/customview/LJWebView;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/join/mgps/customview/LJWebView;->y()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method static synthetic d(Lcom/join/mgps/customview/LJWebView;)Landroid/widget/ProgressBar;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/join/mgps/customview/LJWebView;->d:Landroid/widget/ProgressBar;

    .line 2
    .line 3
    return-object p0
.end method

.method static synthetic e(Lcom/join/mgps/customview/LJWebView;Landroid/widget/ProgressBar;)Landroid/widget/ProgressBar;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/customview/LJWebView;->d:Landroid/widget/ProgressBar;

    .line 2
    .line 3
    return-object p1
.end method

.method static synthetic f(Lcom/join/mgps/customview/LJWebView;)Landroid/widget/RelativeLayout;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/join/mgps/customview/LJWebView;->f:Landroid/widget/RelativeLayout;

    .line 2
    .line 3
    return-object p0
.end method

.method static synthetic g(Lcom/join/mgps/customview/LJWebView;Landroid/widget/RelativeLayout;)Landroid/widget/RelativeLayout;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/customview/LJWebView;->f:Landroid/widget/RelativeLayout;

    .line 2
    .line 3
    return-object p1
.end method

.method static synthetic h(Lcom/join/mgps/customview/LJWebView;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/join/mgps/customview/LJWebView;->h:Z

    .line 2
    .line 3
    return p0
.end method

.method static synthetic i(Lcom/join/mgps/customview/LJWebView;Z)Z
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/join/mgps/customview/LJWebView;->h:Z

    .line 2
    .line 3
    return p1
.end method

.method static synthetic j(Lcom/join/mgps/customview/LJWebView;)Landroid/content/Context;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/join/mgps/customview/LJWebView;->b:Landroid/content/Context;

    .line 2
    .line 3
    return-object p0
.end method

.method static synthetic k(Lcom/join/mgps/customview/LJWebView;)I
    .locals 0

    .line 1
    iget p0, p0, Lcom/join/mgps/customview/LJWebView;->g:I

    .line 2
    .line 3
    return p0
.end method

.method static synthetic l(Lcom/join/mgps/customview/LJWebView;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/join/mgps/customview/LJWebView;->e:Z

    .line 2
    .line 3
    return p0
.end method

.method static synthetic m(Lcom/join/mgps/customview/LJWebView;)Landroid/view/View;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/join/mgps/customview/LJWebView;->k:Landroid/view/View;

    .line 2
    .line 3
    return-object p0
.end method

.method static synthetic n(Lcom/join/mgps/customview/LJWebView;Landroid/view/View;)Landroid/view/View;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/customview/LJWebView;->k:Landroid/view/View;

    .line 2
    .line 3
    return-object p1
.end method

.method static synthetic o(Lcom/join/mgps/customview/LJWebView;)Landroid/view/View;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/join/mgps/customview/LJWebView;->l:Landroid/view/View;

    .line 2
    .line 3
    return-object p0
.end method

.method static synthetic p(Lcom/join/mgps/customview/LJWebView;Landroid/view/View;)Landroid/view/View;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/join/mgps/customview/LJWebView;->l:Landroid/view/View;

    .line 2
    .line 3
    return-object p1
.end method

.method private t()V
    .locals 2

    .line 1
    new-instance v0, Landroid/webkit/WebView;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/join/mgps/customview/LJWebView;->b:Landroid/content/Context;

    .line 4
    .line 5
    invoke-direct {v0, v1}, Landroid/webkit/WebView;-><init>(Landroid/content/Context;)V

    .line 6
    .line 7
    .line 8
    iput-object v0, p0, Lcom/join/mgps/customview/LJWebView;->c:Landroid/webkit/WebView;

    .line 9
    .line 10
    const/4 v1, -0x1

    .line 11
    invoke-virtual {p0, v0, v1, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;II)V

    .line 12
    .line 13
    .line 14
    iget-object v0, p0, Lcom/join/mgps/customview/LJWebView;->c:Landroid/webkit/WebView;

    .line 15
    .line 16
    const/4 v1, 0x0

    .line 17
    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->setBackgroundColor(I)V

    .line 18
    .line 19
    .line 20
    invoke-virtual {p0}, Lcom/join/mgps/customview/LJWebView;->u()V

    .line 21
    .line 22
    .line 23
    iget-object v0, p0, Lcom/join/mgps/customview/LJWebView;->c:Landroid/webkit/WebView;

    .line 24
    .line 25
    new-instance v1, Lcom/join/mgps/customview/LJWebView$a;

    .line 26
    .line 27
    invoke-direct {v1, p0}, Lcom/join/mgps/customview/LJWebView$a;-><init>(Lcom/join/mgps/customview/LJWebView;)V

    .line 28
    .line 29
    .line 30
    invoke-virtual {v0, v1}, Landroid/webkit/WebView;->setWebChromeClient(Landroid/webkit/WebChromeClient;)V

    .line 31
    .line 32
    .line 33
    return-void
.end method

.method private x(IILandroid/content/Intent;)V
    .locals 4
    .annotation build Landroid/annotation/TargetApi;
        value = 0x15
    .end annotation

    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "requestCode",
            "resultCode",
            "intent"
        }
    .end annotation

    .line 1
    const v0, 0xa8e2

    .line 2
    .line 3
    .line 4
    if-ne p1, v0, :cond_5

    .line 5
    .line 6
    iget-object p1, p0, Lcom/join/mgps/customview/LJWebView;->p:Landroid/webkit/ValueCallback;

    .line 7
    .line 8
    if-nez p1, :cond_0

    .line 9
    .line 10
    goto :goto_2

    .line 11
    :cond_0
    const/4 p1, -0x1

    .line 12
    const/4 v0, 0x0

    .line 13
    if-ne p2, p1, :cond_3

    .line 14
    .line 15
    if-eqz p3, :cond_3

    .line 16
    .line 17
    invoke-virtual {p3}, Landroid/content/Intent;->getDataString()Ljava/lang/String;

    .line 18
    .line 19
    .line 20
    move-result-object p1

    .line 21
    invoke-virtual {p3}, Landroid/content/Intent;->getClipData()Landroid/content/ClipData;

    .line 22
    .line 23
    .line 24
    move-result-object p2

    .line 25
    const/4 p3, 0x0

    .line 26
    if-eqz p2, :cond_1

    .line 27
    .line 28
    invoke-virtual {p2}, Landroid/content/ClipData;->getItemCount()I

    .line 29
    .line 30
    .line 31
    move-result v1

    .line 32
    new-array v1, v1, [Landroid/net/Uri;

    .line 33
    .line 34
    const/4 v2, 0x0

    .line 35
    :goto_0
    invoke-virtual {p2}, Landroid/content/ClipData;->getItemCount()I

    .line 36
    .line 37
    .line 38
    move-result v3

    .line 39
    if-ge v2, v3, :cond_2

    .line 40
    .line 41
    invoke-virtual {p2, v2}, Landroid/content/ClipData;->getItemAt(I)Landroid/content/ClipData$Item;

    .line 42
    .line 43
    .line 44
    move-result-object v3

    .line 45
    invoke-virtual {v3}, Landroid/content/ClipData$Item;->getUri()Landroid/net/Uri;

    .line 46
    .line 47
    .line 48
    move-result-object v3

    .line 49
    aput-object v3, v1, v2

    .line 50
    .line 51
    add-int/lit8 v2, v2, 0x1

    .line 52
    .line 53
    goto :goto_0

    .line 54
    :cond_1
    move-object v1, v0

    .line 55
    :cond_2
    if-eqz p1, :cond_4

    .line 56
    .line 57
    const/4 p2, 0x1

    .line 58
    new-array v1, p2, [Landroid/net/Uri;

    .line 59
    .line 60
    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    .line 61
    .line 62
    .line 63
    move-result-object p1

    .line 64
    aput-object p1, v1, p3

    .line 65
    .line 66
    goto :goto_1

    .line 67
    :cond_3
    move-object v1, v0

    .line 68
    :cond_4
    :goto_1
    iget-object p1, p0, Lcom/join/mgps/customview/LJWebView;->p:Landroid/webkit/ValueCallback;

    .line 69
    .line 70
    invoke-interface {p1, v1}, Landroid/webkit/ValueCallback;->onReceiveValue(Ljava/lang/Object;)V

    .line 71
    .line 72
    .line 73
    iput-object v0, p0, Lcom/join/mgps/customview/LJWebView;->p:Landroid/webkit/ValueCallback;

    .line 74
    .line 75
    :cond_5
    :goto_2
    return-void
.end method

.method private y()V
    .locals 3

    .line 1
    new-instance v0, Landroid/content/Intent;

    .line 2
    .line 3
    const-string v1, "android.intent.action.GET_CONTENT"

    .line 4
    .line 5
    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    const-string v1, "android.intent.category.OPENABLE"

    .line 9
    .line 10
    invoke-virtual {v0, v1}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 11
    .line 12
    .line 13
    const-string v1, "*/*"

    .line 14
    .line 15
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 16
    .line 17
    .line 18
    iget-object v1, p0, Lcom/join/mgps/customview/LJWebView;->n:Landroid/app/Activity;

    .line 19
    .line 20
    const-string v2, "Image Chooser"

    .line 21
    .line 22
    invoke-static {v0, v2}, Landroid/content/Intent;->createChooser(Landroid/content/Intent;Ljava/lang/CharSequence;)Landroid/content/Intent;

    .line 23
    .line 24
    .line 25
    move-result-object v0

    .line 26
    const v2, 0xa8e2

    .line 27
    .line 28
    .line 29
    invoke-virtual {v1, v0, v2}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 30
    .line 31
    .line 32
    return-void
.end method


# virtual methods
.method public getWebView()Landroid/webkit/WebView;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/customview/LJWebView;->c:Landroid/webkit/WebView;

    .line 2
    .line 3
    return-object v0
.end method

.method public q(IILandroid/content/Intent;)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "requestCode",
            "resultCode",
            "data"
        }
    .end annotation

    .line 1
    const v0, 0xa8e2

    .line 2
    .line 3
    .line 4
    const/4 v1, 0x0

    .line 5
    if-ne p1, v0, :cond_4

    .line 6
    .line 7
    iget-object v0, p0, Lcom/join/mgps/customview/LJWebView;->o:Landroid/webkit/ValueCallback;

    .line 8
    .line 9
    if-nez v0, :cond_0

    .line 10
    .line 11
    iget-object v0, p0, Lcom/join/mgps/customview/LJWebView;->p:Landroid/webkit/ValueCallback;

    .line 12
    .line 13
    if-nez v0, :cond_0

    .line 14
    .line 15
    return-void

    .line 16
    :cond_0
    if-eqz p3, :cond_2

    .line 17
    .line 18
    const/4 v0, -0x1

    .line 19
    if-eq p2, v0, :cond_1

    .line 20
    .line 21
    goto :goto_0

    .line 22
    :cond_1
    invoke-virtual {p3}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    .line 23
    .line 24
    .line 25
    move-result-object v0

    .line 26
    goto :goto_1

    .line 27
    :cond_2
    :goto_0
    move-object v0, v1

    .line 28
    :goto_1
    iget-object v2, p0, Lcom/join/mgps/customview/LJWebView;->p:Landroid/webkit/ValueCallback;

    .line 29
    .line 30
    if-eqz v2, :cond_3

    .line 31
    .line 32
    invoke-direct {p0, p1, p2, p3}, Lcom/join/mgps/customview/LJWebView;->x(IILandroid/content/Intent;)V

    .line 33
    .line 34
    .line 35
    goto :goto_2

    .line 36
    :cond_3
    iget-object p1, p0, Lcom/join/mgps/customview/LJWebView;->o:Landroid/webkit/ValueCallback;

    .line 37
    .line 38
    if-eqz p1, :cond_6

    .line 39
    .line 40
    invoke-interface {p1, v0}, Landroid/webkit/ValueCallback;->onReceiveValue(Ljava/lang/Object;)V

    .line 41
    .line 42
    .line 43
    iput-object v1, p0, Lcom/join/mgps/customview/LJWebView;->o:Landroid/webkit/ValueCallback;

    .line 44
    .line 45
    goto :goto_2

    .line 46
    :cond_4
    iget-object p1, p0, Lcom/join/mgps/customview/LJWebView;->o:Landroid/webkit/ValueCallback;

    .line 47
    .line 48
    if-eqz p1, :cond_5

    .line 49
    .line 50
    invoke-interface {p1, v1}, Landroid/webkit/ValueCallback;->onReceiveValue(Ljava/lang/Object;)V

    .line 51
    .line 52
    .line 53
    iput-object v1, p0, Lcom/join/mgps/customview/LJWebView;->o:Landroid/webkit/ValueCallback;

    .line 54
    .line 55
    goto :goto_2

    .line 56
    :cond_5
    iget-object p1, p0, Lcom/join/mgps/customview/LJWebView;->p:Landroid/webkit/ValueCallback;

    .line 57
    .line 58
    if-eqz p1, :cond_6

    .line 59
    .line 60
    invoke-interface {p1, v1}, Landroid/webkit/ValueCallback;->onReceiveValue(Ljava/lang/Object;)V

    .line 61
    .line 62
    .line 63
    iput-object v1, p0, Lcom/join/mgps/customview/LJWebView;->p:Landroid/webkit/ValueCallback;

    .line 64
    .line 65
    :cond_6
    :goto_2
    return-void
.end method

.method public r(Ljava/lang/Object;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "object"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/customview/LJWebView;->c:Landroid/webkit/WebView;

    .line 2
    .line 3
    const-string v1, "papa"

    .line 4
    .line 5
    invoke-virtual {v0, p1, v1}, Landroid/webkit/WebView;->addJavascriptInterface(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    return-void
.end method

.method public s(Ljava/lang/Object;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "object"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/customview/LJWebView;->c:Landroid/webkit/WebView;

    .line 2
    .line 3
    const-string v1, "wufan"

    .line 4
    .line 5
    invoke-virtual {v0, p1, v1}, Landroid/webkit/WebView;->addJavascriptInterface(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    return-void
.end method

.method public setActivity(Landroid/app/Activity;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "activity"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/join/mgps/customview/LJWebView;->n:Landroid/app/Activity;

    .line 2
    .line 3
    return-void
.end method

.method public setBarHeight(I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "height"
        }
    .end annotation

    .line 1
    iput p1, p0, Lcom/join/mgps/customview/LJWebView;->g:I

    .line 2
    .line 3
    return-void
.end method

.method public setBuiltInZoomControls(Z)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/customview/LJWebView;->c:Landroid/webkit/WebView;

    .line 2
    .line 3
    invoke-virtual {v0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-virtual {v0, p1}, Landroid/webkit/WebSettings;->setBuiltInZoomControls(Z)V

    .line 8
    .line 9
    .line 10
    return-void
.end method

.method public setCacheMode(I)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/customview/LJWebView;->c:Landroid/webkit/WebView;

    .line 2
    .line 3
    invoke-virtual {v0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-virtual {v0, p1}, Landroid/webkit/WebSettings;->setCacheMode(I)V

    .line 8
    .line 9
    .line 10
    return-void
.end method

.method public setClickable(Z)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/customview/LJWebView;->c:Landroid/webkit/WebView;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Landroid/view/View;->setClickable(Z)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public setJavaScriptEnabled(Z)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/customview/LJWebView;->c:Landroid/webkit/WebView;

    .line 2
    .line 3
    invoke-virtual {v0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-virtual {v0, p1}, Landroid/webkit/WebSettings;->setJavaScriptEnabled(Z)V

    .line 8
    .line 9
    .line 10
    return-void
.end method

.method public setMethodListenter(Lcom/join/mgps/customview/LJWebView$b;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "findMethod"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/join/mgps/customview/LJWebView;->m:Lcom/join/mgps/customview/LJWebView$b;

    .line 2
    .line 3
    return-void
.end method

.method public setProgressStyle(I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "style"
        }
    .end annotation

    .line 1
    iput p1, p0, Lcom/join/mgps/customview/LJWebView;->i:I

    .line 2
    .line 3
    return-void
.end method

.method public setProgressVisible(Z)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "visible"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/customview/LJWebView;->d:Landroid/widget/ProgressBar;

    .line 2
    .line 3
    if-eqz v0, :cond_1

    .line 4
    .line 5
    if-eqz p1, :cond_0

    .line 6
    .line 7
    const/4 v1, 0x0

    .line 8
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 9
    .line 10
    .line 11
    goto :goto_0

    .line 12
    :cond_0
    const/16 v1, 0x8

    .line 13
    .line 14
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 15
    .line 16
    .line 17
    :cond_1
    :goto_0
    iput-boolean p1, p0, Lcom/join/mgps/customview/LJWebView;->e:Z

    .line 18
    .line 19
    return-void
.end method

.method public setSupportZoom(Z)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/customview/LJWebView;->c:Landroid/webkit/WebView;

    .line 2
    .line 3
    invoke-virtual {v0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-virtual {v0, p1}, Landroid/webkit/WebSettings;->setSupportZoom(Z)V

    .line 8
    .line 9
    .line 10
    return-void
.end method

.method public setUseWideViewPort(Z)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/customview/LJWebView;->c:Landroid/webkit/WebView;

    .line 2
    .line 3
    invoke-virtual {v0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-virtual {v0, p1}, Landroid/webkit/WebSettings;->setUseWideViewPort(Z)V

    .line 8
    .line 9
    .line 10
    return-void
.end method

.method public setWebViewClient(Landroid/webkit/WebViewClient;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/customview/LJWebView;->c:Landroid/webkit/WebView;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Landroid/webkit/WebView;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    .line 4
    .line 5
    .line 6
    :try_start_0
    iget-object p1, p0, Lcom/join/mgps/customview/LJWebView;->c:Landroid/webkit/WebView;

    .line 7
    .line 8
    const-string v0, "searchBoxJavaBredge_"

    .line 9
    .line 10
    invoke-virtual {p1, v0}, Landroid/webkit/WebView;->removeJavascriptInterface(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 11
    .line 12
    .line 13
    :catch_0
    return-void
.end method

.method public setonShowFileChooser(Lcom/join/mgps/customview/LJWebView$c;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "fileChooserListener"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/join/mgps/customview/LJWebView;->q:Lcom/join/mgps/customview/LJWebView$c;

    .line 2
    .line 3
    return-void
.end method

.method public u()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/join/mgps/customview/LJWebView;->c:Landroid/webkit/WebView;

    .line 2
    .line 3
    invoke-virtual {v0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    const/4 v1, 0x1

    .line 8
    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setDomStorageEnabled(Z)V

    .line 9
    .line 10
    .line 11
    iget-object v0, p0, Lcom/join/mgps/customview/LJWebView;->c:Landroid/webkit/WebView;

    .line 12
    .line 13
    invoke-virtual {v0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    sget-object v2, Landroid/webkit/WebSettings$RenderPriority;->HIGH:Landroid/webkit/WebSettings$RenderPriority;

    .line 18
    .line 19
    invoke-virtual {v0, v2}, Landroid/webkit/WebSettings;->setRenderPriority(Landroid/webkit/WebSettings$RenderPriority;)V

    .line 20
    .line 21
    .line 22
    iget-object v0, p0, Lcom/join/mgps/customview/LJWebView;->b:Landroid/content/Context;

    .line 23
    .line 24
    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    .line 25
    .line 26
    .line 27
    move-result-object v0

    .line 28
    const-string v2, "cacheH5"

    .line 29
    .line 30
    const/4 v3, 0x0

    .line 31
    invoke-virtual {v0, v2, v3}, Landroid/content/Context;->getDir(Ljava/lang/String;I)Ljava/io/File;

    .line 32
    .line 33
    .line 34
    move-result-object v0

    .line 35
    invoke-virtual {v0}, Ljava/io/File;->getPath()Ljava/lang/String;

    .line 36
    .line 37
    .line 38
    move-result-object v0

    .line 39
    iput-object v0, p0, Lcom/join/mgps/customview/LJWebView;->j:Ljava/lang/String;

    .line 40
    .line 41
    iget-object v0, p0, Lcom/join/mgps/customview/LJWebView;->c:Landroid/webkit/WebView;

    .line 42
    .line 43
    invoke-virtual {v0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    .line 44
    .line 45
    .line 46
    move-result-object v0

    .line 47
    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setAllowFileAccess(Z)V

    .line 48
    .line 49
    .line 50
    iget-object v0, p0, Lcom/join/mgps/customview/LJWebView;->c:Landroid/webkit/WebView;

    .line 51
    .line 52
    invoke-virtual {v0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    .line 53
    .line 54
    .line 55
    move-result-object v0

    .line 56
    const/4 v2, -0x1

    .line 57
    invoke-virtual {v0, v2}, Landroid/webkit/WebSettings;->setCacheMode(I)V

    .line 58
    .line 59
    .line 60
    iget-object v0, p0, Lcom/join/mgps/customview/LJWebView;->c:Landroid/webkit/WebView;

    .line 61
    .line 62
    invoke-virtual {v0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    .line 63
    .line 64
    .line 65
    move-result-object v0

    .line 66
    sget-object v2, Landroid/webkit/WebSettings$PluginState;->ON:Landroid/webkit/WebSettings$PluginState;

    .line 67
    .line 68
    invoke-virtual {v0, v2}, Landroid/webkit/WebSettings;->setPluginState(Landroid/webkit/WebSettings$PluginState;)V

    .line 69
    .line 70
    .line 71
    iget-object v0, p0, Lcom/join/mgps/customview/LJWebView;->c:Landroid/webkit/WebView;

    .line 72
    .line 73
    invoke-virtual {v0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    .line 74
    .line 75
    .line 76
    move-result-object v0

    .line 77
    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setLoadWithOverviewMode(Z)V

    .line 78
    .line 79
    .line 80
    iget-object v0, p0, Lcom/join/mgps/customview/LJWebView;->c:Landroid/webkit/WebView;

    .line 81
    .line 82
    invoke-virtual {v0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    .line 83
    .line 84
    .line 85
    move-result-object v0

    .line 86
    sget-object v2, Landroid/webkit/WebSettings$LayoutAlgorithm;->NARROW_COLUMNS:Landroid/webkit/WebSettings$LayoutAlgorithm;

    .line 87
    .line 88
    invoke-virtual {v0, v2}, Landroid/webkit/WebSettings;->setLayoutAlgorithm(Landroid/webkit/WebSettings$LayoutAlgorithm;)V

    .line 89
    .line 90
    .line 91
    iget-object v0, p0, Lcom/join/mgps/customview/LJWebView;->c:Landroid/webkit/WebView;

    .line 92
    .line 93
    invoke-virtual {v0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    .line 94
    .line 95
    .line 96
    move-result-object v0

    .line 97
    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setJavaScriptCanOpenWindowsAutomatically(Z)V

    .line 98
    .line 99
    .line 100
    iget-object v0, p0, Lcom/join/mgps/customview/LJWebView;->c:Landroid/webkit/WebView;

    .line 101
    .line 102
    invoke-virtual {v0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    .line 103
    .line 104
    .line 105
    move-result-object v0

    .line 106
    const/16 v1, 0x64

    .line 107
    .line 108
    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setTextZoom(I)V

    .line 109
    .line 110
    .line 111
    iget-object v0, p0, Lcom/join/mgps/customview/LJWebView;->c:Landroid/webkit/WebView;

    .line 112
    .line 113
    invoke-static {v0}, Lcom/join/mgps/Util/UtilsMy;->T3(Landroid/webkit/WebView;)V

    .line 114
    .line 115
    .line 116
    iget-object v0, p0, Lcom/join/mgps/customview/LJWebView;->c:Landroid/webkit/WebView;

    .line 117
    .line 118
    invoke-virtual {v0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    .line 119
    .line 120
    .line 121
    move-result-object v0

    .line 122
    invoke-virtual {v0, v3}, Landroid/webkit/WebSettings;->setMediaPlaybackRequiresUserGesture(Z)V

    .line 123
    .line 124
    .line 125
    iget-object v0, p0, Lcom/join/mgps/customview/LJWebView;->c:Landroid/webkit/WebView;

    .line 126
    .line 127
    invoke-virtual {v0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    .line 128
    .line 129
    .line 130
    move-result-object v0

    .line 131
    invoke-virtual {v0, v3}, Landroid/webkit/WebSettings;->setMixedContentMode(I)V

    .line 132
    .line 133
    .line 134
    :try_start_0
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 135
    .line 136
    const/16 v1, 0x1b

    .line 137
    .line 138
    if-le v0, v1, :cond_0

    .line 139
    .line 140
    iget-object v0, p0, Lcom/join/mgps/customview/LJWebView;->c:Landroid/webkit/WebView;

    .line 141
    .line 142
    invoke-virtual {v0}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    .line 143
    .line 144
    .line 145
    move-result-object v0

    .line 146
    invoke-static {v0, v3}, Lcom/aggmoread/sdk/z/a/u/v;->a(Landroid/webkit/WebSettings;Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 147
    .line 148
    .line 149
    goto :goto_0

    .line 150
    :catch_0
    move-exception v0

    .line 151
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 152
    .line 153
    .line 154
    :cond_0
    :goto_0
    return-void
.end method

.method public v(Ljava/lang/String;)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "data"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/customview/LJWebView;->c:Landroid/webkit/WebView;

    .line 2
    .line 3
    const-string v1, "text/html"

    .line 4
    .line 5
    const-string v2, "utf-8"

    .line 6
    .line 7
    invoke-virtual {v0, p1, v1, v2}, Landroid/webkit/WebView;->loadData(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 8
    .line 9
    .line 10
    return-void
.end method

.method public w(Ljava/lang/String;)V
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
    new-instance v0, Ljava/util/HashMap;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 4
    .line 5
    .line 6
    const-string v1, "wf-v"

    .line 7
    .line 8
    const-string v2, "517_6.1.7.0"

    .line 9
    .line 10
    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 11
    .line 12
    .line 13
    iget-object v1, p0, Lcom/join/mgps/customview/LJWebView;->c:Landroid/webkit/WebView;

    .line 14
    .line 15
    invoke-virtual {v1, p1, v0}, Landroid/webkit/WebView;->loadUrl(Ljava/lang/String;Ljava/util/Map;)V

    .line 16
    .line 17
    .line 18
    return-void
.end method

.method public z(Landroid/os/Bundle;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "outState"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/customview/LJWebView;->c:Landroid/webkit/WebView;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Landroid/webkit/WebView;->saveState(Landroid/os/Bundle;)Landroid/webkit/WebBackForwardList;

    .line 4
    .line 5
    .line 6
    return-void
.end method
