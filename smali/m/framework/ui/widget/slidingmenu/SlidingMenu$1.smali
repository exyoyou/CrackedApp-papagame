.class Lm/framework/ui/widget/slidingmenu/SlidingMenu$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


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
    iput-object p1, p0, Lm/framework/ui/widget/slidingmenu/SlidingMenu$1;->this$0:Lm/framework/ui/widget/slidingmenu/SlidingMenu;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method static synthetic access$0(Lm/framework/ui/widget/slidingmenu/SlidingMenu$1;)Lm/framework/ui/widget/slidingmenu/SlidingMenu;
    .locals 0

    .line 1
    iget-object p0, p0, Lm/framework/ui/widget/slidingmenu/SlidingMenu$1;->this$0:Lm/framework/ui/widget/slidingmenu/SlidingMenu;

    .line 2
    .line 3
    return-object p0
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3

    .line 1
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    check-cast p1, Lm/framework/ui/widget/slidingmenu/SlidingMenuItem;

    .line 6
    .line 7
    if-nez p1, :cond_0

    .line 8
    .line 9
    return-void

    .line 10
    :cond_0
    iget-object v0, p0, Lm/framework/ui/widget/slidingmenu/SlidingMenu$1;->this$0:Lm/framework/ui/widget/slidingmenu/SlidingMenu;

    .line 11
    .line 12
    invoke-static {v0}, Lm/framework/ui/widget/slidingmenu/SlidingMenu;->access$0(Lm/framework/ui/widget/slidingmenu/SlidingMenu;)Lm/framework/ui/widget/slidingmenu/MenuAdapter;

    .line 13
    .line 14
    .line 15
    move-result-object v0

    .line 16
    if-nez v0, :cond_1

    .line 17
    .line 18
    return-void

    .line 19
    :cond_1
    iget-object v0, p0, Lm/framework/ui/widget/slidingmenu/SlidingMenu$1;->this$0:Lm/framework/ui/widget/slidingmenu/SlidingMenu;

    .line 20
    .line 21
    invoke-static {v0}, Lm/framework/ui/widget/slidingmenu/SlidingMenu;->access$0(Lm/framework/ui/widget/slidingmenu/SlidingMenu;)Lm/framework/ui/widget/slidingmenu/MenuAdapter;

    .line 22
    .line 23
    .line 24
    move-result-object v0

    .line 25
    invoke-virtual {v0, p1}, Lm/framework/ui/widget/slidingmenu/MenuAdapter;->onItemTrigger(Lm/framework/ui/widget/slidingmenu/SlidingMenuItem;)Z

    .line 26
    .line 27
    .line 28
    move-result p1

    .line 29
    if-nez p1, :cond_2

    .line 30
    .line 31
    iget-object p1, p0, Lm/framework/ui/widget/slidingmenu/SlidingMenu$1;->this$0:Lm/framework/ui/widget/slidingmenu/SlidingMenu;

    .line 32
    .line 33
    new-instance v0, Lm/framework/ui/widget/slidingmenu/SlidingMenu$1$1;

    .line 34
    .line 35
    invoke-direct {v0, p0}, Lm/framework/ui/widget/slidingmenu/SlidingMenu$1$1;-><init>(Lm/framework/ui/widget/slidingmenu/SlidingMenu$1;)V

    .line 36
    .line 37
    .line 38
    const-wide/16 v1, 0x1f4

    .line 39
    .line 40
    invoke-virtual {p1, v0, v1, v2}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 41
    .line 42
    .line 43
    :cond_2
    return-void
.end method
