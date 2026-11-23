.class public Lcom/aggmoread/sdk/z/a/i/g;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static a(Landroid/content/Context;Ljava/lang/String;)Landroid/view/View;
    .locals 1

    .line 1
    sget-object v0, Landroid/widget/ImageView$ScaleType;->CENTER_INSIDE:Landroid/widget/ImageView$ScaleType;

    invoke-static {p0, p1, v0}, Lcom/aggmoread/sdk/z/a/i/g;->a(Landroid/content/Context;Ljava/lang/String;Landroid/widget/ImageView$ScaleType;)Landroid/view/View;

    move-result-object p0

    return-object p0
.end method

.method public static a(Landroid/content/Context;Ljava/lang/String;Landroid/widget/ImageView$ScaleType;)Landroid/view/View;
    .locals 1

    .line 2
    const/4 v0, -0x2

    invoke-static {p0, p1, p2, v0}, Lcom/aggmoread/sdk/z/a/i/g;->a(Landroid/content/Context;Ljava/lang/String;Landroid/widget/ImageView$ScaleType;I)Landroid/view/View;

    move-result-object p0

    return-object p0
.end method

.method public static a(Landroid/content/Context;Ljava/lang/String;Landroid/widget/ImageView$ScaleType;I)Landroid/view/View;
    .locals 3

    .line 3
    invoke-static {}, Lcom/aggmoread/sdk/z/a/i/a;->a()Lcom/aggmoread/sdk/z/a/i/a;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/aggmoread/sdk/z/a/i/a;->b(Landroid/content/Context;Ljava/lang/String;)Ljava/io/File;

    move-result-object p1

    const/4 v0, 0x0

    if-eqz p1, :cond_4

    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x1c

    if-lt v1, v2, :cond_3

    :try_start_0
    new-instance v1, Landroid/widget/ImageView;

    invoke-direct {v1, p0}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    invoke-virtual {v1, p2}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    invoke-static {p1}, Lcom/aggmoread/sdk/z/a/i/i;->a(Ljava/io/File;)Landroid/graphics/ImageDecoder$Source;

    move-result-object p0

    invoke-static {p0}, Lcom/aggmoread/sdk/z/a/i/j;->a(Landroid/graphics/ImageDecoder$Source;)Landroid/graphics/drawable/Drawable;

    move-result-object p0

    invoke-virtual {v1, p0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    invoke-static {p0}, Lcom/aggmoread/sdk/z/a/i/k;->a(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    invoke-static {p0}, Lcom/aggmoread/sdk/z/a/i/l;->a(Ljava/lang/Object;)Landroid/graphics/drawable/AnimatedImageDrawable;

    move-result-object p0

    const/4 p1, -0x1

    if-lt p3, p1, :cond_1

    invoke-static {p0, p3}, Lcom/aggmoread/sdk/z/a/i/m;->a(Landroid/graphics/drawable/AnimatedImageDrawable;I)V

    new-instance p1, Lcom/aggmoread/sdk/z/a/i/g$a;

    invoke-direct {p1, v1, p0}, Lcom/aggmoread/sdk/z/a/i/g$a;-><init>(Landroid/widget/ImageView;Landroid/graphics/drawable/AnimatedImageDrawable;)V

    invoke-static {p0, p1}, Lcom/aggmoread/sdk/z/a/i/n;->a(Landroid/graphics/drawable/AnimatedImageDrawable;Landroid/graphics/drawable/Animatable2$AnimationCallback;)V

    :cond_1
    invoke-static {p0}, Lcom/aggmoread/sdk/z/a/i/o;->a(Landroid/graphics/drawable/AnimatedImageDrawable;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    :catch_0
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_2
    return-object v0

    :cond_3
    new-instance p3, Lcom/aggmoread/sdk/z/a/u/j;

    invoke-direct {p3, p0}, Lcom/aggmoread/sdk/z/a/u/j;-><init>(Landroid/content/Context;)V

    invoke-virtual {p3, p2}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    invoke-virtual {p3, p1}, Lcom/aggmoread/sdk/z/a/u/j;->a(Ljava/io/File;)V

    return-object p3

    :cond_4
    :goto_0
    return-object v0
.end method
