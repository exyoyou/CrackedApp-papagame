.class Lcom/join/mgps/customview/ForumLoadingView$d;
.super Landroid/os/Handler;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/join/mgps/customview/ForumLoadingView;->k(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/join/mgps/customview/ForumLoadingView;


# direct methods
.method constructor <init>(Lcom/join/mgps/customview/ForumLoadingView;)V
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
    iput-object p1, p0, Lcom/join/mgps/customview/ForumLoadingView$d;->a:Lcom/join/mgps/customview/ForumLoadingView;

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
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "msg"
        }
    .end annotation

    .line 1
    :try_start_0
    iget v0, p1, Landroid/os/Message;->what:I

    .line 2
    .line 3
    sget-object v1, Lcom/join/mgps/customview/ForumLoadingView$HandleId;->LOADING:Lcom/join/mgps/customview/ForumLoadingView$HandleId;

    .line 4
    .line 5
    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    .line 6
    .line 7
    .line 8
    move-result v1

    .line 9
    if-ne v0, v1, :cond_0

    .line 10
    .line 11
    iget-object p1, p0, Lcom/join/mgps/customview/ForumLoadingView$d;->a:Lcom/join/mgps/customview/ForumLoadingView;

    .line 12
    .line 13
    invoke-static {p1}, Lcom/join/mgps/customview/ForumLoadingView;->b(Lcom/join/mgps/customview/ForumLoadingView;)V

    .line 14
    .line 15
    .line 16
    goto/16 :goto_0

    .line 17
    .line 18
    :cond_0
    sget-object v1, Lcom/join/mgps/customview/ForumLoadingView$HandleId;->LOADING_FAILED:Lcom/join/mgps/customview/ForumLoadingView$HandleId;

    .line 19
    .line 20
    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    .line 21
    .line 22
    .line 23
    move-result v1

    .line 24
    if-ne v0, v1, :cond_1

    .line 25
    .line 26
    iget-object p1, p0, Lcom/join/mgps/customview/ForumLoadingView$d;->a:Lcom/join/mgps/customview/ForumLoadingView;

    .line 27
    .line 28
    invoke-static {p1}, Lcom/join/mgps/customview/ForumLoadingView;->c(Lcom/join/mgps/customview/ForumLoadingView;)V

    .line 29
    .line 30
    .line 31
    goto :goto_0

    .line 32
    :cond_1
    sget-object v1, Lcom/join/mgps/customview/ForumLoadingView$HandleId;->LOADING_SUCCESS:Lcom/join/mgps/customview/ForumLoadingView$HandleId;

    .line 33
    .line 34
    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    .line 35
    .line 36
    .line 37
    move-result v1

    .line 38
    if-ne v0, v1, :cond_2

    .line 39
    .line 40
    iget-object p1, p0, Lcom/join/mgps/customview/ForumLoadingView$d;->a:Lcom/join/mgps/customview/ForumLoadingView;

    .line 41
    .line 42
    const/4 v0, 0x1

    .line 43
    invoke-static {p1, v0}, Lcom/join/mgps/customview/ForumLoadingView;->d(Lcom/join/mgps/customview/ForumLoadingView;Z)V

    .line 44
    .line 45
    .line 46
    goto :goto_0

    .line 47
    :cond_2
    sget-object v1, Lcom/join/mgps/customview/ForumLoadingView$HandleId;->SET_FAILED_IMG_VISIBILITY:Lcom/join/mgps/customview/ForumLoadingView$HandleId;

    .line 48
    .line 49
    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    .line 50
    .line 51
    .line 52
    move-result v1

    .line 53
    if-ne v0, v1, :cond_3

    .line 54
    .line 55
    iget p1, p1, Landroid/os/Message;->arg1:I

    .line 56
    .line 57
    iget-object v0, p0, Lcom/join/mgps/customview/ForumLoadingView$d;->a:Lcom/join/mgps/customview/ForumLoadingView;

    .line 58
    .line 59
    invoke-static {v0, p1}, Lcom/join/mgps/customview/ForumLoadingView;->e(Lcom/join/mgps/customview/ForumLoadingView;I)V

    .line 60
    .line 61
    .line 62
    goto :goto_0

    .line 63
    :cond_3
    sget-object v1, Lcom/join/mgps/customview/ForumLoadingView$HandleId;->SET_RELOADING_VISIBILITY:Lcom/join/mgps/customview/ForumLoadingView$HandleId;

    .line 64
    .line 65
    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    .line 66
    .line 67
    .line 68
    move-result v1

    .line 69
    if-ne v0, v1, :cond_4

    .line 70
    .line 71
    iget p1, p1, Landroid/os/Message;->arg1:I

    .line 72
    .line 73
    iget-object v0, p0, Lcom/join/mgps/customview/ForumLoadingView$d;->a:Lcom/join/mgps/customview/ForumLoadingView;

    .line 74
    .line 75
    invoke-static {v0, p1}, Lcom/join/mgps/customview/ForumLoadingView;->f(Lcom/join/mgps/customview/ForumLoadingView;I)V

    .line 76
    .line 77
    .line 78
    goto :goto_0

    .line 79
    :cond_4
    sget-object v1, Lcom/join/mgps/customview/ForumLoadingView$HandleId;->SET_FAILED_IMG_RES:Lcom/join/mgps/customview/ForumLoadingView$HandleId;

    .line 80
    .line 81
    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    .line 82
    .line 83
    .line 84
    move-result v1

    .line 85
    if-ne v0, v1, :cond_5

    .line 86
    .line 87
    iget-object v0, p0, Lcom/join/mgps/customview/ForumLoadingView$d;->a:Lcom/join/mgps/customview/ForumLoadingView;

    .line 88
    .line 89
    iget p1, p1, Landroid/os/Message;->arg1:I

    .line 90
    .line 91
    invoke-static {v0, p1}, Lcom/join/mgps/customview/ForumLoadingView;->g(Lcom/join/mgps/customview/ForumLoadingView;I)V

    .line 92
    .line 93
    .line 94
    goto :goto_0

    .line 95
    :cond_5
    sget-object v1, Lcom/join/mgps/customview/ForumLoadingView$HandleId;->SET_FAILED_RELOADING_RES:Lcom/join/mgps/customview/ForumLoadingView$HandleId;

    .line 96
    .line 97
    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    .line 98
    .line 99
    .line 100
    move-result v1

    .line 101
    if-ne v0, v1, :cond_6

    .line 102
    .line 103
    iget-object v0, p0, Lcom/join/mgps/customview/ForumLoadingView$d;->a:Lcom/join/mgps/customview/ForumLoadingView;

    .line 104
    .line 105
    iget p1, p1, Landroid/os/Message;->arg1:I

    .line 106
    .line 107
    invoke-static {v0, p1}, Lcom/join/mgps/customview/ForumLoadingView;->h(Lcom/join/mgps/customview/ForumLoadingView;I)V

    .line 108
    .line 109
    .line 110
    goto :goto_0

    .line 111
    :cond_6
    sget-object v1, Lcom/join/mgps/customview/ForumLoadingView$HandleId;->SET_FAILED_MSG:Lcom/join/mgps/customview/ForumLoadingView$HandleId;

    .line 112
    .line 113
    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    .line 114
    .line 115
    .line 116
    move-result v1

    .line 117
    if-ne v0, v1, :cond_7

    .line 118
    .line 119
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 120
    .line 121
    check-cast p1, Ljava/lang/String;

    .line 122
    .line 123
    iget-object v0, p0, Lcom/join/mgps/customview/ForumLoadingView$d;->a:Lcom/join/mgps/customview/ForumLoadingView;

    .line 124
    .line 125
    invoke-static {v0, p1}, Lcom/join/mgps/customview/ForumLoadingView;->i(Lcom/join/mgps/customview/ForumLoadingView;Ljava/lang/String;)V

    .line 126
    .line 127
    .line 128
    :cond_7
    :goto_0
    iget-object p1, p0, Lcom/join/mgps/customview/ForumLoadingView$d;->a:Lcom/join/mgps/customview/ForumLoadingView;

    .line 129
    .line 130
    invoke-virtual {p1}, Landroid/view/View;->invalidate()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 131
    .line 132
    .line 133
    goto :goto_1

    .line 134
    :catch_0
    move-exception p1

    .line 135
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 136
    .line 137
    .line 138
    :goto_1
    return-void
.end method
