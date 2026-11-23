.class Lcom/papa91/arc/dialog/RealNameDialog$UrlClickSpan;
.super Lcom/papa91/arc/widget/htmltext/ClickableTableSpan;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/papa91/arc/dialog/RealNameDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "UrlClickSpan"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/papa91/arc/dialog/RealNameDialog;


# direct methods
.method private constructor <init>(Lcom/papa91/arc/dialog/RealNameDialog;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/papa91/arc/dialog/RealNameDialog$UrlClickSpan;->this$0:Lcom/papa91/arc/dialog/RealNameDialog;

    invoke-direct {p0}, Lcom/papa91/arc/widget/htmltext/ClickableTableSpan;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/papa91/arc/dialog/RealNameDialog;Lcom/papa91/arc/dialog/RealNameDialog$1;)V
    .locals 0

    .line 2
    invoke-direct {p0, p1}, Lcom/papa91/arc/dialog/RealNameDialog$UrlClickSpan;-><init>(Lcom/papa91/arc/dialog/RealNameDialog;)V

    return-void
.end method


# virtual methods
.method public newInstance()Lcom/papa91/arc/widget/htmltext/ClickableTableSpan;
    .locals 0

    return-object p0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 0

    return-void
.end method

.method public updateDrawState(Landroid/text/TextPaint;)V
    .locals 1

    .line 1
    invoke-super {p0, p1}, Landroid/text/style/ClickableSpan;->updateDrawState(Landroid/text/TextPaint;)V

    .line 2
    .line 3
    .line 4
    const-string v0, "#828D94"

    .line 5
    .line 6
    invoke-static {v0}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    .line 7
    .line 8
    .line 9
    move-result v0

    .line 10
    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setColor(I)V

    .line 11
    .line 12
    .line 13
    return-void
.end method
