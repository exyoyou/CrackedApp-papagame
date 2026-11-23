.class Lcom/join/mgps/activity/s2$h;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/join/mgps/Util/x1$b;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/join/mgps/activity/s2;->d1(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Z

.field final synthetic b:Lcom/join/mgps/activity/s2;


# direct methods
.method constructor <init>(Lcom/join/mgps/activity/s2;Z)V
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
    iput-object p1, p0, Lcom/join/mgps/activity/s2$h;->b:Lcom/join/mgps/activity/s2;

    .line 2
    .line 3
    iput-boolean p2, p0, Lcom/join/mgps/activity/s2$h;->a:Z

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
    iget-object v0, p0, Lcom/join/mgps/activity/s2$h;->b:Lcom/join/mgps/activity/s2;

    .line 9
    .line 10
    iget-object v0, v0, Lcom/join/mgps/activity/s2;->i1:Lcom/join/mgps/activity/gamedetail/GamedetailVideoMainActivity;

    .line 11
    .line 12
    invoke-virtual {v0}, Lcom/join/mgps/activity/gamedetail/GamedetailVideoMainActivity;->clickBack()V

    .line 13
    .line 14
    .line 15
    invoke-static {}, Lcom/join/mgps/Util/x1;->c()Lcom/join/mgps/Util/x1;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    iget-object v1, p0, Lcom/join/mgps/activity/s2$h;->b:Lcom/join/mgps/activity/s2;

    .line 20
    .line 21
    iget-object v2, v1, Lcom/join/mgps/activity/s2;->i1:Lcom/join/mgps/activity/gamedetail/GamedetailVideoMainActivity;

    .line 22
    .line 23
    iget-object v1, v1, Lcom/join/mgps/activity/s2;->e:Lcom/join/mgps/dto/ExtBean;

    .line 24
    .line 25
    invoke-virtual {v1}, Lcom/join/mgps/dto/ExtBean;->getFrom_id()Ljava/lang/String;

    .line 26
    .line 27
    .line 28
    move-result-object v1

    .line 29
    invoke-virtual {p1}, Lcom/join/mgps/Util/x1$c;->b()Ljava/lang/String;

    .line 30
    .line 31
    .line 32
    move-result-object p1

    .line 33
    invoke-virtual {v0, v2, v1, p1}, Lcom/join/mgps/Util/x1;->e(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 34
    .line 35
    .line 36
    const-string p1, "\u6388\u6743\u6210\u529f"

    .line 37
    .line 38
    invoke-static {p1}, Lcom/papa91/arc/ext/ToastManager;->show(Ljava/lang/CharSequence;)V

    .line 39
    .line 40
    .line 41
    goto :goto_0

    .line 42
    :cond_0
    iget-boolean p1, p0, Lcom/join/mgps/activity/s2$h;->a:Z

    .line 43
    .line 44
    if-eqz p1, :cond_1

    .line 45
    .line 46
    iget-object p1, p0, Lcom/join/mgps/activity/s2$h;->b:Lcom/join/mgps/activity/s2;

    .line 47
    .line 48
    const/4 v0, 0x0

    .line 49
    invoke-virtual {p1, v0}, Lcom/join/mgps/activity/s2;->d1(Z)V

    .line 50
    .line 51
    .line 52
    :cond_1
    :goto_0
    return-void
.end method
