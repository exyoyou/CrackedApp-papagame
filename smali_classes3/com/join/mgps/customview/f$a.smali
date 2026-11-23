.class Lcom/join/mgps/customview/f$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/join/mgps/customview/f;->j(Lcom/join/mgps/dto/ForumBean$ForumPostsBean;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic b:Lcom/join/mgps/dto/ForumBean$ForumPostsBean;

.field final synthetic c:Lcom/join/mgps/customview/f;


# direct methods
.method constructor <init>(Lcom/join/mgps/customview/f;Lcom/join/mgps/dto/ForumBean$ForumPostsBean;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010
        }
        names = {
            "this$0",
            "val$bean"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/join/mgps/customview/f$a;->c:Lcom/join/mgps/customview/f;

    .line 2
    .line 3
    iput-object p2, p0, Lcom/join/mgps/customview/f$a;->b:Lcom/join/mgps/dto/ForumBean$ForumPostsBean;

    .line 4
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/join/mgps/customview/f$a;->c:Lcom/join/mgps/customview/f;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/join/mgps/customview/f$a;->b:Lcom/join/mgps/dto/ForumBean$ForumPostsBean;

    .line 4
    .line 5
    invoke-static {v0, v1}, Lcom/join/mgps/customview/f;->s(Lcom/join/mgps/customview/f;Lcom/join/mgps/dto/ForumBean$ForumPostsBean;)V

    .line 6
    .line 7
    .line 8
    return-void
.end method
