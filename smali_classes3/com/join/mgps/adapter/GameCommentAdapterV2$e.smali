.class Lcom/join/mgps/adapter/GameCommentAdapterV2$e;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/join/mgps/adapter/GameCommentAdapterV2;->l(Landroid/view/View;Lcom/join/mgps/dto/InformationCommentBeanV2;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic b:Lcom/join/mgps/dto/InformationCommentBeanV2;

.field final synthetic c:Lcom/join/mgps/adapter/GameCommentAdapterV2;


# direct methods
.method constructor <init>(Lcom/join/mgps/adapter/GameCommentAdapterV2;Lcom/join/mgps/dto/InformationCommentBeanV2;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x1010
        }
        names = {
            "this$0",
            "val$sub"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/join/mgps/adapter/GameCommentAdapterV2$e;->c:Lcom/join/mgps/adapter/GameCommentAdapterV2;

    .line 2
    .line 3
    iput-object p2, p0, Lcom/join/mgps/adapter/GameCommentAdapterV2$e;->b:Lcom/join/mgps/dto/InformationCommentBeanV2;

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
    iget-object p1, p0, Lcom/join/mgps/adapter/GameCommentAdapterV2$e;->c:Lcom/join/mgps/adapter/GameCommentAdapterV2;

    .line 2
    .line 3
    iget-object p1, p1, Lcom/join/mgps/adapter/GameCommentAdapterV2;->d:Lcom/join/mgps/adapter/GameCommentAdapterV2$j;

    .line 4
    .line 5
    if-eqz p1, :cond_0

    .line 6
    .line 7
    iget-object v0, p0, Lcom/join/mgps/adapter/GameCommentAdapterV2$e;->b:Lcom/join/mgps/dto/InformationCommentBeanV2;

    .line 8
    .line 9
    invoke-interface {p1, v0}, Lcom/join/mgps/adapter/GameCommentAdapterV2$j;->a(Lcom/join/mgps/dto/InformationCommentBeanV2;)V

    .line 10
    .line 11
    .line 12
    :cond_0
    return-void
.end method
