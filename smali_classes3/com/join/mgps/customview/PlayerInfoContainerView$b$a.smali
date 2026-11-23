.class Lcom/join/mgps/customview/PlayerInfoContainerView$b$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/join/mgps/customview/PlayerInfoContainerView$b;->c()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic b:Lcom/join/mgps/customview/PlayerInfoContainerView$b;


# direct methods
.method constructor <init>(Lcom/join/mgps/customview/PlayerInfoContainerView$b;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            "this$1"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/join/mgps/customview/PlayerInfoContainerView$b$a;->b:Lcom/join/mgps/customview/PlayerInfoContainerView$b;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "v"
        }
    .end annotation

    .line 1
    iget-object p1, p0, Lcom/join/mgps/customview/PlayerInfoContainerView$b$a;->b:Lcom/join/mgps/customview/PlayerInfoContainerView$b;

    .line 2
    .line 3
    invoke-static {p1}, Lcom/join/mgps/customview/PlayerInfoContainerView$b;->a(Lcom/join/mgps/customview/PlayerInfoContainerView$b;)Lcom/papa91/battle/protocol/RoomPosition;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    if-eqz p1, :cond_3

    .line 8
    .line 9
    iget-object p1, p0, Lcom/join/mgps/customview/PlayerInfoContainerView$b$a;->b:Lcom/join/mgps/customview/PlayerInfoContainerView$b;

    .line 10
    .line 11
    invoke-static {p1}, Lcom/join/mgps/customview/PlayerInfoContainerView$b;->a(Lcom/join/mgps/customview/PlayerInfoContainerView$b;)Lcom/papa91/battle/protocol/RoomPosition;

    .line 12
    .line 13
    .line 14
    move-result-object p1

    .line 15
    invoke-virtual {p1}, Lcom/papa91/battle/protocol/RoomPosition;->getUid()I

    .line 16
    .line 17
    .line 18
    move-result p1

    .line 19
    if-nez p1, :cond_2

    .line 20
    .line 21
    iget-object p1, p0, Lcom/join/mgps/customview/PlayerInfoContainerView$b$a;->b:Lcom/join/mgps/customview/PlayerInfoContainerView$b;

    .line 22
    .line 23
    invoke-static {p1}, Lcom/join/mgps/customview/PlayerInfoContainerView$b;->a(Lcom/join/mgps/customview/PlayerInfoContainerView$b;)Lcom/papa91/battle/protocol/RoomPosition;

    .line 24
    .line 25
    .line 26
    move-result-object p1

    .line 27
    invoke-virtual {p1}, Lcom/papa91/battle/protocol/RoomPosition;->getClosed()Z

    .line 28
    .line 29
    .line 30
    move-result p1

    .line 31
    if-eqz p1, :cond_0

    .line 32
    .line 33
    iget-object p1, p0, Lcom/join/mgps/customview/PlayerInfoContainerView$b$a;->b:Lcom/join/mgps/customview/PlayerInfoContainerView$b;

    .line 34
    .line 35
    iget-object p1, p1, Lcom/join/mgps/customview/PlayerInfoContainerView$b;->x:Lcom/join/mgps/customview/PlayerInfoContainerView;

    .line 36
    .line 37
    invoke-static {p1}, Lcom/join/mgps/customview/PlayerInfoContainerView;->a(Lcom/join/mgps/customview/PlayerInfoContainerView;)Lcom/join/mgps/customview/PlayerInfoContainerView$a;

    .line 38
    .line 39
    .line 40
    move-result-object p1

    .line 41
    iget-object v0, p0, Lcom/join/mgps/customview/PlayerInfoContainerView$b$a;->b:Lcom/join/mgps/customview/PlayerInfoContainerView$b;

    .line 42
    .line 43
    invoke-static {v0}, Lcom/join/mgps/customview/PlayerInfoContainerView$b;->a(Lcom/join/mgps/customview/PlayerInfoContainerView$b;)Lcom/papa91/battle/protocol/RoomPosition;

    .line 44
    .line 45
    .line 46
    move-result-object v0

    .line 47
    iget-object v1, p0, Lcom/join/mgps/customview/PlayerInfoContainerView$b$a;->b:Lcom/join/mgps/customview/PlayerInfoContainerView$b;

    .line 48
    .line 49
    invoke-static {v1}, Lcom/join/mgps/customview/PlayerInfoContainerView$b;->b(Lcom/join/mgps/customview/PlayerInfoContainerView$b;)I

    .line 50
    .line 51
    .line 52
    move-result v1

    .line 53
    const/4 v2, 0x0

    .line 54
    invoke-interface {p1, v0, v2, v1}, Lcom/join/mgps/customview/PlayerInfoContainerView$a;->b(Lcom/papa91/battle/protocol/RoomPosition;ZI)V

    .line 55
    .line 56
    .line 57
    goto :goto_0

    .line 58
    :cond_0
    iget-object p1, p0, Lcom/join/mgps/customview/PlayerInfoContainerView$b$a;->b:Lcom/join/mgps/customview/PlayerInfoContainerView$b;

    .line 59
    .line 60
    iget-object p1, p1, Lcom/join/mgps/customview/PlayerInfoContainerView$b;->x:Lcom/join/mgps/customview/PlayerInfoContainerView;

    .line 61
    .line 62
    invoke-static {p1}, Lcom/join/mgps/customview/PlayerInfoContainerView;->a(Lcom/join/mgps/customview/PlayerInfoContainerView;)Lcom/join/mgps/customview/PlayerInfoContainerView$a;

    .line 63
    .line 64
    .line 65
    move-result-object p1

    .line 66
    invoke-interface {p1}, Lcom/join/mgps/customview/PlayerInfoContainerView$a;->a()Z

    .line 67
    .line 68
    .line 69
    move-result p1

    .line 70
    if-eqz p1, :cond_1

    .line 71
    .line 72
    iget-object p1, p0, Lcom/join/mgps/customview/PlayerInfoContainerView$b$a;->b:Lcom/join/mgps/customview/PlayerInfoContainerView$b;

    .line 73
    .line 74
    iget-object p1, p1, Lcom/join/mgps/customview/PlayerInfoContainerView$b;->x:Lcom/join/mgps/customview/PlayerInfoContainerView;

    .line 75
    .line 76
    invoke-static {p1}, Lcom/join/mgps/customview/PlayerInfoContainerView;->a(Lcom/join/mgps/customview/PlayerInfoContainerView;)Lcom/join/mgps/customview/PlayerInfoContainerView$a;

    .line 77
    .line 78
    .line 79
    move-result-object p1

    .line 80
    iget-object v0, p0, Lcom/join/mgps/customview/PlayerInfoContainerView$b$a;->b:Lcom/join/mgps/customview/PlayerInfoContainerView$b;

    .line 81
    .line 82
    invoke-static {v0}, Lcom/join/mgps/customview/PlayerInfoContainerView$b;->b(Lcom/join/mgps/customview/PlayerInfoContainerView$b;)I

    .line 83
    .line 84
    .line 85
    move-result v0

    .line 86
    invoke-interface {p1, v0}, Lcom/join/mgps/customview/PlayerInfoContainerView$a;->d(I)V

    .line 87
    .line 88
    .line 89
    goto :goto_0

    .line 90
    :cond_1
    iget-object p1, p0, Lcom/join/mgps/customview/PlayerInfoContainerView$b$a;->b:Lcom/join/mgps/customview/PlayerInfoContainerView$b;

    .line 91
    .line 92
    iget-object p1, p1, Lcom/join/mgps/customview/PlayerInfoContainerView$b;->x:Lcom/join/mgps/customview/PlayerInfoContainerView;

    .line 93
    .line 94
    invoke-static {p1}, Lcom/join/mgps/customview/PlayerInfoContainerView;->a(Lcom/join/mgps/customview/PlayerInfoContainerView;)Lcom/join/mgps/customview/PlayerInfoContainerView$a;

    .line 95
    .line 96
    .line 97
    move-result-object p1

    .line 98
    iget-object v0, p0, Lcom/join/mgps/customview/PlayerInfoContainerView$b$a;->b:Lcom/join/mgps/customview/PlayerInfoContainerView$b;

    .line 99
    .line 100
    invoke-static {v0}, Lcom/join/mgps/customview/PlayerInfoContainerView$b;->a(Lcom/join/mgps/customview/PlayerInfoContainerView$b;)Lcom/papa91/battle/protocol/RoomPosition;

    .line 101
    .line 102
    .line 103
    move-result-object v0

    .line 104
    iget-object v1, p0, Lcom/join/mgps/customview/PlayerInfoContainerView$b$a;->b:Lcom/join/mgps/customview/PlayerInfoContainerView$b;

    .line 105
    .line 106
    invoke-static {v1}, Lcom/join/mgps/customview/PlayerInfoContainerView$b;->b(Lcom/join/mgps/customview/PlayerInfoContainerView$b;)I

    .line 107
    .line 108
    .line 109
    move-result v1

    .line 110
    const/4 v2, 0x1

    .line 111
    invoke-interface {p1, v0, v2, v1}, Lcom/join/mgps/customview/PlayerInfoContainerView$a;->b(Lcom/papa91/battle/protocol/RoomPosition;ZI)V

    .line 112
    .line 113
    .line 114
    goto :goto_0

    .line 115
    :cond_2
    iget-object p1, p0, Lcom/join/mgps/customview/PlayerInfoContainerView$b$a;->b:Lcom/join/mgps/customview/PlayerInfoContainerView$b;

    .line 116
    .line 117
    iget-object p1, p1, Lcom/join/mgps/customview/PlayerInfoContainerView$b;->x:Lcom/join/mgps/customview/PlayerInfoContainerView;

    .line 118
    .line 119
    invoke-static {p1}, Lcom/join/mgps/customview/PlayerInfoContainerView;->a(Lcom/join/mgps/customview/PlayerInfoContainerView;)Lcom/join/mgps/customview/PlayerInfoContainerView$a;

    .line 120
    .line 121
    .line 122
    move-result-object p1

    .line 123
    iget-object v0, p0, Lcom/join/mgps/customview/PlayerInfoContainerView$b$a;->b:Lcom/join/mgps/customview/PlayerInfoContainerView$b;

    .line 124
    .line 125
    invoke-static {v0}, Lcom/join/mgps/customview/PlayerInfoContainerView$b;->a(Lcom/join/mgps/customview/PlayerInfoContainerView$b;)Lcom/papa91/battle/protocol/RoomPosition;

    .line 126
    .line 127
    .line 128
    move-result-object v0

    .line 129
    iget-object v1, p0, Lcom/join/mgps/customview/PlayerInfoContainerView$b$a;->b:Lcom/join/mgps/customview/PlayerInfoContainerView$b;

    .line 130
    .line 131
    invoke-static {v1}, Lcom/join/mgps/customview/PlayerInfoContainerView$b;->b(Lcom/join/mgps/customview/PlayerInfoContainerView$b;)I

    .line 132
    .line 133
    .line 134
    move-result v1

    .line 135
    invoke-interface {p1, v0, v1}, Lcom/join/mgps/customview/PlayerInfoContainerView$a;->c(Lcom/papa91/battle/protocol/RoomPosition;I)V

    .line 136
    .line 137
    .line 138
    :cond_3
    :goto_0
    return-void
.end method
