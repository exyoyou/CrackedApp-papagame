.class public Lcom/byazt/tm/DynamicRoot;
.super Lcom/byazt/tm/DynamicBaseWidgetImp;
.source "SourceFile"


# annotations
.annotation runtime Lcom/byazt/zqa/c;
    c = {
        0x0,
        0x1,
        0x30,
        0x892
    }
.end annotation


# instance fields
.field public c:Lcom/byazt/tm/tt;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/byazt/tm/DynamicRootView;Lcom/byazt/aq/x;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2, p3}, Lcom/byazt/tm/DynamicBaseWidgetImp;-><init>(Landroid/content/Context;Lcom/byazt/tm/DynamicRootView;Lcom/byazt/aq/x;)V

    .line 2
    .line 3
    .line 4
    return-void
.end method


# virtual methods
.method public c(Landroid/graphics/drawable/GradientDrawable$Orientation;[I)Landroid/graphics/drawable/GradientDrawable;
    .locals 1
    .param p2    # [I
        .annotation build Lcom/bytedance/component/sdk/annotation/ColorInt;
        .end annotation
    .end param

    .line 2
    new-instance v0, Lcom/byazt/tm/tt;

    invoke-direct {v0, p1, p2}, Lcom/byazt/tm/tt;-><init>(Landroid/graphics/drawable/GradientDrawable$Orientation;[I)V

    iput-object v0, p0, Lcom/byazt/tm/DynamicRoot;->c:Lcom/byazt/tm/tt;

    return-object v0
.end method

.method public c(Landroid/graphics/Bitmap;)Lcom/byazt/tm/tt;
    .locals 2

    .line 1
    new-instance v0, Lcom/byazt/tm/c;

    iget-object v1, p0, Lcom/byazt/tm/DynamicRoot;->c:Lcom/byazt/tm/tt;

    invoke-direct {v0, p1, v1}, Lcom/byazt/tm/c;-><init>(Landroid/graphics/Bitmap;Lcom/byazt/tm/tt;)V

    iput-object v0, p0, Lcom/byazt/tm/DynamicRoot;->c:Lcom/byazt/tm/tt;

    return-object v0
.end method

.method public getDrawable()Landroid/graphics/drawable/GradientDrawable;
    .locals 1

    .line 1
    new-instance v0, Lcom/byazt/tm/tt;

    .line 2
    .line 3
    invoke-direct {v0}, Lcom/byazt/tm/tt;-><init>()V

    .line 4
    .line 5
    .line 6
    iput-object v0, p0, Lcom/byazt/tm/DynamicRoot;->c:Lcom/byazt/tm/tt;

    .line 7
    .line 8
    return-object v0
.end method

.method public x()Z
    .locals 1

    .line 1
    invoke-super {p0}, Lcom/byazt/tm/DynamicBaseWidgetImp;->x()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    return v0
.end method
