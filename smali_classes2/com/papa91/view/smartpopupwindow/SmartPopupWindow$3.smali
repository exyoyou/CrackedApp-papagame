.class Lcom/papa91/view/smartpopupwindow/SmartPopupWindow$3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/papa91/view/smartpopupwindow/SmartPopupWindow;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/papa91/view/smartpopupwindow/SmartPopupWindow;


# direct methods
.method constructor <init>(Lcom/papa91/view/smartpopupwindow/SmartPopupWindow;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/papa91/view/smartpopupwindow/SmartPopupWindow$3;->this$0:Lcom/papa91/view/smartpopupwindow/SmartPopupWindow;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public onGlobalLayout()V
    .locals 9

    .line 1
    iget-object v0, p0, Lcom/papa91/view/smartpopupwindow/SmartPopupWindow$3;->this$0:Lcom/papa91/view/smartpopupwindow/SmartPopupWindow;

    .line 2
    .line 3
    invoke-virtual {v0}, Landroid/widget/PopupWindow;->getContentView()Landroid/view/View;

    .line 4
    .line 5
    .line 6
    move-result-object v1

    .line 7
    invoke-virtual {v1}, Landroid/view/View;->getWidth()I

    .line 8
    .line 9
    .line 10
    move-result v1

    .line 11
    invoke-static {v0, v1}, Lcom/papa91/view/smartpopupwindow/SmartPopupWindow;->access$002(Lcom/papa91/view/smartpopupwindow/SmartPopupWindow;I)I

    .line 12
    .line 13
    .line 14
    iget-object v0, p0, Lcom/papa91/view/smartpopupwindow/SmartPopupWindow$3;->this$0:Lcom/papa91/view/smartpopupwindow/SmartPopupWindow;

    .line 15
    .line 16
    invoke-virtual {v0}, Landroid/widget/PopupWindow;->getContentView()Landroid/view/View;

    .line 17
    .line 18
    .line 19
    move-result-object v1

    .line 20
    invoke-virtual {v1}, Landroid/view/View;->getHeight()I

    .line 21
    .line 22
    .line 23
    move-result v1

    .line 24
    invoke-static {v0, v1}, Lcom/papa91/view/smartpopupwindow/SmartPopupWindow;->access$102(Lcom/papa91/view/smartpopupwindow/SmartPopupWindow;I)I

    .line 25
    .line 26
    .line 27
    iget-object v0, p0, Lcom/papa91/view/smartpopupwindow/SmartPopupWindow$3;->this$0:Lcom/papa91/view/smartpopupwindow/SmartPopupWindow;

    .line 28
    .line 29
    invoke-static {v0}, Lcom/papa91/view/smartpopupwindow/SmartPopupWindow;->access$200(Lcom/papa91/view/smartpopupwindow/SmartPopupWindow;)Z

    .line 30
    .line 31
    .line 32
    move-result v0

    .line 33
    if-eqz v0, :cond_0

    .line 34
    .line 35
    iget-object v0, p0, Lcom/papa91/view/smartpopupwindow/SmartPopupWindow$3;->this$0:Lcom/papa91/view/smartpopupwindow/SmartPopupWindow;

    .line 36
    .line 37
    invoke-static {v0}, Lcom/papa91/view/smartpopupwindow/SmartPopupWindow;->access$300(Lcom/papa91/view/smartpopupwindow/SmartPopupWindow;)V

    .line 38
    .line 39
    .line 40
    return-void

    .line 41
    :cond_0
    iget-object v1, p0, Lcom/papa91/view/smartpopupwindow/SmartPopupWindow$3;->this$0:Lcom/papa91/view/smartpopupwindow/SmartPopupWindow;

    .line 42
    .line 43
    invoke-static {v1}, Lcom/papa91/view/smartpopupwindow/SmartPopupWindow;->access$000(Lcom/papa91/view/smartpopupwindow/SmartPopupWindow;)I

    .line 44
    .line 45
    .line 46
    move-result v2

    .line 47
    iget-object v0, p0, Lcom/papa91/view/smartpopupwindow/SmartPopupWindow$3;->this$0:Lcom/papa91/view/smartpopupwindow/SmartPopupWindow;

    .line 48
    .line 49
    invoke-static {v0}, Lcom/papa91/view/smartpopupwindow/SmartPopupWindow;->access$100(Lcom/papa91/view/smartpopupwindow/SmartPopupWindow;)I

    .line 50
    .line 51
    .line 52
    move-result v3

    .line 53
    iget-object v0, p0, Lcom/papa91/view/smartpopupwindow/SmartPopupWindow$3;->this$0:Lcom/papa91/view/smartpopupwindow/SmartPopupWindow;

    .line 54
    .line 55
    invoke-static {v0}, Lcom/papa91/view/smartpopupwindow/SmartPopupWindow;->access$400(Lcom/papa91/view/smartpopupwindow/SmartPopupWindow;)Landroid/view/View;

    .line 56
    .line 57
    .line 58
    move-result-object v4

    .line 59
    iget-object v0, p0, Lcom/papa91/view/smartpopupwindow/SmartPopupWindow$3;->this$0:Lcom/papa91/view/smartpopupwindow/SmartPopupWindow;

    .line 60
    .line 61
    invoke-static {v0}, Lcom/papa91/view/smartpopupwindow/SmartPopupWindow;->access$500(Lcom/papa91/view/smartpopupwindow/SmartPopupWindow;)I

    .line 62
    .line 63
    .line 64
    move-result v5

    .line 65
    iget-object v0, p0, Lcom/papa91/view/smartpopupwindow/SmartPopupWindow$3;->this$0:Lcom/papa91/view/smartpopupwindow/SmartPopupWindow;

    .line 66
    .line 67
    invoke-static {v0}, Lcom/papa91/view/smartpopupwindow/SmartPopupWindow;->access$600(Lcom/papa91/view/smartpopupwindow/SmartPopupWindow;)I

    .line 68
    .line 69
    .line 70
    move-result v6

    .line 71
    iget-object v0, p0, Lcom/papa91/view/smartpopupwindow/SmartPopupWindow$3;->this$0:Lcom/papa91/view/smartpopupwindow/SmartPopupWindow;

    .line 72
    .line 73
    invoke-static {v0}, Lcom/papa91/view/smartpopupwindow/SmartPopupWindow;->access$700(Lcom/papa91/view/smartpopupwindow/SmartPopupWindow;)I

    .line 74
    .line 75
    .line 76
    move-result v7

    .line 77
    iget-object v0, p0, Lcom/papa91/view/smartpopupwindow/SmartPopupWindow$3;->this$0:Lcom/papa91/view/smartpopupwindow/SmartPopupWindow;

    .line 78
    .line 79
    invoke-static {v0}, Lcom/papa91/view/smartpopupwindow/SmartPopupWindow;->access$800(Lcom/papa91/view/smartpopupwindow/SmartPopupWindow;)I

    .line 80
    .line 81
    .line 82
    move-result v8

    .line 83
    invoke-static/range {v1 .. v8}, Lcom/papa91/view/smartpopupwindow/SmartPopupWindow;->access$900(Lcom/papa91/view/smartpopupwindow/SmartPopupWindow;IILandroid/view/View;IIII)V

    .line 84
    .line 85
    .line 86
    iget-object v0, p0, Lcom/papa91/view/smartpopupwindow/SmartPopupWindow$3;->this$0:Lcom/papa91/view/smartpopupwindow/SmartPopupWindow;

    .line 87
    .line 88
    invoke-static {v0}, Lcom/papa91/view/smartpopupwindow/SmartPopupWindow;->access$300(Lcom/papa91/view/smartpopupwindow/SmartPopupWindow;)V

    .line 89
    .line 90
    .line 91
    return-void
.end method
