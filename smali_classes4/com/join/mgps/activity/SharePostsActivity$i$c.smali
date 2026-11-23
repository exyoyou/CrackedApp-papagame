.class Lcom/join/mgps/activity/SharePostsActivity$i$c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/join/mgps/activity/SharePostsActivity$i;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic b:I

.field final synthetic c:[Ljava/lang/String;

.field final synthetic d:Lcom/join/mgps/activity/SharePostsActivity$i;


# direct methods
.method constructor <init>(Lcom/join/mgps/activity/SharePostsActivity$i;I[Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010,
            0x1010
        }
        names = {
            "this$0",
            "val$pos",
            "val$rawUrls"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/join/mgps/activity/SharePostsActivity$i$c;->d:Lcom/join/mgps/activity/SharePostsActivity$i;

    .line 2
    .line 3
    iput p2, p0, Lcom/join/mgps/activity/SharePostsActivity$i$c;->b:I

    .line 4
    .line 5
    iput-object p3, p0, Lcom/join/mgps/activity/SharePostsActivity$i$c;->c:[Ljava/lang/String;

    .line 6
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    .line 9
    .line 10
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
    iget-object p1, p0, Lcom/join/mgps/activity/SharePostsActivity$i$c;->d:Lcom/join/mgps/activity/SharePostsActivity$i;

    .line 2
    .line 3
    invoke-static {p1}, Lcom/join/mgps/activity/SharePostsActivity$i;->b(Lcom/join/mgps/activity/SharePostsActivity$i;)Landroid/content/Context;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    iget v0, p0, Lcom/join/mgps/activity/SharePostsActivity$i$c;->b:I

    .line 8
    .line 9
    iget-object v1, p0, Lcom/join/mgps/activity/SharePostsActivity$i$c;->c:[Ljava/lang/String;

    .line 10
    .line 11
    invoke-static {p1, v0, v1}, Lcom/join/mgps/Util/r0;->G0(Landroid/content/Context;I[Ljava/lang/String;)V

    .line 12
    .line 13
    .line 14
    return-void
.end method
