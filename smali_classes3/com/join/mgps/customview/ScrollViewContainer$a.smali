.class Lcom/join/mgps/customview/ScrollViewContainer$a;
.super Landroid/os/Handler;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/join/mgps/customview/ScrollViewContainer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/join/mgps/customview/ScrollViewContainer;


# direct methods
.method constructor <init>(Lcom/join/mgps/customview/ScrollViewContainer;)V
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
    iput-object p1, p0, Lcom/join/mgps/customview/ScrollViewContainer$a;->a:Lcom/join/mgps/customview/ScrollViewContainer;

    .line 2
    .line 3
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "msg"
        }
    .end annotation

    .line 1
    iget-object p1, p0, Lcom/join/mgps/customview/ScrollViewContainer$a;->a:Lcom/join/mgps/customview/ScrollViewContainer;

    .line 2
    .line 3
    invoke-static {p1}, Lcom/join/mgps/customview/ScrollViewContainer;->a(Lcom/join/mgps/customview/ScrollViewContainer;)F

    .line 4
    .line 5
    .line 6
    move-result p1

    .line 7
    const/4 v0, 0x0

    .line 8
    cmpl-float p1, p1, v0

    .line 9
    .line 10
    if-eqz p1, :cond_2

    .line 11
    .line 12
    iget-object p1, p0, Lcom/join/mgps/customview/ScrollViewContainer$a;->a:Lcom/join/mgps/customview/ScrollViewContainer;

    .line 13
    .line 14
    invoke-static {p1}, Lcom/join/mgps/customview/ScrollViewContainer;->e(Lcom/join/mgps/customview/ScrollViewContainer;)I

    .line 15
    .line 16
    .line 17
    move-result p1

    .line 18
    const/4 v1, 0x2

    .line 19
    const/high16 v2, 0x40d00000    # 6.5f

    .line 20
    .line 21
    const/4 v3, 0x1

    .line 22
    if-nez p1, :cond_0

    .line 23
    .line 24
    iget-object p1, p0, Lcom/join/mgps/customview/ScrollViewContainer$a;->a:Lcom/join/mgps/customview/ScrollViewContainer;

    .line 25
    .line 26
    invoke-static {p1, v2}, Lcom/join/mgps/customview/ScrollViewContainer;->d(Lcom/join/mgps/customview/ScrollViewContainer;F)F

    .line 27
    .line 28
    .line 29
    iget-object p1, p0, Lcom/join/mgps/customview/ScrollViewContainer$a;->a:Lcom/join/mgps/customview/ScrollViewContainer;

    .line 30
    .line 31
    invoke-static {p1}, Lcom/join/mgps/customview/ScrollViewContainer;->a(Lcom/join/mgps/customview/ScrollViewContainer;)F

    .line 32
    .line 33
    .line 34
    move-result p1

    .line 35
    iget-object v0, p0, Lcom/join/mgps/customview/ScrollViewContainer$a;->a:Lcom/join/mgps/customview/ScrollViewContainer;

    .line 36
    .line 37
    invoke-static {v0}, Lcom/join/mgps/customview/ScrollViewContainer;->g(Lcom/join/mgps/customview/ScrollViewContainer;)I

    .line 38
    .line 39
    .line 40
    move-result v0

    .line 41
    neg-int v0, v0

    .line 42
    int-to-float v0, v0

    .line 43
    cmpg-float p1, p1, v0

    .line 44
    .line 45
    if-gtz p1, :cond_2

    .line 46
    .line 47
    iget-object p1, p0, Lcom/join/mgps/customview/ScrollViewContainer$a;->a:Lcom/join/mgps/customview/ScrollViewContainer;

    .line 48
    .line 49
    invoke-static {p1}, Lcom/join/mgps/customview/ScrollViewContainer;->g(Lcom/join/mgps/customview/ScrollViewContainer;)I

    .line 50
    .line 51
    .line 52
    move-result v0

    .line 53
    neg-int v0, v0

    .line 54
    int-to-float v0, v0

    .line 55
    invoke-static {p1, v0}, Lcom/join/mgps/customview/ScrollViewContainer;->b(Lcom/join/mgps/customview/ScrollViewContainer;F)F

    .line 56
    .line 57
    .line 58
    iget-object p1, p0, Lcom/join/mgps/customview/ScrollViewContainer$a;->a:Lcom/join/mgps/customview/ScrollViewContainer;

    .line 59
    .line 60
    invoke-static {p1, v1}, Lcom/join/mgps/customview/ScrollViewContainer;->f(Lcom/join/mgps/customview/ScrollViewContainer;I)I

    .line 61
    .line 62
    .line 63
    iget-object p1, p0, Lcom/join/mgps/customview/ScrollViewContainer$a;->a:Lcom/join/mgps/customview/ScrollViewContainer;

    .line 64
    .line 65
    invoke-static {p1, v3}, Lcom/join/mgps/customview/ScrollViewContainer;->i(Lcom/join/mgps/customview/ScrollViewContainer;I)I

    .line 66
    .line 67
    .line 68
    goto :goto_0

    .line 69
    :cond_0
    iget-object p1, p0, Lcom/join/mgps/customview/ScrollViewContainer$a;->a:Lcom/join/mgps/customview/ScrollViewContainer;

    .line 70
    .line 71
    invoke-static {p1}, Lcom/join/mgps/customview/ScrollViewContainer;->e(Lcom/join/mgps/customview/ScrollViewContainer;)I

    .line 72
    .line 73
    .line 74
    move-result p1

    .line 75
    if-ne p1, v3, :cond_1

    .line 76
    .line 77
    iget-object p1, p0, Lcom/join/mgps/customview/ScrollViewContainer$a;->a:Lcom/join/mgps/customview/ScrollViewContainer;

    .line 78
    .line 79
    invoke-static {p1, v2}, Lcom/join/mgps/customview/ScrollViewContainer;->c(Lcom/join/mgps/customview/ScrollViewContainer;F)F

    .line 80
    .line 81
    .line 82
    iget-object p1, p0, Lcom/join/mgps/customview/ScrollViewContainer$a;->a:Lcom/join/mgps/customview/ScrollViewContainer;

    .line 83
    .line 84
    invoke-static {p1}, Lcom/join/mgps/customview/ScrollViewContainer;->a(Lcom/join/mgps/customview/ScrollViewContainer;)F

    .line 85
    .line 86
    .line 87
    move-result p1

    .line 88
    cmpl-float p1, p1, v0

    .line 89
    .line 90
    if-ltz p1, :cond_2

    .line 91
    .line 92
    iget-object p1, p0, Lcom/join/mgps/customview/ScrollViewContainer$a;->a:Lcom/join/mgps/customview/ScrollViewContainer;

    .line 93
    .line 94
    invoke-static {p1, v0}, Lcom/join/mgps/customview/ScrollViewContainer;->b(Lcom/join/mgps/customview/ScrollViewContainer;F)F

    .line 95
    .line 96
    .line 97
    iget-object p1, p0, Lcom/join/mgps/customview/ScrollViewContainer$a;->a:Lcom/join/mgps/customview/ScrollViewContainer;

    .line 98
    .line 99
    invoke-static {p1, v1}, Lcom/join/mgps/customview/ScrollViewContainer;->f(Lcom/join/mgps/customview/ScrollViewContainer;I)I

    .line 100
    .line 101
    .line 102
    iget-object p1, p0, Lcom/join/mgps/customview/ScrollViewContainer$a;->a:Lcom/join/mgps/customview/ScrollViewContainer;

    .line 103
    .line 104
    const/4 v0, 0x0

    .line 105
    invoke-static {p1, v0}, Lcom/join/mgps/customview/ScrollViewContainer;->i(Lcom/join/mgps/customview/ScrollViewContainer;I)I

    .line 106
    .line 107
    .line 108
    goto :goto_0

    .line 109
    :cond_1
    iget-object p1, p0, Lcom/join/mgps/customview/ScrollViewContainer$a;->a:Lcom/join/mgps/customview/ScrollViewContainer;

    .line 110
    .line 111
    invoke-static {p1}, Lcom/join/mgps/customview/ScrollViewContainer;->j(Lcom/join/mgps/customview/ScrollViewContainer;)Lcom/join/mgps/customview/ScrollViewContainer$d;

    .line 112
    .line 113
    .line 114
    move-result-object p1

    .line 115
    invoke-virtual {p1}, Lcom/join/mgps/customview/ScrollViewContainer$d;->a()V

    .line 116
    .line 117
    .line 118
    :cond_2
    :goto_0
    iget-object p1, p0, Lcom/join/mgps/customview/ScrollViewContainer$a;->a:Lcom/join/mgps/customview/ScrollViewContainer;

    .line 119
    .line 120
    invoke-virtual {p1}, Landroid/view/View;->requestLayout()V

    .line 121
    .line 122
    .line 123
    return-void
.end method
