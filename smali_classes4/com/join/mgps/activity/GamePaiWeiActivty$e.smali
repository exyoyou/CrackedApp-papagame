.class Lcom/join/mgps/activity/GamePaiWeiActivty$e;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/join/mgps/dialog/b$c;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/join/mgps/activity/GamePaiWeiActivty;->r(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/join/mgps/activity/GamePaiWeiActivty;


# direct methods
.method constructor <init>(Lcom/join/mgps/activity/GamePaiWeiActivty;)V
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
    iput-object p1, p0, Lcom/join/mgps/activity/GamePaiWeiActivty$e;->a:Lcom/join/mgps/activity/GamePaiWeiActivty;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public ClickCancleButn(Lcom/join/mgps/dialog/b;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "d"
        }
    .end annotation

    .line 1
    invoke-virtual {p1}, Landroid/app/Dialog;->dismiss()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method public ClickOKButn(Lcom/join/mgps/dialog/b;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "d"
        }
    .end annotation

    .line 1
    invoke-virtual {p1}, Landroid/app/Dialog;->dismiss()V

    .line 2
    .line 3
    .line 4
    iget-object p1, p0, Lcom/join/mgps/activity/GamePaiWeiActivty$e;->a:Lcom/join/mgps/activity/GamePaiWeiActivty;

    .line 5
    .line 6
    const/4 v0, 0x0

    .line 7
    invoke-static {p1, v0}, Lcom/join/mgps/activity/GamePaiWeiActivty;->c(Lcom/join/mgps/activity/GamePaiWeiActivty;I)I

    .line 8
    .line 9
    .line 10
    iget-object p1, p0, Lcom/join/mgps/activity/GamePaiWeiActivty$e;->a:Lcom/join/mgps/activity/GamePaiWeiActivty;

    .line 11
    .line 12
    const/4 v0, 0x1

    .line 13
    invoke-static {p1, v0}, Lcom/join/mgps/activity/GamePaiWeiActivty;->e(Lcom/join/mgps/activity/GamePaiWeiActivty;I)I

    .line 14
    .line 15
    .line 16
    iget-object p1, p0, Lcom/join/mgps/activity/GamePaiWeiActivty$e;->a:Lcom/join/mgps/activity/GamePaiWeiActivty;

    .line 17
    .line 18
    invoke-static {p1}, Lcom/join/mgps/activity/GamePaiWeiActivty;->g(Lcom/join/mgps/activity/GamePaiWeiActivty;)Lcom/join/mgps/dialog/f1;

    .line 19
    .line 20
    .line 21
    move-result-object p1

    .line 22
    invoke-virtual {p1}, Lcom/join/mgps/dialog/f1;->b()V

    .line 23
    .line 24
    .line 25
    iget-object p1, p0, Lcom/join/mgps/activity/GamePaiWeiActivty$e;->a:Lcom/join/mgps/activity/GamePaiWeiActivty;

    .line 26
    .line 27
    invoke-virtual {p1}, Lcom/join/mgps/activity/GamePaiWeiActivty;->R()V

    .line 28
    .line 29
    .line 30
    return-void
.end method
