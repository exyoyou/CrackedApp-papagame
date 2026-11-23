.class public Lcom/join/mgps/Util/z0;
.super Landroid/os/Handler;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/join/mgps/Util/z0$a;
    }
.end annotation


# static fields
.field public static final c:I = 0x1

.field public static final d:I = 0x2

.field public static final e:I = 0x3

.field public static final f:I = 0x4

.field public static final g:J = 0x1388L


# instance fields
.field private a:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lcom/join/mgps/Util/z0$a;",
            ">;"
        }
    .end annotation
.end field

.field private b:I


# direct methods
.method public constructor <init>(Ljava/lang/ref/WeakReference;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "wk"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/ref/WeakReference<",
            "+",
            "Lcom/join/mgps/Util/z0$a;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x0

    .line 5
    iput v0, p0, Lcom/join/mgps/Util/z0;->b:I

    .line 6
    .line 7
    iput-object p1, p0, Lcom/join/mgps/Util/z0;->a:Ljava/lang/ref/WeakReference;

    .line 8
    .line 9
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 6
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "msg"
        }
    .end annotation

    .line 1
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lcom/join/mgps/Util/z0;->a:Ljava/lang/ref/WeakReference;

    .line 5
    .line 6
    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    check-cast v0, Lcom/join/mgps/Util/z0$a;

    .line 11
    .line 12
    if-nez v0, :cond_0

    .line 13
    .line 14
    return-void

    .line 15
    :cond_0
    iget-object v1, v0, Lcom/join/mgps/Util/z0$a;->c:Lcom/join/mgps/Util/z0;

    .line 16
    .line 17
    const/4 v2, 0x1

    .line 18
    invoke-virtual {v1, v2}, Landroid/os/Handler;->hasMessages(I)Z

    .line 19
    .line 20
    .line 21
    move-result v1

    .line 22
    if-eqz v1, :cond_1

    .line 23
    .line 24
    iget-object v1, v0, Lcom/join/mgps/Util/z0$a;->c:Lcom/join/mgps/Util/z0;

    .line 25
    .line 26
    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 27
    .line 28
    .line 29
    :cond_1
    iget v1, p1, Landroid/os/Message;->what:I

    .line 30
    .line 31
    const-wide/16 v3, 0x1388

    .line 32
    .line 33
    if-eq v1, v2, :cond_4

    .line 34
    .line 35
    const/4 v5, 0x3

    .line 36
    if-eq v1, v5, :cond_3

    .line 37
    .line 38
    const/4 v5, 0x4

    .line 39
    if-eq v1, v5, :cond_2

    .line 40
    .line 41
    goto :goto_0

    .line 42
    :cond_2
    iget p1, p1, Landroid/os/Message;->arg1:I

    .line 43
    .line 44
    iput p1, p0, Lcom/join/mgps/Util/z0;->b:I

    .line 45
    .line 46
    iget-object p1, v0, Lcom/join/mgps/Util/z0$a;->c:Lcom/join/mgps/Util/z0;

    .line 47
    .line 48
    invoke-virtual {p1, v2, v3, v4}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 49
    .line 50
    .line 51
    goto :goto_0

    .line 52
    :cond_3
    iget-object p1, v0, Lcom/join/mgps/Util/z0$a;->c:Lcom/join/mgps/Util/z0;

    .line 53
    .line 54
    invoke-virtual {p1, v2, v3, v4}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 55
    .line 56
    .line 57
    goto :goto_0

    .line 58
    :cond_4
    iget-object p1, v0, Lcom/join/mgps/Util/z0$a;->d:Lcom/join/mgps/customview/LoopViewPager;

    .line 59
    .line 60
    if-eqz p1, :cond_5

    .line 61
    .line 62
    invoke-virtual {p1}, Lcom/join/mgps/customview/LoopViewPager;->getAdapter()Landroidx/viewpager/widget/PagerAdapter;

    .line 63
    .line 64
    .line 65
    move-result-object p1

    .line 66
    if-eqz p1, :cond_5

    .line 67
    .line 68
    iget-object p1, v0, Lcom/join/mgps/Util/z0$a;->d:Lcom/join/mgps/customview/LoopViewPager;

    .line 69
    .line 70
    invoke-virtual {p1}, Lcom/join/mgps/customview/LoopViewPager;->getCurrentItem()I

    .line 71
    .line 72
    .line 73
    move-result p1

    .line 74
    iget-object v1, v0, Lcom/join/mgps/Util/z0$a;->d:Lcom/join/mgps/customview/LoopViewPager;

    .line 75
    .line 76
    add-int/2addr p1, v2

    .line 77
    invoke-virtual {v1, p1}, Lcom/join/mgps/customview/LoopViewPager;->setCurrentItem(I)V

    .line 78
    .line 79
    .line 80
    :cond_5
    iget-object p1, v0, Lcom/join/mgps/Util/z0$a;->c:Lcom/join/mgps/Util/z0;

    .line 81
    .line 82
    invoke-virtual {p1, v2, v3, v4}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 83
    .line 84
    .line 85
    :goto_0
    return-void
.end method
