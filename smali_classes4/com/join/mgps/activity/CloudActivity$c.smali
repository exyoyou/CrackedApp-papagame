.class Lcom/join/mgps/activity/CloudActivity$c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/join/mgps/activity/CloudActivity;->showFirstDialog()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic b:Lcom/join/mgps/dialog/v;

.field final synthetic c:Lcom/join/mgps/activity/CloudActivity;


# direct methods
.method constructor <init>(Lcom/join/mgps/activity/CloudActivity;Lcom/join/mgps/dialog/v;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010
        }
        names = {
            "this$0",
            "val$cloudFirstDialog"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/join/mgps/activity/CloudActivity$c;->c:Lcom/join/mgps/activity/CloudActivity;

    .line 2
    .line 3
    iput-object p2, p0, Lcom/join/mgps/activity/CloudActivity$c;->b:Lcom/join/mgps/dialog/v;

    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "v"
        }
    .end annotation

    .line 1
    iget-object p1, p0, Lcom/join/mgps/activity/CloudActivity$c;->c:Lcom/join/mgps/activity/CloudActivity;

    .line 2
    .line 3
    iget-boolean v0, p1, Lcom/join/mgps/activity/CloudActivity;->showFirst:Z

    .line 4
    .line 5
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    const-string v1, "showFirst"

    .line 10
    .line 11
    invoke-static {p1, v1, v0}, Lcom/join/mgps/Util/r2;->j(Landroid/content/Context;Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 12
    .line 13
    .line 14
    iget-object p1, p0, Lcom/join/mgps/activity/CloudActivity$c;->b:Lcom/join/mgps/dialog/v;

    .line 15
    .line 16
    invoke-virtual {p1}, Landroid/app/Dialog;->dismiss()V

    .line 17
    .line 18
    .line 19
    iget-object p1, p0, Lcom/join/mgps/activity/CloudActivity$c;->c:Lcom/join/mgps/activity/CloudActivity;

    .line 20
    .line 21
    invoke-virtual {p1}, Lcom/join/mgps/activity/CloudActivity;->zip()V

    .line 22
    .line 23
    .line 24
    return-void
.end method
