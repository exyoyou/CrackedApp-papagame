.class Lcom/papa91/view/AutoSaveSlot$4;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/papa91/view/AutoSaveSlot;->showAutoSavePop(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/papa91/view/AutoSaveSlot;

.field final synthetic val$popupWindow:Lcom/papa91/view/smartpopupwindow/SmartPopupWindow;


# direct methods
.method constructor <init>(Lcom/papa91/view/AutoSaveSlot;Lcom/papa91/view/smartpopupwindow/SmartPopupWindow;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/papa91/view/AutoSaveSlot$4;->this$0:Lcom/papa91/view/AutoSaveSlot;

    .line 2
    .line 3
    iput-object p2, p0, Lcom/papa91/view/AutoSaveSlot$4;->val$popupWindow:Lcom/papa91/view/smartpopupwindow/SmartPopupWindow;

    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/papa91/view/AutoSaveSlot$4;->val$popupWindow:Lcom/papa91/view/smartpopupwindow/SmartPopupWindow;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0}, Landroid/widget/PopupWindow;->isShowing()Z

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    if-eqz v0, :cond_0

    .line 10
    .line 11
    iget-object v0, p0, Lcom/papa91/view/AutoSaveSlot$4;->val$popupWindow:Lcom/papa91/view/smartpopupwindow/SmartPopupWindow;

    .line 12
    .line 13
    invoke-virtual {v0}, Lcom/papa91/view/smartpopupwindow/SmartPopupWindow;->dismiss()V

    .line 14
    .line 15
    .line 16
    :cond_0
    return-void
.end method
