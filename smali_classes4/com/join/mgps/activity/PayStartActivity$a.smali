.class Lcom/join/mgps/activity/PayStartActivity$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnFocusChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/join/mgps/activity/PayStartActivity;->drawView()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic b:Lcom/join/mgps/activity/PayStartActivity;


# direct methods
.method constructor <init>(Lcom/join/mgps/activity/PayStartActivity;)V
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
    iput-object p1, p0, Lcom/join/mgps/activity/PayStartActivity$a;->b:Lcom/join/mgps/activity/PayStartActivity;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public onFocusChange(Landroid/view/View;Z)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "v",
            "hasFocus"
        }
    .end annotation

    .line 1
    if-eqz p2, :cond_0

    .line 2
    .line 3
    iget-object p1, p0, Lcom/join/mgps/activity/PayStartActivity$a;->b:Lcom/join/mgps/activity/PayStartActivity;

    .line 4
    .line 5
    const/4 p2, 0x0

    .line 6
    invoke-static {p1, p2}, Lcom/join/mgps/activity/PayStartActivity;->access$000(Lcom/join/mgps/activity/PayStartActivity;Landroid/view/View;)V

    .line 7
    .line 8
    .line 9
    iget-object p1, p0, Lcom/join/mgps/activity/PayStartActivity$a;->b:Lcom/join/mgps/activity/PayStartActivity;

    .line 10
    .line 11
    iget-object p1, p1, Lcom/join/mgps/activity/PayStartActivity;->showPrice:Landroid/widget/TextView;

    .line 12
    .line 13
    const/16 p2, 0x8

    .line 14
    .line 15
    invoke-virtual {p1, p2}, Landroid/view/View;->setVisibility(I)V

    .line 16
    .line 17
    .line 18
    iget-object p1, p0, Lcom/join/mgps/activity/PayStartActivity$a;->b:Lcom/join/mgps/activity/PayStartActivity;

    .line 19
    .line 20
    invoke-static {p1}, Lcom/join/mgps/activity/PayStartActivity;->access$100(Lcom/join/mgps/activity/PayStartActivity;)Landroid/widget/EditText;

    .line 21
    .line 22
    .line 23
    move-result-object p1

    .line 24
    const-string p2, ""

    .line 25
    .line 26
    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setHint(Ljava/lang/CharSequence;)V

    .line 27
    .line 28
    .line 29
    goto :goto_0

    .line 30
    :cond_0
    iget-object p1, p0, Lcom/join/mgps/activity/PayStartActivity$a;->b:Lcom/join/mgps/activity/PayStartActivity;

    .line 31
    .line 32
    invoke-static {p1}, Lcom/join/mgps/activity/PayStartActivity;->access$100(Lcom/join/mgps/activity/PayStartActivity;)Landroid/widget/EditText;

    .line 33
    .line 34
    .line 35
    move-result-object p1

    .line 36
    iget-object p2, p0, Lcom/join/mgps/activity/PayStartActivity$a;->b:Lcom/join/mgps/activity/PayStartActivity;

    .line 37
    .line 38
    const v0, 0x7f120369

    .line 39
    .line 40
    .line 41
    invoke-virtual {p2, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 42
    .line 43
    .line 44
    move-result-object p2

    .line 45
    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setHint(Ljava/lang/CharSequence;)V

    .line 46
    .line 47
    .line 48
    :goto_0
    return-void
.end method
