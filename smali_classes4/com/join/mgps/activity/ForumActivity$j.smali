.class Lcom/join/mgps/activity/ForumActivity$j;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/join/mgps/customview/g$b;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/join/mgps/activity/ForumActivity;->rlOrderBy()V
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
    iput-object p1, p0, Lcom/join/mgps/activity/ForumActivity$j;->a:Lcom/join/mgps/activity/ForumActivity;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public a(I)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "i"
        }
    .end annotation

    .line 1
    sput p1, Lcom/join/mgps/activity/ForumActivity;->orderBy:I

    .line 2
    .line 3
    iget-object p1, p0, Lcom/join/mgps/activity/ForumActivity$j;->a:Lcom/join/mgps/activity/ForumActivity;

    .line 4
    .line 5
    invoke-virtual {p1}, Lcom/join/mgps/activity/ForumActivity;->refresh()V

    .line 6
    .line 7
    .line 8
    return-void
.end method
