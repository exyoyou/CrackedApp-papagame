.class Lcom/join/mgps/activity/posting/PostingActivity$h;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/join/mgps/activity/posting/PostingActivity;->afterViews()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic b:Lcom/join/mgps/activity/posting/PostingActivity;


# direct methods
.method constructor <init>(Lcom/join/mgps/activity/posting/PostingActivity;)V
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
    iput-object p1, p0, Lcom/join/mgps/activity/posting/PostingActivity$h;->b:Lcom/join/mgps/activity/posting/PostingActivity;

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
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "v"
        }
    .end annotation

    .line 1
    iget-object p1, p0, Lcom/join/mgps/activity/posting/PostingActivity$h;->b:Lcom/join/mgps/activity/posting/PostingActivity;

    .line 2
    .line 3
    invoke-static {p1}, Lcom/join/mgps/activity/posting/PostingActivity;->access$300(Lcom/join/mgps/activity/posting/PostingActivity;)Lcom/join/mgps/dialog/z1;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    if-eqz p1, :cond_0

    .line 8
    .line 9
    iget-object p1, p0, Lcom/join/mgps/activity/posting/PostingActivity$h;->b:Lcom/join/mgps/activity/posting/PostingActivity;

    .line 10
    .line 11
    invoke-static {p1}, Lcom/join/mgps/activity/posting/PostingActivity;->access$300(Lcom/join/mgps/activity/posting/PostingActivity;)Lcom/join/mgps/dialog/z1;

    .line 12
    .line 13
    .line 14
    move-result-object p1

    .line 15
    invoke-virtual {p1}, Lcom/join/mgps/dialog/z1;->b()V

    .line 16
    .line 17
    .line 18
    :cond_0
    iget-object p1, p0, Lcom/join/mgps/activity/posting/PostingActivity$h;->b:Lcom/join/mgps/activity/posting/PostingActivity;

    .line 19
    .line 20
    new-instance v0, Lcom/join/mgps/dialog/z1;

    .line 21
    .line 22
    invoke-static {p1}, Lcom/join/mgps/activity/posting/PostingActivity;->access$100(Lcom/join/mgps/activity/posting/PostingActivity;)Lcom/join/mgps/activity/posting/PostingActivity$m;

    .line 23
    .line 24
    .line 25
    move-result-object v1

    .line 26
    invoke-direct {v0, p1, v1}, Lcom/join/mgps/dialog/z1;-><init>(Landroid/app/Activity;Lcom/join/mgps/activity/posting/PostingActivity$m;)V

    .line 27
    .line 28
    .line 29
    invoke-static {p1, v0}, Lcom/join/mgps/activity/posting/PostingActivity;->access$302(Lcom/join/mgps/activity/posting/PostingActivity;Lcom/join/mgps/dialog/z1;)Lcom/join/mgps/dialog/z1;

    .line 30
    .line 31
    .line 32
    iget-object p1, p0, Lcom/join/mgps/activity/posting/PostingActivity$h;->b:Lcom/join/mgps/activity/posting/PostingActivity;

    .line 33
    .line 34
    invoke-static {p1}, Lcom/join/mgps/activity/posting/PostingActivity;->access$300(Lcom/join/mgps/activity/posting/PostingActivity;)Lcom/join/mgps/dialog/z1;

    .line 35
    .line 36
    .line 37
    move-result-object p1

    .line 38
    invoke-virtual {p1}, Lcom/join/mgps/dialog/z1;->d()V

    .line 39
    .line 40
    .line 41
    return-void
.end method
