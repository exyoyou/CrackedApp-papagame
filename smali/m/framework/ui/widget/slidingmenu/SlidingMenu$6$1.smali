.class Lm/framework/ui/widget/slidingmenu/SlidingMenu$6$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lm/framework/ui/widget/slidingmenu/SlidingMenu$6;->onGlobalLayout()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lm/framework/ui/widget/slidingmenu/SlidingMenu$6;


# direct methods
.method constructor <init>(Lm/framework/ui/widget/slidingmenu/SlidingMenu$6;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lm/framework/ui/widget/slidingmenu/SlidingMenu$6$1;->this$1:Lm/framework/ui/widget/slidingmenu/SlidingMenu$6;

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
    .locals 3

    .line 1
    iget-object v0, p0, Lm/framework/ui/widget/slidingmenu/SlidingMenu$6$1;->this$1:Lm/framework/ui/widget/slidingmenu/SlidingMenu$6;

    .line 2
    .line 3
    invoke-static {v0}, Lm/framework/ui/widget/slidingmenu/SlidingMenu$6;->access$0(Lm/framework/ui/widget/slidingmenu/SlidingMenu$6;)Lm/framework/ui/widget/slidingmenu/SlidingMenu;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-static {v0}, Lm/framework/ui/widget/slidingmenu/SlidingMenu;->access$3(Lm/framework/ui/widget/slidingmenu/SlidingMenu;)Lm/framework/ui/widget/slidingmenu/BodyContainer;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    iget-object v1, p0, Lm/framework/ui/widget/slidingmenu/SlidingMenu$6$1;->this$1:Lm/framework/ui/widget/slidingmenu/SlidingMenu$6;

    .line 12
    .line 13
    invoke-static {v1}, Lm/framework/ui/widget/slidingmenu/SlidingMenu$6;->access$0(Lm/framework/ui/widget/slidingmenu/SlidingMenu$6;)Lm/framework/ui/widget/slidingmenu/SlidingMenu;

    .line 14
    .line 15
    .line 16
    move-result-object v1

    .line 17
    invoke-static {v1}, Lm/framework/ui/widget/slidingmenu/SlidingMenu;->access$4(Lm/framework/ui/widget/slidingmenu/SlidingMenu;)I

    .line 18
    .line 19
    .line 20
    move-result v1

    .line 21
    const/4 v2, 0x0

    .line 22
    invoke-virtual {v0, v1, v2}, Landroid/view/View;->scrollTo(II)V

    .line 23
    .line 24
    .line 25
    return-void
.end method
