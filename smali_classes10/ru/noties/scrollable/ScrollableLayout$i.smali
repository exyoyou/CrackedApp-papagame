.class Lru/noties/scrollable/ScrollableLayout$i;
.super Lru/noties/scrollable/h;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lru/noties/scrollable/ScrollableLayout;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "i"
.end annotation


# instance fields
.field private final b:I

.field final synthetic c:Lru/noties/scrollable/ScrollableLayout;


# direct methods
.method private constructor <init>(Lru/noties/scrollable/ScrollableLayout;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010
        }
        names = {
            "this$0"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lru/noties/scrollable/ScrollableLayout$i;->c:Lru/noties/scrollable/ScrollableLayout;

    invoke-direct {p0}, Lru/noties/scrollable/h;-><init>()V

    .line 2
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object p1

    .line 3
    invoke-virtual {p1}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result p1

    iput p1, p0, Lru/noties/scrollable/ScrollableLayout$i;->b:I

    return-void
.end method

.method synthetic constructor <init>(Lru/noties/scrollable/ScrollableLayout;Lru/noties/scrollable/ScrollableLayout$a;)V
    .locals 0

    .line 4
    invoke-direct {p0, p1}, Lru/noties/scrollable/ScrollableLayout$i;-><init>(Lru/noties/scrollable/ScrollableLayout;)V

    return-void
.end method


# virtual methods
.method public onScroll(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "e1",
            "e2",
            "distanceX",
            "distanceY"
        }
    .end annotation

    .line 1
    invoke-static {p3}, Ljava/lang/Math;->abs(F)F

    .line 2
    .line 3
    .line 4
    move-result p1

    .line 5
    invoke-static {p4}, Ljava/lang/Math;->abs(F)F

    .line 6
    .line 7
    .line 8
    move-result p2

    .line 9
    const/4 p3, 0x0

    .line 10
    cmpl-float p2, p1, p2

    .line 11
    .line 12
    if-gtz p2, :cond_b

    .line 13
    .line 14
    iget p2, p0, Lru/noties/scrollable/ScrollableLayout$i;->b:I

    .line 15
    .line 16
    int-to-float p2, p2

    .line 17
    cmpl-float p1, p1, p2

    .line 18
    .line 19
    if-lez p1, :cond_0

    .line 20
    .line 21
    goto/16 :goto_4

    .line 22
    .line 23
    :cond_0
    iget-object p1, p0, Lru/noties/scrollable/ScrollableLayout$i;->c:Lru/noties/scrollable/ScrollableLayout;

    .line 24
    .line 25
    invoke-virtual {p1}, Landroid/view/View;->getScrollY()I

    .line 26
    .line 27
    .line 28
    move-result p1

    .line 29
    const/high16 p2, 0x3f000000    # 0.5f

    .line 30
    .line 31
    add-float/2addr p4, p2

    .line 32
    float-to-int p2, p4

    .line 33
    iget-object p4, p0, Lru/noties/scrollable/ScrollableLayout$i;->c:Lru/noties/scrollable/ScrollableLayout;

    .line 34
    .line 35
    invoke-static {p4}, Lru/noties/scrollable/ScrollableLayout;->f(Lru/noties/scrollable/ScrollableLayout;)Lru/noties/scrollable/l;

    .line 36
    .line 37
    .line 38
    move-result-object p4

    .line 39
    const/4 v0, 0x1

    .line 40
    if-nez p4, :cond_2

    .line 41
    .line 42
    iget-object p4, p0, Lru/noties/scrollable/ScrollableLayout$i;->c:Lru/noties/scrollable/ScrollableLayout;

    .line 43
    .line 44
    add-int/2addr p2, p1

    .line 45
    invoke-virtual {p4, p3, p2}, Lru/noties/scrollable/ScrollableLayout;->scrollTo(II)V

    .line 46
    .line 47
    .line 48
    iget-object p2, p0, Lru/noties/scrollable/ScrollableLayout$i;->c:Lru/noties/scrollable/ScrollableLayout;

    .line 49
    .line 50
    invoke-virtual {p2}, Landroid/view/View;->getScrollY()I

    .line 51
    .line 52
    .line 53
    move-result p2

    .line 54
    if-eq p1, p2, :cond_1

    .line 55
    .line 56
    const/4 p3, 0x1

    .line 57
    :cond_1
    return p3

    .line 58
    :cond_2
    const/4 p4, -0x1

    .line 59
    if-gez p2, :cond_3

    .line 60
    .line 61
    const/4 v1, -0x1

    .line 62
    goto :goto_0

    .line 63
    :cond_3
    const/4 v1, 0x1

    .line 64
    :goto_0
    iget-object v2, p0, Lru/noties/scrollable/ScrollableLayout$i;->c:Lru/noties/scrollable/ScrollableLayout;

    .line 65
    .line 66
    invoke-static {v2}, Lru/noties/scrollable/ScrollableLayout;->g(Lru/noties/scrollable/ScrollableLayout;)Z

    .line 67
    .line 68
    .line 69
    move-result v2

    .line 70
    if-nez v2, :cond_5

    .line 71
    .line 72
    iget-object v2, p0, Lru/noties/scrollable/ScrollableLayout$i;->c:Lru/noties/scrollable/ScrollableLayout;

    .line 73
    .line 74
    if-nez p1, :cond_4

    .line 75
    .line 76
    if-ne v1, p4, :cond_4

    .line 77
    .line 78
    const/4 p4, 0x1

    .line 79
    goto :goto_1

    .line 80
    :cond_4
    const/4 p4, 0x0

    .line 81
    :goto_1
    invoke-static {v2, p4}, Lru/noties/scrollable/ScrollableLayout;->h(Lru/noties/scrollable/ScrollableLayout;Z)Z

    .line 82
    .line 83
    .line 84
    :cond_5
    iget-object p4, p0, Lru/noties/scrollable/ScrollableLayout$i;->c:Lru/noties/scrollable/ScrollableLayout;

    .line 85
    .line 86
    invoke-static {p4}, Lru/noties/scrollable/ScrollableLayout;->g(Lru/noties/scrollable/ScrollableLayout;)Z

    .line 87
    .line 88
    .line 89
    move-result p4

    .line 90
    if-eqz p4, :cond_8

    .line 91
    .line 92
    if-ne v1, v0, :cond_7

    .line 93
    .line 94
    if-nez p1, :cond_7

    .line 95
    .line 96
    iget-object p4, p0, Lru/noties/scrollable/ScrollableLayout$i;->c:Lru/noties/scrollable/ScrollableLayout;

    .line 97
    .line 98
    invoke-static {p4}, Lru/noties/scrollable/ScrollableLayout;->f(Lru/noties/scrollable/ScrollableLayout;)Lru/noties/scrollable/l;

    .line 99
    .line 100
    .line 101
    move-result-object p4

    .line 102
    iget-object v1, p0, Lru/noties/scrollable/ScrollableLayout$i;->c:Lru/noties/scrollable/ScrollableLayout;

    .line 103
    .line 104
    invoke-interface {p4, v1, p2}, Lru/noties/scrollable/l;->b(Lru/noties/scrollable/ScrollableLayout;I)Z

    .line 105
    .line 106
    .line 107
    move-result p4

    .line 108
    if-eqz p4, :cond_6

    .line 109
    .line 110
    iget-object p4, p0, Lru/noties/scrollable/ScrollableLayout$i;->c:Lru/noties/scrollable/ScrollableLayout;

    .line 111
    .line 112
    invoke-static {p4}, Lru/noties/scrollable/ScrollableLayout;->f(Lru/noties/scrollable/ScrollableLayout;)Lru/noties/scrollable/l;

    .line 113
    .line 114
    .line 115
    move-result-object p4

    .line 116
    iget-object v1, p0, Lru/noties/scrollable/ScrollableLayout$i;->c:Lru/noties/scrollable/ScrollableLayout;

    .line 117
    .line 118
    invoke-interface {p4, v1, p2}, Lru/noties/scrollable/l;->a(Lru/noties/scrollable/ScrollableLayout;I)V

    .line 119
    .line 120
    .line 121
    const/4 p4, 0x1

    .line 122
    goto :goto_3

    .line 123
    :cond_6
    iget-object p4, p0, Lru/noties/scrollable/ScrollableLayout$i;->c:Lru/noties/scrollable/ScrollableLayout;

    .line 124
    .line 125
    invoke-static {p4}, Lru/noties/scrollable/ScrollableLayout;->f(Lru/noties/scrollable/ScrollableLayout;)Lru/noties/scrollable/l;

    .line 126
    .line 127
    .line 128
    move-result-object p4

    .line 129
    invoke-interface {p4}, Lru/noties/scrollable/l;->clear()V

    .line 130
    .line 131
    .line 132
    iget-object p4, p0, Lru/noties/scrollable/ScrollableLayout$i;->c:Lru/noties/scrollable/ScrollableLayout;

    .line 133
    .line 134
    invoke-static {p4, p3}, Lru/noties/scrollable/ScrollableLayout;->h(Lru/noties/scrollable/ScrollableLayout;Z)Z

    .line 135
    .line 136
    .line 137
    goto :goto_2

    .line 138
    :cond_7
    iget-object p4, p0, Lru/noties/scrollable/ScrollableLayout$i;->c:Lru/noties/scrollable/ScrollableLayout;

    .line 139
    .line 140
    invoke-static {p4}, Lru/noties/scrollable/ScrollableLayout;->f(Lru/noties/scrollable/ScrollableLayout;)Lru/noties/scrollable/l;

    .line 141
    .line 142
    .line 143
    move-result-object p4

    .line 144
    iget-object v1, p0, Lru/noties/scrollable/ScrollableLayout$i;->c:Lru/noties/scrollable/ScrollableLayout;

    .line 145
    .line 146
    invoke-interface {p4, v1, p2}, Lru/noties/scrollable/l;->a(Lru/noties/scrollable/ScrollableLayout;I)V

    .line 147
    .line 148
    .line 149
    :cond_8
    :goto_2
    const/4 p4, 0x0

    .line 150
    :goto_3
    if-nez p4, :cond_a

    .line 151
    .line 152
    iget-object p4, p0, Lru/noties/scrollable/ScrollableLayout$i;->c:Lru/noties/scrollable/ScrollableLayout;

    .line 153
    .line 154
    add-int/2addr p2, p1

    .line 155
    invoke-virtual {p4, p3, p2}, Lru/noties/scrollable/ScrollableLayout;->scrollTo(II)V

    .line 156
    .line 157
    .line 158
    iget-object p2, p0, Lru/noties/scrollable/ScrollableLayout$i;->c:Lru/noties/scrollable/ScrollableLayout;

    .line 159
    .line 160
    invoke-virtual {p2}, Landroid/view/View;->getScrollY()I

    .line 161
    .line 162
    .line 163
    move-result p2

    .line 164
    if-eq p1, p2, :cond_9

    .line 165
    .line 166
    const/4 p3, 0x1

    .line 167
    :cond_9
    return p3

    .line 168
    :cond_a
    return v0

    .line 169
    :cond_b
    :goto_4
    return p3
.end method
