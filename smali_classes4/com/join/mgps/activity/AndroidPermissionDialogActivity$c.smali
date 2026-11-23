.class Lcom/join/mgps/activity/AndroidPermissionDialogActivity$c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/join/mgps/activity/AndroidPermissionDialogActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic b:Lcom/join/mgps/activity/AndroidPermissionDialogActivity;


# direct methods
.method constructor <init>(Lcom/join/mgps/activity/AndroidPermissionDialogActivity;)V
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
    iput-object p1, p0, Lcom/join/mgps/activity/AndroidPermissionDialogActivity$c;->b:Lcom/join/mgps/activity/AndroidPermissionDialogActivity;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "v"
        }
    .end annotation

    .line 1
    iget-object p1, p0, Lcom/join/mgps/activity/AndroidPermissionDialogActivity$c;->b:Lcom/join/mgps/activity/AndroidPermissionDialogActivity;

    .line 2
    .line 3
    invoke-static {p1}, Lcom/join/mgps/activity/AndroidPermissionDialogActivity;->access$200(Lcom/join/mgps/activity/AndroidPermissionDialogActivity;)Lcom/join/kotlin/base/dialog/callback/IDialogActivityCallback;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    instance-of p1, p1, Lcom/join/mgps/callbacks/a;

    .line 8
    .line 9
    if-eqz p1, :cond_0

    .line 10
    .line 11
    iget-object p1, p0, Lcom/join/mgps/activity/AndroidPermissionDialogActivity$c;->b:Lcom/join/mgps/activity/AndroidPermissionDialogActivity;

    .line 12
    .line 13
    invoke-static {p1}, Lcom/join/mgps/activity/AndroidPermissionDialogActivity;->access$300(Lcom/join/mgps/activity/AndroidPermissionDialogActivity;)Lcom/join/kotlin/base/dialog/callback/IDialogActivityCallback;

    .line 14
    .line 15
    .line 16
    move-result-object p1

    .line 17
    check-cast p1, Lcom/join/mgps/callbacks/a;

    .line 18
    .line 19
    iget-object v0, p0, Lcom/join/mgps/activity/AndroidPermissionDialogActivity$c;->b:Lcom/join/mgps/activity/AndroidPermissionDialogActivity;

    .line 20
    .line 21
    invoke-interface {p1, v0}, Lcom/join/mgps/callbacks/a;->a(Landroid/app/Activity;)V

    .line 22
    .line 23
    .line 24
    :cond_0
    return-void
.end method
