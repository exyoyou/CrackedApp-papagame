.class Lcom/join/mgps/activity/ForumSearchHintActivity$j;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/join/mgps/activity/ForumSearchHintActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "j"
.end annotation


# instance fields
.field b:Ljava/lang/String;

.field final synthetic c:Lcom/join/mgps/activity/ForumSearchHintActivity;


# direct methods
.method public constructor <init>(Lcom/join/mgps/activity/ForumSearchHintActivity;Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x0
        }
        names = {
            "this$0",
            "searchTag"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/join/mgps/activity/ForumSearchHintActivity$j;->c:Lcom/join/mgps/activity/ForumSearchHintActivity;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    iput-object p2, p0, Lcom/join/mgps/activity/ForumSearchHintActivity$j;->b:Ljava/lang/String;

    .line 7
    .line 8
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
            "view"
        }
    .end annotation

    .line 1
    iget-object p1, p0, Lcom/join/mgps/activity/ForumSearchHintActivity$j;->c:Lcom/join/mgps/activity/ForumSearchHintActivity;

    .line 2
    .line 3
    iget-object v0, p0, Lcom/join/mgps/activity/ForumSearchHintActivity$j;->b:Ljava/lang/String;

    .line 4
    .line 5
    invoke-static {p1, v0}, Lcom/join/mgps/activity/ForumSearchHintActivity;->access$200(Lcom/join/mgps/activity/ForumSearchHintActivity;Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    iget-object p1, p0, Lcom/join/mgps/activity/ForumSearchHintActivity$j;->c:Lcom/join/mgps/activity/ForumSearchHintActivity;

    .line 9
    .line 10
    iget-object p1, p1, Lcom/join/mgps/activity/ForumSearchHintActivity;->searchEditText:Landroid/widget/EditText;

    .line 11
    .line 12
    iget-object v0, p0, Lcom/join/mgps/activity/ForumSearchHintActivity$j;->b:Ljava/lang/String;

    .line 13
    .line 14
    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 15
    .line 16
    .line 17
    iget-object p1, p0, Lcom/join/mgps/activity/ForumSearchHintActivity$j;->b:Ljava/lang/String;

    .line 18
    .line 19
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 20
    .line 21
    .line 22
    move-result p1

    .line 23
    if-nez p1, :cond_0

    .line 24
    .line 25
    iget-object p1, p0, Lcom/join/mgps/activity/ForumSearchHintActivity$j;->c:Lcom/join/mgps/activity/ForumSearchHintActivity;

    .line 26
    .line 27
    iget-object p1, p1, Lcom/join/mgps/activity/ForumSearchHintActivity;->searchEditText:Landroid/widget/EditText;

    .line 28
    .line 29
    iget-object v0, p0, Lcom/join/mgps/activity/ForumSearchHintActivity$j;->b:Ljava/lang/String;

    .line 30
    .line 31
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    .line 32
    .line 33
    .line 34
    move-result v0

    .line 35
    invoke-virtual {p1, v0}, Landroid/widget/EditText;->setSelection(I)V

    .line 36
    .line 37
    .line 38
    iget-object p1, p0, Lcom/join/mgps/activity/ForumSearchHintActivity$j;->c:Lcom/join/mgps/activity/ForumSearchHintActivity;

    .line 39
    .line 40
    invoke-virtual {p1}, Lcom/join/mgps/activity/ForumSearchHintActivity;->hideKeyboard()V

    .line 41
    .line 42
    .line 43
    :cond_0
    return-void
.end method
