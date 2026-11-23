.class public final Lcom/join/kotlin/module/hmcloud/menu/HMMenuFragment$onViewCreated$5$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/Window$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/join/kotlin/module/hmcloud/menu/HMMenuFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000k\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0010\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0010\u0008\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0003*\u0001\u0000\u0008\n\u0018\u00002\u00020\u0001J\u0010\u0010\u0002\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u0005H\u0016J\u0012\u0010\u0006\u001a\u00020\u00032\u0008\u0010\u0004\u001a\u0004\u0018\u00010\u0007H\u0016J\u001e\u0010\u0008\u001a\u00020\u00032\u000e\u0010\t\u001a\n \n*\u0004\u0018\u00010\u00050\u0005H\u0096\u0001\u00a2\u0006\u0002\u0010\u000bJ\u001e\u0010\u000c\u001a\u00020\u00032\u000e\u0010\t\u001a\n \n*\u0004\u0018\u00010\r0\rH\u0096\u0001\u00a2\u0006\u0002\u0010\u000eJ\u001e\u0010\u000f\u001a\u00020\u00032\u000e\u0010\t\u001a\n \n*\u0004\u0018\u00010\u00070\u0007H\u0096\u0001\u00a2\u0006\u0002\u0010\u0010J\u001e\u0010\u0011\u001a\u00020\u00032\u000e\u0010\t\u001a\n \n*\u0004\u0018\u00010\u00070\u0007H\u0096\u0001\u00a2\u0006\u0002\u0010\u0010J\u001e\u0010\u0012\u001a\u00020\u00132\u000e\u0010\t\u001a\n \n*\u0004\u0018\u00010\u00140\u0014H\u0096\u0001\u00a2\u0006\u0002\u0010\u0015J\u001e\u0010\u0016\u001a\u00020\u00132\u000e\u0010\t\u001a\n \n*\u0004\u0018\u00010\u00140\u0014H\u0096\u0001\u00a2\u0006\u0002\u0010\u0015J\t\u0010\u0017\u001a\u00020\u0013H\u0096\u0001J\t\u0010\u0018\u001a\u00020\u0013H\u0096\u0001J \u0010\u0019\u001a\u00020\u00032\u0006\u0010\t\u001a\u00020\u001a2\r\u0008\u0001\u0010\u001b\u001a\u00070\u001c\u00a2\u0006\u0002\u0008\u001dH\u0096\u0001J\u0018\u0010\u001e\u001a\t\u0018\u00010\u001f\u00a2\u0006\u0002\u0008\u001d2\u0006\u0010\t\u001a\u00020\u001aH\u0097\u0001J\t\u0010 \u001a\u00020\u0013H\u0096\u0001J \u0010!\u001a\u00020\u00032\u0006\u0010\t\u001a\u00020\u001a2\r\u0008\u0001\u0010\u001b\u001a\u00070\"\u00a2\u0006\u0002\u0008\u001dH\u0096\u0001J \u0010#\u001a\u00020\u00032\u0006\u0010\t\u001a\u00020\u001a2\r\u0008\u0001\u0010\u001b\u001a\u00070\u001c\u00a2\u0006\u0002\u0008\u001dH\u0096\u0001J \u0010$\u001a\u00020\u00132\u0006\u0010\t\u001a\u00020\u001a2\r\u0008\u0001\u0010\u001b\u001a\u00070\u001c\u00a2\u0006\u0002\u0008\u001dH\u0096\u0001J1\u0010%\u001a\u00020\u00032\u0006\u0010\t\u001a\u00020\u001a2\u000f\u0008\u0001\u0010\u001b\u001a\t\u0018\u00010\u001f\u00a2\u0006\u0002\u0008\u001d2\r\u0008\u0001\u0010&\u001a\u00070\u001c\u00a2\u0006\u0002\u0008\u001dH\u0096\u0001J\t\u0010\'\u001a\u00020\u0003H\u0096\u0001J\u001e\u0010\'\u001a\u00020\u00032\u000e\u0010\t\u001a\n \n*\u0004\u0018\u00010(0(H\u0096\u0001\u00a2\u0006\u0002\u0010)J\u001e\u0010*\u001a\u00020\u00132\u000e\u0010\t\u001a\n \n*\u0004\u0018\u00010+0+H\u0096\u0001\u00a2\u0006\u0002\u0010,J\u0011\u0010-\u001a\u00020\u00132\u0006\u0010\t\u001a\u00020\u0003H\u0096\u0001J%\u0010.\u001a\t\u0018\u00010\u0014\u00a2\u0006\u0002\u0008\u001d2\u000e\u0010\t\u001a\n \n*\u0004\u0018\u00010/0/H\u0097\u0001\u00a2\u0006\u0002\u00100J-\u0010.\u001a\t\u0018\u00010\u0014\u00a2\u0006\u0002\u0008\u001d2\u000e\u0010\t\u001a\n \n*\u0004\u0018\u00010/0/2\u0006\u0010\u001b\u001a\u00020\u001aH\u0097\u0001\u00a2\u0006\u0002\u00101\u00a8\u00062"
    }
    d2 = {
        "com/join/kotlin/module/hmcloud/menu/HMMenuFragment$onViewCreated$5$2",
        "Landroid/view/Window$Callback;",
        "dispatchKeyEvent",
        "",
        "event",
        "Landroid/view/KeyEvent;",
        "dispatchGenericMotionEvent",
        "Landroid/view/MotionEvent;",
        "dispatchKeyShortcutEvent",
        "p0",
        "kotlin.jvm.PlatformType",
        "(Landroid/view/KeyEvent;)Z",
        "dispatchPopulateAccessibilityEvent",
        "Landroid/view/accessibility/AccessibilityEvent;",
        "(Landroid/view/accessibility/AccessibilityEvent;)Z",
        "dispatchTouchEvent",
        "(Landroid/view/MotionEvent;)Z",
        "dispatchTrackballEvent",
        "onActionModeFinished",
        "",
        "Landroid/view/ActionMode;",
        "(Landroid/view/ActionMode;)V",
        "onActionModeStarted",
        "onAttachedToWindow",
        "onContentChanged",
        "onCreatePanelMenu",
        "",
        "p1",
        "Landroid/view/Menu;",
        "Lkotlin/jvm/internal/EnhancedNullability;",
        "onCreatePanelView",
        "Landroid/view/View;",
        "onDetachedFromWindow",
        "onMenuItemSelected",
        "Landroid/view/MenuItem;",
        "onMenuOpened",
        "onPanelClosed",
        "onPreparePanel",
        "p2",
        "onSearchRequested",
        "Landroid/view/SearchEvent;",
        "(Landroid/view/SearchEvent;)Z",
        "onWindowAttributesChanged",
        "Landroid/view/WindowManager$LayoutParams;",
        "(Landroid/view/WindowManager$LayoutParams;)V",
        "onWindowFocusChanged",
        "onWindowStartingActionMode",
        "Landroid/view/ActionMode$Callback;",
        "(Landroid/view/ActionMode$Callback;)Landroid/view/ActionMode;",
        "(Landroid/view/ActionMode$Callback;I)Landroid/view/ActionMode;",
        "app_wufunNormalRelease"
    }
    k = 0x1
    mv = {
        0x2,
        0x1,
        0x0
    }
    xi = 0x30
.end annotation


# instance fields
.field private final synthetic $$delegate_0:Landroid/view/Window$Callback;

.field final synthetic this$0:Lcom/join/kotlin/module/hmcloud/menu/HMMenuFragment;


# direct methods
.method constructor <init>(Landroid/app/Dialog;Lcom/join/kotlin/module/hmcloud/menu/HMMenuFragment;)V
    .locals 0

    .line 1
    iput-object p2, p0, Lcom/join/kotlin/module/hmcloud/menu/HMMenuFragment$onViewCreated$5$2;->this$0:Lcom/join/kotlin/module/hmcloud/menu/HMMenuFragment;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p1}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    .line 7
    .line 8
    .line 9
    move-result-object p1

    .line 10
    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 11
    .line 12
    .line 13
    invoke-virtual {p1}, Landroid/view/Window;->getCallback()Landroid/view/Window$Callback;

    .line 14
    .line 15
    .line 16
    move-result-object p1

    .line 17
    iput-object p1, p0, Lcom/join/kotlin/module/hmcloud/menu/HMMenuFragment$onViewCreated$5$2;->$$delegate_0:Landroid/view/Window$Callback;

    .line 18
    .line 19
    return-void
.end method


# virtual methods
.method public dispatchGenericMotionEvent(Landroid/view/MotionEvent;)Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/kotlin/module/hmcloud/menu/HMMenuFragment$onViewCreated$5$2;->this$0:Lcom/join/kotlin/module/hmcloud/menu/HMMenuFragment;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/join/kotlin/module/hmcloud/menu/HMMenuFragment;->getViewModel()Lcom/join/kotlin/module/hmcloud/viewmodel/HMCloudMainViewModel;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-virtual {v0, p1}, Lcom/join/kotlin/module/hmcloud/viewmodel/HMCloudMainViewModel;->dispatchEvent(Ljava/lang/Object;)Z

    .line 8
    .line 9
    .line 10
    move-result p1

    .line 11
    return p1
.end method

.method public dispatchKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 1

    .line 1
    const-string v0, "event"

    .line 2
    .line 3
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lcom/join/kotlin/module/hmcloud/menu/HMMenuFragment$onViewCreated$5$2;->this$0:Lcom/join/kotlin/module/hmcloud/menu/HMMenuFragment;

    .line 7
    .line 8
    invoke-virtual {v0}, Lcom/join/kotlin/module/hmcloud/menu/HMMenuFragment;->getViewModel()Lcom/join/kotlin/module/hmcloud/viewmodel/HMCloudMainViewModel;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    invoke-virtual {v0, p1}, Lcom/join/kotlin/module/hmcloud/viewmodel/HMCloudMainViewModel;->dispatchEvent(Ljava/lang/Object;)Z

    .line 13
    .line 14
    .line 15
    move-result p1

    .line 16
    return p1
.end method

.method public dispatchKeyShortcutEvent(Landroid/view/KeyEvent;)Z
    .locals 1

    iget-object v0, p0, Lcom/join/kotlin/module/hmcloud/menu/HMMenuFragment$onViewCreated$5$2;->$$delegate_0:Landroid/view/Window$Callback;

    invoke-interface {v0, p1}, Landroid/view/Window$Callback;->dispatchKeyShortcutEvent(Landroid/view/KeyEvent;)Z

    move-result p1

    return p1
.end method

.method public dispatchPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)Z
    .locals 1

    iget-object v0, p0, Lcom/join/kotlin/module/hmcloud/menu/HMMenuFragment$onViewCreated$5$2;->$$delegate_0:Landroid/view/Window$Callback;

    invoke-interface {v0, p1}, Landroid/view/Window$Callback;->dispatchPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)Z

    move-result p1

    return p1
.end method

.method public dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1

    iget-object v0, p0, Lcom/join/kotlin/module/hmcloud/menu/HMMenuFragment$onViewCreated$5$2;->$$delegate_0:Landroid/view/Window$Callback;

    invoke-interface {v0, p1}, Landroid/view/Window$Callback;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1
.end method

.method public dispatchTrackballEvent(Landroid/view/MotionEvent;)Z
    .locals 1

    iget-object v0, p0, Lcom/join/kotlin/module/hmcloud/menu/HMMenuFragment$onViewCreated$5$2;->$$delegate_0:Landroid/view/Window$Callback;

    invoke-interface {v0, p1}, Landroid/view/Window$Callback;->dispatchTrackballEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1
.end method

.method public onActionModeFinished(Landroid/view/ActionMode;)V
    .locals 1

    iget-object v0, p0, Lcom/join/kotlin/module/hmcloud/menu/HMMenuFragment$onViewCreated$5$2;->$$delegate_0:Landroid/view/Window$Callback;

    invoke-interface {v0, p1}, Landroid/view/Window$Callback;->onActionModeFinished(Landroid/view/ActionMode;)V

    return-void
.end method

.method public onActionModeStarted(Landroid/view/ActionMode;)V
    .locals 1

    iget-object v0, p0, Lcom/join/kotlin/module/hmcloud/menu/HMMenuFragment$onViewCreated$5$2;->$$delegate_0:Landroid/view/Window$Callback;

    invoke-interface {v0, p1}, Landroid/view/Window$Callback;->onActionModeStarted(Landroid/view/ActionMode;)V

    return-void
.end method

.method public onAttachedToWindow()V
    .locals 1

    iget-object v0, p0, Lcom/join/kotlin/module/hmcloud/menu/HMMenuFragment$onViewCreated$5$2;->$$delegate_0:Landroid/view/Window$Callback;

    invoke-interface {v0}, Landroid/view/Window$Callback;->onAttachedToWindow()V

    return-void
.end method

.method public onContentChanged()V
    .locals 1

    iget-object v0, p0, Lcom/join/kotlin/module/hmcloud/menu/HMMenuFragment$onViewCreated$5$2;->$$delegate_0:Landroid/view/Window$Callback;

    invoke-interface {v0}, Landroid/view/Window$Callback;->onContentChanged()V

    return-void
.end method

.method public onCreatePanelMenu(ILandroid/view/Menu;)Z
    .locals 1
    .param p2    # Landroid/view/Menu;
        .annotation build Landroid/annotation/NonNull;
        .end annotation
    .end param

    const-string v0, "p1"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/join/kotlin/module/hmcloud/menu/HMMenuFragment$onViewCreated$5$2;->$$delegate_0:Landroid/view/Window$Callback;

    invoke-interface {v0, p1, p2}, Landroid/view/Window$Callback;->onCreatePanelMenu(ILandroid/view/Menu;)Z

    move-result p1

    return p1
.end method

.method public onCreatePanelView(I)Landroid/view/View;
    .locals 1
    .annotation build Landroid/annotation/Nullable;
    .end annotation

    iget-object v0, p0, Lcom/join/kotlin/module/hmcloud/menu/HMMenuFragment$onViewCreated$5$2;->$$delegate_0:Landroid/view/Window$Callback;

    invoke-interface {v0, p1}, Landroid/view/Window$Callback;->onCreatePanelView(I)Landroid/view/View;

    move-result-object p1

    return-object p1
.end method

.method public onDetachedFromWindow()V
    .locals 1

    iget-object v0, p0, Lcom/join/kotlin/module/hmcloud/menu/HMMenuFragment$onViewCreated$5$2;->$$delegate_0:Landroid/view/Window$Callback;

    invoke-interface {v0}, Landroid/view/Window$Callback;->onDetachedFromWindow()V

    return-void
.end method

.method public onMenuItemSelected(ILandroid/view/MenuItem;)Z
    .locals 1
    .param p2    # Landroid/view/MenuItem;
        .annotation build Landroid/annotation/NonNull;
        .end annotation
    .end param

    const-string v0, "p1"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/join/kotlin/module/hmcloud/menu/HMMenuFragment$onViewCreated$5$2;->$$delegate_0:Landroid/view/Window$Callback;

    invoke-interface {v0, p1, p2}, Landroid/view/Window$Callback;->onMenuItemSelected(ILandroid/view/MenuItem;)Z

    move-result p1

    return p1
.end method

.method public onMenuOpened(ILandroid/view/Menu;)Z
    .locals 1
    .param p2    # Landroid/view/Menu;
        .annotation build Landroid/annotation/NonNull;
        .end annotation
    .end param

    const-string v0, "p1"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/join/kotlin/module/hmcloud/menu/HMMenuFragment$onViewCreated$5$2;->$$delegate_0:Landroid/view/Window$Callback;

    invoke-interface {v0, p1, p2}, Landroid/view/Window$Callback;->onMenuOpened(ILandroid/view/Menu;)Z

    move-result p1

    return p1
.end method

.method public onPanelClosed(ILandroid/view/Menu;)V
    .locals 1
    .param p2    # Landroid/view/Menu;
        .annotation build Landroid/annotation/NonNull;
        .end annotation
    .end param

    const-string v0, "p1"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/join/kotlin/module/hmcloud/menu/HMMenuFragment$onViewCreated$5$2;->$$delegate_0:Landroid/view/Window$Callback;

    invoke-interface {v0, p1, p2}, Landroid/view/Window$Callback;->onPanelClosed(ILandroid/view/Menu;)V

    return-void
.end method

.method public onPreparePanel(ILandroid/view/View;Landroid/view/Menu;)Z
    .locals 1
    .param p2    # Landroid/view/View;
        .annotation build Landroid/annotation/Nullable;
        .end annotation
    .end param
    .param p3    # Landroid/view/Menu;
        .annotation build Landroid/annotation/NonNull;
        .end annotation
    .end param

    const-string v0, "p2"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/join/kotlin/module/hmcloud/menu/HMMenuFragment$onViewCreated$5$2;->$$delegate_0:Landroid/view/Window$Callback;

    invoke-interface {v0, p1, p2, p3}, Landroid/view/Window$Callback;->onPreparePanel(ILandroid/view/View;Landroid/view/Menu;)Z

    move-result p1

    return p1
.end method

.method public onSearchRequested()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/kotlin/module/hmcloud/menu/HMMenuFragment$onViewCreated$5$2;->$$delegate_0:Landroid/view/Window$Callback;

    invoke-interface {v0}, Landroid/view/Window$Callback;->onSearchRequested()Z

    move-result v0

    return v0
.end method

.method public onSearchRequested(Landroid/view/SearchEvent;)Z
    .locals 1

    .line 2
    iget-object v0, p0, Lcom/join/kotlin/module/hmcloud/menu/HMMenuFragment$onViewCreated$5$2;->$$delegate_0:Landroid/view/Window$Callback;

    invoke-static {v0, p1}, Lcom/join/kotlin/module/hmcloud/menu/e0;->a(Landroid/view/Window$Callback;Landroid/view/SearchEvent;)Z

    move-result p1

    return p1
.end method

.method public onWindowAttributesChanged(Landroid/view/WindowManager$LayoutParams;)V
    .locals 1

    iget-object v0, p0, Lcom/join/kotlin/module/hmcloud/menu/HMMenuFragment$onViewCreated$5$2;->$$delegate_0:Landroid/view/Window$Callback;

    invoke-interface {v0, p1}, Landroid/view/Window$Callback;->onWindowAttributesChanged(Landroid/view/WindowManager$LayoutParams;)V

    return-void
.end method

.method public onWindowFocusChanged(Z)V
    .locals 1

    iget-object v0, p0, Lcom/join/kotlin/module/hmcloud/menu/HMMenuFragment$onViewCreated$5$2;->$$delegate_0:Landroid/view/Window$Callback;

    invoke-interface {v0, p1}, Landroid/view/Window$Callback;->onWindowFocusChanged(Z)V

    return-void
.end method

.method public onWindowStartingActionMode(Landroid/view/ActionMode$Callback;)Landroid/view/ActionMode;
    .locals 1
    .annotation build Landroid/annotation/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/kotlin/module/hmcloud/menu/HMMenuFragment$onViewCreated$5$2;->$$delegate_0:Landroid/view/Window$Callback;

    invoke-interface {v0, p1}, Landroid/view/Window$Callback;->onWindowStartingActionMode(Landroid/view/ActionMode$Callback;)Landroid/view/ActionMode;

    move-result-object p1

    return-object p1
.end method

.method public onWindowStartingActionMode(Landroid/view/ActionMode$Callback;I)Landroid/view/ActionMode;
    .locals 1
    .annotation build Landroid/annotation/Nullable;
    .end annotation

    .line 2
    iget-object v0, p0, Lcom/join/kotlin/module/hmcloud/menu/HMMenuFragment$onViewCreated$5$2;->$$delegate_0:Landroid/view/Window$Callback;

    invoke-static {v0, p1, p2}, Lcom/join/kotlin/module/hmcloud/menu/d0;->a(Landroid/view/Window$Callback;Landroid/view/ActionMode$Callback;I)Landroid/view/ActionMode;

    move-result-object p1

    return-object p1
.end method
