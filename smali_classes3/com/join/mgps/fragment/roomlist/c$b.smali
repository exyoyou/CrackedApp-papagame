.class Lcom/join/mgps/fragment/roomlist/c$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/join/mgps/fragment/roomlist/c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator<",
        "Lapp/mgsim/arena/SimpleWrapperRoom;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic b:Lcom/join/mgps/fragment/roomlist/c;


# direct methods
.method constructor <init>(Lcom/join/mgps/fragment/roomlist/c;)V
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
    iput-object p1, p0, Lcom/join/mgps/fragment/roomlist/c$b;->b:Lcom/join/mgps/fragment/roomlist/c;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method private a(JI)I
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "startTime",
            "playSeconds"
        }
    .end annotation

    .line 1
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    .line 2
    .line 3
    .line 4
    move-result-wide v0

    .line 5
    sub-long/2addr v0, p1

    .line 6
    const-wide/16 p1, 0x3e8

    .line 7
    .line 8
    div-long/2addr v0, p1

    .line 9
    int-to-long p1, p3

    .line 10
    add-long/2addr v0, p1

    .line 11
    const-wide/16 p1, 0x1

    .line 12
    .line 13
    sub-long/2addr v0, p1

    .line 14
    long-to-int p1, v0

    .line 15
    return p1
.end method


# virtual methods
.method public b(Lapp/mgsim/arena/SimpleWrapperRoom;Lapp/mgsim/arena/SimpleWrapperRoom;)I
    .locals 6
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "lhs",
            "rhs"
        }
    .end annotation

    .line 1
    iget-object v0, p1, Lapp/mgsim/arena/SimpleWrapperRoom;->simpleRoom:Lcom/papa91/battle/protocol/SimpleRoom;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/papa91/battle/protocol/SimpleRoom;->getVip()Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    const/4 v1, 0x1

    .line 8
    if-nez v0, :cond_0

    .line 9
    .line 10
    iget-object v0, p2, Lapp/mgsim/arena/SimpleWrapperRoom;->simpleRoom:Lcom/papa91/battle/protocol/SimpleRoom;

    .line 11
    .line 12
    invoke-virtual {v0}, Lcom/papa91/battle/protocol/SimpleRoom;->getVip()Z

    .line 13
    .line 14
    .line 15
    move-result v0

    .line 16
    if-eqz v0, :cond_0

    .line 17
    .line 18
    return v1

    .line 19
    :cond_0
    iget-object v0, p1, Lapp/mgsim/arena/SimpleWrapperRoom;->simpleRoom:Lcom/papa91/battle/protocol/SimpleRoom;

    .line 20
    .line 21
    invoke-virtual {v0}, Lcom/papa91/battle/protocol/SimpleRoom;->getVip()Z

    .line 22
    .line 23
    .line 24
    move-result v0

    .line 25
    const/4 v2, -0x1

    .line 26
    if-eqz v0, :cond_1

    .line 27
    .line 28
    iget-object v0, p2, Lapp/mgsim/arena/SimpleWrapperRoom;->simpleRoom:Lcom/papa91/battle/protocol/SimpleRoom;

    .line 29
    .line 30
    invoke-virtual {v0}, Lcom/papa91/battle/protocol/SimpleRoom;->getVip()Z

    .line 31
    .line 32
    .line 33
    move-result v0

    .line 34
    if-nez v0, :cond_1

    .line 35
    .line 36
    return v2

    .line 37
    :cond_1
    iget-wide v3, p1, Lapp/mgsim/arena/SimpleWrapperRoom;->initialStartTime:J

    .line 38
    .line 39
    iget-object v0, p1, Lapp/mgsim/arena/SimpleWrapperRoom;->simpleRoom:Lcom/papa91/battle/protocol/SimpleRoom;

    .line 40
    .line 41
    invoke-virtual {v0}, Lcom/papa91/battle/protocol/SimpleRoom;->getPlaySeconds()I

    .line 42
    .line 43
    .line 44
    move-result v0

    .line 45
    invoke-direct {p0, v3, v4, v0}, Lcom/join/mgps/fragment/roomlist/c$b;->a(JI)I

    .line 46
    .line 47
    .line 48
    move-result v0

    .line 49
    iget-wide v3, p2, Lapp/mgsim/arena/SimpleWrapperRoom;->initialStartTime:J

    .line 50
    .line 51
    iget-object v5, p2, Lapp/mgsim/arena/SimpleWrapperRoom;->simpleRoom:Lcom/papa91/battle/protocol/SimpleRoom;

    .line 52
    .line 53
    invoke-virtual {v5}, Lcom/papa91/battle/protocol/SimpleRoom;->getPlaySeconds()I

    .line 54
    .line 55
    .line 56
    move-result v5

    .line 57
    invoke-direct {p0, v3, v4, v5}, Lcom/join/mgps/fragment/roomlist/c$b;->a(JI)I

    .line 58
    .line 59
    .line 60
    move-result v3

    .line 61
    if-le v0, v3, :cond_2

    .line 62
    .line 63
    goto :goto_0

    .line 64
    :cond_2
    iget-wide v0, p1, Lapp/mgsim/arena/SimpleWrapperRoom;->initialStartTime:J

    .line 65
    .line 66
    iget-object p1, p1, Lapp/mgsim/arena/SimpleWrapperRoom;->simpleRoom:Lcom/papa91/battle/protocol/SimpleRoom;

    .line 67
    .line 68
    invoke-virtual {p1}, Lcom/papa91/battle/protocol/SimpleRoom;->getPlaySeconds()I

    .line 69
    .line 70
    .line 71
    move-result p1

    .line 72
    invoke-direct {p0, v0, v1, p1}, Lcom/join/mgps/fragment/roomlist/c$b;->a(JI)I

    .line 73
    .line 74
    .line 75
    move-result p1

    .line 76
    iget-wide v0, p2, Lapp/mgsim/arena/SimpleWrapperRoom;->initialStartTime:J

    .line 77
    .line 78
    iget-object p2, p2, Lapp/mgsim/arena/SimpleWrapperRoom;->simpleRoom:Lcom/papa91/battle/protocol/SimpleRoom;

    .line 79
    .line 80
    invoke-virtual {p2}, Lcom/papa91/battle/protocol/SimpleRoom;->getPlaySeconds()I

    .line 81
    .line 82
    .line 83
    move-result p2

    .line 84
    invoke-direct {p0, v0, v1, p2}, Lcom/join/mgps/fragment/roomlist/c$b;->a(JI)I

    .line 85
    .line 86
    .line 87
    move-result p2

    .line 88
    if-ne p1, p2, :cond_3

    .line 89
    .line 90
    const/4 v1, 0x0

    .line 91
    goto :goto_0

    .line 92
    :cond_3
    const/4 v1, -0x1

    .line 93
    :goto_0
    return v1
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000,
            0x1000
        }
        names = {
            "lhs",
            "rhs"
        }
    .end annotation

    .line 1
    check-cast p1, Lapp/mgsim/arena/SimpleWrapperRoom;

    .line 2
    .line 3
    check-cast p2, Lapp/mgsim/arena/SimpleWrapperRoom;

    .line 4
    .line 5
    invoke-virtual {p0, p1, p2}, Lcom/join/mgps/fragment/roomlist/c$b;->b(Lapp/mgsim/arena/SimpleWrapperRoom;Lapp/mgsim/arena/SimpleWrapperRoom;)I

    .line 6
    .line 7
    .line 8
    move-result p1

    .line 9
    return p1
.end method
