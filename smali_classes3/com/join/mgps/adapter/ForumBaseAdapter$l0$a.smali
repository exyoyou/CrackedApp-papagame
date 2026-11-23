.class Lcom/join/mgps/adapter/ForumBaseAdapter$l0$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/join/mgps/adapter/ForumBaseAdapter$l0;->c(Landroid/widget/ImageView;Lcom/join/mgps/dto/ForumBean$ForumTopicBean;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic b:Lcom/join/mgps/dto/ForumBean$ForumTopicBean;

.field final synthetic c:Lcom/join/mgps/adapter/ForumBaseAdapter$l0;


# direct methods
.method constructor <init>(Lcom/join/mgps/adapter/ForumBaseAdapter$l0;Lcom/join/mgps/dto/ForumBean$ForumTopicBean;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010
        }
        names = {
            "this$1",
            "val$bean"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/join/mgps/adapter/ForumBaseAdapter$l0$a;->c:Lcom/join/mgps/adapter/ForumBaseAdapter$l0;

    .line 2
    .line 3
    iput-object p2, p0, Lcom/join/mgps/adapter/ForumBaseAdapter$l0$a;->b:Lcom/join/mgps/dto/ForumBean$ForumTopicBean;

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
    iget-object v0, p0, Lcom/join/mgps/adapter/ForumBaseAdapter$l0$a;->b:Lcom/join/mgps/dto/ForumBean$ForumTopicBean;

    .line 6
    .line 7
    invoke-static {p1, v0}, Lcom/join/mgps/Util/r0;->D0(Landroid/content/Context;Lcom/join/mgps/dto/ForumBean$ForumTopicBean;)V

    .line 8
    .line 9
    .line 10
    return-void
.end method
