.class final Lcom/aggmoread/sdk/z/a/i/g$a;
.super Landroid/graphics/drawable/Animatable2$AnimationCallback;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/aggmoread/sdk/z/a/i/g;->a(Landroid/content/Context;Ljava/lang/String;Landroid/widget/ImageView$ScaleType;I)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/widget/ImageView;

.field final synthetic b:Landroid/graphics/drawable/AnimatedImageDrawable;


# direct methods
.method constructor <init>(Landroid/widget/ImageView;Landroid/graphics/drawable/AnimatedImageDrawable;)V
    .locals 0

    iput-object p1, p0, Lcom/aggmoread/sdk/z/a/i/g$a;->a:Landroid/widget/ImageView;

    iput-object p2, p0, Lcom/aggmoread/sdk/z/a/i/g$a;->b:Landroid/graphics/drawable/AnimatedImageDrawable;

    invoke-direct {p0}, Landroid/graphics/drawable/Animatable2$AnimationCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/graphics/drawable/Drawable;)V
    .locals 1

    invoke-super {p0, p1}, Landroid/graphics/drawable/Animatable2$AnimationCallback;->onAnimationEnd(Landroid/graphics/drawable/Drawable;)V

    iget-object p1, p0, Lcom/aggmoread/sdk/z/a/i/g$a;->a:Landroid/widget/ImageView;

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object p1, p0, Lcom/aggmoread/sdk/z/a/i/g$a;->b:Landroid/graphics/drawable/AnimatedImageDrawable;

    invoke-static {p1, p0}, Lcom/aggmoread/sdk/z/a/i/p;->a(Landroid/graphics/drawable/AnimatedImageDrawable;Landroid/graphics/drawable/Animatable2$AnimationCallback;)Z

    return-void
.end method
