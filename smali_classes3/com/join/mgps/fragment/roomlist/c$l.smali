.class Lcom/join/mgps/fragment/roomlist/c$l;
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
    iput-object p1, p0, Lcom/join/mgps/fragment/roomlist/c$l;->b:Lcom/join/mgps/fragment/roomlist/c;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public a(Lapp/mgsim/arena/SimpleWrapperRoom;Lapp/mgsim/arena/SimpleWrapperRoom;)I
    .locals 4
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
    iget-object v0, p1, Lapp/mgsim/arena/SimpleWrapperRoom;->simpleRoom:Lcom/papa91/battle/protocol/SimpleRoom;

    .line 38
    .line 39
    invoke-virtual {v0}, Lcom/papa91/battle/protocol/SimpleRoom;->getCopper()I

    .line 40
    .line 41
    .line 42
    move-result v0

    .line 43
    iget-object v3, p2, Lapp/mgsim/arena/SimpleWrapperRoom;->simpleRoom:Lcom/papa91/battle/protocol/SimpleRoom;

    .line 44
    .line 45
    invoke-virtual {v3}, Lcom/papa91/battle/protocol/SimpleRoom;->getCopper()I

    .line 46
    .line 47
    .line 48
    move-result v3

    .line 49
    if-ge v0, v3, :cond_2

    .line 50
    .line 51
    return v1

    .line 52
    :cond_2
    iget-object p1, p1, Lapp/mgsim/arena/SimpleWrapperRoom;->simpleRoom:Lcom/papa91/battle/protocol/SimpleRoom;

    .line 53
    .line 54
    invoke-virtual {p1}, Lcom/papa91/battle/protocol/SimpleRoom;->getCopper()I

    .line 55
    .line 56
    .line 57
    move-result p1

    .line 58
    iget-object p2, p2, Lapp/mgsim/arena/SimpleWrapperRoom;->simpleRoom:Lcom/papa91/battle/protocol/SimpleRoom;

    .line 59
    .line 60
    invoke-virtual {p2}, Lcom/papa91/battle/protocol/SimpleRoom;->getCopper()I

    .line 61
    .line 62
    .line 63
    move-result p2

    .line 64
    if-ne p1, p2, :cond_3

    .line 65
    .line 66
    const/4 p1, 0x0

    .line 67
    return p1

    .line 68
    :cond_3
    return v2
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
    invoke-virtual {p0, p1, p2}, Lcom/join/mgps/fragment/roomlist/c$l;->a(Lapp/mgsim/arena/SimpleWrapperRoom;Lapp/mgsim/arena/SimpleWrapperRoom;)I

    .line 6
    .line 7
    .line 8
    move-result p1

    .line 9
    return p1
.end method
