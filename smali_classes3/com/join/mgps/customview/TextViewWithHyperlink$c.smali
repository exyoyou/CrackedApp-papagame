.class public Lcom/join/mgps/customview/TextViewWithHyperlink$c;
.super Landroid/text/style/ClickableSpan;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/join/mgps/customview/TextViewWithHyperlink;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "c"
.end annotation


# instance fields
.field b:Landroid/content/Context;

.field c:Lcom/join/mgps/Util/IntentDateBean;

.field final synthetic d:Lcom/join/mgps/customview/TextViewWithHyperlink;


# direct methods
.method public constructor <init>(Lcom/join/mgps/customview/TextViewWithHyperlink;Landroid/content/Context;Lcom/join/mgps/Util/IntentDateBean;)V
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
            "intent"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/join/mgps/customview/TextViewWithHyperlink$c;->d:Lcom/join/mgps/customview/TextViewWithHyperlink;

    .line 2
    .line 3
    invoke-direct {p0}, Landroid/text/style/ClickableSpan;-><init>()V

    .line 4
    .line 5
    .line 6
    iput-object p3, p0, Lcom/join/mgps/customview/TextViewWithHyperlink$c;->c:Lcom/join/mgps/Util/IntentDateBean;

    .line 7
    .line 8
    iput-object p2, p0, Lcom/join/mgps/customview/TextViewWithHyperlink$c;->b:Landroid/content/Context;

    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "widget"
        }
    .end annotation

    .line 1
    invoke-static {}, Lcom/join/mgps/Util/IntentUtil;->getInstance()Lcom/join/mgps/Util/IntentUtil;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    iget-object v1, p0, Lcom/join/mgps/customview/TextViewWithHyperlink$c;->b:Landroid/content/Context;

    .line 6
    .line 7
    iget-object v2, p0, Lcom/join/mgps/customview/TextViewWithHyperlink$c;->c:Lcom/join/mgps/Util/IntentDateBean;

    .line 8
    .line 9
    invoke-virtual {v0, v1, v2}, Lcom/join/mgps/Util/IntentUtil;->intentActivity(Landroid/content/Context;Lcom/join/mgps/Util/IntentDateBean;)V

    .line 10
    .line 11
    .line 12
    invoke-virtual {p1}, Landroid/view/View;->callOnClick()Z

    .line 13
    .line 14
    .line 15
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
    const v0, -0xd58d35

    .line 2
    .line 3
    .line 4
    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setColor(I)V

    .line 5
    .line 6
    .line 7
    return-void
.end method
