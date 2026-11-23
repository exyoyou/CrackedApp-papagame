.class Lcom/join/mgps/dialog/t2$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/join/mgps/dialog/t2;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic b:Lcom/join/mgps/dialog/t2;


# direct methods
.method constructor <init>(Lcom/join/mgps/dialog/t2;)V
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
    iput-object p1, p0, Lcom/join/mgps/dialog/t2$b;->b:Lcom/join/mgps/dialog/t2;

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
            "view"
        }
    .end annotation

    .line 1
    iget-object p1, p0, Lcom/join/mgps/dialog/t2$b;->b:Lcom/join/mgps/dialog/t2;

    .line 2
    .line 3
    iget-object p1, p1, Lcom/join/mgps/dialog/t2;->b:Landroid/content/Context;

    .line 4
    .line 5
    invoke-static {p1}, Lcom/join/mgps/activity/FightWifiInputDialogActivity_;->intent(Landroid/content/Context;)Lcom/join/mgps/activity/FightWifiInputDialogActivity_$c;

    .line 6
    .line 7
    .line 8
    move-result-object p1

    .line 9
    const/16 v0, 0x2329

    .line 10
    .line 11
    invoke-virtual {p1, v0}, Lcom/join/mgps/activity/FightWifiInputDialogActivity_$c;->startForResult(I)Lorg/androidannotations/api/builder/f;

    .line 12
    .line 13
    .line 14
    iget-object p1, p0, Lcom/join/mgps/dialog/t2$b;->b:Lcom/join/mgps/dialog/t2;

    .line 15
    .line 16
    invoke-virtual {p1}, Landroid/app/Dialog;->dismiss()V

    .line 17
    .line 18
    .line 19
    return-void
.end method
