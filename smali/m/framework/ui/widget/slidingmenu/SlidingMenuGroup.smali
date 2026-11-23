.class final Lm/framework/ui/widget/slidingmenu/SlidingMenuGroup;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field id:I

.field private items:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lm/framework/ui/widget/slidingmenu/SlidingMenuItem;",
            ">;"
        }
    .end annotation
.end field

.field text:Ljava/lang/String;


# direct methods
.method constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Ljava/util/ArrayList;

    .line 5
    .line 6
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 7
    .line 8
    .line 9
    iput-object v0, p0, Lm/framework/ui/widget/slidingmenu/SlidingMenuGroup;->items:Ljava/util/ArrayList;

    .line 10
    .line 11
    return-void
.end method


# virtual methods
.method findItemById(I)Lm/framework/ui/widget/slidingmenu/SlidingMenuItem;
    .locals 4

    .line 1
    iget-object v0, p0, Lm/framework/ui/widget/slidingmenu/SlidingMenuGroup;->items:Ljava/util/ArrayList;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    if-nez v0, :cond_0

    .line 5
    .line 6
    return-object v1

    .line 7
    :cond_0
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    :cond_1
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 12
    .line 13
    .line 14
    move-result v2

    .line 15
    if-nez v2, :cond_2

    .line 16
    .line 17
    return-object v1

    .line 18
    :cond_2
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 19
    .line 20
    .line 21
    move-result-object v2

    .line 22
    check-cast v2, Lm/framework/ui/widget/slidingmenu/SlidingMenuItem;

    .line 23
    .line 24
    if-nez v2, :cond_3

    .line 25
    .line 26
    goto :goto_0

    .line 27
    :cond_3
    iget v3, v2, Lm/framework/ui/widget/slidingmenu/SlidingMenuItem;->id:I

    .line 28
    .line 29
    if-ne v3, p1, :cond_1

    .line 30
    .line 31
    return-object v2
.end method

.method getCount()I
    .locals 1

    .line 1
    iget-object v0, p0, Lm/framework/ui/widget/slidingmenu/SlidingMenuGroup;->items:Ljava/util/ArrayList;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    const/4 v0, 0x0

    .line 6
    goto :goto_0

    .line 7
    :cond_0
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    :goto_0
    return v0
.end method

.method getItem(I)Lm/framework/ui/widget/slidingmenu/SlidingMenuItem;
    .locals 1

    .line 1
    iget-object v0, p0, Lm/framework/ui/widget/slidingmenu/SlidingMenuGroup;->items:Ljava/util/ArrayList;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    check-cast p1, Lm/framework/ui/widget/slidingmenu/SlidingMenuItem;

    .line 8
    .line 9
    return-object p1
.end method

.method setItem(Lm/framework/ui/widget/slidingmenu/SlidingMenuItem;)V
    .locals 2

    .line 1
    if-nez p1, :cond_0

    .line 2
    .line 3
    return-void

    .line 4
    :cond_0
    iget v0, p1, Lm/framework/ui/widget/slidingmenu/SlidingMenuItem;->id:I

    .line 5
    .line 6
    invoke-virtual {p0, v0}, Lm/framework/ui/widget/slidingmenu/SlidingMenuGroup;->findItemById(I)Lm/framework/ui/widget/slidingmenu/SlidingMenuItem;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    iget v1, p0, Lm/framework/ui/widget/slidingmenu/SlidingMenuGroup;->id:I

    .line 11
    .line 12
    iput v1, p1, Lm/framework/ui/widget/slidingmenu/SlidingMenuItem;->group:I

    .line 13
    .line 14
    if-nez v0, :cond_1

    .line 15
    .line 16
    iget-object v0, p0, Lm/framework/ui/widget/slidingmenu/SlidingMenuGroup;->items:Ljava/util/ArrayList;

    .line 17
    .line 18
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 19
    .line 20
    .line 21
    goto :goto_0

    .line 22
    :cond_1
    iget-object v1, p0, Lm/framework/ui/widget/slidingmenu/SlidingMenuGroup;->items:Ljava/util/ArrayList;

    .line 23
    .line 24
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    .line 25
    .line 26
    .line 27
    move-result v0

    .line 28
    iget-object v1, p0, Lm/framework/ui/widget/slidingmenu/SlidingMenuGroup;->items:Ljava/util/ArrayList;

    .line 29
    .line 30
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 31
    .line 32
    .line 33
    iget-object v1, p0, Lm/framework/ui/widget/slidingmenu/SlidingMenuGroup;->items:Ljava/util/ArrayList;

    .line 34
    .line 35
    invoke-virtual {v1, v0, p1}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 36
    .line 37
    .line 38
    :goto_0
    return-void
.end method
