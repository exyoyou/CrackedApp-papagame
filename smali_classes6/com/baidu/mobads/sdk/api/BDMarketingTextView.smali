.class public Lcom/baidu/mobads/sdk/api/BDMarketingTextView;
.super Landroid/widget/RelativeLayout;
.source "SourceFile"


# instance fields
.field private mAdView:Landroid/view/View;

.field private mContext:Landroid/content/Context;

.field private mLoader:Ljava/lang/ClassLoader;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    .line 2
    iput-object p1, p0, Lcom/baidu/mobads/sdk/api/BDMarketingTextView;->mContext:Landroid/content/Context;

    .line 3
    invoke-direct {p0, p1}, Lcom/baidu/mobads/sdk/api/BDMarketingTextView;->initView(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    .line 4
    invoke-direct {p0, p1, p2, v0}, Lcom/baidu/mobads/sdk/api/BDMarketingTextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 5
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 6
    invoke-direct {p0, p1}, Lcom/baidu/mobads/sdk/api/BDMarketingTextView;->initView(Landroid/content/Context;)V

    return-void
.end method

.method private initView(Landroid/content/Context;)V
    .locals 4

    .line 1
    :try_start_0
    iput-object p1, p0, Lcom/baidu/mobads/sdk/api/BDMarketingTextView;->mContext:Landroid/content/Context;

    .line 2
    .line 3
    const/4 v0, 0x1

    .line 4
    new-array v1, v0, [Ljava/lang/Class;

    .line 5
    .line 6
    const-class v2, Landroid/content/Context;

    .line 7
    .line 8
    const/4 v3, 0x0

    .line 9
    aput-object v2, v1, v3

    .line 10
    .line 11
    new-array v0, v0, [Ljava/lang/Object;

    .line 12
    .line 13
    aput-object p1, v0, v3

    .line 14
    .line 15
    invoke-static {p1}, Lcom/baidu/mobads/sdk/internal/bu;->a(Landroid/content/Context;)Ljava/lang/ClassLoader;

    .line 16
    .line 17
    .line 18
    move-result-object p1

    .line 19
    iput-object p1, p0, Lcom/baidu/mobads/sdk/api/BDMarketingTextView;->mLoader:Ljava/lang/ClassLoader;

    .line 20
    .line 21
    sget-object v2, Lcom/baidu/mobads/sdk/internal/z;->g:Ljava/lang/String;

    .line 22
    .line 23
    invoke-static {v2, p1, v1, v0}, Lcom/baidu/mobads/sdk/internal/av;->a(Ljava/lang/String;Ljava/lang/ClassLoader;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 24
    .line 25
    .line 26
    move-result-object p1

    .line 27
    check-cast p1, Landroid/view/View;

    .line 28
    .line 29
    iput-object p1, p0, Lcom/baidu/mobads/sdk/api/BDMarketingTextView;->mAdView:Landroid/view/View;

    .line 30
    .line 31
    if-eqz p1, :cond_0

    .line 32
    .line 33
    new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;

    .line 34
    .line 35
    const/4 v1, -0x2

    .line 36
    invoke-direct {v0, v1, v1}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    .line 37
    .line 38
    .line 39
    invoke-virtual {p0, p1, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 40
    .line 41
    .line 42
    goto :goto_0

    .line 43
    :catchall_0
    move-exception p1

    .line 44
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 45
    .line 46
    .line 47
    :cond_0
    :goto_0
    return-void
.end method


# virtual methods
.method public setAdData(Lcom/baidu/mobads/sdk/api/NativeResponse;Ljava/lang/String;)V
    .locals 9

    .line 1
    iget-object v1, p0, Lcom/baidu/mobads/sdk/api/BDMarketingTextView;->mAdView:Landroid/view/View;

    .line 2
    .line 3
    if-eqz v1, :cond_0

    .line 4
    .line 5
    sget-object v0, Lcom/baidu/mobads/sdk/internal/z;->g:Ljava/lang/String;

    .line 6
    .line 7
    iget-object v2, p0, Lcom/baidu/mobads/sdk/api/BDMarketingTextView;->mLoader:Ljava/lang/ClassLoader;

    .line 8
    .line 9
    const-string v3, "setAdData"

    .line 10
    .line 11
    const/4 v4, 0x2

    .line 12
    new-array v5, v4, [Ljava/lang/Class;

    .line 13
    .line 14
    const-class v6, Ljava/lang/Object;

    .line 15
    .line 16
    const/4 v7, 0x0

    .line 17
    aput-object v6, v5, v7

    .line 18
    .line 19
    const-class v6, Ljava/lang/String;

    .line 20
    .line 21
    const/4 v8, 0x1

    .line 22
    aput-object v6, v5, v8

    .line 23
    .line 24
    new-array v6, v4, [Ljava/lang/Object;

    .line 25
    .line 26
    aput-object p1, v6, v7

    .line 27
    .line 28
    aput-object p2, v6, v8

    .line 29
    .line 30
    move-object v4, v5

    .line 31
    move-object v5, v6

    .line 32
    invoke-static/range {v0 .. v5}, Lcom/baidu/mobads/sdk/internal/av;->a(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/ClassLoader;Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 33
    .line 34
    .line 35
    :cond_0
    return-void
.end method

.method public setEllipsize(Landroid/text/TextUtils$TruncateAt;)V
    .locals 8

    .line 1
    iget-object v1, p0, Lcom/baidu/mobads/sdk/api/BDMarketingTextView;->mAdView:Landroid/view/View;

    .line 2
    .line 3
    if-eqz v1, :cond_0

    .line 4
    .line 5
    sget-object v0, Lcom/baidu/mobads/sdk/internal/z;->g:Ljava/lang/String;

    .line 6
    .line 7
    iget-object v2, p0, Lcom/baidu/mobads/sdk/api/BDMarketingTextView;->mLoader:Ljava/lang/ClassLoader;

    .line 8
    .line 9
    const-string v3, "setEllipsize"

    .line 10
    .line 11
    const/4 v4, 0x1

    .line 12
    new-array v5, v4, [Ljava/lang/Class;

    .line 13
    .line 14
    const-class v6, Landroid/text/TextUtils$TruncateAt;

    .line 15
    .line 16
    const/4 v7, 0x0

    .line 17
    aput-object v6, v5, v7

    .line 18
    .line 19
    new-array v6, v4, [Ljava/lang/Object;

    .line 20
    .line 21
    aput-object p1, v6, v7

    .line 22
    .line 23
    move-object v4, v5

    .line 24
    move-object v5, v6

    .line 25
    invoke-static/range {v0 .. v5}, Lcom/baidu/mobads/sdk/internal/av;->a(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/ClassLoader;Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 26
    .line 27
    .line 28
    :cond_0
    return-void
.end method

.method public setLabelFontSizeSp(I)V
    .locals 8

    .line 1
    iget-object v1, p0, Lcom/baidu/mobads/sdk/api/BDMarketingTextView;->mAdView:Landroid/view/View;

    .line 2
    .line 3
    if-eqz v1, :cond_0

    .line 4
    .line 5
    sget-object v0, Lcom/baidu/mobads/sdk/internal/z;->g:Ljava/lang/String;

    .line 6
    .line 7
    iget-object v2, p0, Lcom/baidu/mobads/sdk/api/BDMarketingTextView;->mLoader:Ljava/lang/ClassLoader;

    .line 8
    .line 9
    const-string v3, "setLabelFontSizeSp"

    .line 10
    .line 11
    const/4 v4, 0x1

    .line 12
    new-array v5, v4, [Ljava/lang/Class;

    .line 13
    .line 14
    sget-object v6, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    .line 15
    .line 16
    const/4 v7, 0x0

    .line 17
    aput-object v6, v5, v7

    .line 18
    .line 19
    new-array v6, v4, [Ljava/lang/Object;

    .line 20
    .line 21
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 22
    .line 23
    .line 24
    move-result-object p1

    .line 25
    aput-object p1, v6, v7

    .line 26
    .line 27
    move-object v4, v5

    .line 28
    move-object v5, v6

    .line 29
    invoke-static/range {v0 .. v5}, Lcom/baidu/mobads/sdk/internal/av;->a(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/ClassLoader;Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 30
    .line 31
    .line 32
    :cond_0
    return-void
.end method

.method public setLabelFontTypeFace(Landroid/graphics/Typeface;)V
    .locals 8

    .line 1
    iget-object v1, p0, Lcom/baidu/mobads/sdk/api/BDMarketingTextView;->mAdView:Landroid/view/View;

    .line 2
    .line 3
    if-eqz v1, :cond_0

    .line 4
    .line 5
    sget-object v0, Lcom/baidu/mobads/sdk/internal/z;->g:Ljava/lang/String;

    .line 6
    .line 7
    iget-object v2, p0, Lcom/baidu/mobads/sdk/api/BDMarketingTextView;->mLoader:Ljava/lang/ClassLoader;

    .line 8
    .line 9
    const-string v3, "setLabelFontTypeFace"

    .line 10
    .line 11
    const/4 v4, 0x1

    .line 12
    new-array v5, v4, [Ljava/lang/Class;

    .line 13
    .line 14
    const-class v6, Landroid/graphics/Typeface;

    .line 15
    .line 16
    const/4 v7, 0x0

    .line 17
    aput-object v6, v5, v7

    .line 18
    .line 19
    new-array v6, v4, [Ljava/lang/Object;

    .line 20
    .line 21
    aput-object p1, v6, v7

    .line 22
    .line 23
    move-object v4, v5

    .line 24
    move-object v5, v6

    .line 25
    invoke-static/range {v0 .. v5}, Lcom/baidu/mobads/sdk/internal/av;->a(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/ClassLoader;Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 26
    .line 27
    .line 28
    :cond_0
    return-void
.end method

.method public setLabelVisibility(I)V
    .locals 8

    .line 1
    iget-object v1, p0, Lcom/baidu/mobads/sdk/api/BDMarketingTextView;->mAdView:Landroid/view/View;

    .line 2
    .line 3
    if-eqz v1, :cond_0

    .line 4
    .line 5
    sget-object v0, Lcom/baidu/mobads/sdk/internal/z;->g:Ljava/lang/String;

    .line 6
    .line 7
    iget-object v2, p0, Lcom/baidu/mobads/sdk/api/BDMarketingTextView;->mLoader:Ljava/lang/ClassLoader;

    .line 8
    .line 9
    const-string v3, "setLabelVisibility"

    .line 10
    .line 11
    const/4 v4, 0x1

    .line 12
    new-array v5, v4, [Ljava/lang/Class;

    .line 13
    .line 14
    sget-object v6, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    .line 15
    .line 16
    const/4 v7, 0x0

    .line 17
    aput-object v6, v5, v7

    .line 18
    .line 19
    new-array v6, v4, [Ljava/lang/Object;

    .line 20
    .line 21
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 22
    .line 23
    .line 24
    move-result-object p1

    .line 25
    aput-object p1, v6, v7

    .line 26
    .line 27
    move-object v4, v5

    .line 28
    move-object v5, v6

    .line 29
    invoke-static/range {v0 .. v5}, Lcom/baidu/mobads/sdk/internal/av;->a(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/ClassLoader;Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 30
    .line 31
    .line 32
    :cond_0
    return-void
.end method

.method public setLineSpacingExtra(I)V
    .locals 8

    .line 1
    iget-object v1, p0, Lcom/baidu/mobads/sdk/api/BDMarketingTextView;->mAdView:Landroid/view/View;

    .line 2
    .line 3
    if-eqz v1, :cond_0

    .line 4
    .line 5
    sget-object v0, Lcom/baidu/mobads/sdk/internal/z;->g:Ljava/lang/String;

    .line 6
    .line 7
    iget-object v2, p0, Lcom/baidu/mobads/sdk/api/BDMarketingTextView;->mLoader:Ljava/lang/ClassLoader;

    .line 8
    .line 9
    const-string v3, "setLineSpacingExtra"

    .line 10
    .line 11
    const/4 v4, 0x1

    .line 12
    new-array v5, v4, [Ljava/lang/Class;

    .line 13
    .line 14
    sget-object v6, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    .line 15
    .line 16
    const/4 v7, 0x0

    .line 17
    aput-object v6, v5, v7

    .line 18
    .line 19
    new-array v6, v4, [Ljava/lang/Object;

    .line 20
    .line 21
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 22
    .line 23
    .line 24
    move-result-object p1

    .line 25
    aput-object p1, v6, v7

    .line 26
    .line 27
    move-object v4, v5

    .line 28
    move-object v5, v6

    .line 29
    invoke-static/range {v0 .. v5}, Lcom/baidu/mobads/sdk/internal/av;->a(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/ClassLoader;Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 30
    .line 31
    .line 32
    :cond_0
    return-void
.end method

.method public setTextFontColor(I)V
    .locals 8

    .line 1
    iget-object v1, p0, Lcom/baidu/mobads/sdk/api/BDMarketingTextView;->mAdView:Landroid/view/View;

    .line 2
    .line 3
    if-eqz v1, :cond_0

    .line 4
    .line 5
    sget-object v0, Lcom/baidu/mobads/sdk/internal/z;->g:Ljava/lang/String;

    .line 6
    .line 7
    iget-object v2, p0, Lcom/baidu/mobads/sdk/api/BDMarketingTextView;->mLoader:Ljava/lang/ClassLoader;

    .line 8
    .line 9
    const-string v3, "setTextFontColor"

    .line 10
    .line 11
    const/4 v4, 0x1

    .line 12
    new-array v5, v4, [Ljava/lang/Class;

    .line 13
    .line 14
    sget-object v6, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    .line 15
    .line 16
    const/4 v7, 0x0

    .line 17
    aput-object v6, v5, v7

    .line 18
    .line 19
    new-array v6, v4, [Ljava/lang/Object;

    .line 20
    .line 21
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 22
    .line 23
    .line 24
    move-result-object p1

    .line 25
    aput-object p1, v6, v7

    .line 26
    .line 27
    move-object v4, v5

    .line 28
    move-object v5, v6

    .line 29
    invoke-static/range {v0 .. v5}, Lcom/baidu/mobads/sdk/internal/av;->a(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/ClassLoader;Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 30
    .line 31
    .line 32
    :cond_0
    return-void
.end method

.method public setTextFontSizeSp(I)V
    .locals 8

    .line 1
    iget-object v1, p0, Lcom/baidu/mobads/sdk/api/BDMarketingTextView;->mAdView:Landroid/view/View;

    .line 2
    .line 3
    if-eqz v1, :cond_0

    .line 4
    .line 5
    sget-object v0, Lcom/baidu/mobads/sdk/internal/z;->g:Ljava/lang/String;

    .line 6
    .line 7
    iget-object v2, p0, Lcom/baidu/mobads/sdk/api/BDMarketingTextView;->mLoader:Ljava/lang/ClassLoader;

    .line 8
    .line 9
    const-string v3, "setTextFontSizeSp"

    .line 10
    .line 11
    const/4 v4, 0x1

    .line 12
    new-array v5, v4, [Ljava/lang/Class;

    .line 13
    .line 14
    sget-object v6, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    .line 15
    .line 16
    const/4 v7, 0x0

    .line 17
    aput-object v6, v5, v7

    .line 18
    .line 19
    new-array v6, v4, [Ljava/lang/Object;

    .line 20
    .line 21
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 22
    .line 23
    .line 24
    move-result-object p1

    .line 25
    aput-object p1, v6, v7

    .line 26
    .line 27
    move-object v4, v5

    .line 28
    move-object v5, v6

    .line 29
    invoke-static/range {v0 .. v5}, Lcom/baidu/mobads/sdk/internal/av;->a(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/ClassLoader;Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 30
    .line 31
    .line 32
    :cond_0
    return-void
.end method

.method public setTextFontTypeFace(Landroid/graphics/Typeface;)V
    .locals 8

    .line 1
    iget-object v1, p0, Lcom/baidu/mobads/sdk/api/BDMarketingTextView;->mAdView:Landroid/view/View;

    .line 2
    .line 3
    if-eqz v1, :cond_0

    .line 4
    .line 5
    sget-object v0, Lcom/baidu/mobads/sdk/internal/z;->g:Ljava/lang/String;

    .line 6
    .line 7
    iget-object v2, p0, Lcom/baidu/mobads/sdk/api/BDMarketingTextView;->mLoader:Ljava/lang/ClassLoader;

    .line 8
    .line 9
    const-string v3, "setTextFontTypeFace"

    .line 10
    .line 11
    const/4 v4, 0x1

    .line 12
    new-array v5, v4, [Ljava/lang/Class;

    .line 13
    .line 14
    const-class v6, Landroid/graphics/Typeface;

    .line 15
    .line 16
    const/4 v7, 0x0

    .line 17
    aput-object v6, v5, v7

    .line 18
    .line 19
    new-array v6, v4, [Ljava/lang/Object;

    .line 20
    .line 21
    aput-object p1, v6, v7

    .line 22
    .line 23
    move-object v4, v5

    .line 24
    move-object v5, v6

    .line 25
    invoke-static/range {v0 .. v5}, Lcom/baidu/mobads/sdk/internal/av;->a(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/ClassLoader;Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 26
    .line 27
    .line 28
    :cond_0
    return-void
.end method

.method public setTextMaxLines(I)V
    .locals 8

    .line 1
    iget-object v1, p0, Lcom/baidu/mobads/sdk/api/BDMarketingTextView;->mAdView:Landroid/view/View;

    .line 2
    .line 3
    if-eqz v1, :cond_0

    .line 4
    .line 5
    sget-object v0, Lcom/baidu/mobads/sdk/internal/z;->g:Ljava/lang/String;

    .line 6
    .line 7
    iget-object v2, p0, Lcom/baidu/mobads/sdk/api/BDMarketingTextView;->mLoader:Ljava/lang/ClassLoader;

    .line 8
    .line 9
    const-string v3, "setTextMaxLines"

    .line 10
    .line 11
    const/4 v4, 0x1

    .line 12
    new-array v5, v4, [Ljava/lang/Class;

    .line 13
    .line 14
    sget-object v6, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    .line 15
    .line 16
    const/4 v7, 0x0

    .line 17
    aput-object v6, v5, v7

    .line 18
    .line 19
    new-array v6, v4, [Ljava/lang/Object;

    .line 20
    .line 21
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 22
    .line 23
    .line 24
    move-result-object p1

    .line 25
    aput-object p1, v6, v7

    .line 26
    .line 27
    move-object v4, v5

    .line 28
    move-object v5, v6

    .line 29
    invoke-static/range {v0 .. v5}, Lcom/baidu/mobads/sdk/internal/av;->a(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/ClassLoader;Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 30
    .line 31
    .line 32
    :cond_0
    return-void
.end method
