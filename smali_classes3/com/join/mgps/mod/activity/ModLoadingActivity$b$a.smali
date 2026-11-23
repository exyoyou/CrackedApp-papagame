.class Lcom/join/mgps/mod/activity/ModLoadingActivity$b$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/join/mgps/mod/activity/ModLoadingActivity$b;->onStart(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic b:Lcom/join/mgps/mod/activity/ModLoadingActivity$b;


# direct methods
.method constructor <init>(Lcom/join/mgps/mod/activity/ModLoadingActivity$b;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            "this$1"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/join/mgps/mod/activity/ModLoadingActivity$b$a;->b:Lcom/join/mgps/mod/activity/ModLoadingActivity$b;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/join/mgps/mod/activity/ModLoadingActivity$b$a;->b:Lcom/join/mgps/mod/activity/ModLoadingActivity$b;

    .line 2
    .line 3
    iget-object v0, v0, Lcom/join/mgps/mod/activity/ModLoadingActivity$b;->a:Lcom/join/mgps/mod/activity/ModLoadingActivity;

    .line 4
    .line 5
    invoke-static {v0}, Lcom/join/mgps/mod/activity/ModLoadingActivity;->j(Lcom/join/mgps/mod/activity/ModLoadingActivity;)Landroid/widget/TextView;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    const/16 v1, 0x8

    .line 10
    .line 11
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 12
    .line 13
    .line 14
    iget-object v0, p0, Lcom/join/mgps/mod/activity/ModLoadingActivity$b$a;->b:Lcom/join/mgps/mod/activity/ModLoadingActivity$b;

    .line 15
    .line 16
    iget-object v0, v0, Lcom/join/mgps/mod/activity/ModLoadingActivity$b;->a:Lcom/join/mgps/mod/activity/ModLoadingActivity;

    .line 17
    .line 18
    invoke-static {v0}, Lcom/join/mgps/mod/activity/ModLoadingActivity;->k(Lcom/join/mgps/mod/activity/ModLoadingActivity;)Landroid/widget/LinearLayout;

    .line 19
    .line 20
    .line 21
    move-result-object v0

    .line 22
    const/4 v1, 0x0

    .line 23
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 24
    .line 25
    .line 26
    return-void
.end method
