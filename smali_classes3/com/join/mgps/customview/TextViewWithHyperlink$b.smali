.class public Lcom/join/mgps/customview/TextViewWithHyperlink$b;
.super Landroid/text/style/ClickableSpan;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/join/mgps/customview/TextViewWithHyperlink;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "b"
.end annotation


# instance fields
.field b:Landroid/content/Context;

.field c:Lcom/join/mgps/customview/TextViewWithHyperlink$a;

.field final synthetic d:Lcom/join/mgps/customview/TextViewWithHyperlink;


# direct methods
.method public constructor <init>(Lcom/join/mgps/customview/TextViewWithHyperlink;Landroid/content/Context;Lcom/join/mgps/customview/TextViewWithHyperlink$a;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x0,
            0x0
        }
        names = {
            "this$0",
            "context",
            "clickOther"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/join/mgps/customview/TextViewWithHyperlink$b;->d:Lcom/join/mgps/customview/TextViewWithHyperlink;

    .line 2
    .line 3
    invoke-direct {p0}, Landroid/text/style/ClickableSpan;-><init>()V

    .line 4
    .line 5
    .line 6
    iput-object p3, p0, Lcom/join/mgps/customview/TextViewWithHyperlink$b;->c:Lcom/join/mgps/customview/TextViewWithHyperlink$a;

    .line 7
    .line 8
    iput-object p2, p0, Lcom/join/mgps/customview/TextViewWithHyperlink$b;->b:Landroid/content/Context;

    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "widget"
        }
    .end annotation

    .line 1
    iget-object p1, p0, Lcom/join/mgps/customview/TextViewWithHyperlink$b;->c:Lcom/join/mgps/customview/TextViewWithHyperlink$a;

    .line 2
    .line 3
    invoke-interface {p1}, Lcom/join/mgps/customview/TextViewWithHyperlink$a;->a()V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public updateDrawState(Landroid/text/TextPaint;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "ds"
        }
    .end annotation

    .line 1
    const v0, -0xd3d3d4

    .line 2
    .line 3
    .line 4
    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setColor(I)V

    .line 5
    .line 6
    .line 7
    return-void
.end method
