.class Lcom/join/mgps/activity/ApFightActivity$e$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnCancelListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/join/mgps/activity/ApFightActivity$e;->e(Ljava/util/List;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic b:Lcom/join/mgps/activity/ApFightActivity$e;


# direct methods
.method constructor <init>(Lcom/join/mgps/activity/ApFightActivity$e;)V
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
    iput-object p1, p0, Lcom/join/mgps/activity/ApFightActivity$e$b;->b:Lcom/join/mgps/activity/ApFightActivity$e;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public onCancel(Landroid/content/DialogInterface;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "dialog"
        }
    .end annotation

    .line 1
    iget-object p1, p0, Lcom/join/mgps/activity/ApFightActivity$e$b;->b:Lcom/join/mgps/activity/ApFightActivity$e;

    .line 2
    .line 3
    iget-object p1, p1, Lcom/join/mgps/activity/ApFightActivity$e;->a:Lcom/join/mgps/activity/ApFightActivity;

    .line 4
    .line 5
    invoke-static {p1}, Lcom/join/mgps/activity/ApFightActivity;->access$500(Lcom/join/mgps/activity/ApFightActivity;)Lcom/join/mgps/dialog/a;

    .line 6
    .line 7
    .line 8
    move-result-object p1

    .line 9
    if-eqz p1, :cond_0

    .line 10
    .line 11
    iget-object p1, p0, Lcom/join/mgps/activity/ApFightActivity$e$b;->b:Lcom/join/mgps/activity/ApFightActivity$e;

    .line 12
    .line 13
    iget-object p1, p1, Lcom/join/mgps/activity/ApFightActivity$e;->a:Lcom/join/mgps/activity/ApFightActivity;

    .line 14
    .line 15
    invoke-static {p1}, Lcom/join/mgps/activity/ApFightActivity;->access$500(Lcom/join/mgps/activity/ApFightActivity;)Lcom/join/mgps/dialog/a;

    .line 16
    .line 17
    .line 18
    move-result-object p1

    .line 19
    invoke-virtual {p1}, Landroid/app/Dialog;->isShowing()Z

    .line 20
    .line 21
    .line 22
    move-result p1

    .line 23
    if-eqz p1, :cond_0

    .line 24
    .line 25
    iget-object p1, p0, Lcom/join/mgps/activity/ApFightActivity$e$b;->b:Lcom/join/mgps/activity/ApFightActivity$e;

    .line 26
    .line 27
    iget-object p1, p1, Lcom/join/mgps/activity/ApFightActivity$e;->a:Lcom/join/mgps/activity/ApFightActivity;

    .line 28
    .line 29
    invoke-static {p1}, Lcom/join/mgps/activity/ApFightActivity;->access$500(Lcom/join/mgps/activity/ApFightActivity;)Lcom/join/mgps/dialog/a;

    .line 30
    .line 31
    .line 32
    move-result-object p1

    .line 33
    invoke-virtual {p1}, Landroid/app/Dialog;->dismiss()V

    .line 34
    .line 35
    .line 36
    :cond_0
    return-void
.end method
