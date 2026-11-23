.class Lcom/join/mgps/customview/InterceptEventViewPager$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnTouchListener;


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
    iput-object p1, p0, Lcom/join/mgps/customview/InterceptEventViewPager$a;->b:Lcom/join/mgps/customview/InterceptEventViewPager;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "v",
            "event"
        }
    .end annotation

    .line 1
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    const/4 v1, 0x1

    .line 6
    const/4 v2, 0x0

    .line 7
    if-nez v0, :cond_0

    .line 8
    .line 9
    instance-of v0, p1, Landroid/view/ViewGroup;

    .line 10
    .line 11
    if-eqz v0, :cond_0

    .line 12
    .line 13
    iget-object v0, p0, Lcom/join/mgps/customview/InterceptEventViewPager$a;->b:Lcom/join/mgps/customview/InterceptEventViewPager;

    .line 14
    .line 15
    invoke-virtual {v0}, Lcom/join/mgps/customview/InterceptEventViewPager;->o()Z

    .line 16
    .line 17
    .line 18
    move-result v0

    .line 19
    if-nez v0, :cond_0

    .line 20
    .line 21
    iget-object v0, p0, Lcom/join/mgps/customview/InterceptEventViewPager$a;->b:Lcom/join/mgps/customview/InterceptEventViewPager;

    .line 22
    .line 23
    invoke-virtual {v0}, Lcom/join/mgps/customview/InterceptEventViewPager;->p()Z

    .line 24
    .line 25
    .line 26
    move-result v0

    .line 27
    if-nez v0, :cond_0

    .line 28
    .line 29
    check-cast p1, Landroid/view/ViewGroup;

    .line 30
    .line 31
    invoke-virtual {p1, v1}, Landroid/view/ViewGroup;->requestDisallowInterceptTouchEvent(Z)V

    .line 32
    .line 33
    .line 34
    goto :goto_0

    .line 35
    :cond_0
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    .line 36
    .line 37
    .line 38
    move-result p2

    .line 39
    const/4 v0, 0x2

    .line 40
    if-ne p2, v0, :cond_3

    .line 41
    .line 42
    iget-object p2, p0, Lcom/join/mgps/customview/InterceptEventViewPager$a;->b:Lcom/join/mgps/customview/InterceptEventViewPager;

    .line 43
    .line 44
    invoke-virtual {p2}, Lcom/join/mgps/customview/InterceptEventViewPager;->o()Z

    .line 45
    .line 46
    .line 47
    move-result p2

    .line 48
    if-eqz p2, :cond_1

    .line 49
    .line 50
    iget-object p2, p0, Lcom/join/mgps/customview/InterceptEventViewPager$a;->b:Lcom/join/mgps/customview/InterceptEventViewPager;

    .line 51
    .line 52
    invoke-static {p2}, Lcom/join/mgps/customview/InterceptEventViewPager;->a(Lcom/join/mgps/customview/InterceptEventViewPager;)I

    .line 53
    .line 54
    .line 55
    move-result p2

    .line 56
    if-nez p2, :cond_1

    .line 57
    .line 58
    check-cast p1, Landroid/view/ViewGroup;

    .line 59
    .line 60
    invoke-virtual {p1, v2}, Landroid/view/ViewGroup;->requestDisallowInterceptTouchEvent(Z)V

    .line 61
    .line 62
    .line 63
    goto :goto_0

    .line 64
    :cond_1
    iget-object p2, p0, Lcom/join/mgps/customview/InterceptEventViewPager$a;->b:Lcom/join/mgps/customview/InterceptEventViewPager;

    .line 65
    .line 66
    invoke-virtual {p2}, Lcom/join/mgps/customview/InterceptEventViewPager;->p()Z

    .line 67
    .line 68
    .line 69
    move-result p2

    .line 70
    if-eqz p2, :cond_2

    .line 71
    .line 72
    iget-object p2, p0, Lcom/join/mgps/customview/InterceptEventViewPager$a;->b:Lcom/join/mgps/customview/InterceptEventViewPager;

    .line 73
    .line 74
    invoke-static {p2}, Lcom/join/mgps/customview/InterceptEventViewPager;->a(Lcom/join/mgps/customview/InterceptEventViewPager;)I

    .line 75
    .line 76
    .line 77
    move-result p2

    .line 78
    iget-object v0, p0, Lcom/join/mgps/customview/InterceptEventViewPager$a;->b:Lcom/join/mgps/customview/InterceptEventViewPager;

    .line 79
    .line 80
    invoke-static {v0}, Lcom/join/mgps/customview/InterceptEventViewPager;->c(Lcom/join/mgps/customview/InterceptEventViewPager;)I

    .line 81
    .line 82
    .line 83
    move-result v0

    .line 84
    sub-int/2addr v0, v1

    .line 85
    if-ne p2, v0, :cond_2

    .line 86
    .line 87
    check-cast p1, Landroid/view/ViewGroup;

    .line 88
    .line 89
    invoke-virtual {p1, v2}, Landroid/view/ViewGroup;->requestDisallowInterceptTouchEvent(Z)V

    .line 90
    .line 91
    .line 92
    goto :goto_0

    .line 93
    :cond_2
    check-cast p1, Landroid/view/ViewGroup;

    .line 94
    .line 95
    invoke-virtual {p1, v1}, Landroid/view/ViewGroup;->requestDisallowInterceptTouchEvent(Z)V

    .line 96
    .line 97
    .line 98
    :cond_3
    :goto_0
    return v2
.end method
