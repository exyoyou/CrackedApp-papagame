.class Lm/framework/ui/widget/slidingmenu/SlidingMenu$3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lm/framework/ui/widget/slidingmenu/SlidingMenu;->init(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lm/framework/ui/widget/slidingmenu/SlidingMenu;


# direct methods
.method constructor <init>(Lm/framework/ui/widget/slidingmenu/SlidingMenu;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lm/framework/ui/widget/slidingmenu/SlidingMenu$3;->this$0:Lm/framework/ui/widget/slidingmenu/SlidingMenu;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method static synthetic access$0(Lm/framework/ui/widget/slidingmenu/SlidingMenu$3;)Lm/framework/ui/widget/slidingmenu/SlidingMenu;
    .locals 0

    .line 1
    iget-object p0, p0, Lm/framework/ui/widget/slidingmenu/SlidingMenu$3;->this$0:Lm/framework/ui/widget/slidingmenu/SlidingMenu;

    .line 2
    .line 3
    return-object p0
.end method


# virtual methods
.method public onGlobalLayout()V
    .locals 2

    .line 1
    iget-object v0, p0, Lm/framework/ui/widget/slidingmenu/SlidingMenu$3;->this$0:Lm/framework/ui/widget/slidingmenu/SlidingMenu;

    .line 2
    .line 3
    invoke-virtual {v0}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-virtual {v0, p0}, Landroid/view/ViewTreeObserver;->removeGlobalOnLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    .line 8
    .line 9
    .line 10
    iget-object v0, p0, Lm/framework/ui/widget/slidingmenu/SlidingMenu$3;->this$0:Lm/framework/ui/widget/slidingmenu/SlidingMenu;

    .line 11
    .line 12
    new-instance v1, Lm/framework/ui/widget/slidingmenu/SlidingMenu$3$1;

    .line 13
    .line 14
    invoke-direct {v1, p0}, Lm/framework/ui/widget/slidingmenu/SlidingMenu$3$1;-><init>(Lm/framework/ui/widget/slidingmenu/SlidingMenu$3;)V

    .line 15
    .line 16
    .line 17
    invoke-virtual {v0, v1}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    .line 18
    .line 19
    .line 20
    return-void
.end method
