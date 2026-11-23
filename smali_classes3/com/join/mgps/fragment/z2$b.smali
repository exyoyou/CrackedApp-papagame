.class Lcom/join/mgps/fragment/z2$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/viewpager/widget/ViewPager$OnPageChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/join/mgps/fragment/z2;->afterViews()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic b:Lcom/join/mgps/fragment/z2;


# direct methods
.method constructor <init>(Lcom/join/mgps/fragment/z2;)V
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
    iput-object p1, p0, Lcom/join/mgps/fragment/z2$b;->b:Lcom/join/mgps/fragment/z2;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public onPageScrollStateChanged(I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "i"
        }
    .end annotation

    return-void
.end method

.method public onPageScrolled(IFI)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "i",
            "v",
            "i1"
        }
    .end annotation

    return-void
.end method

.method public onPageSelected(I)V
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "i"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/fragment/z2$b;->b:Lcom/join/mgps/fragment/z2;

    .line 2
    .line 3
    iget-object v0, v0, Lcom/join/mgps/fragment/z2;->c:Landroid/widget/TextView;

    .line 4
    .line 5
    const/4 v1, 0x0

    .line 6
    const/4 v2, 0x1

    .line 7
    if-nez p1, :cond_0

    .line 8
    .line 9
    const/4 v3, 0x1

    .line 10
    goto :goto_0

    .line 11
    :cond_0
    const/4 v3, 0x0

    .line 12
    :goto_0
    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setSelected(Z)V

    .line 13
    .line 14
    .line 15
    iget-object v0, p0, Lcom/join/mgps/fragment/z2$b;->b:Lcom/join/mgps/fragment/z2;

    .line 16
    .line 17
    iget-object v0, v0, Lcom/join/mgps/fragment/z2;->d:Landroid/widget/TextView;

    .line 18
    .line 19
    if-ne p1, v2, :cond_1

    .line 20
    .line 21
    const/4 v3, 0x1

    .line 22
    goto :goto_1

    .line 23
    :cond_1
    const/4 v3, 0x0

    .line 24
    :goto_1
    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setSelected(Z)V

    .line 25
    .line 26
    .line 27
    if-ne p1, v2, :cond_3

    .line 28
    .line 29
    iget-object p1, p0, Lcom/join/mgps/fragment/z2$b;->b:Lcom/join/mgps/fragment/z2;

    .line 30
    .line 31
    iget-object p1, p1, Lcom/join/mgps/fragment/z2;->g:Ljava/util/List;

    .line 32
    .line 33
    invoke-interface {p1}, Ljava/util/List;->size()I

    .line 34
    .line 35
    .line 36
    move-result p1

    .line 37
    if-le p1, v2, :cond_3

    .line 38
    .line 39
    iget-object p1, p0, Lcom/join/mgps/fragment/z2$b;->b:Lcom/join/mgps/fragment/z2;

    .line 40
    .line 41
    iget-object p1, p1, Lcom/join/mgps/fragment/z2;->g:Ljava/util/List;

    .line 42
    .line 43
    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 44
    .line 45
    .line 46
    move-result-object p1

    .line 47
    instance-of p1, p1, Lcom/join/mgps/fragment/d3;

    .line 48
    .line 49
    if-eqz p1, :cond_3

    .line 50
    .line 51
    iget-object p1, p0, Lcom/join/mgps/fragment/z2$b;->b:Lcom/join/mgps/fragment/z2;

    .line 52
    .line 53
    iget-object p1, p1, Lcom/join/mgps/fragment/z2;->g:Ljava/util/List;

    .line 54
    .line 55
    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 56
    .line 57
    .line 58
    move-result-object p1

    .line 59
    check-cast p1, Lcom/join/mgps/fragment/d3;

    .line 60
    .line 61
    invoke-virtual {p1}, Lcom/join/mgps/fragment/d3;->V()V

    .line 62
    .line 63
    .line 64
    invoke-static {}, Lcom/wufan/friend/chat/c;->u()Lcom/wufan/friend/chat/c;

    .line 65
    .line 66
    .line 67
    move-result-object p1

    .line 68
    invoke-virtual {p1}, Lcom/wufan/friend/chat/c;->r()Lcom/join/mgps/dto/FriendAccountInfo;

    .line 69
    .line 70
    .line 71
    move-result-object p1

    .line 72
    if-eqz p1, :cond_2

    .line 73
    .line 74
    invoke-static {}, Lcom/wufan/friend/chat/c;->u()Lcom/wufan/friend/chat/c;

    .line 75
    .line 76
    .line 77
    move-result-object p1

    .line 78
    invoke-virtual {p1}, Lcom/wufan/friend/chat/c;->r()Lcom/join/mgps/dto/FriendAccountInfo;

    .line 79
    .line 80
    .line 81
    move-result-object p1

    .line 82
    invoke-virtual {p1, v1}, Lcom/join/mgps/dto/FriendAccountInfo;->setLikedCount(I)V

    .line 83
    .line 84
    .line 85
    :cond_2
    iget-object p1, p0, Lcom/join/mgps/fragment/z2$b;->b:Lcom/join/mgps/fragment/z2;

    .line 86
    .line 87
    iget-object p1, p1, Lcom/join/mgps/fragment/z2;->e:Landroid/view/View;

    .line 88
    .line 89
    if-eqz p1, :cond_3

    .line 90
    .line 91
    const/16 v0, 0x8

    .line 92
    .line 93
    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 94
    .line 95
    .line 96
    :cond_3
    return-void
.end method
