.class Lcom/join/mgps/adapter/ForumPostsAdapter$j;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/join/mgps/adapter/ForumPostsAdapter;->M0(Landroid/view/View;Lcom/join/mgps/dto/ForumBean$GameInfo;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic b:Lcom/join/mgps/dto/ForumBean$GameInfo;

.field final synthetic c:Lcom/join/mgps/adapter/ForumPostsAdapter;


# direct methods
.method constructor <init>(Lcom/join/mgps/adapter/ForumPostsAdapter;Lcom/join/mgps/dto/ForumBean$GameInfo;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010
        }
        names = {
            "this$0",
            "val$gameInfo"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/join/mgps/adapter/ForumPostsAdapter$j;->c:Lcom/join/mgps/adapter/ForumPostsAdapter;

    .line 2
    .line 3
    iput-object p2, p0, Lcom/join/mgps/adapter/ForumPostsAdapter$j;->b:Lcom/join/mgps/dto/ForumBean$GameInfo;

    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
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
            "v"
        }
    .end annotation

    .line 1
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    iget-object v0, p0, Lcom/join/mgps/adapter/ForumPostsAdapter$j;->b:Lcom/join/mgps/dto/ForumBean$GameInfo;

    .line 6
    .line 7
    invoke-static {p1, v0}, Lcom/join/mgps/Util/r0;->I0(Landroid/content/Context;Lcom/join/mgps/dto/ForumBean$GameInfo;)V

    .line 8
    .line 9
    .line 10
    return-void
.end method
