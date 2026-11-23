.class Lcom/join/mgps/customview/InterceptEventViewPager$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/viewpager/widget/ViewPager$OnPageChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/join/mgps/customview/InterceptEventViewPager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic b:Lcom/join/mgps/customview/InterceptEventViewPager;


# direct methods
.method constructor <init>(Lcom/join/mgps/customview/InterceptEventViewPager;)V
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
    iput-object p1, p0, Lcom/join/mgps/customview/InterceptEventViewPager$b;->b:Lcom/join/mgps/customview/InterceptEventViewPager;

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
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "state"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/customview/InterceptEventViewPager$b;->b:Lcom/join/mgps/customview/InterceptEventViewPager;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/join/mgps/customview/InterceptEventViewPager;->d(Lcom/join/mgps/customview/InterceptEventViewPager;)Lcom/join/mgps/customview/InterceptEventViewPager$c;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    iget-object v0, p0, Lcom/join/mgps/customview/InterceptEventViewPager$b;->b:Lcom/join/mgps/customview/InterceptEventViewPager;

    .line 10
    .line 11
    invoke-static {v0}, Lcom/join/mgps/customview/InterceptEventViewPager;->d(Lcom/join/mgps/customview/InterceptEventViewPager;)Lcom/join/mgps/customview/InterceptEventViewPager$c;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    invoke-interface {v0, p1}, Lcom/join/mgps/customview/InterceptEventViewPager$c;->onPageScrollStateChanged(I)V

    .line 16
    .line 17
    .line 18
    :cond_0
    iget-object v0, p0, Lcom/join/mgps/customview/InterceptEventViewPager$b;->b:Lcom/join/mgps/customview/InterceptEventViewPager;

    .line 19
    .line 20
    invoke-static {v0, p1}, Lcom/join/mgps/customview/InterceptEventViewPager;->j(Lcom/join/mgps/customview/InterceptEventViewPager;I)I

    .line 21
    .line 22
    .line 23
    const/4 v0, 0x1

    .line 24
    if-ne p1, v0, :cond_1

    .line 25
    .line 26
    iget-object p1, p0, Lcom/join/mgps/customview/InterceptEventViewPager$b;->b:Lcom/join/mgps/customview/InterceptEventViewPager;

    .line 27
    .line 28
    invoke-static {p1, v0}, Lcom/join/mgps/customview/InterceptEventViewPager;->h(Lcom/join/mgps/customview/InterceptEventViewPager;Z)Z

    .line 29
    .line 30
    .line 31
    goto :goto_0

    .line 32
    :cond_1
    iget-object p1, p0, Lcom/join/mgps/customview/InterceptEventViewPager$b;->b:Lcom/join/mgps/customview/InterceptEventViewPager;

    .line 33
    .line 34
    const/4 v0, 0x0

    .line 35
    invoke-static {p1, v0}, Lcom/join/mgps/customview/InterceptEventViewPager;->e(Lcom/join/mgps/customview/InterceptEventViewPager;Z)Z

    .line 36
    .line 37
    .line 38
    iget-object p1, p0, Lcom/join/mgps/customview/InterceptEventViewPager$b;->b:Lcom/join/mgps/customview/InterceptEventViewPager;

    .line 39
    .line 40
    invoke-static {p1, v0}, Lcom/join/mgps/customview/InterceptEventViewPager;->f(Lcom/join/mgps/customview/InterceptEventViewPager;Z)Z

    .line 41
    .line 42
    .line 43
    iget-object p1, p0, Lcom/join/mgps/customview/InterceptEventViewPager$b;->b:Lcom/join/mgps/customview/InterceptEventViewPager;

    .line 44
    .line 45
    invoke-static {p1, v0}, Lcom/join/mgps/customview/InterceptEventViewPager;->k(Lcom/join/mgps/customview/InterceptEventViewPager;Z)Z

    .line 46
    .line 47
    .line 48
    iget-object p1, p0, Lcom/join/mgps/customview/InterceptEventViewPager$b;->b:Lcom/join/mgps/customview/InterceptEventViewPager;

    .line 49
    .line 50
    invoke-static {p1, v0}, Lcom/join/mgps/customview/InterceptEventViewPager;->l(Lcom/join/mgps/customview/InterceptEventViewPager;Z)Z

    .line 51
    .line 52
    .line 53
    iget-object p1, p0, Lcom/join/mgps/customview/InterceptEventViewPager$b;->b:Lcom/join/mgps/customview/InterceptEventViewPager;

    .line 54
    .line 55
    invoke-static {p1, v0}, Lcom/join/mgps/customview/InterceptEventViewPager;->h(Lcom/join/mgps/customview/InterceptEventViewPager;Z)Z

    .line 56
    .line 57
    .line 58
    :goto_0
    return-void
.end method

.method public onPageScrolled(IFI)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "position",
            "positionOffset",
            "positionOffsetPixels"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/customview/InterceptEventViewPager$b;->b:Lcom/join/mgps/customview/InterceptEventViewPager;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/join/mgps/customview/InterceptEventViewPager;->d(Lcom/join/mgps/customview/InterceptEventViewPager;)Lcom/join/mgps/customview/InterceptEventViewPager$c;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    iget-object v0, p0, Lcom/join/mgps/customview/InterceptEventViewPager$b;->b:Lcom/join/mgps/customview/InterceptEventViewPager;

    .line 10
    .line 11
    invoke-static {v0}, Lcom/join/mgps/customview/InterceptEventViewPager;->d(Lcom/join/mgps/customview/InterceptEventViewPager;)Lcom/join/mgps/customview/InterceptEventViewPager$c;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    invoke-interface {v0, p1, p2, p3}, Lcom/join/mgps/customview/InterceptEventViewPager$c;->onPageScrolled(IFI)V

    .line 16
    .line 17
    .line 18
    :cond_0
    iget-object p2, p0, Lcom/join/mgps/customview/InterceptEventViewPager$b;->b:Lcom/join/mgps/customview/InterceptEventViewPager;

    .line 19
    .line 20
    invoke-static {p2}, Lcom/join/mgps/customview/InterceptEventViewPager;->a(Lcom/join/mgps/customview/InterceptEventViewPager;)I

    .line 21
    .line 22
    .line 23
    move-result p2

    .line 24
    const/4 v0, 0x1

    .line 25
    if-ne p1, p2, :cond_1

    .line 26
    .line 27
    const/4 p2, 0x1

    .line 28
    goto :goto_0

    .line 29
    :cond_1
    const/4 p2, 0x0

    .line 30
    :goto_0
    if-eqz p2, :cond_2

    .line 31
    .line 32
    iget-object p2, p0, Lcom/join/mgps/customview/InterceptEventViewPager$b;->b:Lcom/join/mgps/customview/InterceptEventViewPager;

    .line 33
    .line 34
    invoke-static {p2, v0}, Lcom/join/mgps/customview/InterceptEventViewPager;->e(Lcom/join/mgps/customview/InterceptEventViewPager;Z)Z

    .line 35
    .line 36
    .line 37
    goto :goto_1

    .line 38
    :cond_2
    iget-object p2, p0, Lcom/join/mgps/customview/InterceptEventViewPager$b;->b:Lcom/join/mgps/customview/InterceptEventViewPager;

    .line 39
    .line 40
    invoke-static {p2, v0}, Lcom/join/mgps/customview/InterceptEventViewPager;->f(Lcom/join/mgps/customview/InterceptEventViewPager;Z)Z

    .line 41
    .line 42
    .line 43
    :goto_1
    iget-object p2, p0, Lcom/join/mgps/customview/InterceptEventViewPager$b;->b:Lcom/join/mgps/customview/InterceptEventViewPager;

    .line 44
    .line 45
    invoke-static {p2}, Lcom/join/mgps/customview/InterceptEventViewPager;->g(Lcom/join/mgps/customview/InterceptEventViewPager;)Z

    .line 46
    .line 47
    .line 48
    move-result p2

    .line 49
    if-eqz p2, :cond_4

    .line 50
    .line 51
    if-nez p1, :cond_3

    .line 52
    .line 53
    if-nez p3, :cond_4

    .line 54
    .line 55
    iget-object p1, p0, Lcom/join/mgps/customview/InterceptEventViewPager$b;->b:Lcom/join/mgps/customview/InterceptEventViewPager;

    .line 56
    .line 57
    invoke-static {p1}, Lcom/join/mgps/customview/InterceptEventViewPager;->i(Lcom/join/mgps/customview/InterceptEventViewPager;)I

    .line 58
    .line 59
    .line 60
    move-result p1

    .line 61
    if-ne p1, v0, :cond_4

    .line 62
    .line 63
    iget-object p1, p0, Lcom/join/mgps/customview/InterceptEventViewPager$b;->b:Lcom/join/mgps/customview/InterceptEventViewPager;

    .line 64
    .line 65
    invoke-static {p1, v0}, Lcom/join/mgps/customview/InterceptEventViewPager;->k(Lcom/join/mgps/customview/InterceptEventViewPager;Z)Z

    .line 66
    .line 67
    .line 68
    goto :goto_2

    .line 69
    :cond_3
    iget-object p2, p0, Lcom/join/mgps/customview/InterceptEventViewPager$b;->b:Lcom/join/mgps/customview/InterceptEventViewPager;

    .line 70
    .line 71
    invoke-static {p2}, Lcom/join/mgps/customview/InterceptEventViewPager;->c(Lcom/join/mgps/customview/InterceptEventViewPager;)I

    .line 72
    .line 73
    .line 74
    move-result p2

    .line 75
    sub-int/2addr p2, v0

    .line 76
    if-ne p1, p2, :cond_4

    .line 77
    .line 78
    if-nez p3, :cond_4

    .line 79
    .line 80
    iget-object p1, p0, Lcom/join/mgps/customview/InterceptEventViewPager$b;->b:Lcom/join/mgps/customview/InterceptEventViewPager;

    .line 81
    .line 82
    invoke-static {p1}, Lcom/join/mgps/customview/InterceptEventViewPager;->i(Lcom/join/mgps/customview/InterceptEventViewPager;)I

    .line 83
    .line 84
    .line 85
    move-result p1

    .line 86
    if-ne p1, v0, :cond_4

    .line 87
    .line 88
    iget-object p1, p0, Lcom/join/mgps/customview/InterceptEventViewPager$b;->b:Lcom/join/mgps/customview/InterceptEventViewPager;

    .line 89
    .line 90
    invoke-static {p1, v0}, Lcom/join/mgps/customview/InterceptEventViewPager;->l(Lcom/join/mgps/customview/InterceptEventViewPager;Z)Z

    .line 91
    .line 92
    .line 93
    :cond_4
    :goto_2
    return-void
.end method

.method public onPageSelected(I)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "position"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/customview/InterceptEventViewPager$b;->b:Lcom/join/mgps/customview/InterceptEventViewPager;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/join/mgps/customview/InterceptEventViewPager;->d(Lcom/join/mgps/customview/InterceptEventViewPager;)Lcom/join/mgps/customview/InterceptEventViewPager$c;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    iget-object v0, p0, Lcom/join/mgps/customview/InterceptEventViewPager$b;->b:Lcom/join/mgps/customview/InterceptEventViewPager;

    .line 10
    .line 11
    invoke-static {v0}, Lcom/join/mgps/customview/InterceptEventViewPager;->d(Lcom/join/mgps/customview/InterceptEventViewPager;)Lcom/join/mgps/customview/InterceptEventViewPager$c;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    invoke-interface {v0, p1}, Lcom/join/mgps/customview/InterceptEventViewPager$c;->onPageSelected(I)V

    .line 16
    .line 17
    .line 18
    :cond_0
    iget-object v0, p0, Lcom/join/mgps/customview/InterceptEventViewPager$b;->b:Lcom/join/mgps/customview/InterceptEventViewPager;

    .line 19
    .line 20
    invoke-static {v0, p1}, Lcom/join/mgps/customview/InterceptEventViewPager;->b(Lcom/join/mgps/customview/InterceptEventViewPager;I)I

    .line 21
    .line 22
    .line 23
    return-void
.end method
