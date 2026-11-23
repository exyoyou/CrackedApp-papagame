.class Lcom/join/mgps/customview/SlidingTabForumLayout$d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/join/mgps/customview/SlidingTabForumLayout;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic b:Lcom/join/mgps/customview/SlidingTabForumLayout;


# direct methods
.method constructor <init>(Lcom/join/mgps/customview/SlidingTabForumLayout;)V
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
    iput-object p1, p0, Lcom/join/mgps/customview/SlidingTabForumLayout$d;->b:Lcom/join/mgps/customview/SlidingTabForumLayout;

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
    iget-object v0, p0, Lcom/join/mgps/customview/SlidingTabForumLayout$d;->b:Lcom/join/mgps/customview/SlidingTabForumLayout;

    .line 2
    .line 3
    invoke-virtual {v0}, Landroid/view/View;->getScrollX()I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    iget-object v1, p0, Lcom/join/mgps/customview/SlidingTabForumLayout$d;->b:Lcom/join/mgps/customview/SlidingTabForumLayout;

    .line 8
    .line 9
    invoke-static {v1}, Lcom/join/mgps/customview/SlidingTabForumLayout;->l(Lcom/join/mgps/customview/SlidingTabForumLayout;)I

    .line 10
    .line 11
    .line 12
    move-result v1

    .line 13
    const-string v2, "scrollRunnable"

    .line 14
    .line 15
    if-ne v0, v1, :cond_2

    .line 16
    .line 17
    const-string v0, "\u505c\u6b62\u6eda\u52a8"

    .line 18
    .line 19
    filled-new-array {v2, v0}, [Ljava/lang/String;

    .line 20
    .line 21
    .line 22
    move-result-object v0

    .line 23
    invoke-static {v0}, Lcom/join/mgps/Util/h1;->e([Ljava/lang/String;)V

    .line 24
    .line 25
    .line 26
    iget-object v0, p0, Lcom/join/mgps/customview/SlidingTabForumLayout$d;->b:Lcom/join/mgps/customview/SlidingTabForumLayout;

    .line 27
    .line 28
    sget-object v1, Lcom/join/mgps/customview/SlidingTabForumLayout$ScrollType;->IDLE:Lcom/join/mgps/customview/SlidingTabForumLayout$ScrollType;

    .line 29
    .line 30
    invoke-static {v0, v1}, Lcom/join/mgps/customview/SlidingTabForumLayout;->o(Lcom/join/mgps/customview/SlidingTabForumLayout;Lcom/join/mgps/customview/SlidingTabForumLayout$ScrollType;)Lcom/join/mgps/customview/SlidingTabForumLayout$ScrollType;

    .line 31
    .line 32
    .line 33
    iget-object v0, p0, Lcom/join/mgps/customview/SlidingTabForumLayout$d;->b:Lcom/join/mgps/customview/SlidingTabForumLayout;

    .line 34
    .line 35
    invoke-static {v0}, Lcom/join/mgps/customview/SlidingTabForumLayout;->p(Lcom/join/mgps/customview/SlidingTabForumLayout;)Lcom/join/mgps/customview/SlidingTabForumLayout$f;

    .line 36
    .line 37
    .line 38
    move-result-object v0

    .line 39
    if-eqz v0, :cond_0

    .line 40
    .line 41
    iget-object v0, p0, Lcom/join/mgps/customview/SlidingTabForumLayout$d;->b:Lcom/join/mgps/customview/SlidingTabForumLayout;

    .line 42
    .line 43
    invoke-static {v0}, Lcom/join/mgps/customview/SlidingTabForumLayout;->p(Lcom/join/mgps/customview/SlidingTabForumLayout;)Lcom/join/mgps/customview/SlidingTabForumLayout$f;

    .line 44
    .line 45
    .line 46
    move-result-object v0

    .line 47
    iget-object v1, p0, Lcom/join/mgps/customview/SlidingTabForumLayout$d;->b:Lcom/join/mgps/customview/SlidingTabForumLayout;

    .line 48
    .line 49
    invoke-static {v1}, Lcom/join/mgps/customview/SlidingTabForumLayout;->n(Lcom/join/mgps/customview/SlidingTabForumLayout;)Lcom/join/mgps/customview/SlidingTabForumLayout$ScrollType;

    .line 50
    .line 51
    .line 52
    move-result-object v1

    .line 53
    invoke-interface {v0, v1}, Lcom/join/mgps/customview/SlidingTabForumLayout$f;->a(Lcom/join/mgps/customview/SlidingTabForumLayout$ScrollType;)V

    .line 54
    .line 55
    .line 56
    :cond_0
    iget-object v0, p0, Lcom/join/mgps/customview/SlidingTabForumLayout$d;->b:Lcom/join/mgps/customview/SlidingTabForumLayout;

    .line 57
    .line 58
    invoke-static {v0}, Lcom/join/mgps/customview/SlidingTabForumLayout;->q(Lcom/join/mgps/customview/SlidingTabForumLayout;)Landroid/os/Handler;

    .line 59
    .line 60
    .line 61
    move-result-object v0

    .line 62
    if-eqz v0, :cond_1

    .line 63
    .line 64
    iget-object v0, p0, Lcom/join/mgps/customview/SlidingTabForumLayout$d;->b:Lcom/join/mgps/customview/SlidingTabForumLayout;

    .line 65
    .line 66
    invoke-static {v0}, Lcom/join/mgps/customview/SlidingTabForumLayout;->q(Lcom/join/mgps/customview/SlidingTabForumLayout;)Landroid/os/Handler;

    .line 67
    .line 68
    .line 69
    move-result-object v0

    .line 70
    invoke-virtual {v0, p0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 71
    .line 72
    .line 73
    :cond_1
    return-void

    .line 74
    :cond_2
    const-string v0, "Fling..."

    .line 75
    .line 76
    filled-new-array {v2, v0}, [Ljava/lang/String;

    .line 77
    .line 78
    .line 79
    move-result-object v0

    .line 80
    invoke-static {v0}, Lcom/join/mgps/Util/h1;->e([Ljava/lang/String;)V

    .line 81
    .line 82
    .line 83
    iget-object v0, p0, Lcom/join/mgps/customview/SlidingTabForumLayout$d;->b:Lcom/join/mgps/customview/SlidingTabForumLayout;

    .line 84
    .line 85
    sget-object v1, Lcom/join/mgps/customview/SlidingTabForumLayout$ScrollType;->FLING:Lcom/join/mgps/customview/SlidingTabForumLayout$ScrollType;

    .line 86
    .line 87
    invoke-static {v0, v1}, Lcom/join/mgps/customview/SlidingTabForumLayout;->o(Lcom/join/mgps/customview/SlidingTabForumLayout;Lcom/join/mgps/customview/SlidingTabForumLayout$ScrollType;)Lcom/join/mgps/customview/SlidingTabForumLayout$ScrollType;

    .line 88
    .line 89
    .line 90
    iget-object v0, p0, Lcom/join/mgps/customview/SlidingTabForumLayout$d;->b:Lcom/join/mgps/customview/SlidingTabForumLayout;

    .line 91
    .line 92
    invoke-static {v0}, Lcom/join/mgps/customview/SlidingTabForumLayout;->p(Lcom/join/mgps/customview/SlidingTabForumLayout;)Lcom/join/mgps/customview/SlidingTabForumLayout$f;

    .line 93
    .line 94
    .line 95
    move-result-object v0

    .line 96
    if-eqz v0, :cond_3

    .line 97
    .line 98
    iget-object v0, p0, Lcom/join/mgps/customview/SlidingTabForumLayout$d;->b:Lcom/join/mgps/customview/SlidingTabForumLayout;

    .line 99
    .line 100
    invoke-static {v0}, Lcom/join/mgps/customview/SlidingTabForumLayout;->p(Lcom/join/mgps/customview/SlidingTabForumLayout;)Lcom/join/mgps/customview/SlidingTabForumLayout$f;

    .line 101
    .line 102
    .line 103
    move-result-object v0

    .line 104
    iget-object v1, p0, Lcom/join/mgps/customview/SlidingTabForumLayout$d;->b:Lcom/join/mgps/customview/SlidingTabForumLayout;

    .line 105
    .line 106
    invoke-static {v1}, Lcom/join/mgps/customview/SlidingTabForumLayout;->n(Lcom/join/mgps/customview/SlidingTabForumLayout;)Lcom/join/mgps/customview/SlidingTabForumLayout$ScrollType;

    .line 107
    .line 108
    .line 109
    move-result-object v1

    .line 110
    invoke-interface {v0, v1}, Lcom/join/mgps/customview/SlidingTabForumLayout$f;->a(Lcom/join/mgps/customview/SlidingTabForumLayout$ScrollType;)V

    .line 111
    .line 112
    .line 113
    :cond_3
    iget-object v0, p0, Lcom/join/mgps/customview/SlidingTabForumLayout$d;->b:Lcom/join/mgps/customview/SlidingTabForumLayout;

    .line 114
    .line 115
    invoke-virtual {v0}, Landroid/view/View;->getScrollX()I

    .line 116
    .line 117
    .line 118
    move-result v1

    .line 119
    invoke-static {v0, v1}, Lcom/join/mgps/customview/SlidingTabForumLayout;->m(Lcom/join/mgps/customview/SlidingTabForumLayout;I)I

    .line 120
    .line 121
    .line 122
    iget-object v0, p0, Lcom/join/mgps/customview/SlidingTabForumLayout$d;->b:Lcom/join/mgps/customview/SlidingTabForumLayout;

    .line 123
    .line 124
    invoke-static {v0}, Lcom/join/mgps/customview/SlidingTabForumLayout;->q(Lcom/join/mgps/customview/SlidingTabForumLayout;)Landroid/os/Handler;

    .line 125
    .line 126
    .line 127
    move-result-object v0

    .line 128
    if-eqz v0, :cond_4

    .line 129
    .line 130
    iget-object v0, p0, Lcom/join/mgps/customview/SlidingTabForumLayout$d;->b:Lcom/join/mgps/customview/SlidingTabForumLayout;

    .line 131
    .line 132
    invoke-static {v0}, Lcom/join/mgps/customview/SlidingTabForumLayout;->q(Lcom/join/mgps/customview/SlidingTabForumLayout;)Landroid/os/Handler;

    .line 133
    .line 134
    .line 135
    move-result-object v0

    .line 136
    iget-object v1, p0, Lcom/join/mgps/customview/SlidingTabForumLayout$d;->b:Lcom/join/mgps/customview/SlidingTabForumLayout;

    .line 137
    .line 138
    invoke-static {v1}, Lcom/join/mgps/customview/SlidingTabForumLayout;->r(Lcom/join/mgps/customview/SlidingTabForumLayout;)I

    .line 139
    .line 140
    .line 141
    move-result v1

    .line 142
    int-to-long v1, v1

    .line 143
    invoke-virtual {v0, p0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 144
    .line 145
    .line 146
    :cond_4
    return-void
.end method
