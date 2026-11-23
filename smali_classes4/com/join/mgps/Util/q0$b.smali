.class Lcom/join/mgps/Util/q0$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/join/mgps/Util/q0;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic b:Lcom/join/mgps/Util/q0;


# direct methods
.method constructor <init>(Lcom/join/mgps/Util/q0;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            "this$0"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/join/mgps/Util/q0$b;->b:Lcom/join/mgps/Util/q0;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/join/mgps/Util/q0$b;->b:Lcom/join/mgps/Util/q0;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/join/mgps/Util/q0;->b(Lcom/join/mgps/Util/q0;)Landroid/view/View;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    iget-object v0, p0, Lcom/join/mgps/Util/q0$b;->b:Lcom/join/mgps/Util/q0;

    .line 10
    .line 11
    invoke-static {v0}, Lcom/join/mgps/Util/q0;->b(Lcom/join/mgps/Util/q0;)Landroid/view/View;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    if-eqz v0, :cond_0

    .line 20
    .line 21
    iget-object v0, p0, Lcom/join/mgps/Util/q0$b;->b:Lcom/join/mgps/Util/q0;

    .line 22
    .line 23
    invoke-static {v0}, Lcom/join/mgps/Util/q0;->c(Lcom/join/mgps/Util/q0;)Landroid/view/WindowManager;

    .line 24
    .line 25
    .line 26
    move-result-object v0

    .line 27
    iget-object v1, p0, Lcom/join/mgps/Util/q0$b;->b:Lcom/join/mgps/Util/q0;

    .line 28
    .line 29
    invoke-static {v1}, Lcom/join/mgps/Util/q0;->b(Lcom/join/mgps/Util/q0;)Landroid/view/View;

    .line 30
    .line 31
    .line 32
    move-result-object v1

    .line 33
    invoke-interface {v0, v1}, Landroid/view/ViewManager;->removeView(Landroid/view/View;)V

    .line 34
    .line 35
    .line 36
    :cond_0
    return-void
.end method
