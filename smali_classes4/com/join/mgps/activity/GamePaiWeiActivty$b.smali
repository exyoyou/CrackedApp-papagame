.class Lcom/join/mgps/activity/GamePaiWeiActivty$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/join/mgps/dialog/h2$b;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/join/mgps/activity/GamePaiWeiActivty;->E()V
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
    iput-object p1, p0, Lcom/join/mgps/activity/GamePaiWeiActivty$b;->a:Lcom/join/mgps/activity/GamePaiWeiActivty;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public a(Z)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "check"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/GamePaiWeiActivty$b;->a:Lcom/join/mgps/activity/GamePaiWeiActivty;

    .line 2
    .line 3
    iget-object v0, v0, Lcom/join/mgps/activity/GamePaiWeiActivty;->T:Lcom/join/mgps/pref/PrefDef_;

    .line 4
    .line 5
    invoke-virtual {v0}, Lcom/join/mgps/pref/PrefDef_;->rankNotify()Lorg/androidannotations/api/sharedpreferences/d;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    xor-int/lit8 p1, p1, 0x1

    .line 10
    .line 11
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 12
    .line 13
    .line 14
    move-result-object p1

    .line 15
    invoke-virtual {v0, p1}, Lorg/androidannotations/api/sharedpreferences/b;->g(Ljava/lang/Object;)V

    .line 16
    .line 17
    .line 18
    return-void
.end method

.method public onClose()V
    .locals 0

    return-void
.end method

.method public onConfirm()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/GamePaiWeiActivty$b;->a:Lcom/join/mgps/activity/GamePaiWeiActivty;

    .line 2
    .line 3
    invoke-static {v0}, Lcom/join/mgps/activity/GamePaiWeiActivty;->n(Lcom/join/mgps/activity/GamePaiWeiActivty;)V

    .line 4
    .line 5
    .line 6
    return-void
.end method
