.class Lcom/join/mgps/activity/ForumActivity$i;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lru/noties/scrollable/k;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/join/mgps/activity/ForumActivity;->initScrollableLayout()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/join/mgps/activity/ForumActivity;


# direct methods
.method constructor <init>(Lcom/join/mgps/activity/ForumActivity;)V
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
    iput-object p1, p0, Lcom/join/mgps/activity/ForumActivity$i;->a:Lcom/join/mgps/activity/ForumActivity;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public a(III)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "y",
            "oldY",
            "maxY"
        }
    .end annotation

    .line 1
    :try_start_0
    iget-object p1, p0, Lcom/join/mgps/activity/ForumActivity$i;->a:Lcom/join/mgps/activity/ForumActivity;

    .line 2
    .line 3
    iget-object p2, p1, Lcom/join/mgps/activity/ForumActivity;->adapter:Lcom/join/mgps/adapter/h0;

    .line 4
    .line 5
    invoke-static {p1}, Lcom/join/mgps/activity/ForumActivity;->access$000(Lcom/join/mgps/activity/ForumActivity;)I

    .line 6
    .line 7
    .line 8
    move-result p1

    .line 9
    invoke-virtual {p2, p1}, Lcom/join/mgps/adapter/h0;->getItem(I)Landroidx/fragment/app/Fragment;

    .line 10
    .line 11
    .line 12
    move-result-object p1

    .line 13
    check-cast p1, Lcom/join/mgps/fragment/s1;

    .line 14
    .line 15
    invoke-virtual {p1}, Lcom/join/mgps/fragment/s1;->S()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 16
    .line 17
    .line 18
    goto :goto_0

    .line 19
    :catch_0
    move-exception p1

    .line 20
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 21
    .line 22
    .line 23
    :goto_0
    return-void
.end method
