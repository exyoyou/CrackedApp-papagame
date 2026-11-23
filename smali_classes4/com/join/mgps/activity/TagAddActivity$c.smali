.class Lcom/join/mgps/activity/TagAddActivity$c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/papa91/arc/interfaces/IOnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/join/mgps/activity/TagAddActivity;->afterViews()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/join/mgps/activity/TagAddActivity;


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
    iput-object p1, p0, Lcom/join/mgps/activity/TagAddActivity$c;->a:Lcom/join/mgps/activity/TagAddActivity;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public onItemClick(I)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "position"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/join/mgps/activity/TagAddActivity$c;->a:Lcom/join/mgps/activity/TagAddActivity;

    .line 2
    .line 3
    iget-object v1, v0, Lcom/join/mgps/activity/TagAddActivity;->et_tag:Landroid/widget/EditText;

    .line 4
    .line 5
    iget-object v0, v0, Lcom/join/mgps/activity/TagAddActivity;->tagSearchWatcher:Landroid/text/TextWatcher;

    .line 6
    .line 7
    invoke-virtual {v1, v0}, Landroid/widget/TextView;->removeTextChangedListener(Landroid/text/TextWatcher;)V

    .line 8
    .line 9
    .line 10
    iget-object v0, p0, Lcom/join/mgps/activity/TagAddActivity$c;->a:Lcom/join/mgps/activity/TagAddActivity;

    .line 11
    .line 12
    iget-object v0, v0, Lcom/join/mgps/activity/TagAddActivity;->autoSearchAdapter:Lcom/papa91/arc/adapter/SimpleBaseAdapter;

    .line 13
    .line 14
    invoke-virtual {v0, p1}, Lcom/papa91/arc/adapter/SimpleBaseAdapter;->getItem(I)Ljava/lang/Object;

    .line 15
    .line 16
    .line 17
    move-result-object p1

    .line 18
    check-cast p1, Ljava/lang/String;

    .line 19
    .line 20
    iget-object v0, p0, Lcom/join/mgps/activity/TagAddActivity$c;->a:Lcom/join/mgps/activity/TagAddActivity;

    .line 21
    .line 22
    iget-object v0, v0, Lcom/join/mgps/activity/TagAddActivity;->et_tag:Landroid/widget/EditText;

    .line 23
    .line 24
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 25
    .line 26
    .line 27
    iget-object v0, p0, Lcom/join/mgps/activity/TagAddActivity$c;->a:Lcom/join/mgps/activity/TagAddActivity;

    .line 28
    .line 29
    iget-object v0, v0, Lcom/join/mgps/activity/TagAddActivity;->et_tag:Landroid/widget/EditText;

    .line 30
    .line 31
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    .line 32
    .line 33
    .line 34
    move-result p1

    .line 35
    invoke-virtual {v0, p1}, Landroid/widget/EditText;->setSelection(I)V

    .line 36
    .line 37
    .line 38
    iget-object p1, p0, Lcom/join/mgps/activity/TagAddActivity$c;->a:Lcom/join/mgps/activity/TagAddActivity;

    .line 39
    .line 40
    iget-object p1, p1, Lcom/join/mgps/activity/TagAddActivity;->autoSearchAdapter:Lcom/papa91/arc/adapter/SimpleBaseAdapter;

    .line 41
    .line 42
    invoke-virtual {p1}, Lcom/papa91/arc/adapter/SimpleBaseAdapter;->clear()V

    .line 43
    .line 44
    .line 45
    iget-object p1, p0, Lcom/join/mgps/activity/TagAddActivity$c;->a:Lcom/join/mgps/activity/TagAddActivity;

    .line 46
    .line 47
    iget-object v0, p1, Lcom/join/mgps/activity/TagAddActivity;->et_tag:Landroid/widget/EditText;

    .line 48
    .line 49
    iget-object p1, p1, Lcom/join/mgps/activity/TagAddActivity;->tagSearchWatcher:Landroid/text/TextWatcher;

    .line 50
    .line 51
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 52
    .line 53
    .line 54
    iget-object p1, p0, Lcom/join/mgps/activity/TagAddActivity$c;->a:Lcom/join/mgps/activity/TagAddActivity;

    .line 55
    .line 56
    invoke-static {p1}, Lcom/join/mgps/activity/TagAddActivity;->access$000(Lcom/join/mgps/activity/TagAddActivity;)V

    .line 57
    .line 58
    .line 59
    return-void
.end method
