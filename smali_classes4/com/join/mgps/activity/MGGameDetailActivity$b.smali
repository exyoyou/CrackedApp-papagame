.class Lcom/join/mgps/activity/MGGameDetailActivity$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/join/mgps/Util/x1$b;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/join/mgps/activity/MGGameDetailActivity;->updatePay(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Z

.field final synthetic b:Lcom/join/mgps/activity/MGGameDetailActivity;


# direct methods
.method constructor <init>(Lcom/join/mgps/activity/MGGameDetailActivity;Z)V
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
    iput-object p1, p0, Lcom/join/mgps/activity/MGGameDetailActivity$b;->b:Lcom/join/mgps/activity/MGGameDetailActivity;

    .line 2
    .line 3
    iput-boolean p2, p0, Lcom/join/mgps/activity/MGGameDetailActivity$b;->a:Z

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
    iget-object v0, p0, Lcom/join/mgps/activity/MGGameDetailActivity$b;->b:Lcom/join/mgps/activity/MGGameDetailActivity;

    .line 9
    .line 10
    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    .line 11
    .line 12
    .line 13
    invoke-static {}, Lcom/join/mgps/Util/x1;->c()Lcom/join/mgps/Util/x1;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    iget-object v1, p0, Lcom/join/mgps/activity/MGGameDetailActivity$b;->b:Lcom/join/mgps/activity/MGGameDetailActivity;

    .line 18
    .line 19
    invoke-static {v1}, Lcom/join/mgps/activity/MGGameDetailActivity;->access$100(Lcom/join/mgps/activity/MGGameDetailActivity;)Landroid/app/Activity;

    .line 20
    .line 21
    .line 22
    move-result-object v1

    .line 23
    iget-object v2, p0, Lcom/join/mgps/activity/MGGameDetailActivity$b;->b:Lcom/join/mgps/activity/MGGameDetailActivity;

    .line 24
    .line 25
    iget-object v2, v2, Lcom/join/mgps/activity/MGGameDetailActivity;->extBean:Lcom/join/mgps/dto/ExtBean;

    .line 26
    .line 27
    invoke-virtual {v2}, Lcom/join/mgps/dto/ExtBean;->getFrom_id()Ljava/lang/String;

    .line 28
    .line 29
    .line 30
    move-result-object v2

    .line 31
    invoke-virtual {p1}, Lcom/join/mgps/Util/x1$c;->b()Ljava/lang/String;

    .line 32
    .line 33
    .line 34
    move-result-object p1

    .line 35
    invoke-virtual {v0, v1, v2, p1}, Lcom/join/mgps/Util/x1;->e(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 36
    .line 37
    .line 38
    iget-object p1, p0, Lcom/join/mgps/activity/MGGameDetailActivity$b;->b:Lcom/join/mgps/activity/MGGameDetailActivity;

    .line 39
    .line 40
    invoke-static {p1}, Lcom/join/mgps/activity/MGGameDetailActivity;->access$100(Lcom/join/mgps/activity/MGGameDetailActivity;)Landroid/app/Activity;

    .line 41
    .line 42
    .line 43
    move-result-object p1

    .line 44
    invoke-static {p1}, Lcom/join/mgps/Util/a3;->b(Landroid/content/Context;)Lcom/join/mgps/Util/a3;

    .line 45
    .line 46
    .line 47
    move-result-object p1

    .line 48
    const-string v0, "\u6388\u6743\u6210\u529f"

    .line 49
    .line 50
    invoke-virtual {p1, v0}, Lcom/join/mgps/Util/a3;->d(Ljava/lang/String;)V

    .line 51
    .line 52
    .line 53
    goto :goto_0

    .line 54
    :cond_0
    iget-boolean p1, p0, Lcom/join/mgps/activity/MGGameDetailActivity$b;->a:Z

    .line 55
    .line 56
    if-eqz p1, :cond_1

    .line 57
    .line 58
    iget-object p1, p0, Lcom/join/mgps/activity/MGGameDetailActivity$b;->b:Lcom/join/mgps/activity/MGGameDetailActivity;

    .line 59
    .line 60
    const/4 v0, 0x0

    .line 61
    invoke-virtual {p1, v0}, Lcom/join/mgps/activity/MGGameDetailActivity;->updatePay(Z)V

    .line 62
    .line 63
    .line 64
    :cond_1
    :goto_0
    return-void
.end method
