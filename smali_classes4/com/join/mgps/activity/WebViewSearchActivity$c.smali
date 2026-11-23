.class Lcom/join/mgps/activity/WebViewSearchActivity$c;
.super Landroid/os/CountDownTimer;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/join/mgps/activity/WebViewSearchActivity;->closeTip(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Z

.field final synthetic b:Lcom/join/mgps/activity/WebViewSearchActivity;


# direct methods
.method constructor <init>(Lcom/join/mgps/activity/WebViewSearchActivity;JJZ)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x0,
            0x0,
            0x1010
        }
        names = {
            "this$0",
            "millisInFuture",
            "countDownInterval",
            "val$found"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/join/mgps/activity/WebViewSearchActivity$c;->b:Lcom/join/mgps/activity/WebViewSearchActivity;

    .line 2
    .line 3
    iput-boolean p6, p0, Lcom/join/mgps/activity/WebViewSearchActivity$c;->a:Z

    .line 4
    .line 5
    invoke-direct {p0, p2, p3, p4, p5}, Landroid/os/CountDownTimer;-><init>(JJ)V

    .line 6
    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public onFinish()V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/WebViewSearchActivity$c;->b:Lcom/join/mgps/activity/WebViewSearchActivity;

    .line 2
    .line 3
    iget-object v0, v0, Lcom/join/mgps/activity/WebViewSearchActivity;->tipSniffing:Landroid/widget/TextView;

    .line 4
    .line 5
    const/16 v1, 0x8

    .line 6
    .line 7
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 8
    .line 9
    .line 10
    iget-object v0, p0, Lcom/join/mgps/activity/WebViewSearchActivity$c;->b:Lcom/join/mgps/activity/WebViewSearchActivity;

    .line 11
    .line 12
    invoke-virtual {v0}, Lcom/join/mgps/activity/WebViewSearchActivity;->showContent()V

    .line 13
    .line 14
    .line 15
    iget-object v0, p0, Lcom/join/mgps/activity/WebViewSearchActivity$c;->b:Lcom/join/mgps/activity/WebViewSearchActivity;

    .line 16
    .line 17
    iget-object v0, v0, Lcom/join/mgps/activity/WebViewSearchActivity;->simpleSheetView:Lcom/flipboard/bottomsheet/custom/SimpleSheetView;

    .line 18
    .line 19
    invoke-virtual {v0}, Lcom/flipboard/bottomsheet/custom/SimpleSheetView;->getMixins()Ljava/util/List;

    .line 20
    .line 21
    .line 22
    move-result-object v0

    .line 23
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 24
    .line 25
    .line 26
    move-result v0

    .line 27
    if-lez v0, :cond_0

    .line 28
    .line 29
    iget-object v0, p0, Lcom/join/mgps/activity/WebViewSearchActivity$c;->b:Lcom/join/mgps/activity/WebViewSearchActivity;

    .line 30
    .line 31
    iget-object v1, v0, Lcom/join/mgps/activity/WebViewSearchActivity;->simpleSheetView:Lcom/flipboard/bottomsheet/custom/SimpleSheetView;

    .line 32
    .line 33
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 34
    .line 35
    .line 36
    move-result-object v0

    .line 37
    const/4 v2, 0x1

    .line 38
    new-array v2, v2, [Ljava/lang/Object;

    .line 39
    .line 40
    iget-object v3, p0, Lcom/join/mgps/activity/WebViewSearchActivity$c;->b:Lcom/join/mgps/activity/WebViewSearchActivity;

    .line 41
    .line 42
    iget-object v3, v3, Lcom/join/mgps/activity/WebViewSearchActivity;->simpleSheetView:Lcom/flipboard/bottomsheet/custom/SimpleSheetView;

    .line 43
    .line 44
    invoke-virtual {v3}, Lcom/flipboard/bottomsheet/custom/SimpleSheetView;->getMixins()Ljava/util/List;

    .line 45
    .line 46
    .line 47
    move-result-object v3

    .line 48
    invoke-interface {v3}, Ljava/util/List;->size()I

    .line 49
    .line 50
    .line 51
    move-result v3

    .line 52
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 53
    .line 54
    .line 55
    move-result-object v3

    .line 56
    const/4 v4, 0x0

    .line 57
    aput-object v3, v2, v4

    .line 58
    .line 59
    const v3, 0x7f120409

    .line 60
    .line 61
    .line 62
    invoke-virtual {v0, v3, v2}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    .line 63
    .line 64
    .line 65
    move-result-object v0

    .line 66
    invoke-virtual {v1, v0}, Lcom/flipboard/bottomsheet/custom/SimpleSheetView;->setTitle(Ljava/lang/String;)V

    .line 67
    .line 68
    .line 69
    iget-object v0, p0, Lcom/join/mgps/activity/WebViewSearchActivity$c;->b:Lcom/join/mgps/activity/WebViewSearchActivity;

    .line 70
    .line 71
    iget-object v1, v0, Lcom/join/mgps/activity/WebViewSearchActivity;->bottomSheetLayout:Lcom/flipboard/bottomsheet/BottomSheetLayout;

    .line 72
    .line 73
    iget-object v0, v0, Lcom/join/mgps/activity/WebViewSearchActivity;->simpleSheetView:Lcom/flipboard/bottomsheet/custom/SimpleSheetView;

    .line 74
    .line 75
    invoke-virtual {v1, v0}, Lcom/flipboard/bottomsheet/BottomSheetLayout;->I(Landroid/view/View;)V

    .line 76
    .line 77
    .line 78
    :cond_0
    return-void
.end method

.method public onTick(J)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "millisUntilFinished"
        }
    .end annotation

    .line 1
    iget-boolean v0, p0, Lcom/join/mgps/activity/WebViewSearchActivity$c;->a:Z

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    const-wide/16 v0, 0x258

    .line 6
    .line 7
    cmp-long v2, p1, v0

    .line 8
    .line 9
    if-gtz v2, :cond_0

    .line 10
    .line 11
    iget-object p1, p0, Lcom/join/mgps/activity/WebViewSearchActivity$c;->b:Lcom/join/mgps/activity/WebViewSearchActivity;

    .line 12
    .line 13
    iget-object p1, p1, Lcom/join/mgps/activity/WebViewSearchActivity;->tipSniffing:Landroid/widget/TextView;

    .line 14
    .line 15
    const p2, 0x7f12040a

    .line 16
    .line 17
    .line 18
    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(I)V

    .line 19
    .line 20
    .line 21
    :cond_0
    return-void
.end method
