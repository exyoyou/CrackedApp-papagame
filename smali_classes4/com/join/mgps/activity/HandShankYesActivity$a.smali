.class Lcom/join/mgps/activity/HandShankYesActivity$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/join/mgps/activity/HandShankYesActivity;->initView()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic b:Lcom/join/mgps/activity/HandShankYesActivity;


# direct methods
.method constructor <init>(Lcom/join/mgps/activity/HandShankYesActivity;)V
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
    iput-object p1, p0, Lcom/join/mgps/activity/HandShankYesActivity$a;->b:Lcom/join/mgps/activity/HandShankYesActivity;

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
    iget-object p1, p0, Lcom/join/mgps/activity/HandShankYesActivity$a;->b:Lcom/join/mgps/activity/HandShankYesActivity;

    .line 2
    .line 3
    invoke-static {p1}, Lcom/join/mgps/activity/HandShankYesActivity;->access$100(Lcom/join/mgps/activity/HandShankYesActivity;)Z

    .line 4
    .line 5
    .line 6
    move-result p1

    .line 7
    if-eqz p1, :cond_0

    .line 8
    .line 9
    iget-object p1, p0, Lcom/join/mgps/activity/HandShankYesActivity$a;->b:Lcom/join/mgps/activity/HandShankYesActivity;

    .line 10
    .line 11
    invoke-static {p1}, Lcom/join/mgps/activity/HandShankMapKeyActivity_;->intent(Landroid/content/Context;)Lcom/join/mgps/activity/HandShankMapKeyActivity_$b;

    .line 12
    .line 13
    .line 14
    move-result-object p1

    .line 15
    invoke-virtual {p1}, Lorg/androidannotations/api/builder/a;->start()Lorg/androidannotations/api/builder/f;

    .line 16
    .line 17
    .line 18
    goto :goto_0

    .line 19
    :cond_0
    iget-object p1, p0, Lcom/join/mgps/activity/HandShankYesActivity$a;->b:Lcom/join/mgps/activity/HandShankYesActivity;

    .line 20
    .line 21
    invoke-static {p1}, Lcom/join/mgps/Util/a3;->b(Landroid/content/Context;)Lcom/join/mgps/Util/a3;

    .line 22
    .line 23
    .line 24
    move-result-object p1

    .line 25
    const-string v0, "\u8bf7\u5148\u8fde\u63a5\u624b\u67c4\uff01"

    .line 26
    .line 27
    invoke-virtual {p1, v0}, Lcom/join/mgps/Util/a3;->d(Ljava/lang/String;)V

    .line 28
    .line 29
    .line 30
    :goto_0
    return-void
.end method
