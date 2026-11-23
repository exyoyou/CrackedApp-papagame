.class Lcom/join/mgps/activity/d2$s;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/join/mgps/Util/x1$b;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/join/mgps/activity/d2;->a1(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Z

.field final synthetic b:Lcom/join/mgps/activity/d2;


# direct methods
.method constructor <init>(Lcom/join/mgps/activity/d2;Z)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010
        }
        names = {
            "this$0",
            "val$needRetry"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/join/mgps/activity/d2$s;->b:Lcom/join/mgps/activity/d2;

    .line 2
    .line 3
    iput-boolean p2, p0, Lcom/join/mgps/activity/d2$s;->a:Z

    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public a(Lcom/join/mgps/Util/x1$c;)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "result"
        }
    .end annotation

    .line 1
    invoke-virtual {p1}, Lcom/join/mgps/Util/x1$c;->a()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    const/4 v1, 0x1

    .line 6
    if-ne v0, v1, :cond_0

    .line 7
    .line 8
    iget-object v0, p0, Lcom/join/mgps/activity/d2$s;->b:Lcom/join/mgps/activity/d2;

    .line 9
    .line 10
    invoke-static {v0}, Lcom/join/mgps/activity/d2;->V(Lcom/join/mgps/activity/d2;)Lcom/join/mgps/activity/gamedetail/GamedetailVideoMainActivity;

    .line 11
    .line 12
    .line 13
    move-result-object v0

    .line 14
    invoke-virtual {v0}, Lcom/join/mgps/activity/gamedetail/GamedetailVideoMainActivity;->finish()V

    .line 15
    .line 16
    .line 17
    invoke-static {}, Lcom/join/mgps/Util/x1;->c()Lcom/join/mgps/Util/x1;

    .line 18
    .line 19
    .line 20
    move-result-object v0

    .line 21
    iget-object v1, p0, Lcom/join/mgps/activity/d2$s;->b:Lcom/join/mgps/activity/d2;

    .line 22
    .line 23
    invoke-static {v1}, Lcom/join/mgps/activity/d2;->V(Lcom/join/mgps/activity/d2;)Lcom/join/mgps/activity/gamedetail/GamedetailVideoMainActivity;

    .line 24
    .line 25
    .line 26
    move-result-object v1

    .line 27
    iget-object v2, p0, Lcom/join/mgps/activity/d2$s;->b:Lcom/join/mgps/activity/d2;

    .line 28
    .line 29
    iget-object v2, v2, Lcom/join/mgps/activity/d2;->M:Lcom/join/mgps/dto/ExtBean;

    .line 30
    .line 31
    invoke-virtual {v2}, Lcom/join/mgps/dto/ExtBean;->getFrom_id()Ljava/lang/String;

    .line 32
    .line 33
    .line 34
    move-result-object v2

    .line 35
    invoke-virtual {p1}, Lcom/join/mgps/Util/x1$c;->b()Ljava/lang/String;

    .line 36
    .line 37
    .line 38
    move-result-object p1

    .line 39
    invoke-virtual {v0, v1, v2, p1}, Lcom/join/mgps/Util/x1;->e(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 40
    .line 41
    .line 42
    iget-object p1, p0, Lcom/join/mgps/activity/d2$s;->b:Lcom/join/mgps/activity/d2;

    .line 43
    .line 44
    invoke-static {p1}, Lcom/join/mgps/activity/d2;->V(Lcom/join/mgps/activity/d2;)Lcom/join/mgps/activity/gamedetail/GamedetailVideoMainActivity;

    .line 45
    .line 46
    .line 47
    move-result-object p1

    .line 48
    invoke-static {p1}, Lcom/join/mgps/Util/a3;->b(Landroid/content/Context;)Lcom/join/mgps/Util/a3;

    .line 49
    .line 50
    .line 51
    move-result-object p1

    .line 52
    const-string v0, "\u6388\u6743\u6210\u529f"

    .line 53
    .line 54
    invoke-virtual {p1, v0}, Lcom/join/mgps/Util/a3;->d(Ljava/lang/String;)V

    .line 55
    .line 56
    .line 57
    goto :goto_0

    .line 58
    :cond_0
    iget-boolean p1, p0, Lcom/join/mgps/activity/d2$s;->a:Z

    .line 59
    .line 60
    if-eqz p1, :cond_1

    .line 61
    .line 62
    iget-object p1, p0, Lcom/join/mgps/activity/d2$s;->b:Lcom/join/mgps/activity/d2;

    .line 63
    .line 64
    const/4 v0, 0x0

    .line 65
    invoke-virtual {p1, v0}, Lcom/join/mgps/activity/d2;->a1(Z)V

    .line 66
    .line 67
    .line 68
    :cond_1
    :goto_0
    return-void
.end method
