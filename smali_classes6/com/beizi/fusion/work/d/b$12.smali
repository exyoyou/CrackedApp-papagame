.class Lcom/beizi/fusion/work/d/b$12;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/beizi/fusion/work/d/b;->aV()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:[F

.field final synthetic b:Lcom/beizi/fusion/work/d/b;


# direct methods
.method constructor <init>(Lcom/beizi/fusion/work/d/b;[F)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/beizi/fusion/work/d/b$12;->b:Lcom/beizi/fusion/work/d/b;

    .line 2
    .line 3
    iput-object p2, p0, Lcom/beizi/fusion/work/d/b$12;->a:[F

    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 11

    .line 1
    const/4 p1, 0x0

    .line 2
    :try_start_0
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    .line 3
    .line 4
    .line 5
    move-result v0

    .line 6
    const/4 v1, 0x3

    .line 7
    const/4 v2, 0x2

    .line 8
    const/4 v3, 0x1

    .line 9
    if-nez v0, :cond_0

    .line 10
    .line 11
    iget-object v0, p0, Lcom/beizi/fusion/work/d/b$12;->a:[F

    .line 12
    .line 13
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    .line 14
    .line 15
    .line 16
    move-result v4

    .line 17
    aput v4, v0, p1

    .line 18
    .line 19
    iget-object v0, p0, Lcom/beizi/fusion/work/d/b$12;->a:[F

    .line 20
    .line 21
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    .line 22
    .line 23
    .line 24
    move-result v4

    .line 25
    aput v4, v0, v3

    .line 26
    .line 27
    iget-object v0, p0, Lcom/beizi/fusion/work/d/b$12;->a:[F

    .line 28
    .line 29
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawX()F

    .line 30
    .line 31
    .line 32
    move-result v4

    .line 33
    aput v4, v0, v2

    .line 34
    .line 35
    iget-object v0, p0, Lcom/beizi/fusion/work/d/b$12;->a:[F

    .line 36
    .line 37
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawY()F

    .line 38
    .line 39
    .line 40
    move-result v4

    .line 41
    aput v4, v0, v1

    .line 42
    .line 43
    iget-object v0, p0, Lcom/beizi/fusion/work/d/b$12;->b:Lcom/beizi/fusion/work/d/b;

    .line 44
    .line 45
    invoke-static {v0}, Lcom/beizi/fusion/work/d/b;->k(Lcom/beizi/fusion/work/d/b;)Z

    .line 46
    .line 47
    .line 48
    move-result v0

    .line 49
    if-eqz v0, :cond_0

    .line 50
    .line 51
    iget-object v4, p0, Lcom/beizi/fusion/work/d/b$12;->b:Lcom/beizi/fusion/work/d/b;

    .line 52
    .line 53
    invoke-static {v4}, Lcom/beizi/fusion/work/d/b;->C(Lcom/beizi/fusion/work/d/b;)Landroid/widget/FrameLayout;

    .line 54
    .line 55
    .line 56
    move-result-object v5

    .line 57
    iget-object v0, p0, Lcom/beizi/fusion/work/d/b$12;->b:Lcom/beizi/fusion/work/d/b;

    .line 58
    .line 59
    iget-object v6, v0, Lcom/beizi/fusion/work/d/a;->s:Landroid/widget/FrameLayout;

    .line 60
    .line 61
    iget-object v0, p0, Lcom/beizi/fusion/work/d/b$12;->a:[F

    .line 62
    .line 63
    aget v7, v0, p1

    .line 64
    .line 65
    aget v8, v0, v3

    .line 66
    .line 67
    aget v9, v0, v2

    .line 68
    .line 69
    aget v10, v0, v1

    .line 70
    .line 71
    invoke-static/range {v4 .. v10}, Lcom/beizi/fusion/work/d/b;->a(Lcom/beizi/fusion/work/d/b;Landroid/view/View;Landroid/view/View;FFFF)[Ljava/lang/String;

    .line 72
    .line 73
    .line 74
    move-result-object v0

    .line 75
    iget-object v4, p0, Lcom/beizi/fusion/work/d/b$12;->b:Lcom/beizi/fusion/work/d/b;

    .line 76
    .line 77
    invoke-static {v4, v0, p1}, Lcom/beizi/fusion/work/d/b;->a(Lcom/beizi/fusion/work/d/b;[Ljava/lang/String;I)V

    .line 78
    .line 79
    .line 80
    :cond_0
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    .line 81
    .line 82
    .line 83
    move-result p2

    .line 84
    if-ne p2, v3, :cond_1

    .line 85
    .line 86
    iget-object p2, p0, Lcom/beizi/fusion/work/d/b$12;->b:Lcom/beizi/fusion/work/d/b;

    .line 87
    .line 88
    invoke-static {p2}, Lcom/beizi/fusion/work/d/b;->l(Lcom/beizi/fusion/work/d/b;)Z

    .line 89
    .line 90
    .line 91
    move-result p2

    .line 92
    if-eqz p2, :cond_1

    .line 93
    .line 94
    iget-object v4, p0, Lcom/beizi/fusion/work/d/b$12;->b:Lcom/beizi/fusion/work/d/b;

    .line 95
    .line 96
    invoke-static {v4}, Lcom/beizi/fusion/work/d/b;->C(Lcom/beizi/fusion/work/d/b;)Landroid/widget/FrameLayout;

    .line 97
    .line 98
    .line 99
    move-result-object v5

    .line 100
    iget-object p2, p0, Lcom/beizi/fusion/work/d/b$12;->b:Lcom/beizi/fusion/work/d/b;

    .line 101
    .line 102
    iget-object v6, p2, Lcom/beizi/fusion/work/d/a;->s:Landroid/widget/FrameLayout;

    .line 103
    .line 104
    iget-object p2, p0, Lcom/beizi/fusion/work/d/b$12;->a:[F

    .line 105
    .line 106
    aget v7, p2, p1

    .line 107
    .line 108
    aget v8, p2, v3

    .line 109
    .line 110
    aget v9, p2, v2

    .line 111
    .line 112
    aget v10, p2, v1

    .line 113
    .line 114
    invoke-static/range {v4 .. v10}, Lcom/beizi/fusion/work/d/b;->a(Lcom/beizi/fusion/work/d/b;Landroid/view/View;Landroid/view/View;FFFF)[Ljava/lang/String;

    .line 115
    .line 116
    .line 117
    move-result-object p2

    .line 118
    iget-object v0, p0, Lcom/beizi/fusion/work/d/b$12;->b:Lcom/beizi/fusion/work/d/b;

    .line 119
    .line 120
    invoke-static {v0, p2, p1}, Lcom/beizi/fusion/work/d/b;->a(Lcom/beizi/fusion/work/d/b;[Ljava/lang/String;I)V

    .line 121
    .line 122
    .line 123
    :cond_1
    iget-object p2, p0, Lcom/beizi/fusion/work/d/b$12;->b:Lcom/beizi/fusion/work/d/b;

    .line 124
    .line 125
    invoke-static {p2}, Lcom/beizi/fusion/work/d/b;->k(Lcom/beizi/fusion/work/d/b;)Z

    .line 126
    .line 127
    .line 128
    move-result p2

    .line 129
    if-nez p2, :cond_2

    .line 130
    .line 131
    iget-object p2, p0, Lcom/beizi/fusion/work/d/b$12;->b:Lcom/beizi/fusion/work/d/b;

    .line 132
    .line 133
    invoke-static {p2}, Lcom/beizi/fusion/work/d/b;->l(Lcom/beizi/fusion/work/d/b;)Z

    .line 134
    .line 135
    .line 136
    move-result p2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 137
    if-eqz p2, :cond_3

    .line 138
    .line 139
    :cond_2
    return v3

    .line 140
    :catch_0
    move-exception p2

    .line 141
    invoke-virtual {p2}, Ljava/lang/Throwable;->printStackTrace()V

    .line 142
    .line 143
    .line 144
    :cond_3
    return p1
.end method
