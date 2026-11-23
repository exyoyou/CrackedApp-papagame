.class Lcom/shencoder/pagergridlayoutmanager/a;
.super Landroidx/recyclerview/widget/RecyclerView$SimpleOnItemTouchListener;
.source "SourceFile"


# static fields
.field private static final f:Ljava/lang/String; = "ItemTouchListener"


# instance fields
.field private final a:Lcom/shencoder/pagergridlayoutmanager/PagerGridLayoutManager;

.field private final b:Landroidx/recyclerview/widget/RecyclerView;

.field private c:I

.field private d:I

.field private e:I


# direct methods
.method constructor <init>(Lcom/shencoder/pagergridlayoutmanager/PagerGridLayoutManager;Landroidx/recyclerview/widget/RecyclerView;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "layoutManager",
            "recyclerView"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$SimpleOnItemTouchListener;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/shencoder/pagergridlayoutmanager/a;->a:Lcom/shencoder/pagergridlayoutmanager/PagerGridLayoutManager;

    .line 5
    .line 6
    iput-object p2, p0, Lcom/shencoder/pagergridlayoutmanager/a;->b:Landroidx/recyclerview/widget/RecyclerView;

    .line 7
    .line 8
    return-void
.end method

.method private a(Landroid/view/MotionEvent;)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "e"
        }
    .end annotation

    .line 1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionIndex()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getPointerId(I)I

    .line 6
    .line 7
    .line 8
    move-result v1

    .line 9
    iget v2, p0, Lcom/shencoder/pagergridlayoutmanager/a;->c:I

    .line 10
    .line 11
    if-ne v1, v2, :cond_1

    .line 12
    .line 13
    if-nez v0, :cond_0

    .line 14
    .line 15
    const/4 v0, 0x1

    .line 16
    goto :goto_0

    .line 17
    :cond_0
    const/4 v0, 0x0

    .line 18
    :goto_0
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getPointerId(I)I

    .line 19
    .line 20
    .line 21
    move-result v1

    .line 22
    iput v1, p0, Lcom/shencoder/pagergridlayoutmanager/a;->c:I

    .line 23
    .line 24
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getX(I)F

    .line 25
    .line 26
    .line 27
    move-result v1

    .line 28
    const/high16 v2, 0x3f000000    # 0.5f

    .line 29
    .line 30
    add-float/2addr v1, v2

    .line 31
    float-to-int v1, v1

    .line 32
    iput v1, p0, Lcom/shencoder/pagergridlayoutmanager/a;->d:I

    .line 33
    .line 34
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getY(I)F

    .line 35
    .line 36
    .line 37
    move-result p1

    .line 38
    add-float/2addr p1, v2

    .line 39
    float-to-int p1, p1

    .line 40
    iput p1, p0, Lcom/shencoder/pagergridlayoutmanager/a;->e:I

    .line 41
    .line 42
    :cond_1
    return-void
.end method


# virtual methods
.method public onInterceptTouchEvent(Landroidx/recyclerview/widget/RecyclerView;Landroid/view/MotionEvent;)Z
    .locals 4
    .param p1    # Landroidx/recyclerview/widget/RecyclerView;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroid/view/MotionEvent;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "rv",
            "e"
        }
    .end annotation

    .line 1
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getActionMasked()I

    .line 2
    .line 3
    .line 4
    move-result p1

    .line 5
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getActionIndex()I

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    sget-boolean v1, Lcom/shencoder/pagergridlayoutmanager/PagerGridLayoutManager;->P:Z

    .line 10
    .line 11
    if-eqz v1, :cond_0

    .line 12
    .line 13
    new-instance v1, Ljava/lang/StringBuilder;

    .line 14
    .line 15
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 16
    .line 17
    .line 18
    const-string v2, "onInterceptTouchEvent-actionMasked: "

    .line 19
    .line 20
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 21
    .line 22
    .line 23
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 24
    .line 25
    .line 26
    const-string v2, ", actionIndex: "

    .line 27
    .line 28
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 29
    .line 30
    .line 31
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 32
    .line 33
    .line 34
    :cond_0
    const/4 v1, 0x0

    .line 35
    const/high16 v2, 0x3f000000    # 0.5f

    .line 36
    .line 37
    if-eqz p1, :cond_5

    .line 38
    .line 39
    const/4 v3, 0x2

    .line 40
    if-eq p1, v3, :cond_2

    .line 41
    .line 42
    const/4 v3, 0x5

    .line 43
    if-eq p1, v3, :cond_5

    .line 44
    .line 45
    const/4 v0, 0x6

    .line 46
    if-eq p1, v0, :cond_1

    .line 47
    .line 48
    goto :goto_0

    .line 49
    :cond_1
    invoke-direct {p0, p2}, Lcom/shencoder/pagergridlayoutmanager/a;->a(Landroid/view/MotionEvent;)V

    .line 50
    .line 51
    .line 52
    goto :goto_0

    .line 53
    :cond_2
    iget p1, p0, Lcom/shencoder/pagergridlayoutmanager/a;->c:I

    .line 54
    .line 55
    invoke-virtual {p2, p1}, Landroid/view/MotionEvent;->findPointerIndex(I)I

    .line 56
    .line 57
    .line 58
    move-result p1

    .line 59
    if-gez p1, :cond_3

    .line 60
    .line 61
    return v1

    .line 62
    :cond_3
    invoke-virtual {p2, p1}, Landroid/view/MotionEvent;->getX(I)F

    .line 63
    .line 64
    .line 65
    move-result v0

    .line 66
    add-float/2addr v0, v2

    .line 67
    float-to-int v0, v0

    .line 68
    invoke-virtual {p2, p1}, Landroid/view/MotionEvent;->getY(I)F

    .line 69
    .line 70
    .line 71
    move-result p1

    .line 72
    add-float/2addr p1, v2

    .line 73
    float-to-int p1, p1

    .line 74
    iget p2, p0, Lcom/shencoder/pagergridlayoutmanager/a;->d:I

    .line 75
    .line 76
    sub-int/2addr v0, p2

    .line 77
    iget p2, p0, Lcom/shencoder/pagergridlayoutmanager/a;->e:I

    .line 78
    .line 79
    sub-int/2addr p1, p2

    .line 80
    iget-object p2, p0, Lcom/shencoder/pagergridlayoutmanager/a;->a:Lcom/shencoder/pagergridlayoutmanager/PagerGridLayoutManager;

    .line 81
    .line 82
    invoke-virtual {p2}, Lcom/shencoder/pagergridlayoutmanager/PagerGridLayoutManager;->canScrollHorizontally()Z

    .line 83
    .line 84
    .line 85
    move-result p2

    .line 86
    if-eqz p2, :cond_4

    .line 87
    .line 88
    iget-object p2, p0, Lcom/shencoder/pagergridlayoutmanager/a;->b:Landroidx/recyclerview/widget/RecyclerView;

    .line 89
    .line 90
    invoke-virtual {p2}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    .line 91
    .line 92
    .line 93
    move-result-object p2

    .line 94
    iget-object v2, p0, Lcom/shencoder/pagergridlayoutmanager/a;->b:Landroidx/recyclerview/widget/RecyclerView;

    .line 95
    .line 96
    neg-int v0, v0

    .line 97
    invoke-virtual {v2, v0}, Landroid/view/View;->canScrollHorizontally(I)Z

    .line 98
    .line 99
    .line 100
    move-result v0

    .line 101
    invoke-interface {p2, v0}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    .line 102
    .line 103
    .line 104
    :cond_4
    iget-object p2, p0, Lcom/shencoder/pagergridlayoutmanager/a;->a:Lcom/shencoder/pagergridlayoutmanager/PagerGridLayoutManager;

    .line 105
    .line 106
    invoke-virtual {p2}, Lcom/shencoder/pagergridlayoutmanager/PagerGridLayoutManager;->canScrollVertically()Z

    .line 107
    .line 108
    .line 109
    move-result p2

    .line 110
    if-eqz p2, :cond_6

    .line 111
    .line 112
    iget-object p2, p0, Lcom/shencoder/pagergridlayoutmanager/a;->b:Landroidx/recyclerview/widget/RecyclerView;

    .line 113
    .line 114
    invoke-virtual {p2}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    .line 115
    .line 116
    .line 117
    move-result-object p2

    .line 118
    iget-object v0, p0, Lcom/shencoder/pagergridlayoutmanager/a;->b:Landroidx/recyclerview/widget/RecyclerView;

    .line 119
    .line 120
    neg-int p1, p1

    .line 121
    invoke-virtual {v0, p1}, Landroid/view/View;->canScrollVertically(I)Z

    .line 122
    .line 123
    .line 124
    move-result p1

    .line 125
    invoke-interface {p2, p1}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    .line 126
    .line 127
    .line 128
    goto :goto_0

    .line 129
    :cond_5
    invoke-virtual {p2, v0}, Landroid/view/MotionEvent;->getPointerId(I)I

    .line 130
    .line 131
    .line 132
    move-result p1

    .line 133
    iput p1, p0, Lcom/shencoder/pagergridlayoutmanager/a;->c:I

    .line 134
    .line 135
    invoke-virtual {p2, v0}, Landroid/view/MotionEvent;->getX(I)F

    .line 136
    .line 137
    .line 138
    move-result p1

    .line 139
    add-float/2addr p1, v2

    .line 140
    float-to-int p1, p1

    .line 141
    iput p1, p0, Lcom/shencoder/pagergridlayoutmanager/a;->d:I

    .line 142
    .line 143
    invoke-virtual {p2, v0}, Landroid/view/MotionEvent;->getY(I)F

    .line 144
    .line 145
    .line 146
    move-result p1

    .line 147
    add-float/2addr p1, v2

    .line 148
    float-to-int p1, p1

    .line 149
    iput p1, p0, Lcom/shencoder/pagergridlayoutmanager/a;->e:I

    .line 150
    .line 151
    iget-object p1, p0, Lcom/shencoder/pagergridlayoutmanager/a;->b:Landroidx/recyclerview/widget/RecyclerView;

    .line 152
    .line 153
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    .line 154
    .line 155
    .line 156
    move-result-object p1

    .line 157
    const/4 p2, 0x1

    .line 158
    invoke-interface {p1, p2}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    .line 159
    .line 160
    .line 161
    :cond_6
    :goto_0
    return v1
.end method
