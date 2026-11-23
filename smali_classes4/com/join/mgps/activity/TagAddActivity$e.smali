.class Lcom/join/mgps/activity/TagAddActivity$e;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/join/mgps/activity/TagAddActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic b:Lcom/join/mgps/activity/TagAddActivity;


# direct methods
.method constructor <init>(Lcom/join/mgps/activity/TagAddActivity;)V
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
    iput-object p1, p0, Lcom/join/mgps/activity/TagAddActivity$e;->b:Lcom/join/mgps/activity/TagAddActivity;

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
    iget-object v0, p0, Lcom/join/mgps/activity/TagAddActivity$e;->b:Lcom/join/mgps/activity/TagAddActivity;

    .line 2
    .line 3
    invoke-virtual {v0}, Landroid/app/Activity;->isFinishing()Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-nez v0, :cond_1

    .line 8
    .line 9
    iget-object v0, p0, Lcom/join/mgps/activity/TagAddActivity$e;->b:Lcom/join/mgps/activity/TagAddActivity;

    .line 10
    .line 11
    iget-object v0, v0, Lcom/join/mgps/activity/TagAddActivity;->et_tag:Landroid/widget/EditText;

    .line 12
    .line 13
    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 18
    .line 19
    .line 20
    move-result-object v0

    .line 21
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    .line 22
    .line 23
    .line 24
    move-result v1

    .line 25
    if-lez v1, :cond_0

    .line 26
    .line 27
    iget-object v1, p0, Lcom/join/mgps/activity/TagAddActivity$e;->b:Lcom/join/mgps/activity/TagAddActivity;

    .line 28
    .line 29
    invoke-virtual {v1, v0}, Lcom/join/mgps/activity/TagAddActivity;->getAutoSearchList(Ljava/lang/String;)V

    .line 30
    .line 31
    .line 32
    goto :goto_0

    .line 33
    :cond_0
    iget-object v0, p0, Lcom/join/mgps/activity/TagAddActivity$e;->b:Lcom/join/mgps/activity/TagAddActivity;

    .line 34
    .line 35
    iget-object v0, v0, Lcom/join/mgps/activity/TagAddActivity;->autoSearchAdapter:Lcom/papa91/arc/adapter/SimpleBaseAdapter;

    .line 36
    .line 37
    if-eqz v0, :cond_1

    .line 38
    .line 39
    invoke-virtual {v0}, Lcom/papa91/arc/adapter/SimpleBaseAdapter;->clear()V

    .line 40
    .line 41
    .line 42
    :cond_1
    :goto_0
    return-void
.end method
