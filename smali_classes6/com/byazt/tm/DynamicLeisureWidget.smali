.class public Lcom/byazt/tm/DynamicLeisureWidget;
.super Lcom/byazt/tm/DynamicBaseWidgetImp;
.source "SourceFile"


# annotations
.annotation runtime Lcom/byazt/zqa/c;
    c = {
        0x0,
        0x1,
        0x30,
        0x1dc
    }
.end annotation


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
.method public getWidgetLayoutParams()Landroid/widget/FrameLayout$LayoutParams;
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    iput v0, p0, Lcom/byazt/tm/DynamicBaseWidget;->sp:I

    .line 3
    .line 4
    iput v0, p0, Lcom/byazt/tm/DynamicBaseWidget;->x:I

    .line 5
    .line 6
    invoke-super {p0}, Lcom/byazt/tm/DynamicBaseWidgetImp;->getWidgetLayoutParams()Landroid/widget/FrameLayout$LayoutParams;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    return-object v0
.end method
