.class Lcom/join/mgps/activity/hideapp/HideAppNotebookActivity$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/text/TextWatcher;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/join/mgps/activity/hideapp/HideAppNotebookActivity;->afterviews()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic b:Lcom/join/mgps/activity/hideapp/HideAppNotebookActivity;


# direct methods
.method constructor <init>(Lcom/join/mgps/activity/hideapp/HideAppNotebookActivity;)V
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
    iput-object p1, p0, Lcom/join/mgps/activity/hideapp/HideAppNotebookActivity$a;->b:Lcom/join/mgps/activity/hideapp/HideAppNotebookActivity;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "s"
        }
    .end annotation

    return-void
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "s",
            "start",
            "count",
            "after"
        }
    .end annotation

    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "s",
            "start",
            "before",
            "count"
        }
    .end annotation

    .line 1
    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    iget-object p2, p0, Lcom/join/mgps/activity/hideapp/HideAppNotebookActivity$a;->b:Lcom/join/mgps/activity/hideapp/HideAppNotebookActivity;

    .line 6
    .line 7
    invoke-static {p2}, Lcom/join/mgps/activity/hideapp/HideAppNotebookActivity;->access$000(Lcom/join/mgps/activity/hideapp/HideAppNotebookActivity;)Ljava/lang/String;

    .line 8
    .line 9
    .line 10
    move-result-object p2

    .line 11
    invoke-static {p1, p2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    .line 12
    .line 13
    .line 14
    move-result p1

    .line 15
    if-eqz p1, :cond_1

    .line 16
    .line 17
    iget-object p1, p0, Lcom/join/mgps/activity/hideapp/HideAppNotebookActivity$a;->b:Lcom/join/mgps/activity/hideapp/HideAppNotebookActivity;

    .line 18
    .line 19
    iget-boolean p2, p1, Lcom/join/mgps/activity/hideapp/HideAppNotebookActivity;->isFromBackground:Z

    .line 20
    .line 21
    if-nez p2, :cond_0

    .line 22
    .line 23
    invoke-static {p1}, Lcom/join/mgps/activity/hideapp/HideAppNotebookActivity;->access$100(Lcom/join/mgps/activity/hideapp/HideAppNotebookActivity;)Landroid/content/Context;

    .line 24
    .line 25
    .line 26
    move-result-object p1

    .line 27
    invoke-static {p1}, Lcom/join/mgps/activity/MGMainActivity_;->intent(Landroid/content/Context;)Lcom/join/mgps/activity/MGMainActivity_$d3;

    .line 28
    .line 29
    .line 30
    move-result-object p1

    .line 31
    invoke-virtual {p1}, Lorg/androidannotations/api/builder/a;->start()Lorg/androidannotations/api/builder/f;

    .line 32
    .line 33
    .line 34
    :cond_0
    iget-object p1, p0, Lcom/join/mgps/activity/hideapp/HideAppNotebookActivity$a;->b:Lcom/join/mgps/activity/hideapp/HideAppNotebookActivity;

    .line 35
    .line 36
    invoke-virtual {p1}, Landroid/app/Activity;->finish()V

    .line 37
    .line 38
    .line 39
    :cond_1
    return-void
.end method
