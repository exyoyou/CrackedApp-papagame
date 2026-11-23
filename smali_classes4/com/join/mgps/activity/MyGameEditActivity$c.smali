.class Lcom/join/mgps/activity/MyGameEditActivity$c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/join/mgps/activity/MyGameEditActivity;->showDeleteDialog()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic b:Lcom/join/mgps/activity/MyGameEditActivity;


# direct methods
.method constructor <init>(Lcom/join/mgps/activity/MyGameEditActivity;)V
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
    iput-object p1, p0, Lcom/join/mgps/activity/MyGameEditActivity$c;->b:Lcom/join/mgps/activity/MyGameEditActivity;

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
    iget-object p1, p0, Lcom/join/mgps/activity/MyGameEditActivity$c;->b:Lcom/join/mgps/activity/MyGameEditActivity;

    .line 2
    .line 3
    iget-object p1, p1, Lcom/join/mgps/activity/MyGameEditActivity;->prefDef:Lcom/join/mgps/pref/PrefDef_;

    .line 4
    .line 5
    invoke-virtual {p1}, Lcom/join/mgps/pref/PrefDef_;->hideGameTopAd()Lorg/androidannotations/api/sharedpreferences/d;

    .line 6
    .line 7
    .line 8
    move-result-object p1

    .line 9
    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 10
    .line 11
    invoke-virtual {p1, v0}, Lorg/androidannotations/api/sharedpreferences/b;->g(Ljava/lang/Object;)V

    .line 12
    .line 13
    .line 14
    iget-object p1, p0, Lcom/join/mgps/activity/MyGameEditActivity$c;->b:Lcom/join/mgps/activity/MyGameEditActivity;

    .line 15
    .line 16
    const/4 v0, 0x0

    .line 17
    invoke-virtual {p1, v0}, Lcom/join/mgps/activity/MyGameEditActivity;->notifyAdChanged(Lcom/join/mgps/dto/RecomDatabean;)V

    .line 18
    .line 19
    .line 20
    iget-object p1, p0, Lcom/join/mgps/activity/MyGameEditActivity$c;->b:Lcom/join/mgps/activity/MyGameEditActivity;

    .line 21
    .line 22
    iget-object p1, p1, Lcom/join/mgps/activity/MyGameEditActivity;->dialog:Landroid/app/Dialog;

    .line 23
    .line 24
    invoke-virtual {p1}, Landroid/app/Dialog;->dismiss()V

    .line 25
    .line 26
    .line 27
    return-void
.end method
