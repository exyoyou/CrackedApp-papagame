.class Lcom/join/mgps/activity/MGGameDetailActivity$g;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/widget/PopupWindow$OnDismissListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/join/mgps/activity/MGGameDetailActivity;->initPopowindow()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic b:Lcom/join/mgps/activity/MGGameDetailActivity;


# direct methods
.method constructor <init>(Lcom/join/mgps/activity/MGGameDetailActivity;)V
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
    iput-object p1, p0, Lcom/join/mgps/activity/MGGameDetailActivity$g;->b:Lcom/join/mgps/activity/MGGameDetailActivity;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public onDismiss()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/MGGameDetailActivity$g;->b:Lcom/join/mgps/activity/MGGameDetailActivity;

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    iput v1, v0, Lcom/join/mgps/activity/MGGameDetailActivity;->page:I

    .line 5
    .line 6
    invoke-virtual {v0}, Lcom/join/mgps/activity/MGGameDetailActivity;->cleanData()V

    .line 7
    .line 8
    .line 9
    iget-object v0, p0, Lcom/join/mgps/activity/MGGameDetailActivity$g;->b:Lcom/join/mgps/activity/MGGameDetailActivity;

    .line 10
    .line 11
    const/4 v2, 0x0

    .line 12
    iput v2, v0, Lcom/join/mgps/activity/MGGameDetailActivity;->countRed:I

    .line 13
    .line 14
    const/high16 v2, 0x3f800000    # 1.0f

    .line 15
    .line 16
    invoke-virtual {v0, v2}, Lcom/join/mgps/activity/MGGameDetailActivity;->setPopWindowBackgroundAlpha(F)V

    .line 17
    .line 18
    .line 19
    iget-object v0, p0, Lcom/join/mgps/activity/MGGameDetailActivity$g;->b:Lcom/join/mgps/activity/MGGameDetailActivity;

    .line 20
    .line 21
    iget-object v0, v0, Lcom/join/mgps/activity/MGGameDetailActivity;->ed_text:Landroid/widget/EditText;

    .line 22
    .line 23
    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    .line 24
    .line 25
    .line 26
    move-result-object v0

    .line 27
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 28
    .line 29
    .line 30
    move-result-object v0

    .line 31
    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    .line 32
    .line 33
    .line 34
    move-result-object v0

    .line 35
    sput-object v0, Lcom/join/mgps/activity/MGGameDetailActivity;->gameTitle:Ljava/lang/String;

    .line 36
    .line 37
    iget-object v0, p0, Lcom/join/mgps/activity/MGGameDetailActivity$g;->b:Lcom/join/mgps/activity/MGGameDetailActivity;

    .line 38
    .line 39
    iget-boolean v2, v0, Lcom/join/mgps/activity/MGGameDetailActivity;->isCommit:Z

    .line 40
    .line 41
    if-nez v2, :cond_0

    .line 42
    .line 43
    iput-boolean v1, v0, Lcom/join/mgps/activity/MGGameDetailActivity;->isCommit:Z

    .line 44
    .line 45
    invoke-virtual {v0}, Lcom/join/mgps/activity/MGGameDetailActivity;->AddGameToFrom()V

    .line 46
    .line 47
    .line 48
    :cond_0
    return-void
.end method
