.class Lcom/join/mgps/activity/d8$d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/join/mgps/broadcast/NetBroadcastReceiver$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/join/mgps/activity/d8;->m0()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/join/mgps/activity/d8;


# direct methods
.method constructor <init>(Lcom/join/mgps/activity/d8;)V
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
    iput-object p1, p0, Lcom/join/mgps/activity/d8$d;->a:Lcom/join/mgps/activity/d8;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public a(I)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "netMobile"
        }
    .end annotation

    .line 1
    iget-object p1, p0, Lcom/join/mgps/activity/d8$d;->a:Lcom/join/mgps/activity/d8;

    .line 2
    .line 3
    invoke-static {p1}, Lcom/join/mgps/activity/d8;->S(Lcom/join/mgps/activity/d8;)Ljava/util/List;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    if-eqz p1, :cond_0

    .line 8
    .line 9
    iget-object p1, p0, Lcom/join/mgps/activity/d8$d;->a:Lcom/join/mgps/activity/d8;

    .line 10
    .line 11
    invoke-static {p1}, Lcom/join/mgps/activity/d8;->S(Lcom/join/mgps/activity/d8;)Ljava/util/List;

    .line 12
    .line 13
    .line 14
    move-result-object p1

    .line 15
    invoke-interface {p1}, Ljava/util/List;->size()I

    .line 16
    .line 17
    .line 18
    move-result p1

    .line 19
    if-eqz p1, :cond_0

    .line 20
    .line 21
    iget-object p1, p0, Lcom/join/mgps/activity/d8$d;->a:Lcom/join/mgps/activity/d8;

    .line 22
    .line 23
    invoke-static {p1}, Lcom/join/mgps/activity/d8;->Q(Lcom/join/mgps/activity/d8;)Ljava/util/List;

    .line 24
    .line 25
    .line 26
    move-result-object p1

    .line 27
    if-eqz p1, :cond_2

    .line 28
    .line 29
    iget-object p1, p0, Lcom/join/mgps/activity/d8$d;->a:Lcom/join/mgps/activity/d8;

    .line 30
    .line 31
    invoke-static {p1}, Lcom/join/mgps/activity/d8;->U(Lcom/join/mgps/activity/d8;)I

    .line 32
    .line 33
    .line 34
    move-result p1

    .line 35
    iget-object v0, p0, Lcom/join/mgps/activity/d8$d;->a:Lcom/join/mgps/activity/d8;

    .line 36
    .line 37
    invoke-static {v0}, Lcom/join/mgps/activity/d8;->Q(Lcom/join/mgps/activity/d8;)Ljava/util/List;

    .line 38
    .line 39
    .line 40
    move-result-object v0

    .line 41
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 42
    .line 43
    .line 44
    move-result v0

    .line 45
    if-eq p1, v0, :cond_2

    .line 46
    .line 47
    :cond_0
    iget-object p1, p0, Lcom/join/mgps/activity/d8$d;->a:Lcom/join/mgps/activity/d8;

    .line 48
    .line 49
    invoke-static {p1}, Lcom/join/mgps/activity/d8;->Q(Lcom/join/mgps/activity/d8;)Ljava/util/List;

    .line 50
    .line 51
    .line 52
    move-result-object p1

    .line 53
    if-eqz p1, :cond_1

    .line 54
    .line 55
    iget-object p1, p0, Lcom/join/mgps/activity/d8$d;->a:Lcom/join/mgps/activity/d8;

    .line 56
    .line 57
    invoke-static {p1}, Lcom/join/mgps/activity/d8;->Q(Lcom/join/mgps/activity/d8;)Ljava/util/List;

    .line 58
    .line 59
    .line 60
    move-result-object v0

    .line 61
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 62
    .line 63
    .line 64
    move-result v0

    .line 65
    invoke-static {p1, v0}, Lcom/join/mgps/activity/d8;->V(Lcom/join/mgps/activity/d8;I)I

    .line 66
    .line 67
    .line 68
    :cond_1
    iget-object p1, p0, Lcom/join/mgps/activity/d8$d;->a:Lcom/join/mgps/activity/d8;

    .line 69
    .line 70
    const/4 v0, 0x1

    .line 71
    invoke-virtual {p1, v0}, Lcom/join/mgps/activity/d8;->Z(Z)V

    .line 72
    .line 73
    .line 74
    :cond_2
    return-void
.end method
