.class public Lcom/byazt/cc/SplashClickBarArrow$c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/animation/Interpolator;


# annotations
.annotation runtime Lcom/byazt/zqa/c;
    c = {
        0x0,
        0x1,
        0x1c0,
        0x6ad
    }
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/byazt/cc/SplashClickBarArrow;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "c"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/byazt/cc/SplashClickBarArrow$1;)V
    .locals 0

    .line 2
    invoke-direct {p0}, Lcom/byazt/cc/SplashClickBarArrow$c;-><init>()V

    return-void
.end method


# virtual methods
.method public getInterpolation(F)F
    .locals 1

    const v0, 0x3ec28f5c    # 0.38f

    cmpg-float v0, p1, v0

    if-gtz v0, :cond_0

    const v0, 0x40286bca

    mul-float p1, p1, v0

    return p1

    :cond_0
    const v0, -0x40318c63

    mul-float p1, p1, v0

    const v0, 0x3fce739d

    add-float/2addr p1, v0

    return p1
.end method
