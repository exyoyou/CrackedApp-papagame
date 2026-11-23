.class Lcom/join/mgps/dialog/a1$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/join/mgps/dialog/a1;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic b:Lcom/join/mgps/dialog/a1;


# direct methods
.method constructor <init>(Lcom/join/mgps/dialog/a1;)V
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
    iput-object p1, p0, Lcom/join/mgps/dialog/a1$a;->b:Lcom/join/mgps/dialog/a1;

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
    iget-object p1, p0, Lcom/join/mgps/dialog/a1$a;->b:Lcom/join/mgps/dialog/a1;

    .line 2
    .line 3
    invoke-static {p1}, Lcom/join/mgps/dialog/a1;->a(Lcom/join/mgps/dialog/a1;)Lcom/join/mgps/dialog/a1$f;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    invoke-interface {p1}, Lcom/join/mgps/dialog/a1$f;->d()V

    .line 8
    .line 9
    .line 10
    iget-object p1, p0, Lcom/join/mgps/dialog/a1$a;->b:Lcom/join/mgps/dialog/a1;

    .line 11
    .line 12
    invoke-static {p1}, Lcom/join/mgps/dialog/a1;->b(Lcom/join/mgps/dialog/a1;)V

    .line 13
    .line 14
    .line 15
    iget-object p1, p0, Lcom/join/mgps/dialog/a1$a;->b:Lcom/join/mgps/dialog/a1;

    .line 16
    .line 17
    invoke-static {p1}, Lcom/join/mgps/dialog/a1;->c(Lcom/join/mgps/dialog/a1;)Landroid/widget/CheckBox;

    .line 18
    .line 19
    .line 20
    move-result-object p1

    .line 21
    const/4 v0, 0x1

    .line 22
    invoke-virtual {p1, v0}, Landroid/widget/CompoundButton;->setChecked(Z)V

    .line 23
    .line 24
    .line 25
    iget-object p1, p0, Lcom/join/mgps/dialog/a1$a;->b:Lcom/join/mgps/dialog/a1;

    .line 26
    .line 27
    invoke-static {p1}, Lcom/join/mgps/dialog/a1;->d(Lcom/join/mgps/dialog/a1;)Lcom/join/mgps/pref/PrefDef_;

    .line 28
    .line 29
    .line 30
    move-result-object p1

    .line 31
    invoke-virtual {p1}, Lcom/join/mgps/pref/PrefDef_;->gprsNoticeInfo()Lorg/androidannotations/api/sharedpreferences/i;

    .line 32
    .line 33
    .line 34
    move-result-object p1

    .line 35
    const/4 v0, 0x0

    .line 36
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 37
    .line 38
    .line 39
    move-result-object v0

    .line 40
    invoke-virtual {p1, v0}, Lorg/androidannotations/api/sharedpreferences/b;->g(Ljava/lang/Object;)V

    .line 41
    .line 42
    .line 43
    iget-object p1, p0, Lcom/join/mgps/dialog/a1$a;->b:Lcom/join/mgps/dialog/a1;

    .line 44
    .line 45
    invoke-virtual {p1}, Landroid/app/Dialog;->dismiss()V

    .line 46
    .line 47
    .line 48
    return-void
.end method
