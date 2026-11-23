.class Lcom/join/mgps/activity/login/LoginMainActivity$3;
.super Lcom/kongzue/dialogx/interfaces/r;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/join/mgps/activity/login/LoginMainActivity;->showLoginPrivacyBottomDialog(Ljava/lang/Runnable;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/kongzue/dialogx/interfaces/r<",
        "Lcom/kongzue/dialogx/dialogs/a;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/join/mgps/activity/login/LoginMainActivity;

.field final synthetic val$onAgreeAction:Ljava/lang/Runnable;


# direct methods
.method constructor <init>(Lcom/join/mgps/activity/login/LoginMainActivity;ILjava/lang/Runnable;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x0,
            0x1010
        }
        names = {
            "this$0",
            "layoutResId",
            "val$onAgreeAction"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/join/mgps/activity/login/LoginMainActivity$3;->this$0:Lcom/join/mgps/activity/login/LoginMainActivity;

    .line 2
    .line 3
    iput-object p3, p0, Lcom/join/mgps/activity/login/LoginMainActivity$3;->val$onAgreeAction:Ljava/lang/Runnable;

    .line 4
    .line 5
    invoke-direct {p0, p2}, Lcom/kongzue/dialogx/interfaces/r;-><init>(I)V

    .line 6
    .line 7
    .line 8
    return-void
.end method

.method public static synthetic d(Lcom/join/mgps/activity/login/LoginMainActivity$3;Lcom/kongzue/dialogx/dialogs/a;Ljava/lang/Runnable;Landroid/view/View;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2, p3}, Lcom/join/mgps/activity/login/LoginMainActivity$3;->lambda$onBind$1(Lcom/kongzue/dialogx/dialogs/a;Ljava/lang/Runnable;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic e(Lcom/kongzue/dialogx/dialogs/a;Landroid/view/View;)V
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lcom/join/mgps/activity/login/LoginMainActivity$3;->lambda$onBind$0(Lcom/kongzue/dialogx/dialogs/a;Landroid/view/View;)V

    return-void
.end method

.method private static synthetic lambda$onBind$0(Lcom/kongzue/dialogx/dialogs/a;Landroid/view/View;)V
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/kongzue/dialogx/dialogs/a;->b2()V

    .line 2
    .line 3
    .line 4
    return-void
.end method

.method private synthetic lambda$onBind$1(Lcom/kongzue/dialogx/dialogs/a;Ljava/lang/Runnable;Landroid/view/View;)V
    .locals 1

    .line 1
    iget-object p3, p0, Lcom/join/mgps/activity/login/LoginMainActivity$3;->this$0:Lcom/join/mgps/activity/login/LoginMainActivity;

    .line 2
    .line 3
    iget-object p3, p3, Lcom/join/mgps/activity/login/LoginMainActivity;->checkBox:Landroid/widget/CheckBox;

    .line 4
    .line 5
    const/4 v0, 0x1

    .line 6
    invoke-virtual {p3, v0}, Landroid/widget/CompoundButton;->setChecked(Z)V

    .line 7
    .line 8
    .line 9
    invoke-virtual {p1}, Lcom/kongzue/dialogx/dialogs/a;->b2()V

    .line 10
    .line 11
    .line 12
    if-eqz p2, :cond_0

    .line 13
    .line 14
    invoke-interface {p2}, Ljava/lang/Runnable;->run()V

    .line 15
    .line 16
    .line 17
    :cond_0
    return-void
.end method


# virtual methods
.method public onBind(Lcom/kongzue/dialogx/dialogs/a;Landroid/view/View;)V
    .locals 9
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "dialog1",
            "v"
        }
    .end annotation

    .line 2
    invoke-virtual {p1}, Lcom/kongzue/dialogx/dialogs/a;->j2()Lcom/kongzue/dialogx/dialogs/a$e;

    move-result-object v0

    iget-object v0, v0, Lcom/kongzue/dialogx/dialogs/a$e;->e:Landroid/widget/ImageView;

    if-eqz v0, :cond_0

    .line 3
    invoke-virtual {p1}, Lcom/kongzue/dialogx/dialogs/a;->j2()Lcom/kongzue/dialogx/dialogs/a$e;

    move-result-object v0

    iget-object v0, v0, Lcom/kongzue/dialogx/dialogs/a$e;->e:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    invoke-virtual {p1}, Lcom/kongzue/dialogx/dialogs/a;->j2()Lcom/kongzue/dialogx/dialogs/a$e;

    move-result-object v1

    iget-object v1, v1, Lcom/kongzue/dialogx/dialogs/a$e;->e:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 4
    :cond_0
    invoke-virtual {p1}, Lcom/kongzue/dialogx/dialogs/a;->j2()Lcom/kongzue/dialogx/dialogs/a$e;

    move-result-object v0

    iget-object v0, v0, Lcom/kongzue/dialogx/dialogs/a$e;->d:Lcom/kongzue/dialogx/util/views/MaxRelativeLayout;

    const v1, 0x7f0812ff

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundResource(I)V

    const v0, 0x7f0a0a22

    .line 5
    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    const v1, 0x7f0a1941

    .line 6
    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    const v2, 0x7f0a1914

    .line 7
    invoke-virtual {p2, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    const-string v2, "wufun"

    .line 8
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    .line 9
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "\u4e3a\u4e86\u66f4\u597d\u7684\u4f7f\u7528"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "\u609f\u996d"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "\u670d\u52a1\uff0c\u767b\u5f55\u524d\u8bf7\u5148\u9605\u8bfb\u5e76\u540c\u610f"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "\u300a\u7528\u6237\u534f\u8bae\u300b"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "\u53ca"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "\u300a\u9690\u79c1\u534f\u8bae\u300b"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 10
    new-instance v5, Landroid/text/SpannableString;

    invoke-direct {v5, v2}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    .line 11
    invoke-virtual {v2, v3}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v3

    .line 12
    invoke-virtual {v2, v4}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v2

    const-string v4, "#077BD4"

    .line 13
    invoke-static {v4}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v4

    const/16 v6, 0x21

    if-ltz v3, :cond_1

    .line 14
    new-instance v7, Lcom/join/mgps/activity/login/LoginMainActivity$3$1;

    invoke-direct {v7, p0, v4}, Lcom/join/mgps/activity/login/LoginMainActivity$3$1;-><init>(Lcom/join/mgps/activity/login/LoginMainActivity$3;I)V

    add-int/lit8 v8, v3, 0x6

    invoke-virtual {v5, v7, v3, v8, v6}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    :cond_1
    if-ltz v2, :cond_2

    .line 15
    new-instance v3, Lcom/join/mgps/activity/login/LoginMainActivity$3$2;

    invoke-direct {v3, p0, v4}, Lcom/join/mgps/activity/login/LoginMainActivity$3$2;-><init>(Lcom/join/mgps/activity/login/LoginMainActivity$3;I)V

    add-int/lit8 v4, v2, 0x6

    invoke-virtual {v5, v3, v2, v4, v6}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    .line 16
    :cond_2
    invoke-virtual {v1, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 17
    invoke-static {}, Landroid/text/method/LinkMovementMethod;->getInstance()Landroid/text/method/MovementMethod;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setMovementMethod(Landroid/text/method/MovementMethod;)V

    const/4 v2, 0x0

    .line 18
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setHighlightColor(I)V

    .line 19
    new-instance v1, Lcom/join/mgps/activity/login/c;

    invoke-direct {v1, p1}, Lcom/join/mgps/activity/login/c;-><init>(Lcom/kongzue/dialogx/dialogs/a;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 20
    iget-object v0, p0, Lcom/join/mgps/activity/login/LoginMainActivity$3;->val$onAgreeAction:Ljava/lang/Runnable;

    new-instance v1, Lcom/join/mgps/activity/login/d;

    invoke-direct {v1, p0, p1, v0}, Lcom/join/mgps/activity/login/d;-><init>(Lcom/join/mgps/activity/login/LoginMainActivity$3;Lcom/kongzue/dialogx/dialogs/a;Ljava/lang/Runnable;)V

    invoke-virtual {p2, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public bridge synthetic onBind(Ljava/lang/Object;Landroid/view/View;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000,
            0x1000
        }
        names = {
            "dialog1",
            "v"
        }
    .end annotation

    .line 1
    check-cast p1, Lcom/kongzue/dialogx/dialogs/a;

    invoke-virtual {p0, p1, p2}, Lcom/join/mgps/activity/login/LoginMainActivity$3;->onBind(Lcom/kongzue/dialogx/dialogs/a;Landroid/view/View;)V

    return-void
.end method
