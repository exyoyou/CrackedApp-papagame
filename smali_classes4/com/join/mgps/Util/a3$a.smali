.class Lcom/join/mgps/Util/a3$a;
.super Landroid/os/Handler;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/join/mgps/Util/a3;-><init>(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/content/Context;

.field final synthetic b:Lcom/join/mgps/Util/a3;


# direct methods
.method constructor <init>(Lcom/join/mgps/Util/a3;Landroid/content/Context;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010
        }
        names = {
            "this$0",
            "val$context"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/join/mgps/Util/a3$a;->b:Lcom/join/mgps/Util/a3;

    .line 2
    .line 3
    iput-object p2, p0, Lcom/join/mgps/Util/a3$a;->a:Landroid/content/Context;

    .line 4
    .line 5
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    .line 6
    .line 7
    .line 8
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
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    .line 2
    .line 3
    .line 4
    :try_start_0
    iget-object v0, p0, Lcom/join/mgps/Util/a3$a;->b:Lcom/join/mgps/Util/a3;

    .line 5
    .line 6
    iget-object v0, v0, Lcom/join/mgps/Util/a3;->a:Landroid/widget/Toast;

    .line 7
    .line 8
    if-eqz v0, :cond_0

    .line 9
    .line 10
    invoke-virtual {v0}, Landroid/widget/Toast;->cancel()V

    .line 11
    .line 12
    .line 13
    :cond_0
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 14
    .line 15
    check-cast v0, Ljava/lang/String;

    .line 16
    .line 17
    iget-object v1, p0, Lcom/join/mgps/Util/a3$a;->b:Lcom/join/mgps/Util/a3;

    .line 18
    .line 19
    iget-object v2, p0, Lcom/join/mgps/Util/a3$a;->a:Landroid/content/Context;

    .line 20
    .line 21
    const/4 v3, 0x1

    .line 22
    invoke-static {v2, v0, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    .line 23
    .line 24
    .line 25
    move-result-object v0

    .line 26
    iput-object v0, v1, Lcom/join/mgps/Util/a3;->a:Landroid/widget/Toast;

    .line 27
    .line 28
    iget-object v0, p0, Lcom/join/mgps/Util/a3$a;->b:Lcom/join/mgps/Util/a3;

    .line 29
    .line 30
    iget-object v0, v0, Lcom/join/mgps/Util/a3;->a:Landroid/widget/Toast;

    .line 31
    .line 32
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 33
    .line 34
    check-cast p1, Ljava/lang/CharSequence;

    .line 35
    .line 36
    invoke-virtual {v0, p1}, Landroid/widget/Toast;->setText(Ljava/lang/CharSequence;)V

    .line 37
    .line 38
    .line 39
    iget-object p1, p0, Lcom/join/mgps/Util/a3$a;->b:Lcom/join/mgps/Util/a3;

    .line 40
    .line 41
    iget-object p1, p1, Lcom/join/mgps/Util/a3;->a:Landroid/widget/Toast;

    .line 42
    .line 43
    invoke-virtual {p1}, Landroid/widget/Toast;->show()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 44
    .line 45
    .line 46
    goto :goto_0

    .line 47
    :catch_0
    move-exception p1

    .line 48
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 49
    .line 50
    .line 51
    :goto_0
    return-void
.end method
