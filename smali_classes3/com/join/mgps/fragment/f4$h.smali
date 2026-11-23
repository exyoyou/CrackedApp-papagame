.class Lcom/join/mgps/fragment/f4$h;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/join/mgps/customview/input/InputNumView$d;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/join/mgps/fragment/f4;->E0()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/join/mgps/customview/input/a;

.field final synthetic b:Lcom/join/mgps/fragment/f4;


# direct methods
.method constructor <init>(Lcom/join/mgps/fragment/f4;Lcom/join/mgps/customview/input/a;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010
        }
        names = {
            "this$0",
            "val$mInputGameRoomNumDialog"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/join/mgps/fragment/f4$h;->b:Lcom/join/mgps/fragment/f4;

    .line 2
    .line 3
    iput-object p2, p0, Lcom/join/mgps/fragment/f4$h;->a:Lcom/join/mgps/customview/input/a;

    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public a()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/fragment/f4$h;->a:Lcom/join/mgps/customview/input/a;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/join/mgps/customview/input/a;->c()V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public b(Ljava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "num"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/fragment/f4$h;->a:Lcom/join/mgps/customview/input/a;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/join/mgps/customview/input/a;->c()V

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Lcom/join/mgps/fragment/f4$h;->b:Lcom/join/mgps/fragment/f4;

    .line 7
    .line 8
    invoke-static {v0}, Lcom/join/mgps/fragment/f4;->M(Lcom/join/mgps/fragment/f4;)Lcom/join/mgps/socket/fight/arena/b;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    if-nez v0, :cond_0

    .line 13
    .line 14
    return-void

    .line 15
    :cond_0
    iget-object v0, p0, Lcom/join/mgps/fragment/f4$h;->b:Lcom/join/mgps/fragment/f4;

    .line 16
    .line 17
    invoke-static {v0}, Lcom/join/mgps/fragment/f4;->M(Lcom/join/mgps/fragment/f4;)Lcom/join/mgps/socket/fight/arena/b;

    .line 18
    .line 19
    .line 20
    move-result-object v0

    .line 21
    invoke-virtual {v0}, Lcom/join/mgps/socket/fight/arena/b;->d()Lcom/join/mgps/socket/fight/arena/ArenaService_;

    .line 22
    .line 23
    .line 24
    move-result-object v0

    .line 25
    iget-object v1, p0, Lcom/join/mgps/fragment/f4$h;->b:Lcom/join/mgps/fragment/f4;

    .line 26
    .line 27
    invoke-static {v1}, Lcom/join/mgps/fragment/f4;->N(Lcom/join/mgps/fragment/f4;)Lapp/mgsim/arena/SocketListener$NotifyObserver;

    .line 28
    .line 29
    .line 30
    move-result-object v1

    .line 31
    invoke-virtual {v0, v1}, Lcom/join/mgps/socket/fight/arena/ArenaService;->z(Lapp/mgsim/arena/SocketListener$NotifyObserver;)V

    .line 32
    .line 33
    .line 34
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 35
    .line 36
    .line 37
    move-result v0

    .line 38
    if-eqz v0, :cond_1

    .line 39
    .line 40
    return-void

    .line 41
    :cond_1
    iget-object v0, p0, Lcom/join/mgps/fragment/f4$h;->b:Lcom/join/mgps/fragment/f4;

    .line 42
    .line 43
    invoke-static {v0, p1}, Lcom/join/mgps/fragment/f4;->T(Lcom/join/mgps/fragment/f4;Ljava/lang/String;)Ljava/lang/String;

    .line 44
    .line 45
    .line 46
    iget-object v0, p0, Lcom/join/mgps/fragment/f4$h;->b:Lcom/join/mgps/fragment/f4;

    .line 47
    .line 48
    invoke-static {v0}, Lcom/join/mgps/fragment/f4;->U(Lcom/join/mgps/fragment/f4;)Landroid/app/Activity;

    .line 49
    .line 50
    .line 51
    move-result-object v0

    .line 52
    invoke-static {v0}, Lcom/join/android/app/common/utils/m;->j(Landroid/content/Context;)Z

    .line 53
    .line 54
    .line 55
    move-result v0

    .line 56
    if-nez v0, :cond_2

    .line 57
    .line 58
    iget-object p1, p0, Lcom/join/mgps/fragment/f4$h;->b:Lcom/join/mgps/fragment/f4;

    .line 59
    .line 60
    const-string v0, "\u5f53\u524d\u7f51\u7edc\u4e0d\u53ef\u7528\uff0c\u8bf7\u68c0\u67e5\u7f51\u7edc!"

    .line 61
    .line 62
    invoke-virtual {p1, v0}, Lcom/join/mgps/fragment/f4;->showToast(Ljava/lang/String;)V

    .line 63
    .line 64
    .line 65
    goto :goto_0

    .line 66
    :cond_2
    iget-object v0, p0, Lcom/join/mgps/fragment/f4$h;->b:Lcom/join/mgps/fragment/f4;

    .line 67
    .line 68
    const-string v1, "\u6b63\u5728\u83b7\u53d6\u623f\u95f4..."

    .line 69
    .line 70
    invoke-static {v0, v1}, Lcom/join/mgps/fragment/f4;->V(Lcom/join/mgps/fragment/f4;Ljava/lang/String;)V

    .line 71
    .line 72
    .line 73
    iget-object v0, p0, Lcom/join/mgps/fragment/f4$h;->b:Lcom/join/mgps/fragment/f4;

    .line 74
    .line 75
    invoke-static {v0}, Lcom/join/mgps/fragment/f4;->M(Lcom/join/mgps/fragment/f4;)Lcom/join/mgps/socket/fight/arena/b;

    .line 76
    .line 77
    .line 78
    move-result-object v0

    .line 79
    invoke-virtual {v0}, Lcom/join/mgps/socket/fight/arena/b;->d()Lcom/join/mgps/socket/fight/arena/ArenaService_;

    .line 80
    .line 81
    .line 82
    move-result-object v0

    .line 83
    invoke-virtual {v0}, Lcom/join/mgps/socket/fight/arena/ArenaService;->s()Z

    .line 84
    .line 85
    .line 86
    move-result v0

    .line 87
    if-nez v0, :cond_3

    .line 88
    .line 89
    iget-object p1, p0, Lcom/join/mgps/fragment/f4$h;->b:Lcom/join/mgps/fragment/f4;

    .line 90
    .line 91
    invoke-static {p1}, Lcom/join/mgps/fragment/f4;->M(Lcom/join/mgps/fragment/f4;)Lcom/join/mgps/socket/fight/arena/b;

    .line 92
    .line 93
    .line 94
    move-result-object p1

    .line 95
    const-string v0, "register_type_NewArenaMainFragment"

    .line 96
    .line 97
    invoke-static {v0}, Lapp/mgsim/arena/ArenaRequestFactory;->login(Ljava/lang/String;)Lapp/mgsim/arena/ArenaRequest;

    .line 98
    .line 99
    .line 100
    move-result-object v0

    .line 101
    invoke-virtual {p1, v0}, Lcom/join/mgps/socket/fight/arena/b;->f(Lapp/mgsim/arena/ArenaRequest;)V

    .line 102
    .line 103
    .line 104
    goto :goto_0

    .line 105
    :cond_3
    iget-object v0, p0, Lcom/join/mgps/fragment/f4$h;->b:Lcom/join/mgps/fragment/f4;

    .line 106
    .line 107
    invoke-virtual {v0, p1}, Lcom/join/mgps/fragment/f4;->i0(Ljava/lang/String;)V

    .line 108
    .line 109
    .line 110
    :goto_0
    return-void
.end method
