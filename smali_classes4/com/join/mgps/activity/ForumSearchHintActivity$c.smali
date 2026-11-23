.class Lcom/join/mgps/activity/ForumSearchHintActivity$c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/text/TextWatcher;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/join/mgps/activity/ForumSearchHintActivity;->initViews()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic b:Lcom/join/mgps/activity/ForumSearchHintActivity;


# direct methods
.method constructor <init>(Lcom/join/mgps/activity/ForumSearchHintActivity;)V
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
    iput-object p1, p0, Lcom/join/mgps/activity/ForumSearchHintActivity$c;->b:Lcom/join/mgps/activity/ForumSearchHintActivity;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "editable"
        }
    .end annotation

    return-void
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "charSequence",
            "i",
            "i1",
            "i2"
        }
    .end annotation

    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "charSequence",
            "i",
            "i1",
            "i2"
        }
    .end annotation

    .line 1
    iget-object p2, p0, Lcom/join/mgps/activity/ForumSearchHintActivity$c;->b:Lcom/join/mgps/activity/ForumSearchHintActivity;

    .line 2
    .line 3
    iget-object p2, p2, Lcom/join/mgps/activity/ForumSearchHintActivity;->searchEditText:Landroid/widget/EditText;

    .line 4
    .line 5
    invoke-virtual {p2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    .line 6
    .line 7
    .line 8
    move-result-object p2

    .line 9
    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 10
    .line 11
    .line 12
    move-result-object p2

    .line 13
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    .line 14
    .line 15
    .line 16
    move-result p1

    .line 17
    const/4 p3, 0x0

    .line 18
    if-lez p1, :cond_0

    .line 19
    .line 20
    iget-object p1, p0, Lcom/join/mgps/activity/ForumSearchHintActivity$c;->b:Lcom/join/mgps/activity/ForumSearchHintActivity;

    .line 21
    .line 22
    const/4 p4, 0x1

    .line 23
    invoke-virtual {p1, p4}, Lcom/join/mgps/activity/ForumSearchHintActivity;->setSearchUiVisibility(Z)V

    .line 24
    .line 25
    .line 26
    iget-object p1, p0, Lcom/join/mgps/activity/ForumSearchHintActivity$c;->b:Lcom/join/mgps/activity/ForumSearchHintActivity;

    .line 27
    .line 28
    invoke-static {p1, p3}, Lcom/join/mgps/activity/ForumSearchHintActivity;->access$002(Lcom/join/mgps/activity/ForumSearchHintActivity;I)I

    .line 29
    .line 30
    .line 31
    iget-object p1, p0, Lcom/join/mgps/activity/ForumSearchHintActivity$c;->b:Lcom/join/mgps/activity/ForumSearchHintActivity;

    .line 32
    .line 33
    invoke-static {p1, p3}, Lcom/join/mgps/activity/ForumSearchHintActivity;->access$102(Lcom/join/mgps/activity/ForumSearchHintActivity;I)I

    .line 34
    .line 35
    .line 36
    iget-object p1, p0, Lcom/join/mgps/activity/ForumSearchHintActivity$c;->b:Lcom/join/mgps/activity/ForumSearchHintActivity;

    .line 37
    .line 38
    invoke-virtual {p1, p2, p4}, Lcom/join/mgps/activity/ForumSearchHintActivity;->loadSearchQuery(Ljava/lang/String;I)V

    .line 39
    .line 40
    .line 41
    goto :goto_0

    .line 42
    :cond_0
    iget-object p1, p0, Lcom/join/mgps/activity/ForumSearchHintActivity$c;->b:Lcom/join/mgps/activity/ForumSearchHintActivity;

    .line 43
    .line 44
    invoke-virtual {p1, p3}, Lcom/join/mgps/activity/ForumSearchHintActivity;->setSearchUiVisibility(Z)V

    .line 45
    .line 46
    .line 47
    iget-object p1, p0, Lcom/join/mgps/activity/ForumSearchHintActivity$c;->b:Lcom/join/mgps/activity/ForumSearchHintActivity;

    .line 48
    .line 49
    iget-object p1, p1, Lcom/join/mgps/activity/ForumSearchHintActivity;->searchEditText:Landroid/widget/EditText;

    .line 50
    .line 51
    const-string p2, ""

    .line 52
    .line 53
    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setHint(Ljava/lang/CharSequence;)V

    .line 54
    .line 55
    .line 56
    iget-object p1, p0, Lcom/join/mgps/activity/ForumSearchHintActivity$c;->b:Lcom/join/mgps/activity/ForumSearchHintActivity;

    .line 57
    .line 58
    invoke-virtual {p1}, Lcom/join/mgps/activity/ForumSearchHintActivity;->loadSearchHistory()V

    .line 59
    .line 60
    .line 61
    :goto_0
    return-void
.end method
