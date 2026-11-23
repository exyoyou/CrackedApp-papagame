.class public final synthetic Lcom/windmill/sdk/widget/g;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# instance fields
.field public final synthetic b:Lcom/windmill/sdk/widget/TbLightingAnimationView;

.field public final synthetic c:F

.field public final synthetic d:F


# direct methods
.method public synthetic constructor <init>(Lcom/windmill/sdk/widget/TbLightingAnimationView;FF)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/windmill/sdk/widget/g;->b:Lcom/windmill/sdk/widget/TbLightingAnimationView;

    iput p2, p0, Lcom/windmill/sdk/widget/g;->c:F

    iput p3, p0, Lcom/windmill/sdk/widget/g;->d:F

    return-void
.end method


# virtual methods
.method public final onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/windmill/sdk/widget/g;->b:Lcom/windmill/sdk/widget/TbLightingAnimationView;

    iget v1, p0, Lcom/windmill/sdk/widget/g;->c:F

    iget v2, p0, Lcom/windmill/sdk/widget/g;->d:F

    invoke-static {v0, v1, v2, p1}, Lcom/windmill/sdk/widget/TbLightingAnimationView;->a(Lcom/windmill/sdk/widget/TbLightingAnimationView;FFLandroid/animation/ValueAnimator;)V

    return-void
.end method
