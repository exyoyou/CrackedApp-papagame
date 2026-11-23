.class public Lcom/papa91/arc/widget/htmltext/HtmlHttpImageGetter;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/text/Html$ImageGetter;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/papa91/arc/widget/htmltext/HtmlHttpImageGetter$UrlDrawable;,
        Lcom/papa91/arc/widget/htmltext/HtmlHttpImageGetter$ImageGetterAsyncTask;
    }
.end annotation


# instance fields
.field private baseUri:Ljava/net/URI;

.field private compressImage:Z

.field private container:Landroid/widget/TextView;

.field private matchParentWidth:Z

.field private placeHolder:I

.field private qualityImage:I


# direct methods
.method public constructor <init>(Landroid/widget/TextView;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, Lcom/papa91/arc/widget/htmltext/HtmlHttpImageGetter;->compressImage:Z

    const/16 v0, 0x32

    .line 3
    iput v0, p0, Lcom/papa91/arc/widget/htmltext/HtmlHttpImageGetter;->qualityImage:I

    .line 4
    iput-object p1, p0, Lcom/papa91/arc/widget/htmltext/HtmlHttpImageGetter;->container:Landroid/widget/TextView;

    const/4 p1, 0x1

    .line 5
    iput-boolean p1, p0, Lcom/papa91/arc/widget/htmltext/HtmlHttpImageGetter;->matchParentWidth:Z

    return-void
.end method

.method public constructor <init>(Landroid/widget/TextView;Ljava/lang/String;)V
    .locals 1

    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 7
    iput-boolean v0, p0, Lcom/papa91/arc/widget/htmltext/HtmlHttpImageGetter;->compressImage:Z

    const/16 v0, 0x32

    .line 8
    iput v0, p0, Lcom/papa91/arc/widget/htmltext/HtmlHttpImageGetter;->qualityImage:I

    .line 9
    iput-object p1, p0, Lcom/papa91/arc/widget/htmltext/HtmlHttpImageGetter;->container:Landroid/widget/TextView;

    if-eqz p2, :cond_0

    .line 10
    invoke-static {p2}, Ljava/net/URI;->create(Ljava/lang/String;)Ljava/net/URI;

    move-result-object p1

    iput-object p1, p0, Lcom/papa91/arc/widget/htmltext/HtmlHttpImageGetter;->baseUri:Ljava/net/URI;

    :cond_0
    return-void
.end method

.method public constructor <init>(Landroid/widget/TextView;Ljava/lang/String;IZ)V
    .locals 1

    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 13
    iput-boolean v0, p0, Lcom/papa91/arc/widget/htmltext/HtmlHttpImageGetter;->compressImage:Z

    const/16 v0, 0x32

    .line 14
    iput v0, p0, Lcom/papa91/arc/widget/htmltext/HtmlHttpImageGetter;->qualityImage:I

    .line 15
    iput-object p1, p0, Lcom/papa91/arc/widget/htmltext/HtmlHttpImageGetter;->container:Landroid/widget/TextView;

    .line 16
    iput p3, p0, Lcom/papa91/arc/widget/htmltext/HtmlHttpImageGetter;->placeHolder:I

    .line 17
    iput-boolean p4, p0, Lcom/papa91/arc/widget/htmltext/HtmlHttpImageGetter;->matchParentWidth:Z

    if-eqz p2, :cond_0

    .line 18
    invoke-static {p2}, Ljava/net/URI;->create(Ljava/lang/String;)Ljava/net/URI;

    move-result-object p1

    iput-object p1, p0, Lcom/papa91/arc/widget/htmltext/HtmlHttpImageGetter;->baseUri:Ljava/net/URI;

    :cond_0
    return-void
.end method

.method public constructor <init>(Landroid/widget/TextView;Ljava/lang/String;Z)V
    .locals 1

    const/4 v0, 0x0

    .line 11
    invoke-direct {p0, p1, p2, v0, p3}, Lcom/papa91/arc/widget/htmltext/HtmlHttpImageGetter;-><init>(Landroid/widget/TextView;Ljava/lang/String;IZ)V

    return-void
.end method

.method static synthetic access$000(Lcom/papa91/arc/widget/htmltext/HtmlHttpImageGetter;)Landroid/widget/TextView;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/papa91/arc/widget/htmltext/HtmlHttpImageGetter;->container:Landroid/widget/TextView;

    .line 2
    .line 3
    return-object p0
.end method

.method static synthetic access$100(Lcom/papa91/arc/widget/htmltext/HtmlHttpImageGetter;)Ljava/net/URI;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/papa91/arc/widget/htmltext/HtmlHttpImageGetter;->baseUri:Ljava/net/URI;

    .line 2
    .line 3
    return-object p0
.end method


# virtual methods
.method public enableCompressImage(Z)V
    .locals 1

    const/16 v0, 0x32

    .line 1
    invoke-virtual {p0, p1, v0}, Lcom/papa91/arc/widget/htmltext/HtmlHttpImageGetter;->enableCompressImage(ZI)V

    return-void
.end method

.method public enableCompressImage(ZI)V
    .locals 0

    .line 2
    iput-boolean p1, p0, Lcom/papa91/arc/widget/htmltext/HtmlHttpImageGetter;->compressImage:Z

    .line 3
    iput p2, p0, Lcom/papa91/arc/widget/htmltext/HtmlHttpImageGetter;->qualityImage:I

    return-void
.end method

.method public getDrawable(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;
    .locals 9

    .line 1
    new-instance v7, Lcom/papa91/arc/widget/htmltext/HtmlHttpImageGetter$UrlDrawable;

    .line 2
    .line 3
    invoke-direct {v7, p0}, Lcom/papa91/arc/widget/htmltext/HtmlHttpImageGetter$UrlDrawable;-><init>(Lcom/papa91/arc/widget/htmltext/HtmlHttpImageGetter;)V

    .line 4
    .line 5
    .line 6
    iget v0, p0, Lcom/papa91/arc/widget/htmltext/HtmlHttpImageGetter;->placeHolder:I

    .line 7
    .line 8
    if-eqz v0, :cond_0

    .line 9
    .line 10
    iget-object v0, p0, Lcom/papa91/arc/widget/htmltext/HtmlHttpImageGetter;->container:Landroid/widget/TextView;

    .line 11
    .line 12
    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 13
    .line 14
    .line 15
    move-result-object v0

    .line 16
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 17
    .line 18
    .line 19
    move-result-object v0

    .line 20
    iget v1, p0, Lcom/papa91/arc/widget/htmltext/HtmlHttpImageGetter;->placeHolder:I

    .line 21
    .line 22
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    .line 23
    .line 24
    .line 25
    move-result-object v0

    .line 26
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    .line 27
    .line 28
    .line 29
    move-result v1

    .line 30
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    .line 31
    .line 32
    .line 33
    move-result v2

    .line 34
    const/4 v3, 0x0

    .line 35
    invoke-virtual {v0, v3, v3, v1, v2}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 36
    .line 37
    .line 38
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    .line 39
    .line 40
    .line 41
    move-result v1

    .line 42
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    .line 43
    .line 44
    .line 45
    move-result v2

    .line 46
    invoke-virtual {v7, v3, v3, v1, v2}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 47
    .line 48
    .line 49
    iput-object v0, v7, Lcom/papa91/arc/widget/htmltext/HtmlHttpImageGetter$UrlDrawable;->drawable:Landroid/graphics/drawable/Drawable;

    .line 50
    .line 51
    :cond_0
    new-instance v8, Lcom/papa91/arc/widget/htmltext/HtmlHttpImageGetter$ImageGetterAsyncTask;

    .line 52
    .line 53
    iget-object v3, p0, Lcom/papa91/arc/widget/htmltext/HtmlHttpImageGetter;->container:Landroid/widget/TextView;

    .line 54
    .line 55
    iget-boolean v4, p0, Lcom/papa91/arc/widget/htmltext/HtmlHttpImageGetter;->matchParentWidth:Z

    .line 56
    .line 57
    iget-boolean v5, p0, Lcom/papa91/arc/widget/htmltext/HtmlHttpImageGetter;->compressImage:Z

    .line 58
    .line 59
    iget v6, p0, Lcom/papa91/arc/widget/htmltext/HtmlHttpImageGetter;->qualityImage:I

    .line 60
    .line 61
    move-object v0, v8

    .line 62
    move-object v1, v7

    .line 63
    move-object v2, p0

    .line 64
    invoke-direct/range {v0 .. v6}, Lcom/papa91/arc/widget/htmltext/HtmlHttpImageGetter$ImageGetterAsyncTask;-><init>(Lcom/papa91/arc/widget/htmltext/HtmlHttpImageGetter$UrlDrawable;Lcom/papa91/arc/widget/htmltext/HtmlHttpImageGetter;Landroid/view/View;ZZI)V

    .line 65
    .line 66
    .line 67
    filled-new-array {p1}, [Ljava/lang/String;

    .line 68
    .line 69
    .line 70
    move-result-object p1

    .line 71
    invoke-virtual {v8, p1}, Landroid/os/AsyncTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 72
    .line 73
    .line 74
    return-object v7
.end method
